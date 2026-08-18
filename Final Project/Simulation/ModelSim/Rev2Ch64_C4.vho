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

-- DATE "04/05/2026 21:33:42"

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

ENTITY 	ShiftUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(63 DOWNTO 0)
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftUnit IS
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
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \A_rev[63]~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A_rev[63]~1_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \stage[4][63]~79_combout\ : std_logic;
SIGNAL \fill~0_combout\ : std_logic;
SIGNAL \fill~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \stage[6][63]~78_combout\ : std_logic;
SIGNAL \stage[6][63]~80_combout\ : std_logic;
SIGNAL \Y~163_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A_rev[5]~82_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A_rev[4]~83_combout\ : std_logic;
SIGNAL \stage[1][4]~128_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A_rev[6]~81_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A_rev[7]~80_combout\ : std_logic;
SIGNAL \stage[2][4]~127_combout\ : std_logic;
SIGNAL \stage[2][4]~129_combout\ : std_logic;
SIGNAL \stage[6][0]~474_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A_rev[1]~77_combout\ : std_logic;
SIGNAL \stage[6][0]~124_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A_rev[3]~78_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A_rev[2]~79_combout\ : std_logic;
SIGNAL \stage[1][2]~125_combout\ : std_logic;
SIGNAL \stage[6][0]~126_combout\ : std_logic;
SIGNAL \stage[6][0]~130_combout\ : std_logic;
SIGNAL \shamt[5]~0_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A_rev[12]~89_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A_rev[13]~88_combout\ : std_logic;
SIGNAL \stage[2][12]~133_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A_rev[15]~90_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A_rev[14]~91_combout\ : std_logic;
SIGNAL \stage[2][12]~134_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A_rev[9]~84_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A_rev[10]~87_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A_rev[11]~86_combout\ : std_logic;
SIGNAL \stage[2][8]~131_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A_rev[8]~85_combout\ : std_logic;
SIGNAL \stage[2][8]~132_combout\ : std_logic;
SIGNAL \stage[3][8]~135_combout\ : std_logic;
SIGNAL \stage[6][0]~136_combout\ : std_logic;
SIGNAL \stage[4][24]~122_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A_rev[41]~47_combout\ : std_logic;
SIGNAL \A_rev[41]~48_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \A_rev[40]~49_combout\ : std_logic;
SIGNAL \A_rev[40]~50_combout\ : std_logic;
SIGNAL \stage[2][40]~110_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A_rev[43]~51_combout\ : std_logic;
SIGNAL \A_rev[43]~52_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A_rev[42]~53_combout\ : std_logic;
SIGNAL \A_rev[42]~54_combout\ : std_logic;
SIGNAL \stage[2][40]~111_combout\ : std_logic;
SIGNAL \stage[4][32]~472_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A_rev[45]~55_combout\ : std_logic;
SIGNAL \A_rev[45]~56_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A_rev[46]~61_combout\ : std_logic;
SIGNAL \A_rev[46]~62_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A_rev[47]~59_combout\ : std_logic;
SIGNAL \A_rev[47]~60_combout\ : std_logic;
SIGNAL \stage[2][44]~112_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A_rev[44]~57_combout\ : std_logic;
SIGNAL \A_rev[44]~58_combout\ : std_logic;
SIGNAL \stage[2][44]~113_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A_rev[36]~65_combout\ : std_logic;
SIGNAL \A_rev[36]~66_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A_rev[37]~63_combout\ : std_logic;
SIGNAL \A_rev[37]~64_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A_rev[38]~69_combout\ : std_logic;
SIGNAL \A_rev[38]~70_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A_rev[39]~67_combout\ : std_logic;
SIGNAL \A_rev[39]~68_combout\ : std_logic;
SIGNAL \stage[2][36]~114_combout\ : std_logic;
SIGNAL \stage[2][36]~115_combout\ : std_logic;
SIGNAL \stage[4][32]~116_combout\ : std_logic;
SIGNAL \stage[1][32]~119_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \stage[1][32]~118_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A_rev[33]~75_combout\ : std_logic;
SIGNAL \A_rev[33]~76_combout\ : std_logic;
SIGNAL \stage[1][32]~120_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A_rev[34]~73_combout\ : std_logic;
SIGNAL \A_rev[34]~74_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A_rev[35]~71_combout\ : std_logic;
SIGNAL \A_rev[35]~72_combout\ : std_logic;
SIGNAL \stage[2][32]~117_combout\ : std_logic;
SIGNAL \stage[2][32]~121_combout\ : std_logic;
SIGNAL \stage[4][32]~123_combout\ : std_logic;
SIGNAL \stage[6][0]~473_combout\ : std_logic;
SIGNAL \A_rev[59]~28_combout\ : std_logic;
SIGNAL \A_rev[59]~29_combout\ : std_logic;
SIGNAL \A_rev[58]~30_combout\ : std_logic;
SIGNAL \A_rev[58]~31_combout\ : std_logic;
SIGNAL \stage[2][56]~91_combout\ : std_logic;
SIGNAL \A_rev[60]~20_combout\ : std_logic;
SIGNAL \A_rev[60]~21_combout\ : std_logic;
SIGNAL \A_rev[61]~18_combout\ : std_logic;
SIGNAL \A_rev[61]~19_combout\ : std_logic;
SIGNAL \stage[2][60]~87_combout\ : std_logic;
SIGNAL \A_rev[62]~22_combout\ : std_logic;
SIGNAL \A_rev[62]~23_combout\ : std_logic;
SIGNAL \stage[1][62]~88_combout\ : std_logic;
SIGNAL \stage[2][60]~89_combout\ : std_logic;
SIGNAL \A_rev[57]~24_combout\ : std_logic;
SIGNAL \A_rev[57]~25_combout\ : std_logic;
SIGNAL \A_rev[56]~26_combout\ : std_logic;
SIGNAL \A_rev[56]~27_combout\ : std_logic;
SIGNAL \stage[2][56]~90_combout\ : std_logic;
SIGNAL \stage[3][56]~92_combout\ : std_logic;
SIGNAL \A_rev[51]~14_combout\ : std_logic;
SIGNAL \A_rev[51]~15_combout\ : std_logic;
SIGNAL \A_rev[50]~16_combout\ : std_logic;
SIGNAL \A_rev[50]~17_combout\ : std_logic;
SIGNAL \stage[2][48]~84_combout\ : std_logic;
SIGNAL \A_rev[48]~12_combout\ : std_logic;
SIGNAL \A_rev[48]~13_combout\ : std_logic;
SIGNAL \A_rev[49]~10_combout\ : std_logic;
SIGNAL \A_rev[49]~11_combout\ : std_logic;
SIGNAL \stage[2][48]~85_combout\ : std_logic;
SIGNAL \A_rev[52]~4_combout\ : std_logic;
SIGNAL \A_rev[52]~5_combout\ : std_logic;
SIGNAL \A_rev[53]~2_combout\ : std_logic;
SIGNAL \A_rev[53]~3_combout\ : std_logic;
SIGNAL \stage[2][52]~81_combout\ : std_logic;
SIGNAL \A_rev[54]~8_combout\ : std_logic;
SIGNAL \A_rev[54]~9_combout\ : std_logic;
SIGNAL \A_rev[55]~6_combout\ : std_logic;
SIGNAL \A_rev[55]~7_combout\ : std_logic;
SIGNAL \stage[2][52]~82_combout\ : std_logic;
SIGNAL \stage[2][52]~83_combout\ : std_logic;
SIGNAL \stage[4][48]~86_combout\ : std_logic;
SIGNAL \stage[4][48]~93_combout\ : std_logic;
SIGNAL \A_rev[27]~37_combout\ : std_logic;
SIGNAL \A_rev[26]~38_combout\ : std_logic;
SIGNAL \stage[2][24]~99_combout\ : std_logic;
SIGNAL \A_rev[24]~36_combout\ : std_logic;
SIGNAL \A_rev[25]~35_combout\ : std_logic;
SIGNAL \stage[2][24]~98_combout\ : std_logic;
SIGNAL \stage[2][24]~100_combout\ : std_logic;
SIGNAL \A_rev[30]~34_combout\ : std_logic;
SIGNAL \stage[1][30]~95_combout\ : std_logic;
SIGNAL \stage[1][30]~96_combout\ : std_logic;
SIGNAL \A_rev[29]~32_combout\ : std_logic;
SIGNAL \A_rev[28]~33_combout\ : std_logic;
SIGNAL \stage[2][28]~94_combout\ : std_logic;
SIGNAL \stage[2][28]~97_combout\ : std_logic;
SIGNAL \stage[4][16]~101_combout\ : std_logic;
SIGNAL \A_rev[23]~41_combout\ : std_logic;
SIGNAL \A_rev[22]~42_combout\ : std_logic;
SIGNAL \stage[2][20]~102_combout\ : std_logic;
SIGNAL \A_rev[21]~39_combout\ : std_logic;
SIGNAL \A_rev[20]~40_combout\ : std_logic;
SIGNAL \stage[2][20]~103_combout\ : std_logic;
SIGNAL \A_rev[16]~44_combout\ : std_logic;
SIGNAL \A_rev[17]~43_combout\ : std_logic;
SIGNAL \A_rev[19]~45_combout\ : std_logic;
SIGNAL \A_rev[18]~46_combout\ : std_logic;
SIGNAL \stage[2][16]~104_combout\ : std_logic;
SIGNAL \stage[2][16]~105_combout\ : std_logic;
SIGNAL \stage[3][16]~106_combout\ : std_logic;
SIGNAL \stage[4][16]~107_combout\ : std_logic;
SIGNAL \stage[6][0]~108_combout\ : std_logic;
SIGNAL \stage[6][0]~137_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \stage[2][9]~150_combout\ : std_logic;
SIGNAL \stage[2][13]~147_combout\ : std_logic;
SIGNAL \stage[2][13]~148_combout\ : std_logic;
SIGNAL \stage[2][9]~149_combout\ : std_logic;
SIGNAL \stage[3][9]~151_combout\ : std_logic;
SIGNAL \stage[1][5]~144_combout\ : std_logic;
SIGNAL \stage[2][5]~143_combout\ : std_logic;
SIGNAL \stage[2][5]~145_combout\ : std_logic;
SIGNAL \stage[6][1]~140_combout\ : std_logic;
SIGNAL \stage[1][3]~141_combout\ : std_logic;
SIGNAL \stage[6][1]~142_combout\ : std_logic;
SIGNAL \stage[6][1]~146_combout\ : std_logic;
SIGNAL \stage[6][1]~152_combout\ : std_logic;
SIGNAL \stage[1][31]~154_combout\ : std_logic;
SIGNAL \stage[2][29]~155_combout\ : std_logic;
SIGNAL \stage[2][29]~153_combout\ : std_logic;
SIGNAL \stage[2][29]~156_combout\ : std_logic;
SIGNAL \stage[2][25]~157_combout\ : std_logic;
SIGNAL \stage[2][25]~158_combout\ : std_logic;
SIGNAL \stage[4][17]~159_combout\ : std_logic;
SIGNAL \stage[2][17]~162_combout\ : std_logic;
SIGNAL \stage[2][17]~163_combout\ : std_logic;
SIGNAL \stage[2][21]~160_combout\ : std_logic;
SIGNAL \stage[2][21]~161_combout\ : std_logic;
SIGNAL \stage[3][17]~164_combout\ : std_logic;
SIGNAL \stage[4][17]~165_combout\ : std_logic;
SIGNAL \stage[6][1]~166_combout\ : std_logic;
SIGNAL \stage[2][53]~167_combout\ : std_logic;
SIGNAL \stage[2][53]~168_combout\ : std_logic;
SIGNAL \stage[2][49]~170_combout\ : std_logic;
SIGNAL \stage[2][49]~169_combout\ : std_logic;
SIGNAL \stage[2][49]~171_combout\ : std_logic;
SIGNAL \stage[4][49]~172_combout\ : std_logic;
SIGNAL \stage[2][61]~173_combout\ : std_logic;
SIGNAL \stage[2][61]~174_combout\ : std_logic;
SIGNAL \stage[2][57]~175_combout\ : std_logic;
SIGNAL \stage[2][57]~176_combout\ : std_logic;
SIGNAL \stage[3][57]~177_combout\ : std_logic;
SIGNAL \stage[4][49]~178_combout\ : std_logic;
SIGNAL \stage[2][37]~181_combout\ : std_logic;
SIGNAL \stage[2][37]~180_combout\ : std_logic;
SIGNAL \stage[4][33]~475_combout\ : std_logic;
SIGNAL \stage[2][41]~184_combout\ : std_logic;
SIGNAL \stage[2][41]~185_combout\ : std_logic;
SIGNAL \stage[2][41]~186_combout\ : std_logic;
SIGNAL \stage[2][45]~182_combout\ : std_logic;
SIGNAL \stage[2][45]~183_combout\ : std_logic;
SIGNAL \stage[4][33]~187_combout\ : std_logic;
SIGNAL \stage[2][33]~189_combout\ : std_logic;
SIGNAL \stage[2][33]~188_combout\ : std_logic;
SIGNAL \stage[2][33]~190_combout\ : std_logic;
SIGNAL \stage[4][33]~191_combout\ : std_logic;
SIGNAL \stage[6][1]~192_combout\ : std_logic;
SIGNAL \stage[5][62]~138_combout\ : std_logic;
SIGNAL \stage[6][62]~139_combout\ : std_logic;
SIGNAL \Y~164_combout\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \stage[6][2]~228_combout\ : std_logic;
SIGNAL \stage[2][14]~232_combout\ : std_logic;
SIGNAL \stage[2][14]~233_combout\ : std_logic;
SIGNAL \stage[2][10]~235_combout\ : std_logic;
SIGNAL \stage[2][10]~234_combout\ : std_logic;
SIGNAL \stage[2][6]~236_combout\ : std_logic;
SIGNAL \stage[2][10]~237_combout\ : std_logic;
SIGNAL \stage[3][10]~238_combout\ : std_logic;
SIGNAL \stage[2][6]~229_combout\ : std_logic;
SIGNAL \stage[2][6]~230_combout\ : std_logic;
SIGNAL \stage[6][2]~231_combout\ : std_logic;
SIGNAL \stage[6][2]~239_combout\ : std_logic;
SIGNAL \stage[2][46]~221_combout\ : std_logic;
SIGNAL \stage[2][46]~220_combout\ : std_logic;
SIGNAL \stage[2][46]~222_combout\ : std_logic;
SIGNAL \stage[2][42]~223_combout\ : std_logic;
SIGNAL \stage[2][42]~224_combout\ : std_logic;
SIGNAL \stage[2][42]~225_combout\ : std_logic;
SIGNAL \stage[4][34]~226_combout\ : std_logic;
SIGNAL \stage[2][34]~217_combout\ : std_logic;
SIGNAL \stage[2][34]~218_combout\ : std_logic;
SIGNAL \stage[6][7]~179_combout\ : std_logic;
SIGNAL \stage[2][38]~215_combout\ : std_logic;
SIGNAL \stage[2][38]~216_combout\ : std_logic;
SIGNAL \stage[4][34]~219_combout\ : std_logic;
SIGNAL \stage[4][34]~227_combout\ : std_logic;
SIGNAL \stage[6][2]~240_combout\ : std_logic;
SIGNAL \stage[2][58]~199_combout\ : std_logic;
SIGNAL \stage[2][58]~200_combout\ : std_logic;
SIGNAL \stage[3][58]~201_combout\ : std_logic;
SIGNAL \stage[3][58]~202_combout\ : std_logic;
SIGNAL \stage[2][50]~196_combout\ : std_logic;
SIGNAL \stage[2][50]~197_combout\ : std_logic;
SIGNAL \stage[2][54]~194_combout\ : std_logic;
SIGNAL \stage[2][54]~195_combout\ : std_logic;
SIGNAL \stage[4][50]~198_combout\ : std_logic;
SIGNAL \stage[4][50]~203_combout\ : std_logic;
SIGNAL \stage[2][18]~210_combout\ : std_logic;
SIGNAL \stage[2][18]~211_combout\ : std_logic;
SIGNAL \stage[2][22]~208_combout\ : std_logic;
SIGNAL \stage[2][22]~209_combout\ : std_logic;
SIGNAL \stage[3][18]~212_combout\ : std_logic;
SIGNAL \stage[3][26]~204_combout\ : std_logic;
SIGNAL \stage[2][26]~205_combout\ : std_logic;
SIGNAL \stage[2][26]~206_combout\ : std_logic;
SIGNAL \stage[3][26]~207_combout\ : std_logic;
SIGNAL \stage[4][18]~213_combout\ : std_logic;
SIGNAL \stage[6][2]~214_combout\ : std_logic;
SIGNAL \stage[6][61]~193_combout\ : std_logic;
SIGNAL \Y~165_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \stage[6][60]~241_combout\ : std_logic;
SIGNAL \Y~166_combout\ : std_logic;
SIGNAL \stage[2][15]~278_combout\ : std_logic;
SIGNAL \stage[2][15]~279_combout\ : std_logic;
SIGNAL \stage[2][11]~280_combout\ : std_logic;
SIGNAL \stage[2][11]~281_combout\ : std_logic;
SIGNAL \stage[3][11]~282_combout\ : std_logic;
SIGNAL \stage[2][7]~275_combout\ : std_logic;
SIGNAL \stage[2][7]~276_combout\ : std_logic;
SIGNAL \stage[6][3]~277_combout\ : std_logic;
SIGNAL \stage[6][3]~283_combout\ : std_logic;
SIGNAL \stage[2][31]~264_combout\ : std_logic;
SIGNAL \stage[2][31]~265_combout\ : std_logic;
SIGNAL \stage[2][27]~266_combout\ : std_logic;
SIGNAL \stage[2][27]~267_combout\ : std_logic;
SIGNAL \stage[4][19]~268_combout\ : std_logic;
SIGNAL \stage[2][19]~271_combout\ : std_logic;
SIGNAL \stage[2][19]~272_combout\ : std_logic;
SIGNAL \stage[2][23]~269_combout\ : std_logic;
SIGNAL \stage[2][23]~270_combout\ : std_logic;
SIGNAL \stage[3][19]~273_combout\ : std_logic;
SIGNAL \stage[4][19]~274_combout\ : std_logic;
SIGNAL \stage[6][3]~284_combout\ : std_logic;
SIGNAL \stage[2][47]~255_combout\ : std_logic;
SIGNAL \stage[2][47]~254_combout\ : std_logic;
SIGNAL \stage[2][47]~256_combout\ : std_logic;
SIGNAL \stage[2][43]~257_combout\ : std_logic;
SIGNAL \stage[2][43]~258_combout\ : std_logic;
SIGNAL \stage[4][35]~259_combout\ : std_logic;
SIGNAL \stage[2][35]~253_combout\ : std_logic;
SIGNAL \stage[2][35]~252_combout\ : std_logic;
SIGNAL \stage[4][35]~476_combout\ : std_logic;
SIGNAL \stage[2][39]~260_combout\ : std_logic;
SIGNAL \stage[2][39]~261_combout\ : std_logic;
SIGNAL \stage[4][35]~262_combout\ : std_logic;
SIGNAL \stage[3][59]~247_combout\ : std_logic;
SIGNAL \stage[2][59]~248_combout\ : std_logic;
SIGNAL \stage[2][59]~249_combout\ : std_logic;
SIGNAL \stage[3][59]~250_combout\ : std_logic;
SIGNAL \stage[2][51]~244_combout\ : std_logic;
SIGNAL \stage[2][51]~245_combout\ : std_logic;
SIGNAL \stage[2][55]~242_combout\ : std_logic;
SIGNAL \stage[2][55]~243_combout\ : std_logic;
SIGNAL \stage[4][51]~246_combout\ : std_logic;
SIGNAL \stage[4][51]~251_combout\ : std_logic;
SIGNAL \stage[6][3]~263_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \stage[5][59]~285_combout\ : std_logic;
SIGNAL \stage[6][59]~286_combout\ : std_logic;
SIGNAL \Y~167_combout\ : std_logic;
SIGNAL \stage[6][7]~294_combout\ : std_logic;
SIGNAL \stage[3][12]~295_combout\ : std_logic;
SIGNAL \stage[6][4]~296_combout\ : std_logic;
SIGNAL \stage[4][20]~297_combout\ : std_logic;
SIGNAL \stage[3][20]~478_combout\ : std_logic;
SIGNAL \stage[4][20]~298_combout\ : std_logic;
SIGNAL \stage[6][4]~299_combout\ : std_logic;
SIGNAL \stage[2][56]~287_combout\ : std_logic;
SIGNAL \stage[4][52]~288_combout\ : std_logic;
SIGNAL \stage[4][52]~289_combout\ : std_logic;
SIGNAL \stage[4][16]~109_combout\ : std_logic;
SIGNAL \stage[4][52]~290_combout\ : std_logic;
SIGNAL \stage[4][36]~291_combout\ : std_logic;
SIGNAL \stage[4][36]~477_combout\ : std_logic;
SIGNAL \stage[4][36]~292_combout\ : std_logic;
SIGNAL \stage[6][4]~293_combout\ : std_logic;
SIGNAL \stage[6][4]~479_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \stage[3][13]~308_combout\ : std_logic;
SIGNAL \stage[6][5]~309_combout\ : std_logic;
SIGNAL \stage[3][21]~311_combout\ : std_logic;
SIGNAL \stage[4][21]~310_combout\ : std_logic;
SIGNAL \stage[4][21]~312_combout\ : std_logic;
SIGNAL \stage[2][9]~307_combout\ : std_logic;
SIGNAL \stage[6][5]~313_combout\ : std_logic;
SIGNAL \stage[4][53]~302_combout\ : std_logic;
SIGNAL \stage[4][53]~301_combout\ : std_logic;
SIGNAL \stage[4][53]~303_combout\ : std_logic;
SIGNAL \stage[4][37]~304_combout\ : std_logic;
SIGNAL \stage[4][37]~480_combout\ : std_logic;
SIGNAL \stage[4][37]~305_combout\ : std_logic;
SIGNAL \stage[6][5]~306_combout\ : std_logic;
SIGNAL \stage[6][5]~481_combout\ : std_logic;
SIGNAL \stage[6][58]~300_combout\ : std_logic;
SIGNAL \Y~168_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \stage[4][54]~315_combout\ : std_logic;
SIGNAL \stage[4][54]~482_combout\ : std_logic;
SIGNAL \stage[4][54]~483_combout\ : std_logic;
SIGNAL \stage[4][38]~316_combout\ : std_logic;
SIGNAL \stage[4][38]~317_combout\ : std_logic;
SIGNAL \stage[6][6]~318_combout\ : std_logic;
SIGNAL \stage[3][22]~323_combout\ : std_logic;
SIGNAL \stage[3][30]~321_combout\ : std_logic;
SIGNAL \stage[3][30]~322_combout\ : std_logic;
SIGNAL \stage[4][22]~324_combout\ : std_logic;
SIGNAL \stage[3][14]~319_combout\ : std_logic;
SIGNAL \stage[6][6]~320_combout\ : std_logic;
SIGNAL \stage[6][6]~325_combout\ : std_logic;
SIGNAL \stage[6][6]~484_combout\ : std_logic;
SIGNAL \stage[6][57]~314_combout\ : std_logic;
SIGNAL \Y~169_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
SIGNAL \stage[4][55]~327_combout\ : std_logic;
SIGNAL \stage[4][55]~328_combout\ : std_logic;
SIGNAL \stage[4][55]~329_combout\ : std_logic;
SIGNAL \stage[4][39]~331_combout\ : std_logic;
SIGNAL \stage[4][39]~330_combout\ : std_logic;
SIGNAL \stage[4][39]~332_combout\ : std_logic;
SIGNAL \stage[6][7]~333_combout\ : std_logic;
SIGNAL \stage[3][23]~338_combout\ : std_logic;
SIGNAL \stage[4][23]~337_combout\ : std_logic;
SIGNAL \stage[4][23]~339_combout\ : std_logic;
SIGNAL \stage[3][15]~335_combout\ : std_logic;
SIGNAL \stage[6][7]~336_combout\ : std_logic;
SIGNAL \stage[2][11]~334_combout\ : std_logic;
SIGNAL \stage[6][7]~340_combout\ : std_logic;
SIGNAL \stage[6][7]~485_combout\ : std_logic;
SIGNAL \stage[6][56]~326_combout\ : std_logic;
SIGNAL \Y~170_combout\ : std_logic;
SIGNAL \Y~75_combout\ : std_logic;
SIGNAL \stage[6][55]~341_combout\ : std_logic;
SIGNAL \Y~171_combout\ : std_logic;
SIGNAL \stage[4][40]~347_combout\ : std_logic;
SIGNAL \stage[4][40]~487_combout\ : std_logic;
SIGNAL \stage[4][40]~348_combout\ : std_logic;
SIGNAL \stage[5][40]~346_combout\ : std_logic;
SIGNAL \stage[5][40]~349_combout\ : std_logic;
SIGNAL \stage[4][24]~343_combout\ : std_logic;
SIGNAL \stage[4][24]~486_combout\ : std_logic;
SIGNAL \stage[4][24]~344_combout\ : std_logic;
SIGNAL \stage[6][14]~342_combout\ : std_logic;
SIGNAL \stage[6][8]~345_combout\ : std_logic;
SIGNAL \stage[6][8]~350_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \stage[4][41]~357_combout\ : std_logic;
SIGNAL \stage[4][41]~488_combout\ : std_logic;
SIGNAL \stage[4][41]~358_combout\ : std_logic;
SIGNAL \stage[5][41]~356_combout\ : std_logic;
SIGNAL \stage[5][41]~359_combout\ : std_logic;
SIGNAL \stage[4][25]~353_combout\ : std_logic;
SIGNAL \stage[4][25]~352_combout\ : std_logic;
SIGNAL \stage[4][25]~354_combout\ : std_logic;
SIGNAL \stage[6][9]~355_combout\ : std_logic;
SIGNAL \stage[6][9]~360_combout\ : std_logic;
SIGNAL \stage[6][54]~351_combout\ : std_logic;
SIGNAL \Y~172_combout\ : std_logic;
SIGNAL \Y~77_combout\ : std_logic;
SIGNAL \stage[6][53]~361_combout\ : std_logic;
SIGNAL \Y~173_combout\ : std_logic;
SIGNAL \stage[4][26]~362_combout\ : std_logic;
SIGNAL \stage[4][26]~363_combout\ : std_logic;
SIGNAL \stage[6][10]~364_combout\ : std_logic;
SIGNAL \stage[4][42]~366_combout\ : std_logic;
SIGNAL \stage[4][42]~367_combout\ : std_logic;
SIGNAL \stage[4][42]~368_combout\ : std_logic;
SIGNAL \stage[5][42]~365_combout\ : std_logic;
SIGNAL \stage[5][42]~369_combout\ : std_logic;
SIGNAL \stage[6][10]~370_combout\ : std_logic;
SIGNAL \Y~78_combout\ : std_logic;
SIGNAL \stage[4][27]~372_combout\ : std_logic;
SIGNAL \stage[4][27]~489_combout\ : std_logic;
SIGNAL \stage[4][27]~373_combout\ : std_logic;
SIGNAL \stage[6][11]~374_combout\ : std_logic;
SIGNAL \stage[5][43]~375_combout\ : std_logic;
SIGNAL \stage[4][43]~490_combout\ : std_logic;
SIGNAL \stage[4][43]~376_combout\ : std_logic;
SIGNAL \stage[4][43]~377_combout\ : std_logic;
SIGNAL \stage[5][43]~378_combout\ : std_logic;
SIGNAL \stage[6][11]~379_combout\ : std_logic;
SIGNAL \stage[6][52]~371_combout\ : std_logic;
SIGNAL \Y~174_combout\ : std_logic;
SIGNAL \Y~79_combout\ : std_logic;
SIGNAL \stage[6][51]~380_combout\ : std_logic;
SIGNAL \Y~175_combout\ : std_logic;
SIGNAL \stage[4][44]~384_combout\ : std_logic;
SIGNAL \stage[4][44]~385_combout\ : std_logic;
SIGNAL \stage[5][44]~383_combout\ : std_logic;
SIGNAL \stage[5][44]~386_combout\ : std_logic;
SIGNAL \stage[4][28]~381_combout\ : std_logic;
SIGNAL \stage[4][28]~491_combout\ : std_logic;
SIGNAL \stage[4][28]~492_combout\ : std_logic;
SIGNAL \stage[6][12]~382_combout\ : std_logic;
SIGNAL \stage[6][12]~387_combout\ : std_logic;
SIGNAL \Y~80_combout\ : std_logic;
SIGNAL \stage[4][29]~389_combout\ : std_logic;
SIGNAL \stage[4][29]~493_combout\ : std_logic;
SIGNAL \stage[4][29]~390_combout\ : std_logic;
SIGNAL \stage[6][13]~391_combout\ : std_logic;
SIGNAL \stage[4][45]~494_combout\ : std_logic;
SIGNAL \stage[4][45]~393_combout\ : std_logic;
SIGNAL \stage[4][45]~394_combout\ : std_logic;
SIGNAL \stage[5][45]~392_combout\ : std_logic;
SIGNAL \stage[5][45]~395_combout\ : std_logic;
SIGNAL \stage[6][13]~396_combout\ : std_logic;
SIGNAL \stage[6][50]~388_combout\ : std_logic;
SIGNAL \Y~176_combout\ : std_logic;
SIGNAL \Y~81_combout\ : std_logic;
SIGNAL \stage[6][49]~397_combout\ : std_logic;
SIGNAL \Y~177_combout\ : std_logic;
SIGNAL \stage[5][46]~401_combout\ : std_logic;
SIGNAL \stage[5][46]~402_combout\ : std_logic;
SIGNAL \stage[4][46]~403_combout\ : std_logic;
SIGNAL \stage[4][46]~404_combout\ : std_logic;
SIGNAL \stage[4][46]~405_combout\ : std_logic;
SIGNAL \stage[5][46]~406_combout\ : std_logic;
SIGNAL \stage[4][30]~398_combout\ : std_logic;
SIGNAL \stage[4][30]~399_combout\ : std_logic;
SIGNAL \stage[6][14]~400_combout\ : std_logic;
SIGNAL \stage[6][14]~407_combout\ : std_logic;
SIGNAL \Y~82_combout\ : std_logic;
SIGNAL \stage[6][48]~408_combout\ : std_logic;
SIGNAL \Y~178_combout\ : std_logic;
SIGNAL \stage[4][31]~410_combout\ : std_logic;
SIGNAL \stage[4][31]~409_combout\ : std_logic;
SIGNAL \stage[4][31]~411_combout\ : std_logic;
SIGNAL \stage[6][15]~412_combout\ : std_logic;
SIGNAL \stage[5][47]~413_combout\ : std_logic;
SIGNAL \stage[4][47]~415_combout\ : std_logic;
SIGNAL \stage[4][47]~414_combout\ : std_logic;
SIGNAL \stage[4][47]~416_combout\ : std_logic;
SIGNAL \stage[5][47]~417_combout\ : std_logic;
SIGNAL \stage[6][15]~418_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \stage[6][47]~495_combout\ : std_logic;
SIGNAL \Y~179_combout\ : std_logic;
SIGNAL \stage[6][16]~419_combout\ : std_logic;
SIGNAL \stage[6][16]~420_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \stage[6][46]~496_combout\ : std_logic;
SIGNAL \Y~180_combout\ : std_logic;
SIGNAL \stage[6][17]~421_combout\ : std_logic;
SIGNAL \stage[6][17]~422_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \stage[6][18]~423_combout\ : std_logic;
SIGNAL \stage[6][18]~424_combout\ : std_logic;
SIGNAL \stage[6][45]~497_combout\ : std_logic;
SIGNAL \Y~181_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \stage[6][44]~498_combout\ : std_logic;
SIGNAL \Y~182_combout\ : std_logic;
SIGNAL \stage[6][19]~425_combout\ : std_logic;
SIGNAL \stage[6][19]~426_combout\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \stage[6][20]~427_combout\ : std_logic;
SIGNAL \stage[6][20]~428_combout\ : std_logic;
SIGNAL \stage[6][43]~499_combout\ : std_logic;
SIGNAL \Y~183_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \stage[6][21]~429_combout\ : std_logic;
SIGNAL \stage[6][21]~430_combout\ : std_logic;
SIGNAL \stage[6][42]~500_combout\ : std_logic;
SIGNAL \Y~184_combout\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \stage[6][41]~501_combout\ : std_logic;
SIGNAL \Y~185_combout\ : std_logic;
SIGNAL \stage[4][38]~431_combout\ : std_logic;
SIGNAL \stage[6][22]~432_combout\ : std_logic;
SIGNAL \stage[6][22]~433_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \stage[6][23]~434_combout\ : std_logic;
SIGNAL \stage[6][23]~435_combout\ : std_logic;
SIGNAL \stage[6][40]~502_combout\ : std_logic;
SIGNAL \Y~186_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \stage[6][24]~437_combout\ : std_logic;
SIGNAL \stage[6][24]~438_combout\ : std_logic;
SIGNAL \stage[6][24]~439_combout\ : std_logic;
SIGNAL \stage[6][39]~436_combout\ : std_logic;
SIGNAL \stage[6][39]~503_combout\ : std_logic;
SIGNAL \Y~187_combout\ : std_logic;
SIGNAL \Y~92_combout\ : std_logic;
SIGNAL \stage[6][38]~440_combout\ : std_logic;
SIGNAL \stage[6][38]~504_combout\ : std_logic;
SIGNAL \Y~188_combout\ : std_logic;
SIGNAL \stage[6][25]~441_combout\ : std_logic;
SIGNAL \stage[6][25]~442_combout\ : std_logic;
SIGNAL \Y~189_combout\ : std_logic;
SIGNAL \stage[6][26]~447_combout\ : std_logic;
SIGNAL \stage[6][37]~444_combout\ : std_logic;
SIGNAL \stage[6][37]~445_combout\ : std_logic;
SIGNAL \Y~190_combout\ : std_logic;
SIGNAL \stage[6][26]~446_combout\ : std_logic;
SIGNAL \Y~191_combout\ : std_logic;
SIGNAL \stage[6][27]~450_combout\ : std_logic;
SIGNAL \stage[6][27]~451_combout\ : std_logic;
SIGNAL \stage[6][36]~449_combout\ : std_logic;
SIGNAL \stage[6][36]~505_combout\ : std_logic;
SIGNAL \Y~192_combout\ : std_logic;
SIGNAL \Y~193_combout\ : std_logic;
SIGNAL \stage[6][35]~453_combout\ : std_logic;
SIGNAL \stage[6][35]~506_combout\ : std_logic;
SIGNAL \Y~194_combout\ : std_logic;
SIGNAL \stage[6][28]~454_combout\ : std_logic;
SIGNAL \stage[6][28]~455_combout\ : std_logic;
SIGNAL \stage[6][32]~456_combout\ : std_logic;
SIGNAL \stage[6][28]~457_combout\ : std_logic;
SIGNAL \Y~93_combout\ : std_logic;
SIGNAL \stage[6][29]~459_combout\ : std_logic;
SIGNAL \stage[6][29]~460_combout\ : std_logic;
SIGNAL \stage[6][29]~508_combout\ : std_logic;
SIGNAL \stage[6][34]~458_combout\ : std_logic;
SIGNAL \stage[6][34]~507_combout\ : std_logic;
SIGNAL \Y~195_combout\ : std_logic;
SIGNAL \Y~94_combout\ : std_logic;
SIGNAL \stage[6][30]~509_combout\ : std_logic;
SIGNAL \stage[6][30]~463_combout\ : std_logic;
SIGNAL \stage[6][30]~464_combout\ : std_logic;
SIGNAL \stage[6][33]~461_combout\ : std_logic;
SIGNAL \stage[6][33]~462_combout\ : std_logic;
SIGNAL \Y~196_combout\ : std_logic;
SIGNAL \Y~95_combout\ : std_logic;
SIGNAL \stage[6][31]~467_combout\ : std_logic;
SIGNAL \stage[6][31]~468_combout\ : std_logic;
SIGNAL \stage[6][31]~510_combout\ : std_logic;
SIGNAL \stage[6][32]~465_combout\ : std_logic;
SIGNAL \stage[6][32]~466_combout\ : std_logic;
SIGNAL \Y_rev[31]~2_combout\ : std_logic;
SIGNAL \Y~96_combout\ : std_logic;
SIGNAL \Y~97_combout\ : std_logic;
SIGNAL \Y~98_combout\ : std_logic;
SIGNAL \Y~99_combout\ : std_logic;
SIGNAL \Y~100_combout\ : std_logic;
SIGNAL \Y~101_combout\ : std_logic;
SIGNAL \Y~102_combout\ : std_logic;
SIGNAL \Y~103_combout\ : std_logic;
SIGNAL \Y~104_combout\ : std_logic;
SIGNAL \Y~105_combout\ : std_logic;
SIGNAL \Y~106_combout\ : std_logic;
SIGNAL \stage[6][27]~452_combout\ : std_logic;
SIGNAL \Y~107_combout\ : std_logic;
SIGNAL \Y~108_combout\ : std_logic;
SIGNAL \stage[6][26]~448_combout\ : std_logic;
SIGNAL \Y~109_combout\ : std_logic;
SIGNAL \Y~110_combout\ : std_logic;
SIGNAL \stage[6][25]~443_combout\ : std_logic;
SIGNAL \Y~111_combout\ : std_logic;
SIGNAL \Y~112_combout\ : std_logic;
SIGNAL \Y~113_combout\ : std_logic;
SIGNAL \Y~114_combout\ : std_logic;
SIGNAL \Y~115_combout\ : std_logic;
SIGNAL \Y~116_combout\ : std_logic;
SIGNAL \Y~117_combout\ : std_logic;
SIGNAL \Y~118_combout\ : std_logic;
SIGNAL \Y~119_combout\ : std_logic;
SIGNAL \Y~120_combout\ : std_logic;
SIGNAL \Y~121_combout\ : std_logic;
SIGNAL \Y~122_combout\ : std_logic;
SIGNAL \Y~123_combout\ : std_logic;
SIGNAL \Y~124_combout\ : std_logic;
SIGNAL \Y~125_combout\ : std_logic;
SIGNAL \Y~126_combout\ : std_logic;
SIGNAL \Y~127_combout\ : std_logic;
SIGNAL \Y~128_combout\ : std_logic;
SIGNAL \Y~129_combout\ : std_logic;
SIGNAL \Y~130_combout\ : std_logic;
SIGNAL \Y~131_combout\ : std_logic;
SIGNAL \Y~132_combout\ : std_logic;
SIGNAL \Y~133_combout\ : std_logic;
SIGNAL \Y~134_combout\ : std_logic;
SIGNAL \Y~135_combout\ : std_logic;
SIGNAL \Y~136_combout\ : std_logic;
SIGNAL \Y~137_combout\ : std_logic;
SIGNAL \Y~138_combout\ : std_logic;
SIGNAL \Y~139_combout\ : std_logic;
SIGNAL \Y~140_combout\ : std_logic;
SIGNAL \Y~141_combout\ : std_logic;
SIGNAL \Y~142_combout\ : std_logic;
SIGNAL \Y~143_combout\ : std_logic;
SIGNAL \Y~144_combout\ : std_logic;
SIGNAL \Y~145_combout\ : std_logic;
SIGNAL \Y~146_combout\ : std_logic;
SIGNAL \Y~147_combout\ : std_logic;
SIGNAL \Y~148_combout\ : std_logic;
SIGNAL \Y~149_combout\ : std_logic;
SIGNAL \Y~150_combout\ : std_logic;
SIGNAL \Y~151_combout\ : std_logic;
SIGNAL \Y~152_combout\ : std_logic;
SIGNAL \Y~153_combout\ : std_logic;
SIGNAL \Y~154_combout\ : std_logic;
SIGNAL \stage[6][3]~469_combout\ : std_logic;
SIGNAL \Y~155_combout\ : std_logic;
SIGNAL \Y~156_combout\ : std_logic;
SIGNAL \stage[6][2]~470_combout\ : std_logic;
SIGNAL \Y~157_combout\ : std_logic;
SIGNAL \Y~158_combout\ : std_logic;
SIGNAL \stage[6][1]~471_combout\ : std_logic;
SIGNAL \Y~159_combout\ : std_logic;
SIGNAL \Y~160_combout\ : std_logic;
SIGNAL \Y~161_combout\ : std_logic;
SIGNAL \Y~162_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~68_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~69_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~70_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~71_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~72_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~73_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~74_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~75_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~76_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~77_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~78_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~79_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~80_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~81_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~82_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~83_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~84_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~85_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~86_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~87_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~88_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~89_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~90_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~91_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~92_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~189_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~191_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~193_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~93_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~94_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~95_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~96_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~100_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~102_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~104_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~106_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~108_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~110_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~112_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~114_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~116_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~118_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~120_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~122_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~124_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~126_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~128_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~130_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~132_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~134_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~136_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~138_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~140_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~142_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~144_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~146_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~148_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~150_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~152_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~154_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~156_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~158_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~160_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~162_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X73_Y60_N8
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X83_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X72_Y58_N14
\A_rev[63]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[63]~0_combout\ = (\Equal2~0_combout\ & (((\A[0]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[63]~input_o\,
	combout => \A_rev[63]~0_combout\);

-- Location: LCCOMB_X72_Y58_N0
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X72_Y58_N16
\A_rev[63]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[63]~1_combout\ = (\A_rev[63]~0_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[63]~0_combout\,
	datab => \process_0~0_combout\,
	datac => \A[31]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[63]~1_combout\);

-- Location: IOIBUF_X56_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X56_Y73_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X69_Y54_N8
\stage[4][63]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][63]~79_combout\ = (\B[0]~input_o\) # ((\B[3]~input_o\) # ((\B[2]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[4][63]~79_combout\);

-- Location: LCCOMB_X72_Y58_N10
\fill~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill~0_combout\ = (!\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[63]~input_o\,
	combout => \fill~0_combout\);

-- Location: LCCOMB_X72_Y58_N4
\fill~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill~1_combout\ = (\fill~0_combout\ & ((\ShiftFN[1]~input_o\) # ((\process_0~0_combout\ & \A[31]~input_o\)))) # (!\fill~0_combout\ & (\process_0~0_combout\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~0_combout\,
	datab => \process_0~0_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \fill~1_combout\);

-- Location: IOIBUF_X67_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X74_Y58_N16
\stage[6][63]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][63]~78_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \stage[6][63]~78_combout\);

-- Location: LCCOMB_X74_Y58_N26
\stage[6][63]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][63]~80_combout\ = (\stage[4][63]~79_combout\ & (((\fill~1_combout\)))) # (!\stage[4][63]~79_combout\ & ((\stage[6][63]~78_combout\ & (\A_rev[63]~1_combout\)) # (!\stage[6][63]~78_combout\ & ((\fill~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[63]~1_combout\,
	datab => \stage[4][63]~79_combout\,
	datac => \fill~1_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][63]~80_combout\);

