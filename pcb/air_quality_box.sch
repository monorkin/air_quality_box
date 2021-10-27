EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	11000 650  8500 650 
Wire Notes Line
	8500 650  8500 2000
Wire Notes Line
	8500 2000 11000 2000
Wire Notes Line
	11000 2000 11000 650 
$Comp
L Connector:Conn_01x06_Female J?
U 1 1 617833E7
P 10000 2850
F 0 "J?" H 10028 2826 50  0000 L CNN
F 1 "Conn_01x06_Female" H 10028 2735 50  0000 L CNN
F 2 "" H 10000 2850 50  0001 C CNN
F 3 "~" H 10000 2850 50  0001 C CNN
	1    10000 2850
	1    0    0    -1  
$EndComp
Wire Notes Line
	11000 2200 8500 2200
Wire Notes Line
	8500 2200 8500 3700
Wire Notes Line
	8500 3700 11000 3700
Wire Notes Line
	11000 3700 11000 2200
Text Notes 8500 600  0    50   ~ 0
ST7565
Text Notes 8500 2150 0    50   ~ 0
BME680
Wire Notes Line
	11000 3900 8500 3900
Wire Notes Line
	8500 3900 8500 5400
Wire Notes Line
	8500 5400 11000 5400
Wire Notes Line
	11000 5400 11000 3900
Text Notes 8500 3850 0    50   ~ 0
MH-Z19B
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 6178C869
P 10200 1250
F 0 "J?" H 10228 1276 50  0000 L CNN
F 1 "Conn_01x09_Female" H 10228 1185 50  0000 L CNN
F 2 "" H 10200 1250 50  0001 C CNN
F 3 "~" H 10200 1250 50  0001 C CNN
	1    10200 1250
	1    0    0    -1  
$EndComp
Text Notes 8500 5550 0    50   ~ 0
SPS30
Wire Notes Line
	8500 5600 11000 5600
Wire Notes Line
	11000 5600 11000 6500
Wire Notes Line
	11000 6500 8500 6500
Wire Notes Line
	8500 6500 8500 5600
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 61791B97
P 10000 6050
F 0 "J?" H 9972 5982 50  0000 R CNN
F 1 "Conn_01x05_Male" H 9972 6073 50  0000 R CNN
F 2 "" H 10000 6050 50  0001 C CNN
F 3 "~" H 10000 6050 50  0001 C CNN
	1    10000 6050
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61792ED0
P 9650 5850
F 0 "#PWR?" H 9650 5700 50  0001 C CNN
F 1 "+5V" H 9665 6023 50  0000 C CNN
F 2 "" H 9650 5850 50  0001 C CNN
F 3 "" H 9650 5850 50  0001 C CNN
	1    9650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5850 9800 5850
$Comp
L power:GND #PWR?
U 1 1 617937E4
P 9650 6250
F 0 "#PWR?" H 9650 6000 50  0001 C CNN
F 1 "GND" H 9655 6077 50  0000 C CNN
F 2 "" H 9650 6250 50  0001 C CNN
F 3 "" H 9650 6250 50  0001 C CNN
	1    9650 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 6250 9800 6250
Wire Wire Line
	9650 6250 9650 6150
Wire Wire Line
	9650 6150 9800 6150
Connection ~ 9650 6250
Text GLabel 9550 5950 0    50   Input ~ 0
I2C_SDA
Text GLabel 9550 6050 0    50   Input ~ 0
I2C_SCL
Wire Wire Line
	9800 5950 9550 5950
Wire Wire Line
	9800 6050 9550 6050
NoConn ~ 9800 2650
NoConn ~ 9800 2750
Text GLabel 9650 2850 0    50   Input ~ 0
I2C_SDA
Text GLabel 9650 2950 0    50   Input ~ 0
I2C_SCL
$Comp
L power:+5V #PWR?
U 1 1 6179734D
P 9000 3050
F 0 "#PWR?" H 9000 2900 50  0001 C CNN
F 1 "+5V" H 9015 3223 50  0000 C CNN
F 2 "" H 9000 3050 50  0001 C CNN
F 3 "" H 9000 3050 50  0001 C CNN
	1    9000 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61797AE0
