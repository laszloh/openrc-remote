EESchema Schematic File Version 4
LIBS:Mega_2560_core_2.2_PM-cache
EELAYER 29 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 4 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega2560-16AU S401
U 1 1 5D4155EB
P 4100 5500
F 0 "S401" H 3500 8300 50  0000 C CNN
F 1 "ATmega2560-16AU" H 3600 2700 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 4100 5500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2549-8-bit-AVR-Microcontroller-ATmega640-1280-1281-2560-2561_datasheet.pdf" H 4100 5500 50  0001 C CNN
	1    4100 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0401
U 1 1 5D41B441
P 4050 1900
F 0 "#PWR0401" H 4050 1750 50  0001 C CNN
F 1 "+5V" H 4065 2073 50  0000 C CNN
F 2 "" H 4050 1900 50  0001 C CNN
F 3 "" H 4050 1900 50  0001 C CNN
	1    4050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0402
U 1 1 5D41BF9B
P 4250 1900
F 0 "#PWR0402" H 4250 1750 50  0001 C CNN
F 1 "+5VA" H 4265 2073 50  0000 C CNN
F 2 "" H 4250 1900 50  0001 C CNN
F 3 "" H 4250 1900 50  0001 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0415
U 1 1 5D41C413
P 4100 8500
F 0 "#PWR0415" H 4100 8250 50  0001 C CNN
F 1 "GND" H 4105 8327 50  0000 C CNN
F 2 "" H 4100 8500 50  0001 C CNN
F 3 "" H 4100 8500 50  0001 C CNN
	1    4100 8500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0416
U 1 1 5D41CBED
P 4400 8500
F 0 "#PWR0416" H 4400 8250 50  0001 C CNN
F 1 "GNDA" H 4405 8327 50  0000 C CNN
F 2 "" H 4400 8500 50  0001 C CNN
F 3 "" H 4400 8500 50  0001 C CNN
	1    4400 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 8400 4100 8450
Connection ~ 4100 8450
Wire Wire Line
	4100 8450 4100 8500
$Comp
L SilentWorks:Starpoint-2 STP401
U 1 1 5D41E7F9
P 4250 8450
F 0 "STP401" H 4250 8539 50  0000 C CNN
F 1 "Starpoint-2" H 4250 8400 50  0001 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4250 8450 50  0001 C CNN
F 3 "" H 4250 8450 50  0001 C CNN
	1    4250 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 8450 4200 8450
Wire Wire Line
	4300 8450 4400 8450
Wire Wire Line
	4400 8450 4400 8500
Wire Wire Line
	4200 2600 4200 2050
Wire Wire Line
	4200 2050 4250 2050
Wire Wire Line
	4250 2050 4250 1900
Connection ~ 4250 2050
Wire Wire Line
	4050 2050 3950 2050
Wire Wire Line
	4050 2050 4050 1900
Wire Wire Line
	4050 2050 4100 2050
Wire Wire Line
	4100 2050 4100 2600
Connection ~ 4050 2050
$Comp
L Device:C C405
U 1 1 5D421333
P 4350 2250
F 0 "C405" H 4465 2296 50  0000 L CNN
F 1 "100n" H 4465 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4388 2100 50  0001 C CNN
F 3 "~" H 4350 2250 50  0001 C CNN
	1    4350 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C406
U 1 1 5D421E68
P 4750 2250
F 0 "C406" H 4865 2296 50  0000 L CNN
F 1 "10u" H 4865 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4788 2100 50  0001 C CNN
F 3 "~" H 4750 2250 50  0001 C CNN
	1    4750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2050 4750 2100
Wire Wire Line
	4250 2050 4350 2050
Wire Wire Line
	4350 2100 4350 2050
Connection ~ 4350 2050
Wire Wire Line
	4350 2050 4750 2050
$Comp
L power:GNDA #PWR0407
U 1 1 5D42252F
P 4350 2400
F 0 "#PWR0407" H 4350 2150 50  0001 C CNN
F 1 "GNDA" H 4355 2227 50  0000 C CNN
F 2 "" H 4350 2400 50  0001 C CNN
F 3 "" H 4350 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0408
U 1 1 5D4239DC
P 4750 2400
F 0 "#PWR0408" H 4750 2150 50  0001 C CNN
F 1 "GNDA" H 4755 2227 50  0000 C CNN
F 2 "" H 4750 2400 50  0001 C CNN
F 3 "" H 4750 2400 50  0001 C CNN
	1    4750 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C404
