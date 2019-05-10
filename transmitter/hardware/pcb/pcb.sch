EESchema Schematic File Version 4
LIBS:pcb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "jeu. 02 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8700 1100 0    60   ~ 0
1(Tx)
Text Label 8700 1200 0    60   ~ 0
0(Rx)
Text Label 8700 1500 0    60   ~ 0
2
Text Label 8700 1600 0    60   ~ 0
3(**)
Text Label 8700 1700 0    60   ~ 0
4
Text Label 8700 1800 0    60   ~ 0
5(**)
Text Label 8700 1900 0    60   ~ 0
6(**)
Text Label 8700 2000 0    60   ~ 0
7
Text Label 8700 2100 0    60   ~ 0
8
Text Label 8700 2200 0    60   ~ 0
9(**)
Text Label 10550 1800 0    60   ~ 0
A0
Text Label 10550 1700 0    60   ~ 0
A1
Text Label 10550 1600 0    60   ~ 0
A2
Text Label 10550 1500 0    60   ~ 0
A3
Text Label 10550 1300 0    60   ~ 0
Reset
Text Notes 8500 575  0    60   ~ 0
Shield for Arduino Nano
Text Label 10250 950  1    60   ~ 0
Vin
Wire Notes Line
	8475 650  9675 650 
Wire Notes Line
	9675 650  9675 475 
$Comp
L power:GND #PWR01
U 1 1 56D7422C
P 9250 2350
F 0 "#PWR01" H 9250 2100 50  0001 C CNN
F 1 "GND" H 9250 2200 50  0000 C CNN
F 2 "" H 9250 2350 50  0000 C CNN
F 3 "" H 9250 2350 50  0000 C CNN
	1    9250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1400 9250 1400
Wire Wire Line
	9250 1400 9250 2350
Wire Wire Line
	9350 1100 8700 1100
Wire Wire Line
	8700 1200 9350 1200
Wire Wire Line
	8700 1500 9350 1500
Wire Wire Line
	9350 1600 8700 1600
Wire Wire Line
	8700 1700 9350 1700
Wire Wire Line
	9350 1800 8700 1800
Wire Wire Line
	8700 1900 9350 1900
Wire Wire Line
	9350 2000 8700 2000
Wire Wire Line
	8700 2100 9350 2100
Wire Wire Line
	9350 2200 8700 2200
$Comp
L power:GND #PWR02
U 1 1 56D746ED
P 10250 2350
F 0 "#PWR02" H 10250 2100 50  0001 C CNN
F 1 "GND" H 10250 2200 50  0000 C CNN
F 2 "" H 10250 2350 50  0000 C CNN
F 3 "" H 10250 2350 50  0000 C CNN
	1    10250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2350 10250 1200
Wire Wire Line
	10250 1200 10150 1200
Wire Wire Line
	10150 1100 10250 1100
Wire Wire Line
	10250 1100 10250 950 
$Comp
L power:+5V #PWR03
U 1 1 56D747E8
P 10350 950
F 0 "#PWR03" H 10350 800 50  0001 C CNN
F 1 "+5V" V 10350 1150 28  0000 C CNN
F 2 "" H 10350 950 50  0000 C CNN
F 3 "" H 10350 950 50  0000 C CNN
	1    10350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 950  10350 1400
Wire Wire Line
	10350 1400 10150 1400
Wire Wire Line
	10550 1300 10150 1300
Wire Wire Line
	10150 1500 10550 1500
Wire Wire Line
	10550 1600 10150 1600
Wire Wire Line
	10550 1700 10150 1700
Wire Wire Line
	10150 1800 10550 1800
Wire Wire Line
	10550 1900 10150 1900
Wire Wire Line
	10550 2000 10150 2000
Wire Wire Line
	10150 2100 10550 2100
Wire Wire Line
	10550 2200 10150 2200
Wire Notes Line
	11200 2850 8450 2850
Wire Notes Line
	8450 2850 8450 500 
Text Notes 9650 1100 0    60   ~ 0
1
Text Label 10550 1900 0    50   ~ 0
SCK
Text Label 10550 2000 0    50   ~ 0
MISO
Text Label 10550 2100 0    50   ~ 0
MOSI
Text Label 10550 2200 0    50   ~ 0
D10
$Comp
L Connector_Generic:Conn_01x12 P2
U 1 1 5CD58AD3
P 9950 1600
F 0 "P2" H 9950 2200 50  0000 C CNN
F 1 "analog" V 10050 1600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 9950 1600 50  0001 C CNN
F 3 "~" H 9950 1600 50  0001 C CNN
	1    9950 1600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 P1
U 1 1 5CD58C0F
P 9550 1600
F 0 "P1" H 9550 2200 50  0000 C CNN
F 1 "digital" V 9650 1600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 9550 1600 50  0001 C CNN
F 3 "~" H 9550 1600 50  0001 C CNN
	1    9550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1300 9250 1300
Wire Wire Line
	9250 1300 9250 1400
Connection ~ 9250 1400
$EndSCHEMATC