-- Location: LCCOMB_X73_Y60_N24
\Y~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~163_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][63]~80_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \stage[6][63]~80_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~163_combout\);

-- Location: IOIBUF_X107_Y73_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X79_Y55_N10
\A_rev[5]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[5]~82_combout\ = (\Equal2~0_combout\ & (\A[58]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[58]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[5]~input_o\,
	combout => \A_rev[5]~82_combout\);

-- Location: IOIBUF_X111_Y73_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X72_Y54_N26
\A_rev[4]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[4]~83_combout\ = (\Equal2~0_combout\ & (\A[59]~input_o\ & ((!\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \A[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[4]~83_combout\);

-- Location: LCCOMB_X76_Y56_N10
\stage[1][4]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][4]~128_combout\ = (\B[0]~input_o\ & (\A_rev[5]~82_combout\)) # (!\B[0]~input_o\ & ((\A_rev[4]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[5]~82_combout\,
	datab => \A_rev[4]~83_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[1][4]~128_combout\);

-- Location: IOIBUF_X115_Y51_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X79_Y55_N24
\A_rev[6]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[6]~81_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[57]~input_o\)))) # (!\Equal2~0_combout\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[57]~input_o\,
	combout => \A_rev[6]~81_combout\);

-- Location: IOIBUF_X115_Y53_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X79_Y55_N22
\A_rev[7]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[7]~80_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[56]~input_o\)))) # (!\Equal2~0_combout\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[56]~input_o\,
	combout => \A_rev[7]~80_combout\);

-- Location: LCCOMB_X76_Y56_N24
\stage[2][4]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][4]~127_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[7]~80_combout\))) # (!\B[0]~input_o\ & (\A_rev[6]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[6]~81_combout\,
	datab => \A_rev[7]~80_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage[2][4]~127_combout\);

-- Location: LCCOMB_X76_Y56_N12
\stage[2][4]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][4]~129_combout\ = (\stage[2][4]~127_combout\) # ((\stage[1][4]~128_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][4]~128_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[2][4]~127_combout\,
	combout => \stage[2][4]~129_combout\);

-- Location: LCCOMB_X72_Y58_N18
\stage[6][0]~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~474_combout\ = (\ShiftFN[1]~input_o\ & (((\A[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\fill~0_combout\) # ((!\ShiftFN[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \stage[6][0]~474_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X72_Y57_N8
\A_rev[1]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[1]~77_combout\ = (\Equal2~0_combout\ & (((\A[62]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[62]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[1]~77_combout\);

-- Location: LCCOMB_X72_Y56_N14
\stage[6][0]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~124_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[1]~77_combout\))) # (!\B[0]~input_o\ & (\stage[6][0]~474_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \stage[6][0]~474_combout\,
	datad => \A_rev[1]~77_combout\,
	combout => \stage[6][0]~124_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X72_Y54_N24
\A_rev[3]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[3]~78_combout\ = (\Equal2~0_combout\ & (\A[60]~input_o\ & ((!\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (((\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \A[3]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[3]~78_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X72_Y57_N2
\A_rev[2]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[2]~79_combout\ = (\Equal2~0_combout\ & (\A[61]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[2]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[2]~79_combout\);

-- Location: LCCOMB_X72_Y56_N0
\stage[1][2]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][2]~125_combout\ = (\B[0]~input_o\ & (\A_rev[3]~78_combout\)) # (!\B[0]~input_o\ & ((\A_rev[2]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_rev[3]~78_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[2]~79_combout\,
	combout => \stage[1][2]~125_combout\);

-- Location: LCCOMB_X72_Y56_N10
\stage[6][0]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~126_combout\ = (!\B[2]~input_o\ & ((\stage[6][0]~124_combout\) # ((\B[1]~input_o\ & \stage[1][2]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[6][0]~124_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[1][2]~125_combout\,
	combout => \stage[6][0]~126_combout\);

-- Location: LCCOMB_X72_Y56_N28
\stage[6][0]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~130_combout\ = (!\B[3]~input_o\ & ((\stage[6][0]~126_combout\) # ((\B[2]~input_o\ & \stage[2][4]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][4]~129_combout\,
	datad => \stage[6][0]~126_combout\,
	combout => \stage[6][0]~130_combout\);

-- Location: LCCOMB_X70_Y54_N16
\shamt[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shamt[5]~0_combout\ = (!\ExtWord~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \shamt[5]~0_combout\);

-- Location: IOIBUF_X91_Y73_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X80_Y62_N30
\A_rev[12]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[12]~89_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[51]~input_o\))) # (!\Equal2~0_combout\ & (((\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[51]~input_o\,
	datad => \A[12]~input_o\,
	combout => \A_rev[12]~89_combout\);

-- Location: IOIBUF_X81_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X75_Y63_N18
\A_rev[13]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[13]~88_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[50]~input_o\)))) # (!\Equal2~0_combout\ & (((\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[50]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[13]~88_combout\);

-- Location: LCCOMB_X75_Y57_N20
\stage[2][12]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][12]~133_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[13]~88_combout\))) # (!\B[0]~input_o\ & (\A_rev[12]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[12]~89_combout\,
	datac => \A_rev[13]~88_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][12]~133_combout\);

-- Location: IOIBUF_X31_Y73_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X75_Y63_N4
\A_rev[15]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[15]~90_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[48]~input_o\)))) # (!\Equal2~0_combout\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[15]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[48]~input_o\,
	combout => \A_rev[15]~90_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X76_Y59_N14
\A_rev[14]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[14]~91_combout\ = (\Equal2~0_combout\ & (\A[49]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[14]~input_o\,
	combout => \A_rev[14]~91_combout\);

-- Location: LCCOMB_X75_Y57_N22
\stage[2][12]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][12]~134_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[15]~90_combout\)) # (!\B[0]~input_o\ & ((\A_rev[14]~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[15]~90_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[14]~91_combout\,
	combout => \stage[2][12]~134_combout\);

-- Location: IOIBUF_X83_Y73_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X76_Y59_N20
\A_rev[9]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[9]~84_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[54]~input_o\))) # (!\Equal2~0_combout\ & (((\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[9]~input_o\,
	combout => \A_rev[9]~84_combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X72_Y58_N12
\A_rev[10]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[10]~87_combout\ = (\Equal2~0_combout\ & (((\A[53]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[10]~input_o\,
	datac => \A[53]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[10]~87_combout\);

-- Location: IOIBUF_X56_Y73_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X72_Y58_N26
\A_rev[11]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[11]~86_combout\ = (\Equal2~0_combout\ & (\A[52]~input_o\ & ((!\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (((\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[11]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[11]~86_combout\);

-- Location: LCCOMB_X75_Y57_N24
\stage[2][8]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][8]~131_combout\ = (\B[0]~input_o\ & (((\A_rev[11]~86_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\A_rev[10]~87_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[10]~87_combout\,
	datac => \A_rev[11]~86_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][8]~131_combout\);

-- Location: IOIBUF_X115_Y62_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X77_Y58_N18
\A_rev[8]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[8]~85_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[55]~input_o\)))) # (!\Equal2~0_combout\ & (((\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[55]~input_o\,
	combout => \A_rev[8]~85_combout\);

-- Location: LCCOMB_X75_Y57_N10
\stage[2][8]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][8]~132_combout\ = (\stage[2][8]~131_combout\ & ((\A_rev[9]~84_combout\) # ((\B[1]~input_o\)))) # (!\stage[2][8]~131_combout\ & (((\A_rev[8]~85_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[9]~84_combout\,
	datab => \stage[2][8]~131_combout\,
	datac => \A_rev[8]~85_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][8]~132_combout\);

-- Location: LCCOMB_X73_Y57_N0
\stage[3][8]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][8]~135_combout\ = (\B[2]~input_o\ & ((\stage[2][12]~133_combout\) # ((\stage[2][12]~134_combout\)))) # (!\B[2]~input_o\ & (((\stage[2][8]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][12]~133_combout\,
	datac => \stage[2][12]~134_combout\,
	datad => \stage[2][8]~132_combout\,
	combout => \stage[3][8]~135_combout\);

-- Location: LCCOMB_X70_Y58_N4
\stage[6][0]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~136_combout\ = (!\shamt[5]~0_combout\ & ((\stage[6][0]~130_combout\) # ((\B[3]~input_o\ & \stage[3][8]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \stage[6][0]~130_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[3][8]~135_combout\,
	combout => \stage[6][0]~136_combout\);

-- Location: LCCOMB_X69_Y58_N12
\stage[4][24]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][24]~122_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[4][24]~122_combout\);

-- Location: IOIBUF_X115_Y50_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X74_Y54_N28
\A_rev[41]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[41]~47_combout\ = (\Equal2~0_combout\ & (\A[22]~input_o\)) # (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[41]~input_o\,
	combout => \A_rev[41]~47_combout\);

-- Location: LCCOMB_X74_Y54_N6
\A_rev[41]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[41]~48_combout\ = (\A_rev[41]~47_combout\) # ((\A[31]~input_o\ & (!\Equal2~0_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \process_0~0_combout\,
	datad => \A_rev[41]~47_combout\,
	combout => \A_rev[41]~48_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X76_Y58_N2
\A_rev[40]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[40]~49_combout\ = (\Equal2~0_combout\ & (((\A[23]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[23]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[40]~input_o\,
	combout => \A_rev[40]~49_combout\);

-- Location: LCCOMB_X74_Y59_N10
\A_rev[40]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[40]~50_combout\ = (\A_rev[40]~49_combout\) # ((\A[31]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \process_0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[40]~49_combout\,
	combout => \A_rev[40]~50_combout\);

-- Location: LCCOMB_X69_Y59_N24
\stage[2][40]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][40]~110_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[41]~48_combout\)) # (!\B[0]~input_o\ & ((\A_rev[40]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[41]~48_combout\,
	datab => \A_rev[40]~50_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][40]~110_combout\);

-- Location: IOIBUF_X115_Y51_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X74_Y54_N0
\A_rev[43]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[43]~51_combout\ = (\Equal2~0_combout\ & (((\A[20]~input_o\)))) # (!\Equal2~0_combout\ & (\A[43]~input_o\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[20]~input_o\,
	combout => \A_rev[43]~51_combout\);

-- Location: LCCOMB_X77_Y59_N10
\A_rev[43]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[43]~52_combout\ = (\A_rev[43]~51_combout\) # ((\A[31]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \process_0~0_combout\,
	datac => \A_rev[43]~51_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[43]~52_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X77_Y59_N4
\A_rev[42]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[42]~53_combout\ = (\Equal2~0_combout\ & (((\A[21]~input_o\)))) # (!\Equal2~0_combout\ & (\A[42]~input_o\ & ((!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[42]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[42]~53_combout\);

-- Location: LCCOMB_X77_Y59_N14
\A_rev[42]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[42]~54_combout\ = (\A_rev[42]~53_combout\) # ((\A[31]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \process_0~0_combout\,
	datac => \A_rev[42]~53_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[42]~54_combout\);

-- Location: LCCOMB_X69_Y59_N18
\stage[2][40]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][40]~111_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[43]~52_combout\)) # (!\B[0]~input_o\ & ((\A_rev[42]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[43]~52_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[42]~54_combout\,
	combout => \stage[2][40]~111_combout\);

-- Location: LCCOMB_X69_Y58_N24
\stage[4][32]~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][32]~472_combout\ = (!\B[2]~input_o\ & (\B[3]~input_o\ & ((\stage[2][40]~110_combout\) # (\stage[2][40]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][40]~110_combout\,
	datad => \stage[2][40]~111_combout\,
	combout => \stage[4][32]~472_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X72_Y60_N12
\A_rev[45]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[45]~55_combout\ = (\Equal2~0_combout\ & (((\A[18]~input_o\)))) # (!\Equal2~0_combout\ & (\A[45]~input_o\ & ((!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \A[18]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[45]~55_combout\);

-- Location: LCCOMB_X72_Y60_N30
\A_rev[45]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[45]~56_combout\ = (\A_rev[45]~55_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[45]~55_combout\,
	datab => \process_0~0_combout\,
	datac => \A[31]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[45]~56_combout\);

-- Location: IOIBUF_X65_Y73_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X72_Y60_N8
\A_rev[46]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[46]~61_combout\ = (\Equal2~0_combout\ & (\A[17]~input_o\)) # (!\Equal2~0_combout\ & (((\A[46]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[46]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[46]~61_combout\);

-- Location: LCCOMB_X72_Y60_N2
\A_rev[46]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[46]~62_combout\ = (\A_rev[46]~61_combout\) # ((!\Equal2~0_combout\ & (\A[31]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A_rev[46]~61_combout\,
	datac => \A[31]~input_o\,
	datad => \process_0~0_combout\,
	combout => \A_rev[46]~62_combout\);

-- Location: IOIBUF_X74_Y73_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X75_Y63_N14
\A_rev[47]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[47]~59_combout\ = (\Equal2~0_combout\ & (\A[16]~input_o\)) # (!\Equal2~0_combout\ & (((\A[47]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[47]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[47]~59_combout\);

-- Location: LCCOMB_X75_Y63_N8
\A_rev[47]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[47]~60_combout\ = (\A_rev[47]~59_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A[31]~input_o\,
	datac => \A_rev[47]~59_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[47]~60_combout\);

-- Location: LCCOMB_X69_Y59_N4
\stage[2][44]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][44]~112_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[47]~60_combout\))) # (!\B[0]~input_o\ & (\A_rev[46]~62_combout\)))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[46]~62_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[47]~60_combout\,
	combout => \stage[2][44]~112_combout\);

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

-- Location: IOIBUF_X115_Y54_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X73_Y54_N26
\A_rev[44]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[44]~57_combout\ = (\Equal2~0_combout\ & (((\A[19]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[44]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[19]~input_o\,
	combout => \A_rev[44]~57_combout\);

-- Location: LCCOMB_X73_Y54_N4
\A_rev[44]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[44]~58_combout\ = (\A_rev[44]~57_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A[31]~input_o\,
	datac => \A_rev[44]~57_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[44]~58_combout\);

-- Location: LCCOMB_X69_Y59_N30
\stage[2][44]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][44]~113_combout\ = (\B[1]~input_o\ & (((\stage[2][44]~112_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][44]~112_combout\ & (\A_rev[45]~56_combout\)) # (!\stage[2][44]~112_combout\ & ((\A_rev[44]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[45]~56_combout\,
	datab => \B[1]~input_o\,
	datac => \stage[2][44]~112_combout\,
	datad => \A_rev[44]~58_combout\,
	combout => \stage[2][44]~113_combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X76_Y59_N8
\A_rev[36]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[36]~65_combout\ = (\Equal2~0_combout\ & (((\A[27]~input_o\)))) # (!\Equal2~0_combout\ & (\A[36]~input_o\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[27]~input_o\,
	combout => \A_rev[36]~65_combout\);

-- Location: LCCOMB_X76_Y59_N26
\A_rev[36]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[36]~66_combout\ = (\A_rev[36]~65_combout\) # ((!\Equal2~0_combout\ & (\process_0~0_combout\ & \A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \process_0~0_combout\,
	datac => \A_rev[36]~65_combout\,
	datad => \A[31]~input_o\,
	combout => \A_rev[36]~66_combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X77_Y56_N10
\A_rev[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[37]~63_combout\ = (\Equal2~0_combout\ & (((\A[26]~input_o\)))) # (!\Equal2~0_combout\ & (\A[37]~input_o\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[26]~input_o\,
	combout => \A_rev[37]~63_combout\);

-- Location: LCCOMB_X74_Y59_N4
\A_rev[37]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[37]~64_combout\ = (\A_rev[37]~63_combout\) # ((\A[31]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \process_0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[37]~63_combout\,
	combout => \A_rev[37]~64_combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X75_Y63_N30
\A_rev[38]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[38]~69_combout\ = (\Equal2~0_combout\ & (((\A[25]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[38]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[38]~69_combout\);

-- Location: LCCOMB_X75_Y63_N0
\A_rev[38]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[38]~70_combout\ = (\A_rev[38]~69_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A[31]~input_o\,
	datac => \A_rev[38]~69_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[38]~70_combout\);

-- Location: IOIBUF_X105_Y73_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X75_Y63_N10
\A_rev[39]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[39]~67_combout\ = (\Equal2~0_combout\ & (\A[24]~input_o\)) # (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[24]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[39]~input_o\,
	combout => \A_rev[39]~67_combout\);

-- Location: LCCOMB_X75_Y63_N28
\A_rev[39]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[39]~68_combout\ = (\A_rev[39]~67_combout\) # ((!\Equal2~0_combout\ & (\A[31]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[31]~input_o\,
	datac => \process_0~0_combout\,
	datad => \A_rev[39]~67_combout\,
	combout => \A_rev[39]~68_combout\);

-- Location: LCCOMB_X74_Y59_N6
\stage[2][36]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][36]~114_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[39]~68_combout\))) # (!\B[0]~input_o\ & (\A_rev[38]~70_combout\)))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[38]~70_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[39]~68_combout\,
	combout => \stage[2][36]~114_combout\);

-- Location: LCCOMB_X74_Y59_N16
\stage[2][36]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][36]~115_combout\ = (\B[1]~input_o\ & (((\stage[2][36]~114_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][36]~114_combout\ & ((\A_rev[37]~64_combout\))) # (!\stage[2][36]~114_combout\ & (\A_rev[36]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[36]~66_combout\,
	datac => \A_rev[37]~64_combout\,
	datad => \stage[2][36]~114_combout\,
	combout => \stage[2][36]~115_combout\);

-- Location: LCCOMB_X69_Y58_N10
\stage[4][32]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][32]~116_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\stage[2][44]~113_combout\)) # (!\B[3]~input_o\ & ((\stage[2][36]~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][44]~113_combout\,
	datad => \stage[2][36]~115_combout\,
	combout => \stage[4][32]~116_combout\);

-- Location: LCCOMB_X73_Y59_N26
\stage[1][32]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][32]~119_combout\ = (\ShiftFN[0]~input_o\ & (\A[31]~input_o\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[31]~input_o\,
	combout => \stage[1][32]~119_combout\);

-- Location: IOIBUF_X100_Y73_N22
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X73_Y59_N0
\stage[1][32]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][32]~118_combout\ = (\A[32]~input_o\ & (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[32]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[1][32]~118_combout\);

-- Location: IOIBUF_X52_Y73_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X73_Y59_N12
\A_rev[33]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[33]~75_combout\ = (\Equal2~0_combout\ & (\A[30]~input_o\)) # (!\Equal2~0_combout\ & (((\A[33]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[33]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[33]~75_combout\);

-- Location: LCCOMB_X73_Y59_N14
\A_rev[33]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[33]~76_combout\ = (\A_rev[33]~75_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A[31]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[33]~75_combout\,
	combout => \A_rev[33]~76_combout\);

-- Location: LCCOMB_X73_Y59_N28
\stage[1][32]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][32]~120_combout\ = (\B[0]~input_o\ & (((\A_rev[33]~76_combout\)))) # (!\B[0]~input_o\ & ((\stage[1][32]~119_combout\) # ((\stage[1][32]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][32]~119_combout\,
	datab => \stage[1][32]~118_combout\,
	datac => \A_rev[33]~76_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[1][32]~120_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X73_Y59_N6
\A_rev[34]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[34]~73_combout\ = (\Equal2~0_combout\ & (((\A[29]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[34]~input_o\,
	datad => \A[29]~input_o\,
	combout => \A_rev[34]~73_combout\);

-- Location: LCCOMB_X73_Y59_N8
\A_rev[34]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[34]~74_combout\ = (\A_rev[34]~73_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A[31]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[34]~73_combout\,
	combout => \A_rev[34]~74_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X80_Y62_N28
\A_rev[35]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[35]~71_combout\ = (\Equal2~0_combout\ & (((\A[28]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[35]~input_o\,
	combout => \A_rev[35]~71_combout\);

-- Location: LCCOMB_X74_Y59_N18
\A_rev[35]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[35]~72_combout\ = (\A_rev[35]~71_combout\) # ((\A[31]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \process_0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[35]~71_combout\,
	combout => \A_rev[35]~72_combout\);

-- Location: LCCOMB_X73_Y59_N10
\stage[2][32]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][32]~117_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[35]~72_combout\))) # (!\B[0]~input_o\ & (\A_rev[34]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[34]~74_combout\,
	datad => \A_rev[35]~72_combout\,
	combout => \stage[2][32]~117_combout\);

-- Location: LCCOMB_X72_Y56_N20
\stage[2][32]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][32]~121_combout\ = (\stage[2][32]~117_combout\) # ((\stage[1][32]~120_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][32]~120_combout\,
	datab => \stage[2][32]~117_combout\,
	datac => \B[1]~input_o\,
	combout => \stage[2][32]~121_combout\);

-- Location: LCCOMB_X69_Y58_N22
\stage[4][32]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][32]~123_combout\ = (\stage[4][32]~472_combout\) # ((\stage[4][32]~116_combout\) # ((\stage[4][24]~122_combout\ & \stage[2][32]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][24]~122_combout\,
	datab => \stage[4][32]~472_combout\,
	datac => \stage[4][32]~116_combout\,
	datad => \stage[2][32]~121_combout\,
	combout => \stage[4][32]~123_combout\);

-- Location: LCCOMB_X70_Y58_N30
\stage[6][0]~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~473_combout\ = (\B[5]~input_o\ & (\stage[4][32]~123_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \stage[4][32]~123_combout\,
	datac => \ExtWord~input_o\,
	combout => \stage[6][0]~473_combout\);

-- Location: LCCOMB_X72_Y54_N4
\A_rev[59]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[59]~28_combout\ = (\Equal2~0_combout\ & (((\A[4]~input_o\)))) # (!\Equal2~0_combout\ & (\A[59]~input_o\ & ((!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \A[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[59]~28_combout\);

-- Location: LCCOMB_X72_Y54_N22
\A_rev[59]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[59]~29_combout\ = (\A_rev[59]~28_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A_rev[59]~28_combout\,
	datac => \A[31]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[59]~29_combout\);

-- Location: LCCOMB_X79_Y55_N4
\A_rev[58]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[58]~30_combout\ = (\Equal2~0_combout\ & (((\A[5]~input_o\)))) # (!\Equal2~0_combout\ & (\A[58]~input_o\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[58]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[5]~input_o\,
	combout => \A_rev[58]~30_combout\);

-- Location: LCCOMB_X72_Y55_N20
\A_rev[58]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[58]~31_combout\ = (\A_rev[58]~30_combout\) # ((!\Equal2~0_combout\ & (\process_0~0_combout\ & \A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \process_0~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A_rev[58]~30_combout\,
	combout => \A_rev[58]~31_combout\);

-- Location: LCCOMB_X69_Y54_N20
\stage[2][56]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][56]~91_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[59]~29_combout\)) # (!\B[0]~input_o\ & ((\A_rev[58]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[59]~29_combout\,
	datac => \A_rev[58]~31_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][56]~91_combout\);

-- Location: LCCOMB_X72_Y54_N16
\A_rev[60]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[60]~20_combout\ = (\Equal2~0_combout\ & (((\A[3]~input_o\)))) # (!\Equal2~0_combout\ & (\A[60]~input_o\ & ((!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \A[3]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[60]~20_combout\);

