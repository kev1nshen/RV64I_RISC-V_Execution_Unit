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

-- DATE "03/21/2026 20:30:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
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
-- S[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[5]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~3_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~4_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[8]~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[9]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[10]~2_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[11]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[12]~4_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[12]~5_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[14]~6_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[13]~7_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[14]~8_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[14]~9_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[14]~10_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[15]~11_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~4_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[16]~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~5_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[17]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[18]~2_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[19]~3_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[20]~4_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[21]~5_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[21]~6_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[22]~7_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[23]~8_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|S[8]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[24]~9_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[28]~10_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[25]~11_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[26]~12_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|S[11]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[27]~13_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[28]~14_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[28]~15_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|S[11]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[30]~16_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[29]~17_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[30]~18_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[30]~19_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[30]~20_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~8_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[31]~21_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[31]~22_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \S_int~0_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~1_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~2_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \S_int~3_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \S_int~4_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~5_combout\ : std_logic;
SIGNAL \S_int~6_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \S_int~7_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \S_int~8_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|S[8]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \S_int~9_combout\ : std_logic;
SIGNAL \S_int~10_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~11_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~12_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[11]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[11]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~13_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[4]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \S_int~14_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~15_combout\ : std_logic;
SIGNAL \S_int~16_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~17_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \S_int~18_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|S[16]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~2_combout\ : std_logic;
SIGNAL \S_int~19_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~20_combout\ : std_logic;
SIGNAL \S_int~21_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~22_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~3_combout\ : std_logic;
SIGNAL \recursive_case:upper0|S[19]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~23_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \S_int~24_combout\ : std_logic;
SIGNAL \S_int~25_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~26_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~27_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \S_int~28_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|S[8]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \S_int~29_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~30_combout\ : std_logic;
SIGNAL \S_int~31_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~32_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[11]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \S_int~33_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[4]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \S_int~34_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~35_combout\ : std_logic;
SIGNAL \S_int~36_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \S_int~37_combout\ : std_logic;
SIGNAL \S_int~38_combout\ : std_logic;
SIGNAL \S_int~39_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Ovfl~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \S_int~40_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \cout_int~0_combout\ : std_logic;
SIGNAL \Ovfl~3_combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~3_combout\ : std_logic;

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
\ALT_INV_Ovfl~3_combout\ <= NOT \Ovfl~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X27_Y0_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[4]~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[5]~1_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~4_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~6_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[8]~0_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[9]~1_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[10]~2_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[11]~3_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[12]~5_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[13]~7_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[14]~10_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[15]~11_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[16]~0_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[17]~1_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[18]~2_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[19]~3_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[20]~4_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[21]~6_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[22]~7_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[23]~8_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[24]~9_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[25]~11_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[26]~12_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[27]~13_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[28]~15_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[29]~17_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[30]~20_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[31]~22_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~0_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~1_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~2_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~3_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~4_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~6_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~7_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~8_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~9_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~11_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~12_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~13_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~14_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~16_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~17_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~18_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~19_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~21_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~22_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~23_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~24_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~26_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~27_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~28_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~29_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~31_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~32_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~33_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~34_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~36_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~39_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~40_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout_int~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~3_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X32_Y1_N24
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X32_Y1_N10
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ = (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & 
-- \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\);

-- Location: LCCOMB_X32_Y1_N20
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X32_Y1_N6
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X32_Y1_N0
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: IOIBUF_X35_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X32_Y1_N2
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X32_Y1_N28
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ 
-- (((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X49_Y0_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X32_Y1_N22
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X32_Y1_N16
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X49_Y1_N24
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[4]~0_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[4]~0_combout\);

-- Location: IOIBUF_X45_Y0_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X49_Y1_N10
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X49_Y1_N4
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[5]~1_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\B[4]~input_o\ & ((\A[4]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[5]~1_combout\);

-- Location: LCCOMB_X49_Y1_N14
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~2_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\B[4]~input_o\ & 
-- (\A[4]~input_o\ & \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~2_combout\);

-- Location: LCCOMB_X49_Y1_N8
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~3_combout\ = (\B[5]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~2_combout\) # (\A[5]~input_o\))) # (!\B[5]~input_o\ & 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~2_combout\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~2_combout\,
	datad => \A[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~3_combout\);

-- Location: IOIBUF_X49_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X49_Y1_N18
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~4_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~3_combout\ $ (\B[6]~input_o\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~3_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[6]~4_combout\);

-- Location: IOIBUF_X49_Y0_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X49_Y1_N12
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\B[5]~input_o\ & \A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X49_Y1_N22
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\B[5]~input_o\) # (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X49_Y1_N16
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\))) # (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- (\A[4]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datab => \A[4]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X49_Y1_N26
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5_combout\ = (\B[6]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\) # (\A[6]~input_o\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5_combout\);

-- Location: LCCOMB_X49_Y1_N20
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~6_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~6_combout\);