U 1 1 5D426924
P 3950 2250
F 0 "C404" H 3835 2204 50  0000 R CNN
F 1 "10u" H 3835 2295 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3988 2100 50  0001 C CNN
F 3 "~" H 3950 2250 50  0001 C CNN
	1    3950 2250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0406
U 1 1 5D426FF2
P 3950 2400
F 0 "#PWR0406" H 3950 2150 50  0001 C CNN
F 1 "GND" H 3955 2227 50  0000 C CNN
F 2 "" H 3950 2400 50  0001 C CNN
F 3 "" H 3950 2400 50  0001 C CNN
	1    3950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2100 3950 2050
Connection ~ 3950 2050
$Comp
L Device:C C403
U 1 1 5D428B83
P 3550 2250
F 0 "C403" H 3435 2204 50  0000 R CNN
F 1 "100n" H 3435 2295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3588 2100 50  0001 C CNN
F 3 "~" H 3550 2250 50  0001 C CNN
	1    3550 2250
	1    0    0    1   
$EndComp
$Comp
L Device:C C402
U 1 1 5D429594
P 3150 2250
F 0 "C402" H 3035 2204 50  0000 R CNN
F 1 "100n" H 3035 2295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3188 2100 50  0001 C CNN
F 3 "~" H 3150 2250 50  0001 C CNN
	1    3150 2250
	1    0    0    1   
$EndComp
$Comp
L Device:C C401
U 1 1 5D429874
P 2750 2250
F 0 "C401" H 2635 2204 50  0000 R CNN
F 1 "100n" H 2635 2295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2788 2100 50  0001 C CNN
F 3 "~" H 2750 2250 50  0001 C CNN
	1    2750 2250
	1    0    0    1   
$EndComp
Wire Wire Line
	2750 2050 2750 2100
Wire Wire Line
	2750 2050 3150 2050
Wire Wire Line
	3150 2100 3150 2050
Connection ~ 3150 2050
Wire Wire Line
	3150 2050 3550 2050
Wire Wire Line
	3550 2100 3550 2050
Connection ~ 3550 2050
Wire Wire Line
	3550 2050 3950 2050
$Comp
L power:GND #PWR0405
U 1 1 5D42A865
P 3550 2400
F 0 "#PWR0405" H 3550 2150 50  0001 C CNN
F 1 "GND" H 3555 2227 50  0000 C CNN
F 2 "" H 3550 2400 50  0001 C CNN
F 3 "" H 3550 2400 50  0001 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0404
U 1 1 5D42AA87
P 3150 2400
F 0 "#PWR0404" H 3150 2150 50  0001 C CNN
F 1 "GND" H 3155 2227 50  0000 C CNN
F 2 "" H 3150 2400 50  0001 C CNN
F 3 "" H 3150 2400 50  0001 C CNN
	1    3150 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0403
U 1 1 5D42AC77
P 2750 2400
F 0 "#PWR0403" H 2750 2150 50  0001 C CNN
F 1 "GND" H 2755 2227 50  0000 C CNN
F 2 "" H 2750 2400 50  0001 C CNN
F 3 "" H 2750 2400 50  0001 C CNN
	1    2750 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C408
U 1 1 5D42B3EA
P 3100 3500
F 0 "C408" V 2950 3500 50  0000 C CNN
F 1 "100n" V 3250 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 3350 50  0001 C CNN
F 3 "~" H 3100 3500 50  0001 C CNN
	1    3100 3500
	0    -1   1    0   
$EndComp
Wire Wire Line
	3300 3500 3250 3500
Wire Wire Line
	2950 3500 2850 3500
Wire Wire Line
	2850 3500 2850 3550
$Comp
L power:GNDA #PWR0412
U 1 1 5D42C68E
P 2850 3550
F 0 "#PWR0412" H 2850 3300 50  0001 C CNN
F 1 "GNDA" H 2855 3377 50  0000 C CNN
F 2 "" H 2850 3550 50  0001 C CNN
F 3 "" H 2850 3550 50  0001 C CNN
	1    2850 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:Resonator_Small Y401