P 9650 3150
F 0 "#PWR?" H 9650 2900 50  0001 C CNN
F 1 "GND" H 9655 2977 50  0000 C CNN
F 2 "" H 9650 3150 50  0001 C CNN
F 3 "" H 9650 3150 50  0001 C CNN
	1    9650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3150 9650 3150
Wire Wire Line
	9800 3050 9000 3050
Wire Wire Line
	9800 2950 9650 2950
Wire Wire Line
	9800 2850 9650 2850
Text GLabel 9850 850  0    50   Input ~ 0
LCD_CS
Text GLabel 9850 950  0    50   Input ~ 0
LCD_RST
Text GLabel 9850 1050 0    50   Input ~ 0
LCD_DC
Text GLabel 9850 1150 0    50   Input ~ 0
SPI_SCL
Text GLabel 9850 1250 0    50   Input ~ 0
SPI_MOSI
$Comp
L power:+5V #PWR?
U 1 1 6179C731
P 8800 1350
F 0 "#PWR?" H 8800 1200 50  0001 C CNN
F 1 "+5V" H 8815 1523 50  0000 C CNN
F 2 "" H 8800 1350 50  0001 C CNN
F 3 "" H 8800 1350 50  0001 C CNN
	1    8800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6179CAFA
P 9350 1450
F 0 "#PWR?" H 9350 1200 50  0001 C CNN
F 1 "GND" H 9355 1277 50  0000 C CNN
F 2 "" H 9350 1450 50  0001 C CNN
F 3 "" H 9350 1450 50  0001 C CNN
	1    9350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1350 8800 1350
Wire Wire Line
	10000 1450 9350 1450
$Comp
L power:GND #PWR?
U 1 1 6179E4E3
P 10000 1650
F 0 "#PWR?" H 10000 1400 50  0001 C CNN
F 1 "GND" H 10005 1477 50  0000 C CNN
F 2 "" H 10000 1650 50  0001 C CNN
F 3 "" H 10000 1650 50  0001 C CNN
	1    10000 1650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW?
U 1 1 617A0459
P 9050 1750
F 0 "SW?" H 9050 1425 50  0000 C CNN
F 1 "SW_SPDT" H 9050 1516 50  0000 C CNN
F 2 "" H 9050 1750 50  0001 C CNN
F 3 "~" H 9050 1750 50  0001 C CNN
	1    9050 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 1550 9600 1550
Wire Wire Line
	9600 1550 9600 1750
Wire Wire Line
	9600 1750 9250 1750
Wire Wire Line
	8850 1650 8800 1650
Wire Wire Line
	8800 1650 8800 1350
Connection ~ 8800 1350
NoConn ~ 8850 1850
$Comp
L air_quality_box:MH-Z19B J?
U 1 1 617A2DC6
P 9750 4650
F 0 "J?" H 9750 4235 50  0000 C CNN
F 1 "MH-Z19B" H 9750 4326 50  0000 C CNN
F 2 "" H 9600 4850 50  0001 C CNN
F 3 "" H 9600 4850 50  0001 C CNN
	1    9750 4650
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 617A4292
P 10300 4450
F 0 "#PWR?" H 10300 4300 50  0001 C CNN
F 1 "+5V" H 10315 4623 50  0000 C CNN
F 2 "" H 10300 4450 50  0001 C CNN
F 3 "" H 10300 4450 50  0001 C CNN
	1    10300 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617A4775
P 10500 4550
F 0 "#PWR?" H 10500 4300 50  0001 C CNN
F 1 "GND" H 10505 4377 50  0000 C CNN
F 2 "" H 10500 4550 50  0001 C CNN
F 3 "" H 10500 4550 50  0001 C CNN
	1    10500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4550 10200 4550
