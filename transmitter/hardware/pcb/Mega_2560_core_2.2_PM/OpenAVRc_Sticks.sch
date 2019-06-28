EESchema Schematic File Version 4
LIBS:Mega_2560_core_2.2_PM-cache
EELAYER 29 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 3 5
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
L Connector_Generic:Conn_01x05 X?
U 1 1 5D154BF9
P 1000 1050
F 0 "X?" H 1100 1100 50  0000 L CNN
F 1 "Stick_RH" H 1100 1000 50  0000 L CNN
F 2 "" H 1000 1050 50  0001 C CNN
F 3 "~" H 1000 1050 50  0001 C CNN
	1    1000 1050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 X?
U 1 1 5D156043
P 1000 2750
F 0 "X?" H 1100 2800 50  0000 L CNN
F 1 "Stick_RV" H 1100 2700 50  0000 L CNN
F 2 "" H 1000 2750 50  0001 C CNN
F 3 "~" H 1000 2750 50  0001 C CNN
	1    1000 2750
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 X?
U 1 1 5D15732D
P 1000 4500
F 0 "X?" H 1100 4550 50  0000 L CNN
F 1 "Stick_LH" H 1100 4450 50  0000 L CNN
F 2 "" H 1000 4500 50  0001 C CNN
F 3 "~" H 1000 4500 50  0001 C CNN
	1    1000 4500
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 X?
U 1 1 5D157333
P 1000 6250
F 0 "X?" H 1100 6300 50  0000 L CNN
F 1 "Stick_LV" H 1100 6200 50  0000 L CNN
F 2 "" H 1000 6250 50  0001 C CNN
F 3 "~" H 1000 6250 50  0001 C CNN
	1    1000 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 850  1250 850 
Wire Wire Line
	1250 850  1250 800 
Wire Wire Line
	1200 1250 1250 1250
Wire Wire Line
	1250 1250 1250 1800
$Comp
L power:GNDA #PWR?
U 1 1 5D158EB9
P 1250 1800
F 0 "#PWR?" H 1250 1550 50  0001 C CNN
F 1 "GNDA" H 1255 1627 50  0000 C CNN
F 2 "" H 1250 1800 50  0001 C CNN
F 3 "" H 1250 1800 50  0001 C CNN
	1    1250 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D159726
P 1250 800
F 0 "#PWR?" H 1250 650 50  0001 C CNN
F 1 "+5VA" H 1265 973 50  0000 C CNN
F 2 "" H 1250 800 50  0001 C CNN
F 3 "" H 1250 800 50  0001 C CNN
	1    1250 800 
	1    0    0    -1  
$EndComp
NoConn ~ 1200 950 
NoConn ~ 1200 1150
$Comp
L Device:R R?
U 1 1 5D170BA9
P 2050 1050
F 0 "R?" V 1950 1050 50  0000 C CNN
F 1 "47k" V 2150 1050 50  0000 C CNN
F 2 "" V 1980 1050 50  0001 C CNN
F 3 "~" H 2050 1050 50  0001 C CNN
	1    2050 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D1719F1
P 2300 1300
F 0 "R?" H 2231 1254 50  0000 R CNN
F 1 "120k" H 2231 1345 50  0000 R CNN
F 2 "" V 2230 1300 50  0001 C CNN
F 3 "~" H 2300 1300 50  0001 C CNN
	1    2300 1300
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D172487
P 1850 1650
F 0 "RV?" H 1781 1696 50  0000 R CNN
F 1 "100k" H 1781 1605 50  0000 R CNN
F 2 "" H 1850 1650 50  0001 C CNN
F 3 "~" H 1850 1650 50  0001 C CNN
	1    1850 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D175ED9
P 7000 1200
F 0 "R?" H 6930 1154 50  0000 R CNN
F 1 "39k" H 6930 1245 50  0000 R CNN
F 2 "" V 6930 1200 50  0001 C CNN
F 3 "~" H 7000 1200 50  0001 C CNN
	1    7000 1200
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D1764A9
P 7000 1600
F 0 "R?" H 6930 1554 50  0000 R CNN
F 1 "39k" H 6930 1645 50  0000 R CNN
F 2 "" V 6930 1600 50  0001 C CNN
F 3 "~" H 7000 1600 50  0001 C CNN
	1    7000 1600
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5D176A3C
P 7200 1600
F 0 "C?" H 7085 1554 50  0000 R CNN
F 1 "68n" H 7085 1645 50  0000 R CNN
F 2 "" H 7238 1450 50  0001 C CNN
F 3 "~" H 7200 1600 50  0001 C CNN
	1    7200 1600
	-1   0    0    1   
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D177F8D
P 7000 1000
F 0 "#PWR?" H 7000 850 50  0001 C CNN
F 1 "+5VA" H 7015 1173 50  0000 C CNN
F 2 "" H 7000 1000 50  0001 C CNN
F 3 "" H 7000 1000 50  0001 C CNN
	1    7000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1000 7000 1050
Wire Wire Line
	7000 1350 7000 1400
Wire Wire Line
	7000 1400 7200 1400
Wire Wire Line
	7200 1400 7200 1450
Connection ~ 7000 1400
Wire Wire Line
	7000 1400 7000 1450
Wire Wire Line
	7200 1400 7350 1400
Connection ~ 7200 1400
$Comp
L power:GNDA #PWR?
U 1 1 5D1790C8
P 7000 1850
F 0 "#PWR?" H 7000 1600 50  0001 C CNN
F 1 "GNDA" H 7005 1677 50  0000 C CNN
F 2 "" H 7000 1850 50  0001 C CNN
F 3 "" H 7000 1850 50  0001 C CNN
	1    7000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1750 7000 1800
Wire Wire Line
	7000 1800 7200 1800
Wire Wire Line
	7200 1800 7200 1750
Connection ~ 7000 1800
Wire Wire Line
	7000 1800 7000 1850
$Comp
L power:+2V5 #PWR?
U 1 1 5D179B44
P 7350 1400
F 0 "#PWR?" H 7350 1250 50  0001 C CNN
F 1 "+2V5" V 7365 1528 50  0000 L CNN
F 2 "" H 7350 1400 50  0001 C CNN
F 3 "" H 7350 1400 50  0001 C CNN
	1    7350 1400
	0    1    1    0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5D17C040
P 2550 800
F 0 "#PWR?" H 2550 650 50  0001 C CNN
F 1 "+2V5" H 2565 973 50  0000 C CNN
F 2 "" H 2550 800 50  0001 C CNN
F 3 "" H 2550 800 50  0001 C CNN
	1    2550 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 850  2550 850 
Wire Wire Line
	2550 850  2550 800 