U 1 1 5D42F5CA
P 2800 3200
F 0 "Y401" V 2700 3050 50  0000 R CNN
F 1 "16MHz" V 2850 3050 50  0000 R CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm_HandSoldering" H 2775 3200 50  0001 C CNN
F 3 "~" H 2775 3200 50  0001 C CNN
	1    2800 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3100 2900 3100
Wire Wire Line
	2900 3300 3300 3300
Wire Wire Line
	2600 3200 2350 3200
Wire Wire Line
	2350 3200 2350 3300
$Comp
L power:GND #PWR0411
U 1 1 5D4384FE
P 2350 3300
F 0 "#PWR0411" H 2350 3050 50  0001 C CNN
F 1 "GND" H 2355 3127 50  0000 C CNN
F 2 "" H 2350 3300 50  0001 C CNN
F 3 "" H 2350 3300 50  0001 C CNN
	1    2350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2900 2000 2900
Wire Wire Line
	2000 2900 2000 2800
Wire Wire Line
	2000 2900 1900 2900
Connection ~ 2000 2900
Text HLabel 1900 2900 0    50   Input ~ 0
~RESET
$Comp
L Device:R R401
U 1 1 5D440358
P 2000 2650
F 0 "R401" H 1931 2604 50  0000 R CNN
F 1 "R" H 1931 2695 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1930 2650 50  0001 C CNN
F 3 "~" H 2000 2650 50  0001 C CNN
	1    2000 2650
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0409
U 1 1 5D440AF1
P 2000 2450
F 0 "#PWR0409" H 2000 2300 50  0001 C CNN
F 1 "+5V" H 2015 2623 50  0000 C CNN
F 2 "" H 2000 2450 50  0001 C CNN
F 3 "" H 2000 2450 50  0001 C CNN
	1    2000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2450 2000 2500
$Comp
L Device:C C407
U 1 1 5D441963
P 2000 3100
F 0 "C407" H 1885 3054 50  0000 R CNN
F 1 "10n" H 1885 3145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2038 2950 50  0001 C CNN
F 3 "~" H 2000 3100 50  0001 C CNN
	1    2000 3100
	1    0    0    1   
$EndComp
Wire Wire Line
	2000 2900 2000 2950
$Comp
L power:GND #PWR0410
U 1 1 5D4426A9
P 2000 3300
F 0 "#PWR0410" H 2000 3050 50  0001 C CNN
F 1 "GND" H 2005 3127 50  0000 C CNN
F 2 "" H 2000 3300 50  0001 C CNN
F 3 "" H 2000 3300 50  0001 C CNN
	1    2000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3250 2000 3300
Text Label 3250 2900 2    50   ~ 0
~RESET
$Comp
L Connector:AVR-ISP-6 X401
U 1 1 5D443D96
P 1500 8500
F 0 "X401" H 1221 8596 50  0000 R CNN
F 1 "AVR-ISP-6" H 1221 8505 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" V 1250 8550 50  0001 C CNN
F 3 " ~" H 225 7950 50  0001 C CNN
	1    1500 8500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0417
U 1 1 5D445AE9
P 1400 8900
F 0 "#PWR0417" H 1400 8650 50  0001 C CNN
F 1 "GND" H 1405 8727 50  0000 C CNN
F 2 "" H 1400 8900 50  0001 C CNN
F 3 "" H 1400 8900 50  0001 C CNN
	1    1400 8900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0414
U 1 1 5D447526
P 1400 8000
F 0 "#PWR0414" H 1400 7850 50  0001 C CNN
F 1 "+5V" H 1415 8173 50  0000 C CNN
F 2 "" H 1400 8000 50  0001 C CNN
F 3 "" H 1400 8000 50  0001 C CNN
	1    1400 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 8300 2150 8300
Wire Wire Line
	1900 8400 2150 8400
Wire Wire Line
	1900 8500 2150 8500
Wire Wire Line
	1900 8600 2150 8600
