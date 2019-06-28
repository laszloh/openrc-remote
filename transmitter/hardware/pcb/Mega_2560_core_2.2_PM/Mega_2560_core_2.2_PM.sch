EESchema Schematic File Version 4
LIBS:Mega_2560_core_2.2_PM-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1350 1200 850  550 
U 5D13899D
F0 "OpenAVRc_Power" 50
F1 "OpenAVRc_Power.sch" 50
F2 "PWR_HOLD" I R 2200 1300 50 
F3 "BAT_VSENSE" O R 2200 1600 50 
$EndSheet
$Sheet
S 1350 2300 800  5050
U 5D154AED
F0 "OpenAVRc_Sticks" 50
F1 "OpenAVRc_Sticks.sch" 50
F2 "Stick_LV_AN" O R 2150 2500 50 
F3 "Stick_LH_AN" O R 2150 2600 50 
F4 "Stick_RV_AN" O R 2150 2700 50 
F5 "Stick_RH_AN" O R 2150 2800 50 
F6 "Pot1_AN" O R 2150 3300 50 
F7 "Pot2_AN" O R 2150 3200 50 
F8 "Pot3_AN" O R 2150 3100 50 
F9 "SW4_AN" O R 2150 3700 50 
F10 "SW3_AN" O R 2150 3800 50 
F11 "SW2_AN" O R 2150 3900 50 
F12 "SW1_AN" O R 2150 3600 50 
F13 "Trim_RH->" O R 2150 4200 50 
F14 "Trim_RH<-" O R 2150 4300 50 
F15 "Trim_RV->" O R 2150 4400 50 
F16 "Trim_RV<-" O R 2150 4500 50 
F17 "Trim_LH->" O R 2150 4600 50 
F18 "Trim_LH<-" O R 2150 4700 50 
F19 "Trim_LV->" O R 2150 4800 50 
F20 "Trim_LV<-" O R 2150 4900 50 
F21 "btn_up" O R 2150 5250 50 
F22 "btn_down" O R 2150 5350 50 
F23 "btn_left" O R 2150 5450 50 
F24 "btn_right" O R 2150 5550 50 
F25 "btn_enter" O R 2150 5650 50 
F26 "enc1_btn" O R 2150 6000 50 
F27 "enc1_a" O R 2150 6100 50 
F28 "enc1_a'" O R 2150 6200 50 
F29 "enc2_btn" O R 2150 6550 50 
F30 "enc2_a" O R 2150 6650 50 
F31 "enc2_a'" O R 2150 6750 50 
$EndSheet
Wire Wire Line
	3350 3200 2150 3200
Wire Wire Line
	2150 3300 3350 3300
Wire Wire Line
	3350 3600 2150 3600
Wire Wire Line
	2150 3700 3350 3700
Wire Wire Line
	3350 3800 2150 3800
Wire Wire Line
	2150 3900 3350 3900
