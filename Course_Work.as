opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 56723"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.31\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_Check_buttons
	FNCALL	_main,_Clr_LCD
	FNCALL	_main,_IN_BYTE_ACK_I2C
	FNCALL	_main,_IN_BYTE_NACK_STOP_I2C
	FNCALL	_main,_Init_LCD
	FNCALL	_main,_Init_READ_I2C
	FNCALL	_main,_Init_WRITE_I2C
	FNCALL	_main,_OUT_BYTE_PAGE_I2C
	FNCALL	_main,_Restart
	FNCALL	_main,_STOP_I2C
	FNCALL	_main,_Set_Coord_LCD
	FNCALL	_main,_Show_String_LCD
	FNCALL	_main,___lmul
	FNCALL	_main,_init_I2C
	FNCALL	_main,_power
	FNCALL	_power,___lmul
	FNCALL	_Restart,_Clr_LCD
	FNCALL	_Clr_LCD,_Set_Coord_LCD
	FNCALL	_Clr_LCD,_Show_String_LCD
	FNCALL	_Show_String_LCD,_Send_Byte_LCD
	FNCALL	_Send_Byte_LCD,_Check_buttons
	FNCALL	_Send_Byte_LCD,_Delay
	FNCALL	_Send_Byte_LCD,_Pulse
	FNCALL	_Set_Coord_LCD,_Send_Command_LCD
	FNCALL	_OUT_BYTE_PAGE_I2C,_Init_WRITE_I2C
	FNCALL	_OUT_BYTE_PAGE_I2C,_OUT_BYTE_I2C
	FNCALL	_OUT_BYTE_PAGE_I2C,_STOP_I2C
	FNCALL	_Init_READ_I2C,_Init_WRITE_I2C
	FNCALL	_Init_READ_I2C,_OUT_BYTE_I2C
	FNCALL	_Init_READ_I2C,_START_I2C
	FNCALL	_Init_WRITE_I2C,_OUT_BYTE_I2C
	FNCALL	_Init_WRITE_I2C,_START_I2C
	FNCALL	_Init_WRITE_I2C,_STOP_I2C
	FNCALL	_START_I2C,_HIGH_SCL_I2C
	FNCALL	_START_I2C,_HIGH_SDA_I2C
	FNCALL	_START_I2C,_LOW_SCL_I2C
	FNCALL	_START_I2C,_LOW_SDA_I2C
	FNCALL	_OUT_BYTE_I2C,_CLOCK_PULSE_I2C
	FNCALL	_OUT_BYTE_I2C,_Check_ACK_I2C
	FNCALL	_OUT_BYTE_I2C,_HIGH_SDA_I2C
	FNCALL	_OUT_BYTE_I2C,_LOW_SDA_I2C
	FNCALL	_Check_ACK_I2C,_HIGH_SCL_I2C
	FNCALL	_Check_ACK_I2C,_LOW_SCL_I2C
	FNCALL	_Init_LCD,_Delay
	FNCALL	_Init_LCD,_Pulse
	FNCALL	_Init_LCD,_Send_Command_LCD
	FNCALL	_Send_Command_LCD,_Check_buttons
	FNCALL	_Send_Command_LCD,_Delay
	FNCALL	_Send_Command_LCD,_Pulse
	FNCALL	_Pulse,_Delay
	FNCALL	_IN_BYTE_NACK_STOP_I2C,_IN_BYTE_I2C
	FNCALL	_IN_BYTE_NACK_STOP_I2C,_NACK_I2C
	FNCALL	_IN_BYTE_NACK_STOP_I2C,_STOP_I2C
	FNCALL	_STOP_I2C,_HIGH_SCL_I2C
	FNCALL	_STOP_I2C,_HIGH_SDA_I2C
	FNCALL	_STOP_I2C,_LOW_SCL_I2C
	FNCALL	_STOP_I2C,_LOW_SDA_I2C
	FNCALL	_NACK_I2C,_CLOCK_PULSE_I2C
	FNCALL	_NACK_I2C,_HIGH_SDA_I2C
	FNCALL	_IN_BYTE_ACK_I2C,_ACK_I2C
	FNCALL	_IN_BYTE_ACK_I2C,_IN_BYTE_I2C
	FNCALL	_IN_BYTE_I2C,_HIGH_SCL_I2C
	FNCALL	_IN_BYTE_I2C,_HIGH_SDA_I2C
	FNCALL	_IN_BYTE_I2C,_LOW_SCL_I2C
	FNCALL	_HIGH_SDA_I2C,_Delay_Fast
	FNCALL	_ACK_I2C,_CLOCK_PULSE_I2C
	FNCALL	_ACK_I2C,_LOW_SDA_I2C
	FNCALL	_LOW_SDA_I2C,_Delay_Fast
	FNCALL	_CLOCK_PULSE_I2C,_HIGH_SCL_I2C
	FNCALL	_CLOCK_PULSE_I2C,_LOW_SCL_I2C
	FNCALL	_LOW_SCL_I2C,_Delay_Fast
	FNCALL	_HIGH_SCL_I2C,_Delay_Fast
	FNROOT	_main
	global	_str_BLANK
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	34
_str_BLANK:
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	0
	global __end_of_str_BLANK
__end_of_str_BLANK:
	global	_str_BLANK
	global	_int_res
	global	_Adr_I2C
	global	_cnt0
	global	_cntA
	global	_deg
	global	_ind
	global	_ind2
	global	_step
	global	_stlb
	global	_str
	global	_Ch_ACK
	global	_Slave_ADR_RW_I2C
	global	_str_line0
	global	_int_arr
	global	_str_line1
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RC4
_RC4	set	0x3C
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
; #config settings
	file	"Course_Work.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_int_res:
       ds      4

_Adr_I2C:
       ds      2

_cnt0:
       ds      2

_cntA:
       ds      2

_deg:
       ds      2

_ind:
       ds      2

_ind2:
       ds      2

_step:
       ds      2

_stlb:
       ds      2

_str:
       ds      2

_Ch_ACK:
       ds      1

_Slave_ADR_RW_I2C:
       ds      1

_str_line0:
       ds      16

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_int_arr:
       ds      64

_str_line1:
       ds      16

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+028h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+050h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Init_LCD:	; 0 bytes @ 0x0
?_init_I2C:	; 0 bytes @ 0x0
??_init_I2C:	; 0 bytes @ 0x0
?_Restart:	; 0 bytes @ 0x0
?_Clr_LCD:	; 0 bytes @ 0x0
?_OUT_BYTE_PAGE_I2C:	; 0 bytes @ 0x0
?_STOP_I2C:	; 0 bytes @ 0x0
??_Check_buttons:	; 0 bytes @ 0x0
?_Send_Command_LCD:	; 0 bytes @ 0x0
?_START_I2C:	; 0 bytes @ 0x0
?_OUT_BYTE_I2C:	; 0 bytes @ 0x0
?_HIGH_SDA_I2C:	; 0 bytes @ 0x0
?_HIGH_SCL_I2C:	; 0 bytes @ 0x0
?_LOW_SDA_I2C:	; 0 bytes @ 0x0
?_LOW_SCL_I2C:	; 0 bytes @ 0x0
?_Delay_Fast:	; 0 bytes @ 0x0
??_Delay_Fast:	; 0 bytes @ 0x0
?_ACK_I2C:	; 0 bytes @ 0x0
?_NACK_I2C:	; 0 bytes @ 0x0
?_CLOCK_PULSE_I2C:	; 0 bytes @ 0x0
?_Check_ACK_I2C:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_Delay:	; 0 bytes @ 0x0
?_Send_Byte_LCD:	; 0 bytes @ 0x0
?_IN_BYTE_ACK_I2C:	; 1 bytes @ 0x0
?_IN_BYTE_NACK_STOP_I2C:	; 1 bytes @ 0x0
?_Check_buttons:	; 1 bytes @ 0x0
?_IN_BYTE_I2C:	; 1 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	Delay_Fast@i
Delay_Fast@i:	; 1 bytes @ 0x0
	global	Delay@tmp
Delay@tmp:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
??_HIGH_SDA_I2C:	; 0 bytes @ 0x1
??_HIGH_SCL_I2C:	; 0 bytes @ 0x1
??_LOW_SDA_I2C:	; 0 bytes @ 0x1
??_LOW_SCL_I2C:	; 0 bytes @ 0x1
	global	Check_buttons@tmp
Check_buttons@tmp:	; 1 bytes @ 0x1
	ds	1
??_STOP_I2C:	; 0 bytes @ 0x2
??_START_I2C:	; 0 bytes @ 0x2
??_OUT_BYTE_I2C:	; 0 bytes @ 0x2
??_IN_BYTE_I2C:	; 0 bytes @ 0x2
??_ACK_I2C:	; 0 bytes @ 0x2
??_NACK_I2C:	; 0 bytes @ 0x2
??_CLOCK_PULSE_I2C:	; 0 bytes @ 0x2
??_Check_ACK_I2C:	; 0 bytes @ 0x2
??_Delay:	; 0 bytes @ 0x2
?_Pulse:	; 0 bytes @ 0x2
	global	Check_buttons@tmp_PORTB
Check_buttons@tmp_PORTB:	; 1 bytes @ 0x2
	global	Pulse@x
Pulse@x:	; 2 bytes @ 0x2
	ds	1
	global	Check_buttons@tmp_TRISB
Check_buttons@tmp_TRISB:	; 1 bytes @ 0x3
	global	IN_BYTE_I2C@tmp
IN_BYTE_I2C@tmp:	; 1 bytes @ 0x3
	global	OUT_BYTE_I2C@tmp
OUT_BYTE_I2C@tmp:	; 1 bytes @ 0x3
	ds	1
??_Send_Command_LCD:	; 0 bytes @ 0x4
??_Pulse:	; 0 bytes @ 0x4
??_Send_Byte_LCD:	; 0 bytes @ 0x4
	global	IN_BYTE_I2C@t
IN_BYTE_I2C@t:	; 1 bytes @ 0x4
	global	OUT_BYTE_I2C@t
OUT_BYTE_I2C@t:	; 1 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
?_Init_WRITE_I2C:	; 0 bytes @ 0x5
??_IN_BYTE_ACK_I2C:	; 0 bytes @ 0x5
??_IN_BYTE_NACK_STOP_I2C:	; 0 bytes @ 0x5
	global	Init_WRITE_I2C@Adr_begin
Init_WRITE_I2C@Adr_begin:	; 2 bytes @ 0x5
	ds	1
	global	Send_Command_LCD@tmp
Send_Command_LCD@tmp:	; 1 bytes @ 0x6
	global	Send_Byte_LCD@tmp
Send_Byte_LCD@tmp:	; 1 bytes @ 0x6
	global	IN_BYTE_ACK_I2C@t
IN_BYTE_ACK_I2C@t:	; 1 bytes @ 0x6
	global	IN_BYTE_NACK_STOP_I2C@t
IN_BYTE_NACK_STOP_I2C@t:	; 1 bytes @ 0x6
	ds	1
??_Init_LCD:	; 0 bytes @ 0x7
?_Show_String_LCD:	; 0 bytes @ 0x7
?_Set_Coord_LCD:	; 0 bytes @ 0x7
??_Init_WRITE_I2C:	; 0 bytes @ 0x7
	global	Set_Coord_LCD@j
Set_Coord_LCD@j:	; 1 bytes @ 0x7
	global	Show_String_LCD@mySTRING
Show_String_LCD@mySTRING:	; 2 bytes @ 0x7
	ds	1
??_Set_Coord_LCD:	; 0 bytes @ 0x8
??_OUT_BYTE_PAGE_I2C:	; 0 bytes @ 0x8
?_Init_READ_I2C:	; 0 bytes @ 0x8
??___lmul:	; 0 bytes @ 0x8
	global	Set_Coord_LCD@i
Set_Coord_LCD@i:	; 1 bytes @ 0x8
	global	Init_READ_I2C@Adr_begin
Init_READ_I2C@Adr_begin:	; 2 bytes @ 0x8
	ds	1
??_Show_String_LCD:	; 0 bytes @ 0x9
??_Clr_LCD:	; 0 bytes @ 0x9
	global	Clr_LCD@str_
Clr_LCD@str_:	; 1 bytes @ 0x9
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	1
??_Restart:	; 0 bytes @ 0xA
??_Init_READ_I2C:	; 0 bytes @ 0xA
	global	OUT_BYTE_PAGE_I2C@tmp
OUT_BYTE_PAGE_I2C@tmp:	; 1 bytes @ 0xA
	ds	2
	global	Restart@i
Restart@i:	; 2 bytes @ 0xC
	ds	1
??_power:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_power
?_power:	; 4 bytes @ 0x0
	global	power@x
power@x:	; 4 bytes @ 0x0
	ds	4
	global	power@n
power@n:	; 2 bytes @ 0x4
	ds	2
	global	power@a
power@a:	; 4 bytes @ 0x6
	ds	4
??_main:	; 0 bytes @ 0xA
	ds	5
	global	_main$616
_main$616:	; 4 bytes @ 0xF
	ds	4
	global	main@i
main@i:	; 2 bytes @ 0x13
	ds	2
	global	main@i_166
main@i_166:	; 2 bytes @ 0x15
	ds	2
	global	main@i_167
main@i_167:	; 2 bytes @ 0x17
	ds	2
	global	main@i_168
