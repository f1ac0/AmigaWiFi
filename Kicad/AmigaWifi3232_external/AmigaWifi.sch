EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AmigaWifi"
Date "2020-05-07"
Rev "1.0"
Comp "FLACO 2018, licence of this schematic is CC-BY-NC-SA"
Comment1 "Connect an ESP8266 to a retro-computer DB25 serial port"
Comment2 "Breaks the UART IOs from an ESP-12F through a MAX3232"
Comment3 "use with : https://github.com/martin-ger/esp_slip_router"
Comment4 "or with https://github.com/bozimmerman/Zimodem firmware. Check the ESP pin definition !"
$EndDescr
NoConn ~ 10250 4900
NoConn ~ 10250 4700
NoConn ~ 10250 4500
NoConn ~ 10250 4300
NoConn ~ 10250 4100
NoConn ~ 10250 3500
NoConn ~ 10250 3400
NoConn ~ 10250 3900
NoConn ~ 10250 3200
NoConn ~ 10250 3100
NoConn ~ 10250 3000
NoConn ~ 10250 2900
NoConn ~ 10250 2800
NoConn ~ 10250 2700
NoConn ~ 10250 2600
NoConn ~ 4350 1350
Text GLabel 10250 3300 0    60   Input ~ 0
RI
Text GLabel 10250 3600 0    60   Input ~ 0
DCD
Text GLabel 10250 3700 0    60   Output ~ 0
DTR
Text GLabel 10250 4000 0    60   Input ~ 0
DSR
Text GLabel 10250 4200 0    60   Input ~ 0
CTS
Text GLabel 10250 4400 0    60   Output ~ 0
RTS
Text GLabel 10250 4600 0    60   Input ~ 0
RXD
Text GLabel 10250 4800 0    60   Output ~ 0
TXD
Text GLabel 10250 3800 0    60   Input ~ 0
GND
Text GLabel 9150 3600 2    60   Output ~ 0
DCD
Text GLabel 7850 4100 2    60   Output ~ 0
CTS
Text GLabel 7850 4500 2    60   Input ~ 0
RTS
Text GLabel 7850 3900 2    60   Output ~ 0
RXD
Text GLabel 7850 4300 2    60   Input ~ 0
TXD
Text GLabel 9150 3700 2    60   Output ~ 0
DSR
Text GLabel 9150 4300 2    60   Input ~ 0
DTR
Text GLabel 5350 1800 2    60   Input ~ 0
GND
Connection ~ 4050 1800
Wire Wire Line
	4050 1800 4050 1650
Wire Wire Line
	2900 1300 2900 1250
Wire Wire Line
	2900 1500 2900 1800
Wire Wire Line
	5350 1250 5350 1300
Wire Wire Line
	5350 1800 5350 1500
Wire Wire Line
	1750 1350 1850 1350
Wire Wire Line
	1850 1350 1850 1450
Wire Wire Line
	1750 1250 1850 1250
Wire Wire Line
	1850 1250 1850 1150
Wire Wire Line
	3750 1350 3650 1350
Wire Wire Line
	3650 1350 3650 1250
Connection ~ 3650 1250
Text GLabel 4000 3450 2    60   Output ~ 0
LRI
Text GLabel 4000 3550 2    60   Input ~ 0
LTXD
Text GLabel 6250 4300 0    60   Output ~ 0
LTXD
Text GLabel 6250 3900 0    60   Input ~ 0
LRXD
Text GLabel 4000 3350 2    60   Output ~ 0
LRXD
Text GLabel 4000 3650 2    60   Input ~ 0
LDTR
Text GLabel 5300 3650 0    60   Output ~ 0
LDTR
Text GLabel 5300 3050 0    60   Input ~ 0
LDSR
Text GLabel 4000 3750 2    60   Output ~ 0
LDSR
Text GLabel 4550 5600 0    60   Output ~ 0
PROG
Text GLabel 4300 3250 2    60   Input ~ 0
PROG
Text GLabel 6250 4100 0    60   Input ~ 0
LCTS
Text GLabel 4750 4150 2    60   Output ~ 0
LCTS
Text GLabel 6250 4500 0    60   Output ~ 0
LRTS
Text GLabel 4000 3950 2    60   Input ~ 0
LRTS
Text GLabel 2800 3250 0    60   Input ~ 0
RST
Text GLabel 1200 6600 0    60   Output ~ 0
RST
NoConn ~ 1350 2350
NoConn ~ 1350 2450
NoConn ~ 1350 2550
NoConn ~ 2050 2350
NoConn ~ 2050 2450
NoConn ~ 2050 2550
Wire Wire Line
	950  2750 1050 2750