Wire Wire Line
	1200 1050 1650 1050
Wire Wire Line
	2200 1050 2300 1050
Wire Wire Line
	2300 1150 2300 1050
Connection ~ 2300 1050
Wire Wire Line
	2000 1650 2300 1650
Wire Wire Line
	2300 1650 2300 1450
$Comp
L power:GNDA #PWR?
U 1 1 5D181296
P 1850 1800
F 0 "#PWR?" H 1850 1550 50  0001 C CNN
F 1 "GNDA" H 1855 1627 50  0000 C CNN
F 2 "" H 1850 1800 50  0001 C CNN
F 3 "" H 1850 1800 50  0001 C CNN
	1    1850 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D1816E9
P 1850 1500
F 0 "#PWR?" H 1850 1350 50  0001 C CNN
F 1 "+5VA" H 1865 1673 50  0000 C CNN
F 2 "" H 1850 1500 50  0001 C CNN
F 3 "" H 1850 1500 50  0001 C CNN
	1    1850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2550 1250 2550
Wire Wire Line
	1250 2550 1250 2500
Wire Wire Line
	1200 2950 1250 2950
Wire Wire Line
	1250 2950 1250 3550
$Comp
L power:GNDA #PWR?
U 1 1 5D18F602
P 1250 3550
F 0 "#PWR?" H 1250 3300 50  0001 C CNN
F 1 "GNDA" H 1255 3377 50  0000 C CNN
F 2 "" H 1250 3550 50  0001 C CNN
F 3 "" H 1250 3550 50  0001 C CNN
	1    1250 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D18F608
P 1250 2500
F 0 "#PWR?" H 1250 2350 50  0001 C CNN
F 1 "+5VA" H 1265 2673 50  0000 C CNN
F 2 "" H 1250 2500 50  0001 C CNN
F 3 "" H 1250 2500 50  0001 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
NoConn ~ 1200 2650
NoConn ~ 1200 2850
$Comp
L Amplifier_Operational:MCP6004 S?
U 2 1 5D18F610
P 2950 2650
F 0 "S?" H 2950 3017 50  0000 C CNN
F 1 "MCP6004" H 2950 2926 50  0000 C CNN
F 2 "" H 2900 2750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3000 2850 50  0001 C CNN
	2    2950 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D18F616
P 2050 2750
F 0 "R?" V 1950 2750 50  0000 C CNN
F 1 "47k" V 2150 2750 50  0000 C CNN
F 2 "" V 1980 2750 50  0001 C CNN
F 3 "~" H 2050 2750 50  0001 C CNN
	1    2050 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D18F61C
P 2300 3000
F 0 "R?" H 2231 2954 50  0000 R CNN
F 1 "120k" H 2231 3045 50  0000 R CNN
F 2 "" V 2230 3000 50  0001 C CNN
F 3 "~" H 2300 3000 50  0001 C CNN
	1    2300 3000
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D18F622
P 1850 3350
F 0 "RV?" H 1781 3396 50  0000 R CNN
F 1 "100k" H 1781 3305 50  0000 R CNN
F 2 "" H 1850 3350 50  0001 C CNN
F 3 "~" H 1850 3350 50  0001 C CNN
	1    1850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5D18F63A
P 2550 2500
F 0 "#PWR?" H 2550 2350 50  0001 C CNN
F 1 "+2V5" H 2565 2673 50  0000 C CNN
F 2 "" H 2550 2500 50  0001 C CNN
F 3 "" H 2550 2500 50  0001 C CNN
	1    2550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2550 2550 2550
Wire Wire Line
	2550 2550 2550 2500
Wire Wire Line
	1200 2750 1650 2750
Wire Wire Line
	2200 2750 2300 2750
Wire Wire Line
	2300 2850 2300 2750
Connection ~ 2300 2750
Wire Wire Line
	2000 3350 2300 3350
Wire Wire Line
	2300 3350 2300 3150
$Comp
L power:GNDA #PWR?
U 1 1 5D18F65D
P 1850 3500
F 0 "#PWR?" H 1850 3250 50  0001 C CNN
F 1 "GNDA" H 1855 3327 50  0000 C CNN
F 2 "" H 1850 3500 50  0001 C CNN
F 3 "" H 1850 3500 50  0001 C CNN
	1    1850 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D18F663
P 1850 3200
F 0 "#PWR?" H 1850 3050 50  0001 C CNN
F 1 "+5VA" H 1865 3373 50  0000 C CNN
F 2 "" H 1850 3200 50  0001 C CNN
F 3 "" H 1850 3200 50  0001 C CNN
	1    1850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4300 1250 4300
Wire Wire Line
	1250 4300 1250 4250
Wire Wire Line
	1200 4700 1250 4700
Wire Wire Line
	1250 4700 1250 5300
$Comp
L power:GNDA #PWR?
U 1 1 5D1941F8
P 1250 5300
F 0 "#PWR?" H 1250 5050 50  0001 C CNN
F 1 "GNDA" H 1255 5127 50  0000 C CNN
F 2 "" H 1250 5300 50  0001 C CNN
F 3 "" H 1250 5300 50  0001 C CNN
	1    1250 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D1941FE
P 1250 4250
F 0 "#PWR?" H 1250 4100 50  0001 C CNN
F 1 "+5VA" H 1265 4423 50  0000 C CNN
F 2 "" H 1250 4250 50  0001 C CNN
F 3 "" H 1250 4250 50  0001 C CNN
	1    1250 4250
	1    0    0    -1  
$EndComp
NoConn ~ 1200 4400
NoConn ~ 1200 4600
$Comp
L Amplifier_Operational:MCP6004 S?
U 3 1 5D194206
P 2950 4400
F 0 "S?" H 2950 4767 50  0000 C CNN
F 1 "MCP6004" H 2950 4676 50  0000 C CNN
F 2 "" H 2900 4500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3000 4600 50  0001 C CNN
	3    2950 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D19420C
P 2050 4500
F 0 "R?" V 1950 4500 50  0000 C CNN
F 1 "47k" V 2150 4500 50  0000 C CNN
F 2 "" V 1980 4500 50  0001 C CNN
F 3 "~" H 2050 4500 50  0001 C CNN
	1    2050 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D194212
P 2300 4750
F 0 "R?" H 2231 4704 50  0000 R CNN
F 1 "120k" H 2231 4795 50  0000 R CNN
F 2 "" V 2230 4750 50  0001 C CNN
F 3 "~" H 2300 4750 50  0001 C CNN
	1    2300 4750
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D194218
P 1850 5100
F 0 "RV?" H 1781 5146 50  0000 R CNN
F 1 "100k" H 1781 5055 50  0000 R CNN
F 2 "" H 1850 5100 50  0001 C CNN
F 3 "~" H 1850 5100 50  0001 C CNN
	1    1850 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5D194230