main@i_168:	; 2 bytes @ 0x19
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    17
;!    Data        0
;!    BSS         120
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     27      67
;!    BANK1            80      0      80
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    Show_String_LCD@mySTRING	PTR const unsigned char  size(2) Largest target is 17
;!		 -> str_BLANK(CODE[17]), str_line1(BANK1[16]), str_line0(BANK0[16]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_Restart
;!    _power->___lmul
;!    _Restart->_Clr_LCD
;!    _Clr_LCD->_Set_Coord_LCD
;!    _Clr_LCD->_Show_String_LCD
;!    _Show_String_LCD->_Send_Byte_LCD
;!    _Send_Byte_LCD->_Check_buttons
;!    _Send_Byte_LCD->_Pulse
;!    _Set_Coord_LCD->_Send_Command_LCD
;!    _OUT_BYTE_PAGE_I2C->_Init_WRITE_I2C
;!    _Init_READ_I2C->_Init_WRITE_I2C
;!    _Init_WRITE_I2C->_OUT_BYTE_I2C
;!    _START_I2C->_LOW_SCL_I2C
;!    _START_I2C->_LOW_SDA_I2C
;!    _OUT_BYTE_I2C->_LOW_SDA_I2C
;!    _Check_ACK_I2C->_LOW_SCL_I2C
;!    _Init_LCD->_Send_Command_LCD
;!    _Send_Command_LCD->_Check_buttons
;!    _Send_Command_LCD->_Pulse
;!    _Pulse->_Delay
;!    _IN_BYTE_NACK_STOP_I2C->_IN_BYTE_I2C
;!    _STOP_I2C->_LOW_SCL_I2C
;!    _STOP_I2C->_LOW_SDA_I2C
;!    _IN_BYTE_ACK_I2C->_IN_BYTE_I2C
;!    _IN_BYTE_I2C->_LOW_SCL_I2C
;!    _HIGH_SDA_I2C->_Delay_Fast
;!    _ACK_I2C->_LOW_SDA_I2C
;!    _LOW_SDA_I2C->_Delay_Fast
;!    _CLOCK_PULSE_I2C->_LOW_SCL_I2C
;!    _LOW_SCL_I2C->_Delay_Fast
;!    _HIGH_SCL_I2C->_Delay_Fast
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_power
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                17    17      0   16907
;!                                             10 BANK0     17    17      0
;!                      _Check_buttons
;!                            _Clr_LCD
;!                    _IN_BYTE_ACK_I2C
;!              _IN_BYTE_NACK_STOP_I2C
;!                           _Init_LCD
;!                      _Init_READ_I2C
;!                     _Init_WRITE_I2C
;!                  _OUT_BYTE_PAGE_I2C
;!                            _Restart
;!                           _STOP_I2C
;!                      _Set_Coord_LCD
;!                    _Show_String_LCD
;!                             ___lmul
;!                           _init_I2C
;!                              _power
;! ---------------------------------------------------------------------------------
;! (1) _power                                               10     4      6     675
;!                                              0 BANK0     10     4      6
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              13     5      8     410
;!                                              0 COMMON    13     5      8
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Restart                                              4     4      0    3403
;!                                             10 COMMON     4     4      0
;!                            _Clr_LCD
;! ---------------------------------------------------------------------------------
;! (2) _Clr_LCD                                              1     1      0    3291
;!                                              9 COMMON     1     1      0
;!                      _Set_Coord_LCD
;!                    _Show_String_LCD
;! ---------------------------------------------------------------------------------
;! (1) _Show_String_LCD                                      2     0      2    1624
;!                                              7 COMMON     2     0      2
;!                      _Send_Byte_LCD
;! ---------------------------------------------------------------------------------
;! (2) _Send_Byte_LCD                                        3     3      0    1261
;!                                              4 COMMON     3     3      0
;!                      _Check_buttons
;!                              _Delay
;!                              _Pulse
;! ---------------------------------------------------------------------------------
;! (1) _Set_Coord_LCD                                        2     1      1    1645
;!                                              7 COMMON     2     1      1
;!                   _Send_Command_LCD
;! ---------------------------------------------------------------------------------
;! (1) _OUT_BYTE_PAGE_I2C                                    3     3      0     911
;!                                              8 COMMON     3     3      0
;!                     _Init_WRITE_I2C
;!                       _OUT_BYTE_I2C
;!                           _STOP_I2C
;! ---------------------------------------------------------------------------------
;! (1) _Init_READ_I2C                                        2     0      2     964
;!                                              8 COMMON     2     0      2
;!                     _Init_WRITE_I2C
;!                       _OUT_BYTE_I2C
;!                          _START_I2C
;! ---------------------------------------------------------------------------------
;! (2) _Init_WRITE_I2C                                       3     1      2     601
;!                                              5 COMMON     3     1      2
;!                       _OUT_BYTE_I2C
;!                          _START_I2C
;!                           _STOP_I2C
;! ---------------------------------------------------------------------------------
;! (3) _START_I2C                                            0     0      0      88
;!                       _HIGH_SCL_I2C
;!                       _HIGH_SDA_I2C
;!                        _LOW_SCL_I2C
;!                        _LOW_SDA_I2C
;! ---------------------------------------------------------------------------------
;! (2) _OUT_BYTE_I2C                                         3     3      0     200
;!                                              2 COMMON     3     3      0
;!                    _CLOCK_PULSE_I2C
;!                      _Check_ACK_I2C
;!                       _HIGH_SDA_I2C
;!                        _LOW_SDA_I2C
;! ---------------------------------------------------------------------------------
;! (3) _Check_ACK_I2C                                        0     0      0      44
;!                       _HIGH_SCL_I2C
;!                        _LOW_SCL_I2C
;! ---------------------------------------------------------------------------------
;! (1) _Init_LCD                                             0     0      0    2409
;!                              _Delay
;!                              _Pulse
;!                   _Send_Command_LCD
;! ---------------------------------------------------------------------------------
;! (2) _Send_Command_LCD                                     3     3      0    1261
;!                                              4 COMMON     3     3      0
;!                      _Check_buttons
;!                              _Delay
;!                              _Pulse
;! ---------------------------------------------------------------------------------
;! (3) _Pulse                                                2     0      2     808
;!                                              2 COMMON     2     0      2
;!                              _Delay
;! ---------------------------------------------------------------------------------
;! (4) _Delay                                                2     0      2     340
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (3) _Check_buttons                                        4     4      0      69
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _IN_BYTE_NACK_STOP_I2C                                2     2      0     297
;!                                              5 COMMON     2     2      0
;!                        _IN_BYTE_I2C
;!                           _NACK_I2C
;!                           _STOP_I2C
;! ---------------------------------------------------------------------------------
;! (1) _STOP_I2C                                             0     0      0      88
;!                       _HIGH_SCL_I2C
;!                       _HIGH_SDA_I2C
;!                        _LOW_SCL_I2C
;!                        _LOW_SDA_I2C
;! ---------------------------------------------------------------------------------
;! (2) _NACK_I2C                                             0     0      0      66
;!                    _CLOCK_PULSE_I2C
;!                       _HIGH_SDA_I2C
;! ---------------------------------------------------------------------------------
;! (1) _IN_BYTE_ACK_I2C                                      2     2      0     225
;!                                              5 COMMON     2     2      0
;!                            _ACK_I2C
;!                        _IN_BYTE_I2C
;! ---------------------------------------------------------------------------------
;! (2) _IN_BYTE_I2C                                          3     3      0     136
;!                                              2 COMMON     3     3      0
;!                       _HIGH_SCL_I2C
;!                       _HIGH_SDA_I2C
;!                        _LOW_SCL_I2C
;! ---------------------------------------------------------------------------------
;! (2) _HIGH_SDA_I2C                                         0     0      0      22
;!                         _Delay_Fast
;! ---------------------------------------------------------------------------------
;! (2) _ACK_I2C                                              0     0      0      66
;!                    _CLOCK_PULSE_I2C
;!                        _LOW_SDA_I2C
;! ---------------------------------------------------------------------------------
;! (2) _LOW_SDA_I2C                                          1     1      0      22
;!                                              1 COMMON     1     1      0
;!                         _Delay_Fast
;! ---------------------------------------------------------------------------------
;! (3) _CLOCK_PULSE_I2C                                      0     0      0      44
;!                       _HIGH_SCL_I2C
;!                        _LOW_SCL_I2C
;! ---------------------------------------------------------------------------------
;! (2) _LOW_SCL_I2C                                          1     1      0      22
;!                                              1 COMMON     1     1      0
;!                         _Delay_Fast
;! ---------------------------------------------------------------------------------
;! (2) _HIGH_SCL_I2C                                         0     0      0      22
;!                         _Delay_Fast
;! ---------------------------------------------------------------------------------
;! (3) _Delay_Fast                                           1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Check_buttons
;!   _Clr_LCD
;!     _Set_Coord_LCD
;!       _Send_Command_LCD
;!         _Check_buttons
;!         _Delay
;!         _Pulse
;!           _Delay
;!     _Show_String_LCD
;!       _Send_Byte_LCD
;!         _Check_buttons
;!         _Delay
;!         _Pulse
;!           _Delay
;!   _IN_BYTE_ACK_I2C
;!     _ACK_I2C
;!       _CLOCK_PULSE_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!     _IN_BYTE_I2C
;!       _HIGH_SCL_I2C
;!         _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SCL_I2C
;!         _Delay_Fast
;!   _IN_BYTE_NACK_STOP_I2C
;!     _IN_BYTE_I2C
;!       _HIGH_SCL_I2C
;!         _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SCL_I2C
;!         _Delay_Fast
;!     _NACK_I2C
;!       _CLOCK_PULSE_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!     _STOP_I2C
;!       _HIGH_SCL_I2C
;!         _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SCL_I2C
;!         _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!   _Init_LCD
;!     _Delay
;!     _Pulse
;!       _Delay
;!     _Send_Command_LCD
;!       _Check_buttons
;!       _Delay
;!       _Pulse
;!         _Delay
;!   _Init_READ_I2C
;!     _Init_WRITE_I2C
;!       _OUT_BYTE_I2C
;!         _CLOCK_PULSE_I2C
;!           _HIGH_SCL_I2C
;!             _Delay_Fast
;!           _LOW_SCL_I2C
;!             _Delay_Fast
;!         _Check_ACK_I2C
;!           _HIGH_SCL_I2C
;!             _Delay_Fast
;!           _LOW_SCL_I2C
;!             _Delay_Fast
;!         _HIGH_SDA_I2C
;!           _Delay_Fast
;!         _LOW_SDA_I2C
;!           _Delay_Fast
;!       _START_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _HIGH_SDA_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SDA_I2C
;!           _Delay_Fast
;!       _STOP_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _HIGH_SDA_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SDA_I2C
;!           _Delay_Fast
;!     _OUT_BYTE_I2C
;!       _CLOCK_PULSE_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!       _Check_ACK_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!     _START_I2C
;!       _HIGH_SCL_I2C
;!         _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SCL_I2C
;!         _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!   _Init_WRITE_I2C
;!     _OUT_BYTE_I2C
;!       _CLOCK_PULSE_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!       _Check_ACK_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!     _START_I2C
;!       _HIGH_SCL_I2C
;!         _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SCL_I2C
;!         _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!     _STOP_I2C
;!       _HIGH_SCL_I2C
;!         _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SCL_I2C
;!         _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!   _OUT_BYTE_PAGE_I2C
;!     _Init_WRITE_I2C
;!       _OUT_BYTE_I2C
;!         _CLOCK_PULSE_I2C
;!           _HIGH_SCL_I2C
;!             _Delay_Fast
;!           _LOW_SCL_I2C
;!             _Delay_Fast
;!         _Check_ACK_I2C
;!           _HIGH_SCL_I2C
;!             _Delay_Fast
;!           _LOW_SCL_I2C
;!             _Delay_Fast
;!         _HIGH_SDA_I2C
;!           _Delay_Fast
;!         _LOW_SDA_I2C
;!           _Delay_Fast
;!       _START_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _HIGH_SDA_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SDA_I2C
;!           _Delay_Fast
;!       _STOP_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _HIGH_SDA_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SDA_I2C
;!           _Delay_Fast
;!     _OUT_BYTE_I2C
;!       _CLOCK_PULSE_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!       _Check_ACK_I2C
;!         _HIGH_SCL_I2C
;!           _Delay_Fast
;!         _LOW_SCL_I2C
;!           _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!     _STOP_I2C
;!       _HIGH_SCL_I2C
;!         _Delay_Fast
;!       _HIGH_SDA_I2C
;!         _Delay_Fast
;!       _LOW_SCL_I2C
;!         _Delay_Fast
;!       _LOW_SDA_I2C
;!         _Delay_Fast
;!   _Restart
;!     _Clr_LCD
;!       _Set_Coord_LCD
;!         _Send_Command_LCD
;!           _Check_buttons
;!           _Delay
;!           _Pulse
;!             _Delay
;!       _Show_String_LCD
;!         _Send_Byte_LCD
;!           _Check_buttons
;!           _Delay
;!           _Pulse
;!             _Delay
;!   _STOP_I2C
;!     _HIGH_SCL_I2C
;!       _Delay_Fast
;!     _HIGH_SDA_I2C
;!       _Delay_Fast
;!     _LOW_SCL_I2C
;!       _Delay_Fast
;!     _LOW_SDA_I2C
;!       _Delay_Fast
;!   _Set_Coord_LCD
;!     _Send_Command_LCD
;!       _Check_buttons
;!       _Delay
;!       _Pulse
;!         _Delay
;!   _Show_String_LCD
;!     _Send_Byte_LCD
;!       _Check_buttons
;!       _Delay
;!       _Pulse
;!         _Delay
;!   ___lmul
;!   _init_I2C
;!   _power
;!     ___lmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      A1       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     1B      43       5       83.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0      50       7      100.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      A1      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 84 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   25[BANK0 ] int 
;;  i               2   23[BANK0 ] int 
;;  i               2   21[BANK0 ] int 
;;  i               2   19[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Check_buttons
;;		_Clr_LCD
;;		_IN_BYTE_ACK_I2C
;;		_IN_BYTE_NACK_STOP_I2C
;;		_Init_LCD
;;		_Init_READ_I2C
;;		_Init_WRITE_I2C
;;		_OUT_BYTE_PAGE_I2C
;;		_Restart
;;		_STOP_I2C
;;		_Set_Coord_LCD
;;		_Show_String_LCD
;;		___lmul
;;		_init_I2C
;;		_power
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	84
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	84
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	86
	
l1543:	
;main.c: 86: Init_LCD();
	fcall	_Init_LCD
	line	88
	
l1545:	
;main.c: 88: Slave_ADR_RW_I2C = 0xA0;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Slave_ADR_RW_I2C)
	line	89
	
l1547:	
;main.c: 89: TRISC=0x9B;
	movlw	(09Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	90
	
l1549:	
;main.c: 90: init_I2C();
	fcall	_init_I2C
	goto	l1551
	line	92
;main.c: 92: while(1)
	
l107:	
	line	94
	
l1551:	
;main.c: 93: {
;main.c: 94: if (step == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_step+1)),w
	iorwf	((_step)),w
	skipz
	goto	u861
	goto	u860
u861:
	goto	l1713
u860:
	line	96
	
l1553:	
;main.c: 95: {
;main.c: 96: str_line0[ind] = '0';
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(_ind),w
	addlw	_str_line0&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	97
	
l1555:	
;main.c: 97: Show_String_LCD(str_line0);
	movlw	(_str_line0&0ffh)
	movwf	(Show_String_LCD@mySTRING)
	movlw	(0x0)
	movwf	(Show_String_LCD@mySTRING+1)
	fcall	_Show_String_LCD
	line	98
	
l1557:	
;main.c: 98: Set_Coord_LCD(str, stlb);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_stlb),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(Set_Coord_LCD@j)
	movf	(_str),w
	fcall	_Set_Coord_LCD
	line	99
	
l1559:	
;main.c: 99: step = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_step)
	movlw	high(01h)
	movwf	((_step))+1
	goto	l1713
	line	100
	
l108:	
	line	102
;main.c: 100: }
;main.c: 102: switch ((unsigned int)Check_buttons())
	goto	l1713
	line	105