Connection ~ 1050 2750
Connection ~ 1650 2750
Connection ~ 1750 2750
Wire Wire Line
	2050 2150 2050 1800
Wire Wire Line
	2050 1800 1350 1800
Wire Wire Line
	1350 1800 1350 2150
Text Notes 7100 6300 0    60   ~ 0
Programmable though DB25 only
NoConn ~ 10250 5000
Wire Wire Line
	3650 1250 3750 1250
Wire Wire Line
	1050 2750 1650 2750
Wire Wire Line
	1650 2750 1750 2750
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5EABD71C
P 1550 1350
F 0 "J2" H 1468 1025 50  0000 C CNN
F 1 "Power" H 1468 1116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1550 1350 50  0001 C CNN
F 3 "~" H 1550 1350 50  0001 C CNN
	1    1550 1350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5EAC163E
P 1850 1150
F 0 "#PWR0101" H 1850 1000 50  0001 C CNN
F 1 "+5V" H 1865 1323 50  0000 C CNN
F 2 "" H 1850 1150 50  0001 C CNN
F 3 "" H 1850 1150 50  0001 C CNN
	1    1850 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5EAC3AC3
P 2900 1250
F 0 "#PWR0102" H 2900 1100 50  0001 C CNN
F 1 "+5V" H 2915 1423 50  0000 C CNN
F 2 "" H 2900 1250 50  0001 C CNN
F 3 "" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
Connection ~ 2900 1250
Wire Wire Line
	2050 2150 2250 2150
$Comp
L power:+5V #PWR0105
U 1 1 5EADD368
P 2250 2150
F 0 "#PWR0105" H 2250 2000 50  0001 C CNN
F 1 "+5V" H 2265 2323 50  0000 C CNN
F 2 "" H 2250 2150 50  0001 C CNN
F 3 "" H 2250 2150 50  0001 C CNN
	1    2250 2150
	1    0    0    -1  
$EndComp
Connection ~ 2250 2150
Wire Wire Line
	2250 2150 2400 2150
$Comp
L power:GND #PWR0106
U 1 1 5EAE0FA1
P 1850 1450
F 0 "#PWR0106" H 1850 1200 50  0001 C CNN
F 1 "GND" H 1855 1277 50  0000 C CNN
F 2 "" H 1850 1450 50  0001 C CNN
F 3 "" H 1850 1450 50  0001 C CNN
	1    1850 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5EAE2D95
P 4050 1800
F 0 "#PWR0107" H 4050 1550 50  0001 C CNN
F 1 "GND" H 4055 1627 50  0000 C CNN
F 2 "" H 4050 1800 50  0001 C CNN
F 3 "" H 4050 1800 50  0001 C CNN
	1    4050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2750 2200 2750
$Comp
L power:GND #PWR0108
U 1 1 5EAE375A
P 2200 2750
F 0 "#PWR0108" H 2200 2500 50  0001 C CNN
F 1 "GND" H 2205 2577 50  0000 C CNN
F 2 "" H 2200 2750 50  0001 C CNN
F 3 "" H 2200 2750 50  0001 C CNN
	1    2200 2750
	1    0    0    -1  
$EndComp
Connection ~ 2200 2750
Wire Wire Line
	2200 2750 2400 2750
$Comp
L power:GND #PWR0109
U 1 1 5EAE5928
P 3400 4550
F 0 "#PWR0109" H 3400 4300 50  0001 C CNN
F 1 "GND" H 3405 4377 50  0000 C CNN
F 2 "" H 3400 4550 50  0001 C CNN
F 3 "" H 3400 4550 50  0001 C CNN
	1    3400 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EAE8421
