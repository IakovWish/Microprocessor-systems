/*12)Вводится шестнадцатеричное число в верхней строчке.
При нажатии на кнопку-окончание ввода
и в нижней строке появляется 8-ричное число, равное верхнему.*/

#include <xc.h>
#include <pic16F877A.h>

typedef unsigned char byte;

#define Freq 20  // =  main frequency  (MHz)

#define testbit(var, bit) ((var) & (1 <<(bit))) // проверка уровня напряжения на SCL и SDA
#define setbit(var, bit) ((var) |= (1 << (bit))) // устанавливает в bit-ом бите var-а единицу
#define clrbit(var, bit) ((var) &= ~(1 << (bit))) // устанавливает в bit-ом бите var-а ноль

#define cache_size_I2C 0x40

#define SCL 3
#define SDA 4

#define enter 1
#define next 2
#define finish 4
#define eeprom 8

byte Slave_ADR_RW_I2C;
#define SET_I2C_EEPROM	Slave_ADR_RW_I2C = 0xA0
unsigned int Adr_I2C;

byte Ch_ACK;

static const char str_BLANK[] = "                "; // массив для очистки строки, не будет изменен

void Delay(unsigned int);
void Pulse(unsigned int);
void Send_Command_LCD(byte);
void Init_LCD(void);
void Send_Byte_LCD (byte);
void Set_Coord_LCD(byte, byte); // переставляет курсор на передаваемые координаты
void Show_String_LCD(const char*); // выводит массив на экран
void Clr_LCD(byte); // для очистки строки
void Restart(void); // для ввода нового числа
byte Check_buttons(void); // возвращает значение нажатой кнопки
unsigned long int power(unsigned long int, unsigned int); // для возведения в степень

void init_I2C();
void Init_READ_I2C(unsigned int);
void Init_WRITE_I2C(unsigned int);
void START_I2C(void);
void LOW_SCL_I2C(void);
void HIGH_SCL_I2C(void);
void LOW_SDA_I2C(void);
void HIGH_SDA_I2C(void);
void Delay_Fast(byte);
byte IN_BYTE_ACK_I2C(void); // IN_BYTE+ACK
byte IN_BYTE_I2C(void);
byte IN_BYTE_NACK_STOP_I2C(void); // IN_BYTE+NACK+STOP
void OUT_BYTE_PAGE_I2C(byte);
void OUT_BYTE_I2C(byte);
void STOP_I2C(void);
void CLOCK_PULSE_I2C(void);
void Check_ACK_I2C(void);
void NACK_I2C(void);
void ACK_I2C(void);

int ind = 0;
int ind2 = 0;

unsigned int str = 0; // индекс строки
unsigned int stlb = 0; // индекс столбца
unsigned int deg = 0; // степень
unsigned int cnt0 = 0; // счетчик цифр
unsigned int cntA = 0; // счетчик букв
unsigned int step = 0; // текущий шаг
	
unsigned long int int_res = 0; // результат работы в десятичном виде

unsigned long int int_arr[16] = {0}; // целочисленный массив, хранящий вводимое число
byte str_line0[16] = ""; // строка ввода
byte str_line1[16] = ""; // строка результата