P 2550 4250
F 0 "#PWR?" H 2550 4100 50  0001 C CNN
F 1 "+2V5" H 2565 4423 50  0000 C CNN
F 2 "" H 2550 4250 50  0001 C CNN
F 3 "" H 2550 4250 50  0001 C CNN
	1    2550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4300 2550 4300
Wire Wire Line
	2550 4300 2550 4250
Wire Wire Line
	1200 4500 1650 4500
Wire Wire Line
	2200 4500 2300 4500
Wire Wire Line
	2300 4600 2300 4500
Connection ~ 2300 4500
Wire Wire Line
	2000 5100 2300 5100
Wire Wire Line
	2300 5100 2300 4900
$Comp
L power:GNDA #PWR?
U 1 1 5D194253
P 1850 5250
F 0 "#PWR?" H 1850 5000 50  0001 C CNN
F 1 "GNDA" H 1855 5077 50  0000 C CNN
F 2 "" H 1850 5250 50  0001 C CNN
F 3 "" H 1850 5250 50  0001 C CNN
	1    1850 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D194259
P 1850 4950
F 0 "#PWR?" H 1850 4800 50  0001 C CNN
F 1 "+5VA" H 1865 5123 50  0000 C CNN
F 2 "" H 1850 4950 50  0001 C CNN
F 3 "" H 1850 4950 50  0001 C CNN
	1    1850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6050 1250 6050
Wire Wire Line
	1250 6050 1250 6000
Wire Wire Line
	1200 6450 1250 6450
Wire Wire Line
	1250 6450 1250 7000
$Comp
L power:GNDA #PWR?
U 1 1 5D19AE9D
P 1250 7000
F 0 "#PWR?" H 1250 6750 50  0001 C CNN
F 1 "GNDA" H 1255 6827 50  0000 C CNN
F 2 "" H 1250 7000 50  0001 C CNN
F 3 "" H 1250 7000 50  0001 C CNN
	1    1250 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D19AEA3
P 1250 6000
F 0 "#PWR?" H 1250 5850 50  0001 C CNN
F 1 "+5VA" H 1265 6173 50  0000 C CNN
F 2 "" H 1250 6000 50  0001 C CNN
F 3 "" H 1250 6000 50  0001 C CNN
	1    1250 6000
	1    0    0    -1  
$EndComp
NoConn ~ 1200 6150
NoConn ~ 1200 6350
$Comp
L Amplifier_Operational:MCP6004 S?
U 4 1 5D19AEAB
P 2950 6150
F 0 "S?" H 2950 6517 50  0000 C CNN
F 1 "MCP6004" H 2950 6426 50  0000 C CNN
F 2 "" H 2900 6250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3000 6350 50  0001 C CNN
	4    2950 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D19AEB1
P 2050 6250
F 0 "R?" V 1950 6250 50  0000 C CNN
F 1 "47k" V 2150 6250 50  0000 C CNN
F 2 "" V 1980 6250 50  0001 C CNN
F 3 "~" H 2050 6250 50  0001 C CNN
	1    2050 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D19AEB7
P 2300 6500
F 0 "R?" H 2231 6454 50  0000 R CNN
F 1 "120k" H 2231 6545 50  0000 R CNN
F 2 "" V 2230 6500 50  0001 C CNN
F 3 "~" H 2300 6500 50  0001 C CNN
	1    2300 6500
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D19AEBD
P 1850 6850
F 0 "RV?" H 1781 6896 50  0000 R CNN
F 1 "100k" H 1781 6805 50  0000 R CNN
F 2 "" H 1850 6850 50  0001 C CNN
F 3 "~" H 1850 6850 50  0001 C CNN
	1    1850 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D19AEC3
P 2750 6800
F 0 "R?" V 2650 6800 50  0000 C CNN
F 1 "68k" V 2850 6800 50  0000 C CNN
F 2 "" V 2680 6800 50  0001 C CNN
F 3 "~" H 2750 6800 50  0001 C CNN
	1    2750 6800
	0    -1   1    0   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D19AEC9
P 3150 6800
F 0 "RV?" V 3035 6800 50  0000 C CNN
F 1 "100k" V 2944 6800 50  0000 C CNN
F 2 "" H 3150 6800 50  0001 C CNN
F 3 "~" H 3150 6800 50  0001 C CNN
	1    3150 6800
	0    1    -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D19AECF
P 2750 7200
F 0 "C?" V 2600 7200 50  0000 C CNN
F 1 "22n" V 2900 7200 50  0000 C CNN
F 2 "" H 2788 7050 50  0001 C CNN
F 3 "~" H 2750 7200 50  0001 C CNN
	1    2750 7200
	0    1    1    0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5D19AED5
P 2550 6000
F 0 "#PWR?" H 2550 5850 50  0001 C CNN
F 1 "+2V5" H 2565 6173 50  0000 C CNN
F 2 "" H 2550 6000 50  0001 C CNN
F 3 "" H 2550 6000 50  0001 C CNN
	1    2550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6050 2550 6050
Wire Wire Line
	2550 6050 2550 6000
Wire Wire Line
	1200 6250 1650 6250
Wire Wire Line
	2200 6250 2300 6250
Wire Wire Line
	2300 6350 2300 6250
Connection ~ 2300 6250
Wire Wire Line
	2300 6250 2450 6250
Wire Wire Line
	2600 6800 2450 6800
Wire Wire Line
	2450 6800 2450 6500
Connection ~ 2450 6250
Wire Wire Line
	2450 6250 2650 6250
Wire Wire Line
	2900 6800 3000 6800
Wire Wire Line
	3150 6650 3150 6600
Wire Wire Line
	3150 6600 3350 6600
Wire Wire Line
	3350 6600 3350 6800
Wire Wire Line
	3350 6800 3300 6800
Wire Wire Line
	3250 6150 3350 6150
Wire Wire Line
	3350 6150 3350 6500
Connection ~ 3350 6600
Wire Wire Line
	3350 6150 3750 6150
Connection ~ 3350 6150
Wire Wire Line
	2900 7200 3350 7200
Wire Wire Line
	3350 7200 3350 6800
Connection ~ 3350 6800
Wire Wire Line
	2600 7200 2450 7200
Wire Wire Line
	2450 7200 2450 6800
Connection ~ 2450 6800
Wire Wire Line
	2000 6850 2300 6850
Wire Wire Line
	2300 6850 2300 6650
