/*12)�������� ����������������� ����� � ������� �������.
��� ������� �� ������-��������� �����
� � ������ ������ ���������� 8-������ �����, ������ ��������.*/

#include <xc.h>
#include <pic16F877A.h>

typedef unsigned char byte;

#define Freq 20  // =  main frequency  (MHz)

#define testbit(var, bit) ((var) & (1 <<(bit))) // �������� ������ ���������� �� SCL � SDA
#define setbit(var, bit) ((var) |= (1 << (bit))) // ������������� � bit-�� ���� var-� �������
#define clrbit(var, bit) ((var) &= ~(1 << (bit))) // ������������� � bit-�� ���� var-� ����

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

static const char str_BLANK[] = "                "; // ������ ��� ������� ������, �� ����� �������

void Delay(unsigned int);
void Pulse(unsigned int);
void Send_Command_LCD(byte);
void Init_LCD(void);
void Send_Byte_LCD (byte);
void Set_Coord_LCD(byte, byte); // ������������ ������ �� ������������ ����������
void Show_String_LCD(const char*); // ������� ������ �� �����
void Clr_LCD(byte); // ��� ������� ������
void Restart(void); // ��� ����� ������ �����
byte Check_buttons(void); // ���������� �������� ������� ������
unsigned long int power(unsigned long int, unsigned int); // ��� ���������� � �������

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

unsigned int str = 0; // ������ ������
unsigned int stlb = 0; // ������ �������
unsigned int deg = 0; // �������
unsigned int cnt0 = 0; // ������� ����
unsigned int cntA = 0; // ������� ����
unsigned int step = 0; // ������� ���
	
unsigned long int int_res = 0; // ��������� ������ � ���������� ����

unsigned long int int_arr[16] = {0}; // ������������� ������, �������� �������� �����
byte str_line0[16] = ""; // ������ �����
byte str_line1[16] = ""; // ������ ����������

void main (void)
{	
	Init_LCD();

	SET_I2C_EEPROM; // �������� ����� ������������� ���������� - EEPROM
	TRISC=0x9B;
	init_I2C();
	
	while(1)
	{
		if (step == 0) // ��� �� ���� ����� �� �������
		{
			str_line0[ind] = '0'; // ���������� 0 � ������
			Show_String_LCD(str_line0); // � ������� �� �������
			Set_Coord_LCD(str, stlb); // ���������� ������ �����
			step = 1; // ��������� � ���� ������ ����
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
				cnt0++; // ����������� ������� ����
				if (cnt0 < 10) // ���� ����� ������ 10
				{
					str_line0[ind] = cnt0 + '0'; // �� �� �������
				}
				else if (cnt0 < 16) // ���� ����� ������ 10
				{
					str_line0[ind] = cntA + 'A'; // ������� �� 16� ������
					cntA++; // ��� ���� ����������� ������� ����
				}
				else // ���� ����� ����� 16
				{
					cnt0 = 0; // �������� ������� ����
					cntA = 0; // �������� ������� ����

					step = 0;
					break;
				}
				Clr_LCD(0); // ������ ������
				Show_String_LCD(str_line0); // ������� ����� ������
				Set_Coord_LCD(str, stlb); // ���������� ���������� �����
			}
			break;
		
		case next:
			
			if(step == 2)
			{
				Restart();
				break;
			}
			
			if (ind < 7) // ���� ������� ������ ������� ������ 8
			{
				int_arr[ind] = cnt0; // � ������������� ������ ������ ��������� �����
				cnt0 = 0; // �������� ������� ����
				cntA = 0; // �������� ������� ����
				ind++; // ��������� � ��������� �����
				stlb++;

				Clr_LCD(0); // ������ ������
				step = 0; // ��������� � ���� 0
				break;
			}

		case finish:
			
			if(step == 2)
			{
				Restart();
				break;
			}

			step = 2; // ������� � ���� 2
			int_arr[ind] = cnt0; // ��������� ��������� ���������������� ������
			Set_Coord_LCD(1, 0); // ��������� �� ��������� ������

			while(ind >= 0) // ��������� �� 16 � 10
			{
				int_res += int_arr[ind--] * power(16, deg++);
			}

			while (int_res > 8) // ��������� �� 10 � 8
			{
            	int_arr[ind2] = int_res % 8;
            	int_res /= 8;
            	ind2++; 
        	}
			int_arr[ind2] = int_res;
			
			ind = 0;
			while(ind2 >= 0) // ���������� ����� � �������� �������
			{
				str_line1[ind++] = int_arr[ind2--] + '0';
			}

			Show_String_LCD(str_line1); // ������� ���������
			break;
		
		case eeprom:
			if(step == 2) // ���������
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
			else // ��������
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
	byte tmp_PORTB = PORTB; // ��������� ������� �������� PORTB
	byte tmp_TRISB = TRISB; // ��������� ������� �������� TRISB
	TRISB &= 0x0F; // ������������� RB4-RB7 �� �����
	PORTB |= 0xF0; // �������� � �������� RB4-RB7 �������
	/*���� ������ ���� ������, ���� ��������*/
	tmp = PORTB^0xFF; // ������� �������� � ��������������� ���� ������� ������
	PORTB = tmp_PORTB; // ���������� �������� �������� PORTB
	TRISB = tmp_TRISB; // ���������� �������� �������� TRISB
	return(tmp >> 4); // ������ ����� �� 4, �� 0,1,2,3 �� ����������
}

//////////////LCD///////////////

void Delay(unsigned int tmp) // ( tmp=1000) ~ 11 mS (4MHz)
{
	while(tmp--);
	return;
}

void Pulse(unsigned int x) // ������� ��� ������ �������� �������������, ������� ������������ ���������� ����������� ������ � ��� ������
{
	RB2=1; // ���������� ����� E = 1
	Delay(x);
	RB2=0; // ���������� ����� E = 0
	Delay(x);
}

void Init_LCD(void) // ������������� ����������� ����������� ��������� ��������� ������������������ �������� ��� �������������.
{
	Delay(200*Freq); // ��������� ����� ����� ������������� �������� ���������� ������� (>4,5 �) � ����������� ����� ���� �������� � ������������.
	/* ������ ��������� ��������� �������, ���������� ����������� ���� */
	TRISB=0; // ���� � ��������������� ������� �������� TRISB ������������� ������ ���������� �� ���������������� ������ ����� B �� ������� ���.
	PORTB=0x30; // (��� ������ ���� ������� 0x30 ���������� �� ����, ����� ����������� ��������� �� ����������� ������������ � ����������)
	Pulse(20*Freq); // ����� ����� ��������� �����
	Pulse(20*Freq);
	Pulse(20*Freq);

	PORTB=0x20; // � ��������� ������� ������ ����������� ���� (DL = 0 => � ��� 4� ��������� ���� ������)
	Pulse(20*Freq); // ��������� ����� ���������� ����� ��������� �����

	Send_Command_LCD (0x28); // � � ������ ��� ��������� ������� ������������ ����������� ���� ((DL = 0 => � ��� 4� ��������� ���� ������, N = 0 => 2 ������)
	Send_Command_LCD (0x0F); // �����������, ��������, �������������
	Send_Command_LCD (0x06); // ����������� �������
	Send_Command_LCD (0x02); // AC = 0, ��������� �� DDRAM, �������� ������, ������ ������ ���������� � ������ DDRAM
}

void Send_Command_LCD(byte tmp)
{
	while (Check_buttons())
	{
		Delay(500*Freq); // ���� ���� �� �������� ������
	}
	RB1 = 0; // ���������� �������� RS � 1
	PORTB=(PORTB & 0x0F) + (tmp & 0xF0); // ������� �������� ������� 4� ���� ������ �� ����� ���� RB4-RB7
	Pulse(2 * Freq);
	PORTB=(PORTB & 0x0F) + (tmp << 4); // ������� �������� ������� 4� ����� ������ �� ����� ���� RB4-RB7
	Pulse(2 * Freq);
	RB1 = 1; // ���������� �������� RS � 0
	Delay(250 * Freq);
}

void Send_Byte_LCD (byte tmp)
{
	while (Check_buttons())
	{
		Delay(500*Freq); // ���� ���� �� �������� ������
	}
	PORTB = (PORTB & 0x0F) + (tmp & 0xF0); // ������� �������� ������� 4� ���� ������ �� ����� ���� RB4-RB7
	Pulse(2*Freq);
	PORTB = (PORTB & 0x0F) + (tmp << 4); // ������� �������� ������� 4� ����� ������ �� ����� ���� RB4-RB7
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

/*I2c ������� �� 2 �����������, ���������� � +5� ����� ��������� � �������������� � ��������� ���
SCL - �������� �� �������� ��������� �������������  
SDA - �������� �� �������� ������ ����� ������������*/

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