P 4600 4350
F 0 "#PWR0110" H 4600 4100 50  0001 C CNN
F 1 "GND" H 4605 4177 50  0000 C CNN
F 2 "" H 4600 4350 50  0001 C CNN
F 3 "" H 4600 4350 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5EAEA9FB
P 7050 5000
F 0 "#PWR0112" H 7050 4750 50  0001 C CNN
F 1 "GND" H 7055 4827 50  0000 C CNN
F 2 "" H 7050 5000 50  0001 C CNN
F 3 "" H 7050 5000 50  0001 C CNN
	1    7050 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5EAF31C3
P 5150 5600
F 0 "#PWR0115" H 5150 5350 50  0001 C CNN
F 1 "GND" H 5155 5427 50  0000 C CNN
F 2 "" H 5150 5600 50  0001 C CNN
F 3 "" H 5150 5600 50  0001 C CNN
	1    5150 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5EAF8BCD
P 1600 6600
F 0 "#PWR0119" H 1600 6350 50  0001 C CNN
F 1 "GND" H 1605 6427 50  0000 C CNN
F 2 "" H 1600 6600 50  0001 C CNN
F 3 "" H 1600 6600 50  0001 C CNN
	1    1600 6600
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5EB12D47
P 1050 2350
F 0 "J1" H 1107 2817 50  0000 C CNN
F 1 "USB_B_Micro" H 1107 2726 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 1200 2300 50  0001 C CNN
F 3 "~" H 1200 2300 50  0001 C CNN
	1    1050 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J3
U 1 1 5EB144C0
P 1750 2350
F 0 "J3" H 1807 2817 50  0000 C CNN
F 1 "USB_B_Mini" H 1807 2726 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 1900 2300 50  0001 C CNN
F 3 "~" H 1900 2300 50  0001 C CNN
	1    1750 2350
	1    0    0    -1  
$EndComp
Connection ~ 2050 2150
$Comp
L power:+3.3V #PWR0121
U 1 1 5EB392E2
P 5350 1250
F 0 "#PWR0121" H 5350 1100 50  0001 C CNN
F 1 "+3.3V" H 5365 1423 50  0000 C CNN
F 2 "" H 5350 1250 50  0001 C CNN
F 3 "" H 5350 1250 50  0001 C CNN
	1    5350 1250
	1    0    0    -1  
$EndComp
Connection ~ 5350 1250
$Comp
L power:+3.3V #PWR0122
U 1 1 5EB40B81
P 7050 2600
F 0 "#PWR0122" H 7050 2450 50  0001 C CNN
F 1 "+3.3V" H 7065 2773 50  0000 C CNN
F 2 "" H 7050 2600 50  0001 C CNN
F 3 "" H 7050 2600 50  0001 C CNN
	1    7050 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0125
U 1 1 5EB43387
P 2400 3450
F 0 "#PWR0125" H 2400 3300 50  0001 C CNN
F 1 "+3.3V" H 2415 3623 50  0000 C CNN
F 2 "" H 2400 3450 50  0001 C CNN
F 3 "" H 2400 3450 50  0001 C CNN
	1    2400 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0126
U 1 1 5EB4407A
P 3400 3050
F 0 "#PWR0126" H 3400 2900 50  0001 C CNN
F 1 "+3.3V" H 3415 3223 50  0000 C CNN
F 2 "" H 3400 3050 50  0001 C CNN
F 3 "" H 3400 3050 50  0001 C CNN
	1    3400 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB25_Female J6
U 1 1 5EB64DD5
P 10550 3800
F 0 "J6" H 10468 2308 50  0000 C CNN
F 1 "DB25_Female" H 10468 2399 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-25_Female_EdgeMount_P2.77mm" H 10550 3800 50  0001 C CNN
F 3 " ~" H 10550 3800 50  0001 C CNN
	1    10550 3800
	1    0    0    1   
$EndComp
$Comp
L RF_Module:ESP-12F U1
U 1 1 5EBA06BC
P 3400 3850
F 0 "U1" H 2950 4700 50  0000 C CNN
F 1 "ESP-12F" H 3050 4600 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 3400 3850 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 3050 3950 50  0001 C CNN
	1    3400 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0129
U 1 1 5EBCEC51
P 5950 1300
F 0 "#PWR0129" H 5950 1150 50  0001 C CNN
F 1 "+3.3V" H 5965 1473 50  0000 C CNN
F 2 "" H 5950 1300 50  0001 C CNN
F 3 "" H 5950 1300 50  0001 C CNN
	1    5950 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5EBCF3C5