-- Location: IOIBUF_X79_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X49_Y1_N6
\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[7]~5_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X79_Y0_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X79_Y1_N24
\recursive_case:lower|recursive_case:lower|S[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[8]~0_combout\ = \A[8]~input_o\ $ (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ $ (\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \B[8]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[8]~0_combout\);

-- Location: IOIBUF_X79_Y0_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X79_Y1_N10
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X79_Y1_N4
\recursive_case:lower|recursive_case:lower|S[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[9]~1_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\B[8]~input_o\ & ((\A[8]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[9]~1_combout\);

-- Location: LCCOMB_X79_Y1_N16
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[9]~input_o\ & ((\B[8]~input_o\) # ((\A[8]~input_o\) # (\A[9]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & 
-- ((\B[8]~input_o\) # (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X83_Y0_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X83_Y1_N8
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X79_Y1_N30
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ 
-- & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X83_Y1_N2
\recursive_case:lower|recursive_case:lower|S[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[10]~2_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[10]~2_combout\);

-- Location: IOIBUF_X85_Y0_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X82_Y1_N16
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X79_Y1_N26
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = (\A[8]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\B[8]~input_o\))) # (!\A[8]~input_o\ & 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \B[8]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X79_Y1_N28
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\))) # 
-- (!\B[9]~input_o\ & (\A[9]~input_o\ & \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\);

-- Location: LCCOMB_X83_Y1_N28
\recursive_case:lower|recursive_case:lower|S[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[11]~3_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ 
-- (((\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ & 
-- (\B[10]~input_o\ & \A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[11]~3_combout\);

-- Location: LCCOMB_X82_Y1_N2
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[11]~input_o\) # (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X83_Y1_N26
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[10]~input_o\ & \A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X83_Y1_N16
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[10]~input_o\ & \A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X83_Y1_N12
\recursive_case:lower|recursive_case:lower|S[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[12]~4_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[12]~4_combout\);

-- Location: IOIBUF_X85_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X83_Y1_N14
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\A[11]~input_o\ & \B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X85_Y0_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X83_Y1_N30
\recursive_case:lower|recursive_case:lower|S[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[12]~5_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\recursive_case:lower|recursive_case:lower|S[12]~4_combout\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|S[12]~4_combout\,
	datab => \B[12]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \A[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[12]~5_combout\);

-- Location: LCCOMB_X83_Y1_N24
\recursive_case:lower|recursive_case:lower|S[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[14]~6_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[14]~6_combout\);

-- Location: IOIBUF_X87_Y0_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X90_Y1_N16
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X90_Y1_N18
\recursive_case:lower|recursive_case:lower|S[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[13]~7_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\B[12]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:lower|S[14]~6_combout\) # (\A[12]~input_o\))) # (!\B[12]~input_o\ & (\recursive_case:lower|recursive_case:lower|S[14]~6_combout\ & \A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|S[14]~6_combout\,
	datac => \A[12]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[13]~7_combout\);

-- Location: LCCOMB_X90_Y1_N12
\recursive_case:lower|recursive_case:lower|S[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[14]~8_combout\ = (\recursive_case:lower|recursive_case:lower|S[14]~6_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\))) # (!\recursive_case:lower|recursive_case:lower|S[14]~6_combout\ & (\A[12]~input_o\ & 
-- \B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:lower|S[14]~6_combout\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[14]~8_combout\);

-- Location: LCCOMB_X90_Y1_N6
\recursive_case:lower|recursive_case:lower|S[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[14]~9_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # (\recursive_case:lower|recursive_case:lower|S[14]~8_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|S[14]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|S[14]~8_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[14]~9_combout\);

-- Location: IOIBUF_X91_Y0_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X90_Y1_N24
\recursive_case:lower|recursive_case:lower|S[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[14]~10_combout\ = \recursive_case:lower|recursive_case:lower|S[14]~9_combout\ $ (\B[14]~input_o\ $ (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|S[14]~9_combout\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[14]~10_combout\);

-- Location: LCCOMB_X83_Y1_N20
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = (\A[12]~input_o\ & (\B[12]~input_o\ & ((!\B[11]~input_o\) # (!\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \B[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X83_Y1_N22
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (!\B[10]~input_o\ & !\A[10]~input_o\)) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((!\A[10]~input_o\) # (!\B[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: LCCOMB_X83_Y1_N0
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\) # 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\,
	datad => \B[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: LCCOMB_X83_Y1_N18
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\A[11]~input_o\ & \B[11]~input_o\)))) # (!\A[12]~input_o\ & (\A[11]~input_o\ & (\B[11]~input_o\ & 
-- \B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \B[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X83_Y1_N10
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & ((\A[10]~input_o\ & 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & !\B[10]~input_o\)) # (!\A[10]~input_o\ & ((!\B[10]~input_o\) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[10]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\);

-- Location: LCCOMB_X83_Y1_N4
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) # 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ & ((\B[12]~input_o\) # (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\,
	datab => \B[12]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datad => \A[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\);

-- Location: LCCOMB_X83_Y1_N6
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\) # 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\)) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\);

-- Location: LCCOMB_X90_Y1_N26
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ & (\A[13]~input_o\ & \B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\);

-- Location: IOIBUF_X89_Y0_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X90_Y1_N28
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X90_Y1_N22
\recursive_case:lower|recursive_case:lower|S[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[15]~11_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ 
-- (((\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\))) # (!\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ 
-- & (\B[14]~input_o\ & \A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[15]~11_combout\);

-- Location: IOIBUF_X115_Y22_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X90_Y1_N0
\recursive_case:lower|recursive_case:lower|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~2_combout\ = (\A[15]~input_o\ & \B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~2_combout\);

-- Location: LCCOMB_X90_Y1_N10
\recursive_case:lower|recursive_case:lower|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~3_combout\ = (\A[15]~input_o\) # (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~3_combout\);

-- Location: LCCOMB_X90_Y1_N4
\recursive_case:lower|recursive_case:lower|Cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~4_combout\ = (\recursive_case:lower|recursive_case:lower|Cout~3_combout\ & ((\B[14]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\) # 
-- (\A[14]~input_o\))) # (!\B[14]~input_o\ & (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ & \A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|Cout~3_combout\,
	datab => \B[14]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	datad => \A[14]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~4_combout\);

-- Location: IOIBUF_X115_Y27_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X114_Y30_N8
\recursive_case:lower|S[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[16]~0_combout\ = \B[16]~input_o\ $ (\A[16]~input_o\ $ (((\recursive_case:lower|recursive_case:lower|Cout~2_combout\) # (\recursive_case:lower|recursive_case:lower|Cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|Cout~2_combout\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~4_combout\,
	datad => \A[16]~input_o\,
	combout => \recursive_case:lower|S[16]~0_combout\);

-- Location: IOIBUF_X115_Y24_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X114_Y30_N2
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X90_Y1_N14
\recursive_case:lower|recursive_case:lower|Cout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~5_combout\ = (\recursive_case:lower|recursive_case:lower|Cout~4_combout\) # ((\A[15]~input_o\ & \B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~4_combout\,
	datad => \B[15]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~5_combout\);

-- Location: LCCOMB_X114_Y30_N28
\recursive_case:lower|S[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[17]~1_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\B[16]~input_o\ & ((\recursive_case:lower|recursive_case:lower|Cout~5_combout\) # 
-- (\A[16]~input_o\))) # (!\B[16]~input_o\ & (\recursive_case:lower|recursive_case:lower|Cout~5_combout\ & \A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~5_combout\,
	datad => \A[16]~input_o\,
	combout => \recursive_case:lower|S[17]~1_combout\);

-- Location: LCCOMB_X114_Y30_N22
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\A[17]~input_o\ & (\A[16]~input_o\ & 
-- (\B[16]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X115_Y23_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X114_Y30_N18
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X114_Y30_N24
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[17]~input_o\ & ((\A[16]~input_o\) # ((\B[16]~input_o\) # (\B[17]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & 
-- ((\A[16]~input_o\) # (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y30_N4
\recursive_case:lower|S[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[18]~2_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ $ (((\recursive_case:lower|recursive_case:lower|Cout~5_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\recursive_case:lower|recursive_case:lower|Cout~5_combout\ & 
-- (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~5_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|S[18]~2_combout\);

-- Location: IOIBUF_X115_Y31_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X114_Y30_N26
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X114_Y30_N30
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ = (\B[16]~input_o\ & ((\recursive_case:lower|recursive_case:lower|Cout~2_combout\) # ((\recursive_case:lower|recursive_case:lower|Cout~4_combout\) # 
-- (\A[16]~input_o\)))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & ((\recursive_case:lower|recursive_case:lower|Cout~2_combout\) # (\recursive_case:lower|recursive_case:lower|Cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|Cout~2_combout\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~4_combout\,
	datad => \A[16]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X114_Y30_N16
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = (\A[17]~input_o\ & ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\) # (\B[17]~input_o\))) # 
-- (!\A[17]~input_o\ & (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ & \B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\,
	datad => \B[17]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: LCCOMB_X114_Y30_N12
\recursive_case:lower|S[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[19]~3_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ 
-- (((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ & ((\B[18]~input_o\) # (\A[18]~input_o\))) # (!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ & 
-- (\B[18]~input_o\ & \A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \recursive_case:lower|S[19]~3_combout\);

-- Location: IOIBUF_X115_Y29_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X114_Y29_N24
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\);

-- Location: LCCOMB_X114_Y30_N6
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[18]~input_o\ & ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # 
-- (\A[18]~input_o\))) # (!\B[18]~input_o\ & (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \A[18]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y32_N16
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[19]~input_o\) # (\A[19]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[19]~input_o\ & \A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X114_Y30_N0
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[18]~input_o\) # 
-- (\A[18]~input_o\))) # (!\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[18]~input_o\ & \A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y32_N26
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\A[19]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\B[19]~input_o\))) # 
-- (!\A[19]~input_o\ & (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \B[19]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X114_Y32_N12
\recursive_case:lower|S[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[20]~4_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ $ (((\recursive_case:lower|recursive_case:lower|Cout~5_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|recursive_case:lower|Cout~5_combout\ & 
-- (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:lower|recursive_case:lower|Cout~5_combout\,
	combout => \recursive_case:lower|S[20]~4_combout\);

-- Location: LCCOMB_X114_Y32_N6
\recursive_case:lower|S[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[21]~5_combout\ = (\recursive_case:lower|recursive_case:lower|Cout~4_combout\ & (((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\)))) # 
-- (!\recursive_case:lower|recursive_case:lower|Cout~4_combout\ & ((\recursive_case:lower|recursive_case:lower|Cout~2_combout\ & (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\)) # 
-- (!\recursive_case:lower|recursive_case:lower|Cout~2_combout\ & ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|Cout~4_combout\,
	datab => \recursive_case:lower|recursive_case:lower|Cout~2_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[21]~5_combout\);

-- Location: IOIBUF_X115_Y24_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X114_Y29_N18
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X114_Y29_N20
\recursive_case:lower|S[21]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[21]~6_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\recursive_case:lower|S[21]~5_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\))) # 
-- (!\recursive_case:lower|S[21]~5_combout\ & (\A[20]~input_o\ & \B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[21]~5_combout\,
	datab => \A[20]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datad => \B[20]~input_o\,
	combout => \recursive_case:lower|S[21]~6_combout\);

-- Location: IOIBUF_X115_Y25_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X115_Y26_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X114_Y29_N10
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\);

-- Location: LCCOMB_X114_Y29_N8
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\B[21]~input_o\ & ((\B[20]~input_o\) # ((\A[21]~input_o\) # (\A[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & 
-- ((\B[20]~input_o\) # (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y29_N14
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\B[21]~input_o\ & (\B[20]~input_o\ & 
-- (\A[21]~input_o\ & \A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y29_N28
\recursive_case:lower|S[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[22]~7_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((\recursive_case:lower|S[21]~5_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\)) # (!\recursive_case:lower|S[21]~5_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:lower|S[21]~5_combout\,
	combout => \recursive_case:lower|S[22]~7_combout\);

-- Location: IOIBUF_X115_Y32_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X114_Y32_N8
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X114_Y30_N10
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ = (\recursive_case:lower|recursive_case:lower|Cout~2_combout\ & (((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))) # 
-- (!\recursive_case:lower|recursive_case:lower|Cout~2_combout\ & ((\recursive_case:lower|recursive_case:lower|Cout~4_combout\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # 
-- (!\recursive_case:lower|recursive_case:lower|Cout~4_combout\ & (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|Cout~2_combout\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~4_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\);

-- Location: LCCOMB_X114_Y30_N20
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ = (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ & ((\A[19]~input_o\) # (\B[19]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ & (\A[19]~input_o\ & \B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\,
	datab => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\);

-- Location: LCCOMB_X114_Y29_N6
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = (\A[20]~input_o\ & ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\) # (\B[20]~input_o\))) # (!\A[20]~input_o\ & 
-- (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ & \B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\,
	datad => \B[20]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X114_Y29_N16
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & ((\A[21]~input_o\) # (\B[21]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & (\A[21]~input_o\ & \B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X114_Y29_N26
\recursive_case:lower|S[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[23]~8_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ 
-- (((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ & ((\B[22]~input_o\) # (\A[22]~input_o\))) # (!\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ 
-- & (\B[22]~input_o\ & \A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\,
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \recursive_case:lower|S[23]~8_combout\);

-- Location: IOIBUF_X115_Y35_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X114_Y39_N8
\recursive_case:lower|recursive_case:upper1|S[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|S[8]~0_combout\ = \B[24]~input_o\ $ (\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|S[8]~0_combout\);

-- Location: LCCOMB_X114_Y29_N22
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ = (\B[22]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # 
-- (\A[22]~input_o\))) # (!\B[22]~input_o\ & (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & \A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \A[22]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X114_Y29_N12
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ = (\B[22]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\) # 
-- (\A[22]~input_o\))) # (!\B[22]~input_o\ & (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & \A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datad => \A[22]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\);

-- Location: LCCOMB_X114_Y32_N18
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))) # (!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y32_N20
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\A[23]~input_o\ & ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # (\B[23]~input_o\))) # (!\A[23]~input_o\ & 
-- (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & \B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X114_Y32_N30
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))) # (!\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y32_N24
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\A[23]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\) # (\B[23]~input_o\))) # (!\A[23]~input_o\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & \B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X114_Y32_N10
\recursive_case:lower|S[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[24]~9_combout\ = \recursive_case:lower|recursive_case:upper1|S[8]~0_combout\ $ (((\recursive_case:lower|recursive_case:lower|Cout~5_combout\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # 
-- (!\recursive_case:lower|recursive_case:lower|Cout~5_combout\ & (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|S[8]~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~5_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[24]~9_combout\);

-- Location: IOIBUF_X115_Y36_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X114_Y39_N10
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[25]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X114_Y32_N4
\recursive_case:lower|S[28]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[28]~10_combout\ = (\recursive_case:lower|recursive_case:lower|Cout~4_combout\ & (((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)))) # (!\recursive_case:lower|recursive_case:lower|Cout~4_combout\ 
-- & ((\recursive_case:lower|recursive_case:lower|Cout~2_combout\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|recursive_case:lower|Cout~2_combout\ & 
-- (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|Cout~4_combout\,
	datab => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~2_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[28]~10_combout\);

-- Location: LCCOMB_X114_Y39_N20
\recursive_case:lower|S[25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[25]~11_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\recursive_case:lower|S[28]~10_combout\ & ((\B[24]~input_o\) # (\A[24]~input_o\))) # 
-- (!\recursive_case:lower|S[28]~10_combout\ & (\B[24]~input_o\ & \A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	datab => \recursive_case:lower|S[28]~10_combout\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \recursive_case:lower|S[25]~11_combout\);

-- Location: LCCOMB_X114_Y39_N22
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\A[25]~input_o\ & (\A[24]~input_o\ & 
-- (\B[24]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \A[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \B[25]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X115_Y42_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X114_Y39_N2
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X114_Y39_N24
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[25]~input_o\ & ((\A[24]~input_o\) # ((\B[24]~input_o\) # (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & 
-- ((\A[24]~input_o\) # (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \A[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \B[25]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y39_N12
\recursive_case:lower|S[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[26]~12_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((\recursive_case:lower|S[28]~10_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\recursive_case:lower|S[28]~10_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\,
	datac => \recursive_case:lower|S[28]~10_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|S[26]~12_combout\);

-- Location: LCCOMB_X114_Y32_N14
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~2_combout\ = (\A[23]~input_o\ & \B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~2_combout\);

-- Location: LCCOMB_X114_Y32_N0
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~2_combout\ = (\A[23]~input_o\) # (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~2_combout\);

-- Location: LCCOMB_X114_Y32_N2
\recursive_case:lower|recursive_case:upper0|S[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|S[11]~2_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~2_combout\ & ((\recursive_case:lower|S[21]~5_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))) # (!\recursive_case:lower|S[21]~5_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[21]~5_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~2_combout\,
	combout => \recursive_case:lower|recursive_case:upper0|S[11]~2_combout\);

-- Location: LCCOMB_X114_Y39_N30
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = (\B[24]~input_o\ & ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~2_combout\) # 
-- ((\recursive_case:lower|recursive_case:upper0|S[11]~2_combout\) # (\A[24]~input_o\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~2_combout\) # 
-- (\recursive_case:lower|recursive_case:upper0|S[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~2_combout\,
	datab => \recursive_case:lower|recursive_case:upper0|S[11]~2_combout\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X114_Y39_N16
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ = (\A[25]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\) # (\B[25]~input_o\))) # 
-- (!\A[25]~input_o\ & (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ & \B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\,
	datad => \B[25]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X115_Y41_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X114_Y39_N26
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X114_Y39_N28
\recursive_case:lower|S[27]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[27]~13_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\A[26]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\) # (\B[26]~input_o\))) # (!\A[26]~input_o\ & (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ & 
-- \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datad => \B[26]~input_o\,
	combout => \recursive_case:lower|S[27]~13_combout\);

-- Location: IOIBUF_X115_Y48_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X114_Y40_N24
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\B[27]~input_o\ & \A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X115_Y36_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X114_Y39_N6
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[27]~input_o\) # (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y39_N18
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\A[26]~input_o\ & \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X114_Y39_N0
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\A[26]~input_o\ & \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X114_Y40_N2
\recursive_case:lower|S[28]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[28]~14_combout\ = (\recursive_case:lower|S[28]~10_combout\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|S[28]~10_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|S[28]~10_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[28]~14_combout\);

-- Location: LCCOMB_X114_Y40_N4
\recursive_case:lower|S[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[28]~15_combout\ = \B[28]~input_o\ $ (\A[28]~input_o\ $ (((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # (\recursive_case:lower|S[28]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \A[28]~input_o\,
	datad => \recursive_case:lower|S[28]~14_combout\,
	combout => \recursive_case:lower|S[28]~15_combout\);

-- Location: LCCOMB_X114_Y32_N28
\recursive_case:lower|recursive_case:upper0|S[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|S[11]~3_combout\ = (\recursive_case:lower|recursive_case:upper0|S[11]~2_combout\) # ((\A[23]~input_o\ & \B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper0|S[11]~2_combout\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|S[11]~3_combout\);

-- Location: LCCOMB_X114_Y40_N30
\recursive_case:lower|S[30]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[30]~16_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # ((\recursive_case:lower|recursive_case:upper0|S[11]~3_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|recursive_case:upper0|S[11]~3_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|recursive_case:upper0|S[11]~3_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|S[30]~16_combout\);

-- Location: IOIBUF_X115_Y40_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X114_Y40_N8
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X114_Y40_N18
\recursive_case:lower|S[29]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[29]~17_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\recursive_case:lower|S[30]~16_combout\ & ((\A[28]~input_o\) # (\B[28]~input_o\))) 
-- # (!\recursive_case:lower|S[30]~16_combout\ & (\A[28]~input_o\ & \B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[30]~16_combout\,
	datab => \A[28]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:lower|S[29]~17_combout\);

-- Location: LCCOMB_X114_Y40_N12
\recursive_case:lower|S[30]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[30]~18_combout\ = (\A[28]~input_o\ & ((\recursive_case:lower|S[30]~16_combout\) # (\B[28]~input_o\))) # (!\A[28]~input_o\ & (\recursive_case:lower|S[30]~16_combout\ & \B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \recursive_case:lower|S[30]~16_combout\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:lower|S[30]~18_combout\);

-- Location: LCCOMB_X114_Y40_N14
\recursive_case:lower|S[30]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[30]~19_combout\ = (\recursive_case:lower|S[30]~18_combout\ & ((\A[29]~input_o\) # (\B[29]~input_o\))) # (!\recursive_case:lower|S[30]~18_combout\ & (\A[29]~input_o\ & \B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[30]~18_combout\,
	datab => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \recursive_case:lower|S[30]~19_combout\);

-- Location: IOIBUF_X115_Y44_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X114_Y44_N16
\recursive_case:lower|S[30]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[30]~20_combout\ = \recursive_case:lower|S[30]~19_combout\ $ (\B[30]~input_o\ $ (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[30]~19_combout\,
	datab => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \recursive_case:lower|S[30]~20_combout\);

-- Location: LCCOMB_X114_Y40_N16
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\B[29]~input_o\ & \A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y32_N22
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~8_combout\ = (!\recursive_case:lower|recursive_case:upper0|S[11]~2_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ & ((!\B[23]~input_o\) # (!\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper0|S[11]~2_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~8_combout\);

-- Location: LCCOMB_X114_Y40_N20
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~8_combout\) # ((\B[27]~input_o\ & \A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~8_combout\,
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: LCCOMB_X114_Y40_N6
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & ((\A[28]~input_o\) # (\B[28]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & (\A[28]~input_o\ & \B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: LCCOMB_X114_Y40_N0
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ = (\A[28]~input_o\ & (\B[28]~input_o\ & ((!\B[27]~input_o\) # (!\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[27]~input_o\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\);

-- Location: LCCOMB_X114_Y39_N4
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ & ((\A[26]~input_o\ & 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & !\B[26]~input_o\)) # (!\A[26]~input_o\ & ((!\B[26]~input_o\) # 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\,
	datad => \B[26]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\);

-- Location: LCCOMB_X114_Y40_N26
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\) # 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & ((\A[28]~input_o\) # (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\);

-- Location: LCCOMB_X114_Y40_N10
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\B[29]~input_o\) # (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y40_N28
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\) # ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ & 
-- \recursive_case:lower|recursive_case:upper0|S[11]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\,
	datac => \recursive_case:lower|recursive_case:upper0|S[11]~3_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\);

-- Location: LCCOMB_X114_Y44_N10
\recursive_case:lower|S[31]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[31]~21_combout\ = (\A[30]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\) # (\B[30]~input_o\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	datad => \B[30]~input_o\,
	combout => \recursive_case:lower|S[31]~21_combout\);

-- Location: IOIBUF_X115_Y49_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X114_Y44_N12
\recursive_case:lower|S[31]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[31]~22_combout\ = \recursive_case:lower|S[31]~21_combout\ $ (\B[31]~input_o\ $ (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[31]~21_combout\,
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	combout => \recursive_case:lower|S[31]~22_combout\);

-- Location: IOIBUF_X62_Y0_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X114_Y44_N22
\recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~0_combout\ = (\recursive_case:lower|S[31]~21_combout\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) # (!\recursive_case:lower|S[31]~21_combout\ & (\B[31]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[31]~21_combout\,
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	combout => \recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X65_Y0_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X61_Y4_N16
\S_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~0_combout\ = \B[32]~input_o\ $ (\recursive_case:lower|Cout~0_combout\ $ (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[32]~input_o\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \A[32]~input_o\,
	combout => \S_int~0_combout\);

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

-- Location: IOIBUF_X62_Y0_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X61_Y4_N26
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \B[33]~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X61_Y4_N4
\S_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~1_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\B[32]~input_o\ & ((\recursive_case:lower|Cout~0_combout\) # (\A[32]~input_o\))) # (!\B[32]~input_o\ & 
-- (\recursive_case:lower|Cout~0_combout\ & \A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	datab => \B[32]~input_o\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \A[32]~input_o\,
	combout => \S_int~1_combout\);

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

-- Location: IOIBUF_X65_Y0_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X61_Y4_N18
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X61_Y4_N14
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[33]~input_o\ & ((\B[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\A[33]~input_o\ & (\A[32]~input_o\ & 
-- (\B[32]~input_o\ & \B[33]~input_o\)))

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
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X61_Y4_N0
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[33]~input_o\ & ((\A[32]~input_o\) # ((\B[32]~input_o\) # (\B[33]~input_o\)))) # (!\A[33]~input_o\ & (\B[33]~input_o\ & 
-- ((\A[32]~input_o\) # (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \B[33]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X61_Y4_N12
\S_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~2_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ $ (((\recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	datab => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \S_int~2_combout\);

-- Location: IOIBUF_X60_Y0_N15
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X61_Y4_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \B[35]~input_o\ $ (\A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X61_Y4_N30
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ = (\B[32]~input_o\ & ((\recursive_case:lower|Cout~0_combout\) # (\A[32]~input_o\))) # (!\B[32]~input_o\ & (\recursive_case:lower|Cout~0_combout\ & 
-- \A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[32]~input_o\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \A[32]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X61_Y4_N8
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = (\B[33]~input_o\ & ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~0_combout\) # (\A[33]~input_o\))) # 
-- (!\B[33]~input_o\ & (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ & \A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~0_combout\,
	datad => \A[33]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: LCCOMB_X61_Y4_N28
\S_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~3_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ & 
-- ((\B[34]~input_o\) # (\A[34]~input_o\))) # (!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ & (\B[34]~input_o\ & \A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datab => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \S_int~3_combout\);

-- Location: LCCOMB_X61_Y4_N22
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[34]~input_o\ & ((\A[34]~input_o\) # 
-- (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & 
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \A[34]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X60_Y4_N8
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # 
-- (!\B[35]~input_o\ & (\A[35]~input_o\ & \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

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

-- Location: LCCOMB_X55_Y4_N16
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[4]~0_combout\ = \A[36]~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[4]~0_combout\);

-- Location: LCCOMB_X61_Y4_N24
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[34]~input_o\ & ((\B[34]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X61_Y4_N2
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # 
-- (!\B[35]~input_o\ & (\A[35]~input_o\ & \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X55_Y4_N2
\S_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~4_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[4]~0_combout\ $ (((\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # 
-- (!\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[4]~0_combout\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~4_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X55_Y4_N14
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[37]~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X55_Y4_N12
\S_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~5_combout\ = (\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~5_combout\);

-- Location: LCCOMB_X55_Y4_N8
\S_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~6_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\A[36]~input_o\ & ((\B[36]~input_o\) # (\S_int~5_combout\))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & 
-- \S_int~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datac => \B[36]~input_o\,
	datad => \S_int~5_combout\,
	combout => \S_int~6_combout\);

-- Location: LCCOMB_X55_Y4_N20
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\B[37]~input_o\ & ((\B[36]~input_o\) # ((\A[37]~input_o\) # (\A[36]~input_o\)))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & 
-- ((\B[36]~input_o\) # (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[36]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X55_Y4_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\B[37]~input_o\ & ((\A[37]~input_o\) # ((\B[36]~input_o\ & \A[36]~input_o\)))) # (!\B[37]~input_o\ & (\B[36]~input_o\ & 
-- (\A[37]~input_o\ & \A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[36]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X55_Y4_N6
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ = \A[38]~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\);

-- Location: LCCOMB_X55_Y4_N0
\S_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~7_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((\S_int~5_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\)) # (!\S_int~5_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~5_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\,
	combout => \S_int~7_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X54_Y66_N0
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = \A[39]~input_o\ $ (\B[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X61_Y4_N20
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~0_combout\ = (\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # 
-- (!\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~0_combout\);

-- Location: LCCOMB_X60_Y4_N2
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~1_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~0_combout\))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & 
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~1_combout\);

-- Location: LCCOMB_X58_Y4_N24
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = (\B[36]~input_o\ & ((\A[36]~input_o\) # (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~1_combout\))) # (!\B[36]~input_o\ & 
-- (\A[36]~input_o\ & \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datac => \A[36]~input_o\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[7]~1_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X55_Y4_N18
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\))) # 
-- (!\A[37]~input_o\ & (\B[37]~input_o\ & \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X55_Y4_N28
\S_int~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~8_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((\B[38]~input_o\ & ((\A[38]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\,
	combout => \S_int~8_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X48_Y69_N8
\recursive_case:upper1|recursive_case:lower|S[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|S[8]~0_combout\ = \B[40]~input_o\ $ (\A[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|S[8]~0_combout\);

-- Location: LCCOMB_X55_Y4_N24
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X55_Y4_N22
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\);

-- Location: LCCOMB_X55_Y4_N4
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))) # (!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X54_Y66_N4
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\A[39]~input_o\) # (\B[39]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\A[39]~input_o\ & \B[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X55_Y4_N26
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))) # (!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X54_Y66_N2
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\A[39]~input_o\ & ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\B[39]~input_o\))) # (!\A[39]~input_o\ & 
-- (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[39]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \B[39]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X54_Y66_N22
\S_int~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~9_combout\ = \recursive_case:upper1|recursive_case:lower|S[8]~0_combout\ $ (((\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\)) # (!\recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|S[8]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~9_combout\);

-- Location: LCCOMB_X54_Y66_N8
\S_int~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~10_combout\ = (\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\)) # (!\recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~10_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X48_Y69_N18
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \B[41]~input_o\ $ (\A[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datac => \A[41]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X48_Y69_N20
\S_int~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~11_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\A[40]~input_o\ & ((\B[40]~input_o\) # (\S_int~10_combout\))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & 
-- \S_int~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[40]~input_o\,
	datac => \S_int~10_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	combout => \S_int~11_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X48_Y69_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = \A[42]~input_o\ $ (\B[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X48_Y69_N14
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & 
-- (\B[40]~input_o\ & \A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X48_Y69_N0
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\) # (\A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & 
-- ((\B[40]~input_o\) # (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X48_Y69_N4
\S_int~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~12_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((\S_int~10_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\S_int~10_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \S_int~10_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \S_int~12_combout\);

-- Location: LCCOMB_X55_Y4_N30
\recursive_case:upper0|recursive_case:lower|S[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[11]~0_combout\ = (\S_int~5_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)) # (!\S_int~5_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~5_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|S[11]~0_combout\);

-- Location: LCCOMB_X54_Y66_N10
\recursive_case:upper0|recursive_case:lower|S[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[11]~1_combout\ = (\recursive_case:upper0|recursive_case:lower|S[11]~0_combout\ & ((\A[39]~input_o\) # (\B[39]~input_o\))) # (!\recursive_case:upper0|recursive_case:lower|S[11]~0_combout\ & (\A[39]~input_o\ & 
-- \B[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|S[11]~0_combout\,
	datab => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|S[11]~1_combout\);

-- Location: LCCOMB_X48_Y69_N22
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = (\A[40]~input_o\ & ((\B[40]~input_o\) # (\recursive_case:upper0|recursive_case:lower|S[11]~1_combout\))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & 
-- \recursive_case:upper0|recursive_case:lower|S[11]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \recursive_case:upper0|recursive_case:lower|S[11]~1_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X48_Y69_N24
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\))) # 
-- (!\B[41]~input_o\ & (\A[41]~input_o\ & \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X54_Y69_N16
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[43]~input_o\ $ (\B[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[43]~input_o\,
	datad => \B[43]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X48_Y69_N2
\S_int~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~13_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\A[42]~input_o\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\) # (\B[42]~input_o\))) # (!\A[42]~input_o\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ & 
-- \B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\,
	datac => \B[42]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	combout => \S_int~13_combout\);

-- Location: LCCOMB_X48_Y69_N6
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[42]~input_o\ & ((\B[42]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\A[42]~input_o\ & (\B[42]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X54_Y69_N4
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\B[43]~input_o\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\) # (\A[43]~input_o\))) # 
-- (!\B[43]~input_o\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & \A[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \A[43]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: IOIBUF_X54_Y73_N8
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X54_Y69_N30
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[4]~0_combout\ = \A[44]~input_o\ $ (\B[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[4]~0_combout\);

-- Location: LCCOMB_X48_Y69_N28
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\A[42]~input_o\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # 
-- (\B[42]~input_o\))) # (!\A[42]~input_o\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[42]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X54_Y69_N18
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))) # 
-- (!\B[43]~input_o\ & (\A[43]~input_o\ & \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datac => \A[43]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X54_Y69_N8
\S_int~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~14_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[4]~0_combout\ $ (((\S_int~10_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # 
-- (!\S_int~10_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~10_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[4]~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~14_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X54_Y69_N28
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[45]~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X54_Y69_N2
\S_int~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~15_combout\ = (\recursive_case:upper0|recursive_case:lower|S[11]~1_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # (!\recursive_case:upper0|recursive_case:lower|S[11]~1_combout\ 
-- & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|S[11]~1_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~15_combout\);

-- Location: LCCOMB_X54_Y69_N6
\S_int~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~16_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\B[44]~input_o\ & ((\A[44]~input_o\) # (\S_int~15_combout\))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & 
-- \S_int~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datab => \B[44]~input_o\,
	datac => \A[44]~input_o\,
	datad => \S_int~15_combout\,
	combout => \S_int~16_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X55_Y69_N16
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ = \A[46]~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datac => \B[46]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\);

-- Location: LCCOMB_X54_Y69_N0
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & 
-- (\A[44]~input_o\ & \B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X54_Y69_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\A[44]~input_o\) # (\B[44]~input_o\)))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & 
-- ((\A[44]~input_o\) # (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X55_Y69_N2
\S_int~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~17_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ (((\S_int~15_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\))) # (!\S_int~15_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~15_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	combout => \S_int~17_combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X55_Y69_N30
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = \B[47]~input_o\ $ (\A[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X54_Y69_N20
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~0_combout\ = (\recursive_case:upper0|recursive_case:lower|S[11]~1_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\))) 
-- # (!\recursive_case:upper0|recursive_case:lower|S[11]~1_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|S[11]~1_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~0_combout\);

-- Location: LCCOMB_X54_Y69_N22
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~1_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~0_combout\))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datac => \A[43]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~1_combout\);

-- Location: LCCOMB_X54_Y69_N24
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~1_combout\ & ((\A[44]~input_o\) # (\B[44]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~1_combout\ & (\A[44]~input_o\ & \B[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[7]~1_combout\,
	datab => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X55_Y69_N4
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\))) # 
-- (!\A[45]~input_o\ & (\B[45]~input_o\ & \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X55_Y69_N0
\S_int~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~18_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ 
-- & ((\B[46]~input_o\) # (\A[46]~input_o\))) # (!\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & (\B[46]~input_o\ & \A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \S_int~18_combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X66_Y69_N24
\recursive_case:upper1|S[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|S[16]~0_combout\ = \B[48]~input_o\ $ (\A[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => \recursive_case:upper1|S[16]~0_combout\);

-- Location: LCCOMB_X55_Y69_N28
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~1_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[46]~input_o\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~1_combout\);

-- Location: LCCOMB_X54_Y69_N26
\recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # 
-- (!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X55_Y69_N18
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~0_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datac => \B[46]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~0_combout\);

-- Location: LCCOMB_X55_Y69_N14
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2_combout\ = (\recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~0_combout\))) # (!\recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~1_combout\,
	datac => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2_combout\);

-- Location: LCCOMB_X55_Y69_N8
\recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\B[47]~input_o\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2_combout\) # (\A[47]~input_o\))) # (!\B[47]~input_o\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2_combout\ & \A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2_combout\,
	datac => \A[47]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X54_Y69_N12
\recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\))) # 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X54_Y69_N14
\recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # (\recursive_case:upper1|recursive_case:lower|Cout~0_combout\))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datac => \A[43]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X55_Y69_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~0_combout\))) # (!\recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X55_Y69_N20
\recursive_case:upper1|recursive_case:lower|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~2_combout\ = (\B[47]~input_o\ & ((\A[47]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))) # (!\B[47]~input_o\ & (\A[47]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~2_combout\);

-- Location: LCCOMB_X55_Y69_N22
\S_int~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~19_combout\ = \recursive_case:upper1|S[16]~0_combout\ $ (((\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|Cout~2_combout\))) # (!\recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|S[16]~0_combout\,
	datab => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|Cout~2_combout\,
	combout => \S_int~19_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X66_Y69_N10
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[49]~input_o\ $ (\B[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X55_Y69_N24
\S_int~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~20_combout\ = (\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|Cout~2_combout\))) # (!\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper0|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|Cout~2_combout\,
	combout => \S_int~20_combout\);

-- Location: LCCOMB_X66_Y69_N12
\S_int~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~21_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\S_int~20_combout\ & ((\B[48]~input_o\) # (\A[48]~input_o\))) # (!\S_int~20_combout\ & (\B[48]~input_o\ & 
-- \A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	datab => \S_int~20_combout\,
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => \S_int~21_combout\);

-- Location: LCCOMB_X66_Y69_N6
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\B[49]~input_o\ & (\B[48]~input_o\ & 
-- (\A[49]~input_o\ & \A[48]~input_o\)))

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
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X66_Y69_N26
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = \B[50]~input_o\ $ (\A[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X66_Y69_N16
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[49]~input_o\ & ((\B[48]~input_o\) # ((\A[49]~input_o\) # (\A[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & 
-- ((\B[48]~input_o\) # (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \A[48]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X66_Y69_N4
\S_int~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~22_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ $ (((\S_int~20_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\S_int~20_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \S_int~20_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \S_int~22_combout\);

-- Location: LCCOMB_X55_Y69_N12
\recursive_case:upper1|recursive_case:lower|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~3_combout\ = (\B[47]~input_o\) # (\A[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~3_combout\);

-- Location: LCCOMB_X55_Y69_N6
\recursive_case:upper0|S[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|S[19]~0_combout\ = (\recursive_case:upper1|recursive_case:lower|Cout~3_combout\ & ((\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))) 
-- # (!\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|Cout~3_combout\,
	datab => \recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|Cout~2_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\,
	combout => \recursive_case:upper0|S[19]~0_combout\);

-- Location: LCCOMB_X55_Y69_N26
\recursive_case:upper0|recursive_case:lower|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~2_combout\ = (\B[47]~input_o\ & \A[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~2_combout\);

-- Location: LCCOMB_X66_Y69_N22
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ = (\B[48]~input_o\ & ((\recursive_case:upper0|S[19]~0_combout\) # ((\recursive_case:upper0|recursive_case:lower|Cout~2_combout\) # (\A[48]~input_o\)))) 
-- # (!\B[48]~input_o\ & (\A[48]~input_o\ & ((\recursive_case:upper0|S[19]~0_combout\) # (\recursive_case:upper0|recursive_case:lower|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|S[19]~0_combout\,
	datab => \recursive_case:upper0|recursive_case:lower|Cout~2_combout\,
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X66_Y69_N0
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = (\A[49]~input_o\ & ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\) # (\B[49]~input_o\))) # 
-- (!\A[49]~input_o\ & (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ & \B[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\,
	datad => \B[49]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X67_Y73_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X67_Y69_N24
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \B[51]~input_o\ $ (\A[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X66_Y69_N2
\S_int~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~23_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\A[50]~input_o\ & 
-- ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\) # (\B[50]~input_o\))) # (!\A[50]~input_o\ & (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ & 
-- \B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	datac => \B[50]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	combout => \S_int~23_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X68_Y69_N24
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ = \B[52]~input_o\ $ (\A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\);

-- Location: LCCOMB_X66_Y69_N28
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[50]~input_o\) # 
-- (\A[50]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[50]~input_o\ & \A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X67_Y69_N2
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[51]~input_o\) # (\A[51]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[51]~input_o\ & \A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X66_Y69_N14
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[50]~input_o\) # 
-- (\A[50]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[50]~input_o\ & \A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X67_Y69_N28
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[51]~input_o\) # (\A[51]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[51]~input_o\ & \A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X67_Y69_N6
\S_int~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~24_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ $ (((\S_int~20_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # 
-- (!\S_int~20_combout\ & (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[4]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \S_int~20_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~24_combout\);

-- Location: LCCOMB_X67_Y69_N8
\S_int~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~25_combout\ = (\recursive_case:upper0|S[19]~0_combout\ & (((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\)))) # (!\recursive_case:upper0|S[19]~0_combout\ & 
-- ((\recursive_case:upper0|recursive_case:lower|Cout~2_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:upper0|recursive_case:lower|Cout~2_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|S[19]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper0|recursive_case:lower|Cout~2_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~25_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X68_Y69_N2
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \B[53]~input_o\ $ (\A[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X68_Y69_N28
\S_int~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~26_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\S_int~25_combout\ & ((\B[52]~input_o\) # (\A[52]~input_o\))) # (!\S_int~25_combout\ & (\B[52]~input_o\ 
-- & \A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~25_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \S_int~26_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X68_Y69_N18
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ = \A[54]~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\);

-- Location: LCCOMB_X68_Y69_N8
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[53]~input_o\ & ((\B[53]~input_o\) # ((\B[52]~input_o\) # (\A[52]~input_o\)))) # (!\A[53]~input_o\ & (\B[53]~input_o\ & 
-- ((\B[52]~input_o\) # (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[53]~input_o\,
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X68_Y69_N6
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\A[53]~input_o\ & ((\B[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\A[53]~input_o\ & (\B[53]~input_o\ & 
-- (\B[52]~input_o\ & \A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[53]~input_o\,
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X68_Y69_N4
\S_int~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~27_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((\S_int~25_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\)) # (!\S_int~25_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~25_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	combout => \S_int~27_combout\);

-- Location: IOIBUF_X60_Y73_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X67_Y69_N14
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = \A[55]~input_o\ $ (\B[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X67_Y69_N10
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ = (\recursive_case:upper0|S[19]~0_combout\ & (((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))) # 
-- (!\recursive_case:upper0|S[19]~0_combout\ & ((\recursive_case:upper0|recursive_case:lower|Cout~2_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # 
-- (!\recursive_case:upper0|recursive_case:lower|Cout~2_combout\ & (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|S[19]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper0|recursive_case:lower|Cout~2_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\);

-- Location: LCCOMB_X67_Y69_N12
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ = (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ & ((\B[51]~input_o\) # (\A[51]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ & (\B[51]~input_o\ & \A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~0_combout\,
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\);

-- Location: LCCOMB_X68_Y69_N14
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ & ((\B[52]~input_o\) # (\A[52]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ & (\B[52]~input_o\ & \A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[7]~1_combout\,
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X68_Y69_N16
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ = (\B[53]~input_o\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\) # (\A[53]~input_o\))) # 
-- (!\B[53]~input_o\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & \A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[53]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\,
	datad => \A[53]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X68_Y69_N10
\S_int~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~28_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ 
-- & ((\A[54]~input_o\) # (\B[54]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ & (\A[54]~input_o\ & \B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \S_int~28_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X86_Y71_N24
\recursive_case:upper1|recursive_case:upper1|S[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|S[8]~0_combout\ = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|S[8]~0_combout\);

-- Location: LCCOMB_X68_Y69_N20
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\A[54]~input_o\) # 
-- (\B[54]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (\A[54]~input_o\ & \B[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\);

-- Location: LCCOMB_X68_Y69_N22
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ((\A[54]~input_o\) # 
-- (\B[54]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & (\A[54]~input_o\ & \B[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X67_Y69_N16
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)) # (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X67_Y69_N18
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ((\A[55]~input_o\) # (\B[55]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & (\A[55]~input_o\ & \B[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X67_Y69_N20
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)) # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X67_Y69_N30
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\A[55]~input_o\) # (\B[55]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (\A[55]~input_o\ & \B[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X67_Y69_N0
\S_int~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~29_combout\ = \recursive_case:upper1|recursive_case:upper1|S[8]~0_combout\ $ (((\S_int~20_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\S_int~20_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|S[8]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datad => \S_int~20_combout\,
	combout => \S_int~29_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X86_Y71_N26
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[57]~input_o\ $ (\B[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X67_Y69_N26
\S_int~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~30_combout\ = (\recursive_case:upper0|recursive_case:lower|Cout~2_combout\ & (((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)))) # (!\recursive_case:upper0|recursive_case:lower|Cout~2_combout\ & 
-- ((\recursive_case:upper0|S[19]~0_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:upper0|S[19]~0_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|Cout~2_combout\,
	datab => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:upper0|S[19]~0_combout\,
	combout => \S_int~30_combout\);

-- Location: LCCOMB_X86_Y71_N28
\S_int~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~31_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\S_int~30_combout\ & ((\A[56]~input_o\) # (\B[56]~input_o\))) # (!\S_int~30_combout\ & (\A[56]~input_o\ 
-- & \B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	datab => \S_int~30_combout\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \S_int~31_combout\);

-- Location: IOIBUF_X100_Y73_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X86_Y71_N18
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X86_Y71_N14
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & 
-- (\A[56]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X86_Y71_N0
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\A[56]~input_o\) # (\B[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & 
-- ((\A[56]~input_o\) # (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X86_Y71_N4
\S_int~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~32_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((\S_int~30_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\S_int~30_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~30_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \S_int~32_combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X86_Y71_N10
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[59]~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X67_Y69_N4
\recursive_case:upper1|recursive_case:upper0|S[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[11]~0_combout\ = (\S_int~25_combout\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)) # (!\S_int~25_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datac => \S_int~25_combout\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[11]~0_combout\);

-- Location: LCCOMB_X67_Y69_N22
\recursive_case:upper1|recursive_case:upper0|S[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[11]~0_combout\ & ((\A[55]~input_o\) # (\B[55]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper0|S[11]~0_combout\ & (\A[55]~input_o\ 
-- & \B[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper0|S[11]~0_combout\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\);

-- Location: LCCOMB_X86_Y71_N30
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\ & ((\A[56]~input_o\) # (\B[56]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\ & (\A[56]~input_o\ & \B[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X86_Y71_N16
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ = (\A[57]~input_o\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\) # (\B[57]~input_o\))) # 
-- (!\A[57]~input_o\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ & \B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[57]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\,
	datad => \B[57]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\);

-- Location: LCCOMB_X86_Y71_N20
\S_int~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~33_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ 
-- & ((\B[58]~input_o\) # (\A[58]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ & (\B[58]~input_o\ & \A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\,
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \S_int~33_combout\);

-- Location: LCCOMB_X86_Y71_N8
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[58]~input_o\) # 
-- (\A[58]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[58]~input_o\ & \A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X85_Y71_N2
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\A[59]~input_o\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\) # (\B[59]~input_o\))) # 
-- (!\A[59]~input_o\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & \B[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \B[59]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: IOIBUF_X81_Y73_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X85_Y71_N12
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[4]~0_combout\ = \A[60]~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[4]~0_combout\);

-- Location: LCCOMB_X86_Y71_N6
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[58]~input_o\) # 
-- (\A[58]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[58]~input_o\ & \A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X85_Y71_N8
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))) # 
-- (!\A[59]~input_o\ & (\B[59]~input_o\ & \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X86_Y71_N2
\S_int~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~34_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[4]~0_combout\ $ (((\S_int~30_combout\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # 
-- (!\S_int~30_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datab => \S_int~30_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[4]~0_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~34_combout\);

-- Location: IOIBUF_X85_Y73_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X85_Y71_N16
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[61]~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X85_Y71_N22
\S_int~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~35_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # 
-- (!\recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~35_combout\);

-- Location: LCCOMB_X85_Y71_N26
\S_int~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~36_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\B[60]~input_o\ & ((\S_int~35_combout\) # (\A[60]~input_o\))) # (!\B[60]~input_o\ & (\S_int~35_combout\ 
-- & \A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datac => \S_int~35_combout\,
	datad => \A[60]~input_o\,
	combout => \S_int~36_combout\);

-- Location: IOIBUF_X85_Y73_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X85_Y71_N28
\S_int~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~37_combout\ = (\B[60]~input_o\ & ((\A[60]~input_o\) # (\S_int~35_combout\))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & \S_int~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \A[60]~input_o\,
	datac => \S_int~35_combout\,
	combout => \S_int~37_combout\);

-- Location: LCCOMB_X85_Y71_N30
\S_int~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~38_combout\ = (\S_int~37_combout\ & ((\A[61]~input_o\) # (\B[61]~input_o\))) # (!\S_int~37_combout\ & (\A[61]~input_o\ & \B[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_int~37_combout\,
	datac => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => \S_int~38_combout\);

-- Location: LCCOMB_X85_Y71_N24
\S_int~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~39_combout\ = \B[62]~input_o\ $ (\A[62]~input_o\ $ (\S_int~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \S_int~38_combout\,
	combout => \S_int~39_combout\);

-- Location: IOIBUF_X89_Y73_N8
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X85_Y71_N6
\Ovfl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~2_combout\ = \B[63]~input_o\ $ (\A[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Ovfl~2_combout\);

-- Location: LCCOMB_X86_Y71_N12
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\ & 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\)) # (!\recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|S[11]~1_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X86_Y71_N22
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ & ((\A[59]~input_o\) # (\B[59]~input_o\))) 
-- # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ & (\A[59]~input_o\ & \B[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\,
	datac => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X85_Y71_N18
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = (\A[60]~input_o\ & ((\B[60]~input_o\) # (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\))) 
-- # (!\A[60]~input_o\ & (\B[60]~input_o\ & \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: LCCOMB_X85_Y71_N20
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & ((\A[61]~input_o\) # (\B[61]~input_o\))) 
-- # (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & (\A[61]~input_o\ & \B[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\,
	datac => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: LCCOMB_X85_Y71_N0
\S_int~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~40_combout\ = \Ovfl~2_combout\ $ (((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & ((\B[62]~input_o\) # (\A[62]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & (\B[62]~input_o\ & \A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ovfl~2_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \S_int~40_combout\);

-- Location: LCCOMB_X85_Y71_N10
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ = (\A[62]~input_o\ & ((\B[62]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & 
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X85_Y71_N4
\cout_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cout_int~0_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ((\B[63]~input_o\) # (\A[63]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & (\B[63]~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\,
	datab => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => \cout_int~0_combout\);

-- Location: LCCOMB_X85_Y71_N14
\Ovfl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~3_combout\ = (\S_int~40_combout\ & ((\B[63]~input_o\) # (\A[63]~input_o\))) # (!\S_int~40_combout\ & ((!\A[63]~input_o\) # (!\B[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~40_combout\,
	datab => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Ovfl~3_combout\);

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