$Sheet
S 3350 1100 1950 6300
U 5D415297
F0 "OpenAVRc_Controller" 50
F1 "OpenAVRc_Controller.sch" 50
F2 "~RESET" I R 5300 1300 50 
F3 "PA0" B R 5300 1650 50 
F4 "PA1" B R 5300 1750 50 
F5 "PA2" B R 5300 1850 50 
F6 "PA3" B R 5300 1950 50 
F7 "PA4" B R 5300 2050 50 
F8 "PA5" B R 5300 2150 50 
F9 "PA6" B R 5300 2250 50 
F10 "PA7" B R 5300 2350 50 
F11 "PB0\\~SS~\\PCINT0" B L 3350 6650 50 
F12 "PB1\\SCK\\PCINT1" B R 5300 2650 50 
F13 "PB2\\MOSI\\PCINT2" B R 5300 2750 50 
F14 "PB3\\MISO\\PCINT3" B R 5300 2850 50 
F15 "PB4\\OC2A\\PCINT4" B L 3350 6750 50 
F16 "PB5\\OC1A\\PCINT5" B L 3350 6000 50 
F17 "PB6\\OC1B\\PCINT6" B L 3350 6100 50 
F18 "PB7\\OC0A\\OC1C\\PCINT7" B L 3350 6200 50 
F19 "PC0" B L 3350 4200 50 
F20 "PC1" B L 3350 4300 50 
F21 "PC2" B L 3350 4400 50 
F22 "PC3" B L 3350 4500 50 
F23 "PC4" B L 3350 4600 50 
F24 "PC5" B L 3350 4700 50 
F25 "PC6" B L 3350 4800 50 
F26 "PC7" B L 3350 4900 50 
F27 "PD0\\~INT0~\\SCL" B R 5300 3100 50 
F28 "PD1\\~INT1~\\SDA" B R 5300 3200 50 
F29 "PD2\\~INT2~\\RXD1" B R 5300 4550 50 
F30 "PD3\\~INT3~\\TXD1" B R 5300 4650 50 
F31 "PD4\\ICP1" B R 5300 4750 50 
F32 "PD5\\XCK1" B R 5300 4850 50 
F33 "PD6\\T1" B R 5300 4950 50 
F34 "PD7\\T0" B R 5300 5050 50 
F35 "PE0\\RXD0\\PCINT8" B R 5300 5250 50 
F36 "PE1\\TXD0" B R 5300 5350 50 
F37 "PE2\\AIN0\\XCK0" B R 5300 5450 50 
F38 "PE3\\AIN1\\OC3A" B R 5300 5550 50 
F39 "PE4\\INT4\\OC3B" B R 5300 5650 50 
F40 "PE5\\INT5\\OC3C" B R 5300 3300 50 
F41 "PE6\\INT6\\T3" B R 5300 5850 50 
F42 "PE7\\INT7\\ICP3\\CLK0" B R 5300 5950 50 
F43 "PF0\\ADC0" B L 3350 2500 50 
F44 "PF1\\ADC1" B L 3350 2600 50 
F45 "PF2\\ADC2" B L 3350 2700 50 
F46 "PF3\\ADC3" B L 3350 2800 50 
F47 "PF4\\ADC4\\TCK" B L 3350 3100 50 
F48 "PF5\\ADC5\\TMS" B L 3350 3200 50 
F49 "PF6\\ADC6\\TDO" B L 3350 3300 50 
F50 "PF7\\ADC7\\TDI" B L 3350 1600 50 
F51 "PG3\\TOSC2" B R 5300 3900 50 
F52 "PG4\\TOSC1" B R 5300 4000 50 
F53 "PG5\\OC0B" B R 5300 4100 50 
F54 "PJ3\\PCINT12" B L 3350 5350 50 
F55 "PJ4\\PCINT13" B L 3350 5450 50 
F56 "PJ5\\PCINT14" B L 3350 5550 50 
F57 "PJ6\\PCINT15" B L 3350 5650 50 
F58 "PJ7" B L 3350 7350 50 
F59 "PK0\\ADC8\\PCINT16" B L 3350 3600 50 
F60 "PK1\\ADC9\\PCINT17" B L 3350 3700 50 
F61 "PK2\\ADC10\\PCINT17" B L 3350 3800 50 
F62 "PK3\\ADC11\\PCINT19" B L 3350 3900 50 
F63 "PK4\\ADC12\\PCINT20" B L 3350 6550 50 
F64 "PK5\\ADC13\\PCINT21" B L 3350 6950 50 
F65 "PK6\\ADC14\\PCINT22" B L 3350 7050 50 
F66 "PK7\\ADC15\\PCINT23" B L 3350 7150 50 
F67 "PL7" B L 3350 1300 50 
F68 "PG0" B R 5300 6300 50 
F69 "PG1" B R 5300 6400 50 
F70 "PG2" B R 5300 6500 50 
F71 "PH0\\RXD2" B R 5300 6600 50 
F72 "PH1\\TXD2" B R 5300 6700 50 
F73 "PH2\\XCK2" B R 5300 6800 50 
F74 "PH3\\OC4A" B R 5300 6900 50 
F75 "PH4\\OC4B" B R 5300 7000 50 
F76 "PH5\\OC4C" B R 5300 7100 50 
F77 "PH6\\OC2B" B R 5300 7200 50 
F78 "PH7\\T4" B R 5300 7300 50 
F79 "PJ0\\RXD3\\PCINT9" B R 5300 6600 50 
F80 "PJ1\\TXD3\\PCINT10" B R 5300 6500 50 
F81 "PJ2\\XCK3\\PCINT11" B L 3350 5250 50 
F82 "PL0\\ICP4" B R 5300 6250 50 
F83 "PL1\\ICP5" B R 5300 5150 50 
F84 "PL2\\T5" B R 5300 6050 50 
F85 "PL3\\OC5A" B R 5300 6150 50 
F86 "PL4\\OC5B" B R 5300 6200 50 
F87 "PL5\\OC5C" B L 3350 7250 50 
F88 "PL6" B L 3350 6900 50 
$EndSheet
Wire Wire Line
	2200 1300 3350 1300
Wire Wire Line
	3350 1600 2200 1600
Wire Wire Line
	3350 4200 2150 4200
Wire Wire Line
	2150 4300 3350 4300
Wire Wire Line
	3350 4400 2150 4400
Wire Wire Line
	2150 4500 3350 4500
Wire Wire Line
	3350 4600 2150 4600
Wire Wire Line
	2150 4700 3350 4700
Wire Wire Line
	3350 4800 2150 4800
Wire Wire Line
	2150 4900 3350 4900
Wire Wire Line
	3350 5250 2150 5250
Wire Wire Line
	2150 5350 3350 5350
Wire Wire Line
	3350 5450 2150 5450
Wire Wire Line
	2150 5550 3350 5550
Wire Wire Line
	3350 5650 2150 5650
Wire Wire Line
	2150 2500 3350 2500
Wire Wire Line
	2150 2600 3350 2600
Wire Wire Line
	2150 2700 3350 2700
Wire Wire Line
	2150 2800 3350 2800
Wire Wire Line
	2150 3100 3350 3100
Wire Wire Line
	2150 6000 3350 6000
Wire Wire Line
	2150 6200 3350 6200
Wire Wire Line
	2150 6100 3350 6100
Wire Wire Line
	3350 6550 2150 6550
Wire Wire Line
	2150 6650 3350 6650
Wire Wire Line
	3350 6750 2150 6750
$Sheet
S 6000 3000 850  400 
U 5D7519E8
F0 "OpenAVRc_I2C" 50
F1 "OpenAVRc_I2C.sch" 50
F2 "~RTC_INT" O L 6000 3300 50 
F3 "SCL" B L 6000 3100 50 
F4 "SDA" B L 6000 3200 50 
$EndSheet
Wire Wire Line
	5300 3100 6000 3100
Wire Wire Line
	6000 3200 5300 3200
Wire Wire Line
	5300 3300 6000 3300
$EndSCHEMATC