void main (void)
{	
	Init_LCD();

	SET_I2C_EEPROM; // выбираем номер переферийного устройства - EEPROM
	TRISC=0x9B;
	init_I2C();
	
	while(1)
	{
		if (step == 0) // еще ни одна цифра не выбрана
		{
			str_line0[ind] = '0'; // закидываем 0 в массив
			Show_String_LCD(str_line0); // и выводим на дисплей
			Set_Coord_LCD(str, stlb); // возвращаем курсор назад
			step = 1; // переходим к шагу выбора цифр
		}
			
		switch ((unsigned int)Check_buttons())
		{

		case enter:
			
			if (step == 2)
			{
				Restart();
			}
			else
			{
				cnt0++; // увеличиваем счетчик цифр
				if (cnt0 < 10) // если цифра меньше 10
				{
					str_line0[ind] = cnt0 + '0'; // то ее выводим
				}
				else if (cnt0 < 16) // если цифра больше 10
				{
					str_line0[ind] = cntA + 'A'; // выводим ее 16й аналог
					cntA++; // при этом увеличиваем счетчик букв
				}
				else // если цифра равна 16
				{
					cnt0 = 0; // обнуляем счетчик цифр
					cntA = 0; // обнуляем счетчик букв

					step = 0;
					break;
				}
				Clr_LCD(0); // чистим строку
				Show_String_LCD(str_line0); // выводим новую строку
				Set_Coord_LCD(str, stlb); // возвращаем координаты назад
			}
			break;
		
		case next:
			
			if(step == 2)
			{
				Restart();
				break;
			}
			
			if (ind < 7) // если текущий индекс символа меньше 8
			{
				int_arr[ind] = cnt0; // в целочисленный массив кладем выбранную цифру
				cnt0 = 0; // обнуляем счетчик цифр
				cntA = 0; // обнуляем счетчик букв
				ind++; // переходим к следующей цифре
				stlb++;

				Clr_LCD(0); // чистим строку
				step = 0; // переходим к шагу 0
				break;
			}

		case finish:
			
			if(step == 2)
			{
				Restart();
				break;
			}

			step = 2; // перешли к шагу 2
			int_arr[ind] = cnt0; // сохраняем последний пользовательский символ
			Set_Coord_LCD(1, 0); // переходим на следующию строку

			while(ind >= 0) // переводим из 16 в 10
			{
				int_res += int_arr[ind--] * power(16, deg++);
			}

			while (int_res > 8) // переводим из 10 в 8
			{
            	int_arr[ind2] = int_res % 8;
            	int_res /= 8;
            	ind2++; 
        	}
			int_arr[ind2] = int_res;
			
			ind = 0;
			while(ind2 >= 0) // записываем число в обратном порядке
			{
				str_line1[ind++] = int_arr[ind2--] + '0';
			}

			Show_String_LCD(str_line1); // выводим результат
			break;
		
		case eeprom:
			if(step == 2) // запомнить
			{
			    Init_WRITE_I2C(0);
   
    			for (int i = 0; i < 16; i++)
				{
        			OUT_BYTE_PAGE_I2C(str_line0[i]);
    			}
   
    			for (int i = 0; i < 16; i++)
				{
        			OUT_BYTE_PAGE_I2C(str_line1[i]);
    			}
   
   				STOP_I2C();
			}
			else // прочесть
			{
				step = 2;

				Init_READ_I2C(0);
   
    			for (int i = 0; i < 16; i++)
				{
        			str_line0[i] = IN_BYTE_ACK_I2C();
    			}
   
    			for (int i = 0; i < 16; i++)
				{
        			str_line1[i] = IN_BYTE_ACK_I2C();
    			}
   
    			IN_BYTE_NACK_STOP_I2C();
				Clr_LCD(0);
				Show_String_LCD(str_line0);
				Clr_LCD(1);
				Set_Coord_LCD(1, 0);
				Show_String_LCD(str_line1);
			}
			break;
		
		default:
			break;
		};
	}
	return;
}

unsigned long int power(unsigned long int x, unsigned int n)
{
	unsigned long int a = 1;
	while(n) 
	{
		if(n % 2)
		{
        	a *= x;
			n--;
        }
        else
		{
			x *= x;
			n /= 2;
		}
	}
	return a;
}

void Restart(void)
{
	Clr_LCD(0);
	Clr_LCD(1);
	
	step = 0;
	cnt0 = 0;
	cntA = 0;
	str = 0;
	stlb = 0;
	int_res = 0;
	deg = 0;
	ind = 0;
	ind2 = 0;
				
	for (int i = 0; i < 16; i++)
	{
		int_arr[i] = 0;
		str_line0[i] = '\0';
		str_line1[i] = '\0';
	}
}

byte Check_buttons(void)
{
	byte tmp;
	byte tmp_PORTB = PORTB; // сохраняем текущее значение PORTB
	byte tmp_TRISB = TRISB; // сохраняем текущее значение TRISB
	TRISB &= 0x0F; // устанавливаем RB4-RB7 на вывод
	PORTB |= 0xF0; // засылаем в регистры RB4-RB7 единицы
	/*если кнопка была нажата, ноль вернется*/
	tmp = PORTB^0xFF; // единица появится в соответствующем бите нажатой кнопки
	PORTB = tmp_PORTB; // возвращаем исходные значение PORTB
	TRISB = tmp_TRISB; // возвращаем исходные значение TRISB
	return(tmp >> 4); // делаем сдвиг на 4, тк 0,1,2,3 не интересуют
}