-- Location: LCCOMB_X72_Y54_N2
\A_rev[60]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[60]~21_combout\ = (\A_rev[60]~20_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A_rev[60]~20_combout\,
	datac => \A[31]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[60]~21_combout\);

-- Location: LCCOMB_X72_Y57_N0
\A_rev[61]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[61]~18_combout\ = (\Equal2~0_combout\ & (((\A[2]~input_o\)))) # (!\Equal2~0_combout\ & (\A[61]~input_o\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[2]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[61]~18_combout\);

-- Location: LCCOMB_X72_Y57_N10
\A_rev[61]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[61]~19_combout\ = (\A_rev[61]~18_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A_rev[61]~18_combout\,
	datac => \A[31]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[61]~19_combout\);

-- Location: LCCOMB_X70_Y57_N0
\stage[2][60]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][60]~87_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[61]~19_combout\))) # (!\B[0]~input_o\ & (\A_rev[60]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[60]~21_combout\,
	datad => \A_rev[61]~19_combout\,
	combout => \stage[2][60]~87_combout\);

-- Location: LCCOMB_X72_Y57_N12
\A_rev[62]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[62]~22_combout\ = (\Equal2~0_combout\ & (\A[1]~input_o\)) # (!\Equal2~0_combout\ & (((\A[62]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[62]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[62]~22_combout\);

-- Location: LCCOMB_X72_Y57_N30
\A_rev[62]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[62]~23_combout\ = (\A_rev[62]~22_combout\) # ((\A[31]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[62]~22_combout\,
	datab => \A[31]~input_o\,
	datac => \process_0~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[62]~23_combout\);

-- Location: LCCOMB_X70_Y57_N18
\stage[1][62]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][62]~88_combout\ = (\B[0]~input_o\ & ((\A_rev[63]~1_combout\))) # (!\B[0]~input_o\ & (\A_rev[62]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_rev[62]~23_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[63]~1_combout\,
	combout => \stage[1][62]~88_combout\);

-- Location: LCCOMB_X69_Y54_N18
\stage[2][60]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][60]~89_combout\ = (\stage[2][60]~87_combout\) # ((\B[1]~input_o\ & \stage[1][62]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \stage[2][60]~87_combout\,
	datad => \stage[1][62]~88_combout\,
	combout => \stage[2][60]~89_combout\);

-- Location: LCCOMB_X79_Y55_N8
\A_rev[57]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[57]~24_combout\ = (\Equal2~0_combout\ & (\A[6]~input_o\)) # (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[57]~input_o\,
	combout => \A_rev[57]~24_combout\);

-- Location: LCCOMB_X72_Y55_N14
\A_rev[57]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[57]~25_combout\ = (\A_rev[57]~24_combout\) # ((!\Equal2~0_combout\ & (\A[31]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[31]~input_o\,
	datac => \process_0~0_combout\,
	datad => \A_rev[57]~24_combout\,
	combout => \A_rev[57]~25_combout\);

-- Location: LCCOMB_X79_Y55_N18
\A_rev[56]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[56]~26_combout\ = (\Equal2~0_combout\ & (\A[7]~input_o\)) # (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[56]~input_o\,
	combout => \A_rev[56]~26_combout\);

-- Location: LCCOMB_X72_Y55_N0
\A_rev[56]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[56]~27_combout\ = (\A_rev[56]~26_combout\) # ((!\Equal2~0_combout\ & (\A[31]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[31]~input_o\,
	datac => \process_0~0_combout\,
	datad => \A_rev[56]~26_combout\,
	combout => \A_rev[56]~27_combout\);

-- Location: LCCOMB_X72_Y55_N18
\stage[2][56]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][56]~90_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[57]~25_combout\)) # (!\B[0]~input_o\ & ((\A_rev[56]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[57]~25_combout\,
	datad => \A_rev[56]~27_combout\,
	combout => \stage[2][56]~90_combout\);

-- Location: LCCOMB_X70_Y56_N24
\stage[3][56]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][56]~92_combout\ = (\B[2]~input_o\ & (((\stage[2][60]~89_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][56]~91_combout\) # ((\stage[2][56]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][56]~91_combout\,
	datab => \B[2]~input_o\,
	datac => \stage[2][60]~89_combout\,
	datad => \stage[2][56]~90_combout\,
	combout => \stage[3][56]~92_combout\);

-- Location: LCCOMB_X80_Y62_N8
\A_rev[51]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[51]~14_combout\ = (\Equal2~0_combout\ & (((\A[12]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[51]~input_o\,
	datad => \A[12]~input_o\,
	combout => \A_rev[51]~14_combout\);

-- Location: LCCOMB_X74_Y59_N24
\A_rev[51]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[51]~15_combout\ = (\A_rev[51]~14_combout\) # ((\A[31]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \process_0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[51]~14_combout\,
	combout => \A_rev[51]~15_combout\);

-- Location: LCCOMB_X75_Y63_N12
\A_rev[50]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[50]~16_combout\ = (\Equal2~0_combout\ & (((\A[13]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[50]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[50]~16_combout\);

-- Location: LCCOMB_X75_Y63_N6
\A_rev[50]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[50]~17_combout\ = (\A_rev[50]~16_combout\) # ((!\Equal2~0_combout\ & (\A[31]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[31]~input_o\,
	datac => \process_0~0_combout\,
	datad => \A_rev[50]~16_combout\,
	combout => \A_rev[50]~17_combout\);

-- Location: LCCOMB_X69_Y55_N10
\stage[2][48]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][48]~84_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[51]~15_combout\)) # (!\B[0]~input_o\ & ((\A_rev[50]~17_combout\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[51]~15_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[50]~17_combout\,
	combout => \stage[2][48]~84_combout\);

-- Location: LCCOMB_X75_Y63_N24
\A_rev[48]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[48]~12_combout\ = (\Equal2~0_combout\ & (\A[15]~input_o\)) # (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[15]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[48]~input_o\,
	combout => \A_rev[48]~12_combout\);

-- Location: LCCOMB_X75_Y63_N2
\A_rev[48]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[48]~13_combout\ = (\A_rev[48]~12_combout\) # ((!\Equal2~0_combout\ & (\A[31]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[31]~input_o\,
	datac => \process_0~0_combout\,
	datad => \A_rev[48]~12_combout\,
	combout => \A_rev[48]~13_combout\);

-- Location: LCCOMB_X76_Y59_N18
\A_rev[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[49]~10_combout\ = (\Equal2~0_combout\ & (((\A[14]~input_o\)))) # (!\Equal2~0_combout\ & (\A[49]~input_o\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[14]~input_o\,
	combout => \A_rev[49]~10_combout\);

-- Location: LCCOMB_X76_Y59_N12
\A_rev[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[49]~11_combout\ = (\A_rev[49]~10_combout\) # ((\A[31]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \process_0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[49]~10_combout\,
	combout => \A_rev[49]~11_combout\);

-- Location: LCCOMB_X69_Y55_N12
\stage[2][48]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][48]~85_combout\ = (\stage[2][48]~84_combout\ & ((\B[1]~input_o\) # ((\A_rev[49]~11_combout\)))) # (!\stage[2][48]~84_combout\ & (!\B[1]~input_o\ & (\A_rev[48]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][48]~84_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[48]~13_combout\,
	datad => \A_rev[49]~11_combout\,
	combout => \stage[2][48]~85_combout\);

-- Location: LCCOMB_X72_Y58_N22
\A_rev[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[52]~4_combout\ = (\Equal2~0_combout\ & (((\A[11]~input_o\)))) # (!\Equal2~0_combout\ & (\A[52]~input_o\ & ((!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[11]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[52]~4_combout\);

-- Location: LCCOMB_X72_Y58_N8
\A_rev[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[52]~5_combout\ = (\A_rev[52]~4_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[52]~4_combout\,
	datab => \process_0~0_combout\,
	datac => \A[31]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[52]~5_combout\);

-- Location: LCCOMB_X72_Y58_N2
\A_rev[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[53]~2_combout\ = (\Equal2~0_combout\ & (\A[10]~input_o\)) # (!\Equal2~0_combout\ & (((\A[53]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[10]~input_o\,
	datac => \A[53]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[53]~2_combout\);

-- Location: LCCOMB_X72_Y58_N28
\A_rev[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[53]~3_combout\ = (\A_rev[53]~2_combout\) # ((\process_0~0_combout\ & (\A[31]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[53]~2_combout\,
	datab => \process_0~0_combout\,
	datac => \A[31]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[53]~3_combout\);

-- Location: LCCOMB_X69_Y55_N8
\stage[2][52]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][52]~81_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[53]~3_combout\))) # (!\B[0]~input_o\ & (\A_rev[52]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[52]~5_combout\,
	datad => \A_rev[53]~3_combout\,
	combout => \stage[2][52]~81_combout\);

-- Location: LCCOMB_X76_Y59_N16
\A_rev[54]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[54]~8_combout\ = (\Equal2~0_combout\ & (((\A[9]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[9]~input_o\,
	combout => \A_rev[54]~8_combout\);

-- Location: LCCOMB_X72_Y55_N26
\A_rev[54]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[54]~9_combout\ = (\A_rev[54]~8_combout\) # ((!\Equal2~0_combout\ & (\A[31]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[31]~input_o\,
	datac => \process_0~0_combout\,
	datad => \A_rev[54]~8_combout\,
	combout => \A_rev[54]~9_combout\);

-- Location: LCCOMB_X77_Y58_N0
\A_rev[55]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[55]~6_combout\ = (\Equal2~0_combout\ & (((\A[8]~input_o\)))) # (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[55]~input_o\,
	combout => \A_rev[55]~6_combout\);

-- Location: LCCOMB_X72_Y55_N16
\A_rev[55]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[55]~7_combout\ = (\A_rev[55]~6_combout\) # ((!\Equal2~0_combout\ & (\A[31]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[31]~input_o\,
	datac => \process_0~0_combout\,
	datad => \A_rev[55]~6_combout\,
	combout => \A_rev[55]~7_combout\);

-- Location: LCCOMB_X72_Y55_N4
\stage[2][52]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][52]~82_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[55]~7_combout\))) # (!\B[0]~input_o\ & (\A_rev[54]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[54]~9_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[55]~7_combout\,
	combout => \stage[2][52]~82_combout\);

-- Location: LCCOMB_X70_Y55_N0
\stage[2][52]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][52]~83_combout\ = (\stage[2][52]~81_combout\) # (\stage[2][52]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][52]~81_combout\,
	datad => \stage[2][52]~82_combout\,
	combout => \stage[2][52]~83_combout\);

-- Location: LCCOMB_X69_Y58_N8
\stage[4][48]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][48]~86_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][52]~83_combout\))) # (!\B[2]~input_o\ & (\stage[2][48]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][48]~85_combout\,
	datac => \stage[2][52]~83_combout\,
	datad => \B[3]~input_o\,
	combout => \stage[4][48]~86_combout\);

-- Location: LCCOMB_X70_Y58_N0
\stage[4][48]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][48]~93_combout\ = (\stage[4][48]~86_combout\) # ((\B[3]~input_o\ & \stage[3][56]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \stage[3][56]~92_combout\,
	datad => \stage[4][48]~86_combout\,
	combout => \stage[4][48]~93_combout\);

-- Location: LCCOMB_X76_Y59_N22
\A_rev[27]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[27]~37_combout\ = (\Equal2~0_combout\ & (\A[36]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[27]~input_o\,
	combout => \A_rev[27]~37_combout\);

-- Location: LCCOMB_X77_Y56_N8
\A_rev[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[26]~38_combout\ = (\Equal2~0_combout\ & (\A[37]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[26]~input_o\,
	combout => \A_rev[26]~38_combout\);

-- Location: LCCOMB_X74_Y60_N12
\stage[2][24]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][24]~99_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[27]~37_combout\)) # (!\B[0]~input_o\ & ((\A_rev[26]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[27]~37_combout\,
	datad => \A_rev[26]~38_combout\,
	combout => \stage[2][24]~99_combout\);

-- Location: LCCOMB_X75_Y63_N26
\A_rev[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[24]~36_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[39]~input_o\)))) # (!\Equal2~0_combout\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[24]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[39]~input_o\,
	combout => \A_rev[24]~36_combout\);

-- Location: LCCOMB_X75_Y63_N16
\A_rev[25]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[25]~35_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[38]~input_o\)))) # (!\Equal2~0_combout\ & (((\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[38]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[25]~35_combout\);

-- Location: LCCOMB_X74_Y60_N18
\stage[2][24]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][24]~98_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[25]~35_combout\))) # (!\B[0]~input_o\ & (\A_rev[24]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[24]~36_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[25]~35_combout\,
	combout => \stage[2][24]~98_combout\);

-- Location: LCCOMB_X73_Y57_N8
\stage[2][24]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][24]~100_combout\ = (\stage[2][24]~99_combout\) # (\stage[2][24]~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage[2][24]~99_combout\,
	datad => \stage[2][24]~98_combout\,
	combout => \stage[2][24]~100_combout\);

-- Location: LCCOMB_X73_Y59_N20
\A_rev[30]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[30]~34_combout\ = (\Equal2~0_combout\ & (((\A[33]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[33]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[30]~34_combout\);

-- Location: LCCOMB_X73_Y59_N18
\stage[1][30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][30]~95_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[32]~input_o\))) # (!\Equal2~0_combout\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[32]~input_o\,
	datad => \A[31]~input_o\,
	combout => \stage[1][30]~95_combout\);

-- Location: LCCOMB_X72_Y56_N16
\stage[1][30]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][30]~96_combout\ = (\B[0]~input_o\ & ((\stage[1][30]~95_combout\))) # (!\B[0]~input_o\ & (\A_rev[30]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[30]~34_combout\,
	datac => \B[0]~input_o\,
	datad => \stage[1][30]~95_combout\,
	combout => \stage[1][30]~96_combout\);

-- Location: LCCOMB_X73_Y59_N16
\A_rev[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[29]~32_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[34]~input_o\))) # (!\Equal2~0_combout\ & (((\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[34]~input_o\,
	datad => \A[29]~input_o\,
	combout => \A_rev[29]~32_combout\);

-- Location: LCCOMB_X80_Y62_N26
\A_rev[28]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[28]~33_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[35]~input_o\)))) # (!\Equal2~0_combout\ & (((\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[35]~input_o\,
	combout => \A_rev[28]~33_combout\);

-- Location: LCCOMB_X74_Y60_N8
\stage[2][28]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][28]~94_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[29]~32_combout\)) # (!\B[0]~input_o\ & ((\A_rev[28]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[29]~32_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[28]~33_combout\,
	combout => \stage[2][28]~94_combout\);

-- Location: LCCOMB_X72_Y56_N26
\stage[2][28]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][28]~97_combout\ = (\stage[2][28]~94_combout\) # ((\stage[1][30]~96_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[1][30]~96_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[2][28]~94_combout\,
	combout => \stage[2][28]~97_combout\);

-- Location: LCCOMB_X73_Y57_N18
\stage[4][16]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][16]~101_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][28]~97_combout\))) # (!\B[2]~input_o\ & (\stage[2][24]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][24]~100_combout\,
	datad => \stage[2][28]~97_combout\,
	combout => \stage[4][16]~101_combout\);

-- Location: LCCOMB_X76_Y58_N8
\A_rev[23]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[23]~41_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[40]~input_o\)))) # (!\Equal2~0_combout\ & (((\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[23]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[40]~input_o\,
	combout => \A_rev[23]~41_combout\);

-- Location: LCCOMB_X74_Y54_N2
\A_rev[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[22]~42_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[41]~input_o\)))) # (!\Equal2~0_combout\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[41]~input_o\,
	combout => \A_rev[22]~42_combout\);

-- Location: LCCOMB_X74_Y60_N6
\stage[2][20]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][20]~102_combout\ = (\B[0]~input_o\ & (((\A_rev[23]~41_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A_rev[22]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[23]~41_combout\,
	datad => \A_rev[22]~42_combout\,
	combout => \stage[2][20]~102_combout\);

-- Location: LCCOMB_X77_Y59_N8
\A_rev[21]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[21]~39_combout\ = (\Equal2~0_combout\ & (\A[42]~input_o\ & ((!\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (((\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[42]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[21]~39_combout\);

-- Location: LCCOMB_X74_Y54_N24
\A_rev[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[20]~40_combout\ = (\Equal2~0_combout\ & (\A[43]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[20]~input_o\,
	combout => \A_rev[20]~40_combout\);

-- Location: LCCOMB_X74_Y57_N8
\stage[2][20]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][20]~103_combout\ = (\stage[2][20]~102_combout\ & ((\B[1]~input_o\) # ((\A_rev[21]~39_combout\)))) # (!\stage[2][20]~102_combout\ & (!\B[1]~input_o\ & ((\A_rev[20]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][20]~102_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[21]~39_combout\,
	datad => \A_rev[20]~40_combout\,
	combout => \stage[2][20]~103_combout\);

-- Location: LCCOMB_X75_Y63_N20
\A_rev[16]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[16]~44_combout\ = (\Equal2~0_combout\ & (((\A[47]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[47]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[16]~44_combout\);

-- Location: LCCOMB_X72_Y60_N24
\A_rev[17]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[17]~43_combout\ = (\Equal2~0_combout\ & (((\A[46]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[46]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[17]~43_combout\);

-- Location: LCCOMB_X73_Y54_N24
\A_rev[19]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[19]~45_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[44]~input_o\))) # (!\Equal2~0_combout\ & (((\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[44]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[19]~input_o\,
	combout => \A_rev[19]~45_combout\);

-- Location: LCCOMB_X72_Y60_N26
\A_rev[18]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[18]~46_combout\ = (\Equal2~0_combout\ & (\A[45]~input_o\ & ((!\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (((\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \A[18]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[18]~46_combout\);

-- Location: LCCOMB_X74_Y57_N18
\stage[2][16]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][16]~104_combout\ = (\B[0]~input_o\ & (((\A_rev[19]~45_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A_rev[18]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[19]~45_combout\,
	datad => \A_rev[18]~46_combout\,
	combout => \stage[2][16]~104_combout\);

-- Location: LCCOMB_X74_Y57_N4
\stage[2][16]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][16]~105_combout\ = (\B[1]~input_o\ & (((\stage[2][16]~104_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][16]~104_combout\ & ((\A_rev[17]~43_combout\))) # (!\stage[2][16]~104_combout\ & (\A_rev[16]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[16]~44_combout\,
	datab => \A_rev[17]~43_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[2][16]~104_combout\,
	combout => \stage[2][16]~105_combout\);

-- Location: LCCOMB_X73_Y57_N20
\stage[3][16]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][16]~106_combout\ = (\B[2]~input_o\ & (\stage[2][20]~103_combout\)) # (!\B[2]~input_o\ & ((\stage[2][16]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][20]~103_combout\,
	datad => \stage[2][16]~105_combout\,
	combout => \stage[3][16]~106_combout\);

-- Location: LCCOMB_X73_Y57_N22
\stage[4][16]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][16]~107_combout\ = (\stage[4][16]~101_combout\) # ((!\B[3]~input_o\ & \stage[3][16]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[4][16]~101_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[3][16]~106_combout\,
	combout => \stage[4][16]~107_combout\);

-- Location: LCCOMB_X70_Y58_N10
\stage[6][0]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~108_combout\ = (\B[4]~input_o\ & ((\shamt[5]~0_combout\ & (\stage[4][48]~93_combout\)) # (!\shamt[5]~0_combout\ & ((\stage[4][16]~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][48]~93_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[4][16]~107_combout\,
	combout => \stage[6][0]~108_combout\);

-- Location: LCCOMB_X70_Y58_N6
\stage[6][0]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~137_combout\ = (\stage[6][0]~108_combout\) # ((!\B[4]~input_o\ & ((\stage[6][0]~136_combout\) # (\stage[6][0]~473_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[6][0]~136_combout\,
	datac => \stage[6][0]~473_combout\,
	datad => \stage[6][0]~108_combout\,
	combout => \stage[6][0]~137_combout\);

-- Location: LCCOMB_X73_Y60_N2
\Y~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = (\Y~163_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][0]~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~163_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \stage[6][0]~137_combout\,
	combout => \Y~68_combout\);

-- Location: LCCOMB_X75_Y57_N12
\stage[2][9]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][9]~150_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A_rev[11]~86_combout\)) # (!\B[1]~input_o\ & ((\A_rev[9]~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[11]~86_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[9]~84_combout\,
	combout => \stage[2][9]~150_combout\);

-- Location: LCCOMB_X75_Y63_N22
\stage[2][13]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][13]~147_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[16]~44_combout\))) # (!\B[0]~input_o\ & (\A_rev[15]~90_combout\)))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[15]~90_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[16]~44_combout\,
	combout => \stage[2][13]~147_combout\);

-- Location: LCCOMB_X75_Y57_N0
\stage[2][13]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][13]~148_combout\ = (\B[1]~input_o\ & (\stage[2][13]~147_combout\)) # (!\B[1]~input_o\ & ((\stage[2][13]~147_combout\ & ((\A_rev[14]~91_combout\))) # (!\stage[2][13]~147_combout\ & (\A_rev[13]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[2][13]~147_combout\,
	datac => \A_rev[13]~88_combout\,
	datad => \A_rev[14]~91_combout\,
	combout => \stage[2][13]~148_combout\);

-- Location: LCCOMB_X75_Y57_N18
\stage[2][9]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][9]~149_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A_rev[12]~89_combout\))) # (!\B[1]~input_o\ & (\A_rev[10]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[10]~87_combout\,
	datac => \A_rev[12]~89_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][9]~149_combout\);

-- Location: LCCOMB_X74_Y57_N30
\stage[3][9]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][9]~151_combout\ = (\B[2]~input_o\ & (((\stage[2][13]~148_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][9]~150_combout\) # ((\stage[2][9]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][9]~150_combout\,
	datac => \stage[2][13]~148_combout\,
	datad => \stage[2][9]~149_combout\,
	combout => \stage[3][9]~151_combout\);

-- Location: LCCOMB_X76_Y56_N16
\stage[1][5]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][5]~144_combout\ = (\B[0]~input_o\ & ((\A_rev[6]~81_combout\))) # (!\B[0]~input_o\ & (\A_rev[5]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[5]~82_combout\,
	datac => \A_rev[6]~81_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[1][5]~144_combout\);

-- Location: LCCOMB_X76_Y56_N6
\stage[2][5]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][5]~143_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[8]~85_combout\)) # (!\B[0]~input_o\ & ((\A_rev[7]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[8]~85_combout\,
	datab => \A_rev[7]~80_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage[2][5]~143_combout\);

-- Location: LCCOMB_X76_Y56_N2
\stage[2][5]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][5]~145_combout\ = (\stage[2][5]~143_combout\) # ((\stage[1][5]~144_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[1][5]~144_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[2][5]~143_combout\,
	combout => \stage[2][5]~145_combout\);

-- Location: LCCOMB_X72_Y56_N30
\stage[6][1]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~140_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[2]~79_combout\)) # (!\B[0]~input_o\ & ((\A_rev[1]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[2]~79_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[1]~77_combout\,
	combout => \stage[6][1]~140_combout\);

-- Location: LCCOMB_X72_Y56_N8
\stage[1][3]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][3]~141_combout\ = (\B[0]~input_o\ & ((\A_rev[4]~83_combout\))) # (!\B[0]~input_o\ & (\A_rev[3]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[3]~78_combout\,
	datac => \A_rev[4]~83_combout\,
	combout => \stage[1][3]~141_combout\);

-- Location: LCCOMB_X72_Y56_N18
\stage[6][1]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~142_combout\ = (!\B[2]~input_o\ & ((\stage[6][1]~140_combout\) # ((\B[1]~input_o\ & \stage[1][3]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \stage[6][1]~140_combout\,
	datad => \stage[1][3]~141_combout\,
	combout => \stage[6][1]~142_combout\);

-- Location: LCCOMB_X72_Y56_N12
\stage[6][1]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~146_combout\ = (!\B[3]~input_o\ & ((\stage[6][1]~142_combout\) # ((\B[2]~input_o\ & \stage[2][5]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][5]~145_combout\,
	datad => \stage[6][1]~142_combout\,
	combout => \stage[6][1]~146_combout\);

-- Location: LCCOMB_X73_Y56_N8
\stage[6][1]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~152_combout\ = (!\B[4]~input_o\ & ((\stage[6][1]~146_combout\) # ((\B[3]~input_o\ & \stage[3][9]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[3][9]~151_combout\,
	datad => \stage[6][1]~146_combout\,
	combout => \stage[6][1]~152_combout\);

-- Location: LCCOMB_X73_Y59_N30
\stage[1][31]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][31]~154_combout\ = (\B[0]~input_o\ & (((\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\B[0]~input_o\ & (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[1][31]~154_combout\);

-- Location: LCCOMB_X73_Y59_N24
\stage[2][29]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][29]~155_combout\ = (\stage[1][31]~154_combout\ & (\A[32]~input_o\ & ((!\ExtWord~input_o\)))) # (!\stage[1][31]~154_combout\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][31]~154_combout\,
	datab => \A[32]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[2][29]~155_combout\);

-- Location: LCCOMB_X74_Y60_N24
\stage[2][29]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][29]~153_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[30]~34_combout\)) # (!\B[0]~input_o\ & ((\A_rev[29]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[30]~34_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[29]~32_combout\,
	combout => \stage[2][29]~153_combout\);

-- Location: LCCOMB_X73_Y60_N28
\stage[2][29]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][29]~156_combout\ = (\stage[2][29]~153_combout\) # ((\B[1]~input_o\ & \stage[2][29]~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[2][29]~155_combout\,
	datad => \stage[2][29]~153_combout\,
	combout => \stage[2][29]~156_combout\);

-- Location: LCCOMB_X74_Y60_N10
\stage[2][25]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][25]~157_combout\ = (\B[0]~input_o\ & (((\A_rev[28]~33_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A_rev[27]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[27]~37_combout\,
	datad => \A_rev[28]~33_combout\,
	combout => \stage[2][25]~157_combout\);

-- Location: LCCOMB_X74_Y60_N4
\stage[2][25]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][25]~158_combout\ = (\stage[2][25]~157_combout\ & (((\B[1]~input_o\) # (\A_rev[26]~38_combout\)))) # (!\stage[2][25]~157_combout\ & (\A_rev[25]~35_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][25]~157_combout\,
	datab => \A_rev[25]~35_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[26]~38_combout\,
	combout => \stage[2][25]~158_combout\);

-- Location: LCCOMB_X70_Y59_N8
\stage[4][17]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][17]~159_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][29]~156_combout\)) # (!\B[2]~input_o\ & ((\stage[2][25]~158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][29]~156_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][25]~158_combout\,
	combout => \stage[4][17]~159_combout\);

-- Location: LCCOMB_X74_Y57_N26
\stage[2][17]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][17]~162_combout\ = (\B[0]~input_o\ & (((\A_rev[20]~40_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A_rev[19]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[19]~45_combout\,
	datad => \A_rev[20]~40_combout\,
	combout => \stage[2][17]~162_combout\);

-- Location: LCCOMB_X74_Y57_N20
\stage[2][17]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][17]~163_combout\ = (\stage[2][17]~162_combout\ & (((\B[1]~input_o\) # (\A_rev[18]~46_combout\)))) # (!\stage[2][17]~162_combout\ & (\A_rev[17]~43_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][17]~162_combout\,
	datab => \A_rev[17]~43_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[18]~46_combout\,
	combout => \stage[2][17]~163_combout\);

-- Location: LCCOMB_X74_Y60_N22
\stage[2][21]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][21]~160_combout\ = (\B[0]~input_o\ & (((\A_rev[24]~36_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A_rev[23]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[23]~41_combout\,
	datad => \A_rev[24]~36_combout\,
	combout => \stage[2][21]~160_combout\);

-- Location: LCCOMB_X74_Y57_N24
\stage[2][21]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][21]~161_combout\ = (\B[1]~input_o\ & (((\stage[2][21]~160_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][21]~160_combout\ & (\A_rev[22]~42_combout\)) # (!\stage[2][21]~160_combout\ & ((\A_rev[21]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[22]~42_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[21]~39_combout\,
	datad => \stage[2][21]~160_combout\,
	combout => \stage[2][21]~161_combout\);

-- Location: LCCOMB_X73_Y56_N10
\stage[3][17]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][17]~164_combout\ = (\B[2]~input_o\ & ((\stage[2][21]~161_combout\))) # (!\B[2]~input_o\ & (\stage[2][17]~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][17]~163_combout\,
	datad => \stage[2][21]~161_combout\,
	combout => \stage[3][17]~164_combout\);

-- Location: LCCOMB_X73_Y56_N20
\stage[4][17]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][17]~165_combout\ = (\stage[4][17]~159_combout\) # ((!\B[3]~input_o\ & \stage[3][17]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][17]~159_combout\,
	datab => \B[3]~input_o\,
	datad => \stage[3][17]~164_combout\,
	combout => \stage[4][17]~165_combout\);

-- Location: LCCOMB_X73_Y56_N14
\stage[6][1]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~166_combout\ = (!\shamt[5]~0_combout\ & ((\stage[6][1]~152_combout\) # ((\B[4]~input_o\ & \stage[4][17]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[6][1]~152_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[4][17]~165_combout\,
	combout => \stage[6][1]~166_combout\);

-- Location: LCCOMB_X72_Y55_N22
\stage[2][53]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][53]~167_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[56]~27_combout\)) # (!\B[0]~input_o\ & ((\A_rev[55]~7_combout\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[56]~27_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[55]~7_combout\,
	combout => \stage[2][53]~167_combout\);

-- Location: LCCOMB_X72_Y55_N8
\stage[2][53]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][53]~168_combout\ = (\stage[2][53]~167_combout\ & ((\B[1]~input_o\) # ((\A_rev[54]~9_combout\)))) # (!\stage[2][53]~167_combout\ & (!\B[1]~input_o\ & ((\A_rev[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][53]~167_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[54]~9_combout\,
	datad => \A_rev[53]~3_combout\,
	combout => \stage[2][53]~168_combout\);

-- Location: LCCOMB_X69_Y55_N16
\stage[2][49]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][49]~170_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[52]~5_combout\)) # (!\B[0]~input_o\ & ((\A_rev[51]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[52]~5_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[51]~15_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][49]~170_combout\);

-- Location: LCCOMB_X69_Y55_N22
\stage[2][49]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][49]~169_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[50]~17_combout\)) # (!\B[0]~input_o\ & ((\A_rev[49]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[50]~17_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[49]~11_combout\,
	combout => \stage[2][49]~169_combout\);

-- Location: LCCOMB_X69_Y56_N24
\stage[2][49]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][49]~171_combout\ = (\stage[2][49]~170_combout\) # (\stage[2][49]~169_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage[2][49]~170_combout\,
	datad => \stage[2][49]~169_combout\,
	combout => \stage[2][49]~171_combout\);

-- Location: LCCOMB_X70_Y55_N14
\stage[4][49]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][49]~172_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][53]~168_combout\)) # (!\B[2]~input_o\ & ((\stage[2][49]~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][53]~168_combout\,
	datad => \stage[2][49]~171_combout\,
	combout => \stage[4][49]~172_combout\);

-- Location: LCCOMB_X70_Y57_N14
\stage[2][61]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][61]~173_combout\ = (\B[0]~input_o\ & (((\fill~1_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A_rev[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \fill~1_combout\,
	datad => \A_rev[63]~1_combout\,
	combout => \stage[2][61]~173_combout\);

-- Location: LCCOMB_X70_Y57_N8
\stage[2][61]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][61]~174_combout\ = (\stage[2][61]~173_combout\ & (((\B[1]~input_o\) # (\A_rev[62]~23_combout\)))) # (!\stage[2][61]~173_combout\ & (\A_rev[61]~19_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[61]~19_combout\,
	datab => \stage[2][61]~173_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[62]~23_combout\,
	combout => \stage[2][61]~174_combout\);

-- Location: LCCOMB_X72_Y55_N10
\stage[2][57]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][57]~175_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[60]~21_combout\))) # (!\B[0]~input_o\ & (\A_rev[59]~29_combout\)))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[59]~29_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[60]~21_combout\,
	combout => \stage[2][57]~175_combout\);

-- Location: LCCOMB_X72_Y55_N12
\stage[2][57]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][57]~176_combout\ = (\stage[2][57]~175_combout\ & ((\B[1]~input_o\) # ((\A_rev[58]~31_combout\)))) # (!\stage[2][57]~175_combout\ & (!\B[1]~input_o\ & (\A_rev[57]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][57]~175_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[57]~25_combout\,
	datad => \A_rev[58]~31_combout\,
	combout => \stage[2][57]~176_combout\);

-- Location: LCCOMB_X70_Y55_N16
\stage[3][57]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][57]~177_combout\ = (\B[2]~input_o\ & (\stage[2][61]~174_combout\)) # (!\B[2]~input_o\ & ((\stage[2][57]~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][61]~174_combout\,
	datac => \stage[2][57]~176_combout\,
	combout => \stage[3][57]~177_combout\);

