-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/20/2026 19:54:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(63 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \S[32]~output_o\ : std_logic;
SIGNAL \S[33]~output_o\ : std_logic;
SIGNAL \S[34]~output_o\ : std_logic;
SIGNAL \S[35]~output_o\ : std_logic;
SIGNAL \S[36]~output_o\ : std_logic;
SIGNAL \S[37]~output_o\ : std_logic;
SIGNAL \S[38]~output_o\ : std_logic;
SIGNAL \S[39]~output_o\ : std_logic;
SIGNAL \S[40]~output_o\ : std_logic;
SIGNAL \S[41]~output_o\ : std_logic;
SIGNAL \S[42]~output_o\ : std_logic;
SIGNAL \S[43]~output_o\ : std_logic;
SIGNAL \S[44]~output_o\ : std_logic;
SIGNAL \S[45]~output_o\ : std_logic;
SIGNAL \S[46]~output_o\ : std_logic;
SIGNAL \S[47]~output_o\ : std_logic;
SIGNAL \S[48]~output_o\ : std_logic;
SIGNAL \S[49]~output_o\ : std_logic;
SIGNAL \S[50]~output_o\ : std_logic;
SIGNAL \S[51]~output_o\ : std_logic;
SIGNAL \S[52]~output_o\ : std_logic;
SIGNAL \S[53]~output_o\ : std_logic;
SIGNAL \S[54]~output_o\ : std_logic;
SIGNAL \S[55]~output_o\ : std_logic;
SIGNAL \S[56]~output_o\ : std_logic;
SIGNAL \S[57]~output_o\ : std_logic;
SIGNAL \S[58]~output_o\ : std_logic;
SIGNAL \S[59]~output_o\ : std_logic;
SIGNAL \S[60]~output_o\ : std_logic;
SIGNAL \S[61]~output_o\ : std_logic;
SIGNAL \S[62]~output_o\ : std_logic;
SIGNAL \S[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[1]~combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c_int~1_combout\ : std_logic;
SIGNAL \c_int~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[3]~combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \C~48_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[2]~combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \G[0]~1_combout\ : std_logic;
SIGNAL \G[0]~2_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \c_int~4_combout\ : std_logic;
SIGNAL \c_int~2_combout\ : std_logic;
SIGNAL \c_int~3_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:p_bit[1]~combout\ : std_logic;
SIGNAL \gen_blocks:1:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:c_int[3]~1_combout\ : std_logic;
SIGNAL \c_int~5_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \G[1]~4_combout\ : std_logic;
SIGNAL \C~20_combout\ : std_logic;
SIGNAL \C~21_combout\ : std_logic;
SIGNAL \G~3_combout\ : std_logic;
SIGNAL \G[1]~5_combout\ : std_logic;
SIGNAL \G[1]~6_combout\ : std_logic;
SIGNAL \C~49_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~77_combout\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[1]~combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~6_combout\ : std_logic;
SIGNAL \c_int~7_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \c_int~8_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \G~7_combout\ : std_logic;
SIGNAL \gen_blocks:2:c_int[3]~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \G~9_combout\ : std_logic;
SIGNAL \G~8_combout\ : std_logic;
SIGNAL \C~24_combout\ : std_logic;
SIGNAL \C~22_combout\ : std_logic;
SIGNAL \C~23_combout\ : std_logic;
SIGNAL \C~25_combout\ : std_logic;
SIGNAL \C~50_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:c_int[1]~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \C[3]~26_combout\ : std_logic;
SIGNAL \C[3]~27_combout\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[0]~combout\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[1]~combout\ : std_logic;
SIGNAL \c_int~9_combout\ : std_logic;
SIGNAL \gen_blocks:3:c_int[2]~combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \c_int~10_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:c_int[3]~1_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \C~28_combout\ : std_logic;
SIGNAL \C~29_combout\ : std_logic;
SIGNAL \G[3]~11_combout\ : std_logic;
SIGNAL \G~10_combout\ : std_logic;
SIGNAL \G[3]~12_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \gen_blocks:4:c_int[1]~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \c_int~11_combout\ : std_logic;
SIGNAL \gen_blocks:4:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:c_int[2]~combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \c_int~12_combout\ : std_logic;
SIGNAL \gen_blocks:4:c_int[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:4:c_int[3]~2_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \G[4]~14_combout\ : std_logic;
SIGNAL \C~30_combout\ : std_logic;
SIGNAL \G~13_combout\ : std_logic;
SIGNAL \G[4]~15_combout\ : std_logic;
SIGNAL \C~31_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:c_int[1]~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:c_int[3]~0_combout\ : std_logic;
SIGNAL \c_int~13_combout\ : std_logic;
SIGNAL \gen_blocks:5:c_int[2]~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:c_int[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:5:c_int[3]~2_combout\ : std_logic;
SIGNAL \c_int~14_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \G[5]~17_combout\ : std_logic;
SIGNAL \C~32_combout\ : std_logic;
SIGNAL \G~16_combout\ : std_logic;
SIGNAL \G[5]~18_combout\ : std_logic;
SIGNAL \C~33_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:c_int[1]~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \c_int~15_combout\ : std_logic;
SIGNAL \gen_blocks:6:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:c_int[2]~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \c_int~16_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:c_int[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:6:c_int[3]~2_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \G[6]~20_combout\ : std_logic;
SIGNAL \C~34_combout\ : std_logic;
SIGNAL \G~19_combout\ : std_logic;
SIGNAL \G[6]~21_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \C~35_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:c_int[1]~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \c_int~17_combout\ : std_logic;
SIGNAL \gen_blocks:7:c_int[3]~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:p_bit[2]~combout\ : std_logic;
SIGNAL \gen_blocks:7:p_bit[1]~combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \gen_blocks:7:c_int[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:7:c_int[3]~2_combout\ : std_logic;
SIGNAL \c_int~18_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \C~36_combout\ : std_logic;
SIGNAL \C~37_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \G[7]~23_combout\ : std_logic;
SIGNAL \G~22_combout\ : std_logic;
SIGNAL \G[7]~24_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \gen_blocks:8:c_int[1]~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \gen_blocks:8:p_bit[1]~combout\ : std_logic;
SIGNAL \gen_blocks:8:p_bit[0]~combout\ : std_logic;
SIGNAL \c_int~19_combout\ : std_logic;
SIGNAL \gen_blocks:8:c_int[2]~combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \gen_blocks:8:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:c_int[3]~1_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \c_int~20_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \G~25_combout\ : std_logic;
SIGNAL \C~38_combout\ : std_logic;
SIGNAL \G[8]~26_combout\ : std_logic;
SIGNAL \G[8]~27_combout\ : std_logic;
SIGNAL \C~39_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \gen_blocks:9:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \c_int~21_combout\ : std_logic;
SIGNAL \gen_blocks:9:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:9:c_int[2]~combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \c_int~22_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \gen_blocks:9:c_int[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:9:c_int[3]~2_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \G~28_combout\ : std_logic;
SIGNAL \G[9]~29_combout\ : std_logic;
SIGNAL \C~40_combout\ : std_logic;
SIGNAL \G[9]~30_combout\ : std_logic;
SIGNAL \C~41_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \gen_blocks:10:c_int[1]~0_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \c_int~24_combout\ : std_logic;
SIGNAL \c_int~25_combout\ : std_logic;
SIGNAL \c_int~23_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \gen_blocks:10:c_int[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:10:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:10:c_int[3]~2_combout\ : std_logic;
SIGNAL \c_int~26_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \G[10]~32_combout\ : std_logic;
SIGNAL \C~42_combout\ : std_logic;
SIGNAL \G~31_combout\ : std_logic;
SIGNAL \G[10]~33_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \gen_blocks:11:p_bit[0]~combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \C~43_combout\ : std_logic;
SIGNAL \gen_blocks:11:c_int[1]~0_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \gen_blocks:11:c_int[3]~0_combout\ : std_logic;
SIGNAL \c_int~27_combout\ : std_logic;
SIGNAL \gen_blocks:11:c_int[2]~combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \gen_blocks:11:c_int[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:11:c_int[3]~2_combout\ : std_logic;
SIGNAL \c_int~28_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \C~44_combout\ : std_logic;
SIGNAL \C~45_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \G[11]~35_combout\ : std_logic;
SIGNAL \G~34_combout\ : std_logic;
SIGNAL \G[11]~36_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \gen_blocks:12:c_int[1]~0_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \c_int~30_combout\ : std_logic;
SIGNAL \c_int~31_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \c_int~29_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \gen_blocks:12:p_bit[3]~combout\ : std_logic;
SIGNAL \gen_blocks:12:p_bit[2]~combout\ : std_logic;
SIGNAL \gen_blocks:12:c_int[3]~3_combout\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \G[12]~38_combout\ : std_logic;
SIGNAL \G~37_combout\ : std_logic;
SIGNAL \G[12]~39_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \C~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \gen_blocks:13:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \c_int~33_combout\ : std_logic;
SIGNAL \c_int~34_combout\ : std_logic;
SIGNAL \c_int~32_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \gen_blocks:13:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~36_combout\ : std_logic;
SIGNAL \c_int~35_combout\ : std_logic;
SIGNAL \gen_blocks:13:c_int[3]~combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \gen_blocks:13:p_bit[3]~combout\ : std_logic;
SIGNAL \C~52_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \G~40_combout\ : std_logic;
SIGNAL \G[13]~41_combout\ : std_logic;
SIGNAL \G[13]~42_combout\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \gen_blocks:14:c_int[1]~0_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \c_int~38_combout\ : std_logic;
SIGNAL \c_int~39_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \c_int~37_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \gen_blocks:14:p_bit[3]~combout\ : std_logic;
SIGNAL \gen_blocks:14:p_bit[2]~combout\ : std_logic;
SIGNAL \gen_blocks:14:p_bit[1]~combout\ : std_logic;
SIGNAL \c_int~42_combout\ : std_logic;
SIGNAL \c_int~40_combout\ : std_logic;
SIGNAL \c_int~41_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \C~53_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \G~43_combout\ : std_logic;
SIGNAL \G[14]~44_combout\ : std_logic;
SIGNAL \G[14]~45_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \gen_blocks:15:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \c_int~43_combout\ : std_logic;
SIGNAL \c_int~44_combout\ : std_logic;
SIGNAL \c_int~45_combout\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \gen_blocks:15:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~46_combout\ : std_logic;
SIGNAL \gen_blocks:15:p_bit[1]~combout\ : std_logic;
SIGNAL \c_int~47_combout\ : std_logic;
SIGNAL \gen_blocks:15:c_int[3]~0_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \gen_blocks:15:p_bit[3]~combout\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \G~46_combout\ : std_logic;
SIGNAL \C~46_combout\ : std_logic;
SIGNAL \C~47_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL C : std_logic_vector(16 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y21_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~75_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~76_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~77_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~63_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~64_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~66_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~78_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~67_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~68_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~69_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~79_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~80_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~70_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~71_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~81_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~72_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~73_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~82_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~83_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~74_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~47_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X115_Y24_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X114_Y23_N8
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X115_Y23_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y24_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X114_Y23_N18
\gen_blocks:0:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[1]~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \gen_blocks:0:p_bit[1]~combout\);

-- Location: LCCOMB_X114_Y23_N12
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \gen_blocks:0:p_bit[1]~combout\ $ (((\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \gen_blocks:0:p_bit[1]~combout\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X115_Y27_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X114_Y23_N16
\c_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~1_combout\ = (\gen_blocks:0:p_bit[1]~combout\ & (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \gen_blocks:0:p_bit[1]~combout\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \c_int~1_combout\);

-- Location: LCCOMB_X114_Y23_N30
\c_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \c_int~0_combout\);

-- Location: IOIBUF_X115_Y22_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X114_Y23_N20
\S~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~75_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (((\c_int~1_combout\) # (\c_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \c_int~1_combout\,
	datac => \c_int~0_combout\,
	datad => \B[2]~input_o\,
	combout => \S~75_combout\);

-- Location: LCCOMB_X114_Y23_N22
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X114_Y23_N24
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = (\A[1]~input_o\ & ((\S~20_combout\) # (\B[1]~input_o\))) # (!\A[1]~input_o\ & (\S~20_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \S~20_combout\,
	datad => \B[1]~input_o\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X115_Y22_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X114_Y23_N28
\gen_blocks:0:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[3]~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \gen_blocks:0:p_bit[3]~combout\);

-- Location: LCCOMB_X114_Y23_N10
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \gen_blocks:0:p_bit[3]~combout\ $ (((\A[2]~input_o\ & ((\S~21_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\S~21_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \S~21_combout\,
	datac => \gen_blocks:0:p_bit[3]~combout\,
	datad => \B[2]~input_o\,
	combout => \S~22_combout\);

-- Location: LCCOMB_X114_Y23_N6
\C~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~48_combout\ = (\c_int~1_combout\ & (\gen_blocks:0:p_bit[3]~combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \c_int~1_combout\,
	datac => \gen_blocks:0:p_bit[3]~combout\,
	datad => \B[2]~input_o\,
	combout => \C~48_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X114_Y23_N26
\gen_blocks:0:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[2]~combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \gen_blocks:0:p_bit[2]~combout\);

-- Location: LCCOMB_X114_Y23_N4
\G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \G~0_combout\);

-- Location: LCCOMB_X114_Y23_N14
\G[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[0]~1_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \G[0]~1_combout\);

-- Location: LCCOMB_X114_Y23_N0
\G[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[0]~2_combout\ = (\G~0_combout\) # ((\gen_blocks:0:p_bit[2]~combout\ & (\G[0]~1_combout\ & \gen_blocks:0:p_bit[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:p_bit[2]~combout\,
	datab => \G~0_combout\,
	datac => \G[0]~1_combout\,
	datad => \gen_blocks:0:p_bit[3]~combout\,
	combout => \G[0]~2_combout\);

-- Location: IOIBUF_X56_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X55_Y1_N24
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\C~48_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~48_combout\,
	datab => \A[4]~input_o\,
	datac => \G[0]~2_combout\,
	datad => \B[4]~input_o\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X35_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X55_Y1_N28
\gen_blocks:1:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[1]~0_combout\ = (\A[4]~input_o\ & ((\C~48_combout\) # ((\G[0]~2_combout\) # (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\C~48_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~48_combout\,
	datab => \A[4]~input_o\,
	datac => \G[0]~2_combout\,
	datad => \B[4]~input_o\,
	combout => \gen_blocks:1:c_int[1]~0_combout\);

-- Location: LCCOMB_X55_Y1_N22
\S~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~76_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (\gen_blocks:1:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \gen_blocks:1:c_int[1]~0_combout\,
	combout => \S~76_combout\);

-- Location: LCCOMB_X55_Y1_N26
\c_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~4_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \c_int~4_combout\);

-- Location: LCCOMB_X55_Y1_N6
\c_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~2_combout\ = (\B[5]~input_o\ & (!\A[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \c_int~2_combout\);

-- Location: LCCOMB_X55_Y1_N16
\c_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~3_combout\ = (\c_int~2_combout\ & ((\C~48_combout\) # (\G[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~48_combout\,
	datac => \G[0]~2_combout\,
	datad => \c_int~2_combout\,
	combout => \c_int~3_combout\);

-- Location: IOIBUF_X54_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X55_Y1_N12
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (((\c_int~4_combout\) # (\c_int~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~4_combout\,
	datab => \c_int~3_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X54_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X55_Y1_N10
\gen_blocks:1:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:p_bit[1]~combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \gen_blocks:1:p_bit[1]~combout\);

-- Location: LCCOMB_X55_Y1_N0
\gen_blocks:1:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[3]~0_combout\ = (\A[4]~input_o\ & ((\C~48_combout\) # ((\G[0]~2_combout\) # (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\C~48_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~48_combout\,
	datab => \A[4]~input_o\,
	datac => \G[0]~2_combout\,
	datad => \B[4]~input_o\,
	combout => \gen_blocks:1:c_int[3]~0_combout\);

-- Location: LCCOMB_X55_Y1_N18
\gen_blocks:1:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[3]~1_combout\ = (\gen_blocks:1:p_bit[1]~combout\ & (\gen_blocks:1:c_int[3]~0_combout\ & (\B[6]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:p_bit[1]~combout\,
	datab => \gen_blocks:1:c_int[3]~0_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \gen_blocks:1:c_int[3]~1_combout\);

-- Location: LCCOMB_X55_Y1_N30
\c_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~5_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\B[5]~input_o\ & \A[5]~input_o\)))) # (!\B[6]~input_o\ & (\B[5]~input_o\ & (\A[5]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \c_int~5_combout\);

-- Location: IOIBUF_X42_Y0_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X55_Y1_N4
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (((\gen_blocks:1:c_int[3]~1_combout\) # (\c_int~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \gen_blocks:1:c_int[3]~1_combout\,
	datac => \c_int~5_combout\,
	datad => \B[7]~input_o\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X72_Y0_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\G[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~4_combout\ = (\A[7]~input_o\ & (!\B[7]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \G[1]~4_combout\);

-- Location: LCCOMB_X80_Y1_N24
\C~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~20_combout\ = (\c_int~2_combout\ & \G[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~2_combout\,
	datac => \G[1]~4_combout\,
	combout => \C~20_combout\);

-- Location: LCCOMB_X114_Y23_N2
\C~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~21_combout\ = (\C~20_combout\ & (\gen_blocks:0:p_bit[3]~combout\ & (\gen_blocks:0:p_bit[2]~combout\ & \c_int~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~20_combout\,
	datab => \gen_blocks:0:p_bit[3]~combout\,
	datac => \gen_blocks:0:p_bit[2]~combout\,
	datad => \c_int~1_combout\,
	combout => \C~21_combout\);

-- Location: LCCOMB_X55_Y1_N14
\G~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~3_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\B[7]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \G~3_combout\);

-- Location: LCCOMB_X55_Y1_N2
\G[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~5_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \G[1]~5_combout\);

-- Location: LCCOMB_X55_Y1_N20
\G[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~6_combout\ = (\G~3_combout\) # ((\G[1]~4_combout\ & \G[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G~3_combout\,
	datac => \G[1]~4_combout\,
	datad => \G[1]~5_combout\,
	combout => \G[1]~6_combout\);

-- Location: LCCOMB_X80_Y1_N22
\C~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~49_combout\ = (\G[1]~6_combout\) # ((\c_int~2_combout\ & (\G[1]~4_combout\ & \G[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~2_combout\,
	datab => \G[1]~4_combout\,
	datac => \G[0]~2_combout\,
	datad => \G[1]~6_combout\,
	combout => \C~49_combout\);

-- Location: LCCOMB_X79_Y1_N8
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\C~21_combout\) # (\C~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \C~21_combout\,
	datad => \C~49_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X79_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X79_Y1_N28
\gen_blocks:2:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[1]~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\C~21_combout\) # (\C~49_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & ((\C~21_combout\) # (\C~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \C~21_combout\,
	datad => \C~49_combout\,
	combout => \gen_blocks:2:c_int[1]~0_combout\);

-- Location: LCCOMB_X79_Y1_N14
\S~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~77_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\gen_blocks:2:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \gen_blocks:2:c_int[1]~0_combout\,
	combout => \S~77_combout\);

-- Location: LCCOMB_X79_Y1_N10
\gen_blocks:2:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[1]~combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \gen_blocks:2:p_bit[1]~combout\);

-- Location: IOIBUF_X74_Y0_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X79_Y1_N18
\gen_blocks:2:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[2]~combout\ = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	combout => \gen_blocks:2:p_bit[2]~combout\);

-- Location: LCCOMB_X79_Y1_N22
\c_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~6_combout\ = (\C~21_combout\ & (\B[8]~input_o\ $ ((\A[8]~input_o\)))) # (!\C~21_combout\ & (\C~49_combout\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \C~21_combout\,
	datad => \C~49_combout\,
	combout => \c_int~6_combout\);

-- Location: LCCOMB_X79_Y1_N16
\c_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~7_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \c_int~7_combout\);

-- Location: LCCOMB_X79_Y1_N20
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \gen_blocks:2:p_bit[2]~combout\ $ (((\c_int~7_combout\) # ((\gen_blocks:2:p_bit[1]~combout\ & \c_int~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:p_bit[1]~combout\,
	datab => \gen_blocks:2:p_bit[2]~combout\,
	datac => \c_int~6_combout\,
	datad => \c_int~7_combout\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X79_Y1_N30
\c_int~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~8_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\A[9]~input_o\ & \B[9]~input_o\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\A[9]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \c_int~8_combout\);

-- Location: IOIBUF_X79_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X79_Y1_N0
\G~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~7_combout\ = (\A[8]~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \G~7_combout\);

-- Location: LCCOMB_X79_Y1_N26
\gen_blocks:2:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[3]~0_combout\ = (\gen_blocks:2:p_bit[1]~combout\ & (\gen_blocks:2:p_bit[2]~combout\ & ((\c_int~6_combout\) # (\G~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:p_bit[1]~combout\,
	datab => \gen_blocks:2:p_bit[2]~combout\,
	datac => \c_int~6_combout\,
	datad => \G~7_combout\,
	combout => \gen_blocks:2:c_int[3]~0_combout\);

-- Location: IOIBUF_X74_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X79_Y1_N4
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\ $ (((\c_int~8_combout\) # (\gen_blocks:2:c_int[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~8_combout\,
	datab => \B[11]~input_o\,
	datac => \gen_blocks:2:c_int[3]~0_combout\,
	datad => \A[11]~input_o\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X79_Y1_N2
\G~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~9_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[10]~input_o\ & (\A[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \G~9_combout\);

-- Location: LCCOMB_X79_Y1_N6
\G~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~8_combout\ = (\B[10]~input_o\ & (!\A[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \G~8_combout\);

-- Location: LCCOMB_X79_Y1_N12
\C~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~24_combout\ = (\G~8_combout\ & ((\B[9]~input_o\ & ((\G~7_combout\) # (\A[9]~input_o\))) # (!\B[9]~input_o\ & (\G~7_combout\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \G~7_combout\,
	datac => \A[9]~input_o\,
	datad => \G~8_combout\,
	combout => \C~24_combout\);

-- Location: LCCOMB_X79_Y1_N24
\C~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~22_combout\ = (\G~8_combout\ & (\gen_blocks:2:p_bit[1]~combout\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~8_combout\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \gen_blocks:2:p_bit[1]~combout\,
	combout => \C~22_combout\);

-- Location: LCCOMB_X80_Y1_N10
\C~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~23_combout\ = (\C~22_combout\ & ((\G[1]~6_combout\) # ((\G[0]~2_combout\ & \C~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[1]~6_combout\,
	datab => \C~22_combout\,
	datac => \G[0]~2_combout\,
	datad => \C~20_combout\,
	combout => \C~23_combout\);

-- Location: LCCOMB_X80_Y1_N12
\C~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~25_combout\ = (\G~9_combout\) # ((\C~24_combout\) # (\C~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~9_combout\,
	datac => \C~24_combout\,
	datad => \C~23_combout\,
	combout => \C~25_combout\);

-- Location: LCCOMB_X80_Y1_N16
\C~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~50_combout\ = (\c_int~2_combout\ & (\G[1]~4_combout\ & (\C~48_combout\ & \C~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~2_combout\,
	datab => \G[1]~4_combout\,
	datac => \C~48_combout\,
	datad => \C~22_combout\,
	combout => \C~50_combout\);

-- Location: IOIBUF_X81_Y0_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X80_Y1_N30
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (((\C~25_combout\) # (\C~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~25_combout\,
	datab => \C~50_combout\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X83_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X80_Y1_N0
\gen_blocks:3:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[1]~0_combout\ = (\A[12]~input_o\ & ((\C~25_combout\) # ((\C~50_combout\) # (\B[12]~input_o\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & ((\C~25_combout\) # (\C~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~25_combout\,
	datab => \C~50_combout\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \gen_blocks:3:c_int[1]~0_combout\);

-- Location: IOIBUF_X94_Y0_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X84_Y1_N24
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \B[13]~input_o\ $ (\gen_blocks:3:c_int[1]~0_combout\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datac => \gen_blocks:3:c_int[1]~0_combout\,
	datad => \A[13]~input_o\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X80_Y1_N26
\C[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[3]~26_combout\ = (\c_int~2_combout\ & (\G[1]~4_combout\ & (\C~48_combout\ & \C~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~2_combout\,
	datab => \G[1]~4_combout\,
	datac => \C~48_combout\,
	datad => \C~22_combout\,
	combout => \C[3]~26_combout\);

-- Location: LCCOMB_X80_Y1_N4
\C[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[3]~27_combout\ = (\G~9_combout\) # ((\C~24_combout\) # ((\C[3]~26_combout\) # (\C~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~9_combout\,
	datab => \C~24_combout\,
	datac => \C[3]~26_combout\,
	datad => \C~23_combout\,
	combout => \C[3]~27_combout\);

-- Location: LCCOMB_X84_Y1_N28
\gen_blocks:3:p_bit[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[0]~combout\ = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	combout => \gen_blocks:3:p_bit[0]~combout\);

-- Location: LCCOMB_X84_Y1_N30
\gen_blocks:3:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[1]~combout\ = \B[13]~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \gen_blocks:3:p_bit[1]~combout\);

-- Location: LCCOMB_X84_Y1_N10
\c_int~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~9_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\A[13]~input_o\ & (\A[12]~input_o\ & (\B[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \c_int~9_combout\);

-- Location: LCCOMB_X84_Y1_N0
\gen_blocks:3:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[2]~combout\ = (\c_int~9_combout\) # ((\C[3]~27_combout\ & (\gen_blocks:3:p_bit[0]~combout\ & \gen_blocks:3:p_bit[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~27_combout\,
	datab => \gen_blocks:3:p_bit[0]~combout\,
	datac => \gen_blocks:3:p_bit[1]~combout\,
	datad => \c_int~9_combout\,
	combout => \gen_blocks:3:c_int[2]~combout\);

-- Location: IOIBUF_X85_Y0_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X87_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X84_Y1_N18
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \gen_blocks:3:c_int[2]~combout\ $ (\B[14]~input_o\ $ (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:3:c_int[2]~combout\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X84_Y1_N12
\c_int~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~10_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\B[14]~input_o\ & (\B[13]~input_o\ & (\A[13]~input_o\ & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \c_int~10_combout\);

-- Location: IOIBUF_X85_Y0_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X84_Y1_N14
\gen_blocks:3:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[3]~0_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \gen_blocks:3:c_int[3]~0_combout\);

-- Location: LCCOMB_X84_Y1_N8
\gen_blocks:3:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[3]~1_combout\ = (\gen_blocks:3:c_int[3]~0_combout\ & ((\A[12]~input_o\ & ((\B[12]~input_o\) # (\C[3]~27_combout\))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & \C[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \gen_blocks:3:c_int[3]~0_combout\,
	datac => \B[12]~input_o\,
	datad => \C[3]~27_combout\,
	combout => \gen_blocks:3:c_int[3]~1_combout\);

-- Location: LCCOMB_X84_Y1_N26
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\c_int~10_combout\) # (\gen_blocks:3:c_int[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~10_combout\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \gen_blocks:3:c_int[3]~1_combout\,
	combout => \S~32_combout\);

-- Location: LCCOMB_X84_Y1_N20
\C~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~28_combout\ = (\B[14]~input_o\ & (!\A[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \C~28_combout\);

-- Location: LCCOMB_X84_Y1_N6
\C~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~29_combout\ = (\C[3]~27_combout\ & (\gen_blocks:3:p_bit[0]~combout\ & (\gen_blocks:3:p_bit[1]~combout\ & \C~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~27_combout\,
	datab => \gen_blocks:3:p_bit[0]~combout\,
	datac => \gen_blocks:3:p_bit[1]~combout\,
	datad => \C~28_combout\,
	combout => \C~29_combout\);

-- Location: LCCOMB_X84_Y1_N2
\G[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[3]~11_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\A[13]~input_o\ & (\A[12]~input_o\ & (\B[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \G[3]~11_combout\);

-- Location: LCCOMB_X84_Y1_N16
\G~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~10_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\A[15]~input_o\ & (\B[14]~input_o\ & (\B[15]~input_o\ & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \G~10_combout\);

-- Location: LCCOMB_X84_Y1_N4
\G[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[3]~12_combout\ = (\G~10_combout\) # ((\G[3]~11_combout\ & \C~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G[3]~11_combout\,
	datac => \G~10_combout\,
	datad => \C~28_combout\,
	combout => \G[3]~12_combout\);

-- Location: IOIBUF_X89_Y0_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X89_Y1_N8
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\C~29_combout\) # (\G[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~29_combout\,
	datab => \G[3]~12_combout\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X89_Y1_N26
\gen_blocks:4:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:c_int[1]~0_combout\ = (\A[16]~input_o\ & ((\C~29_combout\) # ((\G[3]~12_combout\) # (\B[16]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & ((\C~29_combout\) # (\G[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~29_combout\,
	datab => \G[3]~12_combout\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \gen_blocks:4:c_int[1]~0_combout\);

-- Location: IOIBUF_X87_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X89_Y1_N4
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \gen_blocks:4:c_int[1]~0_combout\ $ (\B[17]~input_o\ $ (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:c_int[1]~0_combout\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X89_Y0_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X89_Y1_N14
\c_int~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~11_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[16]~input_o\ & (\A[17]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[16]~input_o\,
	combout => \c_int~11_combout\);

-- Location: LCCOMB_X89_Y1_N16
\gen_blocks:4:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:c_int[3]~0_combout\ = (\C~29_combout\ & ((\A[16]~input_o\ $ (\B[16]~input_o\)))) # (!\C~29_combout\ & (\G[3]~12_combout\ & (\A[16]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~29_combout\,
	datab => \G[3]~12_combout\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \gen_blocks:4:c_int[3]~0_combout\);

-- Location: LCCOMB_X89_Y1_N2
\gen_blocks:4:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:c_int[2]~combout\ = (\c_int~11_combout\) # ((\gen_blocks:4:c_int[3]~0_combout\ & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \c_int~11_combout\,
	datac => \A[17]~input_o\,
	datad => \gen_blocks:4:c_int[3]~0_combout\,
	combout => \gen_blocks:4:c_int[2]~combout\);

-- Location: LCCOMB_X89_Y1_N20
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (\gen_blocks:4:c_int[2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => \gen_blocks:4:c_int[2]~combout\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X89_Y1_N30
\c_int~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~12_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # ((\B[17]~input_o\ & \A[17]~input_o\)))) # (!\B[18]~input_o\ & (\B[17]~input_o\ & (\A[17]~input_o\ & \A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[18]~input_o\,
	combout => \c_int~12_combout\);

-- Location: LCCOMB_X89_Y1_N24
\gen_blocks:4:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:c_int[3]~1_combout\ = (\B[18]~input_o\ & (!\A[18]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[18]~input_o\,
	combout => \gen_blocks:4:c_int[3]~1_combout\);

-- Location: LCCOMB_X89_Y1_N18
\gen_blocks:4:c_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:c_int[3]~2_combout\ = (\gen_blocks:4:c_int[3]~1_combout\ & ((\gen_blocks:4:c_int[3]~0_combout\) # ((\B[16]~input_o\ & \A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \gen_blocks:4:c_int[3]~0_combout\,
	datac => \A[16]~input_o\,
	datad => \gen_blocks:4:c_int[3]~1_combout\,
	combout => \gen_blocks:4:c_int[3]~2_combout\);

-- Location: IOIBUF_X89_Y0_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X89_Y1_N28
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (((\c_int~12_combout\) # (\gen_blocks:4:c_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~12_combout\,
	datab => \gen_blocks:4:c_int[3]~2_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X89_Y1_N12
\G[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[4]~14_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[16]~input_o\ & (\A[17]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[16]~input_o\,
	combout => \G[4]~14_combout\);

-- Location: LCCOMB_X89_Y1_N22
\C~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~30_combout\ = (\B[18]~input_o\ & (!\A[18]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \C~30_combout\);

-- Location: LCCOMB_X89_Y1_N10
\G~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~13_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\B[18]~input_o\ & \A[18]~input_o\)))) # (!\B[19]~input_o\ & (\B[18]~input_o\ & (\A[18]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \G~13_combout\);

-- Location: LCCOMB_X89_Y1_N6
\G[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[4]~15_combout\ = (\G~13_combout\) # ((\G[4]~14_combout\ & \C~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[4]~14_combout\,
	datac => \C~30_combout\,
	datad => \G~13_combout\,
	combout => \G[4]~15_combout\);

-- Location: LCCOMB_X89_Y1_N0
\C~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~31_combout\ = (\C~30_combout\ & (\gen_blocks:4:c_int[3]~0_combout\ & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~30_combout\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \gen_blocks:4:c_int[3]~0_combout\,
	combout => \C~31_combout\);

-- Location: IOIBUF_X115_Y13_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X115_Y18_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X114_Y15_N16
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \B[20]~input_o\ $ (\A[20]~input_o\ $ (((\G[4]~15_combout\) # (\C~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[4]~15_combout\,
	datab => \C~31_combout\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X115_Y14_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X114_Y15_N26
\gen_blocks:5:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:c_int[1]~0_combout\ = (\B[20]~input_o\ & ((\G[4]~15_combout\) # ((\C~31_combout\) # (\A[20]~input_o\)))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & ((\G[4]~15_combout\) # (\C~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[4]~15_combout\,
	datab => \C~31_combout\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \gen_blocks:5:c_int[1]~0_combout\);

-- Location: IOIBUF_X115_Y16_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X114_Y15_N20
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = \B[21]~input_o\ $ (\gen_blocks:5:c_int[1]~0_combout\ $ (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datac => \gen_blocks:5:c_int[1]~0_combout\,
	datad => \A[21]~input_o\,
	combout => \S~38_combout\);

-- Location: IOIBUF_X115_Y15_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X114_Y15_N0
\gen_blocks:5:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:c_int[3]~0_combout\ = (\G[4]~15_combout\ & ((\B[20]~input_o\ $ (\A[20]~input_o\)))) # (!\G[4]~15_combout\ & (\C~31_combout\ & (\B[20]~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[4]~15_combout\,
	datab => \C~31_combout\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \gen_blocks:5:c_int[3]~0_combout\);

-- Location: LCCOMB_X114_Y15_N6
\c_int~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~13_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\B[20]~input_o\ & \A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \c_int~13_combout\);

-- Location: LCCOMB_X114_Y15_N2
\gen_blocks:5:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:c_int[2]~combout\ = (\c_int~13_combout\) # ((\gen_blocks:5:c_int[3]~0_combout\ & (\B[21]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \gen_blocks:5:c_int[3]~0_combout\,
	datac => \c_int~13_combout\,
	datad => \A[21]~input_o\,
	combout => \gen_blocks:5:c_int[2]~combout\);

-- Location: IOIBUF_X115_Y17_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X114_Y15_N4
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \B[22]~input_o\ $ (\gen_blocks:5:c_int[2]~combout\ $ (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \gen_blocks:5:c_int[2]~combout\,
	datad => \A[22]~input_o\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X115_Y16_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X114_Y15_N24
\gen_blocks:5:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:c_int[3]~1_combout\ = (\B[22]~input_o\ & (!\A[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \A[22]~input_o\,
	combout => \gen_blocks:5:c_int[3]~1_combout\);

-- Location: LCCOMB_X114_Y15_N18
\gen_blocks:5:c_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:c_int[3]~2_combout\ = (\gen_blocks:5:c_int[3]~1_combout\ & ((\gen_blocks:5:c_int[3]~0_combout\) # ((\A[20]~input_o\ & \B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \gen_blocks:5:c_int[3]~0_combout\,
	datac => \B[20]~input_o\,
	datad => \gen_blocks:5:c_int[3]~1_combout\,
	combout => \gen_blocks:5:c_int[3]~2_combout\);

-- Location: LCCOMB_X114_Y15_N30
\c_int~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~14_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # ((\A[21]~input_o\ & \B[21]~input_o\)))) # (!\B[22]~input_o\ & (\A[21]~input_o\ & (\B[21]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \A[22]~input_o\,
	combout => \c_int~14_combout\);

-- Location: IOIBUF_X115_Y15_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X114_Y15_N12
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (((\gen_blocks:5:c_int[3]~2_combout\) # (\c_int~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \gen_blocks:5:c_int[3]~2_combout\,
	datac => \c_int~14_combout\,
	datad => \B[23]~input_o\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X115_Y8_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X114_Y15_N28
\G[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[5]~17_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\B[20]~input_o\ & \A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \G[5]~17_combout\);

-- Location: LCCOMB_X114_Y15_N14
\C~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~32_combout\ = (\B[22]~input_o\ & (!\A[22]~input_o\ & (\B[23]~input_o\ $ (\A[23]~input_o\)))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & (\B[23]~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \C~32_combout\);

-- Location: LCCOMB_X114_Y15_N10
\G~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~16_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\B[23]~input_o\ & (\B[22]~input_o\ & (\A[23]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \G~16_combout\);

-- Location: LCCOMB_X114_Y15_N22
\G[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[5]~18_combout\ = (\G~16_combout\) # ((\G[5]~17_combout\ & \C~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G[5]~17_combout\,
	datac => \C~32_combout\,
	datad => \G~16_combout\,
	combout => \G[5]~18_combout\);

-- Location: LCCOMB_X114_Y15_N8
\C~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~33_combout\ = (\gen_blocks:5:c_int[3]~0_combout\ & (\C~32_combout\ & (\B[21]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \gen_blocks:5:c_int[3]~0_combout\,
	datac => \C~32_combout\,
	datad => \A[21]~input_o\,
	combout => \C~33_combout\);

-- Location: IOIBUF_X115_Y10_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X114_Y8_N16
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (((\G[5]~18_combout\) # (\C~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \G[5]~18_combout\,
	datac => \C~33_combout\,
	datad => \B[24]~input_o\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X115_Y10_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X114_Y8_N26
\gen_blocks:6:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:c_int[1]~0_combout\ = (\A[24]~input_o\ & ((\G[5]~18_combout\) # ((\C~33_combout\) # (\B[24]~input_o\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\G[5]~18_combout\) # (\C~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \G[5]~18_combout\,
	datac => \C~33_combout\,
	datad => \B[24]~input_o\,
	combout => \gen_blocks:6:c_int[1]~0_combout\);

-- Location: IOIBUF_X115_Y11_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X114_Y8_N12
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = \B[25]~input_o\ $ (\gen_blocks:6:c_int[1]~0_combout\ $ (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datac => \gen_blocks:6:c_int[1]~0_combout\,
	datad => \A[25]~input_o\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X115_Y5_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X114_Y8_N6
\c_int~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~15_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[24]~input_o\ & (\A[24]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[25]~input_o\,
	combout => \c_int~15_combout\);

-- Location: LCCOMB_X114_Y8_N0
\gen_blocks:6:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:c_int[3]~0_combout\ = (\G[5]~18_combout\ & (\A[24]~input_o\ $ (((\B[24]~input_o\))))) # (!\G[5]~18_combout\ & (\C~33_combout\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \G[5]~18_combout\,
	datac => \C~33_combout\,
	datad => \B[24]~input_o\,
	combout => \gen_blocks:6:c_int[3]~0_combout\);

-- Location: LCCOMB_X114_Y8_N2
\gen_blocks:6:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:c_int[2]~combout\ = (\c_int~15_combout\) # ((\gen_blocks:6:c_int[3]~0_combout\ & (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~15_combout\,
	datab => \B[25]~input_o\,
	datac => \gen_blocks:6:c_int[3]~0_combout\,
	datad => \A[25]~input_o\,
	combout => \gen_blocks:6:c_int[2]~combout\);

-- Location: IOIBUF_X115_Y8_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X114_Y8_N20
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = \B[26]~input_o\ $ (\gen_blocks:6:c_int[2]~combout\ $ (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[26]~input_o\,
	datac => \gen_blocks:6:c_int[2]~combout\,
	datad => \A[26]~input_o\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X114_Y8_N30
\c_int~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~16_combout\ = (\A[26]~input_o\ & ((\B[26]~input_o\) # ((\A[25]~input_o\ & \B[25]~input_o\)))) # (!\A[26]~input_o\ & (\A[25]~input_o\ & (\B[26]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \B[25]~input_o\,
	combout => \c_int~16_combout\);

-- Location: IOIBUF_X115_Y6_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X114_Y8_N8
\gen_blocks:6:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:c_int[3]~1_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \B[25]~input_o\,
	combout => \gen_blocks:6:c_int[3]~1_combout\);

-- Location: LCCOMB_X114_Y8_N18
\gen_blocks:6:c_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:c_int[3]~2_combout\ = (\gen_blocks:6:c_int[3]~1_combout\ & ((\gen_blocks:6:c_int[3]~0_combout\) # ((\A[24]~input_o\ & \B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \gen_blocks:6:c_int[3]~0_combout\,
	datac => \gen_blocks:6:c_int[3]~1_combout\,
	datad => \B[24]~input_o\,
	combout => \gen_blocks:6:c_int[3]~2_combout\);

-- Location: LCCOMB_X114_Y8_N4
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (((\c_int~16_combout\) # (\gen_blocks:6:c_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~16_combout\,
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \gen_blocks:6:c_int[3]~2_combout\,
	combout => \S~44_combout\);

-- Location: LCCOMB_X114_Y8_N28
\G[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[6]~20_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[24]~input_o\ & (\A[24]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[25]~input_o\,
	combout => \G[6]~20_combout\);

-- Location: LCCOMB_X114_Y8_N22
\C~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~34_combout\ = (\B[27]~input_o\ & (!\A[27]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \A[26]~input_o\,
	combout => \C~34_combout\);

-- Location: LCCOMB_X114_Y8_N10
\G~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~19_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\B[26]~input_o\ & \A[26]~input_o\)))) # (!\B[27]~input_o\ & (\B[26]~input_o\ & (\A[27]~input_o\ & \A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[27]~input_o\,
	datad => \A[26]~input_o\,
	combout => \G~19_combout\);

-- Location: LCCOMB_X114_Y8_N14
\G[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[6]~21_combout\ = (\G~19_combout\) # ((\G[6]~20_combout\ & \C~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G[6]~20_combout\,
	datac => \C~34_combout\,
	datad => \G~19_combout\,
	combout => \G[6]~21_combout\);

-- Location: IOIBUF_X65_Y0_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X114_Y8_N24
\C~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~35_combout\ = (\gen_blocks:6:c_int[3]~0_combout\ & (\C~34_combout\ & (\A[25]~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \gen_blocks:6:c_int[3]~0_combout\,
	datac => \C~34_combout\,
	datad => \B[25]~input_o\,
	combout => \C~35_combout\);

-- Location: LCCOMB_X61_Y1_N24
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (((\G[6]~21_combout\) # (\C~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[6]~21_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \C~35_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X62_Y0_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X62_Y1_N24
\gen_blocks:7:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:c_int[1]~0_combout\ = (\B[28]~input_o\ & ((\G[6]~21_combout\) # ((\A[28]~input_o\) # (\C~35_combout\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & ((\G[6]~21_combout\) # (\C~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \G[6]~21_combout\,
	datac => \A[28]~input_o\,
	datad => \C~35_combout\,
	combout => \gen_blocks:7:c_int[1]~0_combout\);

-- Location: IOIBUF_X65_Y0_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X62_Y1_N26
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \B[29]~input_o\ $ (\gen_blocks:7:c_int[1]~0_combout\ $ (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \gen_blocks:7:c_int[1]~0_combout\,
	datad => \A[29]~input_o\,
	combout => \S~46_combout\);

-- Location: LCCOMB_X61_Y1_N6
\c_int~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~17_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\B[28]~input_o\ & \A[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\B[28]~input_o\ & \A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \c_int~17_combout\);

-- Location: LCCOMB_X61_Y1_N20
\gen_blocks:7:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:c_int[3]~0_combout\ = (\G[6]~21_combout\ & (\A[28]~input_o\ $ ((\B[28]~input_o\)))) # (!\G[6]~21_combout\ & (\C~35_combout\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[6]~21_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \C~35_combout\,
	combout => \gen_blocks:7:c_int[3]~0_combout\);

-- Location: IOIBUF_X60_Y0_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X61_Y1_N8
\gen_blocks:7:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:p_bit[2]~combout\ = \A[30]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \gen_blocks:7:p_bit[2]~combout\);

-- Location: LCCOMB_X61_Y1_N10
\gen_blocks:7:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:p_bit[1]~combout\ = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \gen_blocks:7:p_bit[1]~combout\);

-- Location: LCCOMB_X61_Y1_N18
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \gen_blocks:7:p_bit[2]~combout\ $ (((\c_int~17_combout\) # ((\gen_blocks:7:c_int[3]~0_combout\ & \gen_blocks:7:p_bit[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~17_combout\,
	datab => \gen_blocks:7:c_int[3]~0_combout\,
	datac => \gen_blocks:7:p_bit[2]~combout\,
	datad => \gen_blocks:7:p_bit[1]~combout\,
	combout => \S~47_combout\);

-- Location: LCCOMB_X61_Y1_N22
\gen_blocks:7:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:c_int[3]~1_combout\ = (\B[30]~input_o\ & (!\A[30]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \gen_blocks:7:c_int[3]~1_combout\);

-- Location: LCCOMB_X61_Y1_N0
\gen_blocks:7:c_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:c_int[3]~2_combout\ = (\gen_blocks:7:c_int[3]~1_combout\ & ((\gen_blocks:7:c_int[3]~0_combout\) # ((\B[28]~input_o\ & \A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:c_int[3]~1_combout\,
	datab => \gen_blocks:7:c_int[3]~0_combout\,
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \gen_blocks:7:c_int[3]~2_combout\);

-- Location: LCCOMB_X61_Y1_N4
\c_int~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~18_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # ((\B[29]~input_o\ & \A[29]~input_o\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\B[29]~input_o\ & \A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \c_int~18_combout\);

-- Location: IOIBUF_X65_Y0_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X61_Y1_N26
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (((\gen_blocks:7:c_int[3]~2_combout\) # (\c_int~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:c_int[3]~2_combout\,
	datab => \c_int~18_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \S~48_combout\);

-- Location: LCCOMB_X61_Y1_N12
\C~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~36_combout\ = (\B[30]~input_o\ & (!\A[30]~input_o\ & (\A[31]~input_o\ $ (\B[31]~input_o\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \C~36_combout\);

-- Location: LCCOMB_X61_Y1_N30
\C~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~37_combout\ = (\C~36_combout\ & (\gen_blocks:7:c_int[3]~0_combout\ & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~36_combout\,
	datab => \gen_blocks:7:c_int[3]~0_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \C~37_combout\);

-- Location: IOIBUF_X49_Y0_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X61_Y1_N2
\G[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[7]~23_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\B[28]~input_o\ & \A[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\B[28]~input_o\ & \A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \G[7]~23_combout\);

-- Location: LCCOMB_X61_Y1_N16
\G~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~22_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # ((\B[30]~input_o\ & \A[30]~input_o\)))) # (!\A[31]~input_o\ & (\B[30]~input_o\ & (\A[30]~input_o\ & \B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \G~22_combout\);

-- Location: LCCOMB_X61_Y1_N28
\G[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[7]~24_combout\ = (\G~22_combout\) # ((\C~36_combout\ & \G[7]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~36_combout\,
	datab => \G[7]~23_combout\,
	datad => \G~22_combout\,
	combout => \G[7]~24_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X53_Y1_N0
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \B[32]~input_o\ $ (\A[32]~input_o\ $ (((\C~37_combout\) # (\G[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~37_combout\,
	datab => \B[32]~input_o\,
	datac => \G[7]~24_combout\,
	datad => \A[32]~input_o\,
	combout => \S~49_combout\);

-- Location: LCCOMB_X53_Y1_N18
\gen_blocks:8:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:8:c_int[1]~0_combout\ = (\B[32]~input_o\ & ((\C~37_combout\) # ((\G[7]~24_combout\) # (\A[32]~input_o\)))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & ((\C~37_combout\) # (\G[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~37_combout\,
	datab => \B[32]~input_o\,
	datac => \G[7]~24_combout\,
	datad => \A[32]~input_o\,
	combout => \gen_blocks:8:c_int[1]~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X53_Y1_N28
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = \gen_blocks:8:c_int[1]~0_combout\ $ (\A[33]~input_o\ $ (\B[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:8:c_int[1]~0_combout\,
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \S~50_combout\);

-- Location: LCCOMB_X53_Y1_N26
\gen_blocks:8:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:8:p_bit[1]~combout\ = \A[33]~input_o\ $ (\B[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \gen_blocks:8:p_bit[1]~combout\);

-- Location: LCCOMB_X53_Y1_N16
\gen_blocks:8:p_bit[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:8:p_bit[0]~combout\ = \B[32]~input_o\ $ (\A[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \gen_blocks:8:p_bit[0]~combout\);

-- Location: LCCOMB_X53_Y1_N22
\c_int~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~19_combout\ = (\A[33]~input_o\ & ((\B[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\A[33]~input_o\ & (\A[32]~input_o\ & (\B[32]~input_o\ & \B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \B[33]~input_o\,
	combout => \c_int~19_combout\);

-- Location: LCCOMB_X61_Y1_N14
\C[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- C(8) = (\G[7]~24_combout\) # ((\C~36_combout\ & (\gen_blocks:7:c_int[3]~0_combout\ & \gen_blocks:7:p_bit[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~36_combout\,
	datab => \gen_blocks:7:c_int[3]~0_combout\,
	datac => \G[7]~24_combout\,
	datad => \gen_blocks:7:p_bit[1]~combout\,
	combout => C(8));

-- Location: LCCOMB_X53_Y1_N12
\gen_blocks:8:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:8:c_int[2]~combout\ = (\c_int~19_combout\) # ((\gen_blocks:8:p_bit[1]~combout\ & (\gen_blocks:8:p_bit[0]~combout\ & C(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:p_bit[1]~combout\,
	datab => \gen_blocks:8:p_bit[0]~combout\,
	datac => \c_int~19_combout\,
	datad => C(8),
	combout => \gen_blocks:8:c_int[2]~combout\);

-- Location: IOIBUF_X52_Y0_N22
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X54_Y1_N16
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = \gen_blocks:8:c_int[2]~combout\ $ (\B[34]~input_o\ $ (\A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:c_int[2]~combout\,
	datab => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \S~51_combout\);

-- Location: LCCOMB_X53_Y1_N24
\gen_blocks:8:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:8:c_int[3]~0_combout\ = (\B[34]~input_o\ & (!\A[34]~input_o\ & (\A[33]~input_o\ $ (\B[33]~input_o\)))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & (\A[33]~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \A[34]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \gen_blocks:8:c_int[3]~0_combout\);

-- Location: LCCOMB_X53_Y1_N10
\gen_blocks:8:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:8:c_int[3]~1_combout\ = (\gen_blocks:8:c_int[3]~0_combout\ & ((C(8) & ((\A[32]~input_o\) # (\B[32]~input_o\))) # (!C(8) & (\A[32]~input_o\ & \B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => C(8),
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \gen_blocks:8:c_int[3]~0_combout\,
	combout => \gen_blocks:8:c_int[3]~1_combout\);

-- Location: IOIBUF_X45_Y0_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X53_Y1_N6
\c_int~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~20_combout\ = (\B[34]~input_o\ & ((\A[34]~input_o\) # ((\A[33]~input_o\ & \B[33]~input_o\)))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & (\A[33]~input_o\ & \B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \A[34]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \c_int~20_combout\);

-- Location: LCCOMB_X53_Y1_N4
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = \A[35]~input_o\ $ (\B[35]~input_o\ $ (((\gen_blocks:8:c_int[3]~1_combout\) # (\c_int~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:c_int[3]~1_combout\,
	datab => \A[35]~input_o\,
	datac => \B[35]~input_o\,
	datad => \c_int~20_combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X0_Y36_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X53_Y1_N2
\G~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~25_combout\ = (\A[35]~input_o\ & ((\B[35]~input_o\) # ((\B[34]~input_o\ & \A[34]~input_o\)))) # (!\A[35]~input_o\ & (\B[34]~input_o\ & (\B[35]~input_o\ & \A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \A[35]~input_o\,
	datac => \B[35]~input_o\,
	datad => \A[34]~input_o\,
	combout => \G~25_combout\);

-- Location: LCCOMB_X53_Y1_N14
\C~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~38_combout\ = (\B[34]~input_o\ & (!\A[34]~input_o\ & (\A[35]~input_o\ $ (\B[35]~input_o\)))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & (\A[35]~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \A[35]~input_o\,
	datac => \B[35]~input_o\,
	datad => \A[34]~input_o\,
	combout => \C~38_combout\);

-- Location: LCCOMB_X53_Y1_N20
\G[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[8]~26_combout\ = (\A[33]~input_o\ & ((\B[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\A[33]~input_o\ & (\A[32]~input_o\ & (\B[32]~input_o\ & \B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \B[33]~input_o\,
	combout => \G[8]~26_combout\);

-- Location: LCCOMB_X53_Y1_N30
\G[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[8]~27_combout\ = (\G~25_combout\) # ((\C~38_combout\ & \G[8]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G~25_combout\,
	datac => \C~38_combout\,
	datad => \G[8]~26_combout\,
	combout => \G[8]~27_combout\);

-- Location: LCCOMB_X53_Y1_N8
\C~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~39_combout\ = (\gen_blocks:8:p_bit[1]~combout\ & (\gen_blocks:8:p_bit[0]~combout\ & (\C~38_combout\ & C(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:p_bit[1]~combout\,
	datab => \gen_blocks:8:p_bit[0]~combout\,
	datac => \C~38_combout\,
	datad => C(8),
	combout => \C~39_combout\);

-- Location: LCCOMB_X24_Y69_N0
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = \A[36]~input_o\ $ (\B[36]~input_o\ $ (((\G[8]~27_combout\) # (\C~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \G[8]~27_combout\,
	datad => \C~39_combout\,
	combout => \S~53_combout\);

-- Location: IOIBUF_X23_Y73_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X24_Y69_N18
\gen_blocks:9:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:9:c_int[1]~0_combout\ = (\A[36]~input_o\ & ((\B[36]~input_o\) # ((\G[8]~27_combout\) # (\C~39_combout\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & ((\G[8]~27_combout\) # (\C~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \G[8]~27_combout\,
	datad => \C~39_combout\,
	combout => \gen_blocks:9:c_int[1]~0_combout\);

-- Location: LCCOMB_X24_Y69_N20
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = \B[37]~input_o\ $ (\A[37]~input_o\ $ (\gen_blocks:9:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datac => \A[37]~input_o\,
	datad => \gen_blocks:9:c_int[1]~0_combout\,
	combout => \S~54_combout\);

-- Location: LCCOMB_X24_Y69_N22
\c_int~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~21_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[36]~input_o\ & \B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \c_int~21_combout\);

-- Location: LCCOMB_X24_Y69_N8
\gen_blocks:9:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:9:c_int[3]~0_combout\ = (\G[8]~27_combout\ & (\A[36]~input_o\ $ ((\B[36]~input_o\)))) # (!\G[8]~27_combout\ & (\C~39_combout\ & (\A[36]~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \G[8]~27_combout\,
	datad => \C~39_combout\,
	combout => \gen_blocks:9:c_int[3]~0_combout\);

-- Location: LCCOMB_X24_Y69_N2
\gen_blocks:9:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:9:c_int[2]~combout\ = (\c_int~21_combout\) # ((\gen_blocks:9:c_int[3]~0_combout\ & (\A[37]~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~21_combout\,
	datab => \gen_blocks:9:c_int[3]~0_combout\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \gen_blocks:9:c_int[2]~combout\);

-- Location: IOIBUF_X23_Y73_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X24_Y69_N4
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = \gen_blocks:9:c_int[2]~combout\ $ (\B[38]~input_o\ $ (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:9:c_int[2]~combout\,
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X24_Y69_N6
\c_int~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~22_combout\ = (\B[38]~input_o\ & ((\A[38]~input_o\) # ((\B[37]~input_o\ & \A[37]~input_o\)))) # (!\B[38]~input_o\ & (\B[37]~input_o\ & (\A[37]~input_o\ & \A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \B[38]~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[38]~input_o\,
	combout => \c_int~22_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X24_Y69_N16
\gen_blocks:9:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:9:c_int[3]~1_combout\ = (\B[37]~input_o\ & (!\A[37]~input_o\ & (\B[38]~input_o\ $ (\A[38]~input_o\)))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & (\B[38]~input_o\ $ (\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \B[38]~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[38]~input_o\,
	combout => \gen_blocks:9:c_int[3]~1_combout\);

-- Location: LCCOMB_X24_Y69_N10
\gen_blocks:9:c_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:9:c_int[3]~2_combout\ = (\gen_blocks:9:c_int[3]~1_combout\ & ((\gen_blocks:9:c_int[3]~0_combout\) # ((\A[36]~input_o\ & \B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \gen_blocks:9:c_int[3]~0_combout\,
	datad => \gen_blocks:9:c_int[3]~1_combout\,
	combout => \gen_blocks:9:c_int[3]~2_combout\);

-- Location: LCCOMB_X24_Y69_N12
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = \A[39]~input_o\ $ (\B[39]~input_o\ $ (((\c_int~22_combout\) # (\gen_blocks:9:c_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~22_combout\,
	datab => \A[39]~input_o\,
	datac => \B[39]~input_o\,
	datad => \gen_blocks:9:c_int[3]~2_combout\,
	combout => \S~56_combout\);

-- Location: LCCOMB_X24_Y69_N26
\G~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~28_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # ((\A[38]~input_o\ & \B[38]~input_o\)))) # (!\B[39]~input_o\ & (\A[38]~input_o\ & (\B[38]~input_o\ & \A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \G~28_combout\);

-- Location: LCCOMB_X24_Y69_N28
\G[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[9]~29_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[36]~input_o\ & \B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \G[9]~29_combout\);

-- Location: LCCOMB_X24_Y69_N30
\C~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~40_combout\ = (\A[38]~input_o\ & (!\B[38]~input_o\ & (\B[39]~input_o\ $ (\A[39]~input_o\)))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & (\B[39]~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \C~40_combout\);

-- Location: LCCOMB_X24_Y69_N14
\G[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[9]~30_combout\ = (\G~28_combout\) # ((\G[9]~29_combout\ & \C~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~28_combout\,
	datab => \G[9]~29_combout\,
	datac => \C~40_combout\,
	combout => \G[9]~30_combout\);

-- Location: LCCOMB_X24_Y69_N24
\C~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~41_combout\ = (\C~40_combout\ & (\gen_blocks:9:c_int[3]~0_combout\ & (\A[37]~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~40_combout\,
	datab => \gen_blocks:9:c_int[3]~0_combout\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \C~41_combout\);

-- Location: IOIBUF_X35_Y73_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X35_Y72_N24
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = \A[40]~input_o\ $ (\B[40]~input_o\ $ (((\G[9]~30_combout\) # (\C~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[9]~30_combout\,
	datab => \C~41_combout\,
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \S~57_combout\);

-- Location: LCCOMB_X35_Y72_N10
\gen_blocks:10:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:10:c_int[1]~0_combout\ = (\A[40]~input_o\ & ((\G[9]~30_combout\) # ((\C~41_combout\) # (\B[40]~input_o\)))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & ((\G[9]~30_combout\) # (\C~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[9]~30_combout\,
	datab => \C~41_combout\,
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \gen_blocks:10:c_int[1]~0_combout\);

-- Location: IOIBUF_X40_Y73_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X35_Y72_N4
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = \gen_blocks:10:c_int[1]~0_combout\ $ (\B[41]~input_o\ $ (\A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:10:c_int[1]~0_combout\,
	datac => \B[41]~input_o\,
	datad => \A[41]~input_o\,
	combout => \S~58_combout\);

-- Location: LCCOMB_X35_Y72_N16
\c_int~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~24_combout\ = (\A[40]~input_o\ & (!\B[40]~input_o\ & (\A[41]~input_o\ $ (\B[41]~input_o\)))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \B[40]~input_o\,
	combout => \c_int~24_combout\);

-- Location: LCCOMB_X35_Y72_N26
\c_int~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~25_combout\ = (\c_int~24_combout\ & ((\G[9]~30_combout\) # (\C~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[9]~30_combout\,
	datac => \C~41_combout\,
	datad => \c_int~24_combout\,
	combout => \c_int~25_combout\);

-- Location: LCCOMB_X35_Y72_N14
\c_int~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~23_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\A[40]~input_o\ & \B[40]~input_o\)))) # (!\A[41]~input_o\ & (\A[40]~input_o\ & (\B[41]~input_o\ & \B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \B[40]~input_o\,
	combout => \c_int~23_combout\);

-- Location: IOIBUF_X38_Y73_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X35_Y72_N28
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = \A[42]~input_o\ $ (\B[42]~input_o\ $ (((\c_int~25_combout\) # (\c_int~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~25_combout\,
	datab => \c_int~23_combout\,
	datac => \A[42]~input_o\,
	datad => \B[42]~input_o\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X35_Y72_N18
\gen_blocks:10:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:10:c_int[3]~1_combout\ = (\G[9]~30_combout\ & ((\A[40]~input_o\ $ (\B[40]~input_o\)))) # (!\G[9]~30_combout\ & (\C~41_combout\ & (\A[40]~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[9]~30_combout\,
	datab => \C~41_combout\,
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \gen_blocks:10:c_int[3]~1_combout\);

-- Location: LCCOMB_X35_Y72_N8
\gen_blocks:10:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:10:c_int[3]~0_combout\ = (\A[42]~input_o\ & (!\B[42]~input_o\ & (\B[41]~input_o\ $ (\A[41]~input_o\)))) # (!\A[42]~input_o\ & (\B[42]~input_o\ & (\B[41]~input_o\ $ (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[42]~input_o\,
	datac => \B[41]~input_o\,
	datad => \A[41]~input_o\,
	combout => \gen_blocks:10:c_int[3]~0_combout\);

-- Location: LCCOMB_X35_Y72_N20
\gen_blocks:10:c_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:10:c_int[3]~2_combout\ = (\gen_blocks:10:c_int[3]~0_combout\ & ((\gen_blocks:10:c_int[3]~1_combout\) # ((\A[40]~input_o\ & \B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \gen_blocks:10:c_int[3]~1_combout\,
	datac => \gen_blocks:10:c_int[3]~0_combout\,
	datad => \B[40]~input_o\,
	combout => \gen_blocks:10:c_int[3]~2_combout\);

-- Location: LCCOMB_X35_Y72_N30
\c_int~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~26_combout\ = (\A[42]~input_o\ & ((\B[42]~input_o\) # ((\B[41]~input_o\ & \A[41]~input_o\)))) # (!\A[42]~input_o\ & (\B[42]~input_o\ & (\B[41]~input_o\ & \A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[42]~input_o\,
	datac => \B[41]~input_o\,
	datad => \A[41]~input_o\,
	combout => \c_int~26_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X35_Y72_N6
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = \A[43]~input_o\ $ (\B[43]~input_o\ $ (((\gen_blocks:10:c_int[3]~2_combout\) # (\c_int~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \gen_blocks:10:c_int[3]~2_combout\,
	datac => \c_int~26_combout\,
	datad => \B[43]~input_o\,
	combout => \S~60_combout\);

-- Location: LCCOMB_X35_Y72_N12
\G[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[10]~32_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\A[40]~input_o\ & \B[40]~input_o\)))) # (!\A[41]~input_o\ & (\A[40]~input_o\ & (\B[41]~input_o\ & \B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \B[40]~input_o\,
	combout => \G[10]~32_combout\);

-- Location: LCCOMB_X35_Y72_N0
\C~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~42_combout\ = (\A[43]~input_o\ & (!\B[43]~input_o\ & (\B[42]~input_o\ $ (\A[42]~input_o\)))) # (!\A[43]~input_o\ & (\B[43]~input_o\ & (\B[42]~input_o\ $ (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[43]~input_o\,
	combout => \C~42_combout\);

-- Location: LCCOMB_X35_Y72_N2
\G~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~31_combout\ = (\A[43]~input_o\ & ((\B[43]~input_o\) # ((\B[42]~input_o\ & \A[42]~input_o\)))) # (!\A[43]~input_o\ & (\B[42]~input_o\ & (\A[42]~input_o\ & \B[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[43]~input_o\,
	combout => \G~31_combout\);

-- Location: LCCOMB_X36_Y72_N24
\G[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[10]~33_combout\ = (\G~31_combout\) # ((\G[10]~32_combout\ & \C~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[10]~32_combout\,
	datac => \C~42_combout\,
	datad => \G~31_combout\,
	combout => \G[10]~33_combout\);

-- Location: IOIBUF_X60_Y73_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X59_Y72_N24
\gen_blocks:11:p_bit[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:11:p_bit[0]~combout\ = \B[44]~input_o\ $ (\A[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datac => \A[44]~input_o\,
	combout => \gen_blocks:11:p_bit[0]~combout\);

-- Location: LCCOMB_X59_Y72_N2
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = \gen_blocks:11:p_bit[0]~combout\ $ (((\G[10]~33_combout\) # ((\c_int~25_combout\ & \C~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~25_combout\,
	datab => \G[10]~33_combout\,
	datac => \C~42_combout\,
	datad => \gen_blocks:11:p_bit[0]~combout\,
	combout => \S~61_combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X35_Y72_N22
\C~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~43_combout\ = (\C~42_combout\ & (\gen_blocks:10:c_int[3]~1_combout\ & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \C~42_combout\,
	datac => \B[41]~input_o\,
	datad => \gen_blocks:10:c_int[3]~1_combout\,
	combout => \C~43_combout\);

-- Location: LCCOMB_X59_Y72_N20
\gen_blocks:11:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:11:c_int[1]~0_combout\ = (\A[44]~input_o\ & ((\G[10]~33_combout\) # ((\B[44]~input_o\) # (\C~43_combout\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & ((\G[10]~33_combout\) # (\C~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \G[10]~33_combout\,
	datac => \B[44]~input_o\,
	datad => \C~43_combout\,
	combout => \gen_blocks:11:c_int[1]~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X59_Y72_N6
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = \A[45]~input_o\ $ (\gen_blocks:11:c_int[1]~0_combout\ $ (\B[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \gen_blocks:11:c_int[1]~0_combout\,
	datac => \B[45]~input_o\,
	combout => \S~62_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X59_Y72_N18
\gen_blocks:11:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:11:c_int[3]~0_combout\ = (\gen_blocks:11:p_bit[0]~combout\ & ((\G[10]~33_combout\) # ((\c_int~25_combout\ & \C~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~25_combout\,
	datab => \G[10]~33_combout\,
	datac => \C~42_combout\,
	datad => \gen_blocks:11:p_bit[0]~combout\,
	combout => \gen_blocks:11:c_int[3]~0_combout\);

-- Location: LCCOMB_X59_Y72_N16
\c_int~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~27_combout\ = (\B[45]~input_o\ & ((\A[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\B[45]~input_o\ & (\A[44]~input_o\ & (\B[44]~input_o\ & \A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[45]~input_o\,
	combout => \c_int~27_combout\);

-- Location: LCCOMB_X59_Y72_N4
\gen_blocks:11:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:11:c_int[2]~combout\ = (\c_int~27_combout\) # ((\gen_blocks:11:c_int[3]~0_combout\ & (\A[45]~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \gen_blocks:11:c_int[3]~0_combout\,
	datac => \B[45]~input_o\,
	datad => \c_int~27_combout\,
	combout => \gen_blocks:11:c_int[2]~combout\);

-- Location: IOIBUF_X60_Y73_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X59_Y72_N22
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = \A[46]~input_o\ $ (\gen_blocks:11:c_int[2]~combout\ $ (\B[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datac => \gen_blocks:11:c_int[2]~combout\,
	datad => \B[46]~input_o\,
	combout => \S~63_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X59_Y72_N26
\gen_blocks:11:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:11:c_int[3]~1_combout\ = (\A[46]~input_o\ & (!\B[46]~input_o\ & (\B[45]~input_o\ $ (\A[45]~input_o\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & (\B[45]~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[45]~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[46]~input_o\,
	combout => \gen_blocks:11:c_int[3]~1_combout\);

-- Location: LCCOMB_X59_Y72_N28
\gen_blocks:11:c_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:11:c_int[3]~2_combout\ = (\gen_blocks:11:c_int[3]~1_combout\ & ((\gen_blocks:11:c_int[3]~0_combout\) # ((\B[44]~input_o\ & \A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:11:c_int[3]~1_combout\,
	datab => \gen_blocks:11:c_int[3]~0_combout\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \gen_blocks:11:c_int[3]~2_combout\);

-- Location: LCCOMB_X59_Y72_N8
\c_int~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~28_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\) # ((\B[45]~input_o\ & \A[45]~input_o\)))) # (!\A[46]~input_o\ & (\B[45]~input_o\ & (\A[45]~input_o\ & \B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[45]~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[46]~input_o\,
	combout => \c_int~28_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X59_Y72_N14
\S~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~64_combout\ = \A[47]~input_o\ $ (\B[47]~input_o\ $ (((\gen_blocks:11:c_int[3]~2_combout\) # (\c_int~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \gen_blocks:11:c_int[3]~2_combout\,
	datac => \c_int~28_combout\,
	datad => \B[47]~input_o\,
	combout => \S~64_combout\);

-- Location: LCCOMB_X59_Y72_N0
\C~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~44_combout\ = (\A[46]~input_o\ & (!\B[46]~input_o\ & (\B[47]~input_o\ $ (\A[47]~input_o\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[46]~input_o\,
	combout => \C~44_combout\);

-- Location: LCCOMB_X59_Y72_N10
\C~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~45_combout\ = (\gen_blocks:11:c_int[3]~0_combout\ & (\C~44_combout\ & (\A[45]~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \gen_blocks:11:c_int[3]~0_combout\,
	datac => \B[45]~input_o\,
	datad => \C~44_combout\,
	combout => \C~45_combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X59_Y72_N30
\G[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[11]~35_combout\ = (\B[45]~input_o\ & ((\A[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\B[45]~input_o\ & (\A[44]~input_o\ & (\B[44]~input_o\ & \A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[45]~input_o\,
	combout => \G[11]~35_combout\);

-- Location: LCCOMB_X59_Y72_N12
\G~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~34_combout\ = (\B[47]~input_o\ & ((\A[47]~input_o\) # ((\A[46]~input_o\ & \B[46]~input_o\)))) # (!\B[47]~input_o\ & (\A[46]~input_o\ & (\A[47]~input_o\ & \B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[46]~input_o\,
	combout => \G~34_combout\);

-- Location: LCCOMB_X60_Y72_N8
\G[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[11]~36_combout\ = (\G~34_combout\) # ((\G[11]~35_combout\ & \C~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G[11]~35_combout\,
	datac => \C~44_combout\,
	datad => \G~34_combout\,
	combout => \G[11]~36_combout\);

-- Location: IOIBUF_X69_Y73_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X67_Y72_N0
\S~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~65_combout\ = \A[48]~input_o\ $ (\B[48]~input_o\ $ (((\C~45_combout\) # (\G[11]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~45_combout\,
	datab => \A[48]~input_o\,
	datac => \G[11]~36_combout\,
	datad => \B[48]~input_o\,
	combout => \S~65_combout\);

-- Location: IOIBUF_X67_Y73_N8
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X67_Y72_N2
\gen_blocks:12:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:12:c_int[1]~0_combout\ = (\A[48]~input_o\ & ((\C~45_combout\) # ((\G[11]~36_combout\) # (\B[48]~input_o\)))) # (!\A[48]~input_o\ & (\B[48]~input_o\ & ((\C~45_combout\) # (\G[11]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~45_combout\,
	datab => \A[48]~input_o\,
	datac => \G[11]~36_combout\,
	datad => \B[48]~input_o\,
	combout => \gen_blocks:12:c_int[1]~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X67_Y72_N12
\S~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~66_combout\ = \B[49]~input_o\ $ (\gen_blocks:12:c_int[1]~0_combout\ $ (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \gen_blocks:12:c_int[1]~0_combout\,
	datac => \A[49]~input_o\,
	combout => \S~66_combout\);

-- Location: LCCOMB_X67_Y72_N24
\c_int~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~30_combout\ = (\B[49]~input_o\ & (!\A[49]~input_o\ & (\B[48]~input_o\ $ (\A[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\B[48]~input_o\ $ (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \A[48]~input_o\,
	combout => \c_int~30_combout\);

-- Location: LCCOMB_X67_Y72_N10
\c_int~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~31_combout\ = (\c_int~30_combout\ & ((\C~45_combout\) # (\G[11]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~45_combout\,
	datac => \G[11]~36_combout\,
	datad => \c_int~30_combout\,
	combout => \c_int~31_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X67_Y72_N6
\c_int~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~29_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\B[49]~input_o\ & (\B[48]~input_o\ & (\A[49]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \A[48]~input_o\,
	combout => \c_int~29_combout\);

-- Location: IOIBUF_X69_Y73_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X67_Y72_N8
\S~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~78_combout\ = \A[50]~input_o\ $ (\B[50]~input_o\ $ (((\c_int~31_combout\) # (\c_int~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~31_combout\,
	datab => \A[50]~input_o\,
	datac => \c_int~29_combout\,
	datad => \B[50]~input_o\,
	combout => \S~78_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X67_Y72_N30
\gen_blocks:12:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:12:p_bit[3]~combout\ = \B[51]~input_o\ $ (\A[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datac => \A[51]~input_o\,
	combout => \gen_blocks:12:p_bit[3]~combout\);

-- Location: LCCOMB_X67_Y72_N28
\gen_blocks:12:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:12:p_bit[2]~combout\ = \A[50]~input_o\ $ (\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \gen_blocks:12:p_bit[2]~combout\);

-- Location: LCCOMB_X67_Y72_N4
\gen_blocks:12:c_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:12:c_int[3]~3_combout\ = (\c_int~29_combout\ & ((\A[50]~input_o\) # (\B[50]~input_o\))) # (!\c_int~29_combout\ & (\A[50]~input_o\ & \B[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~29_combout\,
	datab => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \gen_blocks:12:c_int[3]~3_combout\);

-- Location: LCCOMB_X67_Y72_N16
\S~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~67_combout\ = \gen_blocks:12:p_bit[3]~combout\ $ (((\gen_blocks:12:c_int[3]~3_combout\) # ((\gen_blocks:12:p_bit[2]~combout\ & \c_int~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:12:p_bit[3]~combout\,
	datab => \gen_blocks:12:p_bit[2]~combout\,
	datac => \gen_blocks:12:c_int[3]~3_combout\,
	datad => \c_int~31_combout\,
	combout => \S~67_combout\);

-- Location: LCCOMB_X67_Y72_N20
\G[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[12]~38_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\B[49]~input_o\ & (\B[48]~input_o\ & (\A[49]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \A[48]~input_o\,
	combout => \G[12]~38_combout\);

-- Location: LCCOMB_X67_Y72_N18
\G~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~37_combout\ = (\B[51]~input_o\ & ((\A[51]~input_o\) # ((\A[50]~input_o\ & \B[50]~input_o\)))) # (!\B[51]~input_o\ & (\A[50]~input_o\ & (\A[51]~input_o\ & \B[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[50]~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[50]~input_o\,
	combout => \G~37_combout\);

-- Location: LCCOMB_X67_Y72_N14
\G[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[12]~39_combout\ = (\G~37_combout\) # ((\gen_blocks:12:p_bit[2]~combout\ & (\G[12]~38_combout\ & \gen_blocks:12:p_bit[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:12:p_bit[2]~combout\,
	datab => \G[12]~38_combout\,
	datac => \gen_blocks:12:p_bit[3]~combout\,
	datad => \G~37_combout\,
	combout => \G[12]~39_combout\);

-- Location: IOIBUF_X107_Y73_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X67_Y72_N26
\C~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~51_combout\ = (\c_int~31_combout\ & (\gen_blocks:12:p_bit[3]~combout\ & (\A[50]~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~31_combout\,
	datab => \A[50]~input_o\,
	datac => \gen_blocks:12:p_bit[3]~combout\,
	datad => \B[50]~input_o\,
	combout => \C~51_combout\);

-- Location: IOIBUF_X113_Y73_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X107_Y72_N24
\S~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~68_combout\ = \A[52]~input_o\ $ (\B[52]~input_o\ $ (((\G[12]~39_combout\) # (\C~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[12]~39_combout\,
	datab => \A[52]~input_o\,
	datac => \C~51_combout\,
	datad => \B[52]~input_o\,
	combout => \S~68_combout\);

-- Location: IOIBUF_X107_Y73_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X107_Y72_N10
\gen_blocks:13:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:13:c_int[1]~0_combout\ = (\A[52]~input_o\ & ((\G[12]~39_combout\) # ((\C~51_combout\) # (\B[52]~input_o\)))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & ((\G[12]~39_combout\) # (\C~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[12]~39_combout\,
	datab => \A[52]~input_o\,
	datac => \C~51_combout\,
	datad => \B[52]~input_o\,
	combout => \gen_blocks:13:c_int[1]~0_combout\);

-- Location: LCCOMB_X107_Y72_N12
\S~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~69_combout\ = \A[53]~input_o\ $ (\B[53]~input_o\ $ (\gen_blocks:13:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datac => \B[53]~input_o\,
	datad => \gen_blocks:13:c_int[1]~0_combout\,
	combout => \S~69_combout\);

-- Location: IOIBUF_X111_Y73_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X107_Y72_N8
\c_int~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~33_combout\ = (\B[53]~input_o\ & (!\A[53]~input_o\ & (\A[52]~input_o\ $ (\B[52]~input_o\)))) # (!\B[53]~input_o\ & (\A[53]~input_o\ & (\A[52]~input_o\ $ (\B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[52]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[52]~input_o\,
	combout => \c_int~33_combout\);

-- Location: LCCOMB_X107_Y72_N2
\c_int~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~34_combout\ = (\c_int~33_combout\ & ((\G[12]~39_combout\) # (\C~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[12]~39_combout\,
	datab => \c_int~33_combout\,
	datac => \C~51_combout\,
	combout => \c_int~34_combout\);

-- Location: LCCOMB_X107_Y72_N30
\c_int~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~32_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\A[52]~input_o\ & \B[52]~input_o\)))) # (!\B[53]~input_o\ & (\A[52]~input_o\ & (\A[53]~input_o\ & \B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[52]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[52]~input_o\,
	combout => \c_int~32_combout\);

-- Location: IOIBUF_X107_Y73_N1
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X107_Y72_N28
\S~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~79_combout\ = \B[54]~input_o\ $ (\A[54]~input_o\ $ (((\c_int~34_combout\) # (\c_int~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \c_int~34_combout\,
	datac => \c_int~32_combout\,
	datad => \A[54]~input_o\,
	combout => \S~79_combout\);

-- Location: LCCOMB_X107_Y72_N20
\gen_blocks:13:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:13:p_bit[2]~combout\ = \A[54]~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[54]~input_o\,
	datac => \B[54]~input_o\,
	combout => \gen_blocks:13:p_bit[2]~combout\);

-- Location: LCCOMB_X107_Y72_N26
\c_int~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~36_combout\ = (\A[52]~input_o\ & (\B[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[52]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[52]~input_o\,
	combout => \c_int~36_combout\);

-- Location: LCCOMB_X107_Y72_N0
\c_int~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~35_combout\ = (\B[54]~input_o\ & ((\A[54]~input_o\) # ((\B[53]~input_o\ & \A[53]~input_o\)))) # (!\B[54]~input_o\ & (\A[54]~input_o\ & (\B[53]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[54]~input_o\,
	datac => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => \c_int~35_combout\);

-- Location: LCCOMB_X107_Y72_N4
\gen_blocks:13:c_int[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:13:c_int[3]~combout\ = (\c_int~35_combout\) # ((\gen_blocks:13:p_bit[2]~combout\ & ((\c_int~34_combout\) # (\c_int~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~34_combout\,
	datab => \gen_blocks:13:p_bit[2]~combout\,
	datac => \c_int~36_combout\,
	datad => \c_int~35_combout\,
	combout => \gen_blocks:13:c_int[3]~combout\);

-- Location: IOIBUF_X105_Y73_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X105_Y72_N0
\S~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~80_combout\ = \gen_blocks:13:c_int[3]~combout\ $ (\B[55]~input_o\ $ (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:13:c_int[3]~combout\,
	datac => \B[55]~input_o\,
	datad => \A[55]~input_o\,
	combout => \S~80_combout\);

-- Location: LCCOMB_X107_Y72_N6
\gen_blocks:13:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:13:p_bit[3]~combout\ = \B[55]~input_o\ $ (\A[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datac => \A[55]~input_o\,
	combout => \gen_blocks:13:p_bit[3]~combout\);

-- Location: LCCOMB_X107_Y72_N14
\C~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~52_combout\ = (\gen_blocks:13:p_bit[3]~combout\ & (\c_int~34_combout\ & (\B[54]~input_o\ $ (\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:13:p_bit[3]~combout\,
	datab => \c_int~34_combout\,
	datac => \B[54]~input_o\,
	datad => \A[54]~input_o\,
	combout => \C~52_combout\);

-- Location: IOIBUF_X102_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X107_Y72_N22
\G~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~40_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\) # ((\A[54]~input_o\ & \B[54]~input_o\)))) # (!\A[55]~input_o\ & (\A[54]~input_o\ & (\B[54]~input_o\ & \B[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \A[54]~input_o\,
	datac => \B[54]~input_o\,
	datad => \B[55]~input_o\,
	combout => \G~40_combout\);

-- Location: LCCOMB_X107_Y72_N16
\G[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[13]~41_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\A[52]~input_o\ & \B[52]~input_o\)))) # (!\B[53]~input_o\ & (\A[52]~input_o\ & (\A[53]~input_o\ & \B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[52]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[52]~input_o\,
	combout => \G[13]~41_combout\);

-- Location: LCCOMB_X107_Y72_N18
\G[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[13]~42_combout\ = (\G~40_combout\) # ((\gen_blocks:13:p_bit[3]~combout\ & (\gen_blocks:13:p_bit[2]~combout\ & \G[13]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:13:p_bit[3]~combout\,
	datab => \gen_blocks:13:p_bit[2]~combout\,
	datac => \G~40_combout\,
	datad => \G[13]~41_combout\,
	combout => \G[13]~42_combout\);

-- Location: LCCOMB_X99_Y72_N8
\S~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~70_combout\ = \A[56]~input_o\ $ (\B[56]~input_o\ $ (((\C~52_combout\) # (\G[13]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~52_combout\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \G[13]~42_combout\,
	combout => \S~70_combout\);

-- Location: LCCOMB_X99_Y72_N18
\gen_blocks:14:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:14:c_int[1]~0_combout\ = (\A[56]~input_o\ & ((\C~52_combout\) # ((\B[56]~input_o\) # (\G[13]~42_combout\)))) # (!\A[56]~input_o\ & (\B[56]~input_o\ & ((\C~52_combout\) # (\G[13]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~52_combout\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \G[13]~42_combout\,
	combout => \gen_blocks:14:c_int[1]~0_combout\);

-- Location: IOIBUF_X96_Y73_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X99_Y72_N12
\S~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~71_combout\ = \gen_blocks:14:c_int[1]~0_combout\ $ (\A[57]~input_o\ $ (\B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:14:c_int[1]~0_combout\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \S~71_combout\);

-- Location: LCCOMB_X99_Y72_N24
\c_int~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~38_combout\ = (\B[56]~input_o\ & (!\A[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\)))) # (!\B[56]~input_o\ & (\A[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[56]~input_o\,
	combout => \c_int~38_combout\);

-- Location: LCCOMB_X99_Y72_N10
\c_int~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~39_combout\ = (\c_int~38_combout\ & ((\C~52_combout\) # (\G[13]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~52_combout\,
	datab => \c_int~38_combout\,
	datad => \G[13]~42_combout\,
	combout => \c_int~39_combout\);

-- Location: IOIBUF_X94_Y73_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X99_Y72_N30
\c_int~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~37_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\) # ((\B[56]~input_o\ & \A[56]~input_o\)))) # (!\B[57]~input_o\ & (\B[56]~input_o\ & (\A[57]~input_o\ & \A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[56]~input_o\,
	combout => \c_int~37_combout\);

-- Location: IOIBUF_X94_Y73_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X99_Y72_N2
\S~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~81_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\ $ (((\c_int~39_combout\) # (\c_int~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~39_combout\,
	datab => \B[58]~input_o\,
	datac => \c_int~37_combout\,
	datad => \A[58]~input_o\,
	combout => \S~81_combout\);

-- Location: IOIBUF_X91_Y73_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X91_Y72_N16
\gen_blocks:14:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:14:p_bit[3]~combout\ = \B[59]~input_o\ $ (\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	combout => \gen_blocks:14:p_bit[3]~combout\);

-- Location: LCCOMB_X99_Y72_N4
\gen_blocks:14:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:14:p_bit[2]~combout\ = \A[58]~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \gen_blocks:14:p_bit[2]~combout\);

-- Location: LCCOMB_X99_Y72_N26
\gen_blocks:14:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:14:p_bit[1]~combout\ = \A[57]~input_o\ $ (\B[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \gen_blocks:14:p_bit[1]~combout\);

-- Location: LCCOMB_X99_Y72_N20
\c_int~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~42_combout\ = (\B[56]~input_o\ & (\gen_blocks:14:p_bit[2]~combout\ & (\gen_blocks:14:p_bit[1]~combout\ & \A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \gen_blocks:14:p_bit[2]~combout\,
	datac => \gen_blocks:14:p_bit[1]~combout\,
	datad => \A[56]~input_o\,
	combout => \c_int~42_combout\);

-- Location: LCCOMB_X99_Y72_N14
\c_int~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~40_combout\ = (\c_int~38_combout\ & (\gen_blocks:14:p_bit[2]~combout\ & ((\C~52_combout\) # (\G[13]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~52_combout\,
	datab => \c_int~38_combout\,
	datac => \gen_blocks:14:p_bit[2]~combout\,
	datad => \G[13]~42_combout\,
	combout => \c_int~40_combout\);

-- Location: LCCOMB_X99_Y72_N16
\c_int~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~41_combout\ = (\A[58]~input_o\ & ((\B[58]~input_o\) # ((\A[57]~input_o\ & \B[57]~input_o\)))) # (!\A[58]~input_o\ & (\B[58]~input_o\ & (\A[57]~input_o\ & \B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \B[58]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \c_int~41_combout\);

-- Location: LCCOMB_X99_Y72_N22
\S~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~72_combout\ = \gen_blocks:14:p_bit[3]~combout\ $ (((\c_int~42_combout\) # ((\c_int~40_combout\) # (\c_int~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:14:p_bit[3]~combout\,
	datab => \c_int~42_combout\,
	datac => \c_int~40_combout\,
	datad => \c_int~41_combout\,
	combout => \S~72_combout\);

-- Location: LCCOMB_X99_Y72_N28
\C~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~53_combout\ = (\gen_blocks:14:p_bit[3]~combout\ & (\c_int~39_combout\ & (\A[58]~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:14:p_bit[3]~combout\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => \c_int~39_combout\,
	combout => \C~53_combout\);

-- Location: IOIBUF_X87_Y73_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X91_Y72_N10
\G~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~43_combout\ = (\B[59]~input_o\ & ((\A[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\B[59]~input_o\ & (\A[58]~input_o\ & (\A[59]~input_o\ & \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datab => \A[58]~input_o\,
	datac => \A[59]~input_o\,
	datad => \B[58]~input_o\,
	combout => \G~43_combout\);

-- Location: LCCOMB_X99_Y72_N0
\G[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[14]~44_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\) # ((\B[56]~input_o\ & \A[56]~input_o\)))) # (!\B[57]~input_o\ & (\B[56]~input_o\ & (\A[57]~input_o\ & \A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[56]~input_o\,
	combout => \G[14]~44_combout\);

-- Location: LCCOMB_X91_Y72_N28
\G[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[14]~45_combout\ = (\G~43_combout\) # ((\gen_blocks:14:p_bit[3]~combout\ & (\gen_blocks:14:p_bit[2]~combout\ & \G[14]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~43_combout\,
	datab => \gen_blocks:14:p_bit[3]~combout\,
	datac => \gen_blocks:14:p_bit[2]~combout\,
	datad => \G[14]~44_combout\,
	combout => \G[14]~45_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X88_Y72_N0
\S~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~73_combout\ = \B[60]~input_o\ $ (\A[60]~input_o\ $ (((\C~53_combout\) # (\G[14]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~53_combout\,
	datab => \B[60]~input_o\,
	datac => \G[14]~45_combout\,
	datad => \A[60]~input_o\,
	combout => \S~73_combout\);

-- Location: IOIBUF_X83_Y73_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X88_Y72_N28
\gen_blocks:15:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:15:c_int[1]~0_combout\ = (\B[60]~input_o\ & ((\C~53_combout\) # ((\G[14]~45_combout\) # (\A[60]~input_o\)))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & ((\C~53_combout\) # (\G[14]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~53_combout\,
	datab => \B[60]~input_o\,
	datac => \G[14]~45_combout\,
	datad => \A[60]~input_o\,
	combout => \gen_blocks:15:c_int[1]~0_combout\);

-- Location: LCCOMB_X88_Y72_N4
\S~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~82_combout\ = \A[61]~input_o\ $ (\B[61]~input_o\ $ (\gen_blocks:15:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \gen_blocks:15:c_int[1]~0_combout\,
	combout => \S~82_combout\);

-- Location: IOIBUF_X85_Y73_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X88_Y72_N14
\c_int~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~43_combout\ = (\A[61]~input_o\ & ((\B[61]~input_o\) # ((\A[60]~input_o\ & \B[60]~input_o\)))) # (!\A[61]~input_o\ & (\A[60]~input_o\ & (\B[61]~input_o\ & \B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[61]~input_o\,
	datad => \B[60]~input_o\,
	combout => \c_int~43_combout\);

-- Location: LCCOMB_X88_Y72_N24
\c_int~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~44_combout\ = (\A[61]~input_o\ & (!\B[61]~input_o\ & (\A[60]~input_o\ $ (\B[60]~input_o\)))) # (!\A[61]~input_o\ & (\B[61]~input_o\ & (\A[60]~input_o\ $ (\B[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[61]~input_o\,
	datad => \B[60]~input_o\,
	combout => \c_int~44_combout\);

-- Location: LCCOMB_X88_Y72_N2
\c_int~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~45_combout\ = (\c_int~44_combout\ & ((\G[14]~45_combout\) # ((\gen_blocks:14:p_bit[3]~combout\ & \c_int~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:14:p_bit[3]~combout\,
	datab => \c_int~44_combout\,
	datac => \G[14]~45_combout\,
	datad => \c_int~40_combout\,
	combout => \c_int~45_combout\);

-- Location: LCCOMB_X88_Y72_N6
\S~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~83_combout\ = \B[62]~input_o\ $ (\A[62]~input_o\ $ (((\c_int~43_combout\) # (\c_int~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \c_int~43_combout\,
	datad => \c_int~45_combout\,
	combout => \S~83_combout\);

-- Location: LCCOMB_X88_Y72_N20
\gen_blocks:15:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:15:p_bit[2]~combout\ = \A[62]~input_o\ $ (\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	combout => \gen_blocks:15:p_bit[2]~combout\);

-- Location: LCCOMB_X88_Y72_N22
\c_int~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~46_combout\ = (\A[62]~input_o\ & ((\B[62]~input_o\) # ((\B[61]~input_o\ & \A[61]~input_o\)))) # (!\A[62]~input_o\ & (\B[61]~input_o\ & (\B[62]~input_o\ & \A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \A[61]~input_o\,
	combout => \c_int~46_combout\);

-- Location: LCCOMB_X88_Y72_N10
\gen_blocks:15:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:15:p_bit[1]~combout\ = \B[61]~input_o\ $ (\A[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \gen_blocks:15:p_bit[1]~combout\);

-- Location: LCCOMB_X88_Y72_N8
\c_int~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~47_combout\ = (\gen_blocks:15:p_bit[1]~combout\ & (\B[60]~input_o\ & (\A[60]~input_o\ & \gen_blocks:15:p_bit[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:15:p_bit[1]~combout\,
	datab => \B[60]~input_o\,
	datac => \A[60]~input_o\,
	datad => \gen_blocks:15:p_bit[2]~combout\,
	combout => \c_int~47_combout\);

-- Location: LCCOMB_X88_Y72_N26
\gen_blocks:15:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:15:c_int[3]~0_combout\ = (\c_int~46_combout\) # (\c_int~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~46_combout\,
	datac => \c_int~47_combout\,
	combout => \gen_blocks:15:c_int[3]~0_combout\);

-- Location: IOIBUF_X85_Y73_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X88_Y72_N12
\gen_blocks:15:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:15:p_bit[3]~combout\ = \B[63]~input_o\ $ (\A[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => \gen_blocks:15:p_bit[3]~combout\);

-- Location: LCCOMB_X89_Y72_N0
\S~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~74_combout\ = \gen_blocks:15:p_bit[3]~combout\ $ (((\gen_blocks:15:c_int[3]~0_combout\) # ((\c_int~45_combout\ & \gen_blocks:15:p_bit[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~45_combout\,
	datab => \gen_blocks:15:p_bit[2]~combout\,
	datac => \gen_blocks:15:c_int[3]~0_combout\,
	datad => \gen_blocks:15:p_bit[3]~combout\,
	combout => \S~74_combout\);

-- Location: LCCOMB_X88_Y72_N30
\G~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~46_combout\ = (\B[63]~input_o\ & ((\A[63]~input_o\) # ((\A[62]~input_o\ & \B[62]~input_o\)))) # (!\B[63]~input_o\ & (\A[62]~input_o\ & (\B[62]~input_o\ & \A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \A[63]~input_o\,
	combout => \G~46_combout\);

-- Location: LCCOMB_X88_Y72_N16
\C~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~46_combout\ = (\gen_blocks:15:p_bit[2]~combout\ & ((\c_int~45_combout\) # ((\A[61]~input_o\ & \B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \c_int~45_combout\,
	datac => \B[61]~input_o\,
	datad => \gen_blocks:15:p_bit[2]~combout\,
	combout => \C~46_combout\);

-- Location: LCCOMB_X88_Y72_N18
\C~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~47_combout\ = (\G~46_combout\) # ((\gen_blocks:15:p_bit[3]~combout\ & ((\C~46_combout\) # (\c_int~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~46_combout\,
	datab => \C~46_combout\,
	datac => \c_int~47_combout\,
	datad => \gen_blocks:15:p_bit[3]~combout\,
	combout => \C~47_combout\);

-- Location: LCCOMB_X89_Y72_N2
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \C~47_combout\ $ (((\C~53_combout\) # (\G[14]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~47_combout\,
	datac => \C~53_combout\,
	datad => \G[14]~45_combout\,
	combout => \Ovfl~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_S(32) <= \S[32]~output_o\;

ww_S(33) <= \S[33]~output_o\;

ww_S(34) <= \S[34]~output_o\;

ww_S(35) <= \S[35]~output_o\;

ww_S(36) <= \S[36]~output_o\;

ww_S(37) <= \S[37]~output_o\;

ww_S(38) <= \S[38]~output_o\;

ww_S(39) <= \S[39]~output_o\;

ww_S(40) <= \S[40]~output_o\;

ww_S(41) <= \S[41]~output_o\;

ww_S(42) <= \S[42]~output_o\;

ww_S(43) <= \S[43]~output_o\;

ww_S(44) <= \S[44]~output_o\;

ww_S(45) <= \S[45]~output_o\;

ww_S(46) <= \S[46]~output_o\;

ww_S(47) <= \S[47]~output_o\;

ww_S(48) <= \S[48]~output_o\;

ww_S(49) <= \S[49]~output_o\;

ww_S(50) <= \S[50]~output_o\;

ww_S(51) <= \S[51]~output_o\;

ww_S(52) <= \S[52]~output_o\;

ww_S(53) <= \S[53]~output_o\;

ww_S(54) <= \S[54]~output_o\;

ww_S(55) <= \S[55]~output_o\;

ww_S(56) <= \S[56]~output_o\;

ww_S(57) <= \S[57]~output_o\;

ww_S(58) <= \S[58]~output_o\;

ww_S(59) <= \S[59]~output_o\;

ww_S(60) <= \S[60]~output_o\;

ww_S(61) <= \S[61]~output_o\;

ww_S(62) <= \S[62]~output_o\;

ww_S(63) <= \S[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


