EESchema Schematic File Version 4
LIBS:pcb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L MCU_Microchip_ATmega:ATmega32U4-AU S?
U 1 1 5CF6910D
P 5450 4350
AR Path="/5CF6910D" Ref="S?"  Part="1" 
AR Path="/5CF68CB3/5CF6910D" Ref="S201"  Part="1" 
F 0 "S201" H 4950 6100 50  0000 L BNN
F 1 "ATmega32U4-AU" H 5550 2600 50  0000 L TNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 5450 4350 50  0001 C CIN
F 3 "" H 5450 4350 50  0001 C CNN
	1    5450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6150 5450 6200
Wire Wire Line
	5450 6200 5350 6200
Wire Wire Line
	5350 6200 5350 6150
Connection ~ 5350 6200
Wire Wire Line
	5350 2550 5350 2500
Wire Wire Line
	5450 2550 5450 2500
Wire Wire Line
	5450 2500 5350 2500
Connection ~ 5350 2500
Wire Wire Line
	5550 2550 5550 2500
$Comp
L Device:C C?
U 1 1 5CF69126
P 5200 2050
AR Path="/5CF69126" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5CF69126" Ref="C201"  Part="1" 
F 0 "C201" H 5315 2096 50  0000 L CNN
F 1 "100n" H 5315 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 1900 50  0001 C CNN
F 3 "~" H 5200 2050 50  0001 C CNN
	1    5200 2050
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CF6912D
P 5500 2050
AR Path="/5CF6912D" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5CF6912D" Ref="C202"  Part="1" 
F 0 "C202" H 5615 2096 50  0000 L CNN
F 1 "100n" H 5615 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5538 1900 50  0001 C CNN
F 3 "~" H 5500 2050 50  0001 C CNN
	1    5500 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CF69134
P 5950 2050
AR Path="/5CF69134" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5CF69134" Ref="C203"  Part="1" 
F 0 "C203" H 6065 2096 50  0000 L CNN
F 1 "100n" H 6065 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5988 1900 50  0001 C CNN
F 3 "~" H 5950 2050 50  0001 C CNN
	1    5950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1750 5350 2500
Wire Wire Line
	5500 1750 5500 1900
Wire Wire Line
	5950 1750 5950 1900
Connection ~ 5350 1750
Wire Wire Line
	5350 1750 5500 1750
Wire Wire Line
	5350 1750 5200 1750
Wire Wire Line
	5200 1750 5200 1900
$Comp
L Device:C C?
U 1 1 5CF6915D
P 3700 3600
AR Path="/5CF6915D" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5CF6915D" Ref="C208"  Part="1" 
F 0 "C208" H 3815 3646 50  0000 L CNN
F 1 "10n" H 3815 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3738 3450 50  0001 C CNN
F 3 "~" H 3700 3600 50  0001 C CNN
	1    3700 3600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CF69164
P 4750 4350
AR Path="/5CF69164" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5CF69164" Ref="C209"  Part="1" 
F 0 "C209" H 4865 4396 50  0000 L CNN
F 1 "1u" H 4865 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4788 4200 50  0001 C CNN
F 3 "~" H 4750 4350 50  0001 C CNN
	1    4750 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 3450 4050 3450
Wire Wire Line
	4850 4150 4750 4150
Wire Wire Line
	4750 4150 4750 4200
$Comp
L Device:R R?
U 1 1 5CF6917C
P 6150 1550
AR Path="/5CF6917C" Ref="R?"  Part="1" 
AR Path="/5CF68CB3/5CF6917C" Ref="R201"  Part="1" 
F 0 "R201" H 6219 1596 50  0000 L CNN
F 1 "100R" H 6219 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 1550 50  0001 C CNN
F 3 "~" H 6150 1550 50  0001 C CNN
	1    6150 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 2850 4650 2850
Wire Wire Line
	4650 2850 4650 2250
Wire Wire Line
	4650 2250 4200 2250