-- Location: LCCOMB_X70_Y55_N18
\stage[4][49]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][49]~178_combout\ = (\stage[4][49]~172_combout\) # ((\B[3]~input_o\ & \stage[3][57]~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \stage[4][49]~172_combout\,
	datad => \stage[3][57]~177_combout\,
	combout => \stage[4][49]~178_combout\);

-- Location: LCCOMB_X74_Y59_N14
\stage[2][37]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][37]~181_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[40]~50_combout\))) # (!\B[0]~input_o\ & (\A_rev[39]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[39]~68_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[40]~50_combout\,
	combout => \stage[2][37]~181_combout\);

-- Location: LCCOMB_X74_Y59_N12
\stage[2][37]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][37]~180_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[38]~70_combout\)) # (!\B[0]~input_o\ & ((\A_rev[37]~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[38]~70_combout\,
	datac => \A_rev[37]~64_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][37]~180_combout\);

-- Location: LCCOMB_X70_Y59_N26
\stage[4][33]~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][33]~475_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & ((\stage[2][37]~181_combout\) # (\stage[2][37]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][37]~181_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][37]~180_combout\,
	combout => \stage[4][33]~475_combout\);

-- Location: LCCOMB_X69_Y59_N20
\stage[2][41]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][41]~184_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[42]~54_combout\))) # (!\B[0]~input_o\ & (\A_rev[41]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[41]~48_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[42]~54_combout\,
	combout => \stage[2][41]~184_combout\);

-- Location: LCCOMB_X69_Y59_N22
\stage[2][41]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][41]~185_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[44]~58_combout\)) # (!\B[0]~input_o\ & ((\A_rev[43]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[44]~58_combout\,
	datab => \A_rev[43]~52_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][41]~185_combout\);

-- Location: LCCOMB_X69_Y59_N8
\stage[2][41]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][41]~186_combout\ = (\stage[2][41]~184_combout\) # (\stage[2][41]~185_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[2][41]~184_combout\,
	datac => \stage[2][41]~185_combout\,
	combout => \stage[2][41]~186_combout\);

-- Location: LCCOMB_X69_Y59_N0
\stage[2][45]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][45]~182_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[48]~13_combout\)) # (!\B[0]~input_o\ & ((\A_rev[47]~60_combout\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[48]~13_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[47]~60_combout\,
	combout => \stage[2][45]~182_combout\);

-- Location: LCCOMB_X69_Y59_N2
\stage[2][45]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][45]~183_combout\ = (\B[1]~input_o\ & (((\stage[2][45]~182_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][45]~182_combout\ & (\A_rev[46]~62_combout\)) # (!\stage[2][45]~182_combout\ & ((\A_rev[45]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[46]~62_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[45]~56_combout\,
	datad => \stage[2][45]~182_combout\,
	combout => \stage[2][45]~183_combout\);

-- Location: LCCOMB_X70_Y59_N18
\stage[4][33]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][33]~187_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][45]~183_combout\))) # (!\B[2]~input_o\ & (\stage[2][41]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][41]~186_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][45]~183_combout\,
	combout => \stage[4][33]~187_combout\);

-- Location: LCCOMB_X74_Y59_N0
\stage[2][33]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][33]~189_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[36]~66_combout\))) # (!\B[0]~input_o\ & (\A_rev[35]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[35]~72_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[36]~66_combout\,
	combout => \stage[2][33]~189_combout\);

-- Location: LCCOMB_X73_Y59_N2
\stage[2][33]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][33]~188_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[34]~74_combout\)) # (!\B[0]~input_o\ & ((\A_rev[33]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[34]~74_combout\,
	datac => \A_rev[33]~76_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][33]~188_combout\);

-- Location: LCCOMB_X70_Y59_N12
\stage[2][33]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][33]~190_combout\ = (\stage[2][33]~189_combout\) # (\stage[2][33]~188_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][33]~189_combout\,
	datac => \stage[2][33]~188_combout\,
	combout => \stage[2][33]~190_combout\);

-- Location: LCCOMB_X70_Y59_N30
\stage[4][33]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][33]~191_combout\ = (\stage[4][33]~475_combout\) # ((\stage[4][33]~187_combout\) # ((\stage[4][24]~122_combout\ & \stage[2][33]~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][33]~475_combout\,
	datab => \stage[4][33]~187_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \stage[2][33]~190_combout\,
	combout => \stage[4][33]~191_combout\);

-- Location: LCCOMB_X73_Y56_N0
\stage[6][1]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~192_combout\ = (\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][49]~178_combout\)) # (!\B[4]~input_o\ & ((\stage[4][33]~191_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[4][49]~178_combout\,
	datac => \stage[4][33]~191_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[6][1]~192_combout\);

-- Location: LCCOMB_X70_Y55_N12
\stage[5][62]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][62]~138_combout\ = (\B[1]~input_o\) # ((\B[3]~input_o\) # ((\B[2]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \stage[5][62]~138_combout\);

-- Location: LCCOMB_X70_Y57_N20
\stage[6][62]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][62]~139_combout\ = (\stage[5][62]~138_combout\ & (((\fill~1_combout\)))) # (!\stage[5][62]~138_combout\ & ((\shamt[5]~0_combout\ & (\fill~1_combout\)) # (!\shamt[5]~0_combout\ & ((\stage[1][62]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][62]~138_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \fill~1_combout\,
	datad => \stage[1][62]~88_combout\,
	combout => \stage[6][62]~139_combout\);

-- Location: LCCOMB_X72_Y57_N4
\Y~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~164_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][62]~139_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \stage[6][62]~139_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~164_combout\);

-- Location: LCCOMB_X72_Y57_N20
\Y~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = (\Y~164_combout\) # ((\ShiftFN[1]~input_o\ & ((\stage[6][1]~166_combout\) # (\stage[6][1]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][1]~166_combout\,
	datab => \stage[6][1]~192_combout\,
	datac => \Y~164_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~69_combout\);

-- Location: LCCOMB_X69_Y54_N26
\stage[6][2]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~228_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[6][2]~228_combout\);

-- Location: LCCOMB_X74_Y57_N2
\stage[2][14]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][14]~232_combout\ = (\B[0]~input_o\ & (((\A_rev[17]~43_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A_rev[16]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[16]~44_combout\,
	datad => \A_rev[17]~43_combout\,
	combout => \stage[2][14]~232_combout\);

-- Location: LCCOMB_X75_Y57_N6
\stage[2][14]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][14]~233_combout\ = (\stage[2][14]~232_combout\ & ((\A_rev[15]~90_combout\) # ((\B[1]~input_o\)))) # (!\stage[2][14]~232_combout\ & (((!\B[1]~input_o\ & \A_rev[14]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][14]~232_combout\,
	datab => \A_rev[15]~90_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[14]~91_combout\,
	combout => \stage[2][14]~233_combout\);

-- Location: LCCOMB_X75_Y57_N26
\stage[2][10]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][10]~235_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[13]~88_combout\))) # (!\B[0]~input_o\ & (\A_rev[12]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[12]~89_combout\,
	datac => \A_rev[13]~88_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][10]~235_combout\);

-- Location: LCCOMB_X75_Y57_N8
\stage[2][10]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][10]~234_combout\ = (\B[0]~input_o\ & (\A_rev[11]~86_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[11]~86_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][10]~234_combout\);

-- Location: LCCOMB_X70_Y57_N12
\stage[2][6]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][6]~236_combout\ = (!\B[1]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \stage[2][6]~236_combout\);

-- Location: LCCOMB_X75_Y57_N4
\stage[2][10]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][10]~237_combout\ = (\stage[2][10]~235_combout\) # ((\stage[2][10]~234_combout\) # ((\A_rev[10]~87_combout\ & \stage[2][6]~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][10]~235_combout\,
	datab => \A_rev[10]~87_combout\,
	datac => \stage[2][10]~234_combout\,
	datad => \stage[2][6]~236_combout\,
	combout => \stage[2][10]~237_combout\);

-- Location: LCCOMB_X75_Y56_N6
\stage[3][10]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][10]~238_combout\ = (\B[2]~input_o\ & (\stage[2][14]~233_combout\)) # (!\B[2]~input_o\ & ((\stage[2][10]~237_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][14]~233_combout\,
	datac => \stage[2][10]~237_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][10]~238_combout\);

-- Location: LCCOMB_X76_Y56_N20
\stage[2][6]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][6]~229_combout\ = (\B[0]~input_o\ & ((\A_rev[9]~84_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A_rev[8]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[9]~84_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[8]~85_combout\,
	combout => \stage[2][6]~229_combout\);

-- Location: LCCOMB_X76_Y56_N22
\stage[2][6]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][6]~230_combout\ = (\stage[2][6]~229_combout\ & (((\B[1]~input_o\) # (\A_rev[7]~80_combout\)))) # (!\stage[2][6]~229_combout\ & (\A_rev[6]~81_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[6]~81_combout\,
	datab => \stage[2][6]~229_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[7]~80_combout\,
	combout => \stage[2][6]~230_combout\);

-- Location: LCCOMB_X76_Y56_N8
\stage[6][2]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~231_combout\ = (\stage[4][24]~122_combout\ & (\stage[1][2]~125_combout\ & ((!\stage[6][2]~228_combout\)))) # (!\stage[4][24]~122_combout\ & (((\stage[2][6]~230_combout\) # (\stage[6][2]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][24]~122_combout\,
	datab => \stage[1][2]~125_combout\,
	datac => \stage[2][6]~230_combout\,
	datad => \stage[6][2]~228_combout\,
	combout => \stage[6][2]~231_combout\);

-- Location: LCCOMB_X76_Y56_N26
\stage[6][2]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~239_combout\ = (\stage[6][2]~228_combout\ & ((\stage[6][2]~231_combout\ & (\stage[3][10]~238_combout\)) # (!\stage[6][2]~231_combout\ & ((\stage[1][4]~128_combout\))))) # (!\stage[6][2]~228_combout\ & (((\stage[6][2]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][2]~228_combout\,
	datab => \stage[3][10]~238_combout\,
	datac => \stage[6][2]~231_combout\,
	datad => \stage[1][4]~128_combout\,
	combout => \stage[6][2]~239_combout\);

-- Location: LCCOMB_X69_Y55_N14
\stage[2][46]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][46]~221_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[49]~11_combout\))) # (!\B[0]~input_o\ & (\A_rev[48]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[48]~13_combout\,
	datad => \A_rev[49]~11_combout\,
	combout => \stage[2][46]~221_combout\);

-- Location: LCCOMB_X69_Y59_N26
\stage[2][46]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][46]~220_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[47]~60_combout\))) # (!\B[0]~input_o\ & (\A_rev[46]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[46]~62_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[47]~60_combout\,
	combout => \stage[2][46]~220_combout\);

-- Location: LCCOMB_X69_Y56_N6
\stage[2][46]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][46]~222_combout\ = (\stage[2][46]~221_combout\) # (\stage[2][46]~220_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][46]~221_combout\,
	datad => \stage[2][46]~220_combout\,
	combout => \stage[2][46]~222_combout\);

-- Location: LCCOMB_X69_Y59_N28
\stage[2][42]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][42]~223_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[43]~52_combout\)) # (!\B[0]~input_o\ & ((\A_rev[42]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[43]~52_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[42]~54_combout\,
	combout => \stage[2][42]~223_combout\);

-- Location: LCCOMB_X69_Y59_N6
\stage[2][42]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][42]~224_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[45]~56_combout\))) # (!\B[0]~input_o\ & (\A_rev[44]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[44]~58_combout\,
	datab => \B[0]~input_o\,
	datac => \A_rev[45]~56_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][42]~224_combout\);

-- Location: LCCOMB_X69_Y56_N16
\stage[2][42]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][42]~225_combout\ = (\stage[2][42]~223_combout\) # (\stage[2][42]~224_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage[2][42]~223_combout\,
	datad => \stage[2][42]~224_combout\,
	combout => \stage[2][42]~225_combout\);

-- Location: LCCOMB_X69_Y56_N2
\stage[4][34]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][34]~226_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][46]~222_combout\)) # (!\B[2]~input_o\ & ((\stage[2][42]~225_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][46]~222_combout\,
	datab => \stage[2][42]~225_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[4][34]~226_combout\);

-- Location: LCCOMB_X74_Y59_N22
\stage[2][34]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][34]~217_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[37]~64_combout\)) # (!\B[0]~input_o\ & ((\A_rev[36]~66_combout\))))) # (!\B[1]~input_o\ & (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A_rev[37]~64_combout\,
	datad => \A_rev[36]~66_combout\,
	combout => \stage[2][34]~217_combout\);

-- Location: LCCOMB_X73_Y59_N4
\stage[2][34]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][34]~218_combout\ = (\B[1]~input_o\ & (\stage[2][34]~217_combout\)) # (!\B[1]~input_o\ & ((\stage[2][34]~217_combout\ & ((\A_rev[35]~72_combout\))) # (!\stage[2][34]~217_combout\ & (\A_rev[34]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[2][34]~217_combout\,
	datac => \A_rev[34]~74_combout\,
	datad => \A_rev[35]~72_combout\,
	combout => \stage[2][34]~218_combout\);

-- Location: LCCOMB_X73_Y58_N24
\stage[6][7]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~179_combout\ = (!\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[6][7]~179_combout\);

-- Location: LCCOMB_X74_Y59_N2
\stage[2][38]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][38]~215_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[41]~48_combout\)) # (!\B[0]~input_o\ & ((\A_rev[40]~50_combout\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[41]~48_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[40]~50_combout\,
	combout => \stage[2][38]~215_combout\);

-- Location: LCCOMB_X74_Y59_N20
\stage[2][38]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][38]~216_combout\ = (\B[1]~input_o\ & (\stage[2][38]~215_combout\)) # (!\B[1]~input_o\ & ((\stage[2][38]~215_combout\ & ((\A_rev[39]~68_combout\))) # (!\stage[2][38]~215_combout\ & (\A_rev[38]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[2][38]~215_combout\,
	datac => \A_rev[38]~70_combout\,
	datad => \A_rev[39]~68_combout\,
	combout => \stage[2][38]~216_combout\);

-- Location: LCCOMB_X69_Y56_N12
\stage[4][34]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][34]~219_combout\ = (\stage[2][34]~218_combout\ & ((\stage[4][24]~122_combout\) # ((\stage[6][7]~179_combout\ & \stage[2][38]~216_combout\)))) # (!\stage[2][34]~218_combout\ & (((\stage[6][7]~179_combout\ & \stage[2][38]~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][34]~218_combout\,
	datab => \stage[4][24]~122_combout\,
	datac => \stage[6][7]~179_combout\,
	datad => \stage[2][38]~216_combout\,
	combout => \stage[4][34]~219_combout\);

-- Location: LCCOMB_X70_Y56_N22
\stage[4][34]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][34]~227_combout\ = (\stage[4][34]~226_combout\) # (\stage[4][34]~219_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][34]~226_combout\,
	datac => \stage[4][34]~219_combout\,
	combout => \stage[4][34]~227_combout\);

-- Location: LCCOMB_X70_Y56_N0
\stage[6][2]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~240_combout\ = (!\B[4]~input_o\ & ((\shamt[5]~0_combout\ & ((\stage[4][34]~227_combout\))) # (!\shamt[5]~0_combout\ & (\stage[6][2]~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[6][2]~239_combout\,
	datac => \stage[4][34]~227_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][2]~240_combout\);

-- Location: LCCOMB_X70_Y57_N2
\stage[2][58]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][58]~199_combout\ = (\B[0]~input_o\ & (((\A_rev[61]~19_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A_rev[60]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[60]~21_combout\,
	datad => \A_rev[61]~19_combout\,
	combout => \stage[2][58]~199_combout\);

-- Location: LCCOMB_X69_Y54_N6
\stage[2][58]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][58]~200_combout\ = (\stage[2][58]~199_combout\ & ((\A_rev[59]~29_combout\) # ((\B[1]~input_o\)))) # (!\stage[2][58]~199_combout\ & (((\A_rev[58]~31_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][58]~199_combout\,
	datab => \A_rev[59]~29_combout\,
	datac => \A_rev[58]~31_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][58]~200_combout\);

-- Location: LCCOMB_X69_Y54_N24
\stage[3][58]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][58]~201_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\stage[1][62]~88_combout\))) # (!\B[2]~input_o\ & (((\stage[2][58]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[1][62]~88_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[2][58]~200_combout\,
	combout => \stage[3][58]~201_combout\);

-- Location: LCCOMB_X70_Y55_N20
\stage[3][58]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][58]~202_combout\ = (\stage[3][58]~201_combout\) # ((\B[2]~input_o\ & (\B[1]~input_o\ & \fill~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[3][58]~201_combout\,
	datac => \B[1]~input_o\,
	datad => \fill~1_combout\,
	combout => \stage[3][58]~202_combout\);

-- Location: LCCOMB_X69_Y55_N18
\stage[2][50]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][50]~196_combout\ = (\B[0]~input_o\ & (((\A_rev[53]~3_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A_rev[52]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[52]~5_combout\,
	datad => \A_rev[53]~3_combout\,
	combout => \stage[2][50]~196_combout\);

-- Location: LCCOMB_X69_Y55_N20
\stage[2][50]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][50]~197_combout\ = (\stage[2][50]~196_combout\ & (((\A_rev[51]~15_combout\) # (\B[1]~input_o\)))) # (!\stage[2][50]~196_combout\ & (\A_rev[50]~17_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[50]~17_combout\,
	datab => \stage[2][50]~196_combout\,
	datac => \A_rev[51]~15_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][50]~197_combout\);

-- Location: LCCOMB_X72_Y55_N6
\stage[2][54]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][54]~194_combout\ = (\B[0]~input_o\ & (((\A_rev[57]~25_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A_rev[56]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[57]~25_combout\,
	datad => \A_rev[56]~27_combout\,
	combout => \stage[2][54]~194_combout\);

-- Location: LCCOMB_X72_Y55_N24
\stage[2][54]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][54]~195_combout\ = (\stage[2][54]~194_combout\ & ((\B[1]~input_o\) # ((\A_rev[55]~7_combout\)))) # (!\stage[2][54]~194_combout\ & (!\B[1]~input_o\ & (\A_rev[54]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][54]~194_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[54]~9_combout\,
	datad => \A_rev[55]~7_combout\,
	combout => \stage[2][54]~195_combout\);

-- Location: LCCOMB_X69_Y56_N26
\stage[4][50]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][50]~198_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][54]~195_combout\))) # (!\B[2]~input_o\ & (\stage[2][50]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][50]~197_combout\,
	datad => \stage[2][54]~195_combout\,
	combout => \stage[4][50]~198_combout\);

-- Location: LCCOMB_X70_Y56_N18
\stage[4][50]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][50]~203_combout\ = (\stage[4][50]~198_combout\) # ((\stage[3][58]~202_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][58]~202_combout\,
	datab => \B[3]~input_o\,
	datac => \stage[4][50]~198_combout\,
	combout => \stage[4][50]~203_combout\);

-- Location: LCCOMB_X74_Y57_N22
\stage[2][18]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][18]~210_combout\ = (\B[0]~input_o\ & (((\A_rev[21]~39_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A_rev[20]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[21]~39_combout\,
	datad => \A_rev[20]~40_combout\,
	combout => \stage[2][18]~210_combout\);

-- Location: LCCOMB_X74_Y57_N16
\stage[2][18]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][18]~211_combout\ = (\stage[2][18]~210_combout\ & (((\A_rev[19]~45_combout\) # (\B[1]~input_o\)))) # (!\stage[2][18]~210_combout\ & (\A_rev[18]~46_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][18]~210_combout\,
	datab => \A_rev[18]~46_combout\,
	datac => \A_rev[19]~45_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][18]~211_combout\);

-- Location: LCCOMB_X74_Y60_N28
\stage[2][22]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][22]~208_combout\ = (\B[0]~input_o\ & (((\A_rev[25]~35_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\A_rev[24]~36_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[24]~36_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[25]~35_combout\,
	combout => \stage[2][22]~208_combout\);

-- Location: LCCOMB_X74_Y60_N14
\stage[2][22]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][22]~209_combout\ = (\B[1]~input_o\ & (((\stage[2][22]~208_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][22]~208_combout\ & ((\A_rev[23]~41_combout\))) # (!\stage[2][22]~208_combout\ & (\A_rev[22]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[22]~42_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[23]~41_combout\,
	datad => \stage[2][22]~208_combout\,
	combout => \stage[2][22]~209_combout\);

-- Location: LCCOMB_X75_Y56_N10
\stage[3][18]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][18]~212_combout\ = (\B[2]~input_o\ & ((\stage[2][22]~209_combout\))) # (!\B[2]~input_o\ & (\stage[2][18]~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \stage[2][18]~211_combout\,
	datad => \stage[2][22]~209_combout\,
	combout => \stage[3][18]~212_combout\);

-- Location: LCCOMB_X72_Y56_N6
\stage[3][26]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][26]~204_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\stage[1][32]~120_combout\)) # (!\B[1]~input_o\ & ((\stage[1][30]~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \stage[1][32]~120_combout\,
	datad => \stage[1][30]~96_combout\,
	combout => \stage[3][26]~204_combout\);

-- Location: LCCOMB_X74_Y60_N16
\stage[2][26]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][26]~205_combout\ = (\B[0]~input_o\ & ((\A_rev[29]~32_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A_rev[28]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[29]~32_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[28]~33_combout\,
	combout => \stage[2][26]~205_combout\);

-- Location: LCCOMB_X74_Y60_N2
\stage[2][26]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][26]~206_combout\ = (\stage[2][26]~205_combout\ & ((\A_rev[27]~37_combout\) # ((\B[1]~input_o\)))) # (!\stage[2][26]~205_combout\ & (((!\B[1]~input_o\ & \A_rev[26]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[27]~37_combout\,
	datab => \stage[2][26]~205_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[26]~38_combout\,
	combout => \stage[2][26]~206_combout\);

-- Location: LCCOMB_X75_Y56_N8
\stage[3][26]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][26]~207_combout\ = (\stage[3][26]~204_combout\) # ((!\B[2]~input_o\ & \stage[2][26]~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \stage[3][26]~204_combout\,
	datad => \stage[2][26]~206_combout\,
	combout => \stage[3][26]~207_combout\);

-- Location: LCCOMB_X75_Y56_N4
\stage[4][18]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][18]~213_combout\ = (\B[3]~input_o\ & ((\stage[3][26]~207_combout\))) # (!\B[3]~input_o\ & (\stage[3][18]~212_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][18]~212_combout\,
	datab => \B[3]~input_o\,
	datac => \stage[3][26]~207_combout\,
	combout => \stage[4][18]~213_combout\);

-- Location: LCCOMB_X70_Y56_N20
\stage[6][2]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~214_combout\ = (\B[4]~input_o\ & ((\shamt[5]~0_combout\ & (\stage[4][50]~203_combout\)) # (!\shamt[5]~0_combout\ & ((\stage[4][18]~213_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[4][50]~203_combout\,
	datac => \B[4]~input_o\,
	datad => \stage[4][18]~213_combout\,
	combout => \stage[6][2]~214_combout\);

-- Location: LCCOMB_X72_Y59_N16
\stage[6][61]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][61]~193_combout\ = (\stage[4][24]~122_combout\ & ((\stage[6][63]~78_combout\ & ((\stage[2][61]~174_combout\))) # (!\stage[6][63]~78_combout\ & (\fill~1_combout\)))) # (!\stage[4][24]~122_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[2][61]~174_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][61]~193_combout\);

-- Location: LCCOMB_X72_Y57_N14
\Y~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~165_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][61]~193_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \stage[6][61]~193_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~165_combout\);

-- Location: LCCOMB_X72_Y57_N22
\Y~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = (\Y~165_combout\) # ((\ShiftFN[1]~input_o\ & ((\stage[6][2]~240_combout\) # (\stage[6][2]~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][2]~240_combout\,
	datab => \stage[6][2]~214_combout\,
	datac => \Y~165_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~70_combout\);

-- Location: LCCOMB_X73_Y57_N2
\stage[6][60]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][60]~241_combout\ = (\stage[4][24]~122_combout\ & ((\stage[6][63]~78_combout\ & (\stage[2][60]~89_combout\)) # (!\stage[6][63]~78_combout\ & ((\fill~1_combout\))))) # (!\stage[4][24]~122_combout\ & (((\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][60]~89_combout\,
	datab => \stage[4][24]~122_combout\,
	datac => \stage[6][63]~78_combout\,
	datad => \fill~1_combout\,
	combout => \stage[6][60]~241_combout\);

-- Location: LCCOMB_X72_Y54_N10
\Y~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~166_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][60]~241_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][60]~241_combout\,
	datab => \A[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~166_combout\);

-- Location: LCCOMB_X74_Y57_N0
\stage[2][15]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][15]~278_combout\ = (\B[0]~input_o\ & ((\A_rev[18]~46_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A_rev[17]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[18]~46_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[17]~43_combout\,
	combout => \stage[2][15]~278_combout\);

-- Location: LCCOMB_X74_Y57_N10
\stage[2][15]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][15]~279_combout\ = (\B[1]~input_o\ & (((\stage[2][15]~278_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][15]~278_combout\ & ((\A_rev[16]~44_combout\))) # (!\stage[2][15]~278_combout\ & (\A_rev[15]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[15]~90_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[16]~44_combout\,
	datad => \stage[2][15]~278_combout\,
	combout => \stage[2][15]~279_combout\);

-- Location: LCCOMB_X75_Y57_N16
\stage[2][11]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~280_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A_rev[14]~91_combout\)) # (!\B[1]~input_o\ & ((\A_rev[12]~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[14]~91_combout\,
	datac => \A_rev[12]~89_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][11]~280_combout\);

-- Location: LCCOMB_X75_Y57_N2
\stage[2][11]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~281_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A_rev[13]~88_combout\))) # (!\B[1]~input_o\ & (\A_rev[11]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[11]~86_combout\,
	datac => \A_rev[13]~88_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][11]~281_combout\);

-- Location: LCCOMB_X74_Y57_N28
\stage[3][11]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][11]~282_combout\ = (\B[2]~input_o\ & (\stage[2][15]~279_combout\)) # (!\B[2]~input_o\ & (((\stage[2][11]~280_combout\) # (\stage[2][11]~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][15]~279_combout\,
	datab => \stage[2][11]~280_combout\,
	datac => \stage[2][11]~281_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][11]~282_combout\);

-- Location: LCCOMB_X75_Y57_N30
\stage[2][7]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][7]~275_combout\ = (\B[0]~input_o\ & ((\A_rev[10]~87_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A_rev[9]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[10]~87_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[9]~84_combout\,
	combout => \stage[2][7]~275_combout\);

-- Location: LCCOMB_X76_Y56_N28
\stage[2][7]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][7]~276_combout\ = (\stage[2][7]~275_combout\ & (((\B[1]~input_o\) # (\A_rev[8]~85_combout\)))) # (!\stage[2][7]~275_combout\ & (\A_rev[7]~80_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][7]~275_combout\,
	datab => \A_rev[7]~80_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[8]~85_combout\,
	combout => \stage[2][7]~276_combout\);

-- Location: LCCOMB_X76_Y56_N30
\stage[6][3]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~277_combout\ = (\stage[6][2]~228_combout\ & (((!\stage[4][24]~122_combout\)))) # (!\stage[6][2]~228_combout\ & ((\stage[4][24]~122_combout\ & (\stage[1][3]~141_combout\)) # (!\stage[4][24]~122_combout\ & ((\stage[2][7]~276_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][2]~228_combout\,
	datab => \stage[1][3]~141_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \stage[2][7]~276_combout\,
	combout => \stage[6][3]~277_combout\);

-- Location: LCCOMB_X76_Y56_N0
\stage[6][3]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~283_combout\ = (\stage[6][2]~228_combout\ & ((\stage[6][3]~277_combout\ & (\stage[3][11]~282_combout\)) # (!\stage[6][3]~277_combout\ & ((\stage[1][5]~144_combout\))))) # (!\stage[6][2]~228_combout\ & (((\stage[6][3]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][2]~228_combout\,
	datab => \stage[3][11]~282_combout\,
	datac => \stage[6][3]~277_combout\,
	datad => \stage[1][5]~144_combout\,
	combout => \stage[6][3]~283_combout\);

-- Location: LCCOMB_X73_Y59_N22
\stage[2][31]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][31]~264_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[34]~74_combout\)) # (!\B[0]~input_o\ & ((\A_rev[33]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[34]~74_combout\,
	datac => \A_rev[33]~76_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][31]~264_combout\);

-- Location: LCCOMB_X73_Y61_N16
\stage[2][31]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][31]~265_combout\ = (\stage[2][31]~264_combout\) # ((!\B[1]~input_o\ & \stage[2][29]~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \stage[2][31]~264_combout\,
	datad => \stage[2][29]~155_combout\,
	combout => \stage[2][31]~265_combout\);

-- Location: LCCOMB_X74_Y60_N0
\stage[2][27]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][27]~266_combout\ = (\B[0]~input_o\ & ((\A_rev[30]~34_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A_rev[29]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[30]~34_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[29]~32_combout\,
	combout => \stage[2][27]~266_combout\);

-- Location: LCCOMB_X74_Y60_N26
\stage[2][27]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][27]~267_combout\ = (\stage[2][27]~266_combout\ & (((\B[1]~input_o\) # (\A_rev[28]~33_combout\)))) # (!\stage[2][27]~266_combout\ & (\A_rev[27]~37_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[27]~37_combout\,
	datab => \stage[2][27]~266_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[28]~33_combout\,
	combout => \stage[2][27]~267_combout\);

-- Location: LCCOMB_X73_Y58_N6
\stage[4][19]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][19]~268_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][31]~265_combout\)) # (!\B[2]~input_o\ & ((\stage[2][27]~267_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][31]~265_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][27]~267_combout\,
	combout => \stage[4][19]~268_combout\);

-- Location: LCCOMB_X74_Y57_N12
\stage[2][19]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][19]~271_combout\ = (\B[0]~input_o\ & (((\A_rev[22]~42_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A_rev[21]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[21]~39_combout\,
	datad => \A_rev[22]~42_combout\,
	combout => \stage[2][19]~271_combout\);

-- Location: LCCOMB_X74_Y57_N6
\stage[2][19]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][19]~272_combout\ = (\B[1]~input_o\ & (((\stage[2][19]~271_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][19]~271_combout\ & ((\A_rev[20]~40_combout\))) # (!\stage[2][19]~271_combout\ & (\A_rev[19]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[19]~45_combout\,
	datab => \A_rev[20]~40_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[2][19]~271_combout\,
	combout => \stage[2][19]~272_combout\);

-- Location: LCCOMB_X74_Y60_N20
\stage[2][23]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][23]~269_combout\ = (\B[0]~input_o\ & (((\A_rev[26]~38_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\A_rev[25]~35_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[25]~35_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[26]~38_combout\,
	combout => \stage[2][23]~269_combout\);

-- Location: LCCOMB_X74_Y60_N30
\stage[2][23]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][23]~270_combout\ = (\B[1]~input_o\ & (\stage[2][23]~269_combout\)) # (!\B[1]~input_o\ & ((\stage[2][23]~269_combout\ & ((\A_rev[24]~36_combout\))) # (!\stage[2][23]~269_combout\ & (\A_rev[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[2][23]~269_combout\,
	datac => \A_rev[23]~41_combout\,
	datad => \A_rev[24]~36_combout\,
	combout => \stage[2][23]~270_combout\);

-- Location: LCCOMB_X73_Y56_N26
\stage[3][19]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][19]~273_combout\ = (\B[2]~input_o\ & ((\stage[2][23]~270_combout\))) # (!\B[2]~input_o\ & (\stage[2][19]~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][19]~272_combout\,
	datac => \stage[2][23]~270_combout\,
	combout => \stage[3][19]~273_combout\);

-- Location: LCCOMB_X73_Y56_N28
\stage[4][19]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][19]~274_combout\ = (\stage[4][19]~268_combout\) # ((!\B[3]~input_o\ & \stage[3][19]~273_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][19]~268_combout\,
	datab => \B[3]~input_o\,
	datac => \stage[3][19]~273_combout\,
	combout => \stage[4][19]~274_combout\);

-- Location: LCCOMB_X72_Y54_N28
\stage[6][3]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~284_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\stage[4][19]~274_combout\))) # (!\B[4]~input_o\ & (\stage[6][3]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[6][3]~283_combout\,
	datac => \B[4]~input_o\,
	datad => \stage[4][19]~274_combout\,
	combout => \stage[6][3]~284_combout\);

-- Location: LCCOMB_X69_Y55_N2
\stage[2][47]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][47]~255_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[50]~17_combout\)) # (!\B[0]~input_o\ & ((\A_rev[49]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[50]~17_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[49]~11_combout\,
	combout => \stage[2][47]~255_combout\);

-- Location: LCCOMB_X69_Y59_N16
\stage[2][47]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][47]~254_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[48]~13_combout\)) # (!\B[0]~input_o\ & ((\A_rev[47]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[48]~13_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[47]~60_combout\,
	combout => \stage[2][47]~254_combout\);