P 5950 1500
F 0 "#PWR0130" H 5950 1250 50  0001 C CNN
F 1 "GND" H 5955 1327 50  0000 C CNN
F 2 "" H 5950 1500 50  0001 C CNN
F 3 "" H 5950 1500 50  0001 C CNN
	1    5950 1500
	1    0    0    -1  
$EndComp
Text Notes 5700 1000 0    50   ~ 0
ESP decoupling
NoConn ~ 2800 3850
NoConn ~ 2800 3950
NoConn ~ 2800 4050
NoConn ~ 2800 4150
NoConn ~ 2800 4250
NoConn ~ 2800 4350
Wire Wire Line
	2800 3450 2400 3450
$Comp
L Switch:SW_Push SW1
U 1 1 5ED10928
P 1400 6600
F 0 "SW1" H 1400 6885 50  0000 C CNN
F 1 "RESET" H 1400 6794 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_FSMSM" H 1400 6800 50  0001 C CNN
F 3 "~" H 1400 6800 50  0001 C CNN
	1    1400 6600
	1    0    0    -1  
$EndComp
Text Notes 1150 6950 0    50   ~ 0
RED SWITCH
$Comp
L Device:R_Small R2
U 1 1 5ED3DE9B
P 4650 5600
F 0 "R2" V 4454 5600 50  0000 C CNN
F 1 "10k" V 4545 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4650 5600 50  0001 C CNN
F 3 "~" H 4650 5600 50  0001 C CNN
	1    4650 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4150 4600 4150
$Comp
L Device:R_Small R1
U 1 1 5ED527CC
P 4600 4250
F 0 "R1" H 4659 4296 50  0000 L CNN
F 1 "10k" H 4659 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4600 4250 50  0001 C CNN
F 3 "~" H 4600 4250 50  0001 C CNN
	1    4600 4250
	1    0    0    -1  
$EndComp
Connection ~ 4600 4150
Wire Wire Line
	4600 4150 4750 4150
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 5ED849E3
P 4950 5600
F 0 "JP1" H 4950 5835 50  0000 C CNN
F 1 "Prog" H 4950 5744 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4950 5600 50  0001 C CNN
F 3 "~" H 4950 5600 50  0001 C CNN
	1    4950 5600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5EDADD9A
P 2900 1400
F 0 "C8" H 2992 1446 50  0000 L CNN
F 1 "22uF" H 2992 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2900 1400 50  0001 C CNN
F 3 "~" H 2900 1400 50  0001 C CNN
	1    2900 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5EDB3AF5
P 5350 1400
F 0 "C9" H 5442 1446 50  0000 L CNN
F 1 "22uF" H 5442 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 1400 50  0001 C CNN
F 3 "~" H 5350 1400 50  0001 C CNN
	1    5350 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5EDB4452
P 5950 1400
F 0 "C10" H 6042 1446 50  0000 L CNN
F 1 "100nF" H 6042 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5950 1400 50  0001 C CNN
F 3 "~" H 5950 1400 50  0001 C CNN
	1    5950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0131
U 1 1 5EDD460D
P 7000 1300
F 0 "#PWR0131" H 7000 1150 50  0001 C CNN
F 1 "+3.3V" H 7015 1473 50  0000 C CNN
F 2 "" H 7000 1300 50  0001 C CNN
F 3 "" H 7000 1300 50  0001 C CNN
	1    7000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5EDD4617
P 7000 1500
F 0 "#PWR0132" H 7000 1250 50  0001 C CNN
F 1 "GND" H 7005 1327 50  0000 C CNN
F 2 "" H 7000 1500 50  0001 C CNN
F 3 "" H 7000 1500 50  0001 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
Text Notes 6750 1000 0    50   ~ 0
MAX decoupling
$Comp
L Device:C_Small C3
U 1 1 5EDD4622
P 7000 1400
F 0 "C3" H 7092 1446 50  0000 L CNN
F 1 "100nF" H 7092 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7000 1400 50  0001 C CNN
F 3 "~" H 7000 1400 50  0001 C CNN
	1    7000 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5EDEBFBC
P 5900 3050
F 0 "C4" H 5992 3096 50  0000 L CNN
F 1 "100nF" H 5992 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5900 3050 50  0001 C CNN
F 3 "~" H 5900 3050 50  0001 C CNN
	1    5900 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EDEC56A