$Comp
L Device:R R?
U 1 1 5CF69193
P 4650 1900
AR Path="/5CF69193" Ref="R?"  Part="1" 
AR Path="/5CF68CB3/5CF69193" Ref="R202"  Part="1" 
F 0 "R202" H 4581 1946 50  0000 R CNN
F 1 "1k" H 4581 1855 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 1900 50  0001 C CNN
F 3 "~" H 4650 1900 50  0001 C CNN
	1    4650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2050 4650 2250
Connection ~ 4650 2250
Wire Wire Line
	4600 2850 4650 2850
Connection ~ 4650 2850
Wire Wire Line
	4850 3050 4750 3050
Wire Wire Line
	4750 3050 4750 3000
Wire Wire Line
	4850 3250 4750 3250
Wire Wire Line
	4750 3250 4750 3300
$Comp
L Device:C_Small C?
U 1 1 5CF691B2
P 4350 3300
AR Path="/5CF691B2" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5CF691B2" Ref="C207"  Part="1" 
F 0 "C207" V 4250 3300 50  0000 C CNN
F 1 "15p" V 4450 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 3300 50  0001 C CNN
F 3 "~" H 4350 3300 50  0001 C CNN
	1    4350 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF691B9
P 4350 3000
AR Path="/5CF691B9" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5CF691B9" Ref="C206"  Part="1" 
F 0 "C206" V 4250 3000 50  0000 C CNN
F 1 "15p" V 4450 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 3000 50  0001 C CNN
F 3 "~" H 4350 3000 50  0001 C CNN
	1    4350 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3000 4200 3000
Wire Wire Line
	4200 3000 4200 3150
Wire Wire Line
	4200 3300 4250 3300
Wire Wire Line
	4200 3150 4100 3150
Connection ~ 4200 3150
Wire Wire Line
	4200 3150 4200 3300
Wire Wire Line
	4450 3300 4600 3300
Wire Wire Line
	4450 3000 4600 3000
$Comp
L Device:Crystal_Small Q?
U 1 1 5CF691CE
P 4600 3150
AR Path="/5CF691CE" Ref="Q?"  Part="1" 
AR Path="/5CF68CB3/5CF691CE" Ref="Q201"  Part="1" 
F 0 "Q201" V 4554 3062 50  0000 R CNN
F 1 "16M" V 4645 3062 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 4600 3150 50  0001 C CNN
F 3 "~" H 4600 3150 50  0001 C CNN
	1    4600 3150
	0    -1   1    0   
$EndComp
Wire Wire Line
	4600 3050 4600 3000
Connection ~ 4600 3000
Wire Wire Line
	4600 3000 4750 3000
Wire Wire Line
	4600 3250 4600 3300
Connection ~ 4600 3300
Wire Wire Line
	4600 3300 4750 3300
$Comp
L Connector:AVR-ISP-6 X201
U 1 1 5CF6BB45
P 9150 3700
F 0 "X201" H 8870 3796 50  0000 R CNN
F 1 "AVR-ISP-6" H 8870 3705 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 8900 3750 50  0001 C CNN
F 3 " ~" H 7875 3150 50  0001 C CNN
	1    9150 3700
	-1   0    0    -1  
$EndComp
Text HLabel 3800 850  0    50   Input ~ 0
Vsupply
Text HLabel 3800 1150 0    50   Input ~ 0
GND
Wire Wire Line
	3800 850  3850 850 
Text Label 3900 850  0    50   ~ 0
Vcc_uc
Text Label 5350 1450 0    50   ~ 0
Vcc_uc
Wire Wire Line
	5350 1450 5350 1750
Text Label 4650 1650 0    50   ~ 0
Vcc_uc
Wire Wire Line
	4650 1750 4650 1650
Text Label 3900 1150 0    50   ~ 0
GND_uc
Text Label 4100 3150 2    50   ~ 0
GND_uc
Text Label 4700 4600 2    50   ~ 0
GND_uc
Wire Wire Line
	4750 4500 4750 4600
Wire Wire Line
	4750 4600 4700 4600
Text Label 5300 6350 2    50   ~ 0
GND_uc
Wire Wire Line
	5350 6350 5300 6350