-- Location: LCCOMB_X73_Y55_N10
\stage[2][47]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][47]~256_combout\ = (\stage[2][47]~255_combout\) # (\stage[2][47]~254_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][47]~255_combout\,
	datad => \stage[2][47]~254_combout\,
	combout => \stage[2][47]~256_combout\);

-- Location: LCCOMB_X69_Y59_N10
\stage[2][43]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][43]~257_combout\ = (\B[0]~input_o\ & ((\A_rev[46]~62_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\A_rev[45]~56_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[46]~62_combout\,
	datab => \B[0]~input_o\,
	datac => \A_rev[45]~56_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][43]~257_combout\);

-- Location: LCCOMB_X69_Y59_N12
\stage[2][43]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][43]~258_combout\ = (\stage[2][43]~257_combout\ & ((\B[1]~input_o\) # ((\A_rev[44]~58_combout\)))) # (!\stage[2][43]~257_combout\ & (!\B[1]~input_o\ & (\A_rev[43]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][43]~257_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[43]~52_combout\,
	datad => \A_rev[44]~58_combout\,
	combout => \stage[2][43]~258_combout\);

-- Location: LCCOMB_X73_Y58_N10
\stage[4][35]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][35]~259_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][47]~256_combout\)) # (!\B[2]~input_o\ & ((\stage[2][43]~258_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][47]~256_combout\,
	datad => \stage[2][43]~258_combout\,
	combout => \stage[4][35]~259_combout\);

-- Location: LCCOMB_X74_Y59_N26
\stage[2][35]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][35]~253_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[38]~70_combout\)) # (!\B[0]~input_o\ & ((\A_rev[37]~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[38]~70_combout\,
	datac => \A_rev[37]~64_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][35]~253_combout\);

-- Location: LCCOMB_X74_Y59_N8
\stage[2][35]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][35]~252_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[36]~66_combout\))) # (!\B[0]~input_o\ & (\A_rev[35]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[35]~72_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[36]~66_combout\,
	combout => \stage[2][35]~252_combout\);

-- Location: LCCOMB_X73_Y58_N4
\stage[4][35]~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][35]~476_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\stage[2][35]~253_combout\) # (\stage[2][35]~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][35]~253_combout\,
	datad => \stage[2][35]~252_combout\,
	combout => \stage[4][35]~476_combout\);

-- Location: LCCOMB_X74_Y59_N28
\stage[2][39]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][39]~260_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[42]~54_combout\))) # (!\B[0]~input_o\ & (\A_rev[41]~48_combout\)))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[41]~48_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[42]~54_combout\,
	combout => \stage[2][39]~260_combout\);

-- Location: LCCOMB_X74_Y59_N30
\stage[2][39]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][39]~261_combout\ = (\stage[2][39]~260_combout\ & ((\A_rev[40]~50_combout\) # ((\B[1]~input_o\)))) # (!\stage[2][39]~260_combout\ & (((!\B[1]~input_o\ & \A_rev[39]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[40]~50_combout\,
	datab => \stage[2][39]~260_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[39]~68_combout\,
	combout => \stage[2][39]~261_combout\);

-- Location: LCCOMB_X73_Y58_N28
\stage[4][35]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][35]~262_combout\ = (\stage[4][35]~259_combout\) # ((\stage[4][35]~476_combout\) # ((\stage[2][39]~261_combout\ & \stage[6][7]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][35]~259_combout\,
	datab => \stage[4][35]~476_combout\,
	datac => \stage[2][39]~261_combout\,
	datad => \stage[6][7]~179_combout\,
	combout => \stage[4][35]~262_combout\);

-- Location: LCCOMB_X70_Y57_N22
\stage[3][59]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][59]~247_combout\ = (\B[2]~input_o\ & ((\stage[2][6]~236_combout\ & ((\A_rev[63]~1_combout\))) # (!\stage[2][6]~236_combout\ & (\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][6]~236_combout\,
	datab => \fill~1_combout\,
	datac => \B[2]~input_o\,
	datad => \A_rev[63]~1_combout\,
	combout => \stage[3][59]~247_combout\);

-- Location: LCCOMB_X70_Y57_N16
\stage[2][59]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][59]~248_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[60]~21_combout\)) # (!\B[0]~input_o\ & ((\A_rev[59]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[60]~21_combout\,
	datad => \A_rev[59]~29_combout\,
	combout => \stage[2][59]~248_combout\);

-- Location: LCCOMB_X70_Y57_N10
\stage[2][59]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][59]~249_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[62]~23_combout\))) # (!\B[0]~input_o\ & (\A_rev[61]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[61]~19_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[62]~23_combout\,
	combout => \stage[2][59]~249_combout\);

-- Location: LCCOMB_X70_Y57_N28
\stage[3][59]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][59]~250_combout\ = (\stage[3][59]~247_combout\) # ((!\B[2]~input_o\ & ((\stage[2][59]~248_combout\) # (\stage[2][59]~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][59]~247_combout\,
	datab => \stage[2][59]~248_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[2][59]~249_combout\,
	combout => \stage[3][59]~250_combout\);

-- Location: LCCOMB_X72_Y55_N30
\stage[2][51]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][51]~244_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[54]~9_combout\)) # (!\B[0]~input_o\ & ((\A_rev[53]~3_combout\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[54]~9_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[53]~3_combout\,
	combout => \stage[2][51]~244_combout\);

-- Location: LCCOMB_X69_Y55_N24
\stage[2][51]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][51]~245_combout\ = (\stage[2][51]~244_combout\ & (((\A_rev[52]~5_combout\) # (\B[1]~input_o\)))) # (!\stage[2][51]~244_combout\ & (\A_rev[51]~15_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[51]~15_combout\,
	datab => \stage[2][51]~244_combout\,
	datac => \A_rev[52]~5_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][51]~245_combout\);

-- Location: LCCOMB_X72_Y55_N2
\stage[2][55]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][55]~242_combout\ = (\B[0]~input_o\ & (((\A_rev[58]~31_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A_rev[57]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[57]~25_combout\,
	datad => \A_rev[58]~31_combout\,
	combout => \stage[2][55]~242_combout\);

-- Location: LCCOMB_X72_Y55_N28
\stage[2][55]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][55]~243_combout\ = (\B[1]~input_o\ & (((\stage[2][55]~242_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][55]~242_combout\ & (\A_rev[56]~27_combout\)) # (!\stage[2][55]~242_combout\ & ((\A_rev[55]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[56]~27_combout\,
	datab => \B[1]~input_o\,
	datac => \stage[2][55]~242_combout\,
	datad => \A_rev[55]~7_combout\,
	combout => \stage[2][55]~243_combout\);

-- Location: LCCOMB_X73_Y55_N8
\stage[4][51]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][51]~246_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][55]~243_combout\))) # (!\B[2]~input_o\ & (\stage[2][51]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][51]~245_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][55]~243_combout\,
	combout => \stage[4][51]~246_combout\);

-- Location: LCCOMB_X73_Y54_N6
\stage[4][51]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][51]~251_combout\ = (\stage[4][51]~246_combout\) # ((\stage[3][59]~250_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[3][59]~250_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[4][51]~246_combout\,
	combout => \stage[4][51]~251_combout\);

-- Location: LCCOMB_X73_Y54_N8
\stage[6][3]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~263_combout\ = (\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\stage[4][51]~251_combout\))) # (!\B[4]~input_o\ & (\stage[4][35]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][35]~262_combout\,
	datad => \stage[4][51]~251_combout\,
	combout => \stage[6][3]~263_combout\);

-- Location: LCCOMB_X72_Y54_N30
\Y~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = (\Y~166_combout\) # ((\ShiftFN[1]~input_o\ & ((\stage[6][3]~284_combout\) # (\stage[6][3]~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~166_combout\,
	datab => \stage[6][3]~284_combout\,
	datac => \stage[6][3]~263_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~71_combout\);

-- Location: LCCOMB_X74_Y55_N16
\stage[5][59]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][59]~285_combout\ = (\B[3]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \stage[5][59]~285_combout\);

-- Location: LCCOMB_X74_Y55_N18
\stage[6][59]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][59]~286_combout\ = (\shamt[5]~0_combout\ & (\fill~1_combout\)) # (!\shamt[5]~0_combout\ & ((\stage[5][59]~285_combout\ & (\fill~1_combout\)) # (!\stage[5][59]~285_combout\ & ((\stage[3][59]~250_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \fill~1_combout\,
	datac => \stage[3][59]~250_combout\,
	datad => \stage[5][59]~285_combout\,
	combout => \stage[6][59]~286_combout\);

-- Location: LCCOMB_X72_Y54_N20
\Y~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~167_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][59]~286_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \stage[6][59]~286_combout\,
	combout => \Y~167_combout\);

-- Location: LCCOMB_X69_Y54_N12
\stage[6][7]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~294_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[6][7]~294_combout\);

-- Location: LCCOMB_X73_Y57_N28
\stage[3][12]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][12]~295_combout\ = (\B[2]~input_o\ & (((\stage[2][16]~105_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][12]~133_combout\) # ((\stage[2][12]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][12]~133_combout\,
	datac => \stage[2][12]~134_combout\,
	datad => \stage[2][16]~105_combout\,
	combout => \stage[3][12]~295_combout\);

-- Location: LCCOMB_X73_Y57_N30
\stage[6][4]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~296_combout\ = (\stage[5][59]~285_combout\ & ((\stage[6][7]~294_combout\) # ((\stage[3][12]~295_combout\)))) # (!\stage[5][59]~285_combout\ & (!\stage[6][7]~294_combout\ & (\stage[2][4]~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][59]~285_combout\,
	datab => \stage[6][7]~294_combout\,
	datac => \stage[2][4]~129_combout\,
	datad => \stage[3][12]~295_combout\,
	combout => \stage[6][4]~296_combout\);

-- Location: LCCOMB_X73_Y57_N24
\stage[4][20]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][20]~297_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][32]~121_combout\))) # (!\B[2]~input_o\ & (\stage[2][28]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][28]~97_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][32]~121_combout\,
	combout => \stage[4][20]~297_combout\);

-- Location: LCCOMB_X73_Y57_N16
\stage[3][20]~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][20]~478_combout\ = (\B[2]~input_o\ & ((\stage[2][24]~99_combout\) # ((\stage[2][24]~98_combout\)))) # (!\B[2]~input_o\ & (((\stage[2][20]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][24]~99_combout\,
	datac => \stage[2][20]~103_combout\,
	datad => \stage[2][24]~98_combout\,
	combout => \stage[3][20]~478_combout\);

-- Location: LCCOMB_X73_Y57_N26
\stage[4][20]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][20]~298_combout\ = (\stage[4][20]~297_combout\) # ((!\B[3]~input_o\ & \stage[3][20]~478_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[4][20]~297_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[3][20]~478_combout\,
	combout => \stage[4][20]~298_combout\);

-- Location: LCCOMB_X73_Y57_N4
\stage[6][4]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~299_combout\ = (\stage[6][4]~296_combout\ & ((\stage[4][20]~298_combout\) # ((!\stage[6][7]~294_combout\)))) # (!\stage[6][4]~296_combout\ & (((\stage[6][7]~294_combout\ & \stage[2][8]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][4]~296_combout\,
	datab => \stage[4][20]~298_combout\,
	datac => \stage[6][7]~294_combout\,
	datad => \stage[2][8]~132_combout\,
	combout => \stage[6][4]~299_combout\);

-- Location: LCCOMB_X70_Y56_N26
\stage[2][56]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][56]~287_combout\ = (\stage[2][56]~91_combout\) # (\stage[2][56]~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][56]~91_combout\,
	datad => \stage[2][56]~90_combout\,
	combout => \stage[2][56]~287_combout\);

-- Location: LCCOMB_X70_Y55_N30
\stage[4][52]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][52]~288_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\fill~1_combout\)) # (!\B[3]~input_o\ & ((\stage[2][56]~287_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][56]~287_combout\,
	combout => \stage[4][52]~288_combout\);

-- Location: LCCOMB_X70_Y55_N8
\stage[4][52]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][52]~289_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\stage[2][52]~81_combout\) # (\stage[2][52]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][52]~81_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][52]~82_combout\,
	combout => \stage[4][52]~289_combout\);

-- Location: LCCOMB_X70_Y55_N10
\stage[4][16]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][16]~109_combout\ = (\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \stage[4][16]~109_combout\);

-- Location: LCCOMB_X70_Y55_N2
\stage[4][52]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][52]~290_combout\ = (\stage[4][52]~288_combout\) # ((\stage[4][52]~289_combout\) # ((\stage[2][60]~89_combout\ & \stage[4][16]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][52]~288_combout\,
	datab => \stage[4][52]~289_combout\,
	datac => \stage[2][60]~89_combout\,
	datad => \stage[4][16]~109_combout\,
	combout => \stage[4][52]~290_combout\);

-- Location: LCCOMB_X69_Y58_N16
\stage[4][36]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][36]~291_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][48]~85_combout\))) # (!\B[2]~input_o\ & (\stage[2][44]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][44]~113_combout\,
	datab => \B[3]~input_o\,
	datac => \stage[2][48]~85_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[4][36]~291_combout\);

-- Location: LCCOMB_X69_Y58_N26
\stage[4][36]~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][36]~477_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & ((\stage[2][40]~110_combout\) # (\stage[2][40]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][40]~110_combout\,
	datad => \stage[2][40]~111_combout\,
	combout => \stage[4][36]~477_combout\);

-- Location: LCCOMB_X69_Y58_N18
\stage[4][36]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][36]~292_combout\ = (\stage[4][36]~291_combout\) # ((\stage[4][36]~477_combout\) # ((\stage[4][24]~122_combout\ & \stage[2][36]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][24]~122_combout\,
	datab => \stage[4][36]~291_combout\,
	datac => \stage[4][36]~477_combout\,
	datad => \stage[2][36]~115_combout\,
	combout => \stage[4][36]~292_combout\);

-- Location: LCCOMB_X70_Y54_N26
\stage[6][4]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~293_combout\ = (\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][52]~290_combout\)) # (!\B[4]~input_o\ & ((\stage[4][36]~292_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][52]~290_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][36]~292_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][4]~293_combout\);

-- Location: LCCOMB_X72_Y54_N14
\stage[6][4]~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~479_combout\ = (\stage[6][4]~293_combout\) # ((\stage[6][4]~299_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][4]~299_combout\,
	datab => \stage[6][4]~293_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \stage[6][4]~479_combout\);

-- Location: LCCOMB_X72_Y54_N8
\Y~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = (\Y~167_combout\) # ((\stage[6][4]~479_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~167_combout\,
	datac => \stage[6][4]~479_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~72_combout\);

-- Location: LCCOMB_X73_Y55_N12
\stage[3][13]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][13]~308_combout\ = (\B[2]~input_o\ & (\stage[2][17]~163_combout\)) # (!\B[2]~input_o\ & ((\stage[2][13]~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][17]~163_combout\,
	datac => \stage[2][13]~148_combout\,
	combout => \stage[3][13]~308_combout\);

-- Location: LCCOMB_X72_Y59_N10
\stage[6][5]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~309_combout\ = (\stage[5][59]~285_combout\ & ((\stage[6][7]~294_combout\) # ((\stage[3][13]~308_combout\)))) # (!\stage[5][59]~285_combout\ & (!\stage[6][7]~294_combout\ & ((\stage[2][5]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][59]~285_combout\,
	datab => \stage[6][7]~294_combout\,
	datac => \stage[3][13]~308_combout\,
	datad => \stage[2][5]~145_combout\,
	combout => \stage[6][5]~309_combout\);

-- Location: LCCOMB_X72_Y59_N30
\stage[3][21]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][21]~311_combout\ = (\B[2]~input_o\ & (\stage[2][25]~158_combout\)) # (!\B[2]~input_o\ & ((\stage[2][21]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][25]~158_combout\,
	datab => \stage[2][21]~161_combout\,
	datac => \B[2]~input_o\,
	combout => \stage[3][21]~311_combout\);

-- Location: LCCOMB_X72_Y59_N20
\stage[4][21]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][21]~310_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][33]~190_combout\)) # (!\B[2]~input_o\ & ((\stage[2][29]~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][33]~190_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][29]~156_combout\,
	combout => \stage[4][21]~310_combout\);

-- Location: LCCOMB_X72_Y59_N8
\stage[4][21]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][21]~312_combout\ = (\stage[4][21]~310_combout\) # ((!\B[3]~input_o\ & \stage[3][21]~311_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \stage[3][21]~311_combout\,
	datad => \stage[4][21]~310_combout\,
	combout => \stage[4][21]~312_combout\);

-- Location: LCCOMB_X75_Y57_N28
\stage[2][9]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][9]~307_combout\ = (\stage[2][9]~150_combout\) # (\stage[2][9]~149_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][9]~150_combout\,
	datad => \stage[2][9]~149_combout\,
	combout => \stage[2][9]~307_combout\);

-- Location: LCCOMB_X72_Y59_N26
\stage[6][5]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~313_combout\ = (\stage[6][5]~309_combout\ & ((\stage[4][21]~312_combout\) # ((!\stage[6][7]~294_combout\)))) # (!\stage[6][5]~309_combout\ & (((\stage[6][7]~294_combout\ & \stage[2][9]~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][5]~309_combout\,
	datab => \stage[4][21]~312_combout\,
	datac => \stage[6][7]~294_combout\,
	datad => \stage[2][9]~307_combout\,
	combout => \stage[6][5]~313_combout\);

-- Location: LCCOMB_X70_Y55_N6
\stage[4][53]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][53]~302_combout\ = (\stage[4][16]~109_combout\ & ((\stage[2][61]~174_combout\) # ((\stage[2][53]~168_combout\ & \stage[4][24]~122_combout\)))) # (!\stage[4][16]~109_combout\ & (((\stage[2][53]~168_combout\ & \stage[4][24]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][16]~109_combout\,
	datab => \stage[2][61]~174_combout\,
	datac => \stage[2][53]~168_combout\,
	datad => \stage[4][24]~122_combout\,
	combout => \stage[4][53]~302_combout\);

-- Location: LCCOMB_X70_Y55_N28
\stage[4][53]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][53]~301_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\ & \fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \fill~1_combout\,
	combout => \stage[4][53]~301_combout\);

-- Location: LCCOMB_X70_Y55_N24
\stage[4][53]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][53]~303_combout\ = (\stage[4][53]~302_combout\) # ((\stage[4][53]~301_combout\) # ((\stage[2][57]~176_combout\ & \stage[6][7]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][53]~302_combout\,
	datab => \stage[4][53]~301_combout\,
	datac => \stage[2][57]~176_combout\,
	datad => \stage[6][7]~179_combout\,
	combout => \stage[4][53]~303_combout\);

-- Location: LCCOMB_X70_Y59_N24
\stage[4][37]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][37]~304_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][49]~171_combout\))) # (!\B[2]~input_o\ & (\stage[2][45]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][45]~183_combout\,
	datab => \stage[2][49]~171_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[4][37]~304_combout\);

-- Location: LCCOMB_X70_Y59_N20
\stage[4][37]~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][37]~480_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\stage[2][37]~181_combout\) # (\stage[2][37]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][37]~181_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][37]~180_combout\,
	combout => \stage[4][37]~480_combout\);

-- Location: LCCOMB_X70_Y59_N10
\stage[4][37]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][37]~305_combout\ = (\stage[4][37]~304_combout\) # ((\stage[4][37]~480_combout\) # ((\stage[2][41]~186_combout\ & \stage[6][7]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][41]~186_combout\,
	datab => \stage[4][37]~304_combout\,
	datac => \stage[6][7]~179_combout\,
	datad => \stage[4][37]~480_combout\,
	combout => \stage[4][37]~305_combout\);

-- Location: LCCOMB_X77_Y59_N16
\stage[6][5]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~306_combout\ = (\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][53]~303_combout\)) # (!\B[4]~input_o\ & ((\stage[4][37]~305_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][53]~303_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[4][37]~305_combout\,
	combout => \stage[6][5]~306_combout\);

-- Location: LCCOMB_X72_Y59_N18
\stage[6][5]~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~481_combout\ = (\stage[6][5]~306_combout\) # ((\stage[6][5]~313_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][5]~313_combout\,
	datab => \stage[6][5]~306_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][5]~481_combout\);

-- Location: LCCOMB_X77_Y56_N28
\stage[6][58]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][58]~300_combout\ = (\stage[5][59]~285_combout\ & (((\fill~1_combout\)))) # (!\stage[5][59]~285_combout\ & ((\shamt[5]~0_combout\ & ((\fill~1_combout\))) # (!\shamt[5]~0_combout\ & (\stage[3][58]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][59]~285_combout\,
	datab => \stage[3][58]~202_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \fill~1_combout\,
	combout => \stage[6][58]~300_combout\);

-- Location: LCCOMB_X79_Y55_N26
\Y~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~168_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][58]~300_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][58]~300_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Y~168_combout\);

-- Location: LCCOMB_X79_Y55_N28
\Y~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = (\Y~168_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][5]~481_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][5]~481_combout\,
	datac => \Y~168_combout\,
	combout => \Y~73_combout\);

-- Location: LCCOMB_X69_Y54_N22
\stage[4][54]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][54]~315_combout\ = (\B[1]~input_o\ & (((\fill~1_combout\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((\fill~1_combout\))) # (!\B[2]~input_o\ & (\stage[1][62]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[1][62]~88_combout\,
	datac => \B[2]~input_o\,
	datad => \fill~1_combout\,
	combout => \stage[4][54]~315_combout\);

-- Location: LCCOMB_X69_Y54_N28
\stage[4][54]~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][54]~482_combout\ = (\B[3]~input_o\ & (\stage[4][54]~315_combout\)) # (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \stage[2][54]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][54]~315_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][54]~195_combout\,
	combout => \stage[4][54]~482_combout\);

-- Location: LCCOMB_X69_Y54_N14
\stage[4][54]~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][54]~483_combout\ = (\stage[4][54]~482_combout\) # ((\stage[2][58]~200_combout\ & (!\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][58]~200_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[4][54]~482_combout\,
	combout => \stage[4][54]~483_combout\);

-- Location: LCCOMB_X69_Y56_N20
\stage[4][38]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][38]~316_combout\ = (\stage[2][42]~225_combout\ & ((\stage[6][7]~179_combout\) # ((\stage[4][24]~122_combout\ & \stage[2][38]~216_combout\)))) # (!\stage[2][42]~225_combout\ & (\stage[4][24]~122_combout\ & ((\stage[2][38]~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][42]~225_combout\,
	datab => \stage[4][24]~122_combout\,
	datac => \stage[6][7]~179_combout\,
	datad => \stage[2][38]~216_combout\,
	combout => \stage[4][38]~316_combout\);

-- Location: LCCOMB_X69_Y56_N14
\stage[4][38]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][38]~317_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][50]~197_combout\))) # (!\B[2]~input_o\ & (\stage[2][46]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][46]~222_combout\,
	datab => \stage[2][50]~197_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[4][38]~317_combout\);

-- Location: LCCOMB_X70_Y54_N4
\stage[6][6]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~318_combout\ = (\B[4]~input_o\ & (\stage[4][54]~483_combout\)) # (!\B[4]~input_o\ & (((\stage[4][38]~316_combout\) # (\stage[4][38]~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][54]~483_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][38]~316_combout\,
	datad => \stage[4][38]~317_combout\,
	combout => \stage[6][6]~318_combout\);

-- Location: LCCOMB_X75_Y56_N26
\stage[3][22]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][22]~323_combout\ = (\B[2]~input_o\ & ((\stage[2][26]~206_combout\))) # (!\B[2]~input_o\ & (\stage[2][22]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][22]~209_combout\,
	datab => \B[2]~input_o\,
	datad => \stage[2][26]~206_combout\,
	combout => \stage[3][22]~323_combout\);

-- Location: LCCOMB_X72_Y56_N24
\stage[3][30]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][30]~321_combout\ = (\B[2]~input_o\ & (((\stage[2][34]~218_combout\)))) # (!\B[2]~input_o\ & (\B[1]~input_o\ & (\stage[1][32]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \stage[1][32]~120_combout\,
	datad => \stage[2][34]~218_combout\,
	combout => \stage[3][30]~321_combout\);

-- Location: LCCOMB_X72_Y56_N2
\stage[3][30]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][30]~322_combout\ = (\stage[3][30]~321_combout\) # ((!\B[2]~input_o\ & (\stage[1][30]~96_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[1][30]~96_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[3][30]~321_combout\,
	combout => \stage[3][30]~322_combout\);

-- Location: LCCOMB_X72_Y56_N4
\stage[4][22]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][22]~324_combout\ = (\B[3]~input_o\ & ((\stage[3][30]~322_combout\))) # (!\B[3]~input_o\ & (\stage[3][22]~323_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \stage[3][22]~323_combout\,
	datad => \stage[3][30]~322_combout\,
	combout => \stage[4][22]~324_combout\);

-- Location: LCCOMB_X75_Y56_N24
\stage[3][14]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][14]~319_combout\ = (\B[2]~input_o\ & (\stage[2][18]~211_combout\)) # (!\B[2]~input_o\ & ((\stage[2][14]~233_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[2][18]~211_combout\,
	datac => \stage[2][14]~233_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][14]~319_combout\);

-- Location: LCCOMB_X76_Y56_N18
\stage[6][6]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~320_combout\ = (\stage[5][59]~285_combout\ & (((\stage[6][7]~294_combout\) # (\stage[3][14]~319_combout\)))) # (!\stage[5][59]~285_combout\ & (\stage[2][6]~230_combout\ & (!\stage[6][7]~294_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][6]~230_combout\,
	datab => \stage[5][59]~285_combout\,
	datac => \stage[6][7]~294_combout\,
	datad => \stage[3][14]~319_combout\,
	combout => \stage[6][6]~320_combout\);

-- Location: LCCOMB_X76_Y56_N4
\stage[6][6]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~325_combout\ = (\stage[6][7]~294_combout\ & ((\stage[6][6]~320_combout\ & (\stage[4][22]~324_combout\)) # (!\stage[6][6]~320_combout\ & ((\stage[2][10]~237_combout\))))) # (!\stage[6][7]~294_combout\ & (((\stage[6][6]~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][22]~324_combout\,
	datab => \stage[2][10]~237_combout\,
	datac => \stage[6][7]~294_combout\,
	datad => \stage[6][6]~320_combout\,
	combout => \stage[6][6]~325_combout\);

-- Location: LCCOMB_X79_Y55_N6
\stage[6][6]~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~484_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\stage[6][6]~325_combout\))) # (!\ExtWord~input_o\ & (\stage[6][6]~318_combout\)))) # (!\B[5]~input_o\ & (((\stage[6][6]~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \stage[6][6]~318_combout\,
	datac => \ExtWord~input_o\,
	datad => \stage[6][6]~325_combout\,
	combout => \stage[6][6]~484_combout\);

-- Location: LCCOMB_X79_Y55_N14
\stage[6][57]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][57]~314_combout\ = (\shamt[5]~0_combout\ & (((\fill~1_combout\)))) # (!\shamt[5]~0_combout\ & ((\stage[5][59]~285_combout\ & ((\fill~1_combout\))) # (!\stage[5][59]~285_combout\ & (\stage[3][57]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][57]~177_combout\,
	datab => \fill~1_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[5][59]~285_combout\,
	combout => \stage[6][57]~314_combout\);

-- Location: LCCOMB_X79_Y55_N12
\Y~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~169_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][57]~314_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][57]~314_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Y~169_combout\);

-- Location: LCCOMB_X79_Y55_N16
\Y~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = (\Y~169_combout\) # ((\stage[6][6]~484_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][6]~484_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~169_combout\,
	combout => \Y~74_combout\);

-- Location: LCCOMB_X70_Y57_N30
\stage[4][55]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][55]~327_combout\ = (\stage[2][6]~236_combout\ & ((\B[2]~input_o\ & (\fill~1_combout\)) # (!\B[2]~input_o\ & ((\A_rev[63]~1_combout\))))) # (!\stage[2][6]~236_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][6]~236_combout\,
	datab => \fill~1_combout\,
	datac => \B[2]~input_o\,
	datad => \A_rev[63]~1_combout\,
	combout => \stage[4][55]~327_combout\);

-- Location: LCCOMB_X70_Y57_N24
\stage[4][55]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][55]~328_combout\ = (\B[2]~input_o\ & ((\stage[2][59]~249_combout\) # ((\stage[2][59]~248_combout\)))) # (!\B[2]~input_o\ & (((\stage[2][55]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][59]~249_combout\,
	datab => \stage[2][59]~248_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[2][55]~243_combout\,
	combout => \stage[4][55]~328_combout\);

-- Location: LCCOMB_X70_Y57_N26
\stage[4][55]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][55]~329_combout\ = (\B[3]~input_o\ & (\stage[4][55]~327_combout\)) # (!\B[3]~input_o\ & ((\stage[4][55]~328_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][55]~327_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[4][55]~328_combout\,
	combout => \stage[4][55]~329_combout\);

-- Location: LCCOMB_X73_Y55_N22
\stage[4][39]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][39]~331_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][51]~245_combout\)) # (!\B[2]~input_o\ & ((\stage[2][47]~256_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][51]~245_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][47]~256_combout\,
	combout => \stage[4][39]~331_combout\);

-- Location: LCCOMB_X73_Y58_N0
\stage[4][39]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][39]~330_combout\ = (\stage[4][24]~122_combout\ & ((\stage[2][39]~261_combout\) # ((\stage[2][43]~258_combout\ & \stage[6][7]~179_combout\)))) # (!\stage[4][24]~122_combout\ & (\stage[2][43]~258_combout\ & ((\stage[6][7]~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][24]~122_combout\,
	datab => \stage[2][43]~258_combout\,
	datac => \stage[2][39]~261_combout\,
	datad => \stage[6][7]~179_combout\,
	combout => \stage[4][39]~330_combout\);

-- Location: LCCOMB_X73_Y58_N18
\stage[4][39]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][39]~332_combout\ = (\stage[4][39]~331_combout\) # (\stage[4][39]~330_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage[4][39]~331_combout\,
	datad => \stage[4][39]~330_combout\,
	combout => \stage[4][39]~332_combout\);

-- Location: LCCOMB_X76_Y58_N20
\stage[6][7]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~333_combout\ = (\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][55]~329_combout\)) # (!\B[4]~input_o\ & ((\stage[4][39]~332_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][55]~329_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \stage[4][39]~332_combout\,
	combout => \stage[6][7]~333_combout\);

-- Location: LCCOMB_X73_Y58_N14
\stage[3][23]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][23]~338_combout\ = (\B[2]~input_o\ & ((\stage[2][27]~267_combout\))) # (!\B[2]~input_o\ & (\stage[2][23]~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \stage[2][23]~270_combout\,
	datad => \stage[2][27]~267_combout\,
	combout => \stage[3][23]~338_combout\);

-- Location: LCCOMB_X73_Y58_N20
\stage[4][23]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][23]~337_combout\ = (\B[2]~input_o\ & (((\stage[2][35]~253_combout\) # (\stage[2][35]~252_combout\)))) # (!\B[2]~input_o\ & (\stage[2][31]~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][31]~265_combout\,
	datac => \stage[2][35]~253_combout\,
	datad => \stage[2][35]~252_combout\,
	combout => \stage[4][23]~337_combout\);

-- Location: LCCOMB_X73_Y58_N16
\stage[4][23]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][23]~339_combout\ = (\B[3]~input_o\ & ((\stage[4][23]~337_combout\))) # (!\B[3]~input_o\ & (\stage[3][23]~338_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \stage[3][23]~338_combout\,
	datad => \stage[4][23]~337_combout\,
	combout => \stage[4][23]~339_combout\);

-- Location: LCCOMB_X74_Y57_N14
\stage[3][15]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][15]~335_combout\ = (\B[2]~input_o\ & (\stage[2][19]~272_combout\)) # (!\B[2]~input_o\ & ((\stage[2][15]~279_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \stage[2][19]~272_combout\,
	datad => \stage[2][15]~279_combout\,
	combout => \stage[3][15]~335_combout\);

-- Location: LCCOMB_X76_Y56_N14
\stage[6][7]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~336_combout\ = (\stage[6][7]~294_combout\ & (\stage[5][59]~285_combout\)) # (!\stage[6][7]~294_combout\ & ((\stage[5][59]~285_combout\ & (\stage[3][15]~335_combout\)) # (!\stage[5][59]~285_combout\ & ((\stage[2][7]~276_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][7]~294_combout\,
	datab => \stage[5][59]~285_combout\,
	datac => \stage[3][15]~335_combout\,
	datad => \stage[2][7]~276_combout\,
	combout => \stage[6][7]~336_combout\);

-- Location: LCCOMB_X75_Y57_N14
\stage[2][11]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~334_combout\ = (\stage[2][11]~281_combout\) # (\stage[2][11]~280_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[2][11]~281_combout\,
	datac => \stage[2][11]~280_combout\,
	combout => \stage[2][11]~334_combout\);