$Comp
L power:GNDA #PWR?
U 1 1 5D19AEF8
P 1850 7000
F 0 "#PWR?" H 1850 6750 50  0001 C CNN
F 1 "GNDA" H 1855 6827 50  0000 C CNN
F 2 "" H 1850 7000 50  0001 C CNN
F 3 "" H 1850 7000 50  0001 C CNN
	1    1850 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D19AEFE
P 1850 6700
F 0 "#PWR?" H 1850 6550 50  0001 C CNN
F 1 "+5VA" H 1865 6873 50  0000 C CNN
F 2 "" H 1850 6700 50  0001 C CNN
F 3 "" H 1850 6700 50  0001 C CNN
	1    1850 6700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6004 S?
U 5 1 5D208913
P 6500 1400
F 0 "S?" H 6458 1446 50  0000 L CNN
F 1 "MCP6004" H 6458 1355 50  0000 L CNN
F 2 "" H 6450 1500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 6550 1600 50  0001 C CNN
	5    6500 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D209D15
P 6400 1000
F 0 "#PWR?" H 6400 850 50  0001 C CNN
F 1 "+5VA" H 6415 1173 50  0000 C CNN
F 2 "" H 6400 1000 50  0001 C CNN
F 3 "" H 6400 1000 50  0001 C CNN
	1    6400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1000 6400 1050
$Comp
L power:GNDA #PWR?
U 1 1 5D20E328
P 6400 1850
F 0 "#PWR?" H 6400 1600 50  0001 C CNN
F 1 "GNDA" H 6405 1677 50  0000 C CNN
F 2 "" H 6400 1850 50  0001 C CNN
F 3 "" H 6400 1850 50  0001 C CNN
	1    6400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1700 6400 1750
$Comp
L Device:C C?
U 1 1 5D212F70
P 6200 1400
F 0 "C?" H 6085 1354 50  0000 R CNN
F 1 "100n" H 6085 1445 50  0000 R CNN
F 2 "" H 6238 1250 50  0001 C CNN
F 3 "~" H 6200 1400 50  0001 C CNN
	1    6200 1400
	1    0    0    1   
$EndComp
Wire Wire Line
	6400 1050 6200 1050
Wire Wire Line
	6200 1050 6200 1250
Connection ~ 6400 1050
Wire Wire Line
	6400 1050 6400 1100
Wire Wire Line
	6400 1750 6200 1750
Wire Wire Line
	6200 1750 6200 1550
Connection ~ 6400 1750
Wire Wire Line
	6400 1750 6400 1850
$Comp
L Connector:TestPoint_2Pole J?
U 1 1 5D28EF9E
P 2900 6500
F 0 "J?" H 2900 6603 50  0000 C CNN
F 1 "TestPoint_2Pole" H 2900 6604 50  0001 C CNN
F 2 "" H 2900 6500 50  0001 C CNN
F 3 "~" H 2900 6500 50  0001 C CNN
	1    2900 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6500 3350 6500
Connection ~ 3350 6500
Wire Wire Line
	3350 6500 3350 6600
Wire Wire Line
	2700 6500 2450 6500
Connection ~ 2450 6500
Wire Wire Line
	2450 6500 2450 6250
Wire Wire Line
	2300 4500 2450 4500
Wire Wire Line
	3250 4400 3350 4400
Wire Wire Line
	2300 2750 2450 2750
Wire Wire Line
	3250 2650 3350 2650
$Comp
L Amplifier_Operational:MCP6004 S?
U 1 1 5D16DE4E
P 2950 950
F 0 "S?" H 2950 1317 50  0000 C CNN
F 1 "MCP6004" H 2950 1226 50  0000 C CNN
F 2 "" H 2900 1050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3000 1150 50  0001 C CNN
	1    2950 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1050 2450 1050
Wire Wire Line
	3250 950  3350 950 
$Comp
L Device:R R?
U 1 1 5D2C2FB8
P 2750 5050
F 0 "R?" V 2650 5050 50  0000 C CNN
F 1 "68k" V 2850 5050 50  0000 C CNN
F 2 "" V 2680 5050 50  0001 C CNN
F 3 "~" H 2750 5050 50  0001 C CNN
	1    2750 5050
	0    -1   1    0   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D2C2FBE
P 3150 5050
F 0 "RV?" V 3035 5050 50  0000 C CNN
F 1 "100k" V 2944 5050 50  0000 C CNN
F 2 "" H 3150 5050 50  0001 C CNN
F 3 "~" H 3150 5050 50  0001 C CNN
	1    3150 5050
	0    1    -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D2C2FC4
P 2750 5450
F 0 "C?" V 2600 5450 50  0000 C CNN
F 1 "22n" V 2900 5450 50  0000 C CNN
F 2 "" H 2788 5300 50  0001 C CNN
F 3 "~" H 2750 5450 50  0001 C CNN
	1    2750 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 5050 2450 5050
Wire Wire Line
	2450 5050 2450 4750
Wire Wire Line
	2900 5050 3000 5050
Wire Wire Line
	3150 4900 3150 4850
Wire Wire Line
	3150 4850 3350 4850
Wire Wire Line
	3350 4850 3350 5050
Wire Wire Line
	3350 5050 3300 5050
Wire Wire Line
	3350 4400 3350 4750
Connection ~ 3350 4850
Wire Wire Line
	2900 5450 3350 5450
Wire Wire Line
	3350 5450 3350 5050
Connection ~ 3350 5050
Wire Wire Line
	2600 5450 2450 5450
Wire Wire Line
	2450 5450 2450 5050
Connection ~ 2450 5050
$Comp
L Connector:TestPoint_2Pole J?
U 1 1 5D2C2FD9
P 2900 4750
F 0 "J?" H 2900 4853 50  0000 C CNN
F 1 "TestPoint_2Pole" H 2900 4854 50  0001 C CNN
F 2 "" H 2900 4750 50  0001 C CNN
F 3 "~" H 2900 4750 50  0001 C CNN
	1    2900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4750 3350 4750
Connection ~ 3350 4750
Wire Wire Line
	3350 4750 3350 4850
Wire Wire Line
	2700 4750 2450 4750
Connection ~ 2450 4750
Wire Wire Line
	2450 4750 2450 4500
$Comp
L Device:R R?
U 1 1 5D2C6E1C
P 2750 3300
F 0 "R?" V 2650 3300 50  0000 C CNN
F 1 "68k" V 2850 3300 50  0000 C CNN
F 2 "" V 2680 3300 50  0001 C CNN
F 3 "~" H 2750 3300 50  0001 C CNN
	1    2750 3300
	0    -1   1    0   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D2C6E22