Wire Wire Line
	5350 6200 5350 6350
Text Label 6050 2300 0    50   ~ 0
GND_uc
Wire Wire Line
	5200 2200 5200 2300
Wire Wire Line
	5200 2300 5500 2300
Wire Wire Line
	5500 2200 5500 2300
Wire Wire Line
	5950 2200 5950 2300
Text HLabel 3800 1500 0    50   Input ~ 0
Vref
Text Label 3900 1500 0    50   ~ 0
Vref_uc
Text Label 6150 1300 0    50   ~ 0
Vref_uc
Text Label 3800 3800 0    50   ~ 0
GND_uc
Wire Wire Line
	3800 3800 3700 3800
Wire Wire Line
	3700 3800 3700 3750
Text HLabel 4600 2850 0    50   Input ~ 0
~RST
Text HLabel 4750 3650 0    50   Input ~ 0
VBUS
Text HLabel 4750 3850 0    50   BiDi ~ 0
D+
Text HLabel 4750 3950 0    50   BiDi ~ 0
D-
Wire Wire Line
	4850 3650 4750 3650
Wire Wire Line
	4750 3850 4850 3850
Wire Wire Line
	4750 3950 4850 3950
Text Label 9300 3150 0    50   ~ 0
Vcc_uc
Wire Wire Line
	9300 3150 9250 3150
Wire Wire Line
	9250 3150 9250 3200
Text Label 9300 4150 0    50   ~ 0
GND_uc
Wire Wire Line
	9300 4150 9250 4150
Wire Wire Line
	9250 4150 9250 4100
Text HLabel 6150 2850 2    50   BiDi ~ 0
PB0\SS\PCINT0
Text HLabel 6400 2950 2    50   BiDi ~ 0
PB1\SCL\PCINT1
Text HLabel 6400 3050 2    50   BiDi ~ 0
PB2\MOSI\PCINT2\PDI
Text HLabel 6400 3150 2    50   BiDi ~ 0
PB3\MISO\PCINT3\PDO
Text HLabel 6150 3250 2    50   BiDi ~ 0
PB4\PCINT4\ADC11
Text HLabel 6150 3350 2    50   BiDi ~ 0
PB5\OC1A\PCINT5\~OC4B~\ADC12
Text HLabel 6150 3450 2    50   BiDi ~ 0
PB6\OC1B\PCINT6\OC4B\ADC13
Text HLabel 6150 3550 2    50   BiDi ~ 0
PB7\OC0A\OC1C\PCINT7\~RTS
Text HLabel 6150 3750 2    50   BiDi ~ 0
PC6\ICP3\CLKO\OC4A
Text HLabel 6150 3850 2    50   BiDi ~ 0
PC7\OC3A\~OC4A
Text HLabel 6150 4050 2    50   BiDi ~ 0
PD0\~INT0~\SCL\OC0B
Text HLabel 6150 4150 2    50   BiDi ~ 0
PD1\~INT1~\SDA
Text HLabel 6150 4250 2    50   BiDi ~ 0
PD2\~INT2~\RXD1
Text HLabel 6150 4350 2    50   BiDi ~ 0
PD3\~INT3~\TXD1
Text HLabel 6150 4450 2    50   BiDi ~ 0
PD4\ICP1\ADC8
Text HLabel 6150 4550 2    50   BiDi ~ 0
PD5\XCK1\~CTS
Text HLabel 6150 4650 2    50   BiDi ~ 0
PD6\T1\~OC4D~\ADC9
Text HLabel 6150 4750 2    50   BiDi ~ 0
PD7\T0\OC4D\ADC10
Text HLabel 6150 4950 2    50   BiDi ~ 0
PE2\~HWB
Text HLabel 6150 5050 2    50   BiDi ~ 0
PE6\~INT6~\AIN0
Text HLabel 6150 5250 2    50   BiDi ~ 0
PF0\ADC0
Text HLabel 6150 5350 2    50   BiDi ~ 0
PF1\ADC1
Text HLabel 6150 5450 2    50   BiDi ~ 0
PF4\ADC4\TCK
Text HLabel 6150 5550 2    50   BiDi ~ 0
PF5\ADC5\TMS
Text HLabel 6150 5650 2    50   BiDi ~ 0
PF6\ADC6\TDO
Text HLabel 6150 5750 2    50   BiDi ~ 0
PF7\ADC7\TDI
Wire Wire Line
	6150 2850 6050 2850