-- Location: LCCOMB_X76_Y58_N30
\stage[6][7]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~340_combout\ = (\stage[6][7]~336_combout\ & ((\stage[4][23]~339_combout\) # ((!\stage[6][7]~294_combout\)))) # (!\stage[6][7]~336_combout\ & (((\stage[6][7]~294_combout\ & \stage[2][11]~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][23]~339_combout\,
	datab => \stage[6][7]~336_combout\,
	datac => \stage[6][7]~294_combout\,
	datad => \stage[2][11]~334_combout\,
	combout => \stage[6][7]~340_combout\);

-- Location: LCCOMB_X76_Y58_N10
\stage[6][7]~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~485_combout\ = (\stage[6][7]~333_combout\) # ((\stage[6][7]~340_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \stage[6][7]~333_combout\,
	datac => \stage[6][7]~340_combout\,
	datad => \B[5]~input_o\,
	combout => \stage[6][7]~485_combout\);

-- Location: LCCOMB_X70_Y56_N12
\stage[6][56]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][56]~326_combout\ = (\shamt[5]~0_combout\ & (((\fill~1_combout\)))) # (!\shamt[5]~0_combout\ & ((\stage[5][59]~285_combout\ & ((\fill~1_combout\))) # (!\stage[5][59]~285_combout\ & (\stage[3][56]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[3][56]~92_combout\,
	datac => \stage[5][59]~285_combout\,
	datad => \fill~1_combout\,
	combout => \stage[6][56]~326_combout\);

-- Location: LCCOMB_X76_Y58_N24
\Y~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~170_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][56]~326_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \stage[6][56]~326_combout\,
	datad => \A[7]~input_o\,
	combout => \Y~170_combout\);

-- Location: LCCOMB_X76_Y58_N16
\Y~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = (\Y~170_combout\) # ((\stage[6][7]~485_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][7]~485_combout\,
	datab => \Y~170_combout\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Y~75_combout\);

-- Location: LCCOMB_X75_Y58_N0
\stage[6][55]~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][55]~341_combout\ = (\stage[6][63]~78_combout\ & ((\stage[4][55]~329_combout\))) # (!\stage[6][63]~78_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datac => \stage[6][63]~78_combout\,
	datad => \stage[4][55]~329_combout\,
	combout => \stage[6][55]~341_combout\);

-- Location: LCCOMB_X75_Y58_N26
\Y~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~171_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][55]~341_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \stage[6][55]~341_combout\,
	datac => \A[8]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~171_combout\);

-- Location: LCCOMB_X69_Y58_N0
\stage[4][40]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][40]~347_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][52]~83_combout\))) # (!\B[2]~input_o\ & (\stage[2][48]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][48]~85_combout\,
	datac => \stage[2][52]~83_combout\,
	datad => \B[3]~input_o\,
	combout => \stage[4][40]~347_combout\);

-- Location: LCCOMB_X69_Y58_N28
\stage[4][40]~487\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][40]~487_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\stage[2][40]~110_combout\) # (\stage[2][40]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][40]~110_combout\,
	datad => \stage[2][40]~111_combout\,
	combout => \stage[4][40]~487_combout\);

-- Location: LCCOMB_X69_Y58_N2
\stage[4][40]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][40]~348_combout\ = (\stage[4][40]~347_combout\) # ((\stage[4][40]~487_combout\) # ((\stage[6][7]~179_combout\ & \stage[2][44]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][7]~179_combout\,
	datab => \stage[4][40]~347_combout\,
	datac => \stage[2][44]~113_combout\,
	datad => \stage[4][40]~487_combout\,
	combout => \stage[4][40]~348_combout\);

-- Location: LCCOMB_X70_Y58_N2
\stage[5][40]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][40]~346_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\fill~1_combout\))) # (!\B[3]~input_o\ & (\stage[3][56]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[3][56]~92_combout\,
	datac => \fill~1_combout\,
	datad => \B[3]~input_o\,
	combout => \stage[5][40]~346_combout\);

-- Location: LCCOMB_X70_Y58_N12
\stage[5][40]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][40]~349_combout\ = (\stage[5][40]~346_combout\) # ((!\B[4]~input_o\ & \stage[4][40]~348_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \stage[4][40]~348_combout\,
	datad => \stage[5][40]~346_combout\,
	combout => \stage[5][40]~349_combout\);

-- Location: LCCOMB_X69_Y58_N20
\stage[4][24]~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][24]~343_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\stage[2][36]~115_combout\))) # (!\B[3]~input_o\ & (\stage[2][28]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][28]~97_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][36]~115_combout\,
	combout => \stage[4][24]~343_combout\);

-- Location: LCCOMB_X73_Y57_N10
\stage[4][24]~486\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][24]~486_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\stage[2][24]~99_combout\) # (\stage[2][24]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][24]~99_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][24]~98_combout\,
	combout => \stage[4][24]~486_combout\);

-- Location: LCCOMB_X69_Y58_N14
\stage[4][24]~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][24]~344_combout\ = (\stage[4][24]~343_combout\) # ((\stage[4][24]~486_combout\) # ((\stage[2][32]~121_combout\ & \stage[4][16]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][32]~121_combout\,
	datab => \stage[4][24]~343_combout\,
	datac => \stage[4][16]~109_combout\,
	datad => \stage[4][24]~486_combout\,
	combout => \stage[4][24]~344_combout\);

-- Location: LCCOMB_X75_Y56_N12
\stage[6][14]~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][14]~342_combout\ = (\B[3]~input_o\ & (((!\ExtWord~input_o\ & \B[5]~input_o\)) # (!\B[4]~input_o\))) # (!\B[3]~input_o\ & (((!\ExtWord~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \stage[6][14]~342_combout\);

-- Location: LCCOMB_X70_Y58_N16
\stage[6][8]~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][8]~345_combout\ = (\stage[6][63]~78_combout\ & (((\stage[3][8]~135_combout\ & !\stage[6][14]~342_combout\)))) # (!\stage[6][63]~78_combout\ & ((\stage[4][24]~344_combout\) # ((\stage[6][14]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][24]~344_combout\,
	datab => \stage[3][8]~135_combout\,
	datac => \stage[6][63]~78_combout\,
	datad => \stage[6][14]~342_combout\,
	combout => \stage[6][8]~345_combout\);

-- Location: LCCOMB_X75_Y58_N18
\stage[6][8]~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][8]~350_combout\ = (\stage[6][8]~345_combout\ & ((\stage[5][40]~349_combout\) # ((!\stage[6][14]~342_combout\)))) # (!\stage[6][8]~345_combout\ & (((\stage[3][16]~106_combout\ & \stage[6][14]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][40]~349_combout\,
	datab => \stage[3][16]~106_combout\,
	datac => \stage[6][8]~345_combout\,
	datad => \stage[6][14]~342_combout\,
	combout => \stage[6][8]~350_combout\);

-- Location: LCCOMB_X75_Y58_N4
\Y~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = (\Y~171_combout\) # ((\stage[6][8]~350_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~171_combout\,
	datab => \stage[6][8]~350_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~76_combout\);

-- Location: LCCOMB_X70_Y59_N2
\stage[4][41]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][41]~357_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][53]~168_combout\)) # (!\B[2]~input_o\ & ((\stage[2][49]~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][53]~168_combout\,
	datab => \stage[2][49]~171_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[4][41]~357_combout\);

-- Location: LCCOMB_X69_Y59_N14
\stage[4][41]~488\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][41]~488_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\stage[2][41]~185_combout\) # (\stage[2][41]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][41]~185_combout\,
	datab => \stage[2][41]~184_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[4][41]~488_combout\);

-- Location: LCCOMB_X70_Y59_N4
\stage[4][41]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][41]~358_combout\ = (\stage[4][41]~357_combout\) # ((\stage[4][41]~488_combout\) # ((\stage[2][45]~183_combout\ & \stage[6][7]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][45]~183_combout\,
	datab => \stage[4][41]~357_combout\,
	datac => \stage[6][7]~179_combout\,
	datad => \stage[4][41]~488_combout\,
	combout => \stage[4][41]~358_combout\);

-- Location: LCCOMB_X74_Y55_N12
\stage[5][41]~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][41]~356_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\fill~1_combout\)) # (!\B[3]~input_o\ & ((\stage[3][57]~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \fill~1_combout\,
	datad => \stage[3][57]~177_combout\,
	combout => \stage[5][41]~356_combout\);

-- Location: LCCOMB_X74_Y55_N30
\stage[5][41]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][41]~359_combout\ = (\stage[5][41]~356_combout\) # ((!\B[4]~input_o\ & \stage[4][41]~358_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \stage[4][41]~358_combout\,
	datad => \stage[5][41]~356_combout\,
	combout => \stage[5][41]~359_combout\);

-- Location: LCCOMB_X70_Y59_N22
\stage[4][25]~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][25]~353_combout\ = (\B[3]~input_o\ & ((\stage[2][33]~189_combout\) # ((\stage[2][33]~188_combout\)))) # (!\B[3]~input_o\ & (((\stage[2][25]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][33]~189_combout\,
	datab => \stage[2][33]~188_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][25]~158_combout\,
	combout => \stage[4][25]~353_combout\);

-- Location: LCCOMB_X70_Y59_N28
\stage[4][25]~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][25]~352_combout\ = (\B[3]~input_o\ & (((\stage[2][37]~180_combout\) # (\stage[2][37]~181_combout\)))) # (!\B[3]~input_o\ & (\stage[2][29]~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][29]~156_combout\,
	datab => \stage[2][37]~180_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][37]~181_combout\,
	combout => \stage[4][25]~352_combout\);

-- Location: LCCOMB_X70_Y59_N0
\stage[4][25]~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][25]~354_combout\ = (\B[2]~input_o\ & ((\stage[4][25]~352_combout\))) # (!\B[2]~input_o\ & (\stage[4][25]~353_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \stage[4][25]~353_combout\,
	datad => \stage[4][25]~352_combout\,
	combout => \stage[4][25]~354_combout\);

-- Location: LCCOMB_X73_Y56_N6
\stage[6][9]~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][9]~355_combout\ = (\stage[6][14]~342_combout\ & (((!\stage[6][63]~78_combout\)))) # (!\stage[6][14]~342_combout\ & ((\stage[6][63]~78_combout\ & ((\stage[3][9]~151_combout\))) # (!\stage[6][63]~78_combout\ & (\stage[4][25]~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][25]~354_combout\,
	datab => \stage[3][9]~151_combout\,
	datac => \stage[6][14]~342_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][9]~355_combout\);

-- Location: LCCOMB_X73_Y56_N16
\stage[6][9]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][9]~360_combout\ = (\stage[6][14]~342_combout\ & ((\stage[6][9]~355_combout\ & ((\stage[5][41]~359_combout\))) # (!\stage[6][9]~355_combout\ & (\stage[3][17]~164_combout\)))) # (!\stage[6][14]~342_combout\ & (((\stage[6][9]~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][17]~164_combout\,
	datab => \stage[6][14]~342_combout\,
	datac => \stage[5][41]~359_combout\,
	datad => \stage[6][9]~355_combout\,
	combout => \stage[6][9]~360_combout\);

-- Location: LCCOMB_X70_Y54_N14
\stage[6][54]~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][54]~351_combout\ = (\stage[6][63]~78_combout\ & (\stage[4][54]~483_combout\)) # (!\stage[6][63]~78_combout\ & ((\fill~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][54]~483_combout\,
	datab => \stage[6][63]~78_combout\,
	datac => \fill~1_combout\,
	combout => \stage[6][54]~351_combout\);

-- Location: LCCOMB_X76_Y59_N28
\Y~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~172_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][54]~351_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \stage[6][54]~351_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Y~172_combout\);

-- Location: LCCOMB_X76_Y59_N24
\Y~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = (\Y~172_combout\) # ((\stage[6][9]~360_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][9]~360_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~172_combout\,
	combout => \Y~77_combout\);

-- Location: LCCOMB_X77_Y59_N18
\stage[6][53]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][53]~361_combout\ = (\stage[6][63]~78_combout\ & (\stage[4][53]~303_combout\)) # (!\stage[6][63]~78_combout\ & ((\fill~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[4][53]~303_combout\,
	datac => \fill~1_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][53]~361_combout\);

-- Location: LCCOMB_X72_Y58_N20
\Y~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~173_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][53]~361_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][53]~361_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[10]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~173_combout\);

-- Location: LCCOMB_X75_Y56_N30
\stage[4][26]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][26]~362_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][38]~216_combout\)) # (!\B[2]~input_o\ & ((\stage[2][34]~218_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][38]~216_combout\,
	datad => \stage[2][34]~218_combout\,
	combout => \stage[4][26]~362_combout\);

-- Location: LCCOMB_X75_Y56_N0
\stage[4][26]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][26]~363_combout\ = (\stage[4][26]~362_combout\) # ((!\B[3]~input_o\ & \stage[3][26]~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][26]~362_combout\,
	datab => \B[3]~input_o\,
	datac => \stage[3][26]~207_combout\,
	combout => \stage[4][26]~363_combout\);

-- Location: LCCOMB_X75_Y56_N18
\stage[6][10]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][10]~364_combout\ = (\stage[6][14]~342_combout\ & (((!\stage[6][63]~78_combout\)))) # (!\stage[6][14]~342_combout\ & ((\stage[6][63]~78_combout\ & ((\stage[3][10]~238_combout\))) # (!\stage[6][63]~78_combout\ & (\stage[4][26]~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~342_combout\,
	datab => \stage[4][26]~363_combout\,
	datac => \stage[6][63]~78_combout\,
	datad => \stage[3][10]~238_combout\,
	combout => \stage[6][10]~364_combout\);

-- Location: LCCOMB_X69_Y56_N8
\stage[4][42]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][42]~366_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\stage[2][42]~223_combout\) # (\stage[2][42]~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][42]~223_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][42]~224_combout\,
	combout => \stage[4][42]~366_combout\);

-- Location: LCCOMB_X69_Y56_N18
\stage[4][42]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][42]~367_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][54]~195_combout\))) # (!\B[2]~input_o\ & (\stage[2][50]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][50]~197_combout\,
	datad => \stage[2][54]~195_combout\,
	combout => \stage[4][42]~367_combout\);

-- Location: LCCOMB_X69_Y56_N4
\stage[4][42]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][42]~368_combout\ = (\stage[4][42]~366_combout\) # ((\stage[4][42]~367_combout\) # ((\stage[2][46]~222_combout\ & \stage[6][7]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][46]~222_combout\,
	datab => \stage[4][42]~366_combout\,
	datac => \stage[6][7]~179_combout\,
	datad => \stage[4][42]~367_combout\,
	combout => \stage[4][42]~368_combout\);

-- Location: LCCOMB_X70_Y55_N26
\stage[5][42]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][42]~365_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\fill~1_combout\)) # (!\B[3]~input_o\ & ((\stage[3][58]~202_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[3][58]~202_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[5][42]~365_combout\);

-- Location: LCCOMB_X75_Y56_N20
\stage[5][42]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][42]~369_combout\ = (\stage[5][42]~365_combout\) # ((!\B[4]~input_o\ & \stage[4][42]~368_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \stage[4][42]~368_combout\,
	datad => \stage[5][42]~365_combout\,
	combout => \stage[5][42]~369_combout\);

-- Location: LCCOMB_X75_Y56_N14
\stage[6][10]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][10]~370_combout\ = (\stage[6][10]~364_combout\ & (((\stage[5][42]~369_combout\) # (!\stage[6][14]~342_combout\)))) # (!\stage[6][10]~364_combout\ & (\stage[3][18]~212_combout\ & ((\stage[6][14]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][18]~212_combout\,
	datab => \stage[6][10]~364_combout\,
	datac => \stage[5][42]~369_combout\,
	datad => \stage[6][14]~342_combout\,
	combout => \stage[6][10]~370_combout\);

-- Location: LCCOMB_X77_Y59_N28
\Y~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = (\Y~173_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][10]~370_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~173_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \stage[6][10]~370_combout\,
	combout => \Y~78_combout\);

-- Location: LCCOMB_X73_Y58_N26
\stage[4][27]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][27]~372_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\stage[2][39]~261_combout\)) # (!\B[3]~input_o\ & ((\stage[2][31]~265_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][39]~261_combout\,
	datad => \stage[2][31]~265_combout\,
	combout => \stage[4][27]~372_combout\);

-- Location: LCCOMB_X73_Y58_N30
\stage[4][27]~489\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][27]~489_combout\ = (!\B[2]~input_o\ & (\B[3]~input_o\ & ((\stage[2][35]~253_combout\) # (\stage[2][35]~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][35]~253_combout\,
	datad => \stage[2][35]~252_combout\,
	combout => \stage[4][27]~489_combout\);

-- Location: LCCOMB_X73_Y58_N12
\stage[4][27]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][27]~373_combout\ = (\stage[4][27]~372_combout\) # ((\stage[4][27]~489_combout\) # ((\stage[2][27]~267_combout\ & \stage[4][24]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][27]~372_combout\,
	datab => \stage[2][27]~267_combout\,
	datac => \stage[4][27]~489_combout\,
	datad => \stage[4][24]~122_combout\,
	combout => \stage[4][27]~373_combout\);

-- Location: LCCOMB_X73_Y56_N18
\stage[6][11]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][11]~374_combout\ = (\stage[6][14]~342_combout\ & (((!\stage[6][63]~78_combout\)))) # (!\stage[6][14]~342_combout\ & ((\stage[6][63]~78_combout\ & ((\stage[3][11]~282_combout\))) # (!\stage[6][63]~78_combout\ & (\stage[4][27]~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][27]~373_combout\,
	datab => \stage[3][11]~282_combout\,
	datac => \stage[6][14]~342_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][11]~374_combout\);

-- Location: LCCOMB_X74_Y55_N0
\stage[5][43]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][43]~375_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\fill~1_combout\))) # (!\B[3]~input_o\ & (\stage[3][59]~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][59]~250_combout\,
	datab => \B[3]~input_o\,
	datac => \fill~1_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[5][43]~375_combout\);

-- Location: LCCOMB_X73_Y55_N14
\stage[4][43]~490\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][43]~490_combout\ = (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\stage[2][47]~255_combout\) # (\stage[2][47]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][47]~255_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][47]~254_combout\,
	combout => \stage[4][43]~490_combout\);

-- Location: LCCOMB_X73_Y55_N24
\stage[4][43]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][43]~376_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][55]~243_combout\))) # (!\B[2]~input_o\ & (\stage[2][51]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][51]~245_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][55]~243_combout\,
	combout => \stage[4][43]~376_combout\);

-- Location: LCCOMB_X74_Y55_N10
\stage[4][43]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][43]~377_combout\ = (\stage[4][43]~490_combout\) # ((\stage[4][43]~376_combout\) # ((\stage[2][43]~258_combout\ & \stage[4][24]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][43]~490_combout\,
	datab => \stage[2][43]~258_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \stage[4][43]~376_combout\,
	combout => \stage[4][43]~377_combout\);

-- Location: LCCOMB_X74_Y55_N4
\stage[5][43]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][43]~378_combout\ = (\stage[5][43]~375_combout\) # ((!\B[4]~input_o\ & \stage[4][43]~377_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[5][43]~375_combout\,
	datad => \stage[4][43]~377_combout\,
	combout => \stage[5][43]~378_combout\);

-- Location: LCCOMB_X73_Y56_N12
\stage[6][11]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][11]~379_combout\ = (\stage[6][11]~374_combout\ & (((\stage[5][43]~378_combout\) # (!\stage[6][14]~342_combout\)))) # (!\stage[6][11]~374_combout\ & (\stage[3][19]~273_combout\ & (\stage[6][14]~342_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][19]~273_combout\,
	datab => \stage[6][11]~374_combout\,
	datac => \stage[6][14]~342_combout\,
	datad => \stage[5][43]~378_combout\,
	combout => \stage[6][11]~379_combout\);

-- Location: LCCOMB_X70_Y54_N0
\stage[6][52]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][52]~371_combout\ = (\stage[6][63]~78_combout\ & (\stage[4][52]~290_combout\)) # (!\stage[6][63]~78_combout\ & ((\fill~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][52]~290_combout\,
	datab => \stage[6][63]~78_combout\,
	datac => \fill~1_combout\,
	combout => \stage[6][52]~371_combout\);

-- Location: LCCOMB_X72_Y58_N30
\Y~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~174_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][52]~371_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][52]~371_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[11]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~174_combout\);

-- Location: LCCOMB_X72_Y58_N6
\Y~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = (\Y~174_combout\) # ((\stage[6][11]~379_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][11]~379_combout\,
	datac => \Y~174_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~79_combout\);

-- Location: LCCOMB_X73_Y54_N10
\stage[6][51]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][51]~380_combout\ = (\stage[6][63]~78_combout\ & (\stage[4][51]~251_combout\)) # (!\stage[6][63]~78_combout\ & ((\fill~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][51]~251_combout\,
	datab => \stage[6][63]~78_combout\,
	datac => \fill~1_combout\,
	combout => \stage[6][51]~380_combout\);

-- Location: LCCOMB_X80_Y62_N10
\Y~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~175_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][51]~380_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][51]~380_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Y~175_combout\);

-- Location: LCCOMB_X69_Y58_N6
\stage[4][44]~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][44]~384_combout\ = (\stage[2][44]~113_combout\ & ((\stage[4][24]~122_combout\) # ((\stage[2][48]~85_combout\ & \stage[6][7]~179_combout\)))) # (!\stage[2][44]~113_combout\ & (\stage[2][48]~85_combout\ & (\stage[6][7]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][44]~113_combout\,
	datab => \stage[2][48]~85_combout\,
	datac => \stage[6][7]~179_combout\,
	datad => \stage[4][24]~122_combout\,
	combout => \stage[4][44]~384_combout\);

-- Location: LCCOMB_X70_Y55_N4
\stage[4][44]~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][44]~385_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][56]~287_combout\))) # (!\B[2]~input_o\ & (\stage[2][52]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][52]~83_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][56]~287_combout\,
	combout => \stage[4][44]~385_combout\);

-- Location: LCCOMB_X69_Y54_N16
\stage[5][44]~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][44]~383_combout\ = (\B[4]~input_o\ & ((\stage[4][24]~122_combout\ & (\stage[2][60]~89_combout\)) # (!\stage[4][24]~122_combout\ & ((\fill~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][60]~89_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][24]~122_combout\,
	datad => \fill~1_combout\,
	combout => \stage[5][44]~383_combout\);

-- Location: LCCOMB_X69_Y54_N10
\stage[5][44]~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][44]~386_combout\ = (\stage[5][44]~383_combout\) # ((!\B[4]~input_o\ & ((\stage[4][44]~384_combout\) # (\stage[4][44]~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][44]~384_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][44]~385_combout\,
	datad => \stage[5][44]~383_combout\,
	combout => \stage[5][44]~386_combout\);

-- Location: LCCOMB_X69_Y58_N4
\stage[4][28]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][28]~381_combout\ = (\B[2]~input_o\ & ((\stage[2][40]~111_combout\) # ((\stage[2][40]~110_combout\)))) # (!\B[2]~input_o\ & (((\stage[2][36]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][40]~111_combout\,
	datac => \stage[2][40]~110_combout\,
	datad => \stage[2][36]~115_combout\,
	combout => \stage[4][28]~381_combout\);

-- Location: LCCOMB_X69_Y58_N30
\stage[4][28]~491\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][28]~491_combout\ = (\B[3]~input_o\ & (((\stage[4][28]~381_combout\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\stage[2][32]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[4][28]~381_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][32]~121_combout\,
	combout => \stage[4][28]~491_combout\);

-- Location: LCCOMB_X73_Y57_N12
\stage[4][28]~492\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][28]~492_combout\ = (\stage[4][28]~491_combout\) # ((\stage[2][28]~97_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][28]~491_combout\,
	datab => \stage[2][28]~97_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[4][28]~492_combout\);

-- Location: LCCOMB_X73_Y57_N14
\stage[6][12]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][12]~382_combout\ = (\stage[6][63]~78_combout\ & (((!\stage[6][14]~342_combout\ & \stage[3][12]~295_combout\)))) # (!\stage[6][63]~78_combout\ & ((\stage[4][28]~492_combout\) # ((\stage[6][14]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][28]~492_combout\,
	datab => \stage[6][63]~78_combout\,
	datac => \stage[6][14]~342_combout\,
	datad => \stage[3][12]~295_combout\,
	combout => \stage[6][12]~382_combout\);

-- Location: LCCOMB_X73_Y54_N20
\stage[6][12]~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][12]~387_combout\ = (\stage[6][12]~382_combout\ & ((\stage[5][44]~386_combout\) # ((!\stage[6][14]~342_combout\)))) # (!\stage[6][12]~382_combout\ & (((\stage[3][20]~478_combout\ & \stage[6][14]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][44]~386_combout\,
	datab => \stage[3][20]~478_combout\,
	datac => \stage[6][12]~382_combout\,
	datad => \stage[6][14]~342_combout\,
	combout => \stage[6][12]~387_combout\);

-- Location: LCCOMB_X80_Y62_N16
\Y~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = (\Y~175_combout\) # ((\stage[6][12]~387_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~175_combout\,
	datac => \stage[6][12]~387_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~80_combout\);

-- Location: LCCOMB_X70_Y59_N6
\stage[4][29]~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][29]~389_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\stage[2][41]~186_combout\)) # (!\B[3]~input_o\ & ((\stage[2][33]~190_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][41]~186_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][33]~190_combout\,
	combout => \stage[4][29]~389_combout\);

-- Location: LCCOMB_X70_Y59_N14
\stage[4][29]~493\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][29]~493_combout\ = (!\B[2]~input_o\ & (\B[3]~input_o\ & ((\stage[2][37]~181_combout\) # (\stage[2][37]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][37]~181_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][37]~180_combout\,
	combout => \stage[4][29]~493_combout\);

-- Location: LCCOMB_X72_Y59_N28
\stage[4][29]~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][29]~390_combout\ = (\stage[4][29]~389_combout\) # ((\stage[4][29]~493_combout\) # ((\stage[4][24]~122_combout\ & \stage[2][29]~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][29]~389_combout\,
	datab => \stage[4][29]~493_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \stage[2][29]~156_combout\,
	combout => \stage[4][29]~390_combout\);

-- Location: LCCOMB_X72_Y59_N6
\stage[6][13]~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][13]~391_combout\ = (\stage[6][63]~78_combout\ & (((\stage[3][13]~308_combout\ & !\stage[6][14]~342_combout\)))) # (!\stage[6][63]~78_combout\ & ((\stage[4][29]~390_combout\) # ((\stage[6][14]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][63]~78_combout\,
	datab => \stage[4][29]~390_combout\,
	datac => \stage[3][13]~308_combout\,
	datad => \stage[6][14]~342_combout\,
	combout => \stage[6][13]~391_combout\);

-- Location: LCCOMB_X69_Y56_N22
\stage[4][45]~494\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][45]~494_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & ((\stage[2][49]~169_combout\) # (\stage[2][49]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][49]~169_combout\,
	datab => \stage[2][49]~170_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[4][45]~494_combout\);

-- Location: LCCOMB_X70_Y55_N22
\stage[4][45]~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][45]~393_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][57]~176_combout\)) # (!\B[2]~input_o\ & ((\stage[2][53]~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][57]~176_combout\,
	datac => \stage[2][53]~168_combout\,
	datad => \B[3]~input_o\,
	combout => \stage[4][45]~393_combout\);

-- Location: LCCOMB_X70_Y59_N16
\stage[4][45]~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][45]~394_combout\ = (\stage[4][45]~494_combout\) # ((\stage[4][45]~393_combout\) # ((\stage[2][45]~183_combout\ & \stage[4][24]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][45]~183_combout\,
	datab => \stage[4][45]~494_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \stage[4][45]~393_combout\,
	combout => \stage[4][45]~394_combout\);

-- Location: LCCOMB_X72_Y59_N0
\stage[5][45]~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][45]~392_combout\ = (\B[4]~input_o\ & ((\stage[4][24]~122_combout\ & ((\stage[2][61]~174_combout\))) # (!\stage[4][24]~122_combout\ & (\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[2][61]~174_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[5][45]~392_combout\);

-- Location: LCCOMB_X72_Y59_N2
\stage[5][45]~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][45]~395_combout\ = (\stage[5][45]~392_combout\) # ((!\B[4]~input_o\ & \stage[4][45]~394_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \stage[4][45]~394_combout\,
	datad => \stage[5][45]~392_combout\,
	combout => \stage[5][45]~395_combout\);

-- Location: LCCOMB_X72_Y59_N12
\stage[6][13]~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][13]~396_combout\ = (\stage[6][13]~391_combout\ & ((\stage[5][45]~395_combout\) # ((!\stage[6][14]~342_combout\)))) # (!\stage[6][13]~391_combout\ & (((\stage[3][21]~311_combout\ & \stage[6][14]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][13]~391_combout\,
	datab => \stage[5][45]~395_combout\,
	datac => \stage[3][21]~311_combout\,
	datad => \stage[6][14]~342_combout\,
	combout => \stage[6][13]~396_combout\);

-- Location: LCCOMB_X70_Y56_N30
\stage[6][50]~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][50]~388_combout\ = (\stage[6][63]~78_combout\ & ((\stage[4][50]~203_combout\))) # (!\stage[6][63]~78_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fill~1_combout\,
	datac => \stage[4][50]~203_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][50]~388_combout\);

-- Location: LCCOMB_X80_Y62_N20
\Y~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~176_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][50]~388_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \stage[6][50]~388_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~176_combout\);

-- Location: LCCOMB_X80_Y62_N2
\Y~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = (\Y~176_combout\) # ((\stage[6][13]~396_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][13]~396_combout\,
	datab => \Y~176_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~81_combout\);

-- Location: LCCOMB_X73_Y56_N30
\stage[6][49]~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][49]~397_combout\ = (\stage[6][63]~78_combout\ & ((\stage[4][49]~178_combout\))) # (!\stage[6][63]~78_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fill~1_combout\,
	datac => \stage[4][49]~178_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][49]~397_combout\);

-- Location: LCCOMB_X76_Y59_N6
\Y~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~177_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][49]~397_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][49]~397_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Y~177_combout\);

-- Location: LCCOMB_X69_Y54_N4
\stage[5][46]~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][46]~401_combout\ = (!\B[1]~input_o\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ & \stage[1][62]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[1][62]~88_combout\,
	combout => \stage[5][46]~401_combout\);

-- Location: LCCOMB_X69_Y54_N30
\stage[5][46]~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][46]~402_combout\ = (\stage[5][46]~401_combout\) # ((\fill~1_combout\ & ((\B[1]~input_o\) # (!\stage[4][24]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[5][46]~401_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \fill~1_combout\,
	combout => \stage[5][46]~402_combout\);

-- Location: LCCOMB_X69_Y56_N10
\stage[4][46]~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][46]~403_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\stage[2][46]~221_combout\) # (\stage[2][46]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][46]~221_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][46]~220_combout\,
	combout => \stage[4][46]~403_combout\);

-- Location: LCCOMB_X69_Y54_N0
\stage[4][46]~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][46]~404_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][58]~200_combout\))) # (!\B[2]~input_o\ & (\stage[2][54]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][54]~195_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][58]~200_combout\,
	combout => \stage[4][46]~404_combout\);

-- Location: LCCOMB_X69_Y56_N28
\stage[4][46]~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][46]~405_combout\ = (\stage[4][46]~403_combout\) # ((\stage[4][46]~404_combout\) # ((\stage[2][50]~197_combout\ & \stage[6][7]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][46]~403_combout\,
	datab => \stage[2][50]~197_combout\,
	datac => \stage[6][7]~179_combout\,
	datad => \stage[4][46]~404_combout\,
	combout => \stage[4][46]~405_combout\);

-- Location: LCCOMB_X69_Y54_N2
\stage[5][46]~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][46]~406_combout\ = (\B[4]~input_o\ & (\stage[5][46]~402_combout\)) # (!\B[4]~input_o\ & ((\stage[4][46]~405_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][46]~402_combout\,
	datab => \stage[4][46]~405_combout\,
	datac => \B[4]~input_o\,
	combout => \stage[5][46]~406_combout\);

-- Location: LCCOMB_X69_Y56_N30
\stage[4][30]~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][30]~398_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][42]~225_combout\)) # (!\B[2]~input_o\ & ((\stage[2][38]~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \stage[2][42]~225_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[2][38]~216_combout\,
	combout => \stage[4][30]~398_combout\);

-- Location: LCCOMB_X69_Y56_N0
\stage[4][30]~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][30]~399_combout\ = (\stage[4][30]~398_combout\) # ((\stage[3][30]~322_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][30]~322_combout\,
	datab => \B[3]~input_o\,
	datac => \stage[4][30]~398_combout\,
	combout => \stage[4][30]~399_combout\);

-- Location: LCCOMB_X75_Y56_N16
\stage[6][14]~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][14]~400_combout\ = (\stage[6][14]~342_combout\ & (!\stage[6][63]~78_combout\)) # (!\stage[6][14]~342_combout\ & ((\stage[6][63]~78_combout\ & ((\stage[3][14]~319_combout\))) # (!\stage[6][63]~78_combout\ & (\stage[4][30]~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~342_combout\,
	datab => \stage[6][63]~78_combout\,
	datac => \stage[4][30]~399_combout\,
	datad => \stage[3][14]~319_combout\,
	combout => \stage[6][14]~400_combout\);