P 3150 3300
F 0 "RV?" V 3035 3300 50  0000 C CNN
F 1 "100k" V 2944 3300 50  0000 C CNN
F 2 "" H 3150 3300 50  0001 C CNN
F 3 "~" H 3150 3300 50  0001 C CNN
	1    3150 3300
	0    1    -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D2C6E28
P 2750 3700
F 0 "C?" V 2600 3700 50  0000 C CNN
F 1 "22n" V 2900 3700 50  0000 C CNN
F 2 "" H 2788 3550 50  0001 C CNN
F 3 "~" H 2750 3700 50  0001 C CNN
	1    2750 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3300 2450 3300
Wire Wire Line
	2450 3300 2450 3000
Wire Wire Line
	2900 3300 3000 3300
Wire Wire Line
	3150 3150 3150 3100
Wire Wire Line
	3150 3100 3350 3100
Wire Wire Line
	3350 3100 3350 3300
Wire Wire Line
	3350 3300 3300 3300
Wire Wire Line
	3350 2650 3350 3000
Connection ~ 3350 3100
Wire Wire Line
	2900 3700 3350 3700
Wire Wire Line
	3350 3700 3350 3300
Connection ~ 3350 3300
Wire Wire Line
	2600 3700 2450 3700
Wire Wire Line
	2450 3700 2450 3300
Connection ~ 2450 3300
$Comp
L Connector:TestPoint_2Pole J?
U 1 1 5D2C6E3D
P 2900 3000
F 0 "J?" H 2900 3103 50  0000 C CNN
F 1 "TestPoint_2Pole" H 2900 3104 50  0001 C CNN
F 2 "" H 2900 3000 50  0001 C CNN
F 3 "~" H 2900 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3000 3350 3000
Connection ~ 3350 3000
Wire Wire Line
	3350 3000 3350 3100
Wire Wire Line
	2700 3000 2450 3000
Connection ~ 2450 3000
Wire Wire Line
	2450 3000 2450 2750
$Comp
L Device:R R?
U 1 1 5D2CB75C
P 2750 1600
F 0 "R?" V 2650 1600 50  0000 C CNN
F 1 "68k" V 2850 1600 50  0000 C CNN
F 2 "" V 2680 1600 50  0001 C CNN
F 3 "~" H 2750 1600 50  0001 C CNN
	1    2750 1600
	0    -1   1    0   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D2CB762
P 3150 1600
F 0 "RV?" V 3035 1600 50  0000 C CNN
F 1 "100k" V 2944 1600 50  0000 C CNN
F 2 "" H 3150 1600 50  0001 C CNN
F 3 "~" H 3150 1600 50  0001 C CNN
	1    3150 1600
	0    1    -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D2CB768
P 2750 2000
F 0 "C?" V 2600 2000 50  0000 C CNN
F 1 "22n" V 2900 2000 50  0000 C CNN
F 2 "" H 2788 1850 50  0001 C CNN
F 3 "~" H 2750 2000 50  0001 C CNN
	1    2750 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 1600 2450 1600
Wire Wire Line
	2450 1600 2450 1300
Wire Wire Line
	2900 1600 3000 1600
Wire Wire Line
	3150 1450 3150 1400
Wire Wire Line
	3150 1400 3350 1400
Wire Wire Line
	3350 1400 3350 1600
Wire Wire Line
	3350 1600 3300 1600
Wire Wire Line
	3350 950  3350 1300
Connection ~ 3350 1400
Wire Wire Line
	2900 2000 3350 2000
Wire Wire Line
	3350 2000 3350 1600
Connection ~ 3350 1600
Wire Wire Line
	2600 2000 2450 2000
Wire Wire Line
	2450 2000 2450 1600
Connection ~ 2450 1600
$Comp
L Connector:TestPoint_2Pole J?
U 1 1 5D2CB77D
P 2900 1300
F 0 "J?" H 2900 1403 50  0000 C CNN
F 1 "TestPoint_2Pole" H 2900 1404 50  0001 C CNN
F 2 "" H 2900 1300 50  0001 C CNN
F 3 "~" H 2900 1300 50  0001 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1300 3350 1300
Connection ~ 3350 1300
Wire Wire Line
	3350 1300 3350 1400
Wire Wire Line
	2700 1300 2450 1300
Connection ~ 2450 1300
Wire Wire Line
	2450 1300 2450 1050
Text HLabel 3750 6150 2    50   Output ~ 0
Stick_LV_AN
Text HLabel 3750 4400 2    50   Output ~ 0
Stick_LH_AN
Text HLabel 3750 2650 2    50   Output ~ 0
Stick_RV_AN
Text HLabel 3750 950  2    50   Output ~ 0
Stick_RH_AN
$Comp
L Connector_Generic:Conn_01x03 X?
U 1 1 5D2D1506
P 1000 7900
F 0 "X?" H 1100 7950 50  0000 L CNN
F 1 "Pot1" H 1100 7850 50  0000 L CNN
F 2 "" H 1000 7900 50  0001 C CNN
F 3 "~" H 1000 7900 50  0001 C CNN
	1    1000 7900
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5D2D3723
P 1350 9100
F 0 "#PWR?" H 1350 8850 50  0001 C CNN
F 1 "GNDA" H 1355 8927 50  0000 C CNN
F 2 "" H 1350 9100 50  0001 C CNN
F 3 "" H 1350 9100 50  0001 C CNN
	1    1350 9100
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D2D3BD3
P 1250 7750
F 0 "#PWR?" H 1250 7600 50  0001 C CNN
F 1 "+5VA" H 1265 7923 50  0000 C CNN
F 2 "" H 1250 7750 50  0001 C CNN
F 3 "" H 1250 7750 50  0001 C CNN
	1    1250 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7800 1250 7800
Wire Wire Line
	1250 7800 1250 7750
Wire Wire Line
	1200 7900 1750 7900
$Comp
L Device:C C?
U 1 1 5D2DF360
P 1550 8100
F 0 "C?" V 1400 8100 50  0000 C CNN
F 1 "100n" V 1700 8100 50  0000 C CNN
F 2 "" H 1588 7950 50  0001 C CNN
F 3 "~" H 1550 8100 50  0001 C CNN
	1    1550 8100
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 8100 1750 8100
Wire Wire Line
	1750 8100 1750 7900
Connection ~ 1750 7900
Wire Wire Line
	1750 7900 2650 7900
Wire Wire Line
	1200 8000 1350 8000
Wire Wire Line
	1350 8000 1350 8100
Wire Wire Line
	1400 8100 1350 8100
Connection ~ 1350 8100
Wire Wire Line
	1350 8100 1350 8450