Wire Wire Line
	10300 4450 10200 4450
NoConn ~ 10200 4750
NoConn ~ 9300 4850
NoConn ~ 9300 4450
Text GLabel 9200 4550 0    50   Input ~ 0
UART_1_TX
Text GLabel 9200 4650 0    50   Input ~ 0
UART_1_RX
Wire Wire Line
	9300 4650 9200 4650
Wire Wire Line
	9300 4550 9200 4550
Wire Wire Line
	10000 850  9850 850 
Wire Wire Line
	10000 950  9850 950 
Wire Wire Line
	10000 1050 9850 1050
Wire Wire Line
	10000 1150 9850 1150
Wire Wire Line
	10000 1250 9850 1250
$Comp
L air_quality_box:NodeMCU_ESP8266 U?
U 1 1 617ABB77
P 1800 1800
F 0 "U?" H 1800 2625 50  0000 C CNN
F 1 "NodeMCU_ESP8266" H 1800 2534 50  0000 C CNN
F 2 "" H 1800 1800 50  0001 C CNN
F 3 "" H 1800 1800 50  0001 C CNN
	1    1800 1800
	1    0    0    -1  
$EndComp
NoConn ~ 1400 1200
NoConn ~ 1400 1300
NoConn ~ 1400 1400
NoConn ~ 1400 1500
NoConn ~ 1400 1600
NoConn ~ 1400 1700
NoConn ~ 1400 1800
NoConn ~ 1400 1900
NoConn ~ 1400 2000
NoConn ~ 1400 2200
NoConn ~ 1400 2300
NoConn ~ 1400 2400
NoConn ~ 2200 1700
NoConn ~ 2200 2300
NoConn ~ 2200 2400
NoConn ~ 2200 2600
$Comp
L power:+5V #PWR?
U 1 1 617B2D88
P 1000 2600
F 0 "#PWR?" H 1000 2450 50  0001 C CNN
F 1 "+5V" H 1015 2773 50  0000 C CNN
F 2 "" H 1000 2600 50  0001 C CNN
F 3 "" H 1000 2600 50  0001 C CNN
	1    1000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2600 1000 2600
$Comp
L power:GND #PWR?
U 1 1 617B43CF
P 750 2900
F 0 "#PWR?" H 750 2650 50  0001 C CNN
F 1 "GND" H 755 2727 50  0000 C CNN
F 2 "" H 750 2900 50  0001 C CNN
F 3 "" H 750 2900 50  0001 C CNN
	1    750  2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2100 1300 2500
Wire Wire Line
	1300 2500 1400 2500
Wire Wire Line
	1400 2100 1300 2100
Text GLabel 2450 1400 2    50   Input ~ 0
I2C_SDA
Text GLabel 2450 1300 2    50   Input ~ 0
I2C_SCL
Text GLabel 2450 1700 2    50   Input ~ 0
UART_1_TX
Text GLabel 2450 1600 2    50   Input ~ 0
UART_1_RX
Text GLabel 2450 2000 2    50   Input ~ 0
SPI_MOSI
Text GLabel 2450 1900 2    50   Input ~ 0
SPI_SCL
Wire Wire Line
	2450 1900 2200 1900
Wire Wire Line
	2450 2000 2200 2000
Text GLabel 2300 1100 1    50   Input ~ 0
LCD_RST
Text GLabel 2450 2200 2    50   Input ~ 0
LCD_CS
Text GLabel 2450 2100 2    50   Input ~ 0
LCD_DC
Wire Wire Line
	2450 2100 2200 2100
Wire Wire Line
	2450 2200 2200 2200
$Comp
L power:GND #PWR?
U 1 1 617BFAC2
P 2950 2500
F 0 "#PWR?" H 2950 2250 50  0001 C CNN
F 1 "GND" H 2955 2327 50  0000 C CNN
F 2 "" H 2950 2500 50  0001 C CNN
F 3 "" H 2950 2500 50  0001 C CNN
	1    2950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2500 2950 1800