Text Label 2150 8600 2    50   ~ 0
~RESET
Text Label 2150 8500 2    50   ~ 0
SCK
Text Label 2150 8400 2    50   ~ 0
MOSI
Text Label 2150 8300 2    50   ~ 0
MISO
Text HLabel 5000 2900 2    50   BiDi ~ 0
PA0
Wire Wire Line
	4900 2900 5000 2900
Text HLabel 5000 3000 2    50   BiDi ~ 0
PA1
Text HLabel 5000 3100 2    50   BiDi ~ 0
PA2
Text HLabel 5000 3200 2    50   BiDi ~ 0
PA3
Text HLabel 5000 3300 2    50   BiDi ~ 0
PA4
Text HLabel 5000 3400 2    50   BiDi ~ 0
PA5
Text HLabel 5000 3500 2    50   BiDi ~ 0
PA6
Text HLabel 5000 3600 2    50   BiDi ~ 0
PA7
Wire Wire Line
	4900 3000 5000 3000
Wire Wire Line
	4900 3100 5000 3100
Wire Wire Line
	4900 3200 5000 3200
Wire Wire Line
	4900 3300 5000 3300
Wire Wire Line
	5000 3400 4900 3400
Wire Wire Line
	4900 3500 5000 3500
Wire Wire Line
	5000 3600 4900 3600
Text HLabel 5000 3800 2    50   BiDi ~ 0
PB0\~SS~\PCINT0
Wire Wire Line
	5000 3800 4900 3800
Text HLabel 5200 3900 2    50   BiDi ~ 0
PB1\SCK\PCINT1
Wire Wire Line
	4900 3900 5200 3900
Text Label 4950 3900 0    50   ~ 0
SCK
Text HLabel 5200 4000 2    50   BiDi ~ 0
PB2\MOSI\PCINT2
Wire Wire Line
	4900 4000 5200 4000
Text Label 4950 4000 0    50   ~ 0
MOSI
Text HLabel 5200 4100 2    50   BiDi ~ 0
PB3\MISO\PCINT3
Text HLabel 5000 4200 2    50   BiDi ~ 0
PB4\OC2A\PCINT4
Text HLabel 5000 4300 2    50   BiDi ~ 0
PB5\OC1A\PCINT5
Text HLabel 5000 4400 2    50   BiDi ~ 0
PB6\OC1B\PCINT6
Text HLabel 5000 4500 2    50   BiDi ~ 0
PB7\OC0A\OC1C\PCINT7
Wire Wire Line
	5200 4100 4900 4100
Text Label 4950 4100 0    50   ~ 0
MISO
Wire Wire Line
	4900 4200 5000 4200
Wire Wire Line
	5000 4300 4900 4300
Wire Wire Line
	4900 4400 5000 4400
Wire Wire Line
	5000 4500 4900 4500
Text HLabel 5000 4700 2    50   BiDi ~ 0
PC0
Text HLabel 5000 4800 2    50   BiDi ~ 0
PC1
Text HLabel 5000 4900 2    50   BiDi ~ 0
PC2
Text HLabel 5000 5000 2    50   BiDi ~ 0
PC3
Text HLabel 5000 5100 2    50   BiDi ~ 0
PC4
Text HLabel 5000 5200 2    50   BiDi ~ 0
PC5
Text HLabel 5000 5300 2    50   BiDi ~ 0
PC6
Text HLabel 5000 5400 2    50   BiDi ~ 0
PC7
Wire Wire Line
	4900 4700 5000 4700
Wire Wire Line
	5000 4800 4900 4800
Wire Wire Line
	4900 4900 5000 4900
Wire Wire Line
	5000 5000 4900 5000
Wire Wire Line
	5000 5100 4900 5100
Wire Wire Line
	4900 5200 5000 5200
Wire Wire Line
	5000 5300 4900 5300
Wire Wire Line
	4900 5400 5000 5400
Text HLabel 5950 5600 2    50   BiDi ~ 0
PD0\~INT0~\SCL
Wire Wire Line
	4900 5600 5750 5600
Wire Wire Line
	4900 5700 5550 5700