$Comp
L Connector_Generic:Conn_01x03 X?
U 1 1 5D2FDE65
P 1000 8350
F 0 "X?" H 1100 8400 50  0000 L CNN
F 1 "Pot2" H 1100 8300 50  0000 L CNN
F 2 "" H 1000 8350 50  0001 C CNN
F 3 "~" H 1000 8350 50  0001 C CNN
	1    1000 8350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 8350 1750 8350
$Comp
L Device:C C?
U 1 1 5D2FDE74
P 1550 8550
F 0 "C?" V 1400 8550 50  0000 C CNN
F 1 "100n" V 1700 8550 50  0000 C CNN
F 2 "" H 1588 8400 50  0001 C CNN
F 3 "~" H 1550 8550 50  0001 C CNN
	1    1550 8550
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 8550 1750 8550
Wire Wire Line
	1750 8550 1750 8350
Connection ~ 1750 8350
Wire Wire Line
	1750 8350 2650 8350
Wire Wire Line
	1200 8450 1350 8450
Wire Wire Line
	1400 8550 1350 8550
Connection ~ 1350 8450
Wire Wire Line
	1350 8450 1350 8550
Connection ~ 1350 8550
Wire Wire Line
	1350 8550 1350 8900
$Comp
L Connector_Generic:Conn_01x03 X?
U 1 1 5D34E6EA
P 1000 8800
F 0 "X?" H 1100 8850 50  0000 L CNN
F 1 "Pot3" H 1100 8750 50  0000 L CNN
F 2 "" H 1000 8800 50  0001 C CNN
F 3 "~" H 1000 8800 50  0001 C CNN
	1    1000 8800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 8700 1250 8700
Wire Wire Line
	1200 8800 1750 8800
$Comp
L Device:C C?
U 1 1 5D34E6F9
P 1550 9000
F 0 "C?" V 1400 9000 50  0000 C CNN
F 1 "100n" V 1700 9000 50  0000 C CNN
F 2 "" H 1588 8850 50  0001 C CNN
F 3 "~" H 1550 9000 50  0001 C CNN
	1    1550 9000
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 9000 1750 9000
Wire Wire Line
	1750 9000 1750 8800
Connection ~ 1750 8800
Wire Wire Line
	1750 8800 2650 8800
Wire Wire Line
	1200 8900 1350 8900
Wire Wire Line
	1400 9000 1350 9000
Connection ~ 1350 8900
Wire Wire Line
	1350 8900 1350 9000
Connection ~ 1350 9000
Wire Wire Line
	1200 8250 1250 8250
Wire Wire Line
	1250 8250 1250 7800
Connection ~ 1250 7800
Wire Wire Line
	1250 8700 1250 8250
Connection ~ 1250 8250
Text HLabel 2650 7900 2    50   Output ~ 0
Pot1_AN
Text HLabel 2650 8350 2    50   Output ~ 0
Pot2_AN
Text HLabel 2650 8800 2    50   Output ~ 0
Pot3_AN
Connection ~ 2450 1050
Wire Wire Line
	2450 1050 2650 1050
Connection ~ 2450 2750
Wire Wire Line
	2450 2750 2650 2750
Connection ~ 2450 4500
Wire Wire Line
	2450 4500 2650 4500
Connection ~ 3350 950 
Wire Wire Line
	3350 950  3750 950 
Connection ~ 3350 2650
Wire Wire Line
	3350 2650 3750 2650
Connection ~ 3350 4400
Wire Wire Line
	3350 4400 3750 4400
$Comp
L Device:C C?
U 1 1 5D388A84
P 1450 6450
F 0 "C?" V 1300 6450 50  0000 C CNN
F 1 "100n" V 1600 6450 50  0000 C CNN
F 2 "" H 1488 6300 50  0001 C CNN
F 3 "~" H 1450 6450 50  0001 C CNN
	1    1450 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 6450 1250 6450
Connection ~ 1250 6450
Wire Wire Line
	1600 6450 1650 6450
Wire Wire Line
	1650 6450 1650 6250
Connection ~ 1650 6250
Wire Wire Line
	1650 6250 1900 6250
$Comp
L Device:C C?
U 1 1 5D39BA6A
P 1450 4700
F 0 "C?" V 1300 4700 50  0000 C CNN
F 1 "100n" V 1600 4700 50  0000 C CNN
F 2 "" H 1488 4550 50  0001 C CNN
F 3 "~" H 1450 4700 50  0001 C CNN
	1    1450 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 4700 1250 4700
Wire Wire Line
	1600 4700 1650 4700
Wire Wire Line
	1650 4700 1650 4500
$Comp
L Device:C C?
U 1 1 5D3A4E8E
P 1450 2950
F 0 "C?" V 1300 2950 50  0000 C CNN
F 1 "100n" V 1600 2950 50  0000 C CNN
F 2 "" H 1488 2800 50  0001 C CNN
F 3 "~" H 1450 2950 50  0001 C CNN
	1    1450 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 2950 1250 2950
Wire Wire Line
	1600 2950 1650 2950
Wire Wire Line
	1650 2950 1650 2750
$Comp
L Device:C C?
U 1 1 5D3AE977
P 1450 1250
F 0 "C?" V 1300 1250 50  0000 C CNN
F 1 "100n" V 1600 1250 50  0000 C CNN
F 2 "" H 1488 1100 50  0001 C CNN
F 3 "~" H 1450 1250 50  0001 C CNN
	1    1450 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1250 1250 1250
Wire Wire Line
	1600 1250 1650 1250
Wire Wire Line
	1650 1250 1650 1050
Connection ~ 1650 1050
Wire Wire Line
	1650 1050 1900 1050
Connection ~ 1250 1250
Connection ~ 1650 2750
Wire Wire Line
	1650 2750 1900 2750
Connection ~ 1250 2950
Connection ~ 1650 4500
Wire Wire Line
	1650 4500 1900 4500
Connection ~ 1250 4700
Wire Wire Line
	1350 9000 1350 9100
Text HLabel 5350 8550 2    50   Output ~ 0
SW4_AN
Text HLabel 5350 8450 2    50   Output ~ 0
SW3_AN
Text HLabel 5350 8350 2    50   Output ~ 0
SW2_AN
Text HLabel 5350 8250 2    50   Output ~ 0
SW1_AN
Wire Wire Line
	4750 8550 5350 8550
Wire Wire Line
	4650 8450 5350 8450
Wire Wire Line
	4550 8350 5350 8350
Wire Wire Line
	4450 8250 5350 8250
Connection ~ 4750 8550
Wire Wire Line
	4750 8550 4750 8650
Wire Wire Line
	4750 8550 4750 8150
Wire Wire Line
	4100 8550 4750 8550