//////////////LCD///////////////

void Delay(unsigned int tmp) // ( tmp=1000) ~ 11 mS (4MHz)
{
	while(tmp--);
	return;
}

void Pulse(unsigned int x) // функция для подачи входного синхросигнала, который обеспечивает считывание индикатором данных с его входов
{
	RB2=1; // Установить линию E = 1
	Delay(x);
	RB2=0; // Установить линию E = 0
	Delay(x);
}

void Init_LCD(void) // Производитель контроллера рекомендует выполнять следующую последовательность действий для инициализации.
{
	Delay(200*Freq); // Выдержать паузу между установлением рабочего напряжения питания (>4,5 В) и выполнением каких либо операций с контроллером.
	/* Первой операцией выполнить команду, выбирающую разрядность шины */
	TRISB=0; // Ноль в соответствующем разряде регистра TRISB соответствует выводу информации из соответствующего разряд порта B во внешний мир.
	PORTB=0x30; // (это должна быть команда 0x30 независимо от того, какой разрядности интерфейс вы собираетесь использовать в дальнейшем)
	Pulse(20*Freq); // далее опять выдержать паузу
	Pulse(20*Freq);
	Pulse(20*Freq);

	PORTB=0x20; // и повторить команду выбора разрядности шины (DL = 0 => у нас 4х разрядная шина данных)
	Pulse(20*Freq); // Следующим шагом необходимо вновь выдержать паузу

	Send_Command_LCD (0x28); // и в третий раз повторить команду установления разрядности шины ((DL = 0 => у нас 4х разрядная шина данных, N = 0 => 2 строки)
	Send_Command_LCD (0x0F); // изображение, мерцание, подчеркивание
	Send_Command_LCD (0x06); // направление крсорау
	Send_Command_LCD (0x02); // AC = 0, адресация на DDRAM, сброшены сдвиги, начало строки адресуется в начале DDRAM
}

void Send_Command_LCD(byte tmp)
{
	while (Check_buttons())
	{
		Delay(500*Freq); // ждем пока не отпустят кнопку
	}
	RB1 = 0; // установить значение RS в 1
	PORTB=(PORTB & 0x0F) + (tmp & 0xF0); // Вывести значение старших 4х байт данных на линии шины RB4-RB7
	Pulse(2 * Freq);
	PORTB=(PORTB & 0x0F) + (tmp << 4); // Вывести значение младших 4х баййт данных на линии шины RB4-RB7
	Pulse(2 * Freq);
	RB1 = 1; // установить значение RS в 0
	Delay(250 * Freq);
}

void Send_Byte_LCD (byte tmp)
{
	while (Check_buttons())
	{
		Delay(500*Freq); // ждем пока не отпустят кнопку
	}
	PORTB = (PORTB & 0x0F) + (tmp & 0xF0); // Вывести значение старших 4х байт данных на линии шины RB4-RB7
	Pulse(2*Freq);
	PORTB = (PORTB & 0x0F) + (tmp << 4); // Вывести значение младших 4х баййт данных на линии шины RB4-RB7
	Pulse(2*Freq);
}

void Set_Coord_LCD(byte i, byte j)
{
	if(i==0)
	{
		Send_Command_LCD(0x80+j);
	}
	else
	{
		Send_Command_LCD(0xC0+j);
	}
	return;
}

void Show_String_LCD(const char * mySTRING)
{
	while(*mySTRING)
	{
		Send_Byte_LCD(*(mySTRING++));
	};
}

void Clr_LCD(byte str_)
{
	Set_Coord_LCD(str_,0);
	Show_String_LCD(str_BLANK);
	Set_Coord_LCD(0,0);
}

//////////////I2c///////////////

/*I2c состоит из 2 проводников, подтянутых к +5В через резисторы с сопротивлением в несколько КОм
SCL - отвечает за передачу импульсов синхронизации  
SDA - отвечает за передачу данных между устройствами*/