Text HLabel 5950 5700 2    50   BiDi ~ 0
PD1\~INT1~\SDA
Text HLabel 5000 5800 2    50   BiDi ~ 0
PD2\~INT2~\RXD1
Text HLabel 5000 5900 2    50   BiDi ~ 0
PD3\~INT3~\TXD1
Text HLabel 5000 6000 2    50   BiDi ~ 0
PD4\ICP1
Text HLabel 5000 6100 2    50   BiDi ~ 0
PD5\XCK1
Text HLabel 5000 6200 2    50   BiDi ~ 0
PD6\T1
Text HLabel 5000 6300 2    50   BiDi ~ 0
PD7\T0
Wire Wire Line
	5000 5800 4900 5800
Wire Wire Line
	4900 5900 5000 5900
Wire Wire Line
	5000 6000 4900 6000
Wire Wire Line
	4900 6100 5000 6100
Wire Wire Line
	5000 6200 4900 6200
Wire Wire Line
	4900 6300 5000 6300
$Comp
L Device:R R402
U 1 1 5D48006B
P 5550 5300
F 0 "R402" H 5481 5254 50  0000 R CNN
F 1 "R" H 5481 5345 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5480 5300 50  0001 C CNN
F 3 "~" H 5550 5300 50  0001 C CNN
	1    5550 5300
	1    0    0    1   
$EndComp
$Comp
L Device:R R403
U 1 1 5D480887
P 5750 5300
F 0 "R403" H 5820 5346 50  0000 L CNN
F 1 "R" H 5820 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5680 5300 50  0001 C CNN
F 3 "~" H 5750 5300 50  0001 C CNN
	1    5750 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5050 5650 5050
Wire Wire Line
	5750 5050 5750 5150
Wire Wire Line
	5550 5050 5550 5150
Wire Wire Line
	5650 5050 5650 5000
Connection ~ 5650 5050
Wire Wire Line
	5650 5050 5750 5050
Wire Wire Line
	5550 5450 5550 5700
Connection ~ 5550 5700
Wire Wire Line
	5550 5700 5950 5700
Wire Wire Line
	5750 5450 5750 5600
Connection ~ 5750 5600
Wire Wire Line
	5750 5600 5950 5600
$Comp
L power:+5V #PWR0413
U 1 1 5D48C5DB
P 5650 5000
F 0 "#PWR0413" H 5650 4850 50  0001 C CNN
F 1 "+5V" H 5665 5173 50  0000 C CNN
F 2 "" H 5650 5000 50  0001 C CNN
F 3 "" H 5650 5000 50  0001 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
Text HLabel 5000 6500 2    50   BiDi ~ 0
PE0\RXD0\PCINT8
Text HLabel 5000 6600 2    50   BiDi ~ 0
PE1\TXD0
Text HLabel 5000 6700 2    50   BiDi ~ 0
PE2\AIN0\XCK0
Text HLabel 5000 6800 2    50   BiDi ~ 0
PE3\AIN1\OC3A
Text HLabel 5000 6900 2    50   BiDi ~ 0
PE4\INT4\OC3B
Text HLabel 5000 7000 2    50   BiDi ~ 0
PE5\INT5\OC3C
Text HLabel 5000 7100 2    50   BiDi ~ 0
PE6\INT6\T3
Text HLabel 5000 7200 2    50   BiDi ~ 0
PE7\INT7\ICP3\CLK0
Wire Wire Line
	4900 6500 5000 6500
Wire Wire Line
	5000 6600 4900 6600
Wire Wire Line
	4900 6700 5000 6700
Wire Wire Line
	5000 6800 4900 6800
Wire Wire Line
	5000 6900 4900 6900
Wire Wire Line
	4900 7000 5000 7000
Wire Wire Line
	5000 7100 4900 7100
Wire Wire Line
	4900 7200 5000 7200
Text Label 4950 5600 0    50   ~ 0
SCL
Text Label 4950 5700 0    50   ~ 0
SDA
Text HLabel 5000 7400 2    50   BiDi ~ 0
PF0\ADC0
Wire Wire Line
	4900 7400 5000 7400
Text HLabel 5000 7500 2    50   BiDi ~ 0
PF1\ADC1
Text HLabel 5000 7600 2    50   BiDi ~ 0
PF2\ADC2
Text HLabel 5000 7700 2    50   BiDi ~ 0
PF3\ADC3
Text HLabel 5200 7800 2    50   BiDi ~ 0
PF4\ADC4\TCK
Text HLabel 5200 7900 2    50   BiDi ~ 0
PF5\ADC5\TMS
Text HLabel 5200 8000 2    50   BiDi ~ 0
PF6\ADC6\TDO
Text HLabel 5200 8100 2    50   BiDi ~ 0
PF7\ADC7\TDI
Wire Wire Line
	4900 7500 5000 7500