Connection ~ 4650 8450
Wire Wire Line
	4650 8450 4650 8650
Wire Wire Line
	4650 8450 4650 8150
Wire Wire Line
	4100 8450 4650 8450
Connection ~ 4550 8350
Wire Wire Line
	4550 8350 4550 8650
Wire Wire Line
	4550 8350 4550 8150
Wire Wire Line
	4100 8350 4550 8350
Connection ~ 4450 8250
Wire Wire Line
	4450 8250 4450 8650
Wire Wire Line
	4450 8250 4450 8150
Wire Wire Line
	4100 8250 4450 8250
Wire Wire Line
	4250 7750 4250 7700
Connection ~ 4250 7750
Wire Wire Line
	4450 7750 4250 7750
Wire Wire Line
	4250 9050 4250 9100
Connection ~ 4250 9050
Wire Wire Line
	4250 9050 4450 9050
$Comp
L Device:R_Network04 RN?
U 1 1 5D1D7F2E
P 4650 8850
F 0 "RN?" H 4850 8800 50  0000 L CNN
F 1 "R_Network08" H 4850 8900 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 5125 8850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4650 8850 50  0001 C CNN
	1    4650 8850
	1    0    0    1   
$EndComp
$Comp
L Device:R_Network04 RN?
U 1 1 5D1D6319
P 4650 7950
F 0 "RN?" H 4838 7996 50  0000 L CNN
F 1 "R_Network08" H 4838 7905 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 5125 7950 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4650 7950 50  0001 C CNN
	1    4650 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 8650 4250 9050
Wire Wire Line
	4100 8650 4250 8650
Wire Wire Line
	4250 8150 4250 7750
Wire Wire Line
	4100 8150 4250 8150
$Comp
L power:GNDA #PWR?
U 1 1 5D1A516A
P 4250 9100
F 0 "#PWR?" H 4250 8850 50  0001 C CNN
F 1 "GNDA" H 4255 8927 50  0000 C CNN
F 2 "" H 4250 9100 50  0001 C CNN
F 3 "" H 4250 9100 50  0001 C CNN
	1    4250 9100
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5D1A4D08
P 4250 7700
F 0 "#PWR?" H 4250 7550 50  0001 C CNN
F 1 "+5VA" H 4265 7873 50  0000 C CNN
F 2 "" H 4250 7700 50  0001 C CNN
F 3 "" H 4250 7700 50  0001 C CNN
	1    4250 7700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 X?
U 1 1 5D1A2D2D
P 3900 8350
F 0 "X?" H 4000 8400 50  0000 L CNN
F 1 "3-way sw" H 4000 8300 50  0000 L CNN
F 2 "" H 3900 8350 50  0001 C CNN
F 3 "~" H 3900 8350 50  0001 C CNN
	1    3900 8350
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 X?
U 1 1 5D5226A8
P 5650 3150
F 0 "X?" H 5750 3200 50  0000 L CNN
F 1 "Trim" H 5750 3100 50  0000 L CNN
F 2 "" H 5650 3150 50  0001 C CNN
F 3 "~" H 5650 3150 50  0001 C CNN
	1    5650 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 3650 5950 3650
Wire Wire Line
	5950 3650 5950 3700
Wire Wire Line
	5850 3550 5950 3550
Wire Wire Line
	5950 3550 5950 3650
Connection ~ 5950 3650
$Comp
L power:GND #PWR?
U 1 1 5D53F29A
P 5950 3700
F 0 "#PWR?" H 5950 3450 50  0001 C CNN
F 1 "GND" H 5955 3527 50  0000 C CNN
F 2 "" H 5950 3700 50  0001 C CNN
F 3 "" H 5950 3700 50  0001 C CNN
	1    5950 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2750 5950 2750
Text HLabel 5950 2750 2    50   Output ~ 0
Trim_RH->
Text HLabel 5950 2850 2    50   Output ~ 0
Trim_RH<-
Wire Wire Line
	5850 2850 5950 2850
Wire Wire Line
	5850 2950 5950 2950
Text HLabel 5950 2950 2    50   Output ~ 0
Trim_RV->
Text HLabel 5950 3050 2    50   Output ~ 0
Trim_RV<-
Wire Wire Line
	5850 3050 5950 3050
Wire Wire Line
	5850 3150 5950 3150
Text HLabel 5950 3150 2    50   Output ~ 0
Trim_LH->
Text HLabel 5950 3250 2    50   Output ~ 0
Trim_LH<-
Wire Wire Line
	5850 3250 5950 3250
Wire Wire Line
	5850 3350 5950 3350
Text HLabel 5950 3350 2    50   Output ~ 0
Trim_LV->
Text HLabel 5950 3450 2    50   Output ~ 0
Trim_LV<-
Wire Wire Line
	5850 3450 5950 3450
$Comp
L Connector_Generic:Conn_01x06 X?
U 1 1 5D5934BC
P 5650 4500
F 0 "X?" H 5750 4550 50  0000 L CNN
F 1 "buttons" H 5750 4450 50  0000 L CNN
F 2 "" H 5650 4500 50  0001 C CNN
F 3 "~" H 5650 4500 50  0001 C CNN
	1    5650 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D594629
P 5950 4850
F 0 "#PWR?" H 5950 4600 50  0001 C CNN
F 1 "GND" H 5955 4677 50  0000 C CNN
F 2 "" H 5950 4850 50  0001 C CNN
F 3 "" H 5950 4850 50  0001 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4800 5950 4800
Wire Wire Line
	5950 4800 5950 4850
Wire Wire Line
	5850 4300 5950 4300
Text HLabel 5950 4300 2    50   Output ~ 0
btn_up
Text HLabel 5950 4400 2    50   Output ~ 0
btn_down
Text HLabel 5950 4500 2    50   Output ~ 0
btn_left
Text HLabel 5950 4600 2    50   Output ~ 0
btn_right
Text HLabel 5950 4700 2    50   Output ~ 0
btn_enter
Wire Wire Line
	5850 4400 5950 4400
Wire Wire Line
	5950 4500 5850 4500
Wire Wire Line
	5850 4600 5950 4600
Wire Wire Line
	5950 4700 5850 4700
$Comp
L Connector_Generic:Conn_01x04 X?
U 1 1 5D5EE0A0
P 5650 5550
F 0 "X?" H 5750 5600 50  0000 L CNN
F 1 "encoder 1" H 5750 5500 50  0000 L CNN
F 2 "" H 5650 5550 50  0001 C CNN
F 3 "~" H 5650 5550 50  0001 C CNN
	1    5650 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D5EF81F