Wire Wire Line
	6050 2950 6400 2950
Wire Wire Line
	6400 3050 6050 3050
Wire Wire Line
	6050 3150 6400 3150
Wire Wire Line
	6150 3250 6050 3250
Wire Wire Line
	6050 3350 6150 3350
Wire Wire Line
	6050 3450 6150 3450
Wire Wire Line
	6050 3550 6150 3550
Wire Wire Line
	6050 3750 6150 3750
Wire Wire Line
	6050 3850 6150 3850
Wire Wire Line
	6050 4050 6150 4050
Wire Wire Line
	6050 4150 6150 4150
Wire Wire Line
	6050 4250 6150 4250
Wire Wire Line
	6050 4350 6150 4350
Wire Wire Line
	6050 4450 6150 4450
Wire Wire Line
	6050 4550 6150 4550
Wire Wire Line
	6050 4650 6150 4650
Wire Wire Line
	6050 4750 6150 4750
Wire Wire Line
	6050 4950 6150 4950
Wire Wire Line
	6050 5050 6150 5050
Wire Wire Line
	6050 5250 6150 5250
Wire Wire Line
	6050 5350 6150 5350
Wire Wire Line
	6050 5450 6150 5450
Wire Wire Line
	6050 5550 6150 5550
Wire Wire Line
	6050 5650 6150 5650
Wire Wire Line
	6050 5750 6150 5750
Text Label 4650 2250 2    50   ~ 0
~RSTuc
Text Label 8600 3800 2    50   ~ 0
~RSTuc
Wire Wire Line
	8600 3800 8750 3800
Text Label 6350 2950 2    50   ~ 0
SCKuc
Text Label 6350 3050 2    50   ~ 0
MOSIuc
Text Label 6350 3150 2    50   ~ 0
MISOuc
Text Label 8600 3700 2    50   ~ 0
SCKuc
Text Label 8600 3600 2    50   ~ 0
MOSIuc
Text Label 8600 3500 2    50   ~ 0
MISOuc
Wire Wire Line
	8750 3500 8600 3500
Wire Wire Line
	8600 3600 8750 3600
Wire Wire Line
	8750 3700 8600 3700
$Comp
L Device:C C?
U 1 1 5CFD82AF
P 4200 2500
AR Path="/5CFD82AF" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5CFD82AF" Ref="C205"  Part="1" 
F 0 "C205" H 4315 2546 50  0000 L CNN
F 1 "100n" H 4315 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4238 2350 50  0001 C CNN
F 3 "~" H 4200 2500 50  0001 C CNN
	1    4200 2500
	-1   0    0    -1  
$EndComp
Text Label 4150 2750 2    50   ~ 0
GND_uc
Wire Wire Line
	4150 2750 4200 2750
Wire Wire Line
	4200 2750 4200 2650
Wire Wire Line
	4200 2250 4200 2350
$Comp
L Modules:TestPoint_Alt P?
U 1 1 5D314B0A
P 4050 3450
AR Path="/5D314B0A" Ref="P?"  Part="1" 
AR Path="/5CF68CB3/5D314B0A" Ref="P203"  Part="1" 
F 0 "P203" H 4050 3525 50  0000 C BNN
F 1 "TestPoint_Alt" H 4325 3475 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4250 3450 50  0001 C CNN
F 3 "~" H 4250 3450 50  0001 C CNN
	1    4050 3450
	1    0    0    -1  
$EndComp
Connection ~ 4050 3450
Wire Wire Line
	4050 3450 3700 3450