P 8000 3050
F 0 "C5" H 8092 3096 50  0000 L CNN
F 1 "100nF" H 8092 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8000 3050 50  0001 C CNN
F 3 "~" H 8000 3050 50  0001 C CNN
	1    8000 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5EDED580
P 8150 3400
F 0 "C6" H 8242 3446 50  0000 L CNN
F 1 "100nF" H 8242 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8150 3400 50  0001 C CNN
F 3 "~" H 8150 3400 50  0001 C CNN
	1    8150 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5EDEDC3F
P 8150 3700
F 0 "C7" H 8242 3746 50  0000 L CNN
F 1 "100nF" H 8242 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8150 3700 50  0001 C CNN
F 3 "~" H 8150 3700 50  0001 C CNN
	1    8150 3700
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EB157F7
P 2400 2750
F 0 "#FLG0101" H 2400 2825 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 2923 50  0000 C CNN
F 2 "" H 2400 2750 50  0001 C CNN
F 3 "~" H 2400 2750 50  0001 C CNN
	1    2400 2750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EB1B54D
P 2400 2150
F 0 "#FLG0102" H 2400 2225 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 2323 50  0000 C CNN
F 2 "" H 2400 2150 50  0001 C CNN
F 3 "~" H 2400 2150 50  0001 C CNN
	1    2400 2150
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:SPX3819M5-L-3-3 U3
U 1 1 5EE0ECA6
P 4050 1350
F 0 "U3" H 4050 1692 50  0000 C CNN
F 1 "SPX3819M5-L-3-3" H 4050 1601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4050 1675 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 4050 1350 50  0001 C CNN
	1    4050 1350
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX3232 U2
U 1 1 5EAC23CE
P 7050 3800
F 0 "U2" H 6500 4950 50  0000 C CNN
F 1 "MAX3232" H 6600 4850 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7100 2750 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3222-MAX3241.pdf" H 7050 3900 50  0001 C CNN
	1    7050 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5EAEB2D6
P 8400 3700
F 0 "#PWR0113" H 8400 3450 50  0001 C CNN
F 1 "GND" H 8405 3527 50  0000 C CNN
F 2 "" H 8400 3700 50  0001 C CNN
F 3 "" H 8400 3700 50  0001 C CNN
	1    8400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3700 8400 3700
Wire Wire Line
	8400 3700 8400 3400
Wire Wire Line
	8400 3400 8250 3400
Connection ~ 8400 3700
Wire Wire Line
	8050 3400 7850 3400
Wire Wire Line
	8050 3700 7850 3700
Wire Wire Line
	6250 2900 5900 2900
Wire Wire Line
	5900 2900 5900 2950
Wire Wire Line
	5900 3150 5900 3200
Wire Wire Line
	5900 3200 6250 3200
Wire Wire Line
	7850 2900 8000 2900
Wire Wire Line
	8000 2900 8000 2950
Wire Wire Line
	8000 3150 8000 3200
Wire Wire Line
	8000 3200 7850 3200
Text GLabel 9150 3500 2    60   Output ~ 0
RI
Text GLabel 5300 2850 0    60   Input ~ 0
LRI
NoConn ~ 9150 3500
NoConn ~ 9150 3600
NoConn ~ 9150 3700
NoConn ~ 9150 4300
NoConn ~ 5300 2850
NoConn ~ 5300 3050
NoConn ~ 5300 3650
Wire Wire Line
	2900 1250 3650 1250
Wire Wire Line
	2900 1800 4050 1800
Wire Wire Line
	4350 1250 5350 1250
Wire Wire Line
	4050 1800 5350 1800
$Comp
L Mechanical:Fiducial FID1
U 1 1 5EB42228
P 6350 7200
F 0 "FID1" H 6435 7246 50  0000 L CNN
F 1 "LOGO" H 6435 7155 50  0000 L CNN
F 2 "Sassa:CC_BY_NC_SA_square_silkscreen" H 6350 7200 50  0001 C CNN
F 3 "~" H 6350 7200 50  0001 C CNN
	1    6350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3250 4300 3250
NoConn ~ 4000 3850
NoConn ~ 4000 4050
NoConn ~ 4000 4250
NoConn ~ 2800 3650
$EndSCHEMATC