P 5950 6000
F 0 "#PWR?" H 5950 5750 50  0001 C CNN
F 1 "GND" H 5955 5827 50  0000 C CNN
F 2 "" H 5950 6000 50  0001 C CNN
F 3 "" H 5950 6000 50  0001 C CNN
	1    5950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5750 5950 5750
Wire Wire Line
	5850 5550 6600 5550
Wire Wire Line
	5850 5650 6300 5650
Wire Wire Line
	5950 5750 5950 6000
$Comp
L Device:C C?
U 1 1 5D677218
P 6300 5850
F 0 "C?" H 6250 5750 50  0000 R CNN
F 1 "100n" H 6250 5950 50  0000 R CNN
F 2 "" H 6338 5700 50  0001 C CNN
F 3 "~" H 6300 5850 50  0001 C CNN
	1    6300 5850
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D6872D4
P 6300 6000
F 0 "#PWR?" H 6300 5750 50  0001 C CNN
F 1 "GND" H 6305 5827 50  0000 C CNN
F 2 "" H 6300 6000 50  0001 C CNN
F 3 "" H 6300 6000 50  0001 C CNN
	1    6300 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D6874C9
P 6600 6000
F 0 "#PWR?" H 6600 5750 50  0001 C CNN
F 1 "GND" H 6605 5827 50  0000 C CNN
F 2 "" H 6600 6000 50  0001 C CNN
F 3 "" H 6600 6000 50  0001 C CNN
	1    6600 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D687634
P 6900 6000
F 0 "#PWR?" H 6900 5750 50  0001 C CNN
F 1 "GND" H 6905 5827 50  0000 C CNN
F 2 "" H 6900 6000 50  0001 C CNN
F 3 "" H 6900 6000 50  0001 C CNN
	1    6900 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5700 6300 5650
Connection ~ 6300 5650
Wire Wire Line
	6600 5700 6600 5550
Connection ~ 6600 5550
Wire Wire Line
	6900 5450 6900 5700
Wire Wire Line
	5850 5450 6900 5450
Wire Wire Line
	6600 5550 7000 5550
Connection ~ 6900 5450
Wire Wire Line
	6300 5650 7000 5650
Wire Wire Line
	6900 5450 7000 5450
Text HLabel 7000 5450 2    50   Output ~ 0
enc1_btn
Text HLabel 7000 5550 2    50   Output ~ 0
enc1_a
Text HLabel 7000 5650 2    50   Output ~ 0
enc1_a'
$Comp
L Connector_Generic:Conn_01x04 X?
U 1 1 5D7170A0
P 5650 6600
F 0 "X?" H 5750 6650 50  0000 L CNN
F 1 "encoder 2" H 5750 6550 50  0000 L CNN
F 2 "" H 5650 6600 50  0001 C CNN
F 3 "~" H 5650 6600 50  0001 C CNN
	1    5650 6600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D7170A6
P 5950 7050
F 0 "#PWR?" H 5950 6800 50  0001 C CNN
F 1 "GND" H 5955 6877 50  0000 C CNN
F 2 "" H 5950 7050 50  0001 C CNN
F 3 "" H 5950 7050 50  0001 C CNN
	1    5950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6800 5950 6800
Wire Wire Line
	5850 6600 6600 6600
Wire Wire Line
	5850 6700 6300 6700
Wire Wire Line
	5950 6800 5950 7050
$Comp
L power:GND #PWR?
U 1 1 5D7170C2
P 6300 7050
F 0 "#PWR?" H 6300 6800 50  0001 C CNN
F 1 "GND" H 6305 6877 50  0000 C CNN
F 2 "" H 6300 7050 50  0001 C CNN
F 3 "" H 6300 7050 50  0001 C CNN
	1    6300 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D7170C8
P 6600 7050
F 0 "#PWR?" H 6600 6800 50  0001 C CNN
F 1 "GND" H 6605 6877 50  0000 C CNN
F 2 "" H 6600 7050 50  0001 C CNN
F 3 "" H 6600 7050 50  0001 C CNN
	1    6600 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D7170CE
P 6900 7050
F 0 "#PWR?" H 6900 6800 50  0001 C CNN
F 1 "GND" H 6905 6877 50  0000 C CNN
F 2 "" H 6900 7050 50  0001 C CNN
F 3 "" H 6900 7050 50  0001 C CNN
	1    6900 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6750 6300 6700
Connection ~ 6300 6700
Wire Wire Line
	6600 6750 6600 6600
Connection ~ 6600 6600
Wire Wire Line
	6900 6500 6900 6750
Wire Wire Line
	5850 6500 6900 6500
Wire Wire Line
	6600 6600 7000 6600
Connection ~ 6900 6500
Wire Wire Line
	6300 6700 7000 6700
Wire Wire Line
	6900 6500 7000 6500
Text HLabel 7000 6500 2    50   Output ~ 0
enc2_btn
Text HLabel 7000 6600 2    50   Output ~ 0
enc2_a
Text HLabel 7000 6700 2    50   Output ~ 0
enc2_a'
$Comp
L Device:C C?
U 1 1 5D729007
P 6600 5850
F 0 "C?" H 6550 5750 50  0000 R CNN
F 1 "100n" H 6550 5950 50  0000 R CNN
F 2 "" H 6638 5700 50  0001 C CNN
F 3 "~" H 6600 5850 50  0001 C CNN
	1    6600 5850
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5D7292EC
P 6900 5850
F 0 "C?" H 6850 5750 50  0000 R CNN
F 1 "100n" H 6850 5950 50  0000 R CNN
F 2 "" H 6938 5700 50  0001 C CNN
F 3 "~" H 6900 5850 50  0001 C CNN
	1    6900 5850
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5D7295FE
P 6300 6900
F 0 "C?" H 6250 6800 50  0000 R CNN
F 1 "100n" H 6250 7000 50  0000 R CNN
F 2 "" H 6338 6750 50  0001 C CNN
F 3 "~" H 6300 6900 50  0001 C CNN
	1    6300 6900
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5D7299D7
P 6600 6900
F 0 "C?" H 6550 6800 50  0000 R CNN
F 1 "100n" H 6550 7000 50  0000 R CNN
F 2 "" H 6638 6750 50  0001 C CNN
F 3 "~" H 6600 6900 50  0001 C CNN
	1    6600 6900
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5D729CDC
P 6900 6900
F 0 "C?" H 6850 6800 50  0000 R CNN
F 1 "100n" H 6850 7000 50  0000 R CNN
F 2 "" H 6938 6750 50  0001 C CNN
F 3 "~" H 6900 6900 50  0001 C CNN
	1    6900 6900
	1    0    0    1   
$EndComp
$EndSCHEMATC