-- Location: LCCOMB_X75_Y56_N2
\stage[6][14]~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][14]~407_combout\ = (\stage[6][14]~342_combout\ & ((\stage[6][14]~400_combout\ & (\stage[5][46]~406_combout\)) # (!\stage[6][14]~400_combout\ & ((\stage[3][22]~323_combout\))))) # (!\stage[6][14]~342_combout\ & (((\stage[6][14]~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~342_combout\,
	datab => \stage[5][46]~406_combout\,
	datac => \stage[3][22]~323_combout\,
	datad => \stage[6][14]~400_combout\,
	combout => \stage[6][14]~407_combout\);

-- Location: LCCOMB_X76_Y59_N2
\Y~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = (\Y~177_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][14]~407_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~177_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \stage[6][14]~407_combout\,
	combout => \Y~82_combout\);

-- Location: LCCOMB_X70_Y58_N22
\stage[6][48]~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][48]~408_combout\ = (\stage[6][63]~78_combout\ & ((\stage[4][48]~93_combout\))) # (!\stage[6][63]~78_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fill~1_combout\,
	datac => \stage[6][63]~78_combout\,
	datad => \stage[4][48]~93_combout\,
	combout => \stage[6][48]~408_combout\);

-- Location: LCCOMB_X73_Y60_N10
\Y~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~178_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][48]~408_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][48]~408_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Y~178_combout\);

-- Location: LCCOMB_X73_Y58_N8
\stage[4][31]~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][31]~410_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\stage[2][43]~258_combout\))) # (!\B[2]~input_o\ & (\stage[2][39]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][39]~261_combout\,
	datad => \stage[2][43]~258_combout\,
	combout => \stage[4][31]~410_combout\);

-- Location: LCCOMB_X73_Y58_N22
\stage[4][31]~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][31]~409_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & ((\stage[2][35]~253_combout\) # (\stage[2][35]~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \stage[2][35]~253_combout\,
	datad => \stage[2][35]~252_combout\,
	combout => \stage[4][31]~409_combout\);

-- Location: LCCOMB_X73_Y58_N2
\stage[4][31]~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][31]~411_combout\ = (\stage[4][31]~410_combout\) # ((\stage[4][31]~409_combout\) # ((\stage[4][24]~122_combout\ & \stage[2][31]~265_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][24]~122_combout\,
	datab => \stage[4][31]~410_combout\,
	datac => \stage[4][31]~409_combout\,
	datad => \stage[2][31]~265_combout\,
	combout => \stage[4][31]~411_combout\);

-- Location: LCCOMB_X74_Y58_N4
\stage[6][15]~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][15]~412_combout\ = (\stage[6][63]~78_combout\ & (((!\stage[6][14]~342_combout\ & \stage[3][15]~335_combout\)))) # (!\stage[6][63]~78_combout\ & ((\stage[4][31]~411_combout\) # ((\stage[6][14]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][31]~411_combout\,
	datab => \stage[6][63]~78_combout\,
	datac => \stage[6][14]~342_combout\,
	datad => \stage[3][15]~335_combout\,
	combout => \stage[6][15]~412_combout\);

-- Location: LCCOMB_X74_Y58_N30
\stage[5][47]~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][47]~413_combout\ = (\B[4]~input_o\ & ((\stage[4][63]~79_combout\ & ((\fill~1_combout\))) # (!\stage[4][63]~79_combout\ & (\A_rev[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[63]~1_combout\,
	datab => \stage[4][63]~79_combout\,
	datac => \fill~1_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[5][47]~413_combout\);

-- Location: LCCOMB_X70_Y57_N4
\stage[4][47]~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][47]~415_combout\ = (\B[2]~input_o\ & (\B[3]~input_o\ & ((\stage[2][59]~249_combout\) # (\stage[2][59]~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][59]~249_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][59]~248_combout\,
	combout => \stage[4][47]~415_combout\);

-- Location: LCCOMB_X73_Y55_N26
\stage[4][47]~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][47]~414_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\stage[2][51]~245_combout\)) # (!\B[2]~input_o\ & ((\stage[2][47]~256_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][51]~245_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[2][47]~256_combout\,
	combout => \stage[4][47]~414_combout\);

-- Location: LCCOMB_X73_Y55_N20
\stage[4][47]~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][47]~416_combout\ = (\stage[4][47]~415_combout\) # ((\stage[4][47]~414_combout\) # ((\stage[4][16]~109_combout\ & \stage[2][55]~243_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][16]~109_combout\,
	datab => \stage[4][47]~415_combout\,
	datac => \stage[4][47]~414_combout\,
	datad => \stage[2][55]~243_combout\,
	combout => \stage[4][47]~416_combout\);

-- Location: LCCOMB_X74_Y58_N0
\stage[5][47]~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[5][47]~417_combout\ = (\stage[5][47]~413_combout\) # ((\stage[4][47]~416_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][47]~413_combout\,
	datab => \stage[4][47]~416_combout\,
	datac => \B[4]~input_o\,
	combout => \stage[5][47]~417_combout\);

-- Location: LCCOMB_X74_Y58_N18
\stage[6][15]~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][15]~418_combout\ = (\stage[6][15]~412_combout\ & (((\stage[5][47]~417_combout\) # (!\stage[6][14]~342_combout\)))) # (!\stage[6][15]~412_combout\ & (\stage[3][23]~338_combout\ & (\stage[6][14]~342_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][23]~338_combout\,
	datab => \stage[6][15]~412_combout\,
	datac => \stage[6][14]~342_combout\,
	datad => \stage[5][47]~417_combout\,
	combout => \stage[6][15]~418_combout\);

-- Location: LCCOMB_X73_Y60_N14
\Y~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = (\Y~178_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][15]~418_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~178_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \stage[6][15]~418_combout\,
	combout => \Y~83_combout\);

-- Location: LCCOMB_X74_Y58_N22
\stage[6][47]~495\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][47]~495_combout\ = (\ExtWord~input_o\ & (\stage[5][47]~417_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\fill~1_combout\))) # (!\B[5]~input_o\ & (\stage[5][47]~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][47]~417_combout\,
	datab => \ExtWord~input_o\,
	datac => \fill~1_combout\,
	datad => \B[5]~input_o\,
	combout => \stage[6][47]~495_combout\);

-- Location: LCCOMB_X74_Y61_N6
\Y~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~179_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][47]~495_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \stage[6][47]~495_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~179_combout\);

-- Location: LCCOMB_X70_Y58_N8
\stage[6][16]~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][16]~419_combout\ = (\B[4]~input_o\ & (((\shamt[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\shamt[5]~0_combout\ & (\stage[4][48]~93_combout\)) # (!\shamt[5]~0_combout\ & ((\stage[4][16]~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][48]~93_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[4][16]~107_combout\,
	combout => \stage[6][16]~419_combout\);

-- Location: LCCOMB_X70_Y58_N18
\stage[6][16]~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][16]~420_combout\ = (\B[4]~input_o\ & ((\stage[6][16]~419_combout\ & (\fill~1_combout\)) # (!\stage[6][16]~419_combout\ & ((\stage[4][32]~123_combout\))))) # (!\B[4]~input_o\ & (\stage[6][16]~419_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[6][16]~419_combout\,
	datac => \fill~1_combout\,
	datad => \stage[4][32]~123_combout\,
	combout => \stage[6][16]~420_combout\);

-- Location: LCCOMB_X74_Y61_N0
\Y~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = (\Y~179_combout\) # ((\stage[6][16]~420_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~179_combout\,
	datab => \stage[6][16]~420_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~84_combout\);

-- Location: LCCOMB_X75_Y56_N28
\stage[6][46]~496\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][46]~496_combout\ = (\ExtWord~input_o\ & (((\stage[5][46]~406_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\fill~1_combout\)) # (!\B[5]~input_o\ & ((\stage[5][46]~406_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \fill~1_combout\,
	datac => \stage[5][46]~406_combout\,
	datad => \B[5]~input_o\,
	combout => \stage[6][46]~496_combout\);

-- Location: LCCOMB_X72_Y60_N16
\Y~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~180_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][46]~496_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \stage[6][46]~496_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~180_combout\);

-- Location: LCCOMB_X73_Y56_N24
\stage[6][17]~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][17]~421_combout\ = (\B[4]~input_o\ & (((\shamt[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\shamt[5]~0_combout\ & (\stage[4][49]~178_combout\)) # (!\shamt[5]~0_combout\ & ((\stage[4][17]~165_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][49]~178_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[4][17]~165_combout\,
	combout => \stage[6][17]~421_combout\);

-- Location: LCCOMB_X73_Y56_N2
\stage[6][17]~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][17]~422_combout\ = (\B[4]~input_o\ & ((\stage[6][17]~421_combout\ & (\fill~1_combout\)) # (!\stage[6][17]~421_combout\ & ((\stage[4][33]~191_combout\))))) # (!\B[4]~input_o\ & (((\stage[6][17]~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \fill~1_combout\,
	datac => \stage[4][33]~191_combout\,
	datad => \stage[6][17]~421_combout\,
	combout => \stage[6][17]~422_combout\);

-- Location: LCCOMB_X72_Y60_N28
\Y~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = (\Y~180_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][17]~422_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~180_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \stage[6][17]~422_combout\,
	combout => \Y~85_combout\);

-- Location: LCCOMB_X70_Y56_N16
\stage[6][18]~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][18]~423_combout\ = (\shamt[5]~0_combout\ & ((\stage[4][50]~203_combout\) # ((\B[4]~input_o\)))) # (!\shamt[5]~0_combout\ & (((!\B[4]~input_o\ & \stage[4][18]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[4][50]~203_combout\,
	datac => \B[4]~input_o\,
	datad => \stage[4][18]~213_combout\,
	combout => \stage[6][18]~423_combout\);

-- Location: LCCOMB_X70_Y56_N10
\stage[6][18]~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][18]~424_combout\ = (\stage[6][18]~423_combout\ & (((\fill~1_combout\) # (!\B[4]~input_o\)))) # (!\stage[6][18]~423_combout\ & (\stage[4][34]~227_combout\ & (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][34]~227_combout\,
	datab => \stage[6][18]~423_combout\,
	datac => \B[4]~input_o\,
	datad => \fill~1_combout\,
	combout => \stage[6][18]~424_combout\);

-- Location: LCCOMB_X72_Y59_N4
\stage[6][45]~497\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][45]~497_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\stage[5][45]~395_combout\))) # (!\ExtWord~input_o\ & (\fill~1_combout\)))) # (!\B[5]~input_o\ & (((\stage[5][45]~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[5][45]~395_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][45]~497_combout\);

-- Location: LCCOMB_X72_Y60_N10
\Y~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~181_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][45]~497_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \stage[6][45]~497_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~181_combout\);

-- Location: LCCOMB_X72_Y60_N14
\Y~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = (\Y~181_combout\) # ((\stage[6][18]~424_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][18]~424_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~181_combout\,
	combout => \Y~86_combout\);

-- Location: LCCOMB_X73_Y54_N18
\stage[6][44]~498\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][44]~498_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\stage[5][44]~386_combout\)) # (!\ExtWord~input_o\ & ((\fill~1_combout\))))) # (!\B[5]~input_o\ & (\stage[5][44]~386_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][44]~386_combout\,
	datab => \B[5]~input_o\,
	datac => \fill~1_combout\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][44]~498_combout\);

-- Location: LCCOMB_X73_Y54_N12
\Y~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~182_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][44]~498_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \stage[6][44]~498_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Y~182_combout\);

-- Location: LCCOMB_X73_Y54_N22
\stage[6][19]~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][19]~425_combout\ = (\shamt[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][35]~262_combout\)) # (!\B[4]~input_o\ & ((\stage[4][19]~274_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][35]~262_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \stage[4][19]~274_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[6][19]~425_combout\);

-- Location: LCCOMB_X73_Y54_N16
\stage[6][19]~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][19]~426_combout\ = (\stage[6][19]~425_combout\ & ((\fill~1_combout\) # ((!\shamt[5]~0_combout\)))) # (!\stage[6][19]~425_combout\ & (((\shamt[5]~0_combout\ & \stage[4][51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][19]~425_combout\,
	datab => \fill~1_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[4][51]~251_combout\,
	combout => \stage[6][19]~426_combout\);

-- Location: LCCOMB_X73_Y54_N2
\Y~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = (\Y~182_combout\) # ((\stage[6][19]~426_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~182_combout\,
	datab => \stage[6][19]~426_combout\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Y~87_combout\);

-- Location: LCCOMB_X70_Y54_N10
\stage[6][20]~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][20]~427_combout\ = (\shamt[5]~0_combout\ & (((\stage[4][52]~290_combout\) # (\B[4]~input_o\)))) # (!\shamt[5]~0_combout\ & (\stage[4][20]~298_combout\ & ((!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][20]~298_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \stage[4][52]~290_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[6][20]~427_combout\);

-- Location: LCCOMB_X70_Y54_N20
\stage[6][20]~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][20]~428_combout\ = (\B[4]~input_o\ & ((\stage[6][20]~427_combout\ & ((\fill~1_combout\))) # (!\stage[6][20]~427_combout\ & (\stage[4][36]~292_combout\)))) # (!\B[4]~input_o\ & (((\stage[6][20]~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][36]~292_combout\,
	datab => \B[4]~input_o\,
	datac => \fill~1_combout\,
	datad => \stage[6][20]~427_combout\,
	combout => \stage[6][20]~428_combout\);

-- Location: LCCOMB_X74_Y54_N30
\stage[6][43]~499\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][43]~499_combout\ = (\ExtWord~input_o\ & (\stage[5][43]~378_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\fill~1_combout\))) # (!\B[5]~input_o\ & (\stage[5][43]~378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][43]~378_combout\,
	datab => \fill~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \stage[6][43]~499_combout\);

-- Location: LCCOMB_X74_Y54_N8
\Y~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~183_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][43]~499_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][43]~499_combout\,
	datab => \A[20]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~183_combout\);

-- Location: LCCOMB_X74_Y54_N26
\Y~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = (\Y~183_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][20]~428_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][20]~428_combout\,
	datac => \Y~183_combout\,
	combout => \Y~88_combout\);

-- Location: LCCOMB_X77_Y59_N22
\stage[6][21]~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][21]~429_combout\ = (\B[4]~input_o\ & ((\stage[4][37]~305_combout\) # ((\shamt[5]~0_combout\)))) # (!\B[4]~input_o\ & (((\stage[4][21]~312_combout\ & !\shamt[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][37]~305_combout\,
	datac => \stage[4][21]~312_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][21]~429_combout\);

-- Location: LCCOMB_X77_Y59_N24
\stage[6][21]~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][21]~430_combout\ = (\stage[6][21]~429_combout\ & (((\fill~1_combout\) # (!\shamt[5]~0_combout\)))) # (!\stage[6][21]~429_combout\ & (\stage[4][53]~303_combout\ & ((\shamt[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][21]~429_combout\,
	datab => \stage[4][53]~303_combout\,
	datac => \fill~1_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][21]~430_combout\);

-- Location: LCCOMB_X75_Y56_N22
\stage[6][42]~500\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][42]~500_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\stage[5][42]~369_combout\)) # (!\ExtWord~input_o\ & ((\fill~1_combout\))))) # (!\B[5]~input_o\ & (\stage[5][42]~369_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \stage[5][42]~369_combout\,
	datac => \ExtWord~input_o\,
	datad => \fill~1_combout\,
	combout => \stage[6][42]~500_combout\);

-- Location: LCCOMB_X77_Y59_N6
\Y~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~184_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][42]~500_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][42]~500_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~184_combout\);

-- Location: LCCOMB_X77_Y59_N2
\Y~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = (\Y~184_combout\) # ((\stage[6][21]~430_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][21]~430_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~184_combout\,
	combout => \Y~89_combout\);

-- Location: LCCOMB_X74_Y54_N18
\stage[6][41]~501\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][41]~501_combout\ = (\ExtWord~input_o\ & (\stage[5][41]~359_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\fill~1_combout\))) # (!\B[5]~input_o\ & (\stage[5][41]~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][41]~359_combout\,
	datab => \fill~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \stage[6][41]~501_combout\);

-- Location: LCCOMB_X74_Y54_N12
\Y~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~185_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][41]~501_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \stage[6][41]~501_combout\,
	datac => \A[22]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~185_combout\);

-- Location: LCCOMB_X70_Y54_N6
\stage[4][38]~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][38]~431_combout\ = (\stage[4][38]~317_combout\) # (\stage[4][38]~316_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[4][38]~317_combout\,
	datac => \stage[4][38]~316_combout\,
	combout => \stage[4][38]~431_combout\);

-- Location: LCCOMB_X70_Y54_N24
\stage[6][22]~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][22]~432_combout\ = (\shamt[5]~0_combout\ & ((\stage[4][54]~483_combout\) # ((\B[4]~input_o\)))) # (!\shamt[5]~0_combout\ & (((!\B[4]~input_o\ & \stage[4][22]~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][54]~483_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \stage[4][22]~324_combout\,
	combout => \stage[6][22]~432_combout\);

-- Location: LCCOMB_X70_Y54_N18
\stage[6][22]~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][22]~433_combout\ = (\B[4]~input_o\ & ((\stage[6][22]~432_combout\ & ((\fill~1_combout\))) # (!\stage[6][22]~432_combout\ & (\stage[4][38]~431_combout\)))) # (!\B[4]~input_o\ & (((\stage[6][22]~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][38]~431_combout\,
	datab => \B[4]~input_o\,
	datac => \fill~1_combout\,
	datad => \stage[6][22]~432_combout\,
	combout => \stage[6][22]~433_combout\);

-- Location: LCCOMB_X74_Y54_N4
\Y~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = (\Y~185_combout\) # ((\stage[6][22]~433_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~185_combout\,
	datab => \stage[6][22]~433_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~90_combout\);

-- Location: LCCOMB_X76_Y58_N26
\stage[6][23]~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][23]~434_combout\ = (\shamt[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\stage[4][39]~332_combout\))) # (!\B[4]~input_o\ & (\stage[4][23]~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][23]~339_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \stage[4][39]~332_combout\,
	combout => \stage[6][23]~434_combout\);

-- Location: LCCOMB_X76_Y58_N12
\stage[6][23]~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][23]~435_combout\ = (\stage[6][23]~434_combout\ & (((\fill~1_combout\) # (!\shamt[5]~0_combout\)))) # (!\stage[6][23]~434_combout\ & (\stage[4][55]~329_combout\ & ((\shamt[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][55]~329_combout\,
	datab => \fill~1_combout\,
	datac => \stage[6][23]~434_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][23]~435_combout\);

-- Location: LCCOMB_X75_Y58_N12
\stage[6][40]~502\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][40]~502_combout\ = (\ExtWord~input_o\ & (\stage[5][40]~349_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\fill~1_combout\))) # (!\B[5]~input_o\ & (\stage[5][40]~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][40]~349_combout\,
	datab => \ExtWord~input_o\,
	datac => \fill~1_combout\,
	datad => \B[5]~input_o\,
	combout => \stage[6][40]~502_combout\);

-- Location: LCCOMB_X76_Y58_N4
\Y~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~186_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][40]~502_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][40]~502_combout\,
	datab => \A[23]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~186_combout\);

-- Location: LCCOMB_X76_Y58_N6
\Y~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = (\Y~186_combout\) # ((\stage[6][23]~435_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][23]~435_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y~186_combout\,
	combout => \Y~91_combout\);

-- Location: LCCOMB_X70_Y58_N28
\stage[6][24]~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][24]~437_combout\ = (\shamt[5]~0_combout\ & ((\stage[5][59]~285_combout\ & ((\fill~1_combout\))) # (!\stage[5][59]~285_combout\ & (\stage[3][56]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[3][56]~92_combout\,
	datac => \fill~1_combout\,
	datad => \stage[5][59]~285_combout\,
	combout => \stage[6][24]~437_combout\);

-- Location: LCCOMB_X70_Y58_N14
\stage[6][24]~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][24]~438_combout\ = (\stage[6][24]~437_combout\) # ((\B[4]~input_o\ & (\stage[4][40]~348_combout\ & !\shamt[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][40]~348_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[6][24]~437_combout\,
	combout => \stage[6][24]~438_combout\);

-- Location: LCCOMB_X70_Y58_N24
\stage[6][24]~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][24]~439_combout\ = (\stage[6][24]~438_combout\) # ((\stage[4][24]~344_combout\ & \stage[6][63]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][24]~344_combout\,
	datab => \stage[6][63]~78_combout\,
	datac => \stage[6][24]~438_combout\,
	combout => \stage[6][24]~439_combout\);

-- Location: LCCOMB_X76_Y58_N0
\stage[6][39]~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][39]~436_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][55]~329_combout\)) # (!\B[4]~input_o\ & ((\stage[4][39]~332_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][55]~329_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \stage[4][39]~332_combout\,
	combout => \stage[6][39]~436_combout\);

-- Location: LCCOMB_X76_Y58_N22
\stage[6][39]~503\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][39]~503_combout\ = (\stage[6][39]~436_combout\) # ((!\ExtWord~input_o\ & (\fill~1_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \stage[6][39]~436_combout\,
	datac => \fill~1_combout\,
	datad => \B[5]~input_o\,
	combout => \stage[6][39]~503_combout\);

-- Location: LCCOMB_X75_Y58_N6
\Y~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~187_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][39]~503_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[24]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \stage[6][39]~503_combout\,
	combout => \Y~187_combout\);

-- Location: LCCOMB_X75_Y58_N14
\Y~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = (\Y~187_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][24]~439_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][24]~439_combout\,
	datad => \Y~187_combout\,
	combout => \Y~92_combout\);

-- Location: LCCOMB_X70_Y54_N12
\stage[6][38]~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][38]~440_combout\ = (\shamt[5]~0_combout\ & (((\fill~1_combout\)))) # (!\shamt[5]~0_combout\ & (\stage[4][54]~483_combout\ & (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][54]~483_combout\,
	datab => \B[4]~input_o\,
	datac => \fill~1_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][38]~440_combout\);

-- Location: LCCOMB_X70_Y54_N2
\stage[6][38]~504\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][38]~504_combout\ = (\stage[6][38]~440_combout\) # ((\stage[6][63]~78_combout\ & ((\stage[4][38]~316_combout\) # (\stage[4][38]~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][38]~316_combout\,
	datab => \stage[4][38]~317_combout\,
	datac => \stage[6][63]~78_combout\,
	datad => \stage[6][38]~440_combout\,
	combout => \stage[6][38]~504_combout\);

-- Location: LCCOMB_X74_Y61_N8
\Y~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~188_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][38]~504_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][38]~504_combout\,
	datab => \A[25]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~188_combout\);

-- Location: LCCOMB_X74_Y55_N14
\stage[6][25]~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][25]~441_combout\ = (\shamt[5]~0_combout\ & ((\stage[5][59]~285_combout\ & ((\fill~1_combout\))) # (!\stage[5][59]~285_combout\ & (\stage[3][57]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][57]~177_combout\,
	datab => \stage[5][59]~285_combout\,
	datac => \fill~1_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][25]~441_combout\);

-- Location: LCCOMB_X74_Y55_N8
\stage[6][25]~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][25]~442_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][41]~358_combout\)) # (!\B[4]~input_o\ & ((\stage[4][25]~354_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[4][41]~358_combout\,
	datac => \stage[4][25]~354_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[6][25]~442_combout\);

-- Location: LCCOMB_X74_Y55_N20
\Y~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~189_combout\ = (\Y~188_combout\) # ((\ShiftFN[1]~input_o\ & ((\stage[6][25]~441_combout\) # (\stage[6][25]~442_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \stage[6][25]~441_combout\,
	datac => \stage[6][25]~442_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~189_combout\);

-- Location: LCCOMB_X77_Y56_N26
\stage[6][26]~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][26]~447_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\stage[4][42]~368_combout\))) # (!\B[4]~input_o\ & (\stage[4][26]~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][26]~363_combout\,
	datad => \stage[4][42]~368_combout\,
	combout => \stage[6][26]~447_combout\);

-- Location: LCCOMB_X77_Y59_N20
\stage[6][37]~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][37]~444_combout\ = (\shamt[5]~0_combout\ & (((\fill~1_combout\)))) # (!\shamt[5]~0_combout\ & (\B[4]~input_o\ & (\stage[4][53]~303_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][53]~303_combout\,
	datac => \fill~1_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][37]~444_combout\);

-- Location: LCCOMB_X77_Y56_N30
\stage[6][37]~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][37]~445_combout\ = (\stage[6][37]~444_combout\) # ((\stage[4][37]~305_combout\ & \stage[6][63]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][37]~305_combout\,
	datac => \stage[6][63]~78_combout\,
	datad => \stage[6][37]~444_combout\,
	combout => \stage[6][37]~445_combout\);

-- Location: LCCOMB_X77_Y56_N18
\Y~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~190_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][37]~445_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \stage[6][37]~445_combout\,
	datad => \A[26]~input_o\,
	combout => \Y~190_combout\);

-- Location: LCCOMB_X77_Y56_N16
\stage[6][26]~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][26]~446_combout\ = (\shamt[5]~0_combout\ & ((\stage[5][59]~285_combout\ & ((\fill~1_combout\))) # (!\stage[5][59]~285_combout\ & (\stage[3][58]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][59]~285_combout\,
	datab => \stage[3][58]~202_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \fill~1_combout\,
	combout => \stage[6][26]~446_combout\);

-- Location: LCCOMB_X77_Y56_N12
\Y~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~191_combout\ = (\Y~190_combout\) # ((\ShiftFN[1]~input_o\ & ((\stage[6][26]~447_combout\) # (\stage[6][26]~446_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][26]~447_combout\,
	datab => \Y~190_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \stage[6][26]~446_combout\,
	combout => \Y~191_combout\);

-- Location: LCCOMB_X74_Y55_N28
\stage[6][27]~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][27]~450_combout\ = (\shamt[5]~0_combout\ & ((\stage[5][59]~285_combout\ & (\fill~1_combout\)) # (!\stage[5][59]~285_combout\ & ((\stage[3][59]~250_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \fill~1_combout\,
	datac => \stage[3][59]~250_combout\,
	datad => \stage[5][59]~285_combout\,
	combout => \stage[6][27]~450_combout\);

-- Location: LCCOMB_X74_Y55_N22
\stage[6][27]~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][27]~451_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\stage[4][43]~377_combout\))) # (!\B[4]~input_o\ & (\stage[4][27]~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][27]~373_combout\,
	datad => \stage[4][43]~377_combout\,
	combout => \stage[6][27]~451_combout\);

-- Location: LCCOMB_X70_Y54_N30
\stage[6][36]~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][36]~449_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][52]~290_combout\)) # (!\B[4]~input_o\ & ((\stage[4][36]~292_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][52]~290_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][36]~292_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \stage[6][36]~449_combout\);

-- Location: LCCOMB_X70_Y54_N28
\stage[6][36]~505\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][36]~505_combout\ = (\stage[6][36]~449_combout\) # ((\fill~1_combout\ & (!\ExtWord~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][36]~449_combout\,
	datab => \fill~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \stage[6][36]~505_combout\);

-- Location: LCCOMB_X75_Y58_N16
\Y~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~192_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][36]~505_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[27]~input_o\,
	datac => \stage[6][36]~505_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~192_combout\);

-- Location: LCCOMB_X74_Y55_N6
\Y~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~193_combout\ = (\Y~192_combout\) # ((\ShiftFN[1]~input_o\ & ((\stage[6][27]~450_combout\) # (\stage[6][27]~451_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][27]~450_combout\,
	datac => \stage[6][27]~451_combout\,
	datad => \Y~192_combout\,
	combout => \Y~193_combout\);

-- Location: LCCOMB_X73_Y54_N28
\stage[6][35]~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][35]~453_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\stage[4][51]~251_combout\))) # (!\B[4]~input_o\ & (\stage[4][35]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \stage[4][35]~262_combout\,
	datad => \stage[4][51]~251_combout\,
	combout => \stage[6][35]~453_combout\);

-- Location: LCCOMB_X75_Y58_N10
\stage[6][35]~506\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][35]~506_combout\ = (\stage[6][35]~453_combout\) # ((!\ExtWord~input_o\ & (\fill~1_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][35]~453_combout\,
	datab => \ExtWord~input_o\,
	datac => \fill~1_combout\,
	datad => \B[5]~input_o\,
	combout => \stage[6][35]~506_combout\);

-- Location: LCCOMB_X80_Y62_N6
\Y~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~194_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][35]~506_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][35]~506_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[28]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~194_combout\);

-- Location: LCCOMB_X74_Y55_N2
\stage[6][28]~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][28]~454_combout\ = (\B[4]~input_o\ & (((\fill~1_combout\)))) # (!\B[4]~input_o\ & ((\stage[4][24]~122_combout\ & ((\stage[2][60]~89_combout\))) # (!\stage[4][24]~122_combout\ & (\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][24]~122_combout\,
	datac => \fill~1_combout\,
	datad => \stage[2][60]~89_combout\,
	combout => \stage[6][28]~454_combout\);

-- Location: LCCOMB_X74_Y58_N20
\stage[6][28]~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][28]~455_combout\ = (\stage[4][28]~492_combout\ & ((\stage[6][63]~78_combout\) # ((\shamt[5]~0_combout\ & \stage[6][28]~454_combout\)))) # (!\stage[4][28]~492_combout\ & (\shamt[5]~0_combout\ & (\stage[6][28]~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][28]~492_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \stage[6][28]~454_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][28]~455_combout\);

-- Location: LCCOMB_X74_Y58_N6
\stage[6][32]~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][32]~456_combout\ = (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \stage[6][32]~456_combout\);

-- Location: LCCOMB_X74_Y58_N24
\stage[6][28]~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][28]~457_combout\ = (\stage[6][28]~455_combout\) # ((\stage[6][32]~456_combout\ & ((\stage[4][44]~385_combout\) # (\stage[4][44]~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][44]~385_combout\,
	datab => \stage[6][28]~455_combout\,
	datac => \stage[4][44]~384_combout\,
	datad => \stage[6][32]~456_combout\,
	combout => \stage[6][28]~457_combout\);

-- Location: LCCOMB_X80_Y62_N4
\Y~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = (\Y~194_combout\) # ((\stage[6][28]~457_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~194_combout\,
	datab => \stage[6][28]~457_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~93_combout\);

-- Location: LCCOMB_X72_Y59_N14
\stage[6][29]~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][29]~459_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\stage[4][45]~394_combout\)) # (!\B[4]~input_o\ & ((\stage[4][29]~390_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shamt[5]~0_combout\,
	datac => \stage[4][45]~394_combout\,
	datad => \stage[4][29]~390_combout\,
	combout => \stage[6][29]~459_combout\);

-- Location: LCCOMB_X72_Y59_N24
\stage[6][29]~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][29]~460_combout\ = (\stage[4][24]~122_combout\ & ((\B[4]~input_o\ & (\fill~1_combout\)) # (!\B[4]~input_o\ & ((\stage[2][61]~174_combout\))))) # (!\stage[4][24]~122_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[2][61]~174_combout\,
	datac => \stage[4][24]~122_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[6][29]~460_combout\);

-- Location: LCCOMB_X73_Y61_N2
\stage[6][29]~508\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][29]~508_combout\ = (\stage[6][29]~459_combout\) # ((\stage[6][29]~460_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][29]~459_combout\,
	datab => \stage[6][29]~460_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][29]~508_combout\);

-- Location: LCCOMB_X70_Y56_N28
\stage[6][34]~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][34]~458_combout\ = (\shamt[5]~0_combout\ & (((\fill~1_combout\)))) # (!\shamt[5]~0_combout\ & (\stage[4][50]~203_combout\ & (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[4][50]~203_combout\,
	datac => \B[4]~input_o\,
	datad => \fill~1_combout\,
	combout => \stage[6][34]~458_combout\);

-- Location: LCCOMB_X70_Y56_N6
\stage[6][34]~507\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][34]~507_combout\ = (\stage[6][34]~458_combout\) # ((\stage[6][63]~78_combout\ & ((\stage[4][34]~226_combout\) # (\stage[4][34]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][34]~226_combout\,
	datab => \stage[6][34]~458_combout\,
	datac => \stage[4][34]~219_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][34]~507_combout\);

-- Location: LCCOMB_X74_Y61_N2
\Y~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~195_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][34]~507_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][34]~507_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Y~195_combout\);

-- Location: LCCOMB_X74_Y61_N10
\Y~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = (\Y~195_combout\) # ((\stage[6][29]~508_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][29]~508_combout\,
	datab => \Y~195_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~94_combout\);

-- Location: LCCOMB_X70_Y54_N22
\stage[6][30]~509\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][30]~509_combout\ = (\stage[4][46]~405_combout\ & (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][46]~405_combout\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \stage[6][30]~509_combout\);