;main.c: 103: {
;main.c: 105: case 1:
	
l110:	
	line	107
	
l1561:	
;main.c: 107: if (step == 2)
	movlw	02h
	xorwf	(_step),w
	iorwf	(_step+1),w
	skipz
	goto	u871
	goto	u870
u871:
	goto	l1565
u870:
	line	109
	
l1563:	
;main.c: 108: {
;main.c: 109: Restart();
	fcall	_Restart
	line	110
;main.c: 110: }
	goto	l1551
	line	111
	
l111:	
	line	113
	
l1565:	
;main.c: 111: else
;main.c: 112: {
;main.c: 113: cnt0++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_cnt0),f
	skipnc
	incf	(_cnt0+1),f
	movlw	high(01h)
	addwf	(_cnt0+1),f
	line	114
;main.c: 114: if (cnt0 < 10)
	movlw	high(0Ah)
	subwf	(_cnt0+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(_cnt0),w
	skipnc
	goto	u881
	goto	u880
u881:
	goto	l1569
u880:
	line	116
	
l1567:	
;main.c: 115: {
;main.c: 116: str_line0[ind] = cnt0 + '0';
	movf	(_cnt0),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(_ind),w
	addlw	_str_line0&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	117
;main.c: 117: }
	goto	l1577
	line	118
	
l113:	
	
l1569:	
;main.c: 118: else if (cnt0 < 16)
	movlw	high(010h)
	subwf	(_cnt0+1),w
	movlw	low(010h)
	skipnz
	subwf	(_cnt0),w
	skipnc
	goto	u891
	goto	u890
u891:
	goto	l1575
u890:
	line	120
	
l1571:	
;main.c: 119: {
;main.c: 120: str_line0[ind] = cntA + 'A';
	movf	(_cntA),w
	addlw	041h
	movwf	(??_main+0)+0
	movf	(_ind),w
	addlw	_str_line0&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	121
	
l1573:	
;main.c: 121: cntA++;
	movlw	low(01h)
	addwf	(_cntA),f
	skipnc
	incf	(_cntA+1),f
	movlw	high(01h)
	addwf	(_cntA+1),f
	line	122
;main.c: 122: }
	goto	l1577
	line	123
	
l115:	
	line	125
	
l1575:	
;main.c: 123: else
;main.c: 124: {
;main.c: 125: cnt0 = 0;
	clrf	(_cnt0)
	clrf	(_cnt0+1)
	line	126
;main.c: 126: cntA = 0;
	clrf	(_cntA)
	clrf	(_cntA+1)
	line	128
;main.c: 128: step = 0;
	clrf	(_step)
	clrf	(_step+1)
	line	129
;main.c: 129: break;
	goto	l1551
	line	130
	
l116:	
	goto	l1577
	
l114:	
	line	131
	
l1577:	
;main.c: 130: }
;main.c: 131: Clr_LCD(0);
	movlw	(0)
	fcall	_Clr_LCD
	line	132
;main.c: 132: Show_String_LCD(str_line0);
	movlw	(_str_line0&0ffh)
	movwf	(Show_String_LCD@mySTRING)
	movlw	(0x0)
	movwf	(Show_String_LCD@mySTRING+1)
	fcall	_Show_String_LCD
	line	133
	
l1579:	
;main.c: 133: Set_Coord_LCD(str, stlb);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_stlb),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(Set_Coord_LCD@j)
	movf	(_str),w
	fcall	_Set_Coord_LCD
	goto	l1551
	line	134
	
l112:	
	line	135
;main.c: 134: }
;main.c: 135: break;
	goto	l1551
	line	137
;main.c: 137: case 2:
	
l118:	
	line	139
	
l1581:	
;main.c: 139: if(step == 2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_step),w
	iorwf	(_step+1),w
	skipz
	goto	u901
	goto	u900
u901:
	goto	l1585
u900:
	line	141
	
l1583:	
;main.c: 140: {
;main.c: 141: Restart();
	fcall	_Restart
	line	142
;main.c: 142: break;
	goto	l1551
	line	143
	
l119:	
	line	145
	
l1585:	
;main.c: 143: }
;main.c: 145: if (ind < 7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ind+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u915
	movlw	low(07h)
	subwf	(_ind),w
u915:

	skipnc
	goto	u911
	goto	u910
u911:
	goto	l1601
u910:
	line	147
	
l1587:	
;main.c: 146: {
;main.c: 147: int_arr[ind] = cnt0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_cnt0),w
	movwf	((??_main+0)+0)
	movf	(_cnt0+1),w
	movwf	((??_main+0)+0+1)
	clrf	((??_main+0)+0+2)
	clrf	((??_main+0)+0+3)
	movf	(_ind),w
	movwf	(??_main+4)+0
	movlw	(02h)-1
u925:
	clrc
	rlf	(??_main+4)+0,f
	addlw	-1
	skipz
	goto	u925
	clrc
	rlf	(??_main+4)+0,w
	addlw	_int_arr&0ffh
	movwf	fsr0
	movf	0+(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	1+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	2+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	3+(??_main+0)+0,w
	movwf	indf
	line	148
	
l1589:	
;main.c: 148: cnt0 = 0;
	clrf	(_cnt0)
	clrf	(_cnt0+1)
	line	149
	
l1591:	
;main.c: 149: cntA = 0;
	clrf	(_cntA)
	clrf	(_cntA+1)
	line	150
	
l1593:	
;main.c: 150: ind++;
	movlw	low(01h)
	addwf	(_ind),f
	skipnc
	incf	(_ind+1),f
	movlw	high(01h)
	addwf	(_ind+1),f
	line	151
	
l1595:	
;main.c: 151: stlb++;
	movlw	low(01h)
	addwf	(_stlb),f
	skipnc
	incf	(_stlb+1),f
	movlw	high(01h)
	addwf	(_stlb+1),f
	line	153
	
l1597:	
;main.c: 153: Clr_LCD(0);
	movlw	(0)
	fcall	_Clr_LCD
	line	154
	
l1599:	
;main.c: 154: step = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_step)
	clrf	(_step+1)
	line	155
;main.c: 155: break;
	goto	l1551
	line	156
	
l120:	
	goto	l1601
	line	158
;main.c: 156: }
;main.c: 158: case 4:
	
l121:	
	line	160
	
l1601:	
;main.c: 160: if(step == 2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_step),w
	iorwf	(_step+1),w
	skipz
	goto	u931
	goto	u930
u931:
	goto	l1605
u930:
	line	162
	
l1603:	
;main.c: 161: {
;main.c: 162: Restart();
	fcall	_Restart
	line	163
;main.c: 163: break;
	goto	l1551
	line	164
	
l122:	
	line	166
	
l1605:	
;main.c: 164: }
;main.c: 166: step = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_step)
	movlw	high(02h)
	movwf	((_step))+1
	line	167
	
l1607:	
;main.c: 167: int_arr[ind] = cnt0;
	movf	(_cnt0),w
	movwf	((??_main+0)+0)
	movf	(_cnt0+1),w
	movwf	((??_main+0)+0+1)
	clrf	((??_main+0)+0+2)
	clrf	((??_main+0)+0+3)
	movf	(_ind),w
	movwf	(??_main+4)+0
	movlw	(02h)-1
u945:
	clrc
	rlf	(??_main+4)+0,f
	addlw	-1
	skipz
	goto	u945
	clrc
	rlf	(??_main+4)+0,w
	addlw	_int_arr&0ffh
	movwf	fsr0
	movf	0+(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	1+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	2+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	3+(??_main+0)+0,w
	movwf	indf
	line	168
	
l1609:	
;main.c: 168: Set_Coord_LCD(1, 0);
	clrf	(Set_Coord_LCD@j)
	movlw	(01h)
	fcall	_Set_Coord_LCD
	line	170
;main.c: 170: while(ind >= 0)
	goto	l1619
	
l124:	
	line	172
	
l1611:	
;main.c: 171: {
;main.c: 172: int_res += int_arr[ind--] * power(16, deg++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_deg+1),w
	clrf	(power@n+1)
	addwf	(power@n+1)
	movf	(_deg),w
	clrf	(power@n)
	addwf	(power@n)

	movlw	0
	movwf	(power@x+3)
	movlw	0
	movwf	(power@x+2)
	movlw	0
	movwf	(power@x+1)
	movlw	010h
	movwf	(power@x)

	fcall	_power
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_power)),w
	movwf	(_main$616+3)
	movf	(2+(?_power)),w
	movwf	(_main$616+2)
	movf	(1+(?_power)),w
	movwf	(_main$616+1)
	movf	(0+(?_power)),w
	movwf	(_main$616)

	