$Comp
L Modules:TestPoint_Alt P?
U 1 1 5D314CB2
P 4750 3000
AR Path="/5D314CB2" Ref="P?"  Part="1" 
AR Path="/5CF68CB3/5D314CB2" Ref="P201"  Part="1" 
F 0 "P201" H 4775 3050 50  0000 L CNN
F 1 "TestPoint_Alt" H 5025 3025 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4950 3000 50  0001 C CNN
F 3 "~" H 4950 3000 50  0001 C CNN
	1    4750 3000
	1    0    0    -1  
$EndComp
Connection ~ 4750 3000
$Comp
L Modules:TestPoint_Alt P?
U 1 1 5D314D5A
P 4750 3300
AR Path="/5D314D5A" Ref="P?"  Part="1" 
AR Path="/5CF68CB3/5D314D5A" Ref="P202"  Part="1" 
F 0 "P202" H 4725 3350 50  0000 R CNN
F 1 "TestPoint_Alt" H 5025 3325 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4950 3300 50  0001 C CNN
F 3 "~" H 4950 3300 50  0001 C CNN
	1    4750 3300
	-1   0    0    1   
$EndComp
Connection ~ 4750 3300
$Comp
L Modules:TestPoint_Alt P?
U 1 1 5D3150EF
P 4750 4150
AR Path="/5D3150EF" Ref="P?"  Part="1" 
AR Path="/5CF68CB3/5D3150EF" Ref="P204"  Part="1" 
F 0 "P204" H 4750 4225 50  0000 C BNN
F 1 "TestPoint_Alt" H 5025 4175 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4950 4150 50  0001 C CNN
F 3 "~" H 4950 4150 50  0001 C CNN
	1    4750 4150
	1    0    0    -1  
$EndComp
Connection ~ 4750 4150
$Comp
L power:PWR_FLAG #FLG0201
U 1 1 5D3BAF3F
P 3850 850
F 0 "#FLG0201" H 3850 925 50  0001 C CNN
F 1 "PWR_FLAG" H 3850 1024 50  0000 C CNN
F 2 "" H 3850 850 50  0001 C CNN
F 3 "~" H 3850 850 50  0001 C CNN
	1    3850 850 
	1    0    0    -1  
$EndComp
Connection ~ 3850 850 
Wire Wire Line
	3850 850  3900 850 
Wire Wire Line
	3800 1500 3850 1500
Wire Wire Line
	3800 1150 3900 1150
$Comp
L Device:C C?
U 1 1 5D72051F
P 6350 2050
AR Path="/5D72051F" Ref="C?"  Part="1" 
AR Path="/5CF68CB3/5D72051F" Ref="C204"  Part="1" 
F 0 "C204" H 6465 2096 50  0000 L CNN
F 1 "100n" H 6465 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6388 1900 50  0001 C CNN
F 3 "~" H 6350 2050 50  0001 C CNN
	1    6350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2300 6350 2200
Wire Wire Line
	5950 2300 6350 2300
Wire Wire Line
	5950 1750 6150 1750
Wire Wire Line
	6350 1750 6350 1900
Wire Wire Line
	6150 1700 6150 1750
Connection ~ 6150 1750
Wire Wire Line
	6150 1750 6350 1750
Wire Wire Line
	6150 1400 6150 1300
Wire Wire Line
	5550 2500 5800 2500
Wire Wire Line
	5800 2500 5800 1750
Wire Wire Line
	5800 1750 5950 1750
Connection ~ 5950 1750
$Comp
L power:PWR_FLAG #FLG0202
U 1 1 5D7427D1
P 3850 1500
F 0 "#FLG0202" H 3850 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 3850 1674 50  0000 C CNN
F 2 "" H 3850 1500 50  0001 C CNN
F 3 "~" H 3850 1500 50  0001 C CNN
	1    3850 1500
	1    0    0    -1  
$EndComp
Connection ~ 3850 1500
Wire Wire Line
	3850 1500 3900 1500
Wire Wire Line
	5500 2300 5950 2300
Connection ~ 5500 2300
Connection ~ 5950 2300
$EndSCHEMATC