Wire Wire Line
	2950 1800 2200 1800
Wire Wire Line
	2200 2500 2950 2500
Connection ~ 2950 2500
Wire Notes Line
	600  650  600  3150
Wire Notes Line
	600  3150 3150 3150
Wire Notes Line
	3150 650  600  650 
Text Notes 600  600  0    50   ~ 0
MCU
$Comp
L Device:C_Small C?
U 1 1 617D72CD
P 1000 2800
F 0 "C?" H 908 2754 50  0000 R CNN
F 1 "10uF" H 908 2845 50  0000 R CNN
F 2 "" H 1000 2800 50  0001 C CNN
F 3 "~" H 1000 2800 50  0001 C CNN
	1    1000 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 617D810D
P 1400 2800
F 0 "C?" H 1308 2754 50  0000 R CNN
F 1 "10uF" H 1308 2845 50  0000 R CNN
F 2 "" H 1400 2800 50  0001 C CNN
F 3 "~" H 1400 2800 50  0001 C CNN
	1    1400 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 617E554F
P 2900 1100
F 0 "R?" H 2959 1146 50  0000 L CNN
F 1 "10k" H 2959 1055 50  0000 L CNN
F 2 "" H 2900 1100 50  0001 C CNN
F 3 "~" H 2900 1100 50  0001 C CNN
	1    2900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1600 2250 1600
Wire Wire Line
	2250 1600 2250 1700
Wire Wire Line
	2250 1700 2450 1700
Wire Wire Line
	2200 1500 2300 1500
Wire Wire Line
	2300 1500 2300 1600
Wire Wire Line
	2300 1600 2450 1600
Wire Wire Line
	2450 1300 2400 1300
Wire Wire Line
	2450 1400 2400 1400
Wire Notes Line
	3150 3150 3150 650 
$Comp
L Device:R_Small R?
U 1 1 617F1057
P 2650 1100
F 0 "R?" H 2709 1146 50  0000 L CNN
F 1 "10k" H 2709 1055 50  0000 L CNN
F 2 "" H 2650 1100 50  0001 C CNN
F 3 "~" H 2650 1100 50  0001 C CNN
	1    2650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1300 2400 1200
Wire Wire Line
	2400 1200 2650 1200
Connection ~ 2400 1300
Wire Wire Line
	2400 1300 2200 1300
Wire Wire Line
	2400 1400 2400 1500
Wire Wire Line
	2400 1500 2900 1500
Wire Wire Line
	2900 1500 2900 1200
Connection ~ 2400 1400
Wire Wire Line
	2400 1400 2200 1400
Wire Wire Line
	2650 1000 2900 1000
$Comp
L power:+5V #PWR?
U 1 1 617F67A9
P 2900 1000
F 0 "#PWR?" H 2900 850 50  0001 C CNN
F 1 "+5V" H 2915 1173 50  0000 C CNN
F 2 "" H 2900 1000 50  0001 C CNN
F 3 "" H 2900 1000 50  0001 C CNN
	1    2900 1000
	1    0    0    -1  
$EndComp
Connection ~ 2900 1000
Wire Wire Line
	2300 1100 2300 1200
Wire Wire Line
	2300 1200 2200 1200
Wire Wire Line
	1400 2900 1000 2900
Connection ~ 1000 2900
Wire Wire Line
	1000 2900 750  2900
Wire Wire Line
	1000 2600 1000 2700
Connection ~ 1000 2600
Wire Wire Line
	1400 2600 1400 2700
Connection ~ 1400 2600
Wire Wire Line
	1300 2100 750  2100
Wire Wire Line
	750  2100 750  2900
Connection ~ 1300 2100
Connection ~ 750  2900
$EndSCHEMATC