void init_I2C()
{
	RC4=0;		
	TRISC3=0;	// set SCL line to an OUPUT 
	TRISC4=0;	// set SDA line to an INPUT just to be sure! 
}

void Init_WRITE_I2C(unsigned int Adr_begin)
{
	Adr_I2C = Adr_begin;
	rep:
	START_I2C();
	Slave_ADR_RW_I2C& = 0xFE;
	OUT_BYTE_I2C(Slave_ADR_RW_I2C);
	if(Ch_ACK)
	{
		STOP_I2C();
		goto rep;
	}
	OUT_BYTE_I2C(Adr_begin>>8);
	if(Ch_ACK)
	{
		STOP_I2C();
		goto rep;
	}
	OUT_BYTE_I2C(Adr_begin);
	if(Ch_ACK)
	{
		STOP_I2C();
		goto rep;
	}
}

void Init_READ_I2C(unsigned int Adr_begin)
{
	Init_WRITE_I2C(Adr_begin);
	START_I2C ();
	Slave_ADR_RW_I2C|=1;
	OUT_BYTE_I2C(Slave_ADR_RW_I2C);
}

void START_I2C(void)
{
	HIGH_SDA_I2C();
	HIGH_SCL_I2C();
	LOW_SDA_I2C();
	LOW_SCL_I2C();
}

void LOW_SCL_I2C(void)
{ 
	// clrbit(PORTC,SCL);
	clrbit(PORTC,SCL);
	Delay_Fast(5);
}

void HIGH_SCL_I2C(void)
{
	// setbit(TRISC,SCL)
	setbit(PORTC,SCL);
	Delay_Fast(5);
}

void LOW_SDA_I2C(void)
{
	clrbit(PORTC,SDA);
	clrbit(TRISC,SDA);
	Delay_Fast(5);
}

void HIGH_SDA_I2C(void)
{
	setbit(TRISC,SDA);
	Delay_Fast(5);
}

void Delay_Fast(byte  i)
{
	while (i--);
}

byte IN_BYTE_ACK_I2C(void)
{
	byte t;
	t=IN_BYTE_I2C();
	ACK_I2C();
	return(t);
}

byte IN_BYTE_I2C(void)
{
	byte t,tmp=8;
	t=0;
	HIGH_SDA_I2C();
	while (tmp--) 
	{
		t += t;
		HIGH_SCL_I2C();
		if(testbit(PORTC,SDA))
		{
			t++;
		}
		LOW_SCL_I2C();
    }
	return(t);
}

byte IN_BYTE_NACK_STOP_I2C(void)
{
	byte t;
	t = IN_BYTE_I2C();
	NACK_I2C();
	STOP_I2C();
	return(t);
}

void OUT_BYTE_PAGE_I2C(byte tmp)
{ 
	OUT_BYTE_I2C(tmp);
	Adr_I2C++;
 	if((cache_size_I2C-1) & Adr_I2C)
	{
		return;
	}
	STOP_I2C();
	Init_WRITE_I2C(Adr_I2C);
	return;
}

void OUT_BYTE_I2C(byte t)
{
	byte tmp;
	tmp=8;
	while(tmp--)
	{
  		if(t & 0x80)
		{
			HIGH_SDA_I2C(); 
		}
		else
		{
			LOW_SDA_I2C();
		}
		CLOCK_PULSE_I2C();
		t+=t;
    }
 	HIGH_SDA_I2C();
	Check_ACK_I2C();
}

void STOP_I2C(void)
{
	LOW_SDA_I2C();
	LOW_SCL_I2C(); 
	HIGH_SCL_I2C();
	HIGH_SDA_I2C();
	LOW_SCL_I2C();
}

void CLOCK_PULSE_I2C(void)
{
	HIGH_SCL_I2C();
	LOW_SCL_I2C();
}

void Check_ACK_I2C(void)
{
	HIGH_SCL_I2C();
	if(testbit(PORTC,SDA))
	{
		Ch_ACK=1;
	}
	else
	{
		Ch_ACK=0;
	}
 	LOW_SCL_I2C();
}

void NACK_I2C(void)
{
	HIGH_SDA_I2C();
	CLOCK_PULSE_I2C();
}

void ACK_I2C(void)
{
	LOW_SDA_I2C();
	CLOCK_PULSE_I2C();
}