l1613:	
;main.c: 171: {
;main.c: 172: int_res += int_arr[ind--] * power(16, deg++);
	movf	(_main$616+3),w
	movwf	(___lmul@multiplier+3)
	movf	(_main$616+2),w
	movwf	(___lmul@multiplier+2)
	movf	(_main$616+1),w
	movwf	(___lmul@multiplier+1)
	movf	(_main$616),w
	movwf	(___lmul@multiplier)

	movf	(_ind),w
	movwf	(??_main+0)+0
	movlw	(02h)-1
u955:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u955
	clrc
	rlf	(??_main+0)+0,w
	addlw	_int_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(___lmul@multiplicand)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lmul@multiplicand+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lmul@multiplicand+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lmul@multiplicand+3)
	fcall	___lmul
	movf	(0+(?___lmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_int_res),f
	movf	(1+(?___lmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u961
	addwf	(_int_res+1),f
u961:
	movf	(2+(?___lmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u962
	addwf	(_int_res+2),f
u962:
	movf	(3+(?___lmul)),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u963
	addwf	(_int_res+3),f
u963:

	
l1615:	
	movlw	low(01h)
	addwf	(_deg),f
	skipnc
	incf	(_deg+1),f
	movlw	high(01h)
	addwf	(_deg+1),f
	
l1617:	
	movlw	low(-1)
	addwf	(_ind),f
	skipnc
	incf	(_ind+1),f
	movlw	high(-1)
	addwf	(_ind+1),f
	goto	l1619
	line	173
	
l123:	
	line	170
	
l1619:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_ind+1),7
	goto	u971
	goto	u970
u971:
	goto	l1611
u970:
	goto	l1627
	
l125:	
	line	175
;main.c: 173: }
;main.c: 175: while (int_res > 8)
	goto	l1627
	
l127:	
	line	177
	
l1621:	
;main.c: 176: {
;main.c: 177: int_arr[ind2] = int_res % 8;
	movlw	07h
	andwf	(_int_res),w
	movwf	(??_main+0)+0
	movlw	0
	andwf	(_int_res+1),w
	movwf	((??_main+0)+0+1)
	movlw	0
	andwf	(_int_res+2),w
	movwf	((??_main+0)+0+2)
	movlw	0
	andwf	(_int_res+3),w
	movwf	((??_main+0)+0+3)
	movf	(_ind2),w
	movwf	(??_main+4)+0
	movlw	(02h)-1
u985:
	clrc
	rlf	(??_main+4)+0,f
	addlw	-1
	skipz
	goto	u985
	clrc
	rlf	(??_main+4)+0,w
	addlw	_int_arr&0ffh
	movwf	fsr0
	movf	0+(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	1+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	2+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	3+(??_main+0)+0,w
	movwf	indf
	line	178
	
l1623:	
;main.c: 178: int_res /= 8;
	movlw	03h
u995:
	clrc
	rrf	(_int_res+3),f
	rrf	(_int_res+2),f
	rrf	(_int_res+1),f
	rrf	(_int_res),f
	addlw	-1
	skipz
	goto	u995

	line	179
	
l1625:	
;main.c: 179: ind2++;
	movlw	low(01h)
	addwf	(_ind2),f
	skipnc
	incf	(_ind2+1),f
	movlw	high(01h)
	addwf	(_ind2+1),f
	goto	l1627
	line	180
	
l126:	
	line	175
	
l1627:	
	movlw	0
	subwf	(_int_res+3),w
	skipz
	goto	u1005
	movlw	0
	subwf	(_int_res+2),w
	skipz
	goto	u1005
	movlw	0
	subwf	(_int_res+1),w
	skipz
	goto	u1005
	movlw	09h
	subwf	(_int_res),w
u1005:
	skipnc
	goto	u1001
	goto	u1000
u1001:
	goto	l1621
u1000:
	goto	l1629
	
l128:	
	line	181
	
l1629:	
;main.c: 180: }
;main.c: 181: int_arr[ind2] = int_res;
	movf	(_ind2),w
	movwf	(??_main+0)+0
	movlw	(02h)-1
u1015:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u1015
	clrc
	rlf	(??_main+0)+0,w
	addlw	_int_arr&0ffh
	movwf	fsr0
	movf	(_int_res),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(_int_res+1),w
	movwf	indf
	incf	fsr0,f
	movf	(_int_res+2),w
	movwf	indf
	incf	fsr0,f
	movf	(_int_res+3),w
	movwf	indf
	line	183
	
l1631:	
;main.c: 183: ind = 0;
	clrf	(_ind)
	clrf	(_ind+1)
	line	184
;main.c: 184: while(ind2 >= 0)
	goto	l1639
	
l130:	
	line	186
	
l1633:	
;main.c: 185: {
;main.c: 186: str_line1[ind++] = int_arr[ind2--] + '0';
	movf	(_ind2),w
	movwf	(??_main+0)+0
	movlw	(02h)-1
u1025:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u1025
	clrc
	rlf	(??_main+0)+0,w
	addlw	_int_arr&0ffh
	movwf	fsr0
	movf	indf,w
	addlw	030h
	movwf	(??_main+1)+0
	movf	(_ind),w
	addlw	_str_line1&0ffh
	movwf	fsr0
	movf	(??_main+1)+0,w
	movwf	indf
	
l1635:	
	movlw	low(-1)
	addwf	(_ind2),f
	skipnc
	incf	(_ind2+1),f
	movlw	high(-1)
	addwf	(_ind2+1),f
	
l1637:	
	movlw	low(01h)
	addwf	(_ind),f
	skipnc
	incf	(_ind+1),f
	movlw	high(01h)
	addwf	(_ind+1),f
	goto	l1639
	line	187
	
l129:	
	line	184
	
l1639:	
	btfss	(_ind2+1),7
	goto	u1031
	goto	u1030
u1031:
	goto	l1633
u1030:
	goto	l1641
	
l131:	
	line	189
	
l1641:	
;main.c: 187: }
;main.c: 189: Show_String_LCD(str_line1);
	movlw	(_str_line1&0ffh)
	movwf	(Show_String_LCD@mySTRING)
	movlw	(0x0)
	movwf	(Show_String_LCD@mySTRING+1)
	fcall	_Show_String_LCD
	line	190
;main.c: 190: break;
	goto	l1551
	line	192
;main.c: 192: case 8:
	
l132:	
	line	193
	
l1643:	
;main.c: 193: if(step == 2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_step),w
	iorwf	(_step+1),w
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l1673
u1040:
	line	195
	
l1645:	
;main.c: 194: {
;main.c: 195: Init_WRITE_I2C(0);
	movlw	low(0)
	movwf	(Init_WRITE_I2C@Adr_begin)
	movlw	high(0)
	movwf	((Init_WRITE_I2C@Adr_begin))+1
	fcall	_Init_WRITE_I2C
	line	197
	
l1647:	
;main.c: 197: for (int i = 0; i < 16; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l1649:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1055
	movlw	low(010h)
	subwf	(main@i),w
u1055:

	skipc
	goto	u1051
	goto	u1050
u1051:
	goto	l1653
u1050:
	goto	l1659
	
l1651:	
	goto	l1659
	line	198
	
l134:	
	line	199
	
l1653:	
;main.c: 198: {
;main.c: 199: OUT_BYTE_PAGE_I2C(str_line0[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	_str_line0&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_OUT_BYTE_PAGE_I2C
	line	197
	
l1655:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1657:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1065
	movlw	low(010h)
	subwf	(main@i),w
u1065:

	skipc
	goto	u1061
	goto	u1060
u1061:
	goto	l1653
u1060:
	goto	l1659
	
l135:	
	line	202
	
l1659:	
;main.c: 200: }
;main.c: 202: for (int i = 0; i < 16; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i_166)
	clrf	(main@i_166+1)
	
l1661:	
	movf	(main@i_166+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1075
	movlw	low(010h)
	subwf	(main@i_166),w
u1075:

	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l1665
u1070:
	goto	l1671
	
l1663:	
	goto	l1671
	line	203
	
l136:	
	line	204
	
l1665:	
;main.c: 203: {
;main.c: 204: OUT_BYTE_PAGE_I2C(str_line1[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_166),w
	addlw	_str_line1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_OUT_BYTE_PAGE_I2C
	line	202
	
l1667:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i_166),f
	skipnc
	incf	(main@i_166+1),f
	movlw	high(01h)
	addwf	(main@i_166+1),f
	
l1669:	
	movf	(main@i_166+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1085
	movlw	low(010h)
	subwf	(main@i_166),w
u1085:

	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l1665
u1080:
	goto	l1671
	
l137:	
	line	207
	
l1671:	
;main.c: 205: }
;main.c: 207: STOP_I2C();
	fcall	_STOP_I2C
	line	208
;main.c: 208: }
	goto	l1551
	line	209
	
l133:	
	line	211
	
l1673:	
;main.c: 209: else
;main.c: 210: {
;main.c: 211: step = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_step)
	movlw	high(02h)
	movwf	((_step))+1
	line	213
	
l1675:	
;main.c: 213: Init_READ_I2C(0);
	movlw	low(0)
	movwf	(Init_READ_I2C@Adr_begin)
	movlw	high(0)
	movwf	((Init_READ_I2C@Adr_begin))+1
	fcall	_Init_READ_I2C
	line	215
	
l1677:	
;main.c: 215: for (int i = 0; i < 16; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i_167)
	clrf	(main@i_167+1)
	
l1679:	
	movf	(main@i_167+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1095
	movlw	low(010h)
	subwf	(main@i_167),w
u1095:

	skipc
	goto	u1091
	goto	u1090
u1091:
	goto	l1683
u1090:
	goto	l1689
	
l1681:	
	goto	l1689
	line	216
	
l139:	
	line	217
	
l1683:	
;main.c: 216: {
;main.c: 217: str_line0[i] = IN_BYTE_ACK_I2C();
	fcall	_IN_BYTE_ACK_I2C
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(main@i_167),w
	addlw	_str_line0&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	215
	
l1685:	
	movlw	low(01h)
	addwf	(main@i_167),f
	skipnc
	incf	(main@i_167+1),f
	movlw	high(01h)
	addwf	(main@i_167+1),f
	
l1687:	
	movf	(main@i_167+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1105
	movlw	low(010h)
	subwf	(main@i_167),w
u1105:

	skipc
	goto	u1101
	goto	u1100
u1101:
	goto	l1683
u1100:
	goto	l1689
	
l140:	
	line	220
	
l1689:	
;main.c: 218: }
;main.c: 220: for (int i = 0; i < 16; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i_168)
	clrf	(main@i_168+1)
	
l1691:	
	movf	(main@i_168+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1115
	movlw	low(010h)
	subwf	(main@i_168),w
u1115:

	skipc
	goto	u1111
	goto	u1110
u1111:
	goto	l1695
u1110:
	goto	l1701
	
l1693:	
	goto	l1701
	line	221
	
l141:	
	line	222
	
l1695:	
;main.c: 221: {
;main.c: 222: str_line1[i] = IN_BYTE_ACK_I2C();
	fcall	_IN_BYTE_ACK_I2C
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(main@i_168),w
	addlw	_str_line1&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	220
	
l1697:	
	movlw	low(01h)
	addwf	(main@i_168),f
	skipnc
	incf	(main@i_168+1),f
	movlw	high(01h)
	addwf	(main@i_168+1),f
	
l1699:	
	movf	(main@i_168+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1125
	movlw	low(010h)
	subwf	(main@i_168),w
u1125:

	skipc
	goto	u1121
	goto	u1120
u1121:
	goto	l1695
u1120:
	goto	l1701
	
l142:	
	line	225
	
l1701:	
;main.c: 223: }
;main.c: 225: IN_BYTE_NACK_STOP_I2C();
	fcall	_IN_BYTE_NACK_STOP_I2C
	line	226
	
l1703:	
;main.c: 226: Clr_LCD(0);
	movlw	(0)
	fcall	_Clr_LCD
	line	227
	
l1705:	
;main.c: 227: Show_String_LCD(str_line0);
	movlw	(_str_line0&0ffh)
	movwf	(Show_String_LCD@mySTRING)
	movlw	(0x0)
	movwf	(Show_String_LCD@mySTRING+1)
	fcall	_Show_String_LCD
	line	228
	
l1707:	
;main.c: 228: Clr_LCD(1);
	movlw	(01h)
	fcall	_Clr_LCD
	line	229
	
l1709:	
;main.c: 229: Set_Coord_LCD(1, 0);
	clrf	(Set_Coord_LCD@j)
	movlw	(01h)
	fcall	_Set_Coord_LCD
	line	230
;main.c: 230: Show_String_LCD(str_line1);
	movlw	(_str_line1&0ffh)
	movwf	(Show_String_LCD@mySTRING)
	movlw	(0x0)
	movwf	(Show_String_LCD@mySTRING+1)
	fcall	_Show_String_LCD
	goto	l1551
	line	231
	
l138:	
	line	232
;main.c: 231: }
;main.c: 232: break;
	goto	l1551
	line	234
;main.c: 234: default:
	
l143:	
	line	235
;main.c: 235: break;
	goto	l1551
	line	236
	
l1711:	
;main.c: 236: };
	goto	l1551
	line	102
	
l109:	
	
l1713:	
	fcall	_Check_buttons
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_main+0)+0,w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1739
	goto	l1551
	opt asmopt_on
	
l1739:	
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 8
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           35    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_main+0)+0,w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l1561
	xorlw	2^1	; case 2
	skipnz
	goto	l1581
	xorlw	4^2	; case 4
	skipnz
	goto	l1601
	xorlw	8^4	; case 8
	skipnz
	goto	l1643
	goto	l1551
	opt asmopt_on

	line	236
	
l117:	
	goto	l1551
	line	237
	
l144:	
	line	92
	goto	l1551
	
l145:	
	line	239
;main.c: 237: }
;main.c: 238: return;
	
l146:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_power

;; *************** function _power *****************
;; Defined at:
;;		line 241 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  x               4    0[BANK0 ] unsigned long 
;;  n               2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  a               4    6[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	241
global __ptext1
__ptext1:	;psect for function _power
psect	text1
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	241
	global	__size_of_power
	__size_of_power	equ	__end_of_power-_power
	
_power:	
;incstack = 0
	opt	stack 6
; Regs used in _power: [wreg+status,2+status,0+pclath+cstack]
	line	243
	
l1501:	
;main.c: 243: unsigned long int a = 1;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(power@a+3)
	movlw	0
	movwf	(power@a+2)
	movlw	0
	movwf	(power@a+1)
	movlw	01h
	movwf	(power@a)

	line	244
;main.c: 244: while(n)
	goto	l1511
	
l150:	
	line	246
;main.c: 245: {
;main.c: 246: if(n % 2)
	btfss	(power@n),(0)&7
	goto	u821
	goto	u820
u821:
	goto	l1507
u820:
	line	248
	
l1503:	
;main.c: 247: {
;main.c: 248: a *= x;
	movf	(power@x+3),w
	movwf	(___lmul@multiplier+3)
	movf	(power@x+2),w
	movwf	(___lmul@multiplier+2)
	movf	(power@x+1),w
	movwf	(___lmul@multiplier+1)
	movf	(power@x),w
	movwf	(___lmul@multiplier)

	movf	(power@a+3),w
	movwf	(___lmul@multiplicand+3)
	movf	(power@a+2),w
	movwf	(___lmul@multiplicand+2)
	movf	(power@a+1),w
	movwf	(___lmul@multiplicand+1)
	movf	(power@a),w
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	movf	(3+(?___lmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(power@a+3)
	movf	(2+(?___lmul)),w
	movwf	(power@a+2)
	movf	(1+(?___lmul)),w
	movwf	(power@a+1)
	movf	(0+(?___lmul)),w
	movwf	(power@a)

	line	249
	
l1505:	
;main.c: 249: n--;
	movlw	low(01h)
	subwf	(power@n),f
	movlw	high(01h)
	skipc
	decf	(power@n+1),f
	subwf	(power@n+1),f
	line	250
;main.c: 250: }
	goto	l1511
	line	251
	
l151:	
	line	253
	
l1507:	
;main.c: 251: else
;main.c: 252: {
;main.c: 253: x *= x;
	movf	(power@x+3),w
	movwf	(___lmul@multiplier+3)
	movf	(power@x+2),w
	movwf	(___lmul@multiplier+2)
	movf	(power@x+1),w
	movwf	(___lmul@multiplier+1)
	movf	(power@x),w
	movwf	(___lmul@multiplier)

	movf	(power@x+3),w
	movwf	(___lmul@multiplicand+3)
	movf	(power@x+2),w
	movwf	(___lmul@multiplicand+2)
	movf	(power@x+1),w
	movwf	(___lmul@multiplicand+1)
	movf	(power@x),w
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	movf	(3+(?___lmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(power@x+3)
	movf	(2+(?___lmul)),w
	movwf	(power@x+2)
	movf	(1+(?___lmul)),w
	movwf	(power@x+1)
	movf	(0+(?___lmul)),w
	movwf	(power@x)

	line	254
	
l1509:	
;main.c: 254: n /= 2;
	movlw	01h
	
u835:
	clrc
	rrf	(power@n+1),f
	rrf	(power@n),f
	addlw	-1
	skipz
	goto	u835
	goto	l1511
	line	255
	
l152:	
	goto	l1511
	line	256
	
l149:	
	line	244
	
l1511:	
	movf	((power@n+1)),w
	iorwf	((power@n)),w
	skipz
	goto	u841
	goto	u840
u841:
	goto	l150
u840:
	goto	l1513
	
l153:	
	line	257
	
l1513:	
;main.c: 255: }
;main.c: 256: }
;main.c: 257: return a;
	movf	(power@a+3),w
	movwf	(?_power+3)
	movf	(power@a+2),w
	movwf	(?_power+2)
	movf	(power@a+1),w
	movwf	(?_power+1)
	movf	(power@a),w
	movwf	(?_power)

	goto	l154
	
l1515:	
	line	258
	
l154:	
	return
	opt stack 0
GLOBAL	__end_of_power
	__end_of_power:
	signat	_power,8316
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 9 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_power
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lmul.c"
	line	9
global __ptext2
__ptext2:	;psect for function ___lmul
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lmul.c"
	line	9
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	193
	
l1429:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	l1431
	line	194
	
l646:	
	line	195
	
l1431:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u741
	goto	u740
u741:
	goto	l1435
u740:
	line	196
	
l1433:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u751
	addwf	(___lmul@product+1),f
u751:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u752
	addwf	(___lmul@product+2),f
u752:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u753
	addwf	(___lmul@product+3),f
u753:

	goto	l1435
	
l647:	
	line	197
	
l1435:	
	movlw	01h
	movwf	(??___lmul+0)+0
u765:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u765
	line	198
	
l1437:	
	movlw	01h
u775:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u775

	line	199
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u781
	goto	u780
u781:
	goto	l1431
u780:
	goto	l1439
	
l648:	
	line	202
	
l1439:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	l649
	
l1441:	
	line	203
	
l649:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_init_I2C

;; *************** function _init_I2C *****************
;; Defined at:
;;		line 393 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	393
global __ptext3
__ptext3:	;psect for function _init_I2C
psect	text3
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	393
	global	__size_of_init_I2C
	__size_of_init_I2C	equ	__end_of_init_I2C-_init_I2C
	
_init_I2C:	
;incstack = 0
	opt	stack 7
; Regs used in _init_I2C: []
	line	395
	
l1467:	
;main.c: 395: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	396
;main.c: 396: TRISC3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7	;volatile
	line	397
;main.c: 397: TRISC4=0;
	bcf	(1084/8)^080h,(1084)&7	;volatile
	line	398
	
l203:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C
	__end_of_init_I2C:
	signat	_init_I2C,88
	global	_Restart

;; *************** function _Restart *****************
;; Defined at:
;;		line 260 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   12[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Clr_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	260
global __ptext4
__ptext4:	;psect for function _Restart
psect	text4
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	260
	global	__size_of_Restart
	__size_of_Restart	equ	__end_of_Restart-_Restart
	
_Restart:	
;incstack = 0
	opt	stack 2
; Regs used in _Restart: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	262
	
l1469:	
;main.c: 262: Clr_LCD(0);
	movlw	(0)
	fcall	_Clr_LCD
	line	263
;main.c: 263: Clr_LCD(1);
	movlw	(01h)
	fcall	_Clr_LCD
	line	265
	
l1471:	
;main.c: 265: step = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_step)
	clrf	(_step+1)
	line	266
	
l1473:	
;main.c: 266: cnt0 = 0;
	clrf	(_cnt0)
	clrf	(_cnt0+1)
	line	267
	
l1475:	
;main.c: 267: cntA = 0;
	clrf	(_cntA)
	clrf	(_cntA+1)
	line	268
	
l1477:	
;main.c: 268: str = 0;
	clrf	(_str)
	clrf	(_str+1)
	line	269
	
l1479:	
;main.c: 269: stlb = 0;
	clrf	(_stlb)
	clrf	(_stlb+1)
	line	270
	
l1481:	
;main.c: 270: int_res = 0;
	movlw	0
	movwf	(_int_res+3)
	movlw	0
	movwf	(_int_res+2)
	movlw	0
	movwf	(_int_res+1)
	movlw	0
	movwf	(_int_res)

	line	271
	
l1483:	
;main.c: 271: deg = 0;
	clrf	(_deg)
	clrf	(_deg+1)
	line	272
	
l1485:	
;main.c: 272: ind = 0;
	clrf	(_ind)
	clrf	(_ind+1)
	line	273
	
l1487:	
;main.c: 273: ind2 = 0;
	clrf	(_ind2)
	clrf	(_ind2+1)
	line	275
	
l1489:	
;main.c: 275: for (int i = 0; i < 16; i++)
	clrf	(Restart@i)
	clrf	(Restart@i+1)
	
l1491:	
	movf	(Restart@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u795
	movlw	low(010h)
	subwf	(Restart@i),w
u795:

	skipc
	goto	u791
	goto	u790
u791:
	goto	l1495
u790:
	goto	l159
	
l1493:	
	goto	l159
	line	276
	
l157:	
	line	277
	
l1495:	
;main.c: 276: {
;main.c: 277: int_arr[i] = 0;
	movf	(Restart@i),w
	movwf	(??_Restart+0)+0
	movlw	02h
u805:
	clrc
	rlf	(??_Restart+0)+0,f
	addlw	-1
	skipz
	goto	u805
	movlw	(_int_arr)&0ffh
	addwf	0+(??_Restart+0)+0,w
	movwf	(??_Restart+1)+0
	movf	0+(??_Restart+1)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	clrf	indf
	incf	fsr0,f
	clrf	indf
	incf	fsr0,f
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	278
;main.c: 278: str_line0[i] = '\0';
	movf	(Restart@i),w
	addlw	_str_line0&0ffh
	movwf	fsr0
	clrf	indf
	line	279
;main.c: 279: str_line1[i] = '\0';
	movf	(Restart@i),w
	addlw	_str_line1&0ffh
	movwf	fsr0
	clrf	indf
	line	275
	
l1497:	
	movlw	low(01h)
	addwf	(Restart@i),f
	skipnc
	incf	(Restart@i+1),f
	movlw	high(01h)
	addwf	(Restart@i+1),f
	
l1499:	
	movf	(Restart@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u815
	movlw	low(010h)
	subwf	(Restart@i),w
u815:

	skipc
	goto	u811
	goto	u810
u811:
	goto	l1495
u810:
	goto	l159
	
l158:	
	line	281
	
l159:	
	return
	opt stack 0
GLOBAL	__end_of_Restart
	__end_of_Restart:
	signat	_Restart,88
	global	_Clr_LCD

;; *************** function _Clr_LCD *****************
;; Defined at:
;;		line 380 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  str_            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  str_            1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Set_Coord_LCD
;;		_Show_String_LCD
;; This function is called by:
;;		_main
;;		_Restart
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	380
global __ptext5
__ptext5:	;psect for function _Clr_LCD
psect	text5
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	380
	global	__size_of_Clr_LCD
	__size_of_Clr_LCD	equ	__end_of_Clr_LCD-_Clr_LCD
	
_Clr_LCD:	
;incstack = 0
	opt	stack 2
; Regs used in _Clr_LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;Clr_LCD@str_ stored from wreg
	movwf	(Clr_LCD@str_)
	line	382
	
l1375:	
;main.c: 382: Set_Coord_LCD(str_,0);
	clrf	(Set_Coord_LCD@j)
	movf	(Clr_LCD@str_),w
	fcall	_Set_Coord_LCD
	line	383
	
l1377:	
;main.c: 383: Show_String_LCD(str_BLANK);
	movlw	low((_str_BLANK-__stringbase))
	movwf	(Show_String_LCD@mySTRING)
	movlw	80h
	movwf	(Show_String_LCD@mySTRING+1)
	fcall	_Show_String_LCD
	line	384
	
l1379:	
;main.c: 384: Set_Coord_LCD(0,0);
	clrf	(Set_Coord_LCD@j)
	movlw	(0)
	fcall	_Set_Coord_LCD
	line	385
	
l200:	
	return
	opt stack 0
GLOBAL	__end_of_Clr_LCD
	__end_of_Clr_LCD:
	signat	_Clr_LCD,4216
	global	_Show_String_LCD

;; *************** function _Show_String_LCD *****************
;; Defined at:
;;		line 372 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  mySTRING        2    7[COMMON] PTR const unsigned char 
;;		 -> str_BLANK(17), str_line1(16), str_line0(16), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Send_Byte_LCD
;; This function is called by:
;;		_main
;;		_Clr_LCD
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	372
global __ptext6
__ptext6:	;psect for function _Show_String_LCD
psect	text6
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	372
	global	__size_of_Show_String_LCD
	__size_of_Show_String_LCD	equ	__end_of_Show_String_LCD-_Show_String_LCD
	
_Show_String_LCD:	
;incstack = 0
	opt	stack 4
; Regs used in _Show_String_LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	374
	
l1343:	
;main.c: 374: while(*mySTRING)
	goto	l1349
	
l195:	
	line	376
	
l1345:	
;main.c: 375: {
;main.c: 376: Send_Byte_LCD(*(mySTRING++));
	movf	(Show_String_LCD@mySTRING+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(Show_String_LCD@mySTRING),w
	movwf	fsr0
	fcall	stringtab
	fcall	_Send_Byte_LCD
	
l1347:	
	movlw	01h
	addwf	(Show_String_LCD@mySTRING),f
	skipnc
	incf	(Show_String_LCD@mySTRING+1),f
	goto	l1349
	line	377
	
l194:	
	line	374
	
l1349:	
	movf	(Show_String_LCD@mySTRING+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(Show_String_LCD@mySTRING),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u651
	goto	u650
u651:
	goto	l1345
u650:
	goto	l197
	
l196:	
	line	378
	
l197:	
	return
	opt stack 0
GLOBAL	__end_of_Show_String_LCD
	__end_of_Show_String_LCD:
	signat	_Show_String_LCD,4216
	global	_Send_Byte_LCD

;; *************** function _Send_Byte_LCD *****************
;; Defined at:
;;		line 347 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  tmp             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tmp             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Check_buttons
;;		_Delay
;;		_Pulse
;; This function is called by:
;;		_Show_String_LCD
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	347
global __ptext7
__ptext7:	;psect for function _Send_Byte_LCD
psect	text7
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	347
	global	__size_of_Send_Byte_LCD
	__size_of_Send_Byte_LCD	equ	__end_of_Send_Byte_LCD-_Send_Byte_LCD
	
_Send_Byte_LCD:	
;incstack = 0
	opt	stack 4
; Regs used in _Send_Byte_LCD: [wreg+status,2+status,0+pclath+cstack]
;Send_Byte_LCD@tmp stored from wreg
	movwf	(Send_Byte_LCD@tmp)
	line	349
	
l1313:	
;main.c: 349: while (Check_buttons())
	goto	l183
	
l184:	
	line	351
	
l1315:	
;main.c: 350: {
;main.c: 351: Delay(500*20);
	movlw	low(02710h)
	movwf	(Delay@tmp)
	movlw	high(02710h)
	movwf	((Delay@tmp))+1
	fcall	_Delay
	line	352
	
l183:	
	line	349
	fcall	_Check_buttons
	iorlw	0
	skipz
	goto	u621
	goto	u620
u621:
	goto	l1315
u620:
	goto	l1317
	
l185:	
	line	353
	
l1317:	
;main.c: 352: }
;main.c: 353: PORTB = (PORTB & 0x0F) + (tmp & 0xF0);
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),w	;volatile
	movwf	(??_Send_Byte_LCD+0)+0
	movf	(Send_Byte_LCD@tmp),w
	andlw	0F0h
	addwf	0+(??_Send_Byte_LCD+0)+0,w
	movwf	(6)	;volatile
	line	354
	
l1319:	
;main.c: 354: Pulse(2*20);
	movlw	low(028h)
	movwf	(Pulse@x)
	movlw	high(028h)
	movwf	((Pulse@x))+1
	fcall	_Pulse
	line	355
	
l1321:	
;main.c: 355: PORTB = (PORTB & 0x0F) + (tmp << 4);
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),w	;volatile
	movwf	(??_Send_Byte_LCD+0)+0
	movf	(Send_Byte_LCD@tmp),w
	movwf	(??_Send_Byte_LCD+1)+0
	movlw	(04h)-1
u635:
	clrc
	rlf	(??_Send_Byte_LCD+1)+0,f
	addlw	-1
	skipz
	goto	u635
	clrc
	rlf	(??_Send_Byte_LCD+1)+0,w
	addwf	0+(??_Send_Byte_LCD+0)+0,w
	movwf	(6)	;volatile
	line	356
;main.c: 356: Pulse(2*20);
	movlw	low(028h)
	movwf	(Pulse@x)
	movlw	high(028h)
	movwf	((Pulse@x))+1
	fcall	_Pulse
	line	357
	
l186:	
	return
	opt stack 0
GLOBAL	__end_of_Send_Byte_LCD
	__end_of_Send_Byte_LCD:
	signat	_Send_Byte_LCD,4216
	global	_Set_Coord_LCD

;; *************** function _Set_Coord_LCD *****************
;; Defined at:
;;		line 359 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;;  j               1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Send_Command_LCD
;; This function is called by:
;;		_main
;;		_Clr_LCD
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	359
global __ptext8
__ptext8:	;psect for function _Set_Coord_LCD
psect	text8
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	359
	global	__size_of_Set_Coord_LCD
	__size_of_Set_Coord_LCD	equ	__end_of_Set_Coord_LCD-_Set_Coord_LCD
	
_Set_Coord_LCD:	
;incstack = 0
	opt	stack 4
; Regs used in _Set_Coord_LCD: [wreg+status,2+status,0+pclath+cstack]
;Set_Coord_LCD@i stored from wreg
	movwf	(Set_Coord_LCD@i)
	line	361
	
l1351:	
;main.c: 361: if(i==0)
	movf	(Set_Coord_LCD@i),f
	skipz
	goto	u661
	goto	u660
u661:
	goto	l1355
u660:
	line	363
	
l1353:	
;main.c: 362: {
;main.c: 363: Send_Command_LCD(0x80+j);
	movf	(Set_Coord_LCD@j),w
	addlw	080h
	fcall	_Send_Command_LCD
	line	364
;main.c: 364: }
	goto	l191
	line	365
	
l189:	
	line	367
	
l1355:	
;main.c: 365: else
;main.c: 366: {
;main.c: 367: Send_Command_LCD(0xC0+j);
	movf	(Set_Coord_LCD@j),w
	addlw	0C0h
	fcall	_Send_Command_LCD
	goto	l191
	line	368
	
l190:	
	goto	l191
	line	369
	
l1357:	
	line	370
;main.c: 368: }
;main.c: 369: return;
	
l191:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Coord_LCD
	__end_of_Set_Coord_LCD:
	signat	_Set_Coord_LCD,8312
	global	_OUT_BYTE_PAGE_I2C

;; *************** function _OUT_BYTE_PAGE_I2C *****************
;; Defined at:
;;		line 509 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  tmp             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tmp             1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Init_WRITE_I2C
;;		_OUT_BYTE_I2C
;;		_STOP_I2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	509
global __ptext9
__ptext9:	;psect for function _OUT_BYTE_PAGE_I2C
psect	text9
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	509
	global	__size_of_OUT_BYTE_PAGE_I2C
	__size_of_OUT_BYTE_PAGE_I2C	equ	__end_of_OUT_BYTE_PAGE_I2C-_OUT_BYTE_PAGE_I2C
	
_OUT_BYTE_PAGE_I2C:	
;incstack = 0
	opt	stack 2
; Regs used in _OUT_BYTE_PAGE_I2C: [wreg+status,2+status,0+pclath+cstack]
;OUT_BYTE_PAGE_I2C@tmp stored from wreg
	movwf	(OUT_BYTE_PAGE_I2C@tmp)
	line	511
	
l1517:	
;main.c: 511: OUT_BYTE_I2C(tmp);
	movf	(OUT_BYTE_PAGE_I2C@tmp),w
	fcall	_OUT_BYTE_I2C
	line	512
	
l1519:	
;main.c: 512: Adr_I2C++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_Adr_I2C),f
	skipnc
	incf	(_Adr_I2C+1),f
	movlw	high(01h)
	addwf	(_Adr_I2C+1),f
	line	513
	
l1521:	
;main.c: 513: if((0x40-1) & Adr_I2C)
	movlw	low(03Fh)
	andwf	(_Adr_I2C),w
	movwf	(??_OUT_BYTE_PAGE_I2C+0)+0
	movlw	high(03Fh)
	andwf	(_Adr_I2C+1),w
	movwf	1+(??_OUT_BYTE_PAGE_I2C+0)+0
	movf	1+(??_OUT_BYTE_PAGE_I2C+0)+0,w
	iorwf	0+(??_OUT_BYTE_PAGE_I2C+0)+0,w
	skipnz
	goto	u851
	goto	u850
u851:
	goto	l1525
u850:
	goto	l251
	line	515
	
l1523:	
;main.c: 514: {
;main.c: 515: return;
	goto	l251
	line	516
	
l250:	
	line	517
	
l1525:	
;main.c: 516: }
;main.c: 517: STOP_I2C();
	fcall	_STOP_I2C
	line	518
;main.c: 518: Init_WRITE_I2C(Adr_I2C);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Adr_I2C+1),w
	clrf	(Init_WRITE_I2C@Adr_begin+1)
	addwf	(Init_WRITE_I2C@Adr_begin+1)
	movf	(_Adr_I2C),w
	clrf	(Init_WRITE_I2C@Adr_begin)
	addwf	(Init_WRITE_I2C@Adr_begin)

	fcall	_Init_WRITE_I2C
	goto	l251
	line	519
	
l1527:	
	line	520
;main.c: 519: return;
	
l251:	
	return
	opt stack 0
GLOBAL	__end_of_OUT_BYTE_PAGE_I2C
	__end_of_OUT_BYTE_PAGE_I2C:
	signat	_OUT_BYTE_PAGE_I2C,4216
	global	_Init_READ_I2C

;; *************** function _Init_READ_I2C *****************
;; Defined at:
;;		line 426 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  Adr_begin       2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Init_WRITE_I2C
;;		_OUT_BYTE_I2C
;;		_START_I2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	426
global __ptext10
__ptext10:	;psect for function _Init_READ_I2C
psect	text10
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	426
	global	__size_of_Init_READ_I2C
	__size_of_Init_READ_I2C	equ	__end_of_Init_READ_I2C-_Init_READ_I2C
	
_Init_READ_I2C:	
;incstack = 0
	opt	stack 2
; Regs used in _Init_READ_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	428
	
l1529:	
;main.c: 428: Init_WRITE_I2C(Adr_begin);
	movf	(Init_READ_I2C@Adr_begin+1),w
	clrf	(Init_WRITE_I2C@Adr_begin+1)
	addwf	(Init_WRITE_I2C@Adr_begin+1)
	movf	(Init_READ_I2C@Adr_begin),w
	clrf	(Init_WRITE_I2C@Adr_begin)
	addwf	(Init_WRITE_I2C@Adr_begin)

	fcall	_Init_WRITE_I2C
	line	429
;main.c: 429: START_I2C ();
	fcall	_START_I2C
	line	430
	
l1531:	
;main.c: 430: Slave_ADR_RW_I2C|=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Slave_ADR_RW_I2C)+(0/8),(0)&7
	line	431
;main.c: 431: OUT_BYTE_I2C(Slave_ADR_RW_I2C);
	movf	(_Slave_ADR_RW_I2C),w
	fcall	_OUT_BYTE_I2C
	line	432
	
l213:	
	return
	opt stack 0
GLOBAL	__end_of_Init_READ_I2C
	__end_of_Init_READ_I2C:
	signat	_Init_READ_I2C,4216
	global	_Init_WRITE_I2C

;; *************** function _Init_WRITE_I2C *****************
;; Defined at:
;;		line 400 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  Adr_begin       2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_OUT_BYTE_I2C
;;		_START_I2C
;;		_STOP_I2C
;; This function is called by:
;;		_main
;;		_Init_READ_I2C
;;		_OUT_BYTE_PAGE_I2C
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	400
global __ptext11
__ptext11:	;psect for function _Init_WRITE_I2C
psect	text11
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	400
	global	__size_of_Init_WRITE_I2C
	__size_of_Init_WRITE_I2C	equ	__end_of_Init_WRITE_I2C-_Init_WRITE_I2C
	
_Init_WRITE_I2C:	
;incstack = 0
	opt	stack 2
; Regs used in _Init_WRITE_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	402
	
l1381:	
;main.c: 402: Adr_I2C = Adr_begin;
	movf	(Init_WRITE_I2C@Adr_begin+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Adr_I2C+1)
	addwf	(_Adr_I2C+1)
	movf	(Init_WRITE_I2C@Adr_begin),w
	clrf	(_Adr_I2C)
	addwf	(_Adr_I2C)

	goto	l1383
	line	403
;main.c: 403: rep:
	
l206:	
	line	404
	
l1383:	
;main.c: 404: START_I2C();
	fcall	_START_I2C
	line	405
	
l1385:	
;main.c: 405: Slave_ADR_RW_I2C& = 0xFE;
	movlw	(0FEh)
	movwf	(??_Init_WRITE_I2C+0)+0
	movf	(??_Init_WRITE_I2C+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_Slave_ADR_RW_I2C),f
	line	406
;main.c: 406: OUT_BYTE_I2C(Slave_ADR_RW_I2C);
	movf	(_Slave_ADR_RW_I2C),w
	fcall	_OUT_BYTE_I2C
	line	407
	
l1387:	
;main.c: 407: if(Ch_ACK)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Ch_ACK),w
	skipz
	goto	u690
	goto	l1391
u690:
	line	409
	
l1389:	
;main.c: 408: {
;main.c: 409: STOP_I2C();
	fcall	_STOP_I2C
	line	410
;main.c: 410: goto rep;
	goto	l1383
	line	411
	
l207:	
	line	412
	
l1391:	
;main.c: 411: }
;main.c: 412: OUT_BYTE_I2C(Adr_begin>>8);
	movf	(Init_WRITE_I2C@Adr_begin+1),w
	fcall	_OUT_BYTE_I2C
	line	413
	
l1393:	
;main.c: 413: if(Ch_ACK)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Ch_ACK),w
	skipz
	goto	u700
	goto	l1397
u700:
	line	415
	
l1395:	
;main.c: 414: {
;main.c: 415: STOP_I2C();
	fcall	_STOP_I2C
	line	416
;main.c: 416: goto rep;
	goto	l1383
	line	417
	
l208:	
	line	418
	
l1397:	
;main.c: 417: }
;main.c: 418: OUT_BYTE_I2C(Adr_begin);
	movf	(Init_WRITE_I2C@Adr_begin),w
	fcall	_OUT_BYTE_I2C
	line	419
	
l1399:	
;main.c: 419: if(Ch_ACK)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Ch_ACK),w
	skipz
	goto	u710
	goto	l210
u710:
	line	421
	
l1401:	
;main.c: 420: {
;main.c: 421: STOP_I2C();
	fcall	_STOP_I2C
	line	422
;main.c: 422: goto rep;
	goto	l1383
	line	423
	
l209:	
	line	424
	
l210:	
	return
	opt stack 0
GLOBAL	__end_of_Init_WRITE_I2C
	__end_of_Init_WRITE_I2C:
	signat	_Init_WRITE_I2C,4216
	global	_START_I2C

;; *************** function _START_I2C *****************
;; Defined at:
;;		line 434 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_HIGH_SCL_I2C
;;		_HIGH_SDA_I2C
;;		_LOW_SCL_I2C
;;		_LOW_SDA_I2C
;; This function is called by:
;;		_Init_WRITE_I2C
;;		_Init_READ_I2C
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	434
global __ptext12
__ptext12:	;psect for function _START_I2C
psect	text12
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	434
	global	__size_of_START_I2C
	__size_of_START_I2C	equ	__end_of_START_I2C-_START_I2C
	
_START_I2C:	
;incstack = 0
	opt	stack 3
; Regs used in _START_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	436
	
l1361:	
;main.c: 436: HIGH_SDA_I2C();
	fcall	_HIGH_SDA_I2C
	line	437
;main.c: 437: HIGH_SCL_I2C();
	fcall	_HIGH_SCL_I2C
	line	438
;main.c: 438: LOW_SDA_I2C();
	fcall	_LOW_SDA_I2C
	line	439
;main.c: 439: LOW_SCL_I2C();
	fcall	_LOW_SCL_I2C
	line	440
	
l216:	
	return
	opt stack 0
GLOBAL	__end_of_START_I2C
	__end_of_START_I2C:
	signat	_START_I2C,88
	global	_OUT_BYTE_I2C

;; *************** function _OUT_BYTE_I2C *****************
;; Defined at:
;;		line 522 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  t               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  t               1    4[COMMON] unsigned char 
;;  tmp             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CLOCK_PULSE_I2C
;;		_Check_ACK_I2C
;;		_HIGH_SDA_I2C
;;		_LOW_SDA_I2C
;; This function is called by:
;;		_Init_WRITE_I2C
;;		_Init_READ_I2C
;;		_OUT_BYTE_PAGE_I2C
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	522
global __ptext13
__ptext13:	;psect for function _OUT_BYTE_I2C
psect	text13
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	522
	global	__size_of_OUT_BYTE_I2C
	__size_of_OUT_BYTE_I2C	equ	__end_of_OUT_BYTE_I2C-_OUT_BYTE_I2C
	
_OUT_BYTE_I2C:	
;incstack = 0
	opt	stack 3
; Regs used in _OUT_BYTE_I2C: [wreg+status,2+status,0+pclath+cstack]
;OUT_BYTE_I2C@t stored from wreg
	movwf	(OUT_BYTE_I2C@t)
	line	525
	
l1363:	
;main.c: 524: byte tmp;
;main.c: 525: tmp=8;
	movlw	(08h)
	movwf	(??_OUT_BYTE_I2C+0)+0
	movf	(??_OUT_BYTE_I2C+0)+0,w
	movwf	(OUT_BYTE_I2C@tmp)
	line	526
;main.c: 526: while(tmp--)
	goto	l1371
	
l255:	
	line	528
;main.c: 527: {
;main.c: 528: if(t & 0x80)
	btfss	(OUT_BYTE_I2C@t),(7)&7
	goto	u671
	goto	u670
u671:
	goto	l1367
u670:
	line	530
	
l1365:	
;main.c: 529: {
;main.c: 530: HIGH_SDA_I2C();
	fcall	_HIGH_SDA_I2C
	line	531
;main.c: 531: }
	goto	l257
	line	532
	
l256:	
	line	534
	
l1367:	
;main.c: 532: else
;main.c: 533: {
;main.c: 534: LOW_SDA_I2C();
	fcall	_LOW_SDA_I2C
	line	535
	
l257:	
	line	536
;main.c: 535: }
;main.c: 536: CLOCK_PULSE_I2C();
	fcall	_CLOCK_PULSE_I2C
	line	537
	
l1369:	
;main.c: 537: t+=t;
	movf	(OUT_BYTE_I2C@t),w
	movwf	(??_OUT_BYTE_I2C+0)+0
	movf	(??_OUT_BYTE_I2C+0)+0,w
	addwf	(OUT_BYTE_I2C@t),f
	goto	l1371
	line	538
	
l254:	
	line	526
	
l1371:	
	movlw	low(01h)
	subwf	(OUT_BYTE_I2C@tmp),f
	movf	((OUT_BYTE_I2C@tmp)),w
	xorlw	0FFh
	skipz
	goto	u681
	goto	u680
u681:
	goto	l255
u680:
	goto	l1373
	
l258:	
	line	539
	
l1373:	
;main.c: 538: }
;main.c: 539: HIGH_SDA_I2C();
	fcall	_HIGH_SDA_I2C
	line	540
;main.c: 540: Check_ACK_I2C();
	fcall	_Check_ACK_I2C
	line	541
	
l259:	
	return
	opt stack 0
GLOBAL	__end_of_OUT_BYTE_I2C
	__end_of_OUT_BYTE_I2C:
	signat	_OUT_BYTE_I2C,4216
	global	_Check_ACK_I2C

;; *************** function _Check_ACK_I2C *****************
;; Defined at:
;;		line 558 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_HIGH_SCL_I2C
;;		_LOW_SCL_I2C
;; This function is called by:
;;		_OUT_BYTE_I2C
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	558
global __ptext14
__ptext14:	;psect for function _Check_ACK_I2C
psect	text14
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	558
	global	__size_of_Check_ACK_I2C
	__size_of_Check_ACK_I2C	equ	__end_of_Check_ACK_I2C-_Check_ACK_I2C
	
_Check_ACK_I2C:	
;incstack = 0
	opt	stack 3
; Regs used in _Check_ACK_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	560
	
l1333:	
;main.c: 560: HIGH_SCL_I2C();
	fcall	_HIGH_SCL_I2C
	line	561
	
l1335:	
;main.c: 561: if(((PORTC) & (1 <<(4))))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(7),(4)&7	;volatile
	goto	u641
	goto	u640
u641:
	goto	l1339
u640:
	line	563
	
l1337:	
;main.c: 562: {
;main.c: 563: Ch_ACK=1;
	clrf	(_Ch_ACK)
	incf	(_Ch_ACK),f
	line	564
;main.c: 564: }
	goto	l1341
	line	565
	
l268:	
	line	567
	
l1339:	
;main.c: 565: else
;main.c: 566: {
;main.c: 567: Ch_ACK=0;
	clrf	(_Ch_ACK)
	goto	l1341
	line	568
	
l269:	
	line	569
	
l1341:	
;main.c: 568: }
;main.c: 569: LOW_SCL_I2C();
	fcall	_LOW_SCL_I2C
	line	570
	
l270:	
	return
	opt stack 0
GLOBAL	__end_of_Check_ACK_I2C
	__end_of_Check_ACK_I2C:
	signat	_Check_ACK_I2C,88
	global	_Init_LCD

;; *************** function _Init_LCD *****************
;; Defined at:
;;		line 313 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Delay
;;		_Pulse
;;		_Send_Command_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	313
global __ptext15
__ptext15:	;psect for function _Init_LCD
psect	text15
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	313
	global	__size_of_Init_LCD
	__size_of_Init_LCD	equ	__end_of_Init_LCD-_Init_LCD
	
_Init_LCD:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	315
	
l1443:	
;main.c: 315: Delay(200*20);
	movlw	low(0FA0h)
	movwf	(Delay@tmp)
	movlw	high(0FA0h)
	movwf	((Delay@tmp))+1
	fcall	_Delay
	line	317
	
l1445:	
;main.c: 317: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	318
	
l1447:	
;main.c: 318: PORTB=0x30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	319
	
l1449:	
;main.c: 319: Pulse(20*20);
	movlw	low(0190h)
	movwf	(Pulse@x)
	movlw	high(0190h)
	movwf	((Pulse@x))+1
	fcall	_Pulse
	line	320
	
l1451:	
;main.c: 320: Pulse(20*20);
	movlw	low(0190h)
	movwf	(Pulse@x)
	movlw	high(0190h)
	movwf	((Pulse@x))+1
	fcall	_Pulse
	line	321
	
l1453:	
;main.c: 321: Pulse(20*20);
	movlw	low(0190h)
	movwf	(Pulse@x)
	movlw	high(0190h)
	movwf	((Pulse@x))+1
	fcall	_Pulse
	line	323
	
l1455:	
;main.c: 323: PORTB=0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	324
	
l1457:	
;main.c: 324: Pulse(20*20);
	movlw	low(0190h)
	movwf	(Pulse@x)
	movlw	high(0190h)
	movwf	((Pulse@x))+1
	fcall	_Pulse
	line	326
	
l1459:	
;main.c: 326: Send_Command_LCD (0x28);
	movlw	(028h)
	fcall	_Send_Command_LCD
	line	327
	
l1461:	
;main.c: 327: Send_Command_LCD (0x0F);
	movlw	(0Fh)
	fcall	_Send_Command_LCD
	line	328
	
l1463:	
;main.c: 328: Send_Command_LCD (0x06);
	movlw	(06h)
	fcall	_Send_Command_LCD
	line	329
	
l1465:	
;main.c: 329: Send_Command_LCD (0x02);
	movlw	(02h)
	fcall	_Send_Command_LCD
	line	330
	
l174:	
	return
	opt stack 0
GLOBAL	__end_of_Init_LCD
	__end_of_Init_LCD:
	signat	_Init_LCD,88
	global	_Send_Command_LCD

;; *************** function _Send_Command_LCD *****************
;; Defined at:
;;		line 332 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  tmp             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tmp             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Check_buttons
;;		_Delay
;;		_Pulse
;; This function is called by:
;;		_Init_LCD
;;		_Set_Coord_LCD
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	332
global __ptext16
__ptext16:	;psect for function _Send_Command_LCD
psect	text16
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	332
	global	__size_of_Send_Command_LCD
	__size_of_Send_Command_LCD	equ	__end_of_Send_Command_LCD-_Send_Command_LCD
	
_Send_Command_LCD:	
;incstack = 0
	opt	stack 4
; Regs used in _Send_Command_LCD: [wreg+status,2+status,0+pclath+cstack]
;Send_Command_LCD@tmp stored from wreg
	movwf	(Send_Command_LCD@tmp)
	line	334
	
l1301:	
;main.c: 334: while (Check_buttons())
	goto	l177
	
l178:	
	line	336
	
l1303:	
;main.c: 335: {
;main.c: 336: Delay(500*20);
	movlw	low(02710h)
	movwf	(Delay@tmp)
	movlw	high(02710h)
	movwf	((Delay@tmp))+1
	fcall	_Delay
	line	337
	
l177:	
	line	334
	fcall	_Check_buttons
	iorlw	0
	skipz
	goto	u601
	goto	u600
u601:
	goto	l1303
u600:
	
l179:	
	line	338
;main.c: 337: }
;main.c: 338: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	339
	
l1305:	
;main.c: 339: PORTB=(PORTB & 0x0F) + (tmp & 0xF0);
	movlw	(0Fh)
	andwf	(6),w	;volatile
	movwf	(??_Send_Command_LCD+0)+0
	movf	(Send_Command_LCD@tmp),w
	andlw	0F0h
	addwf	0+(??_Send_Command_LCD+0)+0,w
	movwf	(6)	;volatile
	line	340
	
l1307:	
;main.c: 340: Pulse(2 * 20);
	movlw	low(028h)
	movwf	(Pulse@x)
	movlw	high(028h)
	movwf	((Pulse@x))+1
	fcall	_Pulse
	line	341
	
l1309:	
;main.c: 341: PORTB=(PORTB & 0x0F) + (tmp << 4);
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),w	;volatile
	movwf	(??_Send_Command_LCD+0)+0
	movf	(Send_Command_LCD@tmp),w
	movwf	(??_Send_Command_LCD+1)+0
	movlw	(04h)-1
u615:
	clrc
	rlf	(??_Send_Command_LCD+1)+0,f
	addlw	-1
	skipz
	goto	u615
	clrc
	rlf	(??_Send_Command_LCD+1)+0,w
	addwf	0+(??_Send_Command_LCD+0)+0,w
	movwf	(6)	;volatile
	line	342
;main.c: 342: Pulse(2 * 20);
	movlw	low(028h)
	movwf	(Pulse@x)
	movlw	high(028h)
	movwf	((Pulse@x))+1
	fcall	_Pulse
	line	343
	
l1311:	
;main.c: 343: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	344
;main.c: 344: Delay(250 * 20);
	movlw	low(01388h)
	movwf	(Delay@tmp)
	movlw	high(01388h)
	movwf	((Delay@tmp))+1
	fcall	_Delay
	line	345
	
l180:	
	return
	opt stack 0
GLOBAL	__end_of_Send_Command_LCD
	__end_of_Send_Command_LCD:
	signat	_Send_Command_LCD,4216
	global	_Pulse

;; *************** function _Pulse *****************
;; Defined at:
;;		line 305 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  x               2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_Init_LCD
;;		_Send_Command_LCD
;;		_Send_Byte_LCD
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	305
global __ptext17
__ptext17:	;psect for function _Pulse
psect	text17
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	305
	global	__size_of_Pulse
	__size_of_Pulse	equ	__end_of_Pulse-_Pulse
	
_Pulse:	
;incstack = 0
	opt	stack 4
; Regs used in _Pulse: [wreg+status,2+status,0+pclath+cstack]
	line	307
	
l1287:	
;main.c: 307: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	308
	
l1289:	
;main.c: 308: Delay(x);
	movf	(Pulse@x+1),w
	clrf	(Delay@tmp+1)
	addwf	(Delay@tmp+1)
	movf	(Pulse@x),w
	clrf	(Delay@tmp)
	addwf	(Delay@tmp)

	fcall	_Delay
	line	309
	
l1291:	
;main.c: 309: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	310
;main.c: 310: Delay(x);
	movf	(Pulse@x+1),w
	clrf	(Delay@tmp+1)
	addwf	(Delay@tmp+1)
	movf	(Pulse@x),w
	clrf	(Delay@tmp)
	addwf	(Delay@tmp)

	fcall	_Delay
	line	311
	
l171:	
	return
	opt stack 0
GLOBAL	__end_of_Pulse
	__end_of_Pulse:
	signat	_Pulse,4216
	global	_Delay

;; *************** function _Delay *****************
;; Defined at:
;;		line 299 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  tmp             2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Pulse
;;		_Init_LCD
;;		_Send_Command_LCD
;;		_Send_Byte_LCD
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	299
global __ptext18
__ptext18:	;psect for function _Delay
psect	text18
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	299
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
;incstack = 0
	opt	stack 4
; Regs used in _Delay: [wreg]
	line	301
	
l1263:	
;main.c: 301: while(tmp--);
	goto	l1265
	
l166:	
	goto	l1265
	
l165:	
	
l1265:	
	movlw	low(01h)
	subwf	(Delay@tmp),f
	movlw	high(01h)
	skipc
	decf	(Delay@tmp+1),f
	subwf	(Delay@tmp+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@tmp+1)),w
	skipz
	goto	u575
	movlw	low(0FFFFh)
	xorwf	((Delay@tmp)),w
u575:

	skipz
	goto	u571
	goto	u570
u571:
	goto	l1265
u570:
	goto	l168
	
l167:	
	line	303
;main.c: 302: return;
	
l168:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
	signat	_Delay,4216
	global	_Check_buttons

;; *************** function _Check_buttons *****************
;; Defined at:
;;		line 283 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tmp_TRISB       1    3[COMMON] unsigned char 
;;  tmp_PORTB       1    2[COMMON] unsigned char 
;;  tmp             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Send_Command_LCD
;;		_Send_Byte_LCD
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	283
global __ptext19
__ptext19:	;psect for function _Check_buttons
psect	text19
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	283
	global	__size_of_Check_buttons
	__size_of_Check_buttons	equ	__end_of_Check_buttons-_Check_buttons
	
_Check_buttons:	
;incstack = 0
	opt	stack 5
; Regs used in _Check_buttons: [wreg+status,2+status,0]
	line	286
	
l1271:	
;main.c: 285: byte tmp;
;main.c: 286: byte tmp_PORTB = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_Check_buttons+0)+0
	movf	(??_Check_buttons+0)+0,w
	movwf	(Check_buttons@tmp_PORTB)
	line	287
;main.c: 287: byte tmp_TRISB = TRISB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	movwf	(??_Check_buttons+0)+0
	movf	(??_Check_buttons+0)+0,w
	movwf	(Check_buttons@tmp_TRISB)
	line	288
	
l1273:	
;main.c: 288: TRISB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_Check_buttons+0)+0
	movf	(??_Check_buttons+0)+0,w
	andwf	(134)^080h,f	;volatile
	line	289
	
l1275:	
;main.c: 289: PORTB |= 0xF0;
	movlw	(0F0h)
	movwf	(??_Check_buttons+0)+0
	movf	(??_Check_buttons+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(6),f	;volatile
	line	291
	
l1277:	
;main.c: 291: tmp = PORTB^0xFF;
	comf	(6),w	;volatile
	movwf	(??_Check_buttons+0)+0
	movf	(??_Check_buttons+0)+0,w
	movwf	(Check_buttons@tmp)
	line	292
	
l1279:	
;main.c: 292: PORTB = tmp_PORTB;
	movf	(Check_buttons@tmp_PORTB),w
	movwf	(6)	;volatile
	line	293
	
l1281:	
;main.c: 293: TRISB = tmp_TRISB;
	movf	(Check_buttons@tmp_TRISB),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	294
	
l1283:	
;main.c: 294: return(tmp >> 4);
	movf	(Check_buttons@tmp),w
	movwf	(??_Check_buttons+0)+0
	movlw	04h
u595:
	clrc
	rrf	(??_Check_buttons+0)+0,f
	addlw	-1
	skipz
	goto	u595
	movf	0+(??_Check_buttons+0)+0,w
	goto	l162
	
l1285:	
	line	295
	
l162:	
	return
	opt stack 0
GLOBAL	__end_of_Check_buttons
	__end_of_Check_buttons:
	signat	_Check_buttons,89
	global	_IN_BYTE_NACK_STOP_I2C

;; *************** function _IN_BYTE_NACK_STOP_I2C *****************
;; Defined at:
;;		line 500 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IN_BYTE_I2C
;;		_NACK_I2C
;;		_STOP_I2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	500
global __ptext20
__ptext20:	;psect for function _IN_BYTE_NACK_STOP_I2C
psect	text20
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	500
	global	__size_of_IN_BYTE_NACK_STOP_I2C
	__size_of_IN_BYTE_NACK_STOP_I2C	equ	__end_of_IN_BYTE_NACK_STOP_I2C-_IN_BYTE_NACK_STOP_I2C
	
_IN_BYTE_NACK_STOP_I2C:	
;incstack = 0
	opt	stack 3
; Regs used in _IN_BYTE_NACK_STOP_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	503
	
l1539:	
;main.c: 502: byte t;
;main.c: 503: t = IN_BYTE_I2C();
	fcall	_IN_BYTE_I2C
	movwf	(??_IN_BYTE_NACK_STOP_I2C+0)+0
	movf	(??_IN_BYTE_NACK_STOP_I2C+0)+0,w
	movwf	(IN_BYTE_NACK_STOP_I2C@t)
	line	504
;main.c: 504: NACK_I2C();
	fcall	_NACK_I2C
	line	505
;main.c: 505: STOP_I2C();
	fcall	_STOP_I2C
	goto	l247
	line	506
	
l1541:	
	line	507
;main.c: 506: return(t);
;	Return value of _IN_BYTE_NACK_STOP_I2C is never used
	
l247:	
	return
	opt stack 0
GLOBAL	__end_of_IN_BYTE_NACK_STOP_I2C
	__end_of_IN_BYTE_NACK_STOP_I2C:
	signat	_IN_BYTE_NACK_STOP_I2C,89
	global	_STOP_I2C

;; *************** function _STOP_I2C *****************
;; Defined at:
;;		line 543 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_HIGH_SCL_I2C
;;		_HIGH_SDA_I2C
;;		_LOW_SCL_I2C
;;		_LOW_SDA_I2C
;; This function is called by:
;;		_main
;;		_Init_WRITE_I2C
;;		_IN_BYTE_NACK_STOP_I2C
;;		_OUT_BYTE_PAGE_I2C
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	543
global __ptext21
__ptext21:	;psect for function _STOP_I2C
psect	text21
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	543
	global	__size_of_STOP_I2C
	__size_of_STOP_I2C	equ	__end_of_STOP_I2C-_STOP_I2C
	
_STOP_I2C:	
;incstack = 0
	opt	stack 5
; Regs used in _STOP_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	545
	
l1359:	
;main.c: 545: LOW_SDA_I2C();
	fcall	_LOW_SDA_I2C
	line	546
;main.c: 546: LOW_SCL_I2C();
	fcall	_LOW_SCL_I2C
	line	547
;main.c: 547: HIGH_SCL_I2C();
	fcall	_HIGH_SCL_I2C
	line	548
;main.c: 548: HIGH_SDA_I2C();
	fcall	_HIGH_SDA_I2C
	line	549
;main.c: 549: LOW_SCL_I2C();
	fcall	_LOW_SCL_I2C
	line	550
	
l262:	
	return
	opt stack 0
GLOBAL	__end_of_STOP_I2C
	__end_of_STOP_I2C:
	signat	_STOP_I2C,88
	global	_NACK_I2C

;; *************** function _NACK_I2C *****************
;; Defined at:
;;		line 572 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CLOCK_PULSE_I2C
;;		_HIGH_SDA_I2C
;; This function is called by:
;;		_IN_BYTE_NACK_STOP_I2C
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	572
global __ptext22
__ptext22:	;psect for function _NACK_I2C
psect	text22
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	572
	global	__size_of_NACK_I2C
	__size_of_NACK_I2C	equ	__end_of_NACK_I2C-_NACK_I2C
	
_NACK_I2C:	
;incstack = 0
	opt	stack 3
; Regs used in _NACK_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	574
	
l1427:	
;main.c: 574: HIGH_SDA_I2C();
	fcall	_HIGH_SDA_I2C
	line	575
;main.c: 575: CLOCK_PULSE_I2C();
	fcall	_CLOCK_PULSE_I2C
	line	576
	
l273:	
	return
	opt stack 0
GLOBAL	__end_of_NACK_I2C
	__end_of_NACK_I2C:
	signat	_NACK_I2C,88
	global	_IN_BYTE_ACK_I2C

;; *************** function _IN_BYTE_ACK_I2C *****************
;; Defined at:
;;		line 474 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ACK_I2C
;;		_IN_BYTE_I2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	474
global __ptext23
__ptext23:	;psect for function _IN_BYTE_ACK_I2C
psect	text23
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	474
	global	__size_of_IN_BYTE_ACK_I2C
	__size_of_IN_BYTE_ACK_I2C	equ	__end_of_IN_BYTE_ACK_I2C-_IN_BYTE_ACK_I2C
	
_IN_BYTE_ACK_I2C:	
;incstack = 0
	opt	stack 3
; Regs used in _IN_BYTE_ACK_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	477
	
l1533:	
;main.c: 476: byte t;
;main.c: 477: t=IN_BYTE_I2C();
	fcall	_IN_BYTE_I2C
	movwf	(??_IN_BYTE_ACK_I2C+0)+0
	movf	(??_IN_BYTE_ACK_I2C+0)+0,w
	movwf	(IN_BYTE_ACK_I2C@t)
	line	478
;main.c: 478: ACK_I2C();
	fcall	_ACK_I2C
	line	479
	
l1535:	
;main.c: 479: return(t);
	movf	(IN_BYTE_ACK_I2C@t),w
	goto	l237
	
l1537:	
	line	480
	
l237:	
	return
	opt stack 0
GLOBAL	__end_of_IN_BYTE_ACK_I2C
	__end_of_IN_BYTE_ACK_I2C:
	signat	_IN_BYTE_ACK_I2C,89
	global	_IN_BYTE_I2C

;; *************** function _IN_BYTE_I2C *****************
;; Defined at:
;;		line 482 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               1    4[COMMON] unsigned char 
;;  tmp             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_HIGH_SCL_I2C
;;		_HIGH_SDA_I2C
;;		_LOW_SCL_I2C
;; This function is called by:
;;		_IN_BYTE_ACK_I2C
;;		_IN_BYTE_NACK_STOP_I2C
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	482
global __ptext24
__ptext24:	;psect for function _IN_BYTE_I2C
psect	text24
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	482
	global	__size_of_IN_BYTE_I2C
	__size_of_IN_BYTE_I2C	equ	__end_of_IN_BYTE_I2C-_IN_BYTE_I2C
	
_IN_BYTE_I2C:	
;incstack = 0
	opt	stack 4
; Regs used in _IN_BYTE_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	484
	
l1403:	
;main.c: 484: byte t,tmp=8;
	movlw	(08h)
	movwf	(??_IN_BYTE_I2C+0)+0
	movf	(??_IN_BYTE_I2C+0)+0,w
	movwf	(IN_BYTE_I2C@tmp)
	line	485
	
l1405:	
;main.c: 485: t=0;
	clrf	(IN_BYTE_I2C@t)
	line	486
	
l1407:	
;main.c: 486: HIGH_SDA_I2C();
	fcall	_HIGH_SDA_I2C
	line	487
;main.c: 487: while (tmp--)
	goto	l1419
	
l241:	
	line	489
	
l1409:	
;main.c: 488: {
;main.c: 489: t += t;
	movf	(IN_BYTE_I2C@t),w
	movwf	(??_IN_BYTE_I2C+0)+0
	movf	(??_IN_BYTE_I2C+0)+0,w
	addwf	(IN_BYTE_I2C@t),f
	line	490
	
l1411:	
;main.c: 490: HIGH_SCL_I2C();
	fcall	_HIGH_SCL_I2C
	line	491
	
l1413:	
;main.c: 491: if(((PORTC) & (1 <<(4))))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(7),(4)&7	;volatile
	goto	u721
	goto	u720
u721:
	goto	l1417
u720:
	line	493
	
l1415:	
;main.c: 492: {
;main.c: 493: t++;
	movlw	(01h)
	movwf	(??_IN_BYTE_I2C+0)+0
	movf	(??_IN_BYTE_I2C+0)+0,w
	addwf	(IN_BYTE_I2C@t),f
	goto	l1417
	line	494
	
l242:	
	line	495
	
l1417:	
;main.c: 494: }
;main.c: 495: LOW_SCL_I2C();
	fcall	_LOW_SCL_I2C
	goto	l1419
	line	496
	
l240:	
	line	487
	
l1419:	
	movlw	low(01h)
	subwf	(IN_BYTE_I2C@tmp),f
	movf	((IN_BYTE_I2C@tmp)),w
	xorlw	0FFh
	skipz
	goto	u731
	goto	u730
u731:
	goto	l1409
u730:
	goto	l1421
	
l243:	
	line	497
	
l1421:	
;main.c: 496: }
;main.c: 497: return(t);
	movf	(IN_BYTE_I2C@t),w
	goto	l244
	
l1423:	
	line	498
	
l244:	
	return
	opt stack 0
GLOBAL	__end_of_IN_BYTE_I2C
	__end_of_IN_BYTE_I2C:
	signat	_IN_BYTE_I2C,89
	global	_HIGH_SDA_I2C

;; *************** function _HIGH_SDA_I2C *****************
;; Defined at:
;;		line 463 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay_Fast
;; This function is called by:
;;		_START_I2C
;;		_IN_BYTE_I2C
;;		_OUT_BYTE_I2C
;;		_STOP_I2C
;;		_NACK_I2C
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	463
global __ptext25
__ptext25:	;psect for function _HIGH_SDA_I2C
psect	text25
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	463
	global	__size_of_HIGH_SDA_I2C
	__size_of_HIGH_SDA_I2C	equ	__end_of_HIGH_SDA_I2C-_HIGH_SDA_I2C
	
_HIGH_SDA_I2C:	
;incstack = 0
	opt	stack 5
; Regs used in _HIGH_SDA_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	465
	
l1323:	
;main.c: 465: ((TRISC) |= (1 << (4)));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(135)^080h+(4/8),(4)&7	;volatile
	line	466
	
l1325:	
;main.c: 466: Delay_Fast(5);
	movlw	(05h)
	fcall	_Delay_Fast
	line	467
	
l228:	
	return
	opt stack 0
GLOBAL	__end_of_HIGH_SDA_I2C
	__end_of_HIGH_SDA_I2C:
	signat	_HIGH_SDA_I2C,88
	global	_ACK_I2C

;; *************** function _ACK_I2C *****************
;; Defined at:
;;		line 578 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CLOCK_PULSE_I2C
;;		_LOW_SDA_I2C
;; This function is called by:
;;		_IN_BYTE_ACK_I2C
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	578
global __ptext26
__ptext26:	;psect for function _ACK_I2C
psect	text26
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	578
	global	__size_of_ACK_I2C
	__size_of_ACK_I2C	equ	__end_of_ACK_I2C-_ACK_I2C
	
_ACK_I2C:	
;incstack = 0
	opt	stack 3
; Regs used in _ACK_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	580
	
l1425:	
;main.c: 580: LOW_SDA_I2C();
	fcall	_LOW_SDA_I2C
	line	581
;main.c: 581: CLOCK_PULSE_I2C();
	fcall	_CLOCK_PULSE_I2C
	line	582
	
l276:	
	return
	opt stack 0
GLOBAL	__end_of_ACK_I2C
	__end_of_ACK_I2C:
	signat	_ACK_I2C,88
	global	_LOW_SDA_I2C

;; *************** function _LOW_SDA_I2C *****************
;; Defined at:
;;		line 456 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay_Fast
;; This function is called by:
;;		_START_I2C
;;		_OUT_BYTE_I2C
;;		_STOP_I2C
;;		_ACK_I2C
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	456
global __ptext27
__ptext27:	;psect for function _LOW_SDA_I2C
psect	text27
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	456
	global	__size_of_LOW_SDA_I2C
	__size_of_LOW_SDA_I2C	equ	__end_of_LOW_SDA_I2C-_LOW_SDA_I2C
	
_LOW_SDA_I2C:	
;incstack = 0
	opt	stack 5
; Regs used in _LOW_SDA_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	458
	
l1327:	
;main.c: 458: ((PORTC) &= ~(1 << (4)));
	movlw	(0EFh)
	movwf	(??_LOW_SDA_I2C+0)+0
	movf	(??_LOW_SDA_I2C+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	459
;main.c: 459: ((TRISC) &= ~(1 << (4)));
	movlw	(0EFh)
	movwf	(??_LOW_SDA_I2C+0)+0
	movf	(??_LOW_SDA_I2C+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	460
	
l1329:	
;main.c: 460: Delay_Fast(5);
	movlw	(05h)
	fcall	_Delay_Fast
	line	461
	
l225:	
	return
	opt stack 0
GLOBAL	__end_of_LOW_SDA_I2C
	__end_of_LOW_SDA_I2C:
	signat	_LOW_SDA_I2C,88
	global	_CLOCK_PULSE_I2C

;; *************** function _CLOCK_PULSE_I2C *****************
;; Defined at:
;;		line 552 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_HIGH_SCL_I2C
;;		_LOW_SCL_I2C
;; This function is called by:
;;		_OUT_BYTE_I2C
;;		_NACK_I2C
;;		_ACK_I2C
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	552
global __ptext28
__ptext28:	;psect for function _CLOCK_PULSE_I2C
psect	text28
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	552
	global	__size_of_CLOCK_PULSE_I2C
	__size_of_CLOCK_PULSE_I2C	equ	__end_of_CLOCK_PULSE_I2C-_CLOCK_PULSE_I2C
	
_CLOCK_PULSE_I2C:	
;incstack = 0
	opt	stack 3
; Regs used in _CLOCK_PULSE_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	554
	
l1331:	
;main.c: 554: HIGH_SCL_I2C();
	fcall	_HIGH_SCL_I2C
	line	555
;main.c: 555: LOW_SCL_I2C();
	fcall	_LOW_SCL_I2C
	line	556
	
l265:	
	return
	opt stack 0
GLOBAL	__end_of_CLOCK_PULSE_I2C
	__end_of_CLOCK_PULSE_I2C:
	signat	_CLOCK_PULSE_I2C,88
	global	_LOW_SCL_I2C

;; *************** function _LOW_SCL_I2C *****************
;; Defined at:
;;		line 442 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay_Fast
;; This function is called by:
;;		_START_I2C
;;		_IN_BYTE_I2C
;;		_STOP_I2C
;;		_CLOCK_PULSE_I2C
;;		_Check_ACK_I2C
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	line	442
global __ptext29
__ptext29:	;psect for function _LOW_SCL_I2C
psect	text29
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	442
	global	__size_of_LOW_SCL_I2C
	__size_of_LOW_SCL_I2C	equ	__end_of_LOW_SCL_I2C-_LOW_SCL_I2C
	
_LOW_SCL_I2C:	
;incstack = 0
	opt	stack 5
; Regs used in _LOW_SCL_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	445
	
l1297:	
;main.c: 445: ((PORTC) &= ~(1 << (3)));
	movlw	(0F7h)
	movwf	(??_LOW_SCL_I2C+0)+0
	movf	(??_LOW_SCL_I2C+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	446
	
l1299:	
;main.c: 446: Delay_Fast(5);
	movlw	(05h)
	fcall	_Delay_Fast
	line	447
	
l219:	
	return
	opt stack 0
GLOBAL	__end_of_LOW_SCL_I2C
	__end_of_LOW_SCL_I2C:
	signat	_LOW_SCL_I2C,88
	global	_HIGH_SCL_I2C

;; *************** function _HIGH_SCL_I2C *****************
;; Defined at:
;;		line 449 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay_Fast
;; This function is called by:
;;		_START_I2C
;;		_IN_BYTE_I2C
;;		_STOP_I2C
;;		_CLOCK_PULSE_I2C
;;		_Check_ACK_I2C
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	line	449
global __ptext30
__ptext30:	;psect for function _HIGH_SCL_I2C
psect	text30
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	449
	global	__size_of_HIGH_SCL_I2C
	__size_of_HIGH_SCL_I2C	equ	__end_of_HIGH_SCL_I2C-_HIGH_SCL_I2C
	
_HIGH_SCL_I2C:	
;incstack = 0
	opt	stack 5
; Regs used in _HIGH_SCL_I2C: [wreg+status,2+status,0+pclath+cstack]
	line	452
	
l1293:	
;main.c: 452: ((PORTC) |= (1 << (3)));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(3/8),(3)&7	;volatile
	line	453
	
l1295:	
;main.c: 453: Delay_Fast(5);
	movlw	(05h)
	fcall	_Delay_Fast
	line	454
	
l222:	
	return
	opt stack 0
GLOBAL	__end_of_HIGH_SCL_I2C
	__end_of_HIGH_SCL_I2C:
	signat	_HIGH_SCL_I2C,88
	global	_Delay_Fast

;; *************** function _Delay_Fast *****************
;; Defined at:
;;		line 469 in file "D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LOW_SCL_I2C
;;		_HIGH_SCL_I2C
;;		_LOW_SDA_I2C
;;		_HIGH_SDA_I2C
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	469
global __ptext31
__ptext31:	;psect for function _Delay_Fast
psect	text31
	file	"D:\study\7_semester\Microprocessor_systems\Course_Work\main.c"
	line	469
	global	__size_of_Delay_Fast
	__size_of_Delay_Fast	equ	__end_of_Delay_Fast-_Delay_Fast
	
_Delay_Fast:	
;incstack = 0
	opt	stack 5
; Regs used in _Delay_Fast: [wreg+status,2+status,0]
;Delay_Fast@i stored from wreg
	movwf	(Delay_Fast@i)
	line	471
	
l1267:	
;main.c: 471: while (i--);
	goto	l1269
	
l232:	
	goto	l1269
	
l231:	
	
l1269:	
	movlw	low(01h)
	subwf	(Delay_Fast@i),f
	movf	((Delay_Fast@i)),w
	xorlw	0FFh
	skipz
	goto	u581
	goto	u580
u581:
	goto	l1269
u580:
	goto	l234
	
l233:	
	line	472
	
l234:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_Fast
	__end_of_Delay_Fast:
	signat	_Delay_Fast,4216
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