-- Location: LCCOMB_X70_Y57_N6
\stage[6][30]~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][30]~463_combout\ = (\shamt[5]~0_combout\ & ((\stage[5][62]~138_combout\ & (\fill~1_combout\)) # (!\stage[5][62]~138_combout\ & ((\stage[1][62]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[5][62]~138_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \fill~1_combout\,
	datad => \stage[1][62]~88_combout\,
	combout => \stage[6][30]~463_combout\);

-- Location: LCCOMB_X70_Y54_N8
\stage[6][30]~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][30]~464_combout\ = (\stage[6][30]~509_combout\) # ((\stage[6][30]~463_combout\) # ((\stage[6][63]~78_combout\ & \stage[4][30]~399_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][30]~509_combout\,
	datab => \stage[6][30]~463_combout\,
	datac => \stage[6][63]~78_combout\,
	datad => \stage[4][30]~399_combout\,
	combout => \stage[6][30]~464_combout\);

-- Location: LCCOMB_X73_Y56_N4
\stage[6][33]~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][33]~461_combout\ = (\shamt[5]~0_combout\ & (((\fill~1_combout\)))) # (!\shamt[5]~0_combout\ & (\B[4]~input_o\ & (\stage[4][49]~178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[4][49]~178_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \fill~1_combout\,
	combout => \stage[6][33]~461_combout\);

-- Location: LCCOMB_X73_Y56_N22
\stage[6][33]~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][33]~462_combout\ = (\stage[6][33]~461_combout\) # ((\stage[4][33]~191_combout\ & \stage[6][63]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][33]~461_combout\,
	datac => \stage[4][33]~191_combout\,
	datad => \stage[6][63]~78_combout\,
	combout => \stage[6][33]~462_combout\);

-- Location: LCCOMB_X77_Y56_N6
\Y~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~196_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][33]~462_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][33]~462_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[30]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~196_combout\);

-- Location: LCCOMB_X77_Y56_N14
\Y~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~95_combout\ = (\Y~196_combout\) # ((\stage[6][30]~464_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][30]~464_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~196_combout\,
	combout => \Y~95_combout\);

-- Location: LCCOMB_X74_Y58_N10
\stage[6][31]~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][31]~467_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\stage[4][47]~416_combout\))) # (!\B[4]~input_o\ & (\stage[4][31]~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][31]~411_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \stage[4][47]~416_combout\,
	combout => \stage[6][31]~467_combout\);

-- Location: LCCOMB_X74_Y58_N28
\stage[6][31]~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][31]~468_combout\ = (\stage[4][63]~79_combout\ & (((\fill~1_combout\)))) # (!\stage[4][63]~79_combout\ & ((\B[4]~input_o\ & ((\fill~1_combout\))) # (!\B[4]~input_o\ & (\A_rev[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[63]~1_combout\,
	datab => \stage[4][63]~79_combout\,
	datac => \fill~1_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[6][31]~468_combout\);

-- Location: LCCOMB_X74_Y58_N8
\stage[6][31]~510\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][31]~510_combout\ = (\stage[6][31]~467_combout\) # ((!\ExtWord~input_o\ & (\stage[6][31]~468_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][31]~467_combout\,
	datab => \ExtWord~input_o\,
	datac => \stage[6][31]~468_combout\,
	datad => \B[5]~input_o\,
	combout => \stage[6][31]~510_combout\);

-- Location: LCCOMB_X70_Y58_N26
\stage[6][32]~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][32]~465_combout\ = (\shamt[5]~0_combout\ & (((\fill~1_combout\)))) # (!\shamt[5]~0_combout\ & (\stage[4][48]~93_combout\ & ((\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[4][48]~93_combout\,
	datac => \fill~1_combout\,
	datad => \B[4]~input_o\,
	combout => \stage[6][32]~465_combout\);

-- Location: LCCOMB_X70_Y58_N20
\stage[6][32]~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][32]~466_combout\ = (\stage[6][32]~465_combout\) # ((\stage[4][32]~123_combout\ & \stage[6][63]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][32]~465_combout\,
	datab => \stage[4][32]~123_combout\,
	datac => \stage[6][63]~78_combout\,
	combout => \stage[6][32]~466_combout\);

-- Location: LCCOMB_X74_Y61_N12
\Y_rev[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_rev[31]~2_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\stage[6][31]~510_combout\)) # (!\ShiftFN[1]~input_o\ & ((\stage[6][32]~466_combout\))))) # (!\ShiftFN[0]~input_o\ & (\stage[6][31]~510_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][31]~510_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \stage[6][32]~466_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_rev[31]~2_combout\);

-- Location: LCCOMB_X72_Y60_N0
\Y~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~96_combout\ = (\ShiftFN[1]~input_o\ & (\Y_rev[31]~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Y_rev[31]~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~96_combout\);

-- Location: LCCOMB_X74_Y61_N28
\Y~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~97_combout\ = (!\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~97_combout\);

-- Location: LCCOMB_X77_Y56_N24
\Y~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~98_combout\ = (\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~98_combout\);

-- Location: LCCOMB_X74_Y61_N30
\Y~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~99_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][32]~466_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \stage[6][32]~466_combout\,
	datad => \Y~98_combout\,
	combout => \Y~99_combout\);

-- Location: LCCOMB_X74_Y61_N16
\Y~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~100_combout\ = (\Y~97_combout\ & ((\Y~99_combout\ & ((\A[32]~input_o\))) # (!\Y~99_combout\ & (\stage[6][31]~510_combout\)))) # (!\Y~97_combout\ & (((\Y~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][31]~510_combout\,
	datab => \Y~97_combout\,
	datac => \Y~99_combout\,
	datad => \A[32]~input_o\,
	combout => \Y~100_combout\);

-- Location: LCCOMB_X77_Y56_N2
\Y~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~101_combout\ = (\Y~97_combout\ & (((\stage[6][30]~464_combout\) # (\Y~98_combout\)))) # (!\Y~97_combout\ & (\stage[6][33]~462_combout\ & ((!\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][33]~462_combout\,
	datab => \Y~97_combout\,
	datac => \stage[6][30]~464_combout\,
	datad => \Y~98_combout\,
	combout => \Y~101_combout\);

-- Location: LCCOMB_X77_Y56_N20
\Y~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~102_combout\ = (\Y~101_combout\ & (((\A[33]~input_o\) # (!\Y~98_combout\)))) # (!\Y~101_combout\ & (\Y_rev[31]~2_combout\ & ((\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~101_combout\,
	datac => \A[33]~input_o\,
	datad => \Y~98_combout\,
	combout => \Y~102_combout\);

-- Location: LCCOMB_X74_Y61_N26
\Y~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~103_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][34]~507_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \Y~98_combout\,
	datad => \stage[6][34]~507_combout\,
	combout => \Y~103_combout\);

-- Location: LCCOMB_X74_Y61_N4
\Y~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~104_combout\ = (\Y~103_combout\ & (((\A[34]~input_o\) # (!\Y~97_combout\)))) # (!\Y~103_combout\ & (\stage[6][29]~508_combout\ & ((\Y~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][29]~508_combout\,
	datab => \A[34]~input_o\,
	datac => \Y~103_combout\,
	datad => \Y~97_combout\,
	combout => \Y~104_combout\);

-- Location: LCCOMB_X80_Y62_N14
\Y~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~105_combout\ = (\Y~97_combout\ & (((\stage[6][28]~457_combout\) # (\Y~98_combout\)))) # (!\Y~97_combout\ & (\stage[6][35]~506_combout\ & ((!\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][35]~506_combout\,
	datab => \stage[6][28]~457_combout\,
	datac => \Y~97_combout\,
	datad => \Y~98_combout\,
	combout => \Y~105_combout\);

-- Location: LCCOMB_X80_Y62_N0
\Y~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~106_combout\ = (\Y~105_combout\ & ((\A[35]~input_o\) # ((!\Y~98_combout\)))) # (!\Y~105_combout\ & (((\Y_rev[31]~2_combout\ & \Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \Y_rev[31]~2_combout\,
	datac => \Y~105_combout\,
	datad => \Y~98_combout\,
	combout => \Y~106_combout\);

-- Location: LCCOMB_X74_Y55_N24
\stage[6][27]~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][27]~452_combout\ = (\stage[6][27]~450_combout\) # (\stage[6][27]~451_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][27]~450_combout\,
	datac => \stage[6][27]~451_combout\,
	combout => \stage[6][27]~452_combout\);

-- Location: LCCOMB_X75_Y58_N24
\Y~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~107_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & ((\Y_rev[31]~2_combout\))) # (!\Y~98_combout\ & (\stage[6][36]~505_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][36]~505_combout\,
	datab => \Y_rev[31]~2_combout\,
	datac => \Y~97_combout\,
	datad => \Y~98_combout\,
	combout => \Y~107_combout\);

-- Location: LCCOMB_X75_Y58_N2
\Y~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~108_combout\ = (\Y~97_combout\ & ((\Y~107_combout\ & (\A[36]~input_o\)) # (!\Y~107_combout\ & ((\stage[6][27]~452_combout\))))) # (!\Y~97_combout\ & (((\Y~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \Y~97_combout\,
	datac => \stage[6][27]~452_combout\,
	datad => \Y~107_combout\,
	combout => \Y~108_combout\);

-- Location: LCCOMB_X77_Y56_N4
\stage[6][26]~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][26]~448_combout\ = (\stage[6][26]~447_combout\) # (\stage[6][26]~446_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage[6][26]~447_combout\,
	datad => \stage[6][26]~446_combout\,
	combout => \stage[6][26]~448_combout\);

-- Location: LCCOMB_X77_Y56_N22
\Y~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~109_combout\ = (\Y~97_combout\ & (((\stage[6][26]~448_combout\) # (\Y~98_combout\)))) # (!\Y~97_combout\ & (\stage[6][37]~445_combout\ & ((!\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][37]~445_combout\,
	datab => \stage[6][26]~448_combout\,
	datac => \Y~97_combout\,
	datad => \Y~98_combout\,
	combout => \Y~109_combout\);

-- Location: LCCOMB_X77_Y56_N0
\Y~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~110_combout\ = (\Y~109_combout\ & (((\A[37]~input_o\)) # (!\Y~98_combout\))) # (!\Y~109_combout\ & (\Y~98_combout\ & (\Y_rev[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~109_combout\,
	datab => \Y~98_combout\,
	datac => \Y_rev[31]~2_combout\,
	datad => \A[37]~input_o\,
	combout => \Y~110_combout\);

-- Location: LCCOMB_X74_Y55_N26
\stage[6][25]~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][25]~443_combout\ = (\stage[6][25]~441_combout\) # (\stage[6][25]~442_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][25]~441_combout\,
	datac => \stage[6][25]~442_combout\,
	combout => \stage[6][25]~443_combout\);

-- Location: LCCOMB_X74_Y61_N14
\Y~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~111_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][38]~504_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \stage[6][38]~504_combout\,
	datad => \Y~98_combout\,
	combout => \Y~111_combout\);

-- Location: LCCOMB_X74_Y61_N24
\Y~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~112_combout\ = (\Y~111_combout\ & (((\A[38]~input_o\) # (!\Y~97_combout\)))) # (!\Y~111_combout\ & (\stage[6][25]~443_combout\ & ((\Y~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][25]~443_combout\,
	datab => \Y~111_combout\,
	datac => \A[38]~input_o\,
	datad => \Y~97_combout\,
	combout => \Y~112_combout\);

-- Location: LCCOMB_X75_Y58_N28
\Y~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~113_combout\ = (\Y~97_combout\ & ((\Y~98_combout\) # ((\stage[6][24]~439_combout\)))) # (!\Y~97_combout\ & (!\Y~98_combout\ & ((\stage[6][39]~503_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \Y~98_combout\,
	datac => \stage[6][24]~439_combout\,
	datad => \stage[6][39]~503_combout\,
	combout => \Y~113_combout\);

-- Location: LCCOMB_X75_Y58_N22
\Y~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~114_combout\ = (\Y~98_combout\ & ((\Y~113_combout\ & (\A[39]~input_o\)) # (!\Y~113_combout\ & ((\Y_rev[31]~2_combout\))))) # (!\Y~98_combout\ & (((\Y~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \Y~98_combout\,
	datac => \Y_rev[31]~2_combout\,
	datad => \Y~113_combout\,
	combout => \Y~114_combout\);

-- Location: LCCOMB_X76_Y58_N18
\Y~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~115_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & ((\Y_rev[31]~2_combout\))) # (!\Y~98_combout\ & (\stage[6][40]~502_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][40]~502_combout\,
	datab => \Y_rev[31]~2_combout\,
	datac => \Y~97_combout\,
	datad => \Y~98_combout\,
	combout => \Y~115_combout\);

-- Location: LCCOMB_X76_Y58_N28
\Y~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~116_combout\ = (\Y~115_combout\ & (((\A[40]~input_o\) # (!\Y~97_combout\)))) # (!\Y~115_combout\ & (\stage[6][23]~435_combout\ & (\Y~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][23]~435_combout\,
	datab => \Y~115_combout\,
	datac => \Y~97_combout\,
	datad => \A[40]~input_o\,
	combout => \Y~116_combout\);

-- Location: LCCOMB_X74_Y54_N22
\Y~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~117_combout\ = (\Y~97_combout\ & (((\Y~98_combout\) # (\stage[6][22]~433_combout\)))) # (!\Y~97_combout\ & (\stage[6][41]~501_combout\ & (!\Y~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \stage[6][41]~501_combout\,
	datac => \Y~98_combout\,
	datad => \stage[6][22]~433_combout\,
	combout => \Y~117_combout\);

-- Location: LCCOMB_X74_Y54_N16
\Y~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~118_combout\ = (\Y~117_combout\ & (((\A[41]~input_o\) # (!\Y~98_combout\)))) # (!\Y~117_combout\ & (\Y_rev[31]~2_combout\ & (\Y~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~117_combout\,
	datab => \Y_rev[31]~2_combout\,
	datac => \Y~98_combout\,
	datad => \A[41]~input_o\,
	combout => \Y~118_combout\);

-- Location: LCCOMB_X77_Y59_N30
\Y~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~119_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][42]~500_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \stage[6][42]~500_combout\,
	datad => \Y~98_combout\,
	combout => \Y~119_combout\);

-- Location: LCCOMB_X77_Y59_N0
\Y~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~120_combout\ = (\Y~97_combout\ & ((\Y~119_combout\ & (\A[42]~input_o\)) # (!\Y~119_combout\ & ((\stage[6][21]~430_combout\))))) # (!\Y~97_combout\ & (((\Y~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \Y~97_combout\,
	datac => \Y~119_combout\,
	datad => \stage[6][21]~430_combout\,
	combout => \Y~120_combout\);

-- Location: LCCOMB_X74_Y54_N10
\Y~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~121_combout\ = (\Y~97_combout\ & ((\Y~98_combout\) # ((\stage[6][20]~428_combout\)))) # (!\Y~97_combout\ & (!\Y~98_combout\ & (\stage[6][43]~499_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \Y~98_combout\,
	datac => \stage[6][43]~499_combout\,
	datad => \stage[6][20]~428_combout\,
	combout => \Y~121_combout\);

-- Location: LCCOMB_X74_Y54_N20
\Y~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~122_combout\ = (\Y~121_combout\ & (((\A[43]~input_o\) # (!\Y~98_combout\)))) # (!\Y~121_combout\ & (\Y_rev[31]~2_combout\ & (\Y~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~121_combout\,
	datab => \Y_rev[31]~2_combout\,
	datac => \Y~98_combout\,
	datad => \A[43]~input_o\,
	combout => \Y~122_combout\);

-- Location: LCCOMB_X73_Y54_N30
\Y~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~123_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & ((\Y_rev[31]~2_combout\))) # (!\Y~98_combout\ & (\stage[6][44]~498_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \stage[6][44]~498_combout\,
	datac => \Y~98_combout\,
	datad => \Y_rev[31]~2_combout\,
	combout => \Y~123_combout\);

-- Location: LCCOMB_X73_Y54_N0
\Y~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~124_combout\ = (\Y~97_combout\ & ((\Y~123_combout\ & (\A[44]~input_o\)) # (!\Y~123_combout\ & ((\stage[6][19]~426_combout\))))) # (!\Y~97_combout\ & (((\Y~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \A[44]~input_o\,
	datac => \Y~123_combout\,
	datad => \stage[6][19]~426_combout\,
	combout => \Y~124_combout\);

-- Location: LCCOMB_X72_Y60_N18
\Y~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~125_combout\ = (\Y~97_combout\ & ((\stage[6][18]~424_combout\) # ((\Y~98_combout\)))) # (!\Y~97_combout\ & (((\stage[6][45]~497_combout\ & !\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][18]~424_combout\,
	datab => \stage[6][45]~497_combout\,
	datac => \Y~97_combout\,
	datad => \Y~98_combout\,
	combout => \Y~125_combout\);

-- Location: LCCOMB_X72_Y60_N20
\Y~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~126_combout\ = (\Y~125_combout\ & ((\A[45]~input_o\) # ((!\Y~98_combout\)))) # (!\Y~125_combout\ & (((\Y_rev[31]~2_combout\ & \Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \Y~125_combout\,
	datac => \Y_rev[31]~2_combout\,
	datad => \Y~98_combout\,
	combout => \Y~126_combout\);

-- Location: LCCOMB_X73_Y60_N0
\Y~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~127_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][46]~496_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \Y~98_combout\,
	datad => \stage[6][46]~496_combout\,
	combout => \Y~127_combout\);

-- Location: LCCOMB_X72_Y60_N6
\Y~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~128_combout\ = (\Y~127_combout\ & (((\A[46]~input_o\) # (!\Y~97_combout\)))) # (!\Y~127_combout\ & (\stage[6][17]~422_combout\ & (\Y~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][17]~422_combout\,
	datab => \Y~127_combout\,
	datac => \Y~97_combout\,
	datad => \A[46]~input_o\,
	combout => \Y~128_combout\);

-- Location: LCCOMB_X74_Y61_N18
\Y~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~129_combout\ = (\Y~98_combout\ & (((\Y~97_combout\)))) # (!\Y~98_combout\ & ((\Y~97_combout\ & ((\stage[6][16]~420_combout\))) # (!\Y~97_combout\ & (\stage[6][47]~495_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~98_combout\,
	datab => \stage[6][47]~495_combout\,
	datac => \stage[6][16]~420_combout\,
	datad => \Y~97_combout\,
	combout => \Y~129_combout\);

-- Location: LCCOMB_X74_Y61_N20
\Y~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~130_combout\ = (\Y~129_combout\ & (((\A[47]~input_o\) # (!\Y~98_combout\)))) # (!\Y~129_combout\ & (\Y_rev[31]~2_combout\ & ((\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~129_combout\,
	datac => \A[47]~input_o\,
	datad => \Y~98_combout\,
	combout => \Y~130_combout\);

-- Location: LCCOMB_X73_Y60_N26
\Y~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~131_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][48]~408_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \Y~98_combout\,
	datad => \stage[6][48]~408_combout\,
	combout => \Y~131_combout\);

-- Location: LCCOMB_X73_Y60_N4
\Y~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~132_combout\ = (\Y~131_combout\ & (((\A[48]~input_o\)) # (!\Y~97_combout\))) # (!\Y~131_combout\ & (\Y~97_combout\ & ((\stage[6][15]~418_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~131_combout\,
	datab => \Y~97_combout\,
	datac => \A[48]~input_o\,
	datad => \stage[6][15]~418_combout\,
	combout => \Y~132_combout\);

-- Location: LCCOMB_X76_Y59_N4
\Y~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~133_combout\ = (\Y~97_combout\ & ((\stage[6][14]~407_combout\) # ((\Y~98_combout\)))) # (!\Y~97_combout\ & (((\stage[6][49]~397_combout\ & !\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~407_combout\,
	datab => \Y~97_combout\,
	datac => \stage[6][49]~397_combout\,
	datad => \Y~98_combout\,
	combout => \Y~133_combout\);

-- Location: LCCOMB_X76_Y59_N30
\Y~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~134_combout\ = (\Y~133_combout\ & (((\A[49]~input_o\) # (!\Y~98_combout\)))) # (!\Y~133_combout\ & (\Y_rev[31]~2_combout\ & ((\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~133_combout\,
	datac => \A[49]~input_o\,
	datad => \Y~98_combout\,
	combout => \Y~134_combout\);

-- Location: LCCOMB_X80_Y62_N18
\Y~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~135_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][50]~388_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \Y_rev[31]~2_combout\,
	datac => \stage[6][50]~388_combout\,
	datad => \Y~98_combout\,
	combout => \Y~135_combout\);

-- Location: LCCOMB_X80_Y62_N12
\Y~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~136_combout\ = (\Y~135_combout\ & (((\A[50]~input_o\) # (!\Y~97_combout\)))) # (!\Y~135_combout\ & (\stage[6][13]~396_combout\ & (\Y~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][13]~396_combout\,
	datab => \Y~135_combout\,
	datac => \Y~97_combout\,
	datad => \A[50]~input_o\,
	combout => \Y~136_combout\);

-- Location: LCCOMB_X80_Y62_N22
\Y~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~137_combout\ = (\Y~97_combout\ & (((\stage[6][12]~387_combout\) # (\Y~98_combout\)))) # (!\Y~97_combout\ & (\stage[6][51]~380_combout\ & ((!\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \stage[6][51]~380_combout\,
	datac => \stage[6][12]~387_combout\,
	datad => \Y~98_combout\,
	combout => \Y~137_combout\);

-- Location: LCCOMB_X80_Y62_N24
\Y~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~138_combout\ = (\Y~137_combout\ & (((\A[51]~input_o\) # (!\Y~98_combout\)))) # (!\Y~137_combout\ & (\Y_rev[31]~2_combout\ & ((\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~137_combout\,
	datab => \Y_rev[31]~2_combout\,
	datac => \A[51]~input_o\,
	datad => \Y~98_combout\,
	combout => \Y~138_combout\);

-- Location: LCCOMB_X73_Y60_N30
\Y~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~139_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][52]~371_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \Y~98_combout\,
	datad => \stage[6][52]~371_combout\,
	combout => \Y~139_combout\);

-- Location: LCCOMB_X72_Y58_N24
\Y~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~140_combout\ = (\Y~139_combout\ & (((\A[52]~input_o\) # (!\Y~97_combout\)))) # (!\Y~139_combout\ & (\stage[6][11]~379_combout\ & (\Y~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][11]~379_combout\,
	datab => \Y~139_combout\,
	datac => \Y~97_combout\,
	datad => \A[52]~input_o\,
	combout => \Y~140_combout\);

-- Location: LCCOMB_X77_Y59_N26
\Y~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~141_combout\ = (\Y~98_combout\ & (((\Y~97_combout\)))) # (!\Y~98_combout\ & ((\Y~97_combout\ & (\stage[6][10]~370_combout\)) # (!\Y~97_combout\ & ((\stage[6][53]~361_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][10]~370_combout\,
	datab => \Y~98_combout\,
	datac => \Y~97_combout\,
	datad => \stage[6][53]~361_combout\,
	combout => \Y~141_combout\);

-- Location: LCCOMB_X77_Y59_N12
\Y~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~142_combout\ = (\Y~141_combout\ & ((\A[53]~input_o\) # ((!\Y~98_combout\)))) # (!\Y~141_combout\ & (((\Y_rev[31]~2_combout\ & \Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \Y_rev[31]~2_combout\,
	datac => \Y~141_combout\,
	datad => \Y~98_combout\,
	combout => \Y~142_combout\);

-- Location: LCCOMB_X76_Y59_N0
\Y~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~143_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][54]~351_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \stage[6][54]~351_combout\,
	datac => \Y~97_combout\,
	datad => \Y~98_combout\,
	combout => \Y~143_combout\);

-- Location: LCCOMB_X76_Y59_N10
\Y~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~144_combout\ = (\Y~97_combout\ & ((\Y~143_combout\ & ((\A[54]~input_o\))) # (!\Y~143_combout\ & (\stage[6][9]~360_combout\)))) # (!\Y~97_combout\ & (((\Y~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][9]~360_combout\,
	datab => \Y~97_combout\,
	datac => \A[54]~input_o\,
	datad => \Y~143_combout\,
	combout => \Y~144_combout\);

-- Location: LCCOMB_X75_Y58_N8
\Y~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~145_combout\ = (\Y~98_combout\ & (((\Y~97_combout\)))) # (!\Y~98_combout\ & ((\Y~97_combout\ & (\stage[6][8]~350_combout\)) # (!\Y~97_combout\ & ((\stage[6][55]~341_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~98_combout\,
	datab => \stage[6][8]~350_combout\,
	datac => \Y~97_combout\,
	datad => \stage[6][55]~341_combout\,
	combout => \Y~145_combout\);

-- Location: LCCOMB_X77_Y58_N20
\Y~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~146_combout\ = (\Y~98_combout\ & ((\Y~145_combout\ & ((\A[55]~input_o\))) # (!\Y~145_combout\ & (\Y_rev[31]~2_combout\)))) # (!\Y~98_combout\ & (((\Y~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~98_combout\,
	datab => \Y_rev[31]~2_combout\,
	datac => \Y~145_combout\,
	datad => \A[55]~input_o\,
	combout => \Y~146_combout\);

-- Location: LCCOMB_X73_Y60_N16
\Y~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~147_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][56]~326_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \Y~98_combout\,
	datad => \stage[6][56]~326_combout\,
	combout => \Y~147_combout\);

-- Location: LCCOMB_X76_Y58_N14
\Y~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~148_combout\ = (\Y~97_combout\ & ((\Y~147_combout\ & (\A[56]~input_o\)) # (!\Y~147_combout\ & ((\stage[6][7]~485_combout\))))) # (!\Y~97_combout\ & (((\Y~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \A[56]~input_o\,
	datac => \Y~147_combout\,
	datad => \stage[6][7]~485_combout\,
	combout => \Y~148_combout\);

-- Location: LCCOMB_X79_Y55_N2
\Y~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~149_combout\ = (\Y~98_combout\ & (((\Y~97_combout\)))) # (!\Y~98_combout\ & ((\Y~97_combout\ & ((\stage[6][6]~484_combout\))) # (!\Y~97_combout\ & (\stage[6][57]~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~98_combout\,
	datab => \stage[6][57]~314_combout\,
	datac => \Y~97_combout\,
	datad => \stage[6][6]~484_combout\,
	combout => \Y~149_combout\);

-- Location: LCCOMB_X79_Y55_N20
\Y~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~150_combout\ = (\Y~98_combout\ & ((\Y~149_combout\ & ((\A[57]~input_o\))) # (!\Y~149_combout\ & (\Y_rev[31]~2_combout\)))) # (!\Y~98_combout\ & (\Y~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~98_combout\,
	datab => \Y~149_combout\,
	datac => \Y_rev[31]~2_combout\,
	datad => \A[57]~input_o\,
	combout => \Y~150_combout\);

-- Location: LCCOMB_X79_Y55_N30
\Y~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~151_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & ((\Y_rev[31]~2_combout\))) # (!\Y~98_combout\ & (\stage[6][58]~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \stage[6][58]~300_combout\,
	datac => \Y_rev[31]~2_combout\,
	datad => \Y~98_combout\,
	combout => \Y~151_combout\);

-- Location: LCCOMB_X79_Y55_N0
\Y~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~152_combout\ = (\Y~151_combout\ & (((\A[58]~input_o\) # (!\Y~97_combout\)))) # (!\Y~151_combout\ & (\stage[6][5]~481_combout\ & (\Y~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~151_combout\,
	datab => \stage[6][5]~481_combout\,
	datac => \Y~97_combout\,
	datad => \A[58]~input_o\,
	combout => \Y~152_combout\);

-- Location: LCCOMB_X72_Y54_N18
\Y~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~153_combout\ = (\Y~97_combout\ & (((\stage[6][4]~479_combout\) # (\Y~98_combout\)))) # (!\Y~97_combout\ & (\stage[6][59]~286_combout\ & ((!\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \stage[6][59]~286_combout\,
	datac => \stage[6][4]~479_combout\,
	datad => \Y~98_combout\,
	combout => \Y~153_combout\);

-- Location: LCCOMB_X72_Y54_N12
\Y~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~154_combout\ = (\Y~153_combout\ & (((\A[59]~input_o\) # (!\Y~98_combout\)))) # (!\Y~153_combout\ & (\Y_rev[31]~2_combout\ & ((\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~153_combout\,
	datac => \A[59]~input_o\,
	datad => \Y~98_combout\,
	combout => \Y~154_combout\);

-- Location: LCCOMB_X72_Y54_N6
\stage[6][3]~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~469_combout\ = (\stage[6][3]~284_combout\) # (\stage[6][3]~263_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][3]~284_combout\,
	datac => \stage[6][3]~263_combout\,
	combout => \stage[6][3]~469_combout\);

-- Location: LCCOMB_X73_Y60_N18
\Y~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~155_combout\ = (\Y~97_combout\ & (((\Y~98_combout\)))) # (!\Y~97_combout\ & ((\Y~98_combout\ & (\Y_rev[31]~2_combout\)) # (!\Y~98_combout\ & ((\stage[6][60]~241_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~97_combout\,
	datac => \Y~98_combout\,
	datad => \stage[6][60]~241_combout\,
	combout => \Y~155_combout\);

-- Location: LCCOMB_X72_Y54_N0
\Y~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~156_combout\ = (\Y~155_combout\ & (((\A[60]~input_o\) # (!\Y~97_combout\)))) # (!\Y~155_combout\ & (\stage[6][3]~469_combout\ & (\Y~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][3]~469_combout\,
	datab => \Y~155_combout\,
	datac => \Y~97_combout\,
	datad => \A[60]~input_o\,
	combout => \Y~156_combout\);

-- Location: LCCOMB_X72_Y57_N16
\stage[6][2]~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~470_combout\ = (\stage[6][2]~240_combout\) # (\stage[6][2]~214_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][2]~240_combout\,
	datad => \stage[6][2]~214_combout\,
	combout => \stage[6][2]~470_combout\);

-- Location: LCCOMB_X72_Y57_N26
\Y~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~157_combout\ = (\Y~98_combout\ & (((\Y~97_combout\)))) # (!\Y~98_combout\ & ((\Y~97_combout\ & (\stage[6][2]~470_combout\)) # (!\Y~97_combout\ & ((\stage[6][61]~193_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~98_combout\,
	datab => \stage[6][2]~470_combout\,
	datac => \stage[6][61]~193_combout\,
	datad => \Y~97_combout\,
	combout => \Y~157_combout\);

-- Location: LCCOMB_X72_Y57_N28
\Y~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~158_combout\ = (\Y~157_combout\ & (((\A[61]~input_o\)) # (!\Y~98_combout\))) # (!\Y~157_combout\ & (\Y~98_combout\ & (\Y_rev[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~157_combout\,
	datab => \Y~98_combout\,
	datac => \Y_rev[31]~2_combout\,
	datad => \A[61]~input_o\,
	combout => \Y~158_combout\);

-- Location: LCCOMB_X72_Y57_N6
\stage[6][1]~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~471_combout\ = (\stage[6][1]~192_combout\) # (\stage[6][1]~166_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][1]~192_combout\,
	datad => \stage[6][1]~166_combout\,
	combout => \stage[6][1]~471_combout\);

-- Location: LCCOMB_X72_Y57_N24
\Y~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~159_combout\ = (\Y~98_combout\ & (((\Y_rev[31]~2_combout\) # (\Y~97_combout\)))) # (!\Y~98_combout\ & (\stage[6][62]~139_combout\ & ((!\Y~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~98_combout\,
	datab => \stage[6][62]~139_combout\,
	datac => \Y_rev[31]~2_combout\,
	datad => \Y~97_combout\,
	combout => \Y~159_combout\);

-- Location: LCCOMB_X72_Y57_N18
\Y~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~160_combout\ = (\Y~159_combout\ & (((\A[62]~input_o\) # (!\Y~97_combout\)))) # (!\Y~159_combout\ & (\stage[6][1]~471_combout\ & ((\Y~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][1]~471_combout\,
	datab => \Y~159_combout\,
	datac => \A[62]~input_o\,
	datad => \Y~97_combout\,
	combout => \Y~160_combout\);

-- Location: LCCOMB_X73_Y60_N12
\Y~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~161_combout\ = (\Y~98_combout\ & (\Y~97_combout\)) # (!\Y~98_combout\ & ((\Y~97_combout\ & ((\stage[6][0]~137_combout\))) # (!\Y~97_combout\ & (\stage[6][63]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~98_combout\,
	datab => \Y~97_combout\,
	datac => \stage[6][63]~80_combout\,
	datad => \stage[6][0]~137_combout\,
	combout => \Y~161_combout\);

-- Location: LCCOMB_X73_Y60_N22
\Y~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~162_combout\ = (\Y~161_combout\ & (((\A[63]~input_o\) # (!\Y~98_combout\)))) # (!\Y~161_combout\ & (\Y_rev[31]~2_combout\ & (\Y~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[31]~2_combout\,
	datab => \Y~161_combout\,
	datac => \Y~98_combout\,
	datad => \A[63]~input_o\,
	combout => \Y~162_combout\);

-- Location: IOIBUF_X113_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X111_Y0_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;
END structure;