Wire Wire Line
	4900 7600 5000 7600
Wire Wire Line
	4900 7700 5000 7700
Wire Wire Line
	4900 7800 5200 7800
Wire Wire Line
	5200 7900 4900 7900
Wire Wire Line
	4900 8000 5200 8000
Wire Wire Line
	5200 8100 4900 8100
Text Label 4950 7800 0    50   ~ 0
TCK
Text Label 4950 7900 0    50   ~ 0
TMS
Text Label 4950 8000 0    50   ~ 0
TDO
Text Label 4950 8100 0    50   ~ 0
TDI
$Comp
L Connector:AVR-JTAG-10 X402
U 1 1 5D4A6739
P 1550 10200
F 0 "X402" H 1170 10246 50  0000 R CNN
F 1 "AVR-JTAG-10" H 1170 10155 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" V 1400 10350 50  0001 C CNN
F 3 " ~" H 275 9650 50  0001 C CNN
	1    1550 10200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0418
U 1 1 5D4AEC36
P 1450 9500
F 0 "#PWR0418" H 1450 9350 50  0001 C CNN
F 1 "+5V" H 1465 9673 50  0000 C CNN
F 2 "" H 1450 9500 50  0001 C CNN
F 3 "" H 1450 9500 50  0001 C CNN
	1    1450 9500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0419
U 1 1 5D4BA68D
P 1550 10800
F 0 "#PWR0419" H 1550 10550 50  0001 C CNN
F 1 "GND" H 1555 10627 50  0000 C CNN
F 2 "" H 1550 10800 50  0001 C CNN
F 3 "" H 1550 10800 50  0001 C CNN
	1    1550 10800
	1    0    0    -1  
$EndComp
Text Label 2300 9900 2    50   ~ 0
~RESET
Wire Wire Line
	2050 9900 2300 9900
Wire Wire Line
	2050 10100 2300 10100
Wire Wire Line
	2050 10200 2300 10200
Wire Wire Line
	2050 10300 2300 10300
Wire Wire Line
	2050 10400 2300 10400
Text Label 2300 10100 2    50   ~ 0
TCK
Text Label 2300 10200 2    50   ~ 0
TMS
Text Label 2300 10300 2    50   ~ 0
TDO
Text Label 2300 10400 2    50   ~ 0
TDI
NoConn ~ 2050 10000
Wire Wire Line
	1450 9500 1450 9600
NoConn ~ 1550 9600
Text HLabel 3200 7400 0    50   BiDi ~ 0
PG0
Text HLabel 3200 7500 0    50   BiDi ~ 0
PG1
Text HLabel 3200 7600 0    50   BiDi ~ 0
PG2
Text HLabel 3200 7700 0    50   BiDi ~ 0
PG3\TOSC2
Text HLabel 3200 7800 0    50   BiDi ~ 0
PG4\TOSC1
Text HLabel 3200 7900 0    50   BiDi ~ 0
PG5\OC0B
Wire Wire Line
	3300 7400 3200 7400
Wire Wire Line
	3200 7500 3300 7500
Wire Wire Line
	3300 7600 3200 7600
Wire Wire Line
	3200 7700 3300 7700
Wire Wire Line
	3200 7800 3300 7800
Wire Wire Line
	3300 7900 3200 7900
Text HLabel 3200 6500 0    50   BiDi ~ 0
PH0\RXD2
Text HLabel 3200 6600 0    50   BiDi ~ 0
PH1\TXD2
Text HLabel 3200 6700 0    50   BiDi ~ 0
PH2\XCK2
Text HLabel 3200 6800 0    50   BiDi ~ 0
PH3\OC4A
Text HLabel 3200 6900 0    50   BiDi ~ 0
PH4\OC4B
Text HLabel 3200 7000 0    50   BiDi ~ 0
PH5\OC4C
Text HLabel 3200 7100 0    50   BiDi ~ 0
PH6\OC2B
Text HLabel 3200 7200 0    50   BiDi ~ 0
PH7\T4
Wire Wire Line
	3300 6500 3200 6500
Wire Wire Line
	3200 6600 3300 6600
Wire Wire Line
	3300 6700 3200 6700
Wire Wire Line
	3200 6800 3300 6800
Wire Wire Line
	3200 6900 3300 6900
Wire Wire Line
	3300 7000 3200 7000
Wire Wire Line
	3200 7100 3300 7100
Wire Wire Line
	3300 7200 3200 7200
Text HLabel 3200 5600 0    50   BiDi ~ 0
PJ0\RXD3\PCINT9
Text HLabel 3200 5700 0    50   BiDi ~ 0
PJ1\TXD3\PCINT10
Text HLabel 3200 5800 0    50   BiDi ~ 0
PJ2\XCK3\PCINT11
Text HLabel 3200 5900 0    50   BiDi ~ 0
PJ3\PCINT12
Text HLabel 3200 6000 0    50   BiDi ~ 0
PJ4\PCINT13
Text HLabel 3200 6100 0    50   BiDi ~ 0
PJ5\PCINT14
Text HLabel 3200 6200 0    50   BiDi ~ 0
PJ6\PCINT15
Text HLabel 3200 6300 0    50   BiDi ~ 0
PJ7
Wire Wire Line
	3300 5600 3200 5600
Wire Wire Line
	3200 5700 3300 5700
Wire Wire Line
	3300 5800 3200 5800
Wire Wire Line
	3200 5900 3300 5900
Wire Wire Line
	3200 6000 3300 6000
Wire Wire Line
	3300 6100 3200 6100
Wire Wire Line
	3200 6200 3300 6200
Wire Wire Line
	3300 6300 3200 6300
Text HLabel 3200 4700 0    50   BiDi ~ 0
PK0\ADC8\PCINT16
Text HLabel 3200 4800 0    50   BiDi ~ 0
PK1\ADC9\PCINT17
Text HLabel 3200 4900 0    50   BiDi ~ 0
PK2\ADC10\PCINT17
Text HLabel 3200 5000 0    50   BiDi ~ 0
PK3\ADC11\PCINT19
Text HLabel 3200 5100 0    50   BiDi ~ 0
PK4\ADC12\PCINT20
Text HLabel 3200 5200 0    50   BiDi ~ 0
PK5\ADC13\PCINT21
Text HLabel 3200 5300 0    50   BiDi ~ 0
PK6\ADC14\PCINT22
Text HLabel 3200 5400 0    50   BiDi ~ 0
PK7\ADC15\PCINT23
Wire Wire Line
	3300 4700 3200 4700
Wire Wire Line
	3200 4800 3300 4800
Wire Wire Line
	3300 4900 3200 4900
Wire Wire Line
	3200 5000 3300 5000
Wire Wire Line
	3200 5100 3300 5100
Wire Wire Line
	3300 5200 3200 5200
Wire Wire Line
	3200 5300 3300 5300
Wire Wire Line
	3300 5400 3200 5400
Text HLabel 3200 3800 0    50   BiDi ~ 0
PL0\ICP4
Text HLabel 3200 3900 0    50   BiDi ~ 0
PL1\ICP5
Text HLabel 3200 4000 0    50   BiDi ~ 0
PL2\T5
Text HLabel 3200 4100 0    50   BiDi ~ 0
PL3\OC5A
Text HLabel 3200 4200 0    50   BiDi ~ 0
PL4\OC5B
Text HLabel 3200 4300 0    50   BiDi ~ 0
PL5\OC5C
Text HLabel 3200 4400 0    50   BiDi ~ 0
PL6
Text HLabel 3200 4500 0    50   BiDi ~ 0
PL7
Wire Wire Line
	3300 3800 3200 3800
Wire Wire Line
	3200 3900 3300 3900
Wire Wire Line
	3300 4000 3200 4000
Wire Wire Line
	3200 4100 3300 4100
Wire Wire Line
	3200 4200 3300 4200
Wire Wire Line
	3300 4300 3200 4300
Wire Wire Line
	3200 4400 3300 4400
Wire Wire Line
	3300 4500 3200 4500
$EndSCHEMATC
