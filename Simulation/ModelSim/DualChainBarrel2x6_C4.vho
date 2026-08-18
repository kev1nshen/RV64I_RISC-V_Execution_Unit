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

-- DATE "04/04/2026 02:04:41"

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
-- B[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \s64~116_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \s64[2][0]~118_combout\ : std_logic;
SIGNAL \s64[2][0]~119_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \s64~117_combout\ : std_logic;
SIGNAL \s64[2][0]~120_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \s64[2][0]~115_combout\ : std_logic;
SIGNAL \s64[2][0]~121_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \s64~37_combout\ : std_logic;
SIGNAL \s64~36_combout\ : std_logic;
SIGNAL \s64[2][4]~38_combout\ : std_logic;
SIGNAL \s64~39_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \s64~35_combout\ : std_logic;
SIGNAL \s64[2][4]~40_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \s64[4][0]~21_combout\ : std_logic;
SIGNAL \s64[4][0]~122_combout\ : std_logic;
SIGNAL \s64[4][0]~20_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \s64~30_combout\ : std_logic;
SIGNAL \s64~29_combout\ : std_logic;
SIGNAL \s64[2][8]~31_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \s64~28_combout\ : std_logic;
SIGNAL \s64~32_combout\ : std_logic;
SIGNAL \s64[2][8]~33_combout\ : std_logic;
SIGNAL \s64~26_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \s64~23_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \s64~24_combout\ : std_logic;
SIGNAL \s64[2][12]~25_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \s64~22_combout\ : std_logic;
SIGNAL \s64[2][12]~27_combout\ : std_logic;
SIGNAL \s64[3][8]~34_combout\ : std_logic;
SIGNAL \s64[3][8]~41_combout\ : std_logic;
SIGNAL \s64[4][0]~123_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \s64~14_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \s64~15_combout\ : std_logic;
SIGNAL \s64[2][20]~16_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \s64~17_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \s64~13_combout\ : std_logic;
SIGNAL \s64[2][20]~18_combout\ : std_logic;
SIGNAL \s64~43_combout\ : std_logic;
SIGNAL \s64~47_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \s64~45_combout\ : std_logic;
SIGNAL \s64~44_combout\ : std_logic;
SIGNAL \s64[2][16]~46_combout\ : std_logic;
SIGNAL \s64[2][16]~48_combout\ : std_logic;
SIGNAL \s64[3][16]~49_combout\ : std_logic;
SIGNAL \s64[3][16]~50_combout\ : std_logic;
SIGNAL \s64[4][16]~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \s64~1_combout\ : std_logic;
SIGNAL \s64~5_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \s64~2_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \s64~3_combout\ : std_logic;
SIGNAL \s64[2][24]~4_combout\ : std_logic;
SIGNAL \s64[2][24]~6_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \s32[2][30]~8_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \s64~7_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \s64~8_combout\ : std_logic;
SIGNAL \s64[2][28]~9_combout\ : std_logic;
SIGNAL \s64~10_combout\ : std_logic;
SIGNAL \s64[2][28]~11_combout\ : std_logic;
SIGNAL \s64[3][24]~12_combout\ : std_logic;
SIGNAL \s64[3][24]~19_combout\ : std_logic;
SIGNAL \s64[4][16]~42_combout\ : std_logic;
SIGNAL \s64[4][16]~51_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \s64[5][0]~124_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \s64[1][50]~52_combout\ : std_logic;
SIGNAL \s64[1][50]~53_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \s64[1][46]~84_combout\ : std_logic;
SIGNAL \s64[1][46]~85_combout\ : std_logic;
SIGNAL \s64[2][48]~98_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \s64[1][48]~99_combout\ : std_logic;
SIGNAL \s64[1][48]~100_combout\ : std_logic;
SIGNAL \s64[2][48]~101_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \s64[1][44]~87_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \s64[1][44]~88_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \s64[1][42]~82_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \s64[1][42]~83_combout\ : std_logic;
SIGNAL \s64[2][44]~86_combout\ : std_logic;
SIGNAL \s64[2][44]~89_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \s64[1][52]~57_combout\ : std_logic;
SIGNAL \s64[1][52]~58_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \s64[1][54]~54_combout\ : std_logic;
SIGNAL \s64[1][54]~55_combout\ : std_logic;
SIGNAL \s64[2][52]~56_combout\ : std_logic;
SIGNAL \s64[2][52]~59_combout\ : std_logic;
SIGNAL \s64[3][48]~97_combout\ : std_logic;
SIGNAL \s64[3][48]~102_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \s64[1][34]~74_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \s64[1][34]~75_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \s64[1][38]~76_combout\ : std_logic;
SIGNAL \s64[1][38]~77_combout\ : std_logic;
SIGNAL \s64[2][36]~78_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \s64[1][36]~79_combout\ : std_logic;
SIGNAL \s64[1][36]~80_combout\ : std_logic;
SIGNAL \s64[2][36]~81_combout\ : std_logic;
SIGNAL \s64[3][40]~90_combout\ : std_logic;
SIGNAL \s64[2][40]~91_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \s64[1][40]~92_combout\ : std_logic;
SIGNAL \s64[1][40]~93_combout\ : std_logic;
SIGNAL \s64[2][40]~94_combout\ : std_logic;
SIGNAL \s64[3][40]~95_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \s64[1][60]~65_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \s64[1][60]~66_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \s64[1][62]~62_combout\ : std_logic;
SIGNAL \s64[1][62]~63_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \s64[1][58]~60_combout\ : std_logic;
SIGNAL \s64[1][58]~61_combout\ : std_logic;
SIGNAL \s64[2][60]~64_combout\ : std_logic;
SIGNAL \s64[2][60]~67_combout\ : std_logic;
SIGNAL \s64[3][56]~68_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \s64[1][56]~70_combout\ : std_logic;
SIGNAL \s64[1][56]~71_combout\ : std_logic;
SIGNAL \s64[2][56]~69_combout\ : std_logic;
SIGNAL \s64[2][56]~72_combout\ : std_logic;
SIGNAL \s64[3][56]~73_combout\ : std_logic;
SIGNAL \s64[4][48]~96_combout\ : std_logic;
SIGNAL \s64[4][48]~103_combout\ : std_logic;
SIGNAL \s64[5][32]~104_combout\ : std_logic;
SIGNAL \s64[3][32]~106_combout\ : std_logic;
SIGNAL \s64~107_combout\ : std_logic;
SIGNAL \s64~108_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \s64[1][32]~109_combout\ : std_logic;
SIGNAL \s64[1][32]~110_combout\ : std_logic;
SIGNAL \s64~111_combout\ : std_logic;
SIGNAL \s64[3][32]~112_combout\ : std_logic;
SIGNAL \s64[4][32]~105_combout\ : std_logic;
SIGNAL \s64[4][32]~113_combout\ : std_logic;
SIGNAL \s64[5][32]~114_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \Y~168_combout\ : std_logic;
SIGNAL \s64~136_combout\ : std_logic;
SIGNAL \s64~132_combout\ : std_logic;
SIGNAL \s64~133_combout\ : std_logic;
SIGNAL \s64~134_combout\ : std_logic;
SIGNAL \s64[2][21]~135_combout\ : std_logic;
SIGNAL \s64[2][21]~137_combout\ : std_logic;
SIGNAL \s64~126_combout\ : std_logic;
SIGNAL \s64~130_combout\ : std_logic;
SIGNAL \s64~128_combout\ : std_logic;
SIGNAL \s64~127_combout\ : std_logic;
SIGNAL \s64[2][25]~129_combout\ : std_logic;
SIGNAL \s64[2][25]~131_combout\ : std_logic;
SIGNAL \s32[3][25]~11_combout\ : std_logic;
SIGNAL \s64~149_combout\ : std_logic;
SIGNAL \s64~145_combout\ : std_logic;
SIGNAL \s64~146_combout\ : std_logic;
SIGNAL \s64~147_combout\ : std_logic;
SIGNAL \s64[2][13]~148_combout\ : std_logic;
SIGNAL \s64[2][13]~150_combout\ : std_logic;
SIGNAL \s64~138_combout\ : std_logic;
SIGNAL \s64~142_combout\ : std_logic;
SIGNAL \s64~139_combout\ : std_logic;
SIGNAL \s64~140_combout\ : std_logic;
SIGNAL \s64[2][17]~141_combout\ : std_logic;
SIGNAL \s64[2][17]~143_combout\ : std_logic;
SIGNAL \s64[3][17]~144_combout\ : std_logic;
SIGNAL \s64[3][17]~151_combout\ : std_logic;
SIGNAL \s64~156_combout\ : std_logic;
SIGNAL \s64~152_combout\ : std_logic;
SIGNAL \s64~153_combout\ : std_logic;
SIGNAL \s64~154_combout\ : std_logic;
SIGNAL \s64[2][9]~155_combout\ : std_logic;
SIGNAL \s64[2][9]~157_combout\ : std_logic;
SIGNAL \s64[3][9]~158_combout\ : std_logic;
SIGNAL \s64~163_combout\ : std_logic;
SIGNAL \s64~160_combout\ : std_logic;
SIGNAL \s64~161_combout\ : std_logic;
SIGNAL \s64[2][5]~162_combout\ : std_logic;
SIGNAL \s64~159_combout\ : std_logic;
SIGNAL \s64[2][5]~164_combout\ : std_logic;
SIGNAL \s64[3][9]~165_combout\ : std_logic;
SIGNAL \s32[4][17]~12_combout\ : std_logic;
SIGNAL \s64~125_combout\ : std_logic;
SIGNAL \s32~9_combout\ : std_logic;
SIGNAL \s32[2][29]~10_combout\ : std_logic;
SIGNAL \s32[3][25]~54_combout\ : std_logic;
SIGNAL \s32[4][17]~13_combout\ : std_logic;
SIGNAL \s64[1][45]~212_combout\ : std_logic;
SIGNAL \s64[1][45]~213_combout\ : std_logic;
SIGNAL \s64[1][43]~207_combout\ : std_logic;
SIGNAL \s64[1][43]~208_combout\ : std_logic;
SIGNAL \s64[1][47]~209_combout\ : std_logic;
SIGNAL \s64[1][47]~210_combout\ : std_logic;
SIGNAL \s64[2][45]~211_combout\ : std_logic;
SIGNAL \s64[2][45]~214_combout\ : std_logic;
SIGNAL \s64[1][39]~201_combout\ : std_logic;
SIGNAL \s64[1][39]~202_combout\ : std_logic;
SIGNAL \s64[1][35]~199_combout\ : std_logic;
SIGNAL \s64[1][35]~200_combout\ : std_logic;
SIGNAL \s64[2][37]~203_combout\ : std_logic;
SIGNAL \s64[1][37]~204_combout\ : std_logic;
SIGNAL \s64[1][37]~205_combout\ : std_logic;
SIGNAL \s64[2][37]~206_combout\ : std_logic;
SIGNAL \s64[3][41]~215_combout\ : std_logic;
SIGNAL \s64[2][41]~216_combout\ : std_logic;
SIGNAL \s64[1][41]~217_combout\ : std_logic;
SIGNAL \s64[1][41]~218_combout\ : std_logic;
SIGNAL \s64[2][41]~219_combout\ : std_logic;
SIGNAL \s64[3][41]~220_combout\ : std_logic;
SIGNAL \s64[2][31]~172_combout\ : std_logic;
SIGNAL \s64[2][29]~173_combout\ : std_logic;
SIGNAL \s64[3][25]~174_combout\ : std_logic;
SIGNAL \s64[4][33]~230_combout\ : std_logic;
SIGNAL \s64~232_combout\ : std_logic;
SIGNAL \s64~231_combout\ : std_logic;
SIGNAL \s64~233_combout\ : std_logic;
SIGNAL \s64[3][33]~234_combout\ : std_logic;
SIGNAL \s64~235_combout\ : std_logic;
SIGNAL \s64~236_combout\ : std_logic;
SIGNAL \s64[1][33]~237_combout\ : std_logic;
SIGNAL \s64[1][33]~238_combout\ : std_logic;
SIGNAL \s64~239_combout\ : std_logic;
SIGNAL \s64[3][33]~240_combout\ : std_logic;
SIGNAL \s64[4][33]~241_combout\ : std_logic;
SIGNAL \s64[4][17]~175_combout\ : std_logic;
SIGNAL \s64[1][55]~179_combout\ : std_logic;
SIGNAL \s64[1][55]~180_combout\ : std_logic;
SIGNAL \s64[1][51]~177_combout\ : std_logic;
SIGNAL \s64[1][51]~178_combout\ : std_logic;
SIGNAL \s64[2][53]~181_combout\ : std_logic;
SIGNAL \s64[1][53]~182_combout\ : std_logic;
SIGNAL \s64[1][53]~183_combout\ : std_logic;
SIGNAL \s64[2][53]~184_combout\ : std_logic;
SIGNAL \s64[3][49]~222_combout\ : std_logic;
SIGNAL \s64[2][49]~223_combout\ : std_logic;
SIGNAL \s64[1][49]~224_combout\ : std_logic;
SIGNAL \s64[1][49]~225_combout\ : std_logic;
SIGNAL \s64[2][49]~226_combout\ : std_logic;
SIGNAL \s64[3][49]~227_combout\ : std_logic;
SIGNAL \s64[1][61]~190_combout\ : std_logic;
SIGNAL \s64[1][61]~191_combout\ : std_logic;
SIGNAL \s64[1][59]~185_combout\ : std_logic;
SIGNAL \s64[1][59]~186_combout\ : std_logic;
SIGNAL \s64[1][63]~187_combout\ : std_logic;
SIGNAL \s64[1][63]~188_combout\ : std_logic;
SIGNAL \s64[2][61]~189_combout\ : std_logic;
SIGNAL \s64[2][61]~192_combout\ : std_logic;
SIGNAL \s64[3][57]~193_combout\ : std_logic;
SIGNAL \s64[1][57]~195_combout\ : std_logic;
SIGNAL \s64[1][57]~196_combout\ : std_logic;
SIGNAL \s64[2][57]~194_combout\ : std_logic;
SIGNAL \s64[2][57]~197_combout\ : std_logic;
SIGNAL \s64[3][57]~198_combout\ : std_logic;
SIGNAL \s64[4][49]~221_combout\ : std_logic;
SIGNAL \s64[4][49]~228_combout\ : std_logic;
SIGNAL \s64[5][33]~229_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \s64~166_combout\ : std_logic;
SIGNAL \s64~167_combout\ : std_logic;
SIGNAL \s64[2][1]~168_combout\ : std_logic;
SIGNAL \s64[2][1]~169_combout\ : std_logic;
SIGNAL \s64[4][1]~170_combout\ : std_logic;
SIGNAL \s64[4][1]~171_combout\ : std_logic;
SIGNAL \s64[5][1]~176_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \s64[2][22]~244_combout\ : std_logic;
SIGNAL \s64[2][22]~245_combout\ : std_logic;
SIGNAL \s64[2][26]~242_combout\ : std_logic;
SIGNAL \s64[2][26]~243_combout\ : std_logic;
SIGNAL \s32[3][26]~15_combout\ : std_logic;
SIGNAL \fill64~0_combout\ : std_logic;
SIGNAL \s32[2][30]~14_combout\ : std_logic;
SIGNAL \s32[3][26]~55_combout\ : std_logic;
SIGNAL \s64[2][14]~249_combout\ : std_logic;
SIGNAL \s64[2][14]~250_combout\ : std_logic;
SIGNAL \s64[2][10]~252_combout\ : std_logic;
SIGNAL \s64[2][10]~253_combout\ : std_logic;
SIGNAL \s64[3][10]~254_combout\ : std_logic;
SIGNAL \s64[2][6]~255_combout\ : std_logic;
SIGNAL \s64[2][6]~256_combout\ : std_logic;
SIGNAL \s64[3][10]~257_combout\ : std_logic;
SIGNAL \s64[2][18]~246_combout\ : std_logic;
SIGNAL \s64[2][18]~247_combout\ : std_logic;
SIGNAL \s64[3][18]~248_combout\ : std_logic;
SIGNAL \s64[3][18]~251_combout\ : std_logic;
SIGNAL \s32[4][18]~16_combout\ : std_logic;
SIGNAL \s32[4][18]~17_combout\ : std_logic;
SIGNAL \s64[2][30]~262_combout\ : std_logic;
SIGNAL \s64[3][26]~263_combout\ : std_logic;
SIGNAL \s64[4][18]~264_combout\ : std_logic;
SIGNAL \s64[2][2]~258_combout\ : std_logic;
SIGNAL \s64[2][2]~259_combout\ : std_logic;
SIGNAL \s64[4][2]~260_combout\ : std_logic;
SIGNAL \s64[4][2]~261_combout\ : std_logic;
SIGNAL \s64[5][2]~265_combout\ : std_logic;
SIGNAL \s64[2][34]~292_combout\ : std_logic;
SIGNAL \s64[2][34]~293_combout\ : std_logic;
SIGNAL \s64[2][38]~274_combout\ : std_logic;
SIGNAL \s64[2][38]~275_combout\ : std_logic;
SIGNAL \s64~290_combout\ : std_logic;
SIGNAL \s64[3][34]~291_combout\ : std_logic;
SIGNAL \s64[3][34]~294_combout\ : std_logic;
SIGNAL \s64[2][42]~279_combout\ : std_logic;
SIGNAL \s64[2][42]~280_combout\ : std_logic;
SIGNAL \s64[2][46]~276_combout\ : std_logic;
SIGNAL \s64[2][46]~277_combout\ : std_logic;
SIGNAL \s64[3][42]~278_combout\ : std_logic;
SIGNAL \s64[3][42]~281_combout\ : std_logic;
SIGNAL \s64[4][34]~289_combout\ : std_logic;
SIGNAL \s64[4][34]~295_combout\ : std_logic;
SIGNAL \s64[2][54]~266_combout\ : std_logic;
SIGNAL \s64[2][54]~267_combout\ : std_logic;
SIGNAL \fill64~1_combout\ : std_logic;
SIGNAL \s64[2][62]~268_combout\ : std_logic;
SIGNAL \s64[2][62]~269_combout\ : std_logic;
SIGNAL \s64[3][58]~270_combout\ : std_logic;
SIGNAL \s64[2][58]~271_combout\ : std_logic;
SIGNAL \s64[2][58]~272_combout\ : std_logic;
SIGNAL \s64[3][58]~273_combout\ : std_logic;
SIGNAL \s64[4][50]~282_combout\ : std_logic;
SIGNAL \s64[3][50]~283_combout\ : std_logic;
SIGNAL \s64[2][50]~284_combout\ : std_logic;
SIGNAL \s64[2][50]~285_combout\ : std_logic;
SIGNAL \s64[3][50]~286_combout\ : std_logic;
SIGNAL \s64[4][50]~287_combout\ : std_logic;
SIGNAL \s64[5][34]~288_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \s64[2][23]~298_combout\ : std_logic;
SIGNAL \s64[2][23]~299_combout\ : std_logic;
SIGNAL \s64[2][27]~296_combout\ : std_logic;
SIGNAL \s64[2][27]~297_combout\ : std_logic;
SIGNAL \s32[3][27]~19_combout\ : std_logic;
SIGNAL \s64[2][7]~309_combout\ : std_logic;
SIGNAL \s64[2][7]~310_combout\ : std_logic;
SIGNAL \s64[2][11]~306_combout\ : std_logic;
SIGNAL \s64[2][11]~307_combout\ : std_logic;
SIGNAL \s64[2][15]~303_combout\ : std_logic;
SIGNAL \s64[2][15]~304_combout\ : std_logic;
SIGNAL \s64[3][11]~308_combout\ : std_logic;
SIGNAL \s64[3][11]~311_combout\ : std_logic;
SIGNAL \s64[2][19]~300_combout\ : std_logic;
SIGNAL \s64[2][19]~301_combout\ : std_logic;
SIGNAL \s64[3][19]~302_combout\ : std_logic;
SIGNAL \s64[3][19]~305_combout\ : std_logic;
SIGNAL \s32[4][19]~20_combout\ : std_logic;
SIGNAL \s32[2][31]~18_combout\ : std_logic;
SIGNAL \s32[3][27]~56_combout\ : std_logic;
SIGNAL \s32[4][19]~21_combout\ : std_logic;
SIGNAL \s64[2][3]~312_combout\ : std_logic;
SIGNAL \s64[2][3]~313_combout\ : std_logic;
SIGNAL \s64[4][3]~314_combout\ : std_logic;
SIGNAL \s64[4][3]~315_combout\ : std_logic;
SIGNAL \s64[2][31]~316_combout\ : std_logic;
SIGNAL \s64[3][27]~317_combout\ : std_logic;
SIGNAL \s64[4][19]~318_combout\ : std_logic;
SIGNAL \s64[5][3]~319_combout\ : std_logic;
SIGNAL \s64[2][63]~322_combout\ : std_logic;
SIGNAL \s64[2][63]~323_combout\ : std_logic;
SIGNAL \s64[2][55]~320_combout\ : std_logic;
SIGNAL \s64[2][55]~321_combout\ : std_logic;
SIGNAL \s64[3][59]~324_combout\ : std_logic;
SIGNAL \s64[2][59]~325_combout\ : std_logic;
SIGNAL \s64[2][59]~326_combout\ : std_logic;
SIGNAL \s64[3][59]~327_combout\ : std_logic;
SIGNAL \s64[2][47]~330_combout\ : std_logic;
SIGNAL \s64[2][47]~331_combout\ : std_logic;
SIGNAL \s64[2][39]~328_combout\ : std_logic;
SIGNAL \s64[2][39]~329_combout\ : std_logic;
SIGNAL \s64[3][43]~332_combout\ : std_logic;
SIGNAL \s64[2][43]~333_combout\ : std_logic;
SIGNAL \s64[2][43]~334_combout\ : std_logic;
SIGNAL \s64[3][43]~335_combout\ : std_logic;
SIGNAL \s64[4][51]~336_combout\ : std_logic;
SIGNAL \s64[3][51]~337_combout\ : std_logic;
SIGNAL \s64[2][51]~338_combout\ : std_logic;
SIGNAL \s64[2][51]~339_combout\ : std_logic;
SIGNAL \s64[3][51]~340_combout\ : std_logic;
SIGNAL \s64[4][51]~341_combout\ : std_logic;
SIGNAL \s64[5][35]~342_combout\ : std_logic;
SIGNAL \s64[4][35]~343_combout\ : std_logic;
SIGNAL \s64[2][35]~347_combout\ : std_logic;
SIGNAL \s64[2][35]~348_combout\ : std_logic;
SIGNAL \s64~344_combout\ : std_logic;
SIGNAL \s64~345_combout\ : std_logic;
SIGNAL \s64[3][35]~346_combout\ : std_logic;
SIGNAL \s64[3][35]~349_combout\ : std_logic;
SIGNAL \s64[4][35]~350_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \s64[3][20]~351_combout\ : std_logic;
SIGNAL \s64[3][20]~352_combout\ : std_logic;
SIGNAL \s64[3][12]~353_combout\ : std_logic;
SIGNAL \s64[3][12]~354_combout\ : std_logic;
SIGNAL \s32[4][20]~24_combout\ : std_logic;
SIGNAL \s32[3][28]~22_combout\ : std_logic;
SIGNAL \fill32~0_combout\ : std_logic;
SIGNAL \s32[3][28]~23_combout\ : std_logic;
SIGNAL \s32[4][20]~25_combout\ : std_logic;
SIGNAL \s64[3][4]~355_combout\ : std_logic;
SIGNAL \s64[3][4]~356_combout\ : std_logic;
SIGNAL \s64[4][4]~357_combout\ : std_logic;
SIGNAL \s64[3][28]~358_combout\ : std_logic;
SIGNAL \s64[4][20]~359_combout\ : std_logic;
SIGNAL \s64[5][4]~360_combout\ : std_logic;
SIGNAL \s64[3][44]~363_combout\ : std_logic;
SIGNAL \s64[3][44]~364_combout\ : std_logic;
SIGNAL \s64[4][36]~370_combout\ : std_logic;
SIGNAL \s64[3][36]~371_combout\ : std_logic;
SIGNAL \s64[3][36]~372_combout\ : std_logic;
SIGNAL \s64[4][36]~373_combout\ : std_logic;
SIGNAL \s64[3][52]~366_combout\ : std_logic;
SIGNAL \s64[3][52]~367_combout\ : std_logic;
SIGNAL \s64[3][60]~361_combout\ : std_logic;
SIGNAL \s64[3][60]~362_combout\ : std_logic;
SIGNAL \s64[4][52]~365_combout\ : std_logic;
SIGNAL \s64[4][52]~368_combout\ : std_logic;
SIGNAL \s64[5][36]~369_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \s64[3][5]~378_combout\ : std_logic;
SIGNAL \s64[3][5]~379_combout\ : std_logic;
SIGNAL \s64[3][13]~376_combout\ : std_logic;
SIGNAL \s64[3][13]~377_combout\ : std_logic;
SIGNAL \s64[4][5]~380_combout\ : std_logic;
SIGNAL \s64[3][21]~374_combout\ : std_logic;
SIGNAL \s64[3][21]~375_combout\ : std_logic;
SIGNAL \s32[4][21]~28_combout\ : std_logic;
SIGNAL \s64[3][29]~381_combout\ : std_logic;
SIGNAL \s64[3][29]~382_combout\ : std_logic;
SIGNAL \s64[4][21]~383_combout\ : std_logic;
SIGNAL \s64[3][53]~390_combout\ : std_logic;
SIGNAL \s64[3][53]~391_combout\ : std_logic;
SIGNAL \s64[3][45]~387_combout\ : std_logic;
SIGNAL \s64[3][45]~388_combout\ : std_logic;
SIGNAL \s64[3][61]~385_combout\ : std_logic;
SIGNAL \s64[3][61]~386_combout\ : std_logic;
SIGNAL \s64[4][53]~389_combout\ : std_logic;
SIGNAL \s64[4][53]~392_combout\ : std_logic;
SIGNAL \s64[5][37]~393_combout\ : std_logic;
SIGNAL \s64[3][37]~395_combout\ : std_logic;
SIGNAL \s64[3][37]~396_combout\ : std_logic;
SIGNAL \s64[4][37]~394_combout\ : std_logic;
SIGNAL \s64[4][37]~397_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \s64[5][5]~384_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \s32[3][29]~26_combout\ : std_logic;
SIGNAL \s32[3][29]~27_combout\ : std_logic;
SIGNAL \s32[4][21]~29_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \s64[3][54]~414_combout\ : std_logic;
SIGNAL \s64[3][54]~415_combout\ : std_logic;
SIGNAL \s64[3][62]~409_combout\ : std_logic;
SIGNAL \s64[3][62]~410_combout\ : std_logic;
SIGNAL \s64[3][46]~411_combout\ : std_logic;
SIGNAL \s64[3][46]~412_combout\ : std_logic;
SIGNAL \s64[4][54]~413_combout\ : std_logic;
SIGNAL \s64[4][54]~416_combout\ : std_logic;
SIGNAL \s64[3][30]~405_combout\ : std_logic;
SIGNAL \s64[3][30]~406_combout\ : std_logic;
SIGNAL \s64[3][22]~398_combout\ : std_logic;
SIGNAL \s64[3][22]~399_combout\ : std_logic;
SIGNAL \s64[3][14]~400_combout\ : std_logic;
SIGNAL \s64[3][14]~401_combout\ : std_logic;
SIGNAL \s32[4][22]~32_combout\ : std_logic;
SIGNAL \s64[4][22]~407_combout\ : std_logic;
SIGNAL \s64[5][38]~417_combout\ : std_logic;
SIGNAL \s64[3][38]~419_combout\ : std_logic;
SIGNAL \s64[3][38]~420_combout\ : std_logic;
SIGNAL \s64[4][38]~418_combout\ : std_logic;
SIGNAL \s64[4][38]~421_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \s64[3][6]~402_combout\ : std_logic;
SIGNAL \s64[3][6]~403_combout\ : std_logic;
SIGNAL \s64[4][6]~404_combout\ : std_logic;
SIGNAL \s64[5][6]~408_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \s32[3][30]~30_combout\ : std_logic;
SIGNAL \s32[3][30]~31_combout\ : std_logic;
SIGNAL \s32[4][22]~33_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \s64[3][7]~426_combout\ : std_logic;
SIGNAL \s64[3][7]~427_combout\ : std_logic;
SIGNAL \s64[3][15]~424_combout\ : std_logic;
SIGNAL \s64[3][15]~425_combout\ : std_logic;
SIGNAL \s64[4][7]~428_combout\ : std_logic;
SIGNAL \s64[3][23]~422_combout\ : std_logic;
SIGNAL \s64[3][23]~423_combout\ : std_logic;
SIGNAL \s32[4][23]~36_combout\ : std_logic;
SIGNAL \s32[3][31]~34_combout\ : std_logic;
SIGNAL \s32[3][31]~35_combout\ : std_logic;
SIGNAL \s32[4][23]~37_combout\ : std_logic;
SIGNAL \s64[3][39]~443_combout\ : std_logic;
SIGNAL \s64[3][39]~444_combout\ : std_logic;
SIGNAL \s64[3][47]~435_combout\ : std_logic;
SIGNAL \s64[3][47]~436_combout\ : std_logic;
SIGNAL \s64[3][31]~429_combout\ : std_logic;
SIGNAL \s64[3][31]~430_combout\ : std_logic;
SIGNAL \s64[4][39]~442_combout\ : std_logic;
SIGNAL \s64[4][39]~445_combout\ : std_logic;
SIGNAL \s64[4][23]~431_combout\ : std_logic;
SIGNAL \s64[3][55]~438_combout\ : std_logic;
SIGNAL \s64[3][55]~439_combout\ : std_logic;
SIGNAL \s64[3][63]~433_combout\ : std_logic;
SIGNAL \s64[3][63]~434_combout\ : std_logic;
SIGNAL \s64[4][55]~437_combout\ : std_logic;
SIGNAL \s64[4][55]~440_combout\ : std_logic;
SIGNAL \s64[5][39]~441_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \s64[5][7]~432_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \s64[4][8]~446_combout\ : std_logic;
SIGNAL \s64[4][8]~447_combout\ : std_logic;
SIGNAL \s64[4][8]~448_combout\ : std_logic;
SIGNAL \s32[4][24]~39_combout\ : std_logic;
SIGNAL \s64[4][24]~449_combout\ : std_logic;
SIGNAL \s64[5][8]~450_combout\ : std_logic;
SIGNAL \s64[4][56]~451_combout\ : std_logic;
SIGNAL \s64[4][56]~452_combout\ : std_logic;
SIGNAL \s64[5][40]~453_combout\ : std_logic;
SIGNAL \s64[4][40]~454_combout\ : std_logic;
SIGNAL \s64[4][40]~455_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \s32[4][24]~38_combout\ : std_logic;
SIGNAL \s32[4][24]~40_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \s32[4][25]~41_combout\ : std_logic;
SIGNAL \s32[4][25]~42_combout\ : std_logic;
SIGNAL \s64[4][25]~458_combout\ : std_logic;
SIGNAL \s64[4][25]~459_combout\ : std_logic;
SIGNAL \s64[4][9]~456_combout\ : std_logic;
SIGNAL \s64[4][9]~457_combout\ : std_logic;
SIGNAL \s64[5][9]~460_combout\ : std_logic;
SIGNAL \s64[4][57]~461_combout\ : std_logic;
SIGNAL \s64[4][57]~462_combout\ : std_logic;
SIGNAL \s64[5][41]~463_combout\ : std_logic;
SIGNAL \s64[4][41]~464_combout\ : std_logic;
SIGNAL \s64[4][41]~465_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \s32[4][26]~43_combout\ : std_logic;
SIGNAL \s32[4][26]~44_combout\ : std_logic;
SIGNAL \s64[4][10]~466_combout\ : std_logic;
SIGNAL \s64[4][10]~467_combout\ : std_logic;
SIGNAL \s64[4][26]~468_combout\ : std_logic;
SIGNAL \s64[4][26]~469_combout\ : std_logic;
SIGNAL \s64[4][58]~471_combout\ : std_logic;
SIGNAL \s64[4][58]~472_combout\ : std_logic;
SIGNAL \s64[5][42]~473_combout\ : std_logic;
SIGNAL \s64[4][42]~474_combout\ : std_logic;
SIGNAL \s64[4][42]~475_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \s64[5][10]~470_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \s64[4][11]~476_combout\ : std_logic;
SIGNAL \s64[4][11]~477_combout\ : std_logic;
SIGNAL \s32[4][27]~45_combout\ : std_logic;
SIGNAL \s32[4][27]~46_combout\ : std_logic;
SIGNAL \s64[4][27]~478_combout\ : std_logic;
SIGNAL \s64[4][27]~479_combout\ : std_logic;
SIGNAL \s64[5][11]~480_combout\ : std_logic;
SIGNAL \s64[4][43]~484_combout\ : std_logic;
SIGNAL \s64[4][43]~485_combout\ : std_logic;
SIGNAL \s64[4][59]~481_combout\ : std_logic;
SIGNAL \s64[4][59]~482_combout\ : std_logic;
SIGNAL \s64[5][43]~483_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \s64[4][12]~486_combout\ : std_logic;
SIGNAL \s64[4][12]~487_combout\ : std_logic;
SIGNAL \s32[4][28]~47_combout\ : std_logic;
SIGNAL \s32[4][28]~48_combout\ : std_logic;
SIGNAL \s64[4][44]~494_combout\ : std_logic;
SIGNAL \s64[4][44]~495_combout\ : std_logic;
SIGNAL \s64[4][28]~488_combout\ : std_logic;
SIGNAL \s64[4][28]~489_combout\ : std_logic;
SIGNAL \s64[4][60]~491_combout\ : std_logic;
SIGNAL \s64[4][60]~492_combout\ : std_logic;
SIGNAL \s64[5][44]~493_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \s64[5][12]~490_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \s64[4][45]~504_combout\ : std_logic;
SIGNAL \s64[4][45]~505_combout\ : std_logic;
SIGNAL \s64[4][61]~501_combout\ : std_logic;
SIGNAL \s64[4][61]~502_combout\ : std_logic;
SIGNAL \s64[4][29]~498_combout\ : std_logic;
SIGNAL \s64[4][29]~499_combout\ : std_logic;
SIGNAL \s64[5][45]~503_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \s64[4][13]~496_combout\ : std_logic;
SIGNAL \s64[4][13]~497_combout\ : std_logic;
SIGNAL \s64[5][13]~500_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \s32[4][29]~57_combout\ : std_logic;
SIGNAL \s32[4][29]~49_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \s64[4][14]~506_combout\ : std_logic;
SIGNAL \s64[4][14]~507_combout\ : std_logic;
SIGNAL \s64[4][30]~508_combout\ : std_logic;
SIGNAL \s64[4][30]~509_combout\ : std_logic;
SIGNAL \s64[5][14]~510_combout\ : std_logic;
SIGNAL \s64[4][62]~511_combout\ : std_logic;
SIGNAL \s64[4][62]~512_combout\ : std_logic;
SIGNAL \s64[5][46]~513_combout\ : std_logic;
SIGNAL \s64[4][46]~514_combout\ : std_logic;
SIGNAL \s64[4][46]~515_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \s32[4][30]~50_combout\ : std_logic;
SIGNAL \s32[4][30]~51_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \s32[4][31]~52_combout\ : std_logic;
SIGNAL \s32[4][31]~53_combout\ : std_logic;
SIGNAL \s64[4][15]~516_combout\ : std_logic;
SIGNAL \s64[4][15]~517_combout\ : std_logic;
SIGNAL \s64[4][31]~518_combout\ : std_logic;
SIGNAL \s64[4][31]~519_combout\ : std_logic;
SIGNAL \s64[4][63]~521_combout\ : std_logic;
SIGNAL \s64[4][63]~522_combout\ : std_logic;
SIGNAL \s64[5][47]~523_combout\ : std_logic;
SIGNAL \s64[4][47]~524_combout\ : std_logic;
SIGNAL \s64[4][47]~525_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
SIGNAL \s64[5][15]~520_combout\ : std_logic;
SIGNAL \Y~51_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \s64[5][16]~528_combout\ : std_logic;
SIGNAL \s64[5][16]~529_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \Y~55_combout\ : std_logic;
SIGNAL \Y~54_combout\ : std_logic;
SIGNAL \s64[5][48]~526_combout\ : std_logic;
SIGNAL \s64[5][48]~527_combout\ : std_logic;
SIGNAL \Y~56_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \s64[5][49]~530_combout\ : std_logic;
SIGNAL \s64[5][49]~531_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \s64[5][17]~532_combout\ : std_logic;
SIGNAL \s64[5][17]~533_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \s64[5][50]~534_combout\ : std_logic;
SIGNAL \s64[5][50]~535_combout\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \s64[5][18]~536_combout\ : std_logic;
SIGNAL \s64[5][18]~537_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \s64[5][51]~538_combout\ : std_logic;
SIGNAL \s64[5][51]~539_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \s64[5][19]~540_combout\ : std_logic;
SIGNAL \s64[5][19]~541_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \s64[5][20]~544_combout\ : std_logic;
SIGNAL \s64[5][20]~545_combout\ : std_logic;
SIGNAL \s64[5][52]~542_combout\ : std_logic;
SIGNAL \s64[5][52]~543_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \s64[5][21]~548_combout\ : std_logic;
SIGNAL \s64[5][21]~549_combout\ : std_logic;
SIGNAL \s64[5][53]~546_combout\ : std_logic;
SIGNAL \s64[5][53]~547_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \s64[5][54]~550_combout\ : std_logic;
SIGNAL \s64[5][54]~551_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
SIGNAL \Y~75_combout\ : std_logic;
SIGNAL \s64[5][22]~552_combout\ : std_logic;
SIGNAL \s64[5][22]~553_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \s64[5][55]~554_combout\ : std_logic;
SIGNAL \s64[5][55]~555_combout\ : std_logic;
SIGNAL \Y~77_combout\ : std_logic;
SIGNAL \Y~78_combout\ : std_logic;
SIGNAL \s64[5][23]~556_combout\ : std_logic;
SIGNAL \s64[5][23]~557_combout\ : std_logic;
SIGNAL \Y~79_combout\ : std_logic;
SIGNAL \s64[5][24]~560_combout\ : std_logic;
SIGNAL \s64[5][24]~561_combout\ : std_logic;
SIGNAL \s64[5][56]~558_combout\ : std_logic;
SIGNAL \s64[5][56]~559_combout\ : std_logic;
SIGNAL \Y~80_combout\ : std_logic;
SIGNAL \Y~81_combout\ : std_logic;
SIGNAL \Y~82_combout\ : std_logic;
SIGNAL \s64[5][25]~564_combout\ : std_logic;
SIGNAL \s64[5][25]~565_combout\ : std_logic;
SIGNAL \s64[5][57]~562_combout\ : std_logic;
SIGNAL \s64[5][57]~563_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \s64[5][26]~568_combout\ : std_logic;
SIGNAL \s64[5][26]~569_combout\ : std_logic;
SIGNAL \s64[5][58]~566_combout\ : std_logic;
SIGNAL \s64[5][58]~567_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \s64[5][59]~570_combout\ : std_logic;
SIGNAL \s64[5][59]~571_combout\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \s64[5][27]~572_combout\ : std_logic;
SIGNAL \s64[5][27]~573_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \s64[5][28]~576_combout\ : std_logic;
SIGNAL \s64[5][28]~577_combout\ : std_logic;
SIGNAL \s64[5][60]~574_combout\ : std_logic;
SIGNAL \s64[5][60]~575_combout\ : std_logic;
SIGNAL \Y~92_combout\ : std_logic;
SIGNAL \Y~93_combout\ : std_logic;
SIGNAL \Y~94_combout\ : std_logic;
SIGNAL \s64[5][61]~578_combout\ : std_logic;
SIGNAL \s64[5][61]~579_combout\ : std_logic;
SIGNAL \Y~95_combout\ : std_logic;
SIGNAL \Y~96_combout\ : std_logic;
SIGNAL \s64[5][29]~580_combout\ : std_logic;
SIGNAL \s64[5][29]~581_combout\ : std_logic;
SIGNAL \Y~97_combout\ : std_logic;
SIGNAL \s64[5][30]~584_combout\ : std_logic;
SIGNAL \s64[5][30]~585_combout\ : std_logic;
SIGNAL \s64[5][62]~582_combout\ : std_logic;
SIGNAL \s64[5][62]~583_combout\ : std_logic;
SIGNAL \Y~98_combout\ : std_logic;
SIGNAL \Y~99_combout\ : std_logic;
SIGNAL \Y~100_combout\ : std_logic;
SIGNAL \Y_32_extended[31]~0_combout\ : std_logic;
SIGNAL \Y_32_extended[31]~1_combout\ : std_logic;
SIGNAL \s64[5][63]~586_combout\ : std_logic;
SIGNAL \s64[5][63]~587_combout\ : std_logic;
SIGNAL \Y~101_combout\ : std_logic;
SIGNAL \s64[5][31]~588_combout\ : std_logic;
SIGNAL \s64[5][31]~589_combout\ : std_logic;
SIGNAL \Y~102_combout\ : std_logic;
SIGNAL \Y~103_combout\ : std_logic;
SIGNAL \Y~104_combout\ : std_logic;
SIGNAL \Y~105_combout\ : std_logic;
SIGNAL \s64[5][33]~590_combout\ : std_logic;
SIGNAL \Y~106_combout\ : std_logic;
SIGNAL \Y~107_combout\ : std_logic;
SIGNAL \s64[5][34]~591_combout\ : std_logic;
SIGNAL \Y~108_combout\ : std_logic;
SIGNAL \Y~109_combout\ : std_logic;
SIGNAL \s64[5][35]~592_combout\ : std_logic;
SIGNAL \Y~110_combout\ : std_logic;
SIGNAL \Y~111_combout\ : std_logic;
SIGNAL \s64[5][36]~593_combout\ : std_logic;
SIGNAL \Y~112_combout\ : std_logic;
SIGNAL \Y~113_combout\ : std_logic;
SIGNAL \s64[5][37]~594_combout\ : std_logic;
SIGNAL \Y~114_combout\ : std_logic;
SIGNAL \Y~115_combout\ : std_logic;
SIGNAL \s64[5][38]~595_combout\ : std_logic;
SIGNAL \Y~116_combout\ : std_logic;
SIGNAL \Y~117_combout\ : std_logic;
SIGNAL \s64[5][39]~596_combout\ : std_logic;
SIGNAL \Y~118_combout\ : std_logic;
SIGNAL \Y~119_combout\ : std_logic;
SIGNAL \s64[5][40]~597_combout\ : std_logic;
SIGNAL \Y~120_combout\ : std_logic;
SIGNAL \Y~121_combout\ : std_logic;
SIGNAL \s64[5][41]~598_combout\ : std_logic;
SIGNAL \Y~122_combout\ : std_logic;
SIGNAL \Y~123_combout\ : std_logic;
SIGNAL \s64[5][42]~599_combout\ : std_logic;
SIGNAL \Y~124_combout\ : std_logic;
SIGNAL \Y~125_combout\ : std_logic;
SIGNAL \s64[5][43]~600_combout\ : std_logic;
SIGNAL \Y~126_combout\ : std_logic;
SIGNAL \Y~127_combout\ : std_logic;
SIGNAL \s64[5][44]~601_combout\ : std_logic;
SIGNAL \Y~128_combout\ : std_logic;
SIGNAL \Y~129_combout\ : std_logic;
SIGNAL \s64[5][45]~602_combout\ : std_logic;
SIGNAL \Y~130_combout\ : std_logic;
SIGNAL \Y~131_combout\ : std_logic;
SIGNAL \s64[5][46]~603_combout\ : std_logic;
SIGNAL \Y~132_combout\ : std_logic;
SIGNAL \Y~133_combout\ : std_logic;
SIGNAL \s64[5][47]~604_combout\ : std_logic;
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
SIGNAL \Y~155_combout\ : std_logic;
SIGNAL \Y~156_combout\ : std_logic;
SIGNAL \Y~157_combout\ : std_logic;
SIGNAL \Y~158_combout\ : std_logic;
SIGNAL \Y~159_combout\ : std_logic;
SIGNAL \Y~160_combout\ : std_logic;
SIGNAL \Y~161_combout\ : std_logic;
SIGNAL \Y~162_combout\ : std_logic;
SIGNAL \Y~163_combout\ : std_logic;
SIGNAL \Y~164_combout\ : std_logic;
SIGNAL \Y~165_combout\ : std_logic;
SIGNAL \Y~166_combout\ : std_logic;
SIGNAL \Y~167_combout\ : std_logic;

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

-- Location: IOOBUF_X85_Y73_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~6_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~10_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~13_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~16_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~22_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~34_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~37_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~40_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~43_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~46_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~49_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~52_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~58_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~61_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~64_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~67_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~70_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~73_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~76_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~79_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~82_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~85_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~88_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~91_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~94_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~97_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~100_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~102_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~105_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~107_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~109_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~111_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~113_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~115_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~117_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~119_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~121_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~123_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~125_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~127_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~129_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~131_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~133_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~135_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~137_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~139_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~141_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~143_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~145_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~147_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~149_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~151_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~153_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~155_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~157_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~159_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~161_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~163_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~165_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~167_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X42_Y73_N8
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X63_Y59_N8
\Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = (\B[5]~input_o\ & (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~4_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X55_Y62_N6
\s64~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~116_combout\ = (\A[0]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~116_combout\);

-- Location: IOIBUF_X56_Y73_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X55_Y62_N18
\s64[2][0]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~118_combout\ = \B[1]~input_o\ $ (((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \s64[2][0]~118_combout\);

-- Location: LCCOMB_X55_Y62_N4
\s64[2][0]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~119_combout\ = (\B[1]~input_o\ & (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[2][0]~119_combout\);

-- Location: IOIBUF_X0_Y62_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X55_Y62_N0
\s64~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~117_combout\ = (\B[0]~input_o\ & ((\A[3]~input_o\))) # (!\B[0]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~117_combout\);

-- Location: LCCOMB_X55_Y62_N22
\s64[2][0]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~120_combout\ = (\s64[2][0]~118_combout\ & (((!\s64[2][0]~119_combout\)))) # (!\s64[2][0]~118_combout\ & ((\s64[2][0]~119_combout\ & (\s64~116_combout\)) # (!\s64[2][0]~119_combout\ & ((\s64~117_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~116_combout\,
	datab => \s64[2][0]~118_combout\,
	datac => \s64[2][0]~119_combout\,
	datad => \s64~117_combout\,
	combout => \s64[2][0]~120_combout\);

-- Location: IOIBUF_X25_Y73_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X55_Y62_N12
\s64[2][0]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~115_combout\ = (\B[1]~input_o\) # ((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \s64[2][0]~115_combout\);

-- Location: LCCOMB_X55_Y62_N8
\s64[2][0]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~121_combout\ = (\s64[2][0]~120_combout\ & (((\A[0]~input_o\) # (\s64[2][0]~115_combout\)))) # (!\s64[2][0]~120_combout\ & (\A[1]~input_o\ & ((!\s64[2][0]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][0]~120_combout\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \s64[2][0]~115_combout\,
	combout => \s64[2][0]~121_combout\);

-- Location: LCCOMB_X55_Y62_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X57_Y62_N4
\s64~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~37_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~37_combout\);

-- Location: LCCOMB_X57_Y62_N18
\s64~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~36_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~36_combout\);

-- Location: LCCOMB_X57_Y62_N22
\s64[2][4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][4]~38_combout\ = (\Equal0~0_combout\ & ((\B[1]~input_o\) # ((\s64~36_combout\)))) # (!\Equal0~0_combout\ & (!\B[1]~input_o\ & (\s64~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~37_combout\,
	datad => \s64~36_combout\,
	combout => \s64[2][4]~38_combout\);

-- Location: LCCOMB_X55_Y62_N26
\s64~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~39_combout\ = (\B[0]~input_o\ & ((\A[1]~input_o\))) # (!\B[0]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~39_combout\);

-- Location: IOIBUF_X29_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X57_Y62_N24
\s64~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~35_combout\ = (\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~35_combout\);

-- Location: LCCOMB_X57_Y62_N8
\s64[2][4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][4]~40_combout\ = (\s64[2][4]~38_combout\ & (((\s64~39_combout\)) # (!\B[1]~input_o\))) # (!\s64[2][4]~38_combout\ & (\B[1]~input_o\ & ((\s64~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][4]~38_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~39_combout\,
	datad => \s64~35_combout\,
	combout => \s64[2][4]~40_combout\);

-- Location: IOIBUF_X65_Y73_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X60_Y63_N26
\s64[4][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][0]~21_combout\ = (\B[2]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \s64[4][0]~21_combout\);

-- Location: LCCOMB_X61_Y61_N20
\s64[4][0]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][0]~122_combout\ = (\s64[2][0]~121_combout\ & (((\s64[2][4]~40_combout\ & \s64[4][0]~21_combout\)) # (!\B[2]~input_o\))) # (!\s64[2][0]~121_combout\ & (\s64[2][4]~40_combout\ & ((\s64[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][0]~121_combout\,
	datab => \s64[2][4]~40_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[4][0]~21_combout\,
	combout => \s64[4][0]~122_combout\);

-- Location: LCCOMB_X60_Y63_N8
\s64[4][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][0]~20_combout\ = (\B[3]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \s64[4][0]~20_combout\);

-- Location: IOIBUF_X27_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X57_Y65_N22
\s64~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~30_combout\ = (\B[0]~input_o\ & (\A[9]~input_o\)) # (!\B[0]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[8]~input_o\,
	combout => \s64~30_combout\);

-- Location: LCCOMB_X57_Y62_N16
\s64~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~29_combout\ = (\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~29_combout\);

-- Location: LCCOMB_X57_Y62_N26
\s64[2][8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][8]~31_combout\ = (\Equal0~0_combout\ & (((\B[1]~input_o\) # (\s64~29_combout\)))) # (!\Equal0~0_combout\ & (\s64~30_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~30_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~29_combout\,
	combout => \s64[2][8]~31_combout\);

-- Location: IOIBUF_X23_Y73_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X57_Y65_N28
\s64~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~28_combout\ = (\B[0]~input_o\ & (\A[11]~input_o\)) # (!\B[0]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	combout => \s64~28_combout\);

-- Location: LCCOMB_X57_Y62_N12
\s64~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~32_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~32_combout\);

-- Location: LCCOMB_X57_Y62_N30
\s64[2][8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][8]~33_combout\ = (\s64[2][8]~31_combout\ & (((\s64~32_combout\) # (!\B[1]~input_o\)))) # (!\s64[2][8]~31_combout\ & (\s64~28_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][8]~31_combout\,
	datab => \s64~28_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~32_combout\,
	combout => \s64[2][8]~33_combout\);

-- Location: LCCOMB_X57_Y65_N26
\s64~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~26_combout\ = (\B[0]~input_o\ & (\A[9]~input_o\)) # (!\B[0]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	combout => \s64~26_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X57_Y65_N0
\s64~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~23_combout\ = (\B[0]~input_o\ & (\A[11]~input_o\)) # (!\B[0]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[12]~input_o\,
	combout => \s64~23_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X58_Y66_N2
\s64~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~24_combout\ = (\B[0]~input_o\ & (\A[13]~input_o\)) # (!\B[0]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[12]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~24_combout\);

-- Location: LCCOMB_X58_Y66_N20
\s64[2][12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][12]~25_combout\ = (\Equal0~0_combout\ & ((\s64~23_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~23_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~24_combout\,
	combout => \s64[2][12]~25_combout\);

-- Location: IOIBUF_X27_Y73_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X58_Y66_N0
\s64~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~22_combout\ = (\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~22_combout\);

-- Location: LCCOMB_X58_Y66_N30
\s64[2][12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][12]~27_combout\ = (\s64[2][12]~25_combout\ & ((\s64~26_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][12]~25_combout\ & (((\B[1]~input_o\ & \s64~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~26_combout\,
	datab => \s64[2][12]~25_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~22_combout\,
	combout => \s64[2][12]~27_combout\);

-- Location: LCCOMB_X61_Y61_N28
\s64[3][8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][8]~34_combout\ = (\s64[2][8]~33_combout\ & (((\s64[2][12]~27_combout\ & \s64[4][0]~21_combout\)) # (!\B[2]~input_o\))) # (!\s64[2][8]~33_combout\ & (\s64[2][12]~27_combout\ & ((\s64[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][8]~33_combout\,
	datab => \s64[2][12]~27_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[4][0]~21_combout\,
	combout => \s64[3][8]~34_combout\);

-- Location: LCCOMB_X61_Y61_N6
\s64[3][8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][8]~41_combout\ = (\s64[3][8]~34_combout\) # ((\B[2]~input_o\ & (\s64[2][4]~40_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][4]~40_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[3][8]~34_combout\,
	combout => \s64[3][8]~41_combout\);

-- Location: LCCOMB_X65_Y61_N2
\s64[4][0]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][0]~123_combout\ = (\B[3]~input_o\ & (((\s64[4][0]~20_combout\ & \s64[3][8]~41_combout\)))) # (!\B[3]~input_o\ & ((\s64[4][0]~122_combout\) # ((\s64[4][0]~20_combout\ & \s64[3][8]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][0]~122_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][8]~41_combout\,
	combout => \s64[4][0]~123_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X57_Y66_N22
\s64~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~14_combout\ = (\B[0]~input_o\ & (\A[19]~input_o\)) # (!\B[0]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~14_combout\);

-- Location: IOIBUF_X54_Y73_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X57_Y66_N16
\s64~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~15_combout\ = (\B[0]~input_o\ & ((\A[21]~input_o\))) # (!\B[0]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~15_combout\);

-- Location: LCCOMB_X57_Y66_N10
\s64[2][20]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][20]~16_combout\ = (\Equal0~0_combout\ & ((\s64~14_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~14_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~15_combout\,
	combout => \s64[2][20]~16_combout\);

-- Location: IOIBUF_X29_Y73_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X57_Y66_N12
\s64~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~17_combout\ = (\B[0]~input_o\ & ((\A[17]~input_o\))) # (!\B[0]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~17_combout\);

-- Location: IOIBUF_X56_Y73_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X59_Y66_N14
\s64~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~13_combout\ = (\B[0]~input_o\ & (\A[23]~input_o\)) # (!\B[0]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[22]~input_o\,
	combout => \s64~13_combout\);

-- Location: LCCOMB_X57_Y66_N30
\s64[2][20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][20]~18_combout\ = (\s64[2][20]~16_combout\ & ((\s64~17_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][20]~16_combout\ & (((\B[1]~input_o\ & \s64~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][20]~16_combout\,
	datab => \s64~17_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~13_combout\,
	combout => \s64[2][20]~18_combout\);

-- Location: LCCOMB_X57_Y66_N0
\s64~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~43_combout\ = (\B[0]~input_o\ & (\A[19]~input_o\)) # (!\B[0]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~43_combout\);

-- Location: LCCOMB_X58_Y66_N22
\s64~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~47_combout\ = (\B[0]~input_o\ & (\A[13]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~47_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X58_Y66_N10
\s64~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~45_combout\ = (\B[0]~input_o\ & ((\A[17]~input_o\))) # (!\B[0]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~45_combout\);

-- Location: LCCOMB_X58_Y66_N16
\s64~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~44_combout\ = (\B[0]~input_o\ & ((\A[15]~input_o\))) # (!\B[0]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[15]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~44_combout\);

-- Location: LCCOMB_X58_Y66_N12
\s64[2][16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][16]~46_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~44_combout\))) # (!\Equal0~0_combout\ & (\s64~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~45_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64~44_combout\,
	combout => \s64[2][16]~46_combout\);

-- Location: LCCOMB_X58_Y66_N24
\s64[2][16]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][16]~48_combout\ = (\B[1]~input_o\ & ((\s64[2][16]~46_combout\ & ((\s64~47_combout\))) # (!\s64[2][16]~46_combout\ & (\s64~43_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][16]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~43_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~47_combout\,
	datad => \s64[2][16]~46_combout\,
	combout => \s64[2][16]~48_combout\);

-- Location: LCCOMB_X61_Y61_N16
\s64[3][16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][16]~49_combout\ = (\s64[2][20]~18_combout\ & ((\s64[4][0]~21_combout\) # ((\s64[2][16]~48_combout\ & !\B[2]~input_o\)))) # (!\s64[2][20]~18_combout\ & (\s64[2][16]~48_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][20]~18_combout\,
	datab => \s64[2][16]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[4][0]~21_combout\,
	combout => \s64[3][16]~49_combout\);

-- Location: LCCOMB_X61_Y61_N2
\s64[3][16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][16]~50_combout\ = (\s64[3][16]~49_combout\) # ((\Equal0~0_combout\ & (\s64[2][12]~27_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][12]~27_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[3][16]~49_combout\,
	combout => \s64[3][16]~50_combout\);

-- Location: LCCOMB_X60_Y62_N8
\s64[4][16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][16]~0_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \s64[4][16]~0_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X59_Y65_N0
\s64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~1_combout\ = (\B[0]~input_o\ & (\A[27]~input_o\)) # (!\B[0]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64~1_combout\);

-- Location: LCCOMB_X57_Y66_N18
\s64~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~5_combout\ = (\B[0]~input_o\ & ((\A[21]~input_o\))) # (!\B[0]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~5_combout\);

-- Location: IOIBUF_X40_Y73_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X59_Y66_N16
\s64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~2_combout\ = (\B[0]~input_o\ & ((\A[23]~input_o\))) # (!\B[0]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[23]~input_o\,
	combout => \s64~2_combout\);

-- Location: IOIBUF_X60_Y73_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X59_Y66_N2
\s64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~3_combout\ = (\B[0]~input_o\ & ((\A[25]~input_o\))) # (!\B[0]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \s64~3_combout\);

-- Location: LCCOMB_X57_Y66_N24
\s64[2][24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][24]~4_combout\ = (\Equal0~0_combout\ & ((\s64~2_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~3_combout\,
	combout => \s64[2][24]~4_combout\);

-- Location: LCCOMB_X57_Y66_N28
\s64[2][24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][24]~6_combout\ = (\B[1]~input_o\ & ((\s64[2][24]~4_combout\ & ((\s64~5_combout\))) # (!\s64[2][24]~4_combout\ & (\s64~1_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][24]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~1_combout\,
	datab => \s64~5_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][24]~4_combout\,
	combout => \s64[2][24]~6_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X59_Y64_N8
\s32[2][30]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][30]~8_combout\ = (\B[0]~input_o\ & ((\A[31]~input_o\))) # (!\B[0]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s32[2][30]~8_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X59_Y65_N10
\s64~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~7_combout\ = (\B[0]~input_o\ & (\A[27]~input_o\)) # (!\B[0]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[27]~input_o\,
	datad => \A[28]~input_o\,
	combout => \s64~7_combout\);

-- Location: IOIBUF_X16_Y73_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X59_Y65_N28
\s64~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~8_combout\ = (\B[0]~input_o\ & (\A[29]~input_o\)) # (!\B[0]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[28]~input_o\,
	combout => \s64~8_combout\);

-- Location: LCCOMB_X59_Y65_N14
\s64[2][28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][28]~9_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~7_combout\)) # (!\Equal0~0_combout\ & ((\s64~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~7_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64~8_combout\,
	combout => \s64[2][28]~9_combout\);

-- Location: LCCOMB_X59_Y66_N20
\s64~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~10_combout\ = (\B[0]~input_o\ & ((\A[25]~input_o\))) # (!\B[0]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \s64~10_combout\);

-- Location: LCCOMB_X59_Y65_N24
\s64[2][28]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][28]~11_combout\ = (\B[1]~input_o\ & ((\s64[2][28]~9_combout\ & ((\s64~10_combout\))) # (!\s64[2][28]~9_combout\ & (\s32[2][30]~8_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][28]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[2][30]~8_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[2][28]~9_combout\,
	datad => \s64~10_combout\,
	combout => \s64[2][28]~11_combout\);

-- Location: LCCOMB_X61_Y61_N24
\s64[3][24]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][24]~12_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][28]~11_combout\)))) # (!\B[2]~input_o\ & (((\s64[2][24]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][24]~6_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][28]~11_combout\,
	combout => \s64[3][24]~12_combout\);

-- Location: LCCOMB_X61_Y61_N26
\s64[3][24]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][24]~19_combout\ = (\s64[3][24]~12_combout\) # ((\s64[2][20]~18_combout\ & (\B[2]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][20]~18_combout\,
	datab => \s64[3][24]~12_combout\,
	datac => \B[2]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][24]~19_combout\);

-- Location: LCCOMB_X65_Y61_N24
\s64[4][16]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][16]~42_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][8]~41_combout\) # ((\s64[3][24]~19_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[4][16]~0_combout\ & (\s64[3][24]~19_combout\ & (\s64[4][0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][24]~19_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][8]~41_combout\,
	combout => \s64[4][16]~42_combout\);

-- Location: LCCOMB_X65_Y61_N18
\s64[4][16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][16]~51_combout\ = (\s64[4][16]~42_combout\) # ((\s64[3][16]~50_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][16]~50_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][16]~42_combout\,
	combout => \s64[4][16]~51_combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X66_Y61_N14
\s64[5][0]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][0]~124_combout\ = (\B[4]~input_o\ & (((\s64[4][16]~51_combout\ & !\Equal0~0_combout\)))) # (!\B[4]~input_o\ & (\s64[4][0]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~123_combout\,
	datab => \s64[4][16]~51_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][0]~124_combout\);

-- Location: IOIBUF_X79_Y73_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X66_Y69_N0
\s64[1][50]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][50]~52_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[51]~input_o\)))) # (!\B[0]~input_o\ & (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[51]~input_o\,
	combout => \s64[1][50]~52_combout\);

-- Location: LCCOMB_X66_Y69_N2
\s64[1][50]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][50]~53_combout\ = (\s64[1][50]~52_combout\) # ((\A[49]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \s64[1][50]~52_combout\,
	combout => \s64[1][50]~53_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X66_Y69_N24
\s64[1][46]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][46]~84_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[47]~input_o\)))) # (!\B[0]~input_o\ & (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[47]~input_o\,
	combout => \s64[1][46]~84_combout\);

-- Location: LCCOMB_X66_Y69_N18
\s64[1][46]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][46]~85_combout\ = (\s64[1][46]~84_combout\) # ((\A[45]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \s64[1][46]~84_combout\,
	combout => \s64[1][46]~85_combout\);

-- Location: LCCOMB_X63_Y65_N10
\s64[2][48]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][48]~98_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][46]~85_combout\))) # (!\Equal0~0_combout\ & (\s64[1][50]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][50]~53_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][46]~85_combout\,
	combout => \s64[2][48]~98_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X66_Y69_N20
\s64[1][48]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][48]~99_combout\ = (\B[0]~input_o\ & (\A[49]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[48]~input_o\,
	combout => \s64[1][48]~99_combout\);

-- Location: LCCOMB_X66_Y69_N22
\s64[1][48]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][48]~100_combout\ = (\s64[1][48]~99_combout\) # ((\A[47]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \s64[1][48]~99_combout\,
	combout => \s64[1][48]~100_combout\);

-- Location: LCCOMB_X63_Y65_N12
\s64[2][48]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][48]~101_combout\ = (\s64[2][48]~98_combout\) # ((!\B[1]~input_o\ & \s64[1][48]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][48]~98_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][48]~100_combout\,
	combout => \s64[2][48]~101_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X63_Y69_N24
\s64[1][44]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][44]~87_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[45]~input_o\)))) # (!\B[0]~input_o\ & (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[44]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[45]~input_o\,
	combout => \s64[1][44]~87_combout\);

-- Location: IOIBUF_X79_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X63_Y69_N18
\s64[1][44]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][44]~88_combout\ = (\s64[1][44]~87_combout\) # ((\B[0]~input_o\ & (\Equal0~0_combout\ & \A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \s64[1][44]~87_combout\,
	datac => \Equal0~0_combout\,
	datad => \A[43]~input_o\,
	combout => \s64[1][44]~88_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X63_Y69_N12
\s64[1][42]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][42]~82_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[43]~input_o\)))) # (!\B[0]~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[42]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[43]~input_o\,
	combout => \s64[1][42]~82_combout\);

-- Location: IOIBUF_X62_Y73_N15
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X63_Y69_N22
\s64[1][42]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][42]~83_combout\ = (\s64[1][42]~82_combout\) # ((\A[41]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][42]~82_combout\,
	datab => \A[41]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \B[0]~input_o\,
	combout => \s64[1][42]~83_combout\);

-- Location: LCCOMB_X63_Y65_N4
\s64[2][44]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][44]~86_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][42]~83_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][46]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][42]~83_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][46]~85_combout\,
	combout => \s64[2][44]~86_combout\);

-- Location: LCCOMB_X63_Y65_N30
\s64[2][44]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][44]~89_combout\ = (\s64[2][44]~86_combout\) # ((\s64[1][44]~88_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][44]~88_combout\,
	datab => \s64[2][44]~86_combout\,
	datac => \B[1]~input_o\,
	combout => \s64[2][44]~89_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X66_Y69_N12
\s64[1][52]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][52]~57_combout\ = (\B[0]~input_o\ & (\A[53]~input_o\ & ((!\Equal0~0_combout\)))) # (!\B[0]~input_o\ & (((\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[52]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][52]~57_combout\);

-- Location: LCCOMB_X66_Y69_N30
\s64[1][52]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][52]~58_combout\ = (\s64[1][52]~57_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][52]~57_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[51]~input_o\,
	combout => \s64[1][52]~58_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X60_Y65_N24
\s64[1][54]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][54]~54_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[55]~input_o\)))) # (!\B[0]~input_o\ & (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[55]~input_o\,
	combout => \s64[1][54]~54_combout\);

-- Location: LCCOMB_X60_Y65_N10
\s64[1][54]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][54]~55_combout\ = (\s64[1][54]~54_combout\) # ((\A[53]~input_o\ & (\B[0]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][54]~54_combout\,
	combout => \s64[1][54]~55_combout\);

-- Location: LCCOMB_X63_Y65_N24
\s64[2][52]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][52]~56_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][50]~53_combout\))) # (!\Equal0~0_combout\ & (\s64[1][54]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][54]~55_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][50]~53_combout\,
	combout => \s64[2][52]~56_combout\);

-- Location: LCCOMB_X63_Y65_N2
\s64[2][52]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][52]~59_combout\ = (\s64[2][52]~56_combout\) # ((\s64[1][52]~58_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][52]~58_combout\,
	datab => \s64[2][52]~56_combout\,
	datac => \B[1]~input_o\,
	combout => \s64[2][52]~59_combout\);

-- Location: LCCOMB_X63_Y65_N8
\s64[3][48]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][48]~97_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][44]~89_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][52]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][44]~89_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][52]~59_combout\,
	combout => \s64[3][48]~97_combout\);

-- Location: LCCOMB_X63_Y65_N6
\s64[3][48]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][48]~102_combout\ = (\s64[3][48]~97_combout\) # ((\s64[2][48]~101_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][48]~101_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[3][48]~97_combout\,
	combout => \s64[3][48]~102_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X56_Y65_N0
\s64[1][34]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][34]~74_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[35]~input_o\)))) # (!\B[0]~input_o\ & (((\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[34]~input_o\,
	datac => \A[35]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][34]~74_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X56_Y65_N2
\s64[1][34]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][34]~75_combout\ = (\s64[1][34]~74_combout\) # ((\Equal0~0_combout\ & (\A[33]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][34]~74_combout\,
	datac => \A[33]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][34]~75_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X63_Y69_N8
\s64[1][38]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][38]~76_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[39]~input_o\)))) # (!\B[0]~input_o\ & (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[38]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[39]~input_o\,
	combout => \s64[1][38]~76_combout\);

-- Location: LCCOMB_X63_Y69_N26
\s64[1][38]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][38]~77_combout\ = (\s64[1][38]~76_combout\) # ((\Equal0~0_combout\ & (\A[37]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[37]~input_o\,
	datac => \s64[1][38]~76_combout\,
	datad => \B[0]~input_o\,
	combout => \s64[1][38]~77_combout\);

-- Location: LCCOMB_X62_Y65_N24
\s64[2][36]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][36]~78_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][34]~75_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][38]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][34]~75_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][38]~77_combout\,
	combout => \s64[2][36]~78_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X56_Y65_N12
\s64[1][36]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][36]~79_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[37]~input_o\)))) # (!\B[0]~input_o\ & (((\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[36]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][36]~79_combout\);

-- Location: LCCOMB_X56_Y65_N14
\s64[1][36]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][36]~80_combout\ = (\s64[1][36]~79_combout\) # ((\Equal0~0_combout\ & (\A[35]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][36]~79_combout\,
	datab => \Equal0~0_combout\,
	datac => \A[35]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][36]~80_combout\);

-- Location: LCCOMB_X62_Y65_N10
\s64[2][36]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][36]~81_combout\ = (\s64[2][36]~78_combout\) # ((!\B[1]~input_o\ & \s64[1][36]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[2][36]~78_combout\,
	datad => \s64[1][36]~80_combout\,
	combout => \s64[2][36]~81_combout\);

-- Location: LCCOMB_X62_Y65_N12
\s64[3][40]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][40]~90_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][36]~81_combout\))) # (!\Equal0~0_combout\ & (\s64[2][44]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][44]~89_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][36]~81_combout\,
	combout => \s64[3][40]~90_combout\);

-- Location: LCCOMB_X62_Y65_N6
\s64[2][40]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][40]~91_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][38]~77_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][42]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][38]~77_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][42]~83_combout\,
	combout => \s64[2][40]~91_combout\);

-- Location: IOIBUF_X83_Y73_N1
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X63_Y69_N28
\s64[1][40]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][40]~92_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[41]~input_o\))) # (!\B[0]~input_o\ & (((\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[41]~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][40]~92_combout\);

-- Location: LCCOMB_X63_Y69_N6
\s64[1][40]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][40]~93_combout\ = (\s64[1][40]~92_combout\) # ((\B[0]~input_o\ & (\Equal0~0_combout\ & \A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \s64[1][40]~92_combout\,
	datac => \Equal0~0_combout\,
	datad => \A[39]~input_o\,
	combout => \s64[1][40]~93_combout\);

-- Location: LCCOMB_X62_Y65_N0
\s64[2][40]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][40]~94_combout\ = (\s64[2][40]~91_combout\) # ((!\B[1]~input_o\ & \s64[1][40]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][40]~91_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][40]~93_combout\,
	combout => \s64[2][40]~94_combout\);

-- Location: LCCOMB_X62_Y65_N2
\s64[3][40]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][40]~95_combout\ = (\s64[3][40]~90_combout\) # ((\s64[2][40]~94_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][40]~90_combout\,
	datab => \s64[2][40]~94_combout\,
	datac => \B[2]~input_o\,
	combout => \s64[3][40]~95_combout\);

-- Location: IOIBUF_X81_Y73_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X61_Y66_N8
\s64[1][60]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][60]~65_combout\ = (\B[0]~input_o\ & (\A[61]~input_o\ & ((!\Equal0~0_combout\)))) # (!\B[0]~input_o\ & (((\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[61]~input_o\,
	datac => \A[60]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][60]~65_combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X61_Y66_N18
\s64[1][60]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][60]~66_combout\ = (\s64[1][60]~65_combout\) # ((\B[0]~input_o\ & (\Equal0~0_combout\ & \A[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \s64[1][60]~65_combout\,
	datac => \Equal0~0_combout\,
	datad => \A[59]~input_o\,
	combout => \s64[1][60]~66_combout\);

-- Location: IOIBUF_X33_Y73_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X61_Y66_N20
\s64[1][62]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][62]~62_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[63]~input_o\)))) # (!\B[0]~input_o\ & (((\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[62]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[63]~input_o\,
	combout => \s64[1][62]~62_combout\);

-- Location: LCCOMB_X61_Y66_N30
\s64[1][62]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][62]~63_combout\ = (\s64[1][62]~62_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][62]~62_combout\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \s64[1][62]~63_combout\);

-- Location: IOIBUF_X20_Y73_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X61_Y66_N24
\s64[1][58]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][58]~60_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[59]~input_o\)))) # (!\B[0]~input_o\ & (((\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[58]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[59]~input_o\,
	combout => \s64[1][58]~60_combout\);

-- Location: LCCOMB_X61_Y66_N26
\s64[1][58]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][58]~61_combout\ = (\s64[1][58]~60_combout\) # ((\B[0]~input_o\ & (\A[57]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[57]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][58]~60_combout\,
	combout => \s64[1][58]~61_combout\);

-- Location: LCCOMB_X61_Y65_N24
\s64[2][60]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][60]~64_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][58]~61_combout\))) # (!\Equal0~0_combout\ & (\s64[1][62]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[1][62]~63_combout\,
	datad => \s64[1][58]~61_combout\,
	combout => \s64[2][60]~64_combout\);

-- Location: LCCOMB_X61_Y65_N2
\s64[2][60]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][60]~67_combout\ = (\s64[2][60]~64_combout\) # ((\s64[1][60]~66_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][60]~66_combout\,
	datab => \B[1]~input_o\,
	datad => \s64[2][60]~64_combout\,
	combout => \s64[2][60]~67_combout\);

-- Location: LCCOMB_X61_Y65_N12
\s64[3][56]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][56]~68_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][52]~59_combout\))) # (!\Equal0~0_combout\ & (\s64[2][60]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][60]~67_combout\,
	datac => \s64[2][52]~59_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][56]~68_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X60_Y65_N12
\s64[1][56]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][56]~70_combout\ = (\B[0]~input_o\ & (\A[57]~input_o\ & ((!\Equal0~0_combout\)))) # (!\B[0]~input_o\ & (((\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[56]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \B[0]~input_o\,
	combout => \s64[1][56]~70_combout\);

-- Location: LCCOMB_X60_Y65_N14
\s64[1][56]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][56]~71_combout\ = (\s64[1][56]~70_combout\) # ((\B[0]~input_o\ & (\Equal0~0_combout\ & \A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][56]~70_combout\,
	datab => \B[0]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[55]~input_o\,
	combout => \s64[1][56]~71_combout\);

-- Location: LCCOMB_X61_Y65_N30
\s64[2][56]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][56]~69_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][54]~55_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][58]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][54]~55_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][58]~61_combout\,
	combout => \s64[2][56]~69_combout\);

-- Location: LCCOMB_X61_Y65_N0
\s64[2][56]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][56]~72_combout\ = (\s64[2][56]~69_combout\) # ((\s64[1][56]~71_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][56]~71_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[2][56]~69_combout\,
	combout => \s64[2][56]~72_combout\);

-- Location: LCCOMB_X61_Y65_N10
\s64[3][56]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][56]~73_combout\ = (\s64[3][56]~68_combout\) # ((\s64[2][56]~72_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][56]~68_combout\,
	datab => \s64[2][56]~72_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][56]~73_combout\);

-- Location: LCCOMB_X65_Y61_N12
\s64[4][48]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][48]~96_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][56]~73_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][40]~95_combout\)))) # (!\s64[4][0]~20_combout\ & (\s64[4][16]~0_combout\ & (\s64[3][40]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \s64[3][40]~95_combout\,
	datad => \s64[3][56]~73_combout\,
	combout => \s64[4][48]~96_combout\);

-- Location: LCCOMB_X65_Y61_N14
\s64[4][48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][48]~103_combout\ = (\s64[4][48]~96_combout\) # ((\s64[3][48]~102_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][48]~102_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][48]~96_combout\,
	combout => \s64[4][48]~103_combout\);

-- Location: LCCOMB_X66_Y61_N16
\s64[5][32]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][32]~104_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][16]~51_combout\))) # (!\Equal0~0_combout\ & (\s64[4][48]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][48]~103_combout\,
	datab => \s64[4][16]~51_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][32]~104_combout\);

-- Location: LCCOMB_X62_Y65_N4
\s64[3][32]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][32]~106_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][28]~11_combout\))) # (!\Equal0~0_combout\ & (\s64[2][36]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][36]~81_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][28]~11_combout\,
	combout => \s64[3][32]~106_combout\);

-- Location: LCCOMB_X59_Y64_N2
\s64~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~107_combout\ = (\B[0]~input_o\ & (\A[29]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[30]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~107_combout\);

-- Location: LCCOMB_X59_Y64_N28
\s64~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~108_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~107_combout\))) # (!\Equal0~0_combout\ & (\s64[1][34]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][34]~75_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~107_combout\,
	combout => \s64~108_combout\);

-- Location: IOIBUF_X0_Y64_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X59_Y64_N30
\s64[1][32]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][32]~109_combout\ = (\B[0]~input_o\ & (\A[33]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \A[32]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][32]~109_combout\);

-- Location: LCCOMB_X59_Y64_N24
\s64[1][32]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][32]~110_combout\ = (\s64[1][32]~109_combout\) # ((\Equal0~0_combout\ & (\A[31]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][32]~109_combout\,
	datab => \Equal0~0_combout\,
	datac => \A[31]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][32]~110_combout\);

-- Location: LCCOMB_X59_Y64_N10
\s64~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~111_combout\ = (\s64~108_combout\) # ((!\B[1]~input_o\ & \s64[1][32]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64~108_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][32]~110_combout\,
	combout => \s64~111_combout\);

-- Location: LCCOMB_X62_Y65_N14
\s64[3][32]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][32]~112_combout\ = (\s64[3][32]~106_combout\) # ((!\B[2]~input_o\ & \s64~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[3][32]~106_combout\,
	datac => \s64~111_combout\,
	combout => \s64[3][32]~112_combout\);

-- Location: LCCOMB_X65_Y61_N8
\s64[4][32]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][32]~105_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][40]~95_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][24]~19_combout\)))) # (!\s64[4][0]~20_combout\ & (\s64[4][16]~0_combout\ & ((\s64[3][24]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \s64[3][40]~95_combout\,
	datad => \s64[3][24]~19_combout\,
	combout => \s64[4][32]~105_combout\);

-- Location: LCCOMB_X66_Y61_N26
\s64[4][32]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][32]~113_combout\ = (\s64[4][32]~105_combout\) # ((\s64[3][32]~112_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][32]~112_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][32]~105_combout\,
	combout => \s64[4][32]~113_combout\);

-- Location: LCCOMB_X66_Y61_N4
\s64[5][32]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][32]~114_combout\ = (\s64[5][32]~104_combout\) # ((\s64[4][32]~113_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[5][32]~104_combout\,
	datac => \s64[4][32]~113_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][32]~114_combout\);

-- Location: LCCOMB_X67_Y62_N0
\Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = (!\ExtWord~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~5_combout\);

-- Location: LCCOMB_X66_Y61_N8
\Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = (\Y~4_combout\ & ((\s64[5][32]~114_combout\) # ((\s64[5][0]~124_combout\ & !\Y~5_combout\)))) # (!\Y~4_combout\ & (\s64[5][0]~124_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~4_combout\,
	datab => \s64[5][0]~124_combout\,
	datac => \s64[5][32]~114_combout\,
	datad => \Y~5_combout\,
	combout => \Y~6_combout\);

-- Location: LCCOMB_X63_Y59_N10
\Y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = (\ExtWord~input_o\ & (\B[4]~input_o\)) # (!\ExtWord~input_o\ & ((!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~7_combout\);

-- Location: LCCOMB_X63_Y59_N22
\Y~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~168_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # ((!\ShiftFN[0]~input_o\) # (!\Y~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~168_combout\);

-- Location: LCCOMB_X57_Y66_N26
\s64~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~136_combout\ = (\B[0]~input_o\ & ((\A[18]~input_o\))) # (!\B[0]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~136_combout\);

-- Location: LCCOMB_X59_Y66_N26
\s64~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~132_combout\ = (\B[0]~input_o\ & (\A[24]~input_o\)) # (!\B[0]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[23]~input_o\,
	combout => \s64~132_combout\);

-- Location: LCCOMB_X59_Y66_N12
\s64~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~133_combout\ = (\B[0]~input_o\ & (\A[20]~input_o\)) # (!\B[0]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[21]~input_o\,
	combout => \s64~133_combout\);

-- Location: LCCOMB_X59_Y66_N6
\s64~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~134_combout\ = (\B[0]~input_o\ & ((\A[22]~input_o\))) # (!\B[0]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[22]~input_o\,
	combout => \s64~134_combout\);

-- Location: LCCOMB_X59_Y66_N0
\s64[2][21]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][21]~135_combout\ = (\Equal0~0_combout\ & ((\s64~133_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~133_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~134_combout\,
	combout => \s64[2][21]~135_combout\);

-- Location: LCCOMB_X59_Y66_N18
\s64[2][21]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][21]~137_combout\ = (\B[1]~input_o\ & ((\s64[2][21]~135_combout\ & (\s64~136_combout\)) # (!\s64[2][21]~135_combout\ & ((\s64~132_combout\))))) # (!\B[1]~input_o\ & (((\s64[2][21]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~136_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~132_combout\,
	datad => \s64[2][21]~135_combout\,
	combout => \s64[2][21]~137_combout\);

-- Location: LCCOMB_X59_Y65_N18
\s64~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~126_combout\ = (\B[0]~input_o\ & ((\A[28]~input_o\))) # (!\B[0]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[27]~input_o\,
	datad => \A[28]~input_o\,
	combout => \s64~126_combout\);

-- Location: LCCOMB_X59_Y66_N22
\s64~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~130_combout\ = (\B[0]~input_o\ & ((\A[22]~input_o\))) # (!\B[0]~input_o\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[22]~input_o\,
	combout => \s64~130_combout\);

-- Location: LCCOMB_X59_Y66_N10
\s64~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~128_combout\ = (\B[0]~input_o\ & (\A[26]~input_o\)) # (!\B[0]~input_o\ & ((\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \s64~128_combout\);

-- Location: LCCOMB_X59_Y66_N8
\s64~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~127_combout\ = (\B[0]~input_o\ & (\A[24]~input_o\)) # (!\B[0]~input_o\ & ((\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \s64~127_combout\);

-- Location: LCCOMB_X59_Y66_N28
\s64[2][25]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][25]~129_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~127_combout\))) # (!\Equal0~0_combout\ & (\s64~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~128_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~127_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][25]~129_combout\);

-- Location: LCCOMB_X59_Y66_N24
\s64[2][25]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][25]~131_combout\ = (\B[1]~input_o\ & ((\s64[2][25]~129_combout\ & ((\s64~130_combout\))) # (!\s64[2][25]~129_combout\ & (\s64~126_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][25]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~126_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~130_combout\,
	datad => \s64[2][25]~129_combout\,
	combout => \s64[2][25]~131_combout\);

-- Location: LCCOMB_X58_Y63_N24
\s32[3][25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][25]~11_combout\ = (\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (!\s64[2][21]~137_combout\))) # (!\B[2]~input_o\ & (((!\s64[2][25]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][21]~137_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][25]~131_combout\,
	combout => \s32[3][25]~11_combout\);

-- Location: LCCOMB_X57_Y65_N8
\s64~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~149_combout\ = (\B[0]~input_o\ & ((\A[10]~input_o\))) # (!\B[0]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	combout => \s64~149_combout\);

-- Location: LCCOMB_X58_Y66_N6
\s64~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~145_combout\ = (\B[0]~input_o\ & (\A[16]~input_o\)) # (!\B[0]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[15]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~145_combout\);

-- Location: LCCOMB_X58_Y66_N8
\s64~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~146_combout\ = (\B[0]~input_o\ & ((\A[12]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[12]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~146_combout\);

-- Location: LCCOMB_X58_Y66_N26
\s64~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~147_combout\ = (\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~147_combout\);

-- Location: LCCOMB_X58_Y63_N30
\s64[2][13]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][13]~148_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~146_combout\)) # (!\Equal0~0_combout\ & ((\s64~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64~146_combout\,
	datac => \s64~147_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][13]~148_combout\);

-- Location: LCCOMB_X57_Y65_N18
\s64[2][13]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][13]~150_combout\ = (\B[1]~input_o\ & ((\s64[2][13]~148_combout\ & (\s64~149_combout\)) # (!\s64[2][13]~148_combout\ & ((\s64~145_combout\))))) # (!\B[1]~input_o\ & (((\s64[2][13]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64~149_combout\,
	datac => \s64~145_combout\,
	datad => \s64[2][13]~148_combout\,
	combout => \s64[2][13]~150_combout\);

-- Location: LCCOMB_X57_Y66_N20
\s64~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~138_combout\ = (\B[0]~input_o\ & ((\A[20]~input_o\))) # (!\B[0]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~138_combout\);

-- Location: LCCOMB_X58_Y66_N4
\s64~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~142_combout\ = (\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~142_combout\);

-- Location: LCCOMB_X58_Y66_N18
\s64~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~139_combout\ = (\B[0]~input_o\ & (\A[16]~input_o\)) # (!\B[0]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~139_combout\);

-- Location: LCCOMB_X57_Y66_N6
\s64~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~140_combout\ = (\B[0]~input_o\ & (\A[18]~input_o\)) # (!\B[0]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~140_combout\);

-- Location: LCCOMB_X58_Y63_N2
\s64[2][17]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][17]~141_combout\ = (\B[1]~input_o\ & (\Equal0~0_combout\)) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~139_combout\)) # (!\Equal0~0_combout\ & ((\s64~140_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64~139_combout\,
	datad => \s64~140_combout\,
	combout => \s64[2][17]~141_combout\);

-- Location: LCCOMB_X58_Y63_N20
\s64[2][17]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][17]~143_combout\ = (\B[1]~input_o\ & ((\s64[2][17]~141_combout\ & ((\s64~142_combout\))) # (!\s64[2][17]~141_combout\ & (\s64~138_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][17]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64~138_combout\,
	datac => \s64~142_combout\,
	datad => \s64[2][17]~141_combout\,
	combout => \s64[2][17]~143_combout\);

-- Location: LCCOMB_X59_Y62_N8
\s64[3][17]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][17]~144_combout\ = (\s64[2][21]~137_combout\ & ((\s64[4][0]~21_combout\) # ((\s64[2][17]~143_combout\ & !\B[2]~input_o\)))) # (!\s64[2][21]~137_combout\ & (\s64[2][17]~143_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][21]~137_combout\,
	datab => \s64[2][17]~143_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][17]~144_combout\);

-- Location: LCCOMB_X59_Y62_N2
\s64[3][17]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][17]~151_combout\ = (\s64[3][17]~144_combout\) # ((\s64[2][13]~150_combout\ & (\Equal0~0_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][13]~150_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[3][17]~144_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][17]~151_combout\);

-- Location: LCCOMB_X57_Y65_N4
\s64~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~156_combout\ = (\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64~156_combout\);

-- Location: LCCOMB_X57_Y65_N12
\s64~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~152_combout\ = (\B[0]~input_o\ & ((\A[12]~input_o\))) # (!\B[0]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[12]~input_o\,
	combout => \s64~152_combout\);

-- Location: LCCOMB_X57_Y65_N30
\s64~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~153_combout\ = (\B[0]~input_o\ & ((\A[8]~input_o\))) # (!\B[0]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[8]~input_o\,
	combout => \s64~153_combout\);

-- Location: LCCOMB_X57_Y65_N16
\s64~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~154_combout\ = (\B[0]~input_o\ & ((\A[10]~input_o\))) # (!\B[0]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	combout => \s64~154_combout\);

-- Location: LCCOMB_X57_Y65_N2
\s64[2][9]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][9]~155_combout\ = (\Equal0~0_combout\ & ((\s64~153_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~153_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~154_combout\,
	combout => \s64[2][9]~155_combout\);

-- Location: LCCOMB_X56_Y65_N8
\s64[2][9]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][9]~157_combout\ = (\B[1]~input_o\ & ((\s64[2][9]~155_combout\ & (\s64~156_combout\)) # (!\s64[2][9]~155_combout\ & ((\s64~152_combout\))))) # (!\B[1]~input_o\ & (((\s64[2][9]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~156_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~152_combout\,
	datad => \s64[2][9]~155_combout\,
	combout => \s64[2][9]~157_combout\);

-- Location: LCCOMB_X59_Y62_N20
\s64[3][9]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][9]~158_combout\ = (\s64[2][9]~157_combout\ & (((\s64[4][0]~21_combout\ & \s64[2][13]~150_combout\)) # (!\B[2]~input_o\))) # (!\s64[2][9]~157_combout\ & (\s64[4][0]~21_combout\ & (\s64[2][13]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][9]~157_combout\,
	datab => \s64[4][0]~21_combout\,
	datac => \s64[2][13]~150_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][9]~158_combout\);

-- Location: LCCOMB_X55_Y62_N2
\s64~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~163_combout\ = (\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~163_combout\);

-- Location: LCCOMB_X57_Y62_N2
\s64~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~160_combout\ = (\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~160_combout\);

-- Location: LCCOMB_X57_Y62_N28
\s64~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~161_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~161_combout\);

-- Location: LCCOMB_X56_Y62_N16
\s64[2][5]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][5]~162_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~160_combout\)) # (!\Equal0~0_combout\ & ((\s64~161_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~160_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64~161_combout\,
	combout => \s64[2][5]~162_combout\);

-- Location: LCCOMB_X57_Y65_N6
\s64~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~159_combout\ = (\B[0]~input_o\ & ((\A[8]~input_o\))) # (!\B[0]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64~159_combout\);

-- Location: LCCOMB_X56_Y62_N26
\s64[2][5]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][5]~164_combout\ = (\s64[2][5]~162_combout\ & ((\s64~163_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][5]~162_combout\ & (((\B[1]~input_o\ & \s64~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~163_combout\,
	datab => \s64[2][5]~162_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~159_combout\,
	combout => \s64[2][5]~164_combout\);

-- Location: LCCOMB_X59_Y62_N22
\s64[3][9]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][9]~165_combout\ = (\s64[3][9]~158_combout\) # ((\Equal0~0_combout\ & (\s64[2][5]~164_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][9]~158_combout\,
	datac => \s64[2][5]~164_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][9]~165_combout\);

-- Location: LCCOMB_X60_Y62_N18
\s32[4][17]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][17]~12_combout\ = (\s64[3][17]~151_combout\ & (\B[3]~input_o\ & ((!\s64[4][16]~0_combout\) # (!\s64[3][9]~165_combout\)))) # (!\s64[3][17]~151_combout\ & (((!\s64[4][16]~0_combout\)) # (!\s64[3][9]~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][17]~151_combout\,
	datab => \s64[3][9]~165_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \B[3]~input_o\,
	combout => \s32[4][17]~12_combout\);

-- Location: LCCOMB_X59_Y64_N20
\s64~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~125_combout\ = (\B[0]~input_o\ & ((\A[30]~input_o\))) # (!\B[0]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[30]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~125_combout\);

-- Location: LCCOMB_X59_Y64_N6
\s32~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32~9_combout\ = (\B[0]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s32~9_combout\);

-- Location: LCCOMB_X59_Y64_N0
\s32[2][29]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][29]~10_combout\ = (\B[1]~input_o\ & (((\A[31]~input_o\ & !\s32~9_combout\)))) # (!\B[1]~input_o\ & (\s64~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64~125_combout\,
	datac => \A[31]~input_o\,
	datad => \s32~9_combout\,
	combout => \s32[2][29]~10_combout\);

-- Location: LCCOMB_X60_Y62_N24
\s32[3][25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][25]~54_combout\ = (\s32[2][29]~10_combout\ & (\B[2]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \s32[2][29]~10_combout\,
	datad => \B[2]~input_o\,
	combout => \s32[3][25]~54_combout\);

-- Location: LCCOMB_X60_Y62_N28
\s32[4][17]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][17]~13_combout\ = ((\s64[4][0]~20_combout\ & ((\s32[3][25]~54_combout\) # (!\s32[3][25]~11_combout\)))) # (!\s32[4][17]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][25]~11_combout\,
	datab => \s32[4][17]~12_combout\,
	datac => \s32[3][25]~54_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s32[4][17]~13_combout\);

-- Location: LCCOMB_X66_Y69_N8
\s64[1][45]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][45]~212_combout\ = (\B[0]~input_o\ & (\A[46]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[45]~input_o\,
	combout => \s64[1][45]~212_combout\);

-- Location: LCCOMB_X63_Y69_N10
\s64[1][45]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][45]~213_combout\ = (\s64[1][45]~212_combout\) # ((\B[0]~input_o\ & (\Equal0~0_combout\ & \A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \s64[1][45]~212_combout\,
	datac => \Equal0~0_combout\,
	datad => \A[44]~input_o\,
	combout => \s64[1][45]~213_combout\);

-- Location: LCCOMB_X63_Y69_N30
\s64[1][43]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][43]~207_combout\ = (\B[0]~input_o\ & (\A[44]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[44]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[43]~input_o\,
	combout => \s64[1][43]~207_combout\);

-- Location: LCCOMB_X63_Y69_N0
\s64[1][43]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][43]~208_combout\ = (\s64[1][43]~207_combout\) # ((\A[42]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][43]~207_combout\,
	datab => \A[42]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \B[0]~input_o\,
	combout => \s64[1][43]~208_combout\);

-- Location: LCCOMB_X66_Y69_N28
\s64[1][47]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][47]~209_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[48]~input_o\)))) # (!\B[0]~input_o\ & (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[48]~input_o\,
	combout => \s64[1][47]~209_combout\);

-- Location: LCCOMB_X66_Y69_N14
\s64[1][47]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][47]~210_combout\ = (\s64[1][47]~209_combout\) # ((\A[46]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \s64[1][47]~209_combout\,
	combout => \s64[1][47]~210_combout\);

-- Location: LCCOMB_X59_Y63_N30
\s64[2][45]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][45]~211_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][43]~208_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][47]~210_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][43]~208_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][47]~210_combout\,
	combout => \s64[2][45]~211_combout\);

-- Location: LCCOMB_X59_Y63_N0
\s64[2][45]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][45]~214_combout\ = (\s64[2][45]~211_combout\) # ((\s64[1][45]~213_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[1][45]~213_combout\,
	datac => \s64[2][45]~211_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][45]~214_combout\);

-- Location: LCCOMB_X63_Y69_N16
\s64[1][39]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][39]~201_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[40]~input_o\))) # (!\B[0]~input_o\ & (((\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[40]~input_o\,
	datad => \A[39]~input_o\,
	combout => \s64[1][39]~201_combout\);

-- Location: LCCOMB_X63_Y69_N2
\s64[1][39]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][39]~202_combout\ = (\s64[1][39]~201_combout\) # ((\B[0]~input_o\ & (\A[38]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[38]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][39]~201_combout\,
	combout => \s64[1][39]~202_combout\);

-- Location: LCCOMB_X56_Y65_N10
\s64[1][35]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][35]~199_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[36]~input_o\))) # (!\B[0]~input_o\ & (((\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[36]~input_o\,
	datac => \A[35]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][35]~199_combout\);

-- Location: LCCOMB_X56_Y65_N4
\s64[1][35]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][35]~200_combout\ = (\s64[1][35]~199_combout\) # ((\Equal0~0_combout\ & (\A[34]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][35]~199_combout\,
	datab => \Equal0~0_combout\,
	datac => \A[34]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][35]~200_combout\);

-- Location: LCCOMB_X56_Y65_N22
\s64[2][37]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][37]~203_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][35]~200_combout\))) # (!\Equal0~0_combout\ & (\s64[1][39]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][39]~202_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[1][35]~200_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][37]~203_combout\);

-- Location: LCCOMB_X63_Y69_N4
\s64[1][37]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][37]~204_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[38]~input_o\)))) # (!\B[0]~input_o\ & (((\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[37]~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][37]~204_combout\);

-- Location: LCCOMB_X56_Y65_N24
\s64[1][37]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][37]~205_combout\ = (\s64[1][37]~204_combout\) # ((\Equal0~0_combout\ & (\A[36]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[36]~input_o\,
	datac => \s64[1][37]~204_combout\,
	datad => \B[0]~input_o\,
	combout => \s64[1][37]~205_combout\);

-- Location: LCCOMB_X59_Y63_N4
\s64[2][37]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][37]~206_combout\ = (\s64[2][37]~203_combout\) # ((\s64[1][37]~205_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][37]~203_combout\,
	datab => \s64[1][37]~205_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][37]~206_combout\);

-- Location: LCCOMB_X59_Y60_N18
\s64[3][41]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][41]~215_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][37]~206_combout\))) # (!\Equal0~0_combout\ & (\s64[2][45]~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][45]~214_combout\,
	datac => \s64[2][37]~206_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][41]~215_combout\);

-- Location: LCCOMB_X59_Y63_N2
\s64[2][41]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][41]~216_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][39]~202_combout\))) # (!\Equal0~0_combout\ & (\s64[1][43]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][43]~208_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][39]~202_combout\,
	combout => \s64[2][41]~216_combout\);

-- Location: LCCOMB_X63_Y69_N20
\s64[1][41]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][41]~217_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[42]~input_o\)))) # (!\B[0]~input_o\ & (((\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[41]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][41]~217_combout\);

-- Location: LCCOMB_X63_Y69_N14
\s64[1][41]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][41]~218_combout\ = (\s64[1][41]~217_combout\) # ((\Equal0~0_combout\ & (\A[40]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][41]~217_combout\,
	datac => \A[40]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][41]~218_combout\);

-- Location: LCCOMB_X59_Y63_N20
\s64[2][41]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][41]~219_combout\ = (\s64[2][41]~216_combout\) # ((\s64[1][41]~218_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][41]~216_combout\,
	datac => \s64[1][41]~218_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][41]~219_combout\);

-- Location: LCCOMB_X59_Y60_N20
\s64[3][41]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][41]~220_combout\ = (\s64[3][41]~215_combout\) # ((\s64[2][41]~219_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][41]~215_combout\,
	datac => \s64[2][41]~219_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][41]~220_combout\);

-- Location: LCCOMB_X59_Y64_N18
\s64[2][31]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][31]~172_combout\ = (\B[0]~input_o\ & (\A[32]~input_o\)) # (!\B[0]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[2][31]~172_combout\);

-- Location: LCCOMB_X59_Y64_N4
\s64[2][29]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][29]~173_combout\ = (\B[1]~input_o\ & ((\s64[2][31]~172_combout\))) # (!\B[1]~input_o\ & (\s64~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64~125_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][31]~172_combout\,
	combout => \s64[2][29]~173_combout\);

-- Location: LCCOMB_X60_Y62_N22
\s64[3][25]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][25]~174_combout\ = ((\s64[4][0]~21_combout\ & \s64[2][29]~173_combout\)) # (!\s32[3][25]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][25]~11_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \s64[2][29]~173_combout\,
	combout => \s64[3][25]~174_combout\);

-- Location: LCCOMB_X59_Y60_N14
\s64[4][33]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][33]~230_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][25]~174_combout\) # ((\s64[3][41]~220_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[4][16]~0_combout\ & (\s64[3][41]~220_combout\ & ((\s64[4][0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][41]~220_combout\,
	datac => \s64[3][25]~174_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][33]~230_combout\);

-- Location: LCCOMB_X59_Y65_N6
\s64~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~232_combout\ = (\B[0]~input_o\ & ((\A[26]~input_o\))) # (!\B[0]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64~232_combout\);

-- Location: LCCOMB_X59_Y65_N12
\s64~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~231_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[28]~input_o\))) # (!\B[0]~input_o\ & (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[28]~input_o\,
	combout => \s64~231_combout\);

-- Location: LCCOMB_X59_Y65_N16
\s64~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~233_combout\ = (\s64~231_combout\) # ((\s64~232_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~232_combout\,
	datab => \B[1]~input_o\,
	datad => \s64~231_combout\,
	combout => \s64~233_combout\);

-- Location: LCCOMB_X59_Y60_N24
\s64[3][33]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][33]~234_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~233_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][37]~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~233_combout\,
	datac => \s64[2][37]~206_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][33]~234_combout\);

-- Location: LCCOMB_X59_Y65_N2
\s64~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~235_combout\ = (\B[0]~input_o\ & ((\A[30]~input_o\))) # (!\B[0]~input_o\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64~235_combout\);

-- Location: LCCOMB_X56_Y65_N18
\s64~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~236_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~235_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][35]~200_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~235_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[1][35]~200_combout\,
	datad => \B[1]~input_o\,
	combout => \s64~236_combout\);

-- Location: LCCOMB_X56_Y65_N20
\s64[1][33]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][33]~237_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[34]~input_o\))) # (!\B[0]~input_o\ & (((\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[34]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][33]~237_combout\);

-- Location: LCCOMB_X56_Y65_N30
\s64[1][33]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][33]~238_combout\ = (\s64[1][33]~237_combout\) # ((\A[32]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \s64[1][33]~237_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[0]~input_o\,
	combout => \s64[1][33]~238_combout\);

-- Location: LCCOMB_X56_Y65_N16
\s64~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~239_combout\ = (\s64~236_combout\) # ((\s64[1][33]~238_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64~236_combout\,
	datac => \s64[1][33]~238_combout\,
	datad => \B[1]~input_o\,
	combout => \s64~239_combout\);

-- Location: LCCOMB_X59_Y60_N2
\s64[3][33]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][33]~240_combout\ = (\s64[3][33]~234_combout\) # ((\s64~239_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][33]~234_combout\,
	datac => \s64~239_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][33]~240_combout\);

-- Location: LCCOMB_X60_Y60_N14
\s64[4][33]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][33]~241_combout\ = (\s64[4][33]~230_combout\) # ((!\B[3]~input_o\ & \s64[3][33]~240_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][33]~230_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][33]~240_combout\,
	combout => \s64[4][33]~241_combout\);

-- Location: LCCOMB_X59_Y60_N16
\s64[4][17]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][17]~175_combout\ = ((\s64[3][25]~174_combout\ & \s64[4][0]~20_combout\)) # (!\s32[4][17]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][17]~12_combout\,
	datac => \s64[3][25]~174_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][17]~175_combout\);

-- Location: LCCOMB_X60_Y65_N8
\s64[1][55]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][55]~179_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[56]~input_o\))) # (!\B[0]~input_o\ & (((\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[55]~input_o\,
	combout => \s64[1][55]~179_combout\);

-- Location: LCCOMB_X60_Y65_N26
\s64[1][55]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][55]~180_combout\ = (\s64[1][55]~179_combout\) # ((\Equal0~0_combout\ & (\A[54]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][55]~179_combout\,
	datac => \A[54]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][55]~180_combout\);

-- Location: LCCOMB_X66_Y69_N16
\s64[1][51]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][51]~177_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[52]~input_o\))) # (!\B[0]~input_o\ & (((\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[51]~input_o\,
	combout => \s64[1][51]~177_combout\);

-- Location: LCCOMB_X66_Y69_N26
\s64[1][51]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][51]~178_combout\ = (\s64[1][51]~177_combout\) # ((\A[50]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \s64[1][51]~177_combout\,
	combout => \s64[1][51]~178_combout\);

-- Location: LCCOMB_X59_Y63_N24
\s64[2][53]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][53]~181_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][51]~178_combout\))) # (!\Equal0~0_combout\ & (\s64[1][55]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][55]~180_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][51]~178_combout\,
	combout => \s64[2][53]~181_combout\);

-- Location: LCCOMB_X60_Y65_N4
\s64[1][53]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][53]~182_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[54]~input_o\))) # (!\B[0]~input_o\ & (((\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[53]~input_o\,
	combout => \s64[1][53]~182_combout\);

-- Location: LCCOMB_X60_Y65_N6
\s64[1][53]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][53]~183_combout\ = (\s64[1][53]~182_combout\) # ((\Equal0~0_combout\ & (\A[52]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][53]~182_combout\,
	datac => \A[52]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][53]~183_combout\);

-- Location: LCCOMB_X59_Y63_N10
\s64[2][53]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][53]~184_combout\ = (\s64[2][53]~181_combout\) # ((\s64[1][53]~183_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][53]~181_combout\,
	datac => \s64[1][53]~183_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][53]~184_combout\);

-- Location: LCCOMB_X59_Y61_N4
\s64[3][49]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][49]~222_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][45]~214_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][53]~184_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][45]~214_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][53]~184_combout\,
	combout => \s64[3][49]~222_combout\);

-- Location: LCCOMB_X59_Y63_N22
\s64[2][49]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][49]~223_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][47]~210_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][51]~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][47]~210_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][51]~178_combout\,
	combout => \s64[2][49]~223_combout\);

-- Location: LCCOMB_X66_Y69_N10
\s64[1][49]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][49]~224_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[50]~input_o\)))) # (!\B[0]~input_o\ & (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[50]~input_o\,
	combout => \s64[1][49]~224_combout\);

-- Location: LCCOMB_X66_Y69_N4
\s64[1][49]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][49]~225_combout\ = (\s64[1][49]~224_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][49]~224_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[48]~input_o\,
	combout => \s64[1][49]~225_combout\);

-- Location: LCCOMB_X59_Y63_N8
\s64[2][49]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][49]~226_combout\ = (\s64[2][49]~223_combout\) # ((!\B[1]~input_o\ & \s64[1][49]~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \s64[2][49]~223_combout\,
	datad => \s64[1][49]~225_combout\,
	combout => \s64[2][49]~226_combout\);

-- Location: LCCOMB_X60_Y60_N18
\s64[3][49]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][49]~227_combout\ = (\s64[3][49]~222_combout\) # ((!\B[2]~input_o\ & \s64[2][49]~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][49]~222_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][49]~226_combout\,
	combout => \s64[3][49]~227_combout\);

-- Location: LCCOMB_X61_Y66_N22
\s64[1][61]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][61]~190_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[62]~input_o\))) # (!\B[0]~input_o\ & (((\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[62]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \s64[1][61]~190_combout\);

-- Location: LCCOMB_X61_Y66_N16
\s64[1][61]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][61]~191_combout\ = (\s64[1][61]~190_combout\) # ((\A[60]~input_o\ & (\B[0]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][61]~190_combout\,
	datab => \A[60]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][61]~191_combout\);

-- Location: LCCOMB_X61_Y66_N12
\s64[1][59]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][59]~185_combout\ = (\B[0]~input_o\ & (\A[60]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[60]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[59]~input_o\,
	combout => \s64[1][59]~185_combout\);

-- Location: LCCOMB_X61_Y66_N14
\s64[1][59]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][59]~186_combout\ = (\s64[1][59]~185_combout\) # ((\Equal0~0_combout\ & (\A[58]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[58]~input_o\,
	datac => \B[0]~input_o\,
	datad => \s64[1][59]~185_combout\,
	combout => \s64[1][59]~186_combout\);

-- Location: LCCOMB_X61_Y66_N0
\s64[1][63]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][63]~187_combout\ = (\A[63]~input_o\ & (((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)) # (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \s64[1][63]~187_combout\);

-- Location: LCCOMB_X61_Y66_N10
\s64[1][63]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][63]~188_combout\ = (\s64[1][63]~187_combout\) # ((\B[0]~input_o\ & (\A[62]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[62]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][63]~187_combout\,
	combout => \s64[1][63]~188_combout\);

-- Location: LCCOMB_X61_Y66_N28
\s64[2][61]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][61]~189_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][59]~186_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][63]~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[1][59]~186_combout\,
	datad => \s64[1][63]~188_combout\,
	combout => \s64[2][61]~189_combout\);

-- Location: LCCOMB_X61_Y64_N0
\s64[2][61]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][61]~192_combout\ = (\s64[2][61]~189_combout\) # ((\s64[1][61]~191_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][61]~191_combout\,
	datab => \B[1]~input_o\,
	datad => \s64[2][61]~189_combout\,
	combout => \s64[2][61]~192_combout\);

-- Location: LCCOMB_X59_Y61_N16
\s64[3][57]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][57]~193_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][53]~184_combout\))) # (!\Equal0~0_combout\ & (\s64[2][61]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][61]~192_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][53]~184_combout\,
	combout => \s64[3][57]~193_combout\);

-- Location: LCCOMB_X60_Y65_N18
\s64[1][57]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][57]~195_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[58]~input_o\))) # (!\B[0]~input_o\ & (((\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[58]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][57]~195_combout\);

-- Location: LCCOMB_X60_Y65_N28
\s64[1][57]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][57]~196_combout\ = (\s64[1][57]~195_combout\) # ((\Equal0~0_combout\ & (\A[56]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][57]~195_combout\,
	datac => \A[56]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][57]~196_combout\);

-- Location: LCCOMB_X60_Y65_N0
\s64[2][57]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][57]~194_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][55]~180_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][59]~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][55]~180_combout\,
	datab => \s64[1][59]~186_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][57]~194_combout\);

-- Location: LCCOMB_X60_Y65_N22
\s64[2][57]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][57]~197_combout\ = (\s64[2][57]~194_combout\) # ((\s64[1][57]~196_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[1][57]~196_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][57]~194_combout\,
	combout => \s64[2][57]~197_combout\);

-- Location: LCCOMB_X59_Y61_N18
\s64[3][57]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][57]~198_combout\ = (\s64[3][57]~193_combout\) # ((!\B[2]~input_o\ & \s64[2][57]~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][57]~193_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][57]~197_combout\,
	combout => \s64[3][57]~198_combout\);

-- Location: LCCOMB_X60_Y60_N24
\s64[4][49]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][49]~221_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][57]~198_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][41]~220_combout\)))) # (!\s64[4][0]~20_combout\ & (((\s64[4][16]~0_combout\ & \s64[3][41]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][57]~198_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][41]~220_combout\,
	combout => \s64[4][49]~221_combout\);

-- Location: LCCOMB_X60_Y60_N12
\s64[4][49]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][49]~228_combout\ = (\s64[4][49]~221_combout\) # ((\s64[3][49]~227_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][49]~227_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][49]~221_combout\,
	combout => \s64[4][49]~228_combout\);

-- Location: LCCOMB_X61_Y60_N10
\s64[5][33]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][33]~229_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][17]~175_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][49]~228_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][17]~175_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][49]~228_combout\,
	combout => \s64[5][33]~229_combout\);

-- Location: LCCOMB_X61_Y60_N4
\Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = (!\Equal0~0_combout\ & ((\s64[5][33]~229_combout\) # ((\s64[4][33]~241_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][33]~241_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][33]~229_combout\,
	combout => \Y~8_combout\);

-- Location: LCCOMB_X55_Y62_N28
\s64~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~166_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~166_combout\);

-- Location: LCCOMB_X57_Y62_N6
\s64~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~167_combout\ = (\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~167_combout\);

-- Location: LCCOMB_X55_Y62_N30
\s64[2][1]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~168_combout\ = (\s64[2][0]~118_combout\ & (((!\s64[2][0]~119_combout\)))) # (!\s64[2][0]~118_combout\ & ((\s64[2][0]~119_combout\ & (\s64~166_combout\)) # (!\s64[2][0]~119_combout\ & ((\s64~167_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~166_combout\,
	datab => \s64[2][0]~118_combout\,
	datac => \s64[2][0]~119_combout\,
	datad => \s64~167_combout\,
	combout => \s64[2][1]~168_combout\);

-- Location: LCCOMB_X55_Y62_N24
\s64[2][1]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~169_combout\ = (\s64[2][1]~168_combout\ & (((\A[1]~input_o\) # (\s64[2][0]~115_combout\)))) # (!\s64[2][1]~168_combout\ & (\A[2]~input_o\ & ((!\s64[2][0]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \s64[2][1]~168_combout\,
	datad => \s64[2][0]~115_combout\,
	combout => \s64[2][1]~169_combout\);

-- Location: LCCOMB_X59_Y62_N16
\s64[4][1]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][1]~170_combout\ = (\s64[2][5]~164_combout\ & ((\s64[4][0]~21_combout\) # ((\s64[2][1]~169_combout\ & !\B[2]~input_o\)))) # (!\s64[2][5]~164_combout\ & (((\s64[2][1]~169_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][5]~164_combout\,
	datab => \s64[4][0]~21_combout\,
	datac => \s64[2][1]~169_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[4][1]~170_combout\);

-- Location: LCCOMB_X59_Y62_N18
\s64[4][1]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][1]~171_combout\ = (\s64[3][9]~165_combout\ & ((\s64[4][0]~20_combout\) # ((\s64[4][1]~170_combout\ & !\B[3]~input_o\)))) # (!\s64[3][9]~165_combout\ & (\s64[4][1]~170_combout\ & ((!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][9]~165_combout\,
	datab => \s64[4][1]~170_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][1]~171_combout\);

-- Location: LCCOMB_X61_Y60_N16
\s64[5][1]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][1]~176_combout\ = (\B[4]~input_o\ & (\s64[4][17]~175_combout\ & (!\Equal0~0_combout\))) # (!\B[4]~input_o\ & (((\s64[4][1]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][17]~175_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][1]~171_combout\,
	combout => \s64[5][1]~176_combout\);

-- Location: LCCOMB_X65_Y60_N24
\Y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = (\Y~7_combout\ & (((!\ExtWord~input_o\ & \s64[5][1]~176_combout\)))) # (!\Y~7_combout\ & ((\Y~8_combout\) # ((\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~8_combout\,
	datab => \Y~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \s64[5][1]~176_combout\,
	combout => \Y~9_combout\);

-- Location: LCCOMB_X61_Y60_N6
\Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = (\Y~168_combout\ & ((\Y~9_combout\ & ((\s64[4][1]~171_combout\))) # (!\Y~9_combout\ & (\s32[4][17]~13_combout\)))) # (!\Y~168_combout\ & (((\Y~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~168_combout\,
	datab => \s32[4][17]~13_combout\,
	datac => \Y~9_combout\,
	datad => \s64[4][1]~171_combout\,
	combout => \Y~10_combout\);

-- Location: LCCOMB_X57_Y66_N8
\s64[2][22]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][22]~244_combout\ = (\Equal0~0_combout\ & (((\B[1]~input_o\) # (\s64~5_combout\)))) # (!\Equal0~0_combout\ & (\s64~13_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~13_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~5_combout\,
	combout => \s64[2][22]~244_combout\);

-- Location: LCCOMB_X57_Y66_N2
\s64[2][22]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][22]~245_combout\ = (\s64[2][22]~244_combout\ & ((\s64~14_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][22]~244_combout\ & (((\B[1]~input_o\ & \s64~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~14_combout\,
	datab => \s64[2][22]~244_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~3_combout\,
	combout => \s64[2][22]~245_combout\);

-- Location: LCCOMB_X59_Y65_N4
\s64[2][26]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][26]~242_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~10_combout\)) # (!\Equal0~0_combout\ & ((\s64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~10_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64~1_combout\,
	combout => \s64[2][26]~242_combout\);

-- Location: LCCOMB_X59_Y65_N30
\s64[2][26]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][26]~243_combout\ = (\s64[2][26]~242_combout\ & ((\s64~2_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][26]~242_combout\ & (((\s64~8_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~2_combout\,
	datab => \s64~8_combout\,
	datac => \s64[2][26]~242_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][26]~243_combout\);

-- Location: LCCOMB_X62_Y62_N24
\s32[3][26]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][26]~15_combout\ = (\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (!\s64[2][22]~245_combout\))) # (!\B[2]~input_o\ & (((!\s64[2][26]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][22]~245_combout\,
	datab => \s64[2][26]~243_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s32[3][26]~15_combout\);

-- Location: LCCOMB_X59_Y64_N22
\fill64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill64~0_combout\ = (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \fill64~0_combout\);

-- Location: LCCOMB_X59_Y64_N16
\s32[2][30]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][30]~14_combout\ = (\B[1]~input_o\ & (\A[31]~input_o\ & (\fill64~0_combout\))) # (!\B[1]~input_o\ & (((\s32[2][30]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[1]~input_o\,
	datac => \fill64~0_combout\,
	datad => \s32[2][30]~8_combout\,
	combout => \s32[2][30]~14_combout\);

-- Location: LCCOMB_X60_Y62_N10
\s32[3][26]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][26]~55_combout\ = (\s32[2][30]~14_combout\ & (\B[2]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \s32[2][30]~14_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \s32[3][26]~55_combout\);

-- Location: LCCOMB_X58_Y66_N28
\s64[2][14]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][14]~249_combout\ = (\Equal0~0_combout\ & ((\B[1]~input_o\) # ((\s64~47_combout\)))) # (!\Equal0~0_combout\ & (!\B[1]~input_o\ & ((\s64~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~47_combout\,
	datad => \s64~22_combout\,
	combout => \s64[2][14]~249_combout\);

-- Location: LCCOMB_X58_Y66_N14
\s64[2][14]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][14]~250_combout\ = (\B[1]~input_o\ & ((\s64[2][14]~249_combout\ & ((\s64~23_combout\))) # (!\s64[2][14]~249_combout\ & (\s64~45_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][14]~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~45_combout\,
	datab => \s64~23_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][14]~249_combout\,
	combout => \s64[2][14]~250_combout\);

-- Location: LCCOMB_X57_Y62_N0
\s64[2][10]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][10]~252_combout\ = (\Equal0~0_combout\ & (((\B[1]~input_o\) # (\s64~26_combout\)))) # (!\Equal0~0_combout\ & (\s64~28_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~28_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~26_combout\,
	combout => \s64[2][10]~252_combout\);

-- Location: LCCOMB_X57_Y62_N10
\s64[2][10]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][10]~253_combout\ = (\B[1]~input_o\ & ((\s64[2][10]~252_combout\ & ((\s64~29_combout\))) # (!\s64[2][10]~252_combout\ & (\s64~24_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][10]~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~24_combout\,
	datab => \s64~29_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][10]~252_combout\,
	combout => \s64[2][10]~253_combout\);

-- Location: LCCOMB_X62_Y62_N6
\s64[3][10]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][10]~254_combout\ = (\s64[2][14]~250_combout\ & ((\s64[4][0]~21_combout\) # ((\s64[2][10]~253_combout\ & !\B[2]~input_o\)))) # (!\s64[2][14]~250_combout\ & (\s64[2][10]~253_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][14]~250_combout\,
	datab => \s64[2][10]~253_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][10]~254_combout\);

-- Location: LCCOMB_X57_Y62_N20
\s64[2][6]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][6]~255_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~32_combout\)) # (!\Equal0~0_combout\ & ((\s64~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~32_combout\,
	datab => \s64~35_combout\,
	datac => \B[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][6]~255_combout\);

-- Location: LCCOMB_X57_Y62_N14
\s64[2][6]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][6]~256_combout\ = (\B[1]~input_o\ & ((\s64[2][6]~255_combout\ & ((\s64~36_combout\))) # (!\s64[2][6]~255_combout\ & (\s64~30_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][6]~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~30_combout\,
	datab => \s64~36_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][6]~255_combout\,
	combout => \s64[2][6]~256_combout\);

-- Location: LCCOMB_X62_Y62_N8
\s64[3][10]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][10]~257_combout\ = (\s64[3][10]~254_combout\) # ((\Equal0~0_combout\ & (\s64[2][6]~256_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][10]~254_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[2][6]~256_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][10]~257_combout\);

-- Location: LCCOMB_X57_Y66_N4
\s64[2][18]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][18]~246_combout\ = (\Equal0~0_combout\ & ((\s64~17_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~17_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~43_combout\,
	combout => \s64[2][18]~246_combout\);

-- Location: LCCOMB_X57_Y66_N14
\s64[2][18]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][18]~247_combout\ = (\B[1]~input_o\ & ((\s64[2][18]~246_combout\ & ((\s64~44_combout\))) # (!\s64[2][18]~246_combout\ & (\s64~15_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][18]~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64~15_combout\,
	datac => \s64[2][18]~246_combout\,
	datad => \s64~44_combout\,
	combout => \s64[2][18]~247_combout\);

-- Location: LCCOMB_X62_Y62_N10
\s64[3][18]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][18]~248_combout\ = (\s64[2][22]~245_combout\ & ((\s64[4][0]~21_combout\) # ((!\B[2]~input_o\ & \s64[2][18]~247_combout\)))) # (!\s64[2][22]~245_combout\ & (!\B[2]~input_o\ & ((\s64[2][18]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][22]~245_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[4][0]~21_combout\,
	datad => \s64[2][18]~247_combout\,
	combout => \s64[3][18]~248_combout\);

-- Location: LCCOMB_X62_Y62_N20
\s64[3][18]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][18]~251_combout\ = (\s64[3][18]~248_combout\) # ((\Equal0~0_combout\ & (\s64[2][14]~250_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][18]~248_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[2][14]~250_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][18]~251_combout\);

-- Location: LCCOMB_X65_Y62_N16
\s32[4][18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][18]~16_combout\ = (\s64[3][10]~257_combout\ & (!\s64[4][16]~0_combout\ & ((\B[3]~input_o\) # (!\s64[3][18]~251_combout\)))) # (!\s64[3][10]~257_combout\ & ((\B[3]~input_o\) # ((!\s64[3][18]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][10]~257_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[3][18]~251_combout\,
	datad => \s64[4][16]~0_combout\,
	combout => \s32[4][18]~16_combout\);

-- Location: LCCOMB_X65_Y62_N26
\s32[4][18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][18]~17_combout\ = ((\s64[4][0]~20_combout\ & ((\s32[3][26]~55_combout\) # (!\s32[3][26]~15_combout\)))) # (!\s32[4][18]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][26]~15_combout\,
	datab => \s64[4][0]~20_combout\,
	datac => \s32[3][26]~55_combout\,
	datad => \s32[4][18]~16_combout\,
	combout => \s32[4][18]~17_combout\);

-- Location: LCCOMB_X59_Y64_N26
\s64[2][30]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][30]~262_combout\ = (\B[1]~input_o\ & ((\s64[1][32]~110_combout\))) # (!\B[1]~input_o\ & (\s32[2][30]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s32[2][30]~8_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][32]~110_combout\,
	combout => \s64[2][30]~262_combout\);

-- Location: LCCOMB_X65_Y62_N20
\s64[3][26]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][26]~263_combout\ = ((\s64[4][0]~21_combout\ & \s64[2][30]~262_combout\)) # (!\s32[3][26]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][0]~21_combout\,
	datac => \s64[2][30]~262_combout\,
	datad => \s32[3][26]~15_combout\,
	combout => \s64[3][26]~263_combout\);

-- Location: LCCOMB_X65_Y62_N14
\s64[4][18]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][18]~264_combout\ = ((\s64[4][0]~20_combout\ & \s64[3][26]~263_combout\)) # (!\s32[4][18]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s32[4][18]~16_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][26]~263_combout\,
	combout => \s64[4][18]~264_combout\);

-- Location: LCCOMB_X55_Y62_N10
\s64[2][2]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][2]~258_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~39_combout\))) # (!\Equal0~0_combout\ & (\s64~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64~117_combout\,
	datac => \s64~39_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][2]~258_combout\);

-- Location: LCCOMB_X56_Y62_N20
\s64[2][2]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][2]~259_combout\ = (\B[1]~input_o\ & ((\s64[2][2]~258_combout\ & ((\s64~116_combout\))) # (!\s64[2][2]~258_combout\ & (\s64~37_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][2]~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~37_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~116_combout\,
	datad => \s64[2][2]~258_combout\,
	combout => \s64[2][2]~259_combout\);

-- Location: LCCOMB_X62_Y62_N2
\s64[4][2]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][2]~260_combout\ = (\s64[2][6]~256_combout\ & ((\s64[4][0]~21_combout\) # ((\s64[2][2]~259_combout\ & !\B[2]~input_o\)))) # (!\s64[2][6]~256_combout\ & (((\s64[2][2]~259_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][6]~256_combout\,
	datab => \s64[4][0]~21_combout\,
	datac => \s64[2][2]~259_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[4][2]~260_combout\);

-- Location: LCCOMB_X62_Y62_N28
\s64[4][2]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][2]~261_combout\ = (\s64[3][10]~257_combout\ & ((\s64[4][0]~20_combout\) # ((!\B[3]~input_o\ & \s64[4][2]~260_combout\)))) # (!\s64[3][10]~257_combout\ & (!\B[3]~input_o\ & ((\s64[4][2]~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][10]~257_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[4][2]~260_combout\,
	combout => \s64[4][2]~261_combout\);

-- Location: LCCOMB_X65_Y62_N0
\s64[5][2]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][2]~265_combout\ = (\B[4]~input_o\ & (!\Equal0~0_combout\ & (\s64[4][18]~264_combout\))) # (!\B[4]~input_o\ & (((\s64[4][2]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[4]~input_o\,
	datac => \s64[4][18]~264_combout\,
	datad => \s64[4][2]~261_combout\,
	combout => \s64[5][2]~265_combout\);

-- Location: LCCOMB_X62_Y65_N20
\s64[2][34]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][34]~292_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][32]~110_combout\))) # (!\Equal0~0_combout\ & (\s64[1][36]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][36]~80_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][32]~110_combout\,
	combout => \s64[2][34]~292_combout\);

-- Location: LCCOMB_X62_Y65_N22
\s64[2][34]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][34]~293_combout\ = (\s64[2][34]~292_combout\) # ((\s64[1][34]~75_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][34]~75_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][34]~292_combout\,
	combout => \s64[2][34]~293_combout\);

-- Location: LCCOMB_X62_Y65_N8
\s64[2][38]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][38]~274_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][36]~80_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][40]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64[1][36]~80_combout\,
	datad => \s64[1][40]~93_combout\,
	combout => \s64[2][38]~274_combout\);

-- Location: LCCOMB_X62_Y65_N26
\s64[2][38]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][38]~275_combout\ = (\s64[2][38]~274_combout\) # ((!\B[1]~input_o\ & \s64[1][38]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][38]~274_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][38]~77_combout\,
	combout => \s64[2][38]~275_combout\);

-- Location: LCCOMB_X59_Y65_N8
\s64~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~290_combout\ = (\B[1]~input_o\ & ((\s64~7_combout\))) # (!\B[1]~input_o\ & (\s64~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \s64~107_combout\,
	datad => \s64~7_combout\,
	combout => \s64~290_combout\);

-- Location: LCCOMB_X62_Y63_N8
\s64[3][34]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][34]~291_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64~290_combout\))) # (!\Equal0~0_combout\ & (\s64[2][38]~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][38]~275_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64~290_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][34]~291_combout\);

-- Location: LCCOMB_X62_Y63_N10
\s64[3][34]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][34]~294_combout\ = (\s64[3][34]~291_combout\) # ((\s64[2][34]~293_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][34]~293_combout\,
	datac => \s64[3][34]~291_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][34]~294_combout\);

-- Location: LCCOMB_X63_Y65_N20
\s64[2][42]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][42]~279_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][40]~93_combout\))) # (!\Equal0~0_combout\ & (\s64[1][44]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][44]~88_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[1][40]~93_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][42]~279_combout\);

-- Location: LCCOMB_X63_Y65_N14
\s64[2][42]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][42]~280_combout\ = (\s64[2][42]~279_combout\) # ((!\B[1]~input_o\ & \s64[1][42]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][42]~279_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][42]~83_combout\,
	combout => \s64[2][42]~280_combout\);

-- Location: LCCOMB_X63_Y65_N0
\s64[2][46]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][46]~276_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][44]~88_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][48]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][44]~88_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][48]~100_combout\,
	combout => \s64[2][46]~276_combout\);

-- Location: LCCOMB_X63_Y65_N26
\s64[2][46]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][46]~277_combout\ = (\s64[2][46]~276_combout\) # ((!\B[1]~input_o\ & \s64[1][46]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][46]~276_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][46]~85_combout\,
	combout => \s64[2][46]~277_combout\);

-- Location: LCCOMB_X65_Y65_N4
\s64[3][42]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][42]~278_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][38]~275_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][46]~277_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64[2][38]~275_combout\,
	datad => \s64[2][46]~277_combout\,
	combout => \s64[3][42]~278_combout\);

-- Location: LCCOMB_X65_Y65_N6
\s64[3][42]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][42]~281_combout\ = (\s64[3][42]~278_combout\) # ((\s64[2][42]~280_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][42]~280_combout\,
	datab => \s64[3][42]~278_combout\,
	datac => \B[2]~input_o\,
	combout => \s64[3][42]~281_combout\);

-- Location: LCCOMB_X65_Y62_N10
\s64[4][34]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][34]~289_combout\ = (\s64[3][42]~281_combout\ & ((\s64[4][0]~20_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][26]~263_combout\)))) # (!\s64[3][42]~281_combout\ & (\s64[4][16]~0_combout\ & ((\s64[3][26]~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][42]~281_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][26]~263_combout\,
	combout => \s64[4][34]~289_combout\);

-- Location: LCCOMB_X65_Y62_N12
\s64[4][34]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][34]~295_combout\ = (\s64[4][34]~289_combout\) # ((!\B[3]~input_o\ & \s64[3][34]~294_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[3][34]~294_combout\,
	datad => \s64[4][34]~289_combout\,
	combout => \s64[4][34]~295_combout\);

-- Location: LCCOMB_X61_Y65_N4
\s64[2][54]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][54]~266_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][52]~58_combout\))) # (!\Equal0~0_combout\ & (\s64[1][56]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][56]~71_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][52]~58_combout\,
	combout => \s64[2][54]~266_combout\);

-- Location: LCCOMB_X61_Y65_N6
\s64[2][54]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][54]~267_combout\ = (\s64[2][54]~266_combout\) # ((\s64[1][54]~55_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][54]~55_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[2][54]~266_combout\,
	combout => \s64[2][54]~267_combout\);

-- Location: LCCOMB_X55_Y62_N20
\fill64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill64~1_combout\ = (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[63]~input_o\,
	combout => \fill64~1_combout\);

-- Location: LCCOMB_X61_Y66_N2
\s64[2][62]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][62]~268_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][60]~66_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~1_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][60]~66_combout\,
	combout => \s64[2][62]~268_combout\);

-- Location: LCCOMB_X61_Y66_N4
\s64[2][62]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][62]~269_combout\ = (\s64[2][62]~268_combout\) # ((\s64[1][62]~63_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][62]~63_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][62]~268_combout\,
	combout => \s64[2][62]~269_combout\);

-- Location: LCCOMB_X65_Y65_N24
\s64[3][58]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][58]~270_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][54]~267_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][62]~269_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][54]~267_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][62]~269_combout\,
	combout => \s64[3][58]~270_combout\);

-- Location: LCCOMB_X61_Y65_N8
\s64[2][58]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][58]~271_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][56]~71_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][60]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][56]~71_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][60]~66_combout\,
	combout => \s64[2][58]~271_combout\);

-- Location: LCCOMB_X61_Y65_N18
\s64[2][58]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][58]~272_combout\ = (\s64[2][58]~271_combout\) # ((!\B[1]~input_o\ & \s64[1][58]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \s64[2][58]~271_combout\,
	datad => \s64[1][58]~61_combout\,
	combout => \s64[2][58]~272_combout\);

-- Location: LCCOMB_X65_Y65_N26
\s64[3][58]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][58]~273_combout\ = (\s64[3][58]~270_combout\) # ((!\B[2]~input_o\ & \s64[2][58]~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[3][58]~270_combout\,
	datac => \s64[2][58]~272_combout\,
	combout => \s64[3][58]~273_combout\);

-- Location: LCCOMB_X65_Y65_N8
\s64[4][50]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][50]~282_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][42]~281_combout\) # ((\s64[4][0]~20_combout\ & \s64[3][58]~273_combout\)))) # (!\s64[4][16]~0_combout\ & (\s64[4][0]~20_combout\ & (\s64[3][58]~273_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[4][0]~20_combout\,
	datac => \s64[3][58]~273_combout\,
	datad => \s64[3][42]~281_combout\,
	combout => \s64[4][50]~282_combout\);

-- Location: LCCOMB_X65_Y65_N10
\s64[3][50]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][50]~283_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][46]~277_combout\))) # (!\Equal0~0_combout\ & (\s64[2][54]~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][54]~267_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][46]~277_combout\,
	combout => \s64[3][50]~283_combout\);

-- Location: LCCOMB_X63_Y65_N16
\s64[2][50]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][50]~284_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][48]~100_combout\))) # (!\Equal0~0_combout\ & (\s64[1][52]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][52]~58_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][48]~100_combout\,
	combout => \s64[2][50]~284_combout\);

-- Location: LCCOMB_X63_Y65_N18
\s64[2][50]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][50]~285_combout\ = (\s64[2][50]~284_combout\) # ((!\B[1]~input_o\ & \s64[1][50]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][50]~284_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][50]~53_combout\,
	combout => \s64[2][50]~285_combout\);

-- Location: LCCOMB_X65_Y65_N12
\s64[3][50]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][50]~286_combout\ = (\s64[3][50]~283_combout\) # ((\s64[2][50]~285_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][50]~283_combout\,
	datab => \s64[2][50]~285_combout\,
	datac => \B[2]~input_o\,
	combout => \s64[3][50]~286_combout\);

-- Location: LCCOMB_X65_Y65_N14
\s64[4][50]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][50]~287_combout\ = (\s64[4][50]~282_combout\) # ((!\B[3]~input_o\ & \s64[3][50]~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][50]~282_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][50]~286_combout\,
	combout => \s64[4][50]~287_combout\);

-- Location: LCCOMB_X66_Y62_N24
\s64[5][34]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][34]~288_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][18]~264_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][50]~287_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][18]~264_combout\,
	datab => \s64[4][50]~287_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][34]~288_combout\);

-- Location: LCCOMB_X66_Y62_N2
\Y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = (!\Equal0~0_combout\ & ((\s64[5][34]~288_combout\) # ((\s64[4][34]~295_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][34]~295_combout\,
	datab => \s64[5][34]~288_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Y~11_combout\);

-- Location: LCCOMB_X65_Y60_N26
\Y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = (\Y~7_combout\ & (\s64[5][2]~265_combout\ & (!\ExtWord~input_o\))) # (!\Y~7_combout\ & (((\ExtWord~input_o\) # (\Y~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][2]~265_combout\,
	datab => \Y~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~11_combout\,
	combout => \Y~12_combout\);

-- Location: LCCOMB_X65_Y60_N4
\Y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = (\Y~168_combout\ & ((\Y~12_combout\ & ((\s64[4][2]~261_combout\))) # (!\Y~12_combout\ & (\s32[4][18]~17_combout\)))) # (!\Y~168_combout\ & (((\Y~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][18]~17_combout\,
	datab => \Y~168_combout\,
	datac => \Y~12_combout\,
	datad => \s64[4][2]~261_combout\,
	combout => \Y~13_combout\);

-- Location: LCCOMB_X59_Y66_N4
\s64[2][23]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][23]~298_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~130_combout\))) # (!\Equal0~0_combout\ & (\s64~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~132_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~130_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][23]~298_combout\);

-- Location: LCCOMB_X59_Y66_N30
\s64[2][23]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][23]~299_combout\ = (\s64[2][23]~298_combout\ & ((\s64~133_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][23]~298_combout\ & (((\B[1]~input_o\ & \s64~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~133_combout\,
	datab => \s64[2][23]~298_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~128_combout\,
	combout => \s64[2][23]~299_combout\);

-- Location: LCCOMB_X59_Y65_N26
\s64[2][27]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][27]~296_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~232_combout\)) # (!\Equal0~0_combout\ & ((\s64~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~232_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~126_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][27]~296_combout\);

-- Location: LCCOMB_X59_Y64_N14
\s64[2][27]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][27]~297_combout\ = (\s64[2][27]~296_combout\ & (((\s64~127_combout\) # (!\B[1]~input_o\)))) # (!\s64[2][27]~296_combout\ & (\s64~125_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][27]~296_combout\,
	datab => \s64~125_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~127_combout\,
	combout => \s64[2][27]~297_combout\);

-- Location: LCCOMB_X60_Y63_N20
\s32[3][27]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][27]~19_combout\ = (\B[2]~input_o\ & (((!\s64[2][23]~299_combout\)) # (!\Equal0~0_combout\))) # (!\B[2]~input_o\ & (((!\s64[2][27]~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][23]~299_combout\,
	datac => \s64[2][27]~297_combout\,
	datad => \B[2]~input_o\,
	combout => \s32[3][27]~19_combout\);

-- Location: LCCOMB_X57_Y65_N20
\s64[2][7]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][7]~309_combout\ = (\B[1]~input_o\ & (\Equal0~0_combout\)) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~156_combout\)) # (!\Equal0~0_combout\ & ((\s64~159_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64~156_combout\,
	datad => \s64~159_combout\,
	combout => \s64[2][7]~309_combout\);

-- Location: LCCOMB_X57_Y65_N14
\s64[2][7]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][7]~310_combout\ = (\B[1]~input_o\ & ((\s64[2][7]~309_combout\ & (\s64~160_combout\)) # (!\s64[2][7]~309_combout\ & ((\s64~154_combout\))))) # (!\B[1]~input_o\ & (((\s64[2][7]~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~160_combout\,
	datab => \s64~154_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][7]~309_combout\,
	combout => \s64[2][7]~310_combout\);

-- Location: LCCOMB_X57_Y65_N24
\s64[2][11]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][11]~306_combout\ = (\B[1]~input_o\ & (\Equal0~0_combout\)) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~149_combout\)) # (!\Equal0~0_combout\ & ((\s64~152_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64~149_combout\,
	datad => \s64~152_combout\,
	combout => \s64[2][11]~306_combout\);

-- Location: LCCOMB_X57_Y65_N10
\s64[2][11]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][11]~307_combout\ = (\s64[2][11]~306_combout\ & ((\s64~153_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][11]~306_combout\ & (((\B[1]~input_o\ & \s64~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~153_combout\,
	datab => \s64[2][11]~306_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~147_combout\,
	combout => \s64[2][11]~307_combout\);

-- Location: LCCOMB_X58_Y63_N22
\s64[2][15]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][15]~303_combout\ = (\B[1]~input_o\ & (\Equal0~0_combout\)) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~142_combout\)) # (!\Equal0~0_combout\ & ((\s64~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64~142_combout\,
	datad => \s64~145_combout\,
	combout => \s64[2][15]~303_combout\);

-- Location: LCCOMB_X58_Y63_N8
\s64[2][15]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][15]~304_combout\ = (\B[1]~input_o\ & ((\s64[2][15]~303_combout\ & (\s64~146_combout\)) # (!\s64[2][15]~303_combout\ & ((\s64~140_combout\))))) # (!\B[1]~input_o\ & (((\s64[2][15]~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64~146_combout\,
	datac => \s64[2][15]~303_combout\,
	datad => \s64~140_combout\,
	combout => \s64[2][15]~304_combout\);

-- Location: LCCOMB_X60_Y63_N14
\s64[3][11]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][11]~308_combout\ = (\s64[4][0]~21_combout\ & ((\s64[2][15]~304_combout\) # ((\s64[2][11]~307_combout\ & !\B[2]~input_o\)))) # (!\s64[4][0]~21_combout\ & (\s64[2][11]~307_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~21_combout\,
	datab => \s64[2][11]~307_combout\,
	datac => \s64[2][15]~304_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][11]~308_combout\);

-- Location: LCCOMB_X60_Y63_N0
\s64[3][11]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][11]~311_combout\ = (\s64[3][11]~308_combout\) # ((\Equal0~0_combout\ & (\s64[2][7]~310_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][7]~310_combout\,
	datac => \s64[3][11]~308_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][11]~311_combout\);

-- Location: LCCOMB_X58_Y63_N16
\s64[2][19]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][19]~300_combout\ = (\B[1]~input_o\ & (\Equal0~0_combout\)) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~136_combout\)) # (!\Equal0~0_combout\ & ((\s64~138_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64~136_combout\,
	datad => \s64~138_combout\,
	combout => \s64[2][19]~300_combout\);

-- Location: LCCOMB_X58_Y63_N10
\s64[2][19]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][19]~301_combout\ = (\B[1]~input_o\ & ((\s64[2][19]~300_combout\ & (\s64~139_combout\)) # (!\s64[2][19]~300_combout\ & ((\s64~134_combout\))))) # (!\B[1]~input_o\ & (\s64[2][19]~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[2][19]~300_combout\,
	datac => \s64~139_combout\,
	datad => \s64~134_combout\,
	combout => \s64[2][19]~301_combout\);

-- Location: LCCOMB_X58_Y63_N28
\s64[3][19]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][19]~302_combout\ = (\s64[2][19]~301_combout\ & (((\s64[2][23]~299_combout\ & \s64[4][0]~21_combout\)) # (!\B[2]~input_o\))) # (!\s64[2][19]~301_combout\ & (\s64[2][23]~299_combout\ & ((\s64[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][19]~301_combout\,
	datab => \s64[2][23]~299_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[4][0]~21_combout\,
	combout => \s64[3][19]~302_combout\);

-- Location: LCCOMB_X58_Y63_N26
\s64[3][19]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][19]~305_combout\ = (\s64[3][19]~302_combout\) # ((\Equal0~0_combout\ & (\s64[2][15]~304_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][15]~304_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[3][19]~302_combout\,
	combout => \s64[3][19]~305_combout\);

-- Location: LCCOMB_X61_Y62_N8
\s32[4][19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][19]~20_combout\ = (\s64[4][16]~0_combout\ & (!\s64[3][11]~311_combout\ & ((\B[3]~input_o\) # (!\s64[3][19]~305_combout\)))) # (!\s64[4][16]~0_combout\ & (((\B[3]~input_o\) # (!\s64[3][19]~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][11]~311_combout\,
	datac => \s64[3][19]~305_combout\,
	datad => \B[3]~input_o\,
	combout => \s32[4][19]~20_combout\);

-- Location: LCCOMB_X59_Y64_N12
\s32[2][31]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][31]~18_combout\ = (\A[31]~input_o\ & ((\fill64~0_combout\) # ((!\B[1]~input_o\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[1]~input_o\,
	datac => \fill64~0_combout\,
	datad => \B[0]~input_o\,
	combout => \s32[2][31]~18_combout\);

-- Location: LCCOMB_X60_Y62_N12
\s32[3][27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][27]~56_combout\ = (\s32[2][31]~18_combout\ & (\B[2]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \s32[2][31]~18_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \s32[3][27]~56_combout\);

-- Location: LCCOMB_X61_Y62_N10
\s32[4][19]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][19]~21_combout\ = ((\s64[4][0]~20_combout\ & ((\s32[3][27]~56_combout\) # (!\s32[3][27]~19_combout\)))) # (!\s32[4][19]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s32[3][27]~19_combout\,
	datac => \s32[4][19]~20_combout\,
	datad => \s32[3][27]~56_combout\,
	combout => \s32[4][19]~21_combout\);

-- Location: LCCOMB_X56_Y62_N6
\s64[2][3]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][3]~312_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~163_combout\)) # (!\Equal0~0_combout\ & ((\s64~167_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~163_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64~167_combout\,
	combout => \s64[2][3]~312_combout\);

-- Location: LCCOMB_X56_Y62_N24
\s64[2][3]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][3]~313_combout\ = (\s64[2][3]~312_combout\ & ((\s64~166_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][3]~312_combout\ & (((\B[1]~input_o\ & \s64~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][3]~312_combout\,
	datab => \s64~166_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~161_combout\,
	combout => \s64[2][3]~313_combout\);

-- Location: LCCOMB_X60_Y63_N2
\s64[4][3]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][3]~314_combout\ = (\B[2]~input_o\ & (\s64[2][7]~310_combout\ & (\s64[4][0]~21_combout\))) # (!\B[2]~input_o\ & ((\s64[2][3]~313_combout\) # ((\s64[2][7]~310_combout\ & \s64[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][7]~310_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \s64[2][3]~313_combout\,
	combout => \s64[4][3]~314_combout\);

-- Location: LCCOMB_X61_Y62_N28
\s64[4][3]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][3]~315_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][11]~311_combout\) # ((\s64[4][3]~314_combout\ & !\B[3]~input_o\)))) # (!\s64[4][0]~20_combout\ & (((\s64[4][3]~314_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][11]~311_combout\,
	datac => \s64[4][3]~314_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][3]~315_combout\);

-- Location: LCCOMB_X56_Y65_N26
\s64[2][31]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][31]~316_combout\ = (\B[1]~input_o\ & (\s64[1][33]~238_combout\)) # (!\B[1]~input_o\ & ((\s64[2][31]~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \s64[1][33]~238_combout\,
	datad => \s64[2][31]~172_combout\,
	combout => \s64[2][31]~316_combout\);

-- Location: LCCOMB_X61_Y62_N30
\s64[3][27]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][27]~317_combout\ = ((\s64[4][0]~21_combout\ & \s64[2][31]~316_combout\)) # (!\s32[3][27]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s32[3][27]~19_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \s64[2][31]~316_combout\,
	combout => \s64[3][27]~317_combout\);

-- Location: LCCOMB_X61_Y62_N16
\s64[4][19]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][19]~318_combout\ = ((\s64[4][0]~20_combout\ & \s64[3][27]~317_combout\)) # (!\s32[4][19]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s32[4][19]~20_combout\,
	datac => \s64[3][27]~317_combout\,
	combout => \s64[4][19]~318_combout\);

-- Location: LCCOMB_X58_Y62_N0
\s64[5][3]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][3]~319_combout\ = (\B[4]~input_o\ & (!\Equal0~0_combout\ & (\s64[4][19]~318_combout\))) # (!\B[4]~input_o\ & (((\s64[4][3]~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][19]~318_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][3]~315_combout\,
	combout => \s64[5][3]~319_combout\);

-- Location: LCCOMB_X61_Y66_N6
\s64[2][63]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][63]~322_combout\ = (\B[1]~input_o\ & (!\Equal0~0_combout\ & (\fill64~1_combout\))) # (!\B[1]~input_o\ & (((\s64[1][63]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~1_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][63]~188_combout\,
	combout => \s64[2][63]~322_combout\);

-- Location: LCCOMB_X61_Y63_N24
\s64[2][63]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][63]~323_combout\ = (\s64[2][63]~322_combout\) # ((\Equal0~0_combout\ & (\s64[1][61]~191_combout\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][61]~191_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][63]~322_combout\,
	combout => \s64[2][63]~323_combout\);

-- Location: LCCOMB_X60_Y65_N16
\s64[2][55]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][55]~320_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][53]~183_combout\))) # (!\Equal0~0_combout\ & (\s64[1][57]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][57]~196_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][53]~183_combout\,
	combout => \s64[2][55]~320_combout\);

-- Location: LCCOMB_X60_Y65_N2
\s64[2][55]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][55]~321_combout\ = (\s64[2][55]~320_combout\) # ((\s64[1][55]~180_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][55]~180_combout\,
	datab => \s64[2][55]~320_combout\,
	datac => \B[1]~input_o\,
	combout => \s64[2][55]~321_combout\);

-- Location: LCCOMB_X61_Y63_N10
\s64[3][59]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][59]~324_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][55]~321_combout\))) # (!\Equal0~0_combout\ & (\s64[2][63]~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][63]~323_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][55]~321_combout\,
	combout => \s64[3][59]~324_combout\);

-- Location: LCCOMB_X60_Y65_N20
\s64[2][59]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][59]~325_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][57]~196_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][61]~191_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][57]~196_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][61]~191_combout\,
	combout => \s64[2][59]~325_combout\);

-- Location: LCCOMB_X60_Y65_N30
\s64[2][59]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][59]~326_combout\ = (\s64[2][59]~325_combout\) # ((!\B[1]~input_o\ & \s64[1][59]~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \s64[1][59]~186_combout\,
	datad => \s64[2][59]~325_combout\,
	combout => \s64[2][59]~326_combout\);

-- Location: LCCOMB_X61_Y63_N4
\s64[3][59]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][59]~327_combout\ = (\s64[3][59]~324_combout\) # ((\s64[2][59]~326_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][59]~324_combout\,
	datab => \s64[2][59]~326_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][59]~327_combout\);

-- Location: LCCOMB_X59_Y63_N28
\s64[2][47]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][47]~330_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][45]~213_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][49]~225_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][45]~213_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][49]~225_combout\,
	combout => \s64[2][47]~330_combout\);

-- Location: LCCOMB_X59_Y63_N6
\s64[2][47]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][47]~331_combout\ = (\s64[2][47]~330_combout\) # ((!\B[1]~input_o\ & \s64[1][47]~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[2][47]~330_combout\,
	datad => \s64[1][47]~210_combout\,
	combout => \s64[2][47]~331_combout\);

-- Location: LCCOMB_X59_Y63_N18
\s64[2][39]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][39]~328_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][37]~205_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][41]~218_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][37]~205_combout\,
	datac => \s64[1][41]~218_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][39]~328_combout\);

-- Location: LCCOMB_X62_Y63_N28
\s64[2][39]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][39]~329_combout\ = (\s64[2][39]~328_combout\) # ((!\B[1]~input_o\ & \s64[1][39]~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \s64[1][39]~202_combout\,
	datad => \s64[2][39]~328_combout\,
	combout => \s64[2][39]~329_combout\);

-- Location: LCCOMB_X62_Y63_N30
\s64[3][43]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][43]~332_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][39]~329_combout\))) # (!\Equal0~0_combout\ & (\s64[2][47]~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][47]~331_combout\,
	datab => \s64[2][39]~329_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][43]~332_combout\);

-- Location: LCCOMB_X59_Y63_N16
\s64[2][43]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][43]~333_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][41]~218_combout\))) # (!\Equal0~0_combout\ & (\s64[1][45]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][45]~213_combout\,
	datac => \s64[1][41]~218_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][43]~333_combout\);

-- Location: LCCOMB_X59_Y63_N26
\s64[2][43]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][43]~334_combout\ = (\s64[2][43]~333_combout\) # ((\s64[1][43]~208_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][43]~333_combout\,
	datac => \s64[1][43]~208_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][43]~334_combout\);

-- Location: LCCOMB_X62_Y63_N24
\s64[3][43]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][43]~335_combout\ = (\s64[3][43]~332_combout\) # ((\s64[2][43]~334_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][43]~332_combout\,
	datab => \s64[2][43]~334_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][43]~335_combout\);

-- Location: LCCOMB_X61_Y63_N14
\s64[4][51]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][51]~336_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][59]~327_combout\) # ((\s64[3][43]~335_combout\ & \s64[4][16]~0_combout\)))) # (!\s64[4][0]~20_combout\ & (((\s64[3][43]~335_combout\ & \s64[4][16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][59]~327_combout\,
	datac => \s64[3][43]~335_combout\,
	datad => \s64[4][16]~0_combout\,
	combout => \s64[4][51]~336_combout\);

-- Location: LCCOMB_X61_Y63_N0
\s64[3][51]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][51]~337_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][47]~331_combout\))) # (!\Equal0~0_combout\ & (\s64[2][55]~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][55]~321_combout\,
	datac => \s64[2][47]~331_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][51]~337_combout\);

-- Location: LCCOMB_X59_Y63_N12
\s64[2][51]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][51]~338_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][49]~225_combout\))) # (!\Equal0~0_combout\ & (\s64[1][53]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64[1][53]~183_combout\,
	datad => \s64[1][49]~225_combout\,
	combout => \s64[2][51]~338_combout\);

-- Location: LCCOMB_X61_Y63_N26
\s64[2][51]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][51]~339_combout\ = (\s64[2][51]~338_combout\) # ((!\B[1]~input_o\ & \s64[1][51]~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][51]~338_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[1][51]~178_combout\,
	combout => \s64[2][51]~339_combout\);

-- Location: LCCOMB_X61_Y63_N28
\s64[3][51]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][51]~340_combout\ = (\s64[3][51]~337_combout\) # ((\s64[2][51]~339_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][51]~337_combout\,
	datac => \s64[2][51]~339_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][51]~340_combout\);

-- Location: LCCOMB_X62_Y59_N8
\s64[4][51]~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][51]~341_combout\ = (\s64[4][51]~336_combout\) # ((!\B[3]~input_o\ & \s64[3][51]~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][51]~336_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[3][51]~340_combout\,
	combout => \s64[4][51]~341_combout\);

-- Location: LCCOMB_X62_Y59_N2
\s64[5][35]~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][35]~342_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][19]~318_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][51]~341_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][19]~318_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][51]~341_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][35]~342_combout\);

-- Location: LCCOMB_X61_Y62_N18
\s64[4][35]~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][35]~343_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][43]~335_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][27]~317_combout\)))) # (!\s64[4][0]~20_combout\ & (\s64[4][16]~0_combout\ & (\s64[3][27]~317_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \s64[3][27]~317_combout\,
	datad => \s64[3][43]~335_combout\,
	combout => \s64[4][35]~343_combout\);

-- Location: LCCOMB_X56_Y65_N28
\s64[2][35]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][35]~347_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][33]~238_combout\))) # (!\Equal0~0_combout\ & (\s64[1][37]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][37]~205_combout\,
	datac => \s64[1][33]~238_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][35]~347_combout\);

-- Location: LCCOMB_X56_Y65_N6
\s64[2][35]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][35]~348_combout\ = (\s64[2][35]~347_combout\) # ((\s64[1][35]~200_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][35]~347_combout\,
	datac => \s64[1][35]~200_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][35]~348_combout\);

-- Location: LCCOMB_X59_Y65_N20
\s64~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~344_combout\ = (\B[1]~input_o\ & (((\A[29]~input_o\) # (\B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[31]~input_o\ & ((!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~344_combout\);

-- Location: LCCOMB_X59_Y65_N22
\s64~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~345_combout\ = (\B[0]~input_o\ & ((\s64~344_combout\ & (\A[28]~input_o\)) # (!\s64~344_combout\ & ((\A[30]~input_o\))))) # (!\B[0]~input_o\ & (((\s64~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[28]~input_o\,
	datac => \A[30]~input_o\,
	datad => \s64~344_combout\,
	combout => \s64~345_combout\);

-- Location: LCCOMB_X62_Y63_N26
\s64[3][35]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][35]~346_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~345_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][39]~329_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~345_combout\,
	datab => \s64[2][39]~329_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][35]~346_combout\);

-- Location: LCCOMB_X62_Y63_N20
\s64[3][35]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][35]~349_combout\ = (\s64[3][35]~346_combout\) # ((\s64[2][35]~348_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][35]~348_combout\,
	datac => \s64[3][35]~346_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][35]~349_combout\);

-- Location: LCCOMB_X61_Y62_N12
\s64[4][35]~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][35]~350_combout\ = (\s64[4][35]~343_combout\) # ((!\B[3]~input_o\ & \s64[3][35]~349_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][35]~343_combout\,
	datad => \s64[3][35]~349_combout\,
	combout => \s64[4][35]~350_combout\);

-- Location: LCCOMB_X62_Y59_N12
\Y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = (!\Equal0~0_combout\ & ((\s64[5][35]~342_combout\) # ((\s64[4][35]~350_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[5][35]~342_combout\,
	datac => \s64[4][35]~350_combout\,
	datad => \B[4]~input_o\,
	combout => \Y~14_combout\);

-- Location: LCCOMB_X65_Y59_N16
\Y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = (\Y~7_combout\ & (\s64[5][3]~319_combout\ & ((!\ExtWord~input_o\)))) # (!\Y~7_combout\ & (((\Y~14_combout\) # (\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][3]~319_combout\,
	datab => \Y~14_combout\,
	datac => \Y~7_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~15_combout\);

-- Location: LCCOMB_X65_Y59_N26
\Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (\Y~168_combout\ & ((\Y~15_combout\ & ((\s64[4][3]~315_combout\))) # (!\Y~15_combout\ & (\s32[4][19]~21_combout\)))) # (!\Y~168_combout\ & (((\Y~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][19]~21_combout\,
	datab => \s64[4][3]~315_combout\,
	datac => \Y~168_combout\,
	datad => \Y~15_combout\,
	combout => \Y~16_combout\);

-- Location: LCCOMB_X61_Y61_N0
\s64[3][20]~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][20]~351_combout\ = (\s64[2][20]~18_combout\ & (((\s64[4][0]~21_combout\ & \s64[2][24]~6_combout\)) # (!\B[2]~input_o\))) # (!\s64[2][20]~18_combout\ & (\s64[4][0]~21_combout\ & ((\s64[2][24]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][20]~18_combout\,
	datab => \s64[4][0]~21_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][24]~6_combout\,
	combout => \s64[3][20]~351_combout\);

-- Location: LCCOMB_X61_Y61_N10
\s64[3][20]~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][20]~352_combout\ = (\s64[3][20]~351_combout\) # ((\B[2]~input_o\ & (\s64[2][16]~48_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][16]~48_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[3][20]~351_combout\,
	combout => \s64[3][20]~352_combout\);

-- Location: LCCOMB_X61_Y61_N4
\s64[3][12]~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][12]~353_combout\ = (\B[2]~input_o\ & (\s64[2][16]~48_combout\ & ((\s64[4][0]~21_combout\)))) # (!\B[2]~input_o\ & ((\s64[2][12]~27_combout\) # ((\s64[2][16]~48_combout\ & \s64[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][16]~48_combout\,
	datac => \s64[2][12]~27_combout\,
	datad => \s64[4][0]~21_combout\,
	combout => \s64[3][12]~353_combout\);

-- Location: LCCOMB_X61_Y61_N30
\s64[3][12]~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][12]~354_combout\ = (\s64[3][12]~353_combout\) # ((\s64[2][8]~33_combout\ & (\B[2]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][8]~33_combout\,
	datab => \s64[3][12]~353_combout\,
	datac => \B[2]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][12]~354_combout\);

-- Location: LCCOMB_X62_Y61_N10
\s32[4][20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][20]~24_combout\ = (\s64[3][20]~352_combout\ & (\B[3]~input_o\ & ((!\s64[3][12]~354_combout\) # (!\s64[4][16]~0_combout\)))) # (!\s64[3][20]~352_combout\ & (((!\s64[3][12]~354_combout\) # (!\s64[4][16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][20]~352_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][12]~354_combout\,
	combout => \s32[4][20]~24_combout\);

-- Location: LCCOMB_X61_Y61_N14
\s32[3][28]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][28]~22_combout\ = (\B[2]~input_o\ & (((!\s64[2][24]~6_combout\)) # (!\Equal0~0_combout\))) # (!\B[2]~input_o\ & (((!\s64[2][28]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][24]~6_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][28]~11_combout\,
	combout => \s32[3][28]~22_combout\);

-- Location: LCCOMB_X60_Y62_N0
\fill32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill32~0_combout\ = (\A[31]~input_o\ & (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \fill32~0_combout\);

-- Location: LCCOMB_X62_Y61_N24
\s32[3][28]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][28]~23_combout\ = ((!\Equal0~0_combout\ & (\fill32~0_combout\ & \B[2]~input_o\))) # (!\s32[3][28]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][28]~22_combout\,
	datab => \Equal0~0_combout\,
	datac => \fill32~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s32[3][28]~23_combout\);

-- Location: LCCOMB_X62_Y61_N12
\s32[4][20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][20]~25_combout\ = ((\s64[4][0]~20_combout\ & \s32[3][28]~23_combout\)) # (!\s32[4][20]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][20]~24_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s32[3][28]~23_combout\,
	combout => \s32[4][20]~25_combout\);

-- Location: LCCOMB_X61_Y61_N8
\s64[3][4]~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][4]~355_combout\ = (\B[2]~input_o\ & (((\s64[2][8]~33_combout\ & \s64[4][0]~21_combout\)))) # (!\B[2]~input_o\ & ((\s64[2][4]~40_combout\) # ((\s64[2][8]~33_combout\ & \s64[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][4]~40_combout\,
	datac => \s64[2][8]~33_combout\,
	datad => \s64[4][0]~21_combout\,
	combout => \s64[3][4]~355_combout\);

-- Location: LCCOMB_X61_Y61_N18
\s64[3][4]~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][4]~356_combout\ = (\s64[3][4]~355_combout\) # ((\B[2]~input_o\ & (\s64[2][0]~121_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][0]~121_combout\,
	datac => \s64[3][4]~355_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][4]~356_combout\);

-- Location: LCCOMB_X62_Y61_N30
\s64[4][4]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][4]~357_combout\ = (\B[3]~input_o\ & (\s64[3][12]~354_combout\ & (\s64[4][0]~20_combout\))) # (!\B[3]~input_o\ & ((\s64[3][4]~356_combout\) # ((\s64[3][12]~354_combout\ & \s64[4][0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][12]~354_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][4]~356_combout\,
	combout => \s64[4][4]~357_combout\);

-- Location: LCCOMB_X62_Y61_N0
\s64[3][28]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][28]~358_combout\ = ((\s64~111_combout\ & \s64[4][0]~21_combout\)) # (!\s32[3][28]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~111_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \s32[3][28]~22_combout\,
	combout => \s64[3][28]~358_combout\);

-- Location: LCCOMB_X62_Y61_N18
\s64[4][20]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][20]~359_combout\ = ((\s64[3][28]~358_combout\ & \s64[4][0]~20_combout\)) # (!\s32[4][20]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][28]~358_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s32[4][20]~24_combout\,
	combout => \s64[4][20]~359_combout\);

-- Location: LCCOMB_X65_Y60_N30
\s64[5][4]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][4]~360_combout\ = (\B[4]~input_o\ & (\s64[4][20]~359_combout\ & (!\Equal0~0_combout\))) # (!\B[4]~input_o\ & (((\s64[4][4]~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][20]~359_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][4]~357_combout\,
	combout => \s64[5][4]~360_combout\);

-- Location: LCCOMB_X62_Y65_N16
\s64[3][44]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][44]~363_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][40]~94_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][48]~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][40]~94_combout\,
	datac => \s64[2][48]~101_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][44]~363_combout\);

-- Location: LCCOMB_X62_Y65_N18
\s64[3][44]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][44]~364_combout\ = (\s64[3][44]~363_combout\) # ((!\B[2]~input_o\ & \s64[2][44]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[3][44]~363_combout\,
	datac => \s64[2][44]~89_combout\,
	combout => \s64[3][44]~364_combout\);

-- Location: LCCOMB_X62_Y61_N4
\s64[4][36]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][36]~370_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][44]~364_combout\) # ((\s64[3][28]~358_combout\ & \s64[4][16]~0_combout\)))) # (!\s64[4][0]~20_combout\ & (\s64[3][28]~358_combout\ & (\s64[4][16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][28]~358_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][44]~364_combout\,
	combout => \s64[4][36]~370_combout\);

-- Location: LCCOMB_X62_Y65_N28
\s64[3][36]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][36]~371_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~111_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][40]~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64~111_combout\,
	datad => \s64[2][40]~94_combout\,
	combout => \s64[3][36]~371_combout\);

-- Location: LCCOMB_X62_Y65_N30
\s64[3][36]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][36]~372_combout\ = (\s64[3][36]~371_combout\) # ((\s64[2][36]~81_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][36]~81_combout\,
	datab => \s64[3][36]~371_combout\,
	datac => \B[2]~input_o\,
	combout => \s64[3][36]~372_combout\);

-- Location: LCCOMB_X62_Y61_N6
\s64[4][36]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][36]~373_combout\ = (\s64[4][36]~370_combout\) # ((\s64[3][36]~372_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][36]~370_combout\,
	datac => \s64[3][36]~372_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][36]~373_combout\);

-- Location: LCCOMB_X61_Y65_N16
\s64[3][52]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][52]~366_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][48]~101_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][56]~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][48]~101_combout\,
	datab => \s64[2][56]~72_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][52]~366_combout\);

-- Location: LCCOMB_X61_Y65_N26
\s64[3][52]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][52]~367_combout\ = (\s64[3][52]~366_combout\) # ((\s64[2][52]~59_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][52]~366_combout\,
	datac => \s64[2][52]~59_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][52]~367_combout\);

-- Location: LCCOMB_X61_Y65_N28
\s64[3][60]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][60]~361_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][56]~72_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \s64[2][56]~72_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][60]~361_combout\);

-- Location: LCCOMB_X61_Y65_N22
\s64[3][60]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][60]~362_combout\ = (\s64[3][60]~361_combout\) # ((\s64[2][60]~67_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][60]~67_combout\,
	datac => \s64[3][60]~361_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][60]~362_combout\);

-- Location: LCCOMB_X65_Y64_N24
\s64[4][52]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][52]~365_combout\ = (\s64[3][60]~362_combout\ & ((\s64[4][0]~20_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][44]~364_combout\)))) # (!\s64[3][60]~362_combout\ & (((\s64[4][16]~0_combout\ & \s64[3][44]~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][60]~362_combout\,
	datab => \s64[4][0]~20_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][44]~364_combout\,
	combout => \s64[4][52]~365_combout\);

-- Location: LCCOMB_X65_Y64_N26
\s64[4][52]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][52]~368_combout\ = (\s64[4][52]~365_combout\) # ((\s64[3][52]~367_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][52]~367_combout\,
	datab => \B[3]~input_o\,
	datad => \s64[4][52]~365_combout\,
	combout => \s64[4][52]~368_combout\);

-- Location: LCCOMB_X65_Y60_N16
\s64[5][36]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][36]~369_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][20]~359_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][52]~368_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][20]~359_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][52]~368_combout\,
	combout => \s64[5][36]~369_combout\);

-- Location: LCCOMB_X65_Y60_N18
\Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = (!\Equal0~0_combout\ & ((\s64[5][36]~369_combout\) # ((\s64[4][36]~373_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][36]~373_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][36]~369_combout\,
	combout => \Y~17_combout\);

-- Location: LCCOMB_X65_Y60_N28
\Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = (\Y~7_combout\ & (\s64[5][4]~360_combout\ & (!\ExtWord~input_o\))) # (!\Y~7_combout\ & (((\ExtWord~input_o\) # (\Y~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][4]~360_combout\,
	datab => \Y~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~17_combout\,
	combout => \Y~18_combout\);

-- Location: LCCOMB_X62_Y61_N16
\Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = (\Y~168_combout\ & ((\Y~18_combout\ & ((\s64[4][4]~357_combout\))) # (!\Y~18_combout\ & (\s32[4][20]~25_combout\)))) # (!\Y~168_combout\ & (((\Y~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][20]~25_combout\,
	datab => \Y~168_combout\,
	datac => \s64[4][4]~357_combout\,
	datad => \Y~18_combout\,
	combout => \Y~19_combout\);

-- Location: LCCOMB_X59_Y62_N24
\s64[3][5]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][5]~378_combout\ = (\s64[2][9]~157_combout\ & ((\s64[4][0]~21_combout\) # ((\s64[2][5]~164_combout\ & !\B[2]~input_o\)))) # (!\s64[2][9]~157_combout\ & (((\s64[2][5]~164_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][9]~157_combout\,
	datab => \s64[4][0]~21_combout\,
	datac => \s64[2][5]~164_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][5]~378_combout\);

-- Location: LCCOMB_X59_Y62_N10
\s64[3][5]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][5]~379_combout\ = (\s64[3][5]~378_combout\) # ((\Equal0~0_combout\ & (\s64[2][1]~169_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][5]~378_combout\,
	datac => \s64[2][1]~169_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][5]~379_combout\);

-- Location: LCCOMB_X59_Y62_N12
\s64[3][13]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][13]~376_combout\ = (\s64[2][13]~150_combout\ & (((\s64[2][17]~143_combout\ & \s64[4][0]~21_combout\)) # (!\B[2]~input_o\))) # (!\s64[2][13]~150_combout\ & (\s64[2][17]~143_combout\ & (\s64[4][0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][13]~150_combout\,
	datab => \s64[2][17]~143_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][13]~376_combout\);

-- Location: LCCOMB_X59_Y62_N30
\s64[3][13]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][13]~377_combout\ = (\s64[3][13]~376_combout\) # ((\Equal0~0_combout\ & (\s64[2][9]~157_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][13]~376_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[2][9]~157_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][13]~377_combout\);

-- Location: LCCOMB_X59_Y62_N4
\s64[4][5]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][5]~380_combout\ = (\s64[3][5]~379_combout\ & (((\s64[4][0]~20_combout\ & \s64[3][13]~377_combout\)) # (!\B[3]~input_o\))) # (!\s64[3][5]~379_combout\ & (\s64[4][0]~20_combout\ & (\s64[3][13]~377_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][5]~379_combout\,
	datab => \s64[4][0]~20_combout\,
	datac => \s64[3][13]~377_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][5]~380_combout\);

-- Location: LCCOMB_X58_Y63_N0
\s64[3][21]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][21]~374_combout\ = (\B[2]~input_o\ & (((!\Equal0~0_combout\ & \s64[2][25]~131_combout\)))) # (!\B[2]~input_o\ & (\s64[2][21]~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][21]~137_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][25]~131_combout\,
	combout => \s64[3][21]~374_combout\);

-- Location: LCCOMB_X58_Y63_N18
\s64[3][21]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][21]~375_combout\ = (\s64[3][21]~374_combout\) # ((\s64[2][17]~143_combout\ & (\Equal0~0_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][17]~143_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[3][21]~374_combout\,
	combout => \s64[3][21]~375_combout\);

-- Location: LCCOMB_X59_Y60_N12
\s32[4][21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][21]~28_combout\ = (\s64[4][16]~0_combout\ & (!\s64[3][13]~377_combout\ & ((\B[3]~input_o\) # (!\s64[3][21]~375_combout\)))) # (!\s64[4][16]~0_combout\ & (((\B[3]~input_o\)) # (!\s64[3][21]~375_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][21]~375_combout\,
	datac => \s64[3][13]~377_combout\,
	datad => \B[3]~input_o\,
	combout => \s32[4][21]~28_combout\);

-- Location: LCCOMB_X59_Y60_N22
\s64[3][29]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][29]~381_combout\ = (\Equal0~0_combout\ & (((\s64~233_combout\) # (\B[2]~input_o\)))) # (!\Equal0~0_combout\ & (\s64[2][29]~173_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][29]~173_combout\,
	datab => \s64~233_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][29]~381_combout\);

-- Location: LCCOMB_X59_Y60_N0
\s64[3][29]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][29]~382_combout\ = (\s64[3][29]~381_combout\ & (((\s64[2][25]~131_combout\) # (!\B[2]~input_o\)))) # (!\s64[3][29]~381_combout\ & (\s64~239_combout\ & ((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~239_combout\,
	datab => \s64[2][25]~131_combout\,
	datac => \s64[3][29]~381_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][29]~382_combout\);

-- Location: LCCOMB_X59_Y60_N10
\s64[4][21]~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][21]~383_combout\ = ((\s64[3][29]~382_combout\ & \s64[4][0]~20_combout\)) # (!\s32[4][21]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][21]~28_combout\,
	datac => \s64[3][29]~382_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][21]~383_combout\);

-- Location: LCCOMB_X59_Y61_N22
\s64[3][53]~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][53]~390_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][49]~226_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][57]~197_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][49]~226_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][57]~197_combout\,
	combout => \s64[3][53]~390_combout\);

-- Location: LCCOMB_X59_Y61_N8
\s64[3][53]~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][53]~391_combout\ = (\s64[3][53]~390_combout\) # ((!\B[2]~input_o\ & \s64[2][53]~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][53]~390_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][53]~184_combout\,
	combout => \s64[3][53]~391_combout\);

-- Location: LCCOMB_X59_Y63_N14
\s64[3][45]~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][45]~387_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][41]~219_combout\))) # (!\Equal0~0_combout\ & (\s64[2][49]~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][49]~226_combout\,
	datab => \s64[2][41]~219_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][45]~387_combout\);

-- Location: LCCOMB_X59_Y61_N10
\s64[3][45]~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][45]~388_combout\ = (\s64[3][45]~387_combout\) # ((\s64[2][45]~214_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][45]~214_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[3][45]~387_combout\,
	combout => \s64[3][45]~388_combout\);

-- Location: LCCOMB_X59_Y61_N14
\s64[3][61]~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][61]~385_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][57]~197_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \fill64~1_combout\,
	datad => \s64[2][57]~197_combout\,
	combout => \s64[3][61]~385_combout\);

-- Location: LCCOMB_X59_Y61_N0
\s64[3][61]~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][61]~386_combout\ = (\s64[3][61]~385_combout\) # ((!\B[2]~input_o\ & \s64[2][61]~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][61]~385_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][61]~192_combout\,
	combout => \s64[3][61]~386_combout\);

-- Location: LCCOMB_X59_Y61_N20
\s64[4][53]~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][53]~389_combout\ = (\s64[3][45]~388_combout\ & ((\s64[4][16]~0_combout\) # ((\s64[3][61]~386_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[3][45]~388_combout\ & (\s64[3][61]~386_combout\ & ((\s64[4][0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][45]~388_combout\,
	datab => \s64[3][61]~386_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][53]~389_combout\);

-- Location: LCCOMB_X59_Y61_N2
\s64[4][53]~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][53]~392_combout\ = (\s64[4][53]~389_combout\) # ((\s64[3][53]~391_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][53]~391_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][53]~389_combout\,
	combout => \s64[4][53]~392_combout\);

-- Location: LCCOMB_X66_Y64_N10
\s64[5][37]~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][37]~393_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][21]~383_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][53]~392_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][21]~383_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][53]~392_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][37]~393_combout\);

-- Location: LCCOMB_X59_Y60_N4
\s64[3][37]~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][37]~395_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~239_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][41]~219_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~239_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[2][41]~219_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][37]~395_combout\);

-- Location: LCCOMB_X59_Y60_N6
\s64[3][37]~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][37]~396_combout\ = (\s64[3][37]~395_combout\) # ((\s64[2][37]~206_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][37]~206_combout\,
	datac => \s64[3][37]~395_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][37]~396_combout\);

-- Location: LCCOMB_X59_Y61_N28
\s64[4][37]~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][37]~394_combout\ = (\s64[3][45]~388_combout\ & ((\s64[4][0]~20_combout\) # ((\s64[3][29]~382_combout\ & \s64[4][16]~0_combout\)))) # (!\s64[3][45]~388_combout\ & (\s64[3][29]~382_combout\ & (\s64[4][16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][45]~388_combout\,
	datab => \s64[3][29]~382_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][37]~394_combout\);

-- Location: LCCOMB_X59_Y61_N30
\s64[4][37]~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][37]~397_combout\ = (\s64[4][37]~394_combout\) # ((\s64[3][37]~396_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][37]~396_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][37]~394_combout\,
	combout => \s64[4][37]~397_combout\);

-- Location: LCCOMB_X66_Y64_N28
\Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = (!\Equal0~0_combout\ & ((\s64[5][37]~393_combout\) # ((\s64[4][37]~397_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][37]~393_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][37]~397_combout\,
	datad => \B[4]~input_o\,
	combout => \Y~20_combout\);

-- Location: LCCOMB_X66_Y64_N16
\s64[5][5]~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][5]~384_combout\ = (\B[4]~input_o\ & (((!\Equal0~0_combout\ & \s64[4][21]~383_combout\)))) # (!\B[4]~input_o\ & (\s64[4][5]~380_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][5]~380_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][21]~383_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][5]~384_combout\);

-- Location: LCCOMB_X66_Y64_N14
\Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = (\Y~7_combout\ & (((\s64[5][5]~384_combout\ & !\ExtWord~input_o\)))) # (!\Y~7_combout\ & ((\Y~20_combout\) # ((\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~7_combout\,
	datab => \Y~20_combout\,
	datac => \s64[5][5]~384_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~21_combout\);

-- Location: LCCOMB_X58_Y63_N12
\s32[3][29]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][29]~26_combout\ = (\Equal0~0_combout\ & (((\B[2]~input_o\) # (\s64~233_combout\)))) # (!\Equal0~0_combout\ & (\s32[2][29]~10_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[2][29]~10_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64~233_combout\,
	combout => \s32[3][29]~26_combout\);

-- Location: LCCOMB_X58_Y63_N6
\s32[3][29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][29]~27_combout\ = (\s32[3][29]~26_combout\ & ((\s64[2][25]~131_combout\) # ((!\B[2]~input_o\)))) # (!\s32[3][29]~26_combout\ & (((\B[2]~input_o\ & \fill32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][29]~26_combout\,
	datab => \s64[2][25]~131_combout\,
	datac => \B[2]~input_o\,
	datad => \fill32~0_combout\,
	combout => \s32[3][29]~27_combout\);

-- Location: LCCOMB_X58_Y63_N4
\s32[4][21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][21]~29_combout\ = ((\s32[3][29]~27_combout\ & \s64[4][0]~20_combout\)) # (!\s32[4][21]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][29]~27_combout\,
	datab => \s64[4][0]~20_combout\,
	datac => \s32[4][21]~28_combout\,
	combout => \s32[4][21]~29_combout\);

-- Location: LCCOMB_X66_Y64_N8
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (\Y~21_combout\ & ((\s64[4][5]~380_combout\) # ((!\Y~168_combout\)))) # (!\Y~21_combout\ & (((\Y~168_combout\ & \s32[4][21]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][5]~380_combout\,
	datab => \Y~21_combout\,
	datac => \Y~168_combout\,
	datad => \s32[4][21]~29_combout\,
	combout => \Y~22_combout\);

-- Location: LCCOMB_X61_Y65_N20
\s64[3][54]~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][54]~414_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][50]~285_combout\))) # (!\Equal0~0_combout\ & (\s64[2][58]~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][58]~272_combout\,
	datab => \s64[2][50]~285_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][54]~414_combout\);

-- Location: LCCOMB_X61_Y65_N14
\s64[3][54]~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][54]~415_combout\ = (\s64[3][54]~414_combout\) # ((\s64[2][54]~267_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][54]~267_combout\,
	datab => \s64[3][54]~414_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][54]~415_combout\);

-- Location: LCCOMB_X65_Y65_N16
\s64[3][62]~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][62]~409_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][58]~272_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][58]~272_combout\,
	datab => \fill64~1_combout\,
	datac => \B[2]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][62]~409_combout\);

-- Location: LCCOMB_X63_Y63_N14
\s64[3][62]~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][62]~410_combout\ = (\s64[3][62]~409_combout\) # ((\s64[2][62]~269_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][62]~269_combout\,
	datac => \s64[3][62]~409_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][62]~410_combout\);

-- Location: LCCOMB_X63_Y65_N28
\s64[3][46]~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][46]~411_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][42]~280_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][50]~285_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][42]~280_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][50]~285_combout\,
	combout => \s64[3][46]~411_combout\);

-- Location: LCCOMB_X63_Y65_N22
\s64[3][46]~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][46]~412_combout\ = (\s64[3][46]~411_combout\) # ((\s64[2][46]~277_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][46]~277_combout\,
	datab => \s64[3][46]~411_combout\,
	datac => \B[2]~input_o\,
	combout => \s64[3][46]~412_combout\);

-- Location: LCCOMB_X63_Y63_N24
\s64[4][54]~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][54]~413_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][62]~410_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][46]~412_combout\)))) # (!\s64[4][0]~20_combout\ & (((\s64[4][16]~0_combout\ & \s64[3][46]~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][62]~410_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][46]~412_combout\,
	combout => \s64[4][54]~413_combout\);

-- Location: LCCOMB_X63_Y63_N2
\s64[4][54]~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][54]~416_combout\ = (\s64[4][54]~413_combout\) # ((\s64[3][54]~415_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][54]~415_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][54]~413_combout\,
	combout => \s64[4][54]~416_combout\);

-- Location: LCCOMB_X62_Y63_N16
\s64[3][30]~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][30]~405_combout\ = (\Equal0~0_combout\ & (((\s64~290_combout\) # (\B[2]~input_o\)))) # (!\Equal0~0_combout\ & (\s64[2][30]~262_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][30]~262_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64~290_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][30]~405_combout\);

-- Location: LCCOMB_X62_Y63_N2
\s64[3][30]~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][30]~406_combout\ = (\s64[3][30]~405_combout\ & ((\s64[2][26]~243_combout\) # ((!\B[2]~input_o\)))) # (!\s64[3][30]~405_combout\ & (((\s64[2][34]~293_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][26]~243_combout\,
	datab => \s64[2][34]~293_combout\,
	datac => \s64[3][30]~405_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][30]~406_combout\);

-- Location: LCCOMB_X62_Y62_N14
\s64[3][22]~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][22]~398_combout\ = (\s64[2][22]~245_combout\ & (((\s64[2][26]~243_combout\ & \s64[4][0]~21_combout\)) # (!\B[2]~input_o\))) # (!\s64[2][22]~245_combout\ & (\s64[2][26]~243_combout\ & (\s64[4][0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][22]~245_combout\,
	datab => \s64[2][26]~243_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][22]~398_combout\);

-- Location: LCCOMB_X62_Y62_N0
\s64[3][22]~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][22]~399_combout\ = (\s64[3][22]~398_combout\) # ((\s64[2][18]~247_combout\ & (\Equal0~0_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][18]~247_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[3][22]~398_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][22]~399_combout\);

-- Location: LCCOMB_X62_Y62_N26
\s64[3][14]~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][14]~400_combout\ = (\s64[2][18]~247_combout\ & ((\s64[4][0]~21_combout\) # ((\s64[2][14]~250_combout\ & !\B[2]~input_o\)))) # (!\s64[2][18]~247_combout\ & (((\s64[2][14]~250_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][18]~247_combout\,
	datab => \s64[4][0]~21_combout\,
	datac => \s64[2][14]~250_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][14]~400_combout\);

-- Location: LCCOMB_X62_Y62_N4
\s64[3][14]~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][14]~401_combout\ = (\s64[3][14]~400_combout\) # ((\Equal0~0_combout\ & (\s64[2][10]~253_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][10]~253_combout\,
	datac => \s64[3][14]~400_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][14]~401_combout\);

-- Location: LCCOMB_X63_Y63_N16
\s32[4][22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][22]~32_combout\ = (\s64[3][22]~399_combout\ & (\B[3]~input_o\ & ((!\s64[3][14]~401_combout\) # (!\s64[4][16]~0_combout\)))) # (!\s64[3][22]~399_combout\ & (((!\s64[3][14]~401_combout\)) # (!\s64[4][16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][22]~399_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][14]~401_combout\,
	combout => \s32[4][22]~32_combout\);

-- Location: LCCOMB_X63_Y63_N28
\s64[4][22]~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][22]~407_combout\ = ((\s64[3][30]~406_combout\ & \s64[4][0]~20_combout\)) # (!\s32[4][22]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][30]~406_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s32[4][22]~32_combout\,
	combout => \s64[4][22]~407_combout\);

-- Location: LCCOMB_X66_Y63_N26
\s64[5][38]~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][38]~417_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][22]~407_combout\))) # (!\Equal0~0_combout\ & (\s64[4][54]~416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][54]~416_combout\,
	datab => \s64[4][22]~407_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][38]~417_combout\);

-- Location: LCCOMB_X62_Y63_N12
\s64[3][38]~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][38]~419_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][34]~293_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][42]~280_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][34]~293_combout\,
	datac => \s64[2][42]~280_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][38]~419_combout\);

-- Location: LCCOMB_X62_Y63_N14
\s64[3][38]~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][38]~420_combout\ = (\s64[3][38]~419_combout\) # ((\s64[2][38]~275_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][38]~419_combout\,
	datac => \s64[2][38]~275_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][38]~420_combout\);

-- Location: LCCOMB_X63_Y63_N12
\s64[4][38]~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][38]~418_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][46]~412_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][30]~406_combout\)))) # (!\s64[4][0]~20_combout\ & (((\s64[4][16]~0_combout\ & \s64[3][30]~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][46]~412_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][30]~406_combout\,
	combout => \s64[4][38]~418_combout\);

-- Location: LCCOMB_X63_Y63_N30
\s64[4][38]~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][38]~421_combout\ = (\s64[4][38]~418_combout\) # ((\s64[3][38]~420_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][38]~420_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][38]~418_combout\,
	combout => \s64[4][38]~421_combout\);

-- Location: LCCOMB_X66_Y63_N12
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (!\Equal0~0_combout\ & ((\s64[5][38]~417_combout\) # ((\s64[4][38]~421_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][38]~417_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][38]~421_combout\,
	datad => \B[4]~input_o\,
	combout => \Y~23_combout\);

-- Location: LCCOMB_X62_Y62_N30
\s64[3][6]~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][6]~402_combout\ = (\s64[2][6]~256_combout\ & (((\s64[2][10]~253_combout\ & \s64[4][0]~21_combout\)) # (!\B[2]~input_o\))) # (!\s64[2][6]~256_combout\ & (\s64[2][10]~253_combout\ & (\s64[4][0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][6]~256_combout\,
	datab => \s64[2][10]~253_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][6]~402_combout\);

-- Location: LCCOMB_X62_Y62_N16
\s64[3][6]~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][6]~403_combout\ = (\s64[3][6]~402_combout\) # ((\Equal0~0_combout\ & (\s64[2][2]~259_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][6]~402_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[2][2]~259_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][6]~403_combout\);

-- Location: LCCOMB_X62_Y62_N18
\s64[4][6]~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][6]~404_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][14]~401_combout\) # ((!\B[3]~input_o\ & \s64[3][6]~403_combout\)))) # (!\s64[4][0]~20_combout\ & (!\B[3]~input_o\ & ((\s64[3][6]~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[3][14]~401_combout\,
	datad => \s64[3][6]~403_combout\,
	combout => \s64[4][6]~404_combout\);

-- Location: LCCOMB_X66_Y63_N16
\s64[5][6]~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][6]~408_combout\ = (\B[4]~input_o\ & (((\s64[4][22]~407_combout\ & !\Equal0~0_combout\)))) # (!\B[4]~input_o\ & (\s64[4][6]~404_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][6]~404_combout\,
	datab => \s64[4][22]~407_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][6]~408_combout\);

-- Location: LCCOMB_X66_Y63_N14
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\Y~7_combout\ & (((\s64[5][6]~408_combout\ & !\ExtWord~input_o\)))) # (!\Y~7_combout\ & ((\Y~23_combout\) # ((\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~23_combout\,
	datab => \s64[5][6]~408_combout\,
	datac => \Y~7_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~24_combout\);

-- Location: LCCOMB_X62_Y63_N22
\s32[3][30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][30]~30_combout\ = (\Equal0~0_combout\ & (((\s64~290_combout\) # (\B[2]~input_o\)))) # (!\Equal0~0_combout\ & (\s32[2][30]~14_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[2][30]~14_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64~290_combout\,
	datad => \B[2]~input_o\,
	combout => \s32[3][30]~30_combout\);

-- Location: LCCOMB_X58_Y63_N14
\s32[3][30]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][30]~31_combout\ = (\B[2]~input_o\ & ((\s32[3][30]~30_combout\ & (\s64[2][26]~243_combout\)) # (!\s32[3][30]~30_combout\ & ((\fill32~0_combout\))))) # (!\B[2]~input_o\ & (((\s32[3][30]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][26]~243_combout\,
	datab => \fill32~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s32[3][30]~30_combout\,
	combout => \s32[3][30]~31_combout\);

-- Location: LCCOMB_X63_Y63_N18
\s32[4][22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][22]~33_combout\ = ((\s32[3][30]~31_combout\ & \s64[4][0]~20_combout\)) # (!\s32[4][22]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][30]~31_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s32[4][22]~32_combout\,
	combout => \s32[4][22]~33_combout\);

-- Location: LCCOMB_X63_Y60_N0
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (\Y~24_combout\ & (((\s64[4][6]~404_combout\)) # (!\Y~168_combout\))) # (!\Y~24_combout\ & (\Y~168_combout\ & ((\s32[4][22]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~24_combout\,
	datab => \Y~168_combout\,
	datac => \s64[4][6]~404_combout\,
	datad => \s32[4][22]~33_combout\,
	combout => \Y~25_combout\);

-- Location: LCCOMB_X60_Y63_N4
\s64[3][7]~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][7]~426_combout\ = (\B[2]~input_o\ & (\s64[2][11]~307_combout\ & (\s64[4][0]~21_combout\))) # (!\B[2]~input_o\ & ((\s64[2][7]~310_combout\) # ((\s64[2][11]~307_combout\ & \s64[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][11]~307_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \s64[2][7]~310_combout\,
	combout => \s64[3][7]~426_combout\);

-- Location: LCCOMB_X60_Y63_N6
\s64[3][7]~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][7]~427_combout\ = (\s64[3][7]~426_combout\) # ((\Equal0~0_combout\ & (\s64[2][3]~313_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][3]~313_combout\,
	datac => \s64[3][7]~426_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][7]~427_combout\);

-- Location: LCCOMB_X60_Y63_N16
\s64[3][15]~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][15]~424_combout\ = (\s64[2][19]~301_combout\ & ((\s64[4][0]~21_combout\) # ((\s64[2][15]~304_combout\ & !\B[2]~input_o\)))) # (!\s64[2][19]~301_combout\ & (\s64[2][15]~304_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][19]~301_combout\,
	datab => \s64[2][15]~304_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][15]~424_combout\);

-- Location: LCCOMB_X60_Y63_N10
\s64[3][15]~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][15]~425_combout\ = (\s64[3][15]~424_combout\) # ((\Equal0~0_combout\ & (\s64[2][11]~307_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][11]~307_combout\,
	datac => \s64[3][15]~424_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][15]~425_combout\);

-- Location: LCCOMB_X60_Y63_N24
\s64[4][7]~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][7]~428_combout\ = (\s64[3][7]~427_combout\ & (((\s64[4][0]~20_combout\ & \s64[3][15]~425_combout\)) # (!\B[3]~input_o\))) # (!\s64[3][7]~427_combout\ & (((\s64[4][0]~20_combout\ & \s64[3][15]~425_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][7]~427_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][15]~425_combout\,
	combout => \s64[4][7]~428_combout\);

-- Location: LCCOMB_X60_Y63_N12
\s64[3][23]~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][23]~422_combout\ = (\s64[4][0]~21_combout\ & ((\s64[2][27]~297_combout\) # ((\s64[2][23]~299_combout\ & !\B[2]~input_o\)))) # (!\s64[4][0]~21_combout\ & (\s64[2][23]~299_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~21_combout\,
	datab => \s64[2][23]~299_combout\,
	datac => \s64[2][27]~297_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][23]~422_combout\);

-- Location: LCCOMB_X60_Y63_N22
\s64[3][23]~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][23]~423_combout\ = (\s64[3][23]~422_combout\) # ((\s64[2][19]~301_combout\ & (\B[2]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][19]~301_combout\,
	datab => \B[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[3][23]~422_combout\,
	combout => \s64[3][23]~423_combout\);

-- Location: LCCOMB_X60_Y61_N4
\s32[4][23]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][23]~36_combout\ = (\s64[3][23]~423_combout\ & (\B[3]~input_o\ & ((!\s64[4][16]~0_combout\) # (!\s64[3][15]~425_combout\)))) # (!\s64[3][23]~423_combout\ & (((!\s64[4][16]~0_combout\)) # (!\s64[3][15]~425_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][23]~423_combout\,
	datab => \s64[3][15]~425_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \B[3]~input_o\,
	combout => \s32[4][23]~36_combout\);

-- Location: LCCOMB_X60_Y61_N0
\s32[3][31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][31]~34_combout\ = (\Equal0~0_combout\ & (((\s64~345_combout\) # (\B[2]~input_o\)))) # (!\Equal0~0_combout\ & (\s32[2][31]~18_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[2][31]~18_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64~345_combout\,
	datad => \B[2]~input_o\,
	combout => \s32[3][31]~34_combout\);

-- Location: LCCOMB_X60_Y61_N2
\s32[3][31]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][31]~35_combout\ = (\s32[3][31]~34_combout\ & ((\s64[2][27]~297_combout\) # ((!\B[2]~input_o\)))) # (!\s32[3][31]~34_combout\ & (((\fill32~0_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][27]~297_combout\,
	datab => \s32[3][31]~34_combout\,
	datac => \fill32~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s32[3][31]~35_combout\);

-- Location: LCCOMB_X60_Y61_N30
\s32[4][23]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][23]~37_combout\ = ((\s64[4][0]~20_combout\ & \s32[3][31]~35_combout\)) # (!\s32[4][23]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s32[4][23]~36_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s32[3][31]~35_combout\,
	combout => \s32[4][23]~37_combout\);

-- Location: LCCOMB_X62_Y63_N0
\s64[3][39]~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][39]~443_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][35]~348_combout\))) # (!\Equal0~0_combout\ & (\s64[2][43]~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][43]~334_combout\,
	datac => \s64[2][35]~348_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][39]~443_combout\);

-- Location: LCCOMB_X62_Y63_N18
\s64[3][39]~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][39]~444_combout\ = (\s64[3][39]~443_combout\) # ((!\B[2]~input_o\ & \s64[2][39]~329_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[3][39]~443_combout\,
	datad => \s64[2][39]~329_combout\,
	combout => \s64[3][39]~444_combout\);

-- Location: LCCOMB_X61_Y63_N18
\s64[3][47]~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][47]~435_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][43]~334_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][51]~339_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][43]~334_combout\,
	datac => \s64[2][51]~339_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][47]~435_combout\);

-- Location: LCCOMB_X61_Y63_N12
\s64[3][47]~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][47]~436_combout\ = (\s64[3][47]~435_combout\) # ((\s64[2][47]~331_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][47]~435_combout\,
	datac => \s64[2][47]~331_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][47]~436_combout\);

-- Location: LCCOMB_X60_Y61_N8
\s64[3][31]~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][31]~429_combout\ = (\B[2]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64~345_combout\))) # (!\Equal0~0_combout\ & (\s64[2][31]~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[2][31]~316_combout\,
	datac => \s64~345_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][31]~429_combout\);

-- Location: LCCOMB_X60_Y61_N18
\s64[3][31]~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][31]~430_combout\ = (\s64[3][31]~429_combout\ & ((\s64[2][27]~297_combout\) # ((!\B[2]~input_o\)))) # (!\s64[3][31]~429_combout\ & (((\s64[2][35]~348_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][27]~297_combout\,
	datab => \s64[2][35]~348_combout\,
	datac => \s64[3][31]~429_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][31]~430_combout\);

-- Location: LCCOMB_X60_Y61_N14
\s64[4][39]~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][39]~442_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][31]~430_combout\) # ((\s64[3][47]~436_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[4][16]~0_combout\ & (\s64[3][47]~436_combout\ & (\s64[4][0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][47]~436_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][31]~430_combout\,
	combout => \s64[4][39]~442_combout\);

-- Location: LCCOMB_X63_Y61_N30
\s64[4][39]~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][39]~445_combout\ = (\s64[4][39]~442_combout\) # ((!\B[3]~input_o\ & \s64[3][39]~444_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[3][39]~444_combout\,
	datad => \s64[4][39]~442_combout\,
	combout => \s64[4][39]~445_combout\);

-- Location: LCCOMB_X60_Y61_N20
\s64[4][23]~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][23]~431_combout\ = ((\s64[4][0]~20_combout\ & \s64[3][31]~430_combout\)) # (!\s32[4][23]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s32[4][23]~36_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][31]~430_combout\,
	combout => \s64[4][23]~431_combout\);

-- Location: LCCOMB_X61_Y63_N8
\s64[3][55]~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][55]~438_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][51]~339_combout\))) # (!\Equal0~0_combout\ & (\s64[2][59]~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][59]~326_combout\,
	datac => \s64[2][51]~339_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][55]~438_combout\);

-- Location: LCCOMB_X61_Y63_N2
\s64[3][55]~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][55]~439_combout\ = (\s64[3][55]~438_combout\) # ((\s64[2][55]~321_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][55]~321_combout\,
	datac => \s64[3][55]~438_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][55]~439_combout\);

-- Location: LCCOMB_X61_Y63_N22
\s64[3][63]~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][63]~433_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\fill64~1_combout\)))) # (!\B[2]~input_o\ & (((\s64[2][63]~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][63]~323_combout\,
	datac => \fill64~1_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][63]~433_combout\);

-- Location: LCCOMB_X61_Y63_N16
\s64[3][63]~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][63]~434_combout\ = (\s64[3][63]~433_combout\) # ((\Equal0~0_combout\ & (\s64[2][59]~326_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][59]~326_combout\,
	datac => \s64[3][63]~433_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][63]~434_combout\);

-- Location: LCCOMB_X61_Y63_N6
\s64[4][55]~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][55]~437_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][63]~434_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][47]~436_combout\)))) # (!\s64[4][0]~20_combout\ & (((\s64[4][16]~0_combout\ & \s64[3][47]~436_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][63]~434_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][47]~436_combout\,
	combout => \s64[4][55]~437_combout\);

-- Location: LCCOMB_X63_Y61_N2
\s64[4][55]~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][55]~440_combout\ = (\s64[4][55]~437_combout\) # ((!\B[3]~input_o\ & \s64[3][55]~439_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[3][55]~439_combout\,
	datad => \s64[4][55]~437_combout\,
	combout => \s64[4][55]~440_combout\);

-- Location: LCCOMB_X63_Y61_N20
\s64[5][39]~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][39]~441_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][23]~431_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][55]~440_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][23]~431_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][55]~440_combout\,
	combout => \s64[5][39]~441_combout\);

-- Location: LCCOMB_X63_Y61_N8
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (!\Equal0~0_combout\ & ((\s64[5][39]~441_combout\) # ((\s64[4][39]~445_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][39]~445_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][39]~441_combout\,
	combout => \Y~26_combout\);

-- Location: LCCOMB_X63_Y61_N0
\s64[5][7]~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][7]~432_combout\ = (\B[4]~input_o\ & (\s64[4][23]~431_combout\ & (!\Equal0~0_combout\))) # (!\B[4]~input_o\ & (((\s64[4][7]~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][23]~431_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][7]~428_combout\,
	combout => \s64[5][7]~432_combout\);

-- Location: LCCOMB_X65_Y60_N14
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (\Y~7_combout\ & (((!\ExtWord~input_o\ & \s64[5][7]~432_combout\)))) # (!\Y~7_combout\ & ((\Y~26_combout\) # ((\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~26_combout\,
	datab => \Y~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \s64[5][7]~432_combout\,
	combout => \Y~27_combout\);

-- Location: LCCOMB_X63_Y60_N2
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\Y~168_combout\ & ((\Y~27_combout\ & (\s64[4][7]~428_combout\)) # (!\Y~27_combout\ & ((\s32[4][23]~37_combout\))))) # (!\Y~168_combout\ & (((\Y~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][7]~428_combout\,
	datab => \Y~168_combout\,
	datac => \s32[4][23]~37_combout\,
	datad => \Y~27_combout\,
	combout => \Y~28_combout\);

-- Location: LCCOMB_X60_Y63_N18
\s64[4][8]~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][8]~446_combout\ = (\ShiftFN[0]~input_o\ & (\B[3]~input_o\ & (!\ShiftFN[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \s64[4][8]~446_combout\);

-- Location: LCCOMB_X61_Y61_N12
\s64[4][8]~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][8]~447_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][16]~50_combout\) # ((\s64[2][0]~121_combout\ & \s64[4][8]~446_combout\)))) # (!\s64[4][0]~20_combout\ & (\s64[2][0]~121_combout\ & ((\s64[4][8]~446_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[2][0]~121_combout\,
	datac => \s64[3][16]~50_combout\,
	datad => \s64[4][8]~446_combout\,
	combout => \s64[4][8]~447_combout\);

-- Location: LCCOMB_X65_Y61_N0
\s64[4][8]~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][8]~448_combout\ = (\s64[4][8]~447_combout\) # ((!\B[3]~input_o\ & \s64[3][8]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][8]~447_combout\,
	datad => \s64[3][8]~41_combout\,
	combout => \s64[4][8]~448_combout\);

-- Location: LCCOMB_X65_Y61_N28
\s32[4][24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][24]~39_combout\ = (\s64[4][16]~0_combout\ & (!\s64[3][16]~50_combout\ & ((\B[3]~input_o\) # (!\s64[3][24]~19_combout\)))) # (!\s64[4][16]~0_combout\ & (((\B[3]~input_o\) # (!\s64[3][24]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][16]~50_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][24]~19_combout\,
	combout => \s32[4][24]~39_combout\);

-- Location: LCCOMB_X65_Y61_N10
\s64[4][24]~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][24]~449_combout\ = ((\s64[3][32]~112_combout\ & \s64[4][0]~20_combout\)) # (!\s32[4][24]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][32]~112_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s32[4][24]~39_combout\,
	combout => \s64[4][24]~449_combout\);

-- Location: LCCOMB_X66_Y62_N20
\s64[5][8]~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][8]~450_combout\ = (\B[4]~input_o\ & (!\Equal0~0_combout\ & (\s64[4][24]~449_combout\))) # (!\B[4]~input_o\ & (((\s64[4][8]~448_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][24]~449_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][8]~448_combout\,
	combout => \s64[5][8]~450_combout\);

-- Location: LCCOMB_X66_Y62_N22
\s64[4][56]~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][56]~451_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][48]~102_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \fill64~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[3][48]~102_combout\,
	combout => \s64[4][56]~451_combout\);

-- Location: LCCOMB_X66_Y62_N8
\s64[4][56]~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][56]~452_combout\ = (\s64[4][56]~451_combout\) # ((\s64[3][56]~73_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][56]~451_combout\,
	datab => \s64[3][56]~73_combout\,
	datac => \B[3]~input_o\,
	combout => \s64[4][56]~452_combout\);

-- Location: LCCOMB_X66_Y62_N10
\s64[5][40]~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][40]~453_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][24]~449_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][56]~452_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \s64[4][24]~449_combout\,
	datac => \s64[4][56]~452_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][40]~453_combout\);

-- Location: LCCOMB_X65_Y61_N4
\s64[4][40]~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][40]~454_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][32]~112_combout\) # ((\s64[4][0]~20_combout\ & \s64[3][48]~102_combout\)))) # (!\s64[4][16]~0_combout\ & (((\s64[4][0]~20_combout\ & \s64[3][48]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][32]~112_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][48]~102_combout\,
	combout => \s64[4][40]~454_combout\);

-- Location: LCCOMB_X65_Y61_N6
\s64[4][40]~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][40]~455_combout\ = (\s64[4][40]~454_combout\) # ((!\B[3]~input_o\ & \s64[3][40]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][40]~95_combout\,
	datac => \s64[4][40]~454_combout\,
	combout => \s64[4][40]~455_combout\);

-- Location: LCCOMB_X66_Y62_N12
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (!\Equal0~0_combout\ & ((\s64[5][40]~453_combout\) # ((\s64[4][40]~455_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][40]~453_combout\,
	datab => \s64[4][40]~455_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Y~29_combout\);

-- Location: LCCOMB_X65_Y60_N0
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\Y~7_combout\ & (\s64[5][8]~450_combout\ & (!\ExtWord~input_o\))) # (!\Y~7_combout\ & (((\ExtWord~input_o\) # (\Y~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][8]~450_combout\,
	datab => \Y~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~29_combout\,
	combout => \Y~30_combout\);

-- Location: LCCOMB_X60_Y62_N26
\s32[4][24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][24]~38_combout\ = (\A[31]~input_o\ & (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \s32[4][24]~38_combout\);

-- Location: LCCOMB_X65_Y61_N30
\s32[4][24]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][24]~40_combout\ = (\s32[4][24]~38_combout\) # (!\s32[4][24]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s32[4][24]~38_combout\,
	datad => \s32[4][24]~39_combout\,
	combout => \s32[4][24]~40_combout\);

-- Location: LCCOMB_X65_Y61_N16
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\Y~30_combout\ & ((\s64[4][8]~448_combout\) # ((!\Y~168_combout\)))) # (!\Y~30_combout\ & (((\s32[4][24]~40_combout\ & \Y~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][8]~448_combout\,
	datab => \Y~30_combout\,
	datac => \s32[4][24]~40_combout\,
	datad => \Y~168_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X60_Y62_N20
\s32[4][25]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][25]~41_combout\ = (!\B[3]~input_o\ & (((\s64[4][0]~21_combout\ & \s32[2][29]~10_combout\)) # (!\s32[3][25]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][25]~11_combout\,
	datab => \s64[4][0]~21_combout\,
	datac => \s32[2][29]~10_combout\,
	datad => \B[3]~input_o\,
	combout => \s32[4][25]~41_combout\);

-- Location: LCCOMB_X60_Y62_N14
\s32[4][25]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][25]~42_combout\ = (\s32[4][25]~41_combout\) # ((\s32[4][24]~38_combout\) # ((\s64[3][17]~151_combout\ & \s64[4][16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][17]~151_combout\,
	datab => \s32[4][25]~41_combout\,
	datac => \s32[4][24]~38_combout\,
	datad => \s64[4][16]~0_combout\,
	combout => \s32[4][25]~42_combout\);

-- Location: LCCOMB_X59_Y60_N8
\s64[4][25]~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][25]~458_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][17]~151_combout\) # ((\s64[3][25]~174_combout\ & !\B[3]~input_o\)))) # (!\s64[4][16]~0_combout\ & (((\s64[3][25]~174_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][17]~151_combout\,
	datac => \s64[3][25]~174_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][25]~458_combout\);

-- Location: LCCOMB_X59_Y60_N26
\s64[4][25]~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][25]~459_combout\ = (\s64[4][25]~458_combout\) # ((\s64[3][33]~240_combout\ & \s64[4][0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][33]~240_combout\,
	datac => \s64[4][25]~458_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][25]~459_combout\);

-- Location: LCCOMB_X59_Y62_N14
\s64[4][9]~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][9]~456_combout\ = (\s64[2][1]~169_combout\ & ((\s64[4][8]~446_combout\) # ((\s64[3][17]~151_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[2][1]~169_combout\ & (\s64[3][17]~151_combout\ & (\s64[4][0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][1]~169_combout\,
	datab => \s64[3][17]~151_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[4][8]~446_combout\,
	combout => \s64[4][9]~456_combout\);

-- Location: LCCOMB_X60_Y62_N16
\s64[4][9]~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][9]~457_combout\ = (\s64[4][9]~456_combout\) # ((\s64[3][9]~165_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][9]~456_combout\,
	datab => \s64[3][9]~165_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][9]~457_combout\);

-- Location: LCCOMB_X60_Y60_N0
\s64[5][9]~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][9]~460_combout\ = (\B[4]~input_o\ & (\s64[4][25]~459_combout\ & ((!\Equal0~0_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][9]~457_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][25]~459_combout\,
	datab => \s64[4][9]~457_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][9]~460_combout\);

-- Location: LCCOMB_X60_Y60_N10
\s64[4][57]~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][57]~461_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][49]~227_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][49]~227_combout\,
	combout => \s64[4][57]~461_combout\);

-- Location: LCCOMB_X60_Y60_N20
\s64[4][57]~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][57]~462_combout\ = (\s64[4][57]~461_combout\) # ((\s64[3][57]~198_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][57]~461_combout\,
	datab => \s64[3][57]~198_combout\,
	datac => \B[3]~input_o\,
	combout => \s64[4][57]~462_combout\);

-- Location: LCCOMB_X60_Y60_N22
\s64[5][41]~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][41]~463_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][25]~459_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][57]~462_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][25]~459_combout\,
	datab => \s64[4][57]~462_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][41]~463_combout\);

-- Location: LCCOMB_X60_Y60_N8
\s64[4][41]~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][41]~464_combout\ = (\s64[3][33]~240_combout\ & ((\s64[4][16]~0_combout\) # ((\s64[3][49]~227_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[3][33]~240_combout\ & (\s64[3][49]~227_combout\ & ((\s64[4][0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][33]~240_combout\,
	datab => \s64[3][49]~227_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][41]~464_combout\);

-- Location: LCCOMB_X60_Y60_N2
\s64[4][41]~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][41]~465_combout\ = (\s64[4][41]~464_combout\) # ((!\B[3]~input_o\ & \s64[3][41]~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][41]~464_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][41]~220_combout\,
	combout => \s64[4][41]~465_combout\);

-- Location: LCCOMB_X60_Y60_N4
\Y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = (!\Equal0~0_combout\ & ((\s64[5][41]~463_combout\) # ((\s64[4][41]~465_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][41]~463_combout\,
	datab => \s64[4][41]~465_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Y~32_combout\);

-- Location: LCCOMB_X63_Y59_N4
\Y~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = (\ExtWord~input_o\ & (((!\Y~7_combout\)))) # (!\ExtWord~input_o\ & ((\Y~7_combout\ & (\s64[5][9]~460_combout\)) # (!\Y~7_combout\ & ((\Y~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][9]~460_combout\,
	datab => \Y~32_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~7_combout\,
	combout => \Y~33_combout\);

-- Location: LCCOMB_X63_Y59_N30
\Y~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = (\Y~33_combout\ & (((\s64[4][9]~457_combout\) # (!\Y~168_combout\)))) # (!\Y~33_combout\ & (\s32[4][25]~42_combout\ & (\Y~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][25]~42_combout\,
	datab => \Y~33_combout\,
	datac => \Y~168_combout\,
	datad => \s64[4][9]~457_combout\,
	combout => \Y~34_combout\);

-- Location: LCCOMB_X60_Y62_N2
\s32[4][26]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][26]~43_combout\ = (!\B[3]~input_o\ & (((\s32[2][30]~14_combout\ & \s64[4][0]~21_combout\)) # (!\s32[3][26]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][26]~15_combout\,
	datab => \s32[2][30]~14_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \B[3]~input_o\,
	combout => \s32[4][26]~43_combout\);

-- Location: LCCOMB_X61_Y62_N6
\s32[4][26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][26]~44_combout\ = (\s32[4][24]~38_combout\) # ((\s32[4][26]~43_combout\) # ((\s64[3][18]~251_combout\ & \s64[4][16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][24]~38_combout\,
	datab => \s32[4][26]~43_combout\,
	datac => \s64[3][18]~251_combout\,
	datad => \s64[4][16]~0_combout\,
	combout => \s32[4][26]~44_combout\);

-- Location: LCCOMB_X61_Y62_N24
\s64[4][10]~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][10]~466_combout\ = (\s64[4][8]~446_combout\ & ((\s64[2][2]~259_combout\) # ((\s64[4][0]~20_combout\ & \s64[3][18]~251_combout\)))) # (!\s64[4][8]~446_combout\ & (((\s64[4][0]~20_combout\ & \s64[3][18]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][8]~446_combout\,
	datab => \s64[2][2]~259_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][18]~251_combout\,
	combout => \s64[4][10]~466_combout\);

-- Location: LCCOMB_X65_Y62_N30
\s64[4][10]~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][10]~467_combout\ = (\s64[4][10]~466_combout\) # ((!\B[3]~input_o\ & \s64[3][10]~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[4][10]~466_combout\,
	datad => \s64[3][10]~257_combout\,
	combout => \s64[4][10]~467_combout\);

-- Location: LCCOMB_X65_Y62_N24
\s64[4][26]~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][26]~468_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][18]~251_combout\) # ((!\B[3]~input_o\ & \s64[3][26]~263_combout\)))) # (!\s64[4][16]~0_combout\ & (!\B[3]~input_o\ & ((\s64[3][26]~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[3][18]~251_combout\,
	datad => \s64[3][26]~263_combout\,
	combout => \s64[4][26]~468_combout\);

-- Location: LCCOMB_X65_Y62_N18
\s64[4][26]~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][26]~469_combout\ = (\s64[4][26]~468_combout\) # ((\s64[3][34]~294_combout\ & \s64[4][0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][34]~294_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[4][26]~468_combout\,
	combout => \s64[4][26]~469_combout\);

-- Location: LCCOMB_X65_Y65_N18
\s64[4][58]~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][58]~471_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][50]~286_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \fill64~1_combout\,
	datad => \s64[3][50]~286_combout\,
	combout => \s64[4][58]~471_combout\);

-- Location: LCCOMB_X65_Y65_N20
\s64[4][58]~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][58]~472_combout\ = (\s64[4][58]~471_combout\) # ((\s64[3][58]~273_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][58]~273_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][58]~471_combout\,
	combout => \s64[4][58]~472_combout\);

-- Location: LCCOMB_X65_Y65_N30
\s64[5][42]~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][42]~473_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][26]~469_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][58]~472_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][26]~469_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][58]~472_combout\,
	combout => \s64[5][42]~473_combout\);

-- Location: LCCOMB_X65_Y62_N6
\s64[4][42]~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][42]~474_combout\ = (\s64[3][34]~294_combout\ & ((\s64[4][16]~0_combout\) # ((\s64[4][0]~20_combout\ & \s64[3][50]~286_combout\)))) # (!\s64[3][34]~294_combout\ & (((\s64[4][0]~20_combout\ & \s64[3][50]~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][34]~294_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][50]~286_combout\,
	combout => \s64[4][42]~474_combout\);

-- Location: LCCOMB_X65_Y62_N8
\s64[4][42]~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][42]~475_combout\ = (\s64[4][42]~474_combout\) # ((!\B[3]~input_o\ & \s64[3][42]~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][42]~474_combout\,
	datab => \B[3]~input_o\,
	datad => \s64[3][42]~281_combout\,
	combout => \s64[4][42]~475_combout\);

-- Location: LCCOMB_X65_Y65_N0
\Y~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = (!\Equal0~0_combout\ & ((\s64[5][42]~473_combout\) # ((\s64[4][42]~475_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][42]~473_combout\,
	datab => \s64[4][42]~475_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Y~35_combout\);

-- Location: LCCOMB_X65_Y62_N4
\s64[5][10]~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][10]~470_combout\ = (\B[4]~input_o\ & (((!\Equal0~0_combout\ & \s64[4][26]~469_combout\)))) # (!\B[4]~input_o\ & (\s64[4][10]~467_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][10]~467_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][26]~469_combout\,
	combout => \s64[5][10]~470_combout\);

-- Location: LCCOMB_X66_Y63_N24
\Y~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = (\Y~7_combout\ & (((\s64[5][10]~470_combout\ & !\ExtWord~input_o\)))) # (!\Y~7_combout\ & ((\Y~35_combout\) # ((\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~35_combout\,
	datab => \s64[5][10]~470_combout\,
	datac => \Y~7_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~36_combout\);

-- Location: LCCOMB_X62_Y61_N2
\Y~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = (\Y~168_combout\ & ((\Y~36_combout\ & ((\s64[4][10]~467_combout\))) # (!\Y~36_combout\ & (\s32[4][26]~44_combout\)))) # (!\Y~168_combout\ & (((\Y~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][26]~44_combout\,
	datab => \Y~168_combout\,
	datac => \s64[4][10]~467_combout\,
	datad => \Y~36_combout\,
	combout => \Y~37_combout\);

-- Location: LCCOMB_X61_Y62_N20
\s64[4][11]~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][11]~476_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][19]~305_combout\) # ((\s64[4][8]~446_combout\ & \s64[2][3]~313_combout\)))) # (!\s64[4][0]~20_combout\ & (((\s64[4][8]~446_combout\ & \s64[2][3]~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][19]~305_combout\,
	datac => \s64[4][8]~446_combout\,
	datad => \s64[2][3]~313_combout\,
	combout => \s64[4][11]~476_combout\);

-- Location: LCCOMB_X61_Y62_N22
\s64[4][11]~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][11]~477_combout\ = (\s64[4][11]~476_combout\) # ((!\B[3]~input_o\ & \s64[3][11]~311_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][11]~311_combout\,
	datad => \s64[4][11]~476_combout\,
	combout => \s64[4][11]~477_combout\);

-- Location: LCCOMB_X60_Y62_N4
\s32[4][27]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][27]~45_combout\ = (!\B[3]~input_o\ & (((\s32[2][31]~18_combout\ & \s64[4][0]~21_combout\)) # (!\s32[3][27]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][27]~19_combout\,
	datab => \s32[2][31]~18_combout\,
	datac => \s64[4][0]~21_combout\,
	datad => \B[3]~input_o\,
	combout => \s32[4][27]~45_combout\);

-- Location: LCCOMB_X61_Y62_N26
\s32[4][27]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][27]~46_combout\ = (\s32[4][24]~38_combout\) # ((\s32[4][27]~45_combout\) # ((\s64[3][19]~305_combout\ & \s64[4][16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][24]~38_combout\,
	datab => \s32[4][27]~45_combout\,
	datac => \s64[3][19]~305_combout\,
	datad => \s64[4][16]~0_combout\,
	combout => \s32[4][27]~46_combout\);

-- Location: LCCOMB_X61_Y62_N0
\s64[4][27]~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][27]~478_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][19]~305_combout\) # ((\s64[3][27]~317_combout\ & !\B[3]~input_o\)))) # (!\s64[4][16]~0_combout\ & (((\s64[3][27]~317_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][19]~305_combout\,
	datac => \s64[3][27]~317_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][27]~478_combout\);

-- Location: LCCOMB_X61_Y62_N2
\s64[4][27]~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][27]~479_combout\ = (\s64[4][27]~478_combout\) # ((\s64[4][0]~20_combout\ & \s64[3][35]~349_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][27]~478_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][35]~349_combout\,
	combout => \s64[4][27]~479_combout\);

-- Location: LCCOMB_X62_Y60_N0
\s64[5][11]~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][11]~480_combout\ = (\B[4]~input_o\ & (!\Equal0~0_combout\ & ((\s64[4][27]~479_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][11]~477_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][11]~477_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][27]~479_combout\,
	combout => \s64[5][11]~480_combout\);

-- Location: LCCOMB_X61_Y62_N4
\s64[4][43]~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][43]~484_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][35]~349_combout\) # ((\s64[3][51]~340_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[4][16]~0_combout\ & (\s64[3][51]~340_combout\ & (\s64[4][0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][51]~340_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][35]~349_combout\,
	combout => \s64[4][43]~484_combout\);

-- Location: LCCOMB_X61_Y62_N14
\s64[4][43]~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][43]~485_combout\ = (\s64[4][43]~484_combout\) # ((!\B[3]~input_o\ & \s64[3][43]~335_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \s64[4][43]~484_combout\,
	datad => \s64[3][43]~335_combout\,
	combout => \s64[4][43]~485_combout\);

-- Location: LCCOMB_X62_Y59_N6
\s64[4][59]~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][59]~481_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & (\s64[3][51]~340_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][51]~340_combout\,
	datab => \fill64~1_combout\,
	datac => \B[3]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[4][59]~481_combout\);

-- Location: LCCOMB_X62_Y60_N2
\s64[4][59]~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][59]~482_combout\ = (\s64[4][59]~481_combout\) # ((\s64[3][59]~327_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][59]~327_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][59]~481_combout\,
	combout => \s64[4][59]~482_combout\);

-- Location: LCCOMB_X62_Y60_N12
\s64[5][43]~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][43]~483_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][27]~479_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][59]~482_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][27]~479_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][59]~482_combout\,
	combout => \s64[5][43]~483_combout\);

-- Location: LCCOMB_X62_Y60_N22
\Y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = (!\Equal0~0_combout\ & ((\s64[5][43]~483_combout\) # ((\s64[4][43]~485_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][43]~485_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][43]~483_combout\,
	combout => \Y~38_combout\);

-- Location: LCCOMB_X62_Y60_N24
\Y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = (\Y~7_combout\ & (\s64[5][11]~480_combout\ & ((!\ExtWord~input_o\)))) # (!\Y~7_combout\ & (((\Y~38_combout\) # (\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~7_combout\,
	datab => \s64[5][11]~480_combout\,
	datac => \Y~38_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~39_combout\);

-- Location: LCCOMB_X62_Y60_N18
\Y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = (\Y~168_combout\ & ((\Y~39_combout\ & (\s64[4][11]~477_combout\)) # (!\Y~39_combout\ & ((\s32[4][27]~46_combout\))))) # (!\Y~168_combout\ & (((\Y~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~168_combout\,
	datab => \s64[4][11]~477_combout\,
	datac => \s32[4][27]~46_combout\,
	datad => \Y~39_combout\,
	combout => \Y~40_combout\);

-- Location: LCCOMB_X62_Y61_N8
\s64[4][12]~486\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][12]~486_combout\ = (\s64[3][20]~352_combout\ & ((\s64[4][0]~20_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][4]~356_combout\)))) # (!\s64[3][20]~352_combout\ & (\s64[4][16]~0_combout\ & ((\s64[3][4]~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][20]~352_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][4]~356_combout\,
	combout => \s64[4][12]~486_combout\);

-- Location: LCCOMB_X62_Y61_N26
\s64[4][12]~487\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][12]~487_combout\ = (\s64[4][12]~486_combout\) # ((!\B[3]~input_o\ & \s64[3][12]~354_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[4][12]~486_combout\,
	datad => \s64[3][12]~354_combout\,
	combout => \s64[4][12]~487_combout\);

-- Location: LCCOMB_X62_Y61_N28
\s32[4][28]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][28]~47_combout\ = (\s32[4][24]~38_combout\) # ((\s64[3][20]~352_combout\ & (\B[3]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][20]~352_combout\,
	datab => \B[3]~input_o\,
	datac => \s32[4][24]~38_combout\,
	datad => \Equal0~0_combout\,
	combout => \s32[4][28]~47_combout\);

-- Location: LCCOMB_X62_Y61_N22
\s32[4][28]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][28]~48_combout\ = (\s32[4][28]~47_combout\) # ((!\B[3]~input_o\ & \s32[3][28]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s32[4][28]~47_combout\,
	datad => \s32[3][28]~23_combout\,
	combout => \s32[4][28]~48_combout\);

-- Location: LCCOMB_X65_Y64_N12
\s64[4][44]~494\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][44]~494_combout\ = (\s64[3][52]~367_combout\ & ((\s64[4][0]~20_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][36]~372_combout\)))) # (!\s64[3][52]~367_combout\ & (((\s64[4][16]~0_combout\ & \s64[3][36]~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][52]~367_combout\,
	datab => \s64[4][0]~20_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][36]~372_combout\,
	combout => \s64[4][44]~494_combout\);

-- Location: LCCOMB_X65_Y64_N30
\s64[4][44]~495\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][44]~495_combout\ = (\s64[4][44]~494_combout\) # ((!\B[3]~input_o\ & \s64[3][44]~364_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][44]~494_combout\,
	datab => \B[3]~input_o\,
	datad => \s64[3][44]~364_combout\,
	combout => \s64[4][44]~495_combout\);

-- Location: LCCOMB_X62_Y61_N20
\s64[4][28]~488\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][28]~488_combout\ = (\s64[3][20]~352_combout\ & ((\s64[4][16]~0_combout\) # ((!\B[3]~input_o\ & \s64[3][28]~358_combout\)))) # (!\s64[3][20]~352_combout\ & (!\B[3]~input_o\ & ((\s64[3][28]~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][20]~352_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][28]~358_combout\,
	combout => \s64[4][28]~488_combout\);

-- Location: LCCOMB_X62_Y61_N14
\s64[4][28]~489\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][28]~489_combout\ = (\s64[4][28]~488_combout\) # ((\s64[4][0]~20_combout\ & \s64[3][36]~372_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[4][28]~488_combout\,
	datac => \s64[3][36]~372_combout\,
	combout => \s64[4][28]~489_combout\);

-- Location: LCCOMB_X62_Y59_N24
\s64[4][60]~491\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][60]~491_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][52]~367_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~1_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][52]~367_combout\,
	combout => \s64[4][60]~491_combout\);

-- Location: LCCOMB_X62_Y59_N26
\s64[4][60]~492\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][60]~492_combout\ = (\s64[4][60]~491_combout\) # ((\s64[3][60]~362_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][60]~362_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][60]~491_combout\,
	combout => \s64[4][60]~492_combout\);

-- Location: LCCOMB_X62_Y59_N4
\s64[5][44]~493\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][44]~493_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][28]~489_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][60]~492_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][28]~489_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][60]~492_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][44]~493_combout\);

-- Location: LCCOMB_X62_Y59_N14
\Y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = (!\Equal0~0_combout\ & ((\s64[5][44]~493_combout\) # ((\s64[4][44]~495_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][44]~495_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[5][44]~493_combout\,
	datad => \B[4]~input_o\,
	combout => \Y~41_combout\);

-- Location: LCCOMB_X63_Y59_N16
\s64[5][12]~490\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][12]~490_combout\ = (\B[4]~input_o\ & (!\Equal0~0_combout\ & ((\s64[4][28]~489_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][12]~487_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][12]~487_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][28]~489_combout\,
	combout => \s64[5][12]~490_combout\);

-- Location: LCCOMB_X63_Y59_N2
\Y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = (\ExtWord~input_o\ & (((!\Y~7_combout\)))) # (!\ExtWord~input_o\ & ((\Y~7_combout\ & ((\s64[5][12]~490_combout\))) # (!\Y~7_combout\ & (\Y~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~41_combout\,
	datab => \s64[5][12]~490_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~7_combout\,
	combout => \Y~42_combout\);

-- Location: LCCOMB_X63_Y59_N28
\Y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = (\Y~168_combout\ & ((\Y~42_combout\ & (\s64[4][12]~487_combout\)) # (!\Y~42_combout\ & ((\s32[4][28]~48_combout\))))) # (!\Y~168_combout\ & (((\Y~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~168_combout\,
	datab => \s64[4][12]~487_combout\,
	datac => \s32[4][28]~48_combout\,
	datad => \Y~42_combout\,
	combout => \Y~43_combout\);

-- Location: LCCOMB_X59_Y61_N12
\s64[4][45]~504\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][45]~504_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][37]~396_combout\) # ((\s64[3][53]~391_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[4][16]~0_combout\ & (((\s64[3][53]~391_combout\ & \s64[4][0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][37]~396_combout\,
	datac => \s64[3][53]~391_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][45]~504_combout\);

-- Location: LCCOMB_X59_Y61_N6
\s64[4][45]~505\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][45]~505_combout\ = (\s64[4][45]~504_combout\) # ((\s64[3][45]~388_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][45]~388_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][45]~504_combout\,
	combout => \s64[4][45]~505_combout\);

-- Location: LCCOMB_X59_Y61_N24
\s64[4][61]~501\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][61]~501_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][53]~391_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~1_combout\,
	datac => \s64[3][53]~391_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][61]~501_combout\);

-- Location: LCCOMB_X59_Y61_N26
\s64[4][61]~502\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][61]~502_combout\ = (\s64[4][61]~501_combout\) # ((\s64[3][61]~386_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][61]~386_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][61]~501_combout\,
	combout => \s64[4][61]~502_combout\);

-- Location: LCCOMB_X59_Y60_N28
\s64[4][29]~498\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][29]~498_combout\ = (\s64[4][16]~0_combout\ & ((\s64[3][21]~375_combout\) # ((\s64[3][29]~382_combout\ & !\B[3]~input_o\)))) # (!\s64[4][16]~0_combout\ & (((\s64[3][29]~382_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~0_combout\,
	datab => \s64[3][21]~375_combout\,
	datac => \s64[3][29]~382_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][29]~498_combout\);

-- Location: LCCOMB_X59_Y60_N30
\s64[4][29]~499\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][29]~499_combout\ = (\s64[4][29]~498_combout\) # ((\s64[3][37]~396_combout\ & \s64[4][0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][37]~396_combout\,
	datab => \s64[4][29]~498_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][29]~499_combout\);

-- Location: LCCOMB_X60_Y59_N26
\s64[5][45]~503\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][45]~503_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][29]~499_combout\))) # (!\Equal0~0_combout\ & (\s64[4][61]~502_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][61]~502_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][29]~499_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][45]~503_combout\);

-- Location: LCCOMB_X60_Y59_N12
\Y~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = (!\Equal0~0_combout\ & ((\s64[5][45]~503_combout\) # ((\s64[4][45]~505_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][45]~505_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[5][45]~503_combout\,
	datad => \B[4]~input_o\,
	combout => \Y~44_combout\);

-- Location: LCCOMB_X59_Y62_N0
\s64[4][13]~496\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][13]~496_combout\ = (\s64[3][5]~379_combout\ & ((\s64[4][16]~0_combout\) # ((\s64[4][0]~20_combout\ & \s64[3][21]~375_combout\)))) # (!\s64[3][5]~379_combout\ & (((\s64[4][0]~20_combout\ & \s64[3][21]~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][5]~379_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \s64[4][0]~20_combout\,
	datad => \s64[3][21]~375_combout\,
	combout => \s64[4][13]~496_combout\);

-- Location: LCCOMB_X59_Y62_N26
\s64[4][13]~497\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][13]~497_combout\ = (\s64[4][13]~496_combout\) # ((\s64[3][13]~377_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][13]~496_combout\,
	datac => \s64[3][13]~377_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][13]~497_combout\);

-- Location: LCCOMB_X60_Y59_N0
\s64[5][13]~500\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][13]~500_combout\ = (\B[4]~input_o\ & (!\Equal0~0_combout\ & ((\s64[4][29]~499_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][13]~497_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][13]~497_combout\,
	datac => \s64[4][29]~499_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][13]~500_combout\);

-- Location: LCCOMB_X60_Y59_N22
\Y~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = (\ExtWord~input_o\ & (((!\Y~7_combout\)))) # (!\ExtWord~input_o\ & ((\Y~7_combout\ & ((\s64[5][13]~500_combout\))) # (!\Y~7_combout\ & (\Y~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~44_combout\,
	datab => \s64[5][13]~500_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~7_combout\,
	combout => \Y~45_combout\);

-- Location: LCCOMB_X60_Y62_N30
\s32[4][29]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][29]~57_combout\ = (\s64[3][21]~375_combout\ & (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][21]~375_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \s32[4][29]~57_combout\);

-- Location: LCCOMB_X60_Y62_N6
\s32[4][29]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][29]~49_combout\ = (\s32[4][24]~38_combout\) # ((\s32[4][29]~57_combout\) # ((\s32[3][29]~27_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][24]~38_combout\,
	datab => \s32[3][29]~27_combout\,
	datac => \s32[4][29]~57_combout\,
	datad => \B[3]~input_o\,
	combout => \s32[4][29]~49_combout\);

-- Location: LCCOMB_X60_Y59_N8
\Y~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = (\Y~45_combout\ & ((\s64[4][13]~497_combout\) # ((!\Y~168_combout\)))) # (!\Y~45_combout\ & (((\s32[4][29]~49_combout\ & \Y~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~45_combout\,
	datab => \s64[4][13]~497_combout\,
	datac => \s32[4][29]~49_combout\,
	datad => \Y~168_combout\,
	combout => \Y~46_combout\);

-- Location: LCCOMB_X62_Y62_N12
\s64[4][14]~506\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][14]~506_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][22]~399_combout\) # ((\s64[3][6]~403_combout\ & \s64[4][16]~0_combout\)))) # (!\s64[4][0]~20_combout\ & (\s64[3][6]~403_combout\ & (\s64[4][16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[3][6]~403_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][22]~399_combout\,
	combout => \s64[4][14]~506_combout\);

-- Location: LCCOMB_X62_Y62_N22
\s64[4][14]~507\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][14]~507_combout\ = (\s64[4][14]~506_combout\) # ((!\B[3]~input_o\ & \s64[3][14]~401_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[3][14]~401_combout\,
	datad => \s64[4][14]~506_combout\,
	combout => \s64[4][14]~507_combout\);

-- Location: LCCOMB_X63_Y63_N4
\s64[4][30]~508\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][30]~508_combout\ = (\s64[3][22]~399_combout\ & ((\s64[4][16]~0_combout\) # ((!\B[3]~input_o\ & \s64[3][30]~406_combout\)))) # (!\s64[3][22]~399_combout\ & (((!\B[3]~input_o\ & \s64[3][30]~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][22]~399_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][30]~406_combout\,
	combout => \s64[4][30]~508_combout\);

-- Location: LCCOMB_X63_Y63_N6
\s64[4][30]~509\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][30]~509_combout\ = (\s64[4][30]~508_combout\) # ((\s64[3][38]~420_combout\ & \s64[4][0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][38]~420_combout\,
	datab => \s64[4][30]~508_combout\,
	datac => \s64[4][0]~20_combout\,
	combout => \s64[4][30]~509_combout\);

-- Location: LCCOMB_X65_Y63_N8
\s64[5][14]~510\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][14]~510_combout\ = (\B[4]~input_o\ & (((\s64[4][30]~509_combout\ & !\Equal0~0_combout\)))) # (!\B[4]~input_o\ & (\s64[4][14]~507_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \s64[4][14]~507_combout\,
	datac => \s64[4][30]~509_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][14]~510_combout\);

-- Location: LCCOMB_X63_Y63_N0
\s64[4][62]~511\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][62]~511_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][54]~415_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[3][54]~415_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[4][62]~511_combout\);

-- Location: LCCOMB_X63_Y63_N26
\s64[4][62]~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][62]~512_combout\ = (\s64[4][62]~511_combout\) # ((!\B[3]~input_o\ & \s64[3][62]~410_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[3][62]~410_combout\,
	datad => \s64[4][62]~511_combout\,
	combout => \s64[4][62]~512_combout\);

-- Location: LCCOMB_X65_Y63_N10
\s64[5][46]~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][46]~513_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][30]~509_combout\))) # (!\Equal0~0_combout\ & (\s64[4][62]~512_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][62]~512_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][30]~509_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][46]~513_combout\);

-- Location: LCCOMB_X63_Y63_N20
\s64[4][46]~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][46]~514_combout\ = (\s64[4][0]~20_combout\ & ((\s64[3][54]~415_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][38]~420_combout\)))) # (!\s64[4][0]~20_combout\ & (\s64[4][16]~0_combout\ & ((\s64[3][38]~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~20_combout\,
	datab => \s64[4][16]~0_combout\,
	datac => \s64[3][54]~415_combout\,
	datad => \s64[3][38]~420_combout\,
	combout => \s64[4][46]~514_combout\);

-- Location: LCCOMB_X63_Y63_N22
\s64[4][46]~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][46]~515_combout\ = (\s64[4][46]~514_combout\) # ((!\B[3]~input_o\ & \s64[3][46]~412_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][46]~514_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][46]~412_combout\,
	combout => \s64[4][46]~515_combout\);

-- Location: LCCOMB_X65_Y63_N20
\Y~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = (!\Equal0~0_combout\ & ((\s64[5][46]~513_combout\) # ((\s64[4][46]~515_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][46]~513_combout\,
	datab => \s64[4][46]~515_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Y~47_combout\);

-- Location: LCCOMB_X65_Y63_N22
\Y~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = (\Y~7_combout\ & (!\ExtWord~input_o\ & (\s64[5][14]~510_combout\))) # (!\Y~7_combout\ & ((\ExtWord~input_o\) # ((\Y~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~7_combout\,
	datab => \ExtWord~input_o\,
	datac => \s64[5][14]~510_combout\,
	datad => \Y~47_combout\,
	combout => \Y~48_combout\);

-- Location: LCCOMB_X63_Y63_N8
\s32[4][30]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][30]~50_combout\ = (\s32[4][24]~38_combout\) # ((\s32[3][30]~31_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][30]~31_combout\,
	datab => \s32[4][24]~38_combout\,
	datac => \B[3]~input_o\,
	combout => \s32[4][30]~50_combout\);

-- Location: LCCOMB_X63_Y63_N10
\s32[4][30]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][30]~51_combout\ = (\s32[4][30]~50_combout\) # ((\s64[3][22]~399_combout\ & \s64[4][16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][22]~399_combout\,
	datab => \s32[4][30]~50_combout\,
	datac => \s64[4][16]~0_combout\,
	combout => \s32[4][30]~51_combout\);

-- Location: LCCOMB_X65_Y63_N0
\Y~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = (\Y~168_combout\ & ((\Y~48_combout\ & (\s64[4][14]~507_combout\)) # (!\Y~48_combout\ & ((\s32[4][30]~51_combout\))))) # (!\Y~168_combout\ & (((\Y~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~168_combout\,
	datab => \s64[4][14]~507_combout\,
	datac => \Y~48_combout\,
	datad => \s32[4][30]~51_combout\,
	combout => \Y~49_combout\);

-- Location: LCCOMB_X60_Y61_N16
\s32[4][31]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][31]~52_combout\ = (\B[3]~input_o\ & (((\fill32~0_combout\ & !\Equal0~0_combout\)))) # (!\B[3]~input_o\ & (\s32[3][31]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s32[3][31]~35_combout\,
	datac => \fill32~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \s32[4][31]~52_combout\);

-- Location: LCCOMB_X60_Y61_N26
\s32[4][31]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[4][31]~53_combout\ = (\s32[4][31]~52_combout\) # ((\s64[3][23]~423_combout\ & \s64[4][16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][23]~423_combout\,
	datab => \s32[4][31]~52_combout\,
	datac => \s64[4][16]~0_combout\,
	combout => \s32[4][31]~53_combout\);

-- Location: LCCOMB_X60_Y63_N28
\s64[4][15]~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][15]~516_combout\ = (\s64[3][7]~427_combout\ & ((\s64[4][16]~0_combout\) # ((\s64[3][23]~423_combout\ & \s64[4][0]~20_combout\)))) # (!\s64[3][7]~427_combout\ & (\s64[3][23]~423_combout\ & ((\s64[4][0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][7]~427_combout\,
	datab => \s64[3][23]~423_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[4][0]~20_combout\,
	combout => \s64[4][15]~516_combout\);

-- Location: LCCOMB_X60_Y63_N30
\s64[4][15]~517\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][15]~517_combout\ = (\s64[4][15]~516_combout\) # ((\s64[3][15]~425_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][15]~425_combout\,
	datab => \s64[4][15]~516_combout\,
	datac => \B[3]~input_o\,
	combout => \s64[4][15]~517_combout\);

-- Location: LCCOMB_X60_Y61_N12
\s64[4][31]~518\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][31]~518_combout\ = (\s64[3][23]~423_combout\ & ((\s64[4][16]~0_combout\) # ((\s64[3][31]~430_combout\ & !\B[3]~input_o\)))) # (!\s64[3][23]~423_combout\ & (\s64[3][31]~430_combout\ & ((!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][23]~423_combout\,
	datab => \s64[3][31]~430_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][31]~518_combout\);

-- Location: LCCOMB_X60_Y61_N6
\s64[4][31]~519\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][31]~519_combout\ = (\s64[4][31]~518_combout\) # ((\s64[3][39]~444_combout\ & \s64[4][0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][31]~518_combout\,
	datab => \s64[3][39]~444_combout\,
	datac => \s64[4][0]~20_combout\,
	combout => \s64[4][31]~519_combout\);

-- Location: LCCOMB_X61_Y63_N20
\s64[4][63]~521\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][63]~521_combout\ = (\B[3]~input_o\ & (!\Equal0~0_combout\ & (\fill64~1_combout\))) # (!\B[3]~input_o\ & (((\s64[3][63]~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \fill64~1_combout\,
	datad => \s64[3][63]~434_combout\,
	combout => \s64[4][63]~521_combout\);

-- Location: LCCOMB_X61_Y63_N30
\s64[4][63]~522\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][63]~522_combout\ = (\s64[4][63]~521_combout\) # ((\s64[4][16]~0_combout\ & \s64[3][55]~439_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][63]~521_combout\,
	datac => \s64[4][16]~0_combout\,
	datad => \s64[3][55]~439_combout\,
	combout => \s64[4][63]~522_combout\);

-- Location: LCCOMB_X63_Y62_N10
\s64[5][47]~523\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][47]~523_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][31]~519_combout\)) # (!\Equal0~0_combout\ & ((\s64[4][63]~522_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][31]~519_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][63]~522_combout\,
	combout => \s64[5][47]~523_combout\);

-- Location: LCCOMB_X63_Y61_N10
\s64[4][47]~524\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][47]~524_combout\ = (\s64[3][55]~439_combout\ & ((\s64[4][0]~20_combout\) # ((\s64[3][39]~444_combout\ & \s64[4][16]~0_combout\)))) # (!\s64[3][55]~439_combout\ & (((\s64[3][39]~444_combout\ & \s64[4][16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][55]~439_combout\,
	datab => \s64[4][0]~20_combout\,
	datac => \s64[3][39]~444_combout\,
	datad => \s64[4][16]~0_combout\,
	combout => \s64[4][47]~524_combout\);

-- Location: LCCOMB_X63_Y62_N4
\s64[4][47]~525\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][47]~525_combout\ = (\s64[4][47]~524_combout\) # ((\s64[3][47]~436_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][47]~436_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][47]~524_combout\,
	combout => \s64[4][47]~525_combout\);

-- Location: LCCOMB_X63_Y62_N30
\Y~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = (!\Equal0~0_combout\ & ((\s64[5][47]~523_combout\) # ((\s64[4][47]~525_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][47]~523_combout\,
	datab => \s64[4][47]~525_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Y~50_combout\);

-- Location: LCCOMB_X63_Y62_N24
\s64[5][15]~520\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][15]~520_combout\ = (\B[4]~input_o\ & (\s64[4][31]~519_combout\ & ((!\Equal0~0_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][15]~517_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][31]~519_combout\,
	datab => \B[4]~input_o\,
	datac => \s64[4][15]~517_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][15]~520_combout\);

-- Location: LCCOMB_X63_Y62_N8
\Y~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = (\ExtWord~input_o\ & (((!\Y~7_combout\)))) # (!\ExtWord~input_o\ & ((\Y~7_combout\ & ((\s64[5][15]~520_combout\))) # (!\Y~7_combout\ & (\Y~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~50_combout\,
	datab => \s64[5][15]~520_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~7_combout\,
	combout => \Y~51_combout\);

-- Location: LCCOMB_X60_Y61_N24
\Y~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = (\Y~168_combout\ & ((\Y~51_combout\ & ((\s64[4][15]~517_combout\))) # (!\Y~51_combout\ & (\s32[4][31]~53_combout\)))) # (!\Y~168_combout\ & (((\Y~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][31]~53_combout\,
	datab => \Y~168_combout\,
	datac => \s64[4][15]~517_combout\,
	datad => \Y~51_combout\,
	combout => \Y~52_combout\);

-- Location: LCCOMB_X66_Y61_N2
\s64[5][16]~528\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][16]~528_combout\ = (\B[4]~input_o\ & (\s64[4][0]~123_combout\ & ((\Equal0~0_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][16]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][0]~123_combout\,
	datab => \s64[4][16]~51_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][16]~528_combout\);

-- Location: LCCOMB_X66_Y61_N28
\s64[5][16]~529\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][16]~529_combout\ = (\s64[5][16]~528_combout\) # ((\B[4]~input_o\ & (!\Equal0~0_combout\ & \s64[4][32]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][32]~113_combout\,
	datad => \s64[5][16]~528_combout\,
	combout => \s64[5][16]~529_combout\);

-- Location: LCCOMB_X65_Y63_N26
\Y~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = (\ExtWord~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~53_combout\);

-- Location: LCCOMB_X63_Y59_N0
\Y~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = (\ExtWord~input_o\ & (((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~55_combout\);

-- Location: LCCOMB_X63_Y59_N6
\Y~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = (\ExtWord~input_o\ & (((!\B[4]~input_o\)))) # (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~54_combout\);

-- Location: LCCOMB_X66_Y61_N10
\s64[5][48]~526\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][48]~526_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][32]~113_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][32]~113_combout\,
	datab => \Equal0~0_combout\,
	datac => \fill64~1_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][48]~526_combout\);

-- Location: LCCOMB_X66_Y61_N12
\s64[5][48]~527\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][48]~527_combout\ = (\s64[5][48]~526_combout\) # ((!\B[4]~input_o\ & \s64[4][48]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][48]~526_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][48]~103_combout\,
	combout => \s64[5][48]~527_combout\);

-- Location: LCCOMB_X66_Y61_N22
\Y~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = (\Y~55_combout\ & ((\s64[4][16]~51_combout\) # ((!\Y~54_combout\)))) # (!\Y~55_combout\ & (((\Y~54_combout\ & \s64[5][48]~527_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \s64[4][16]~51_combout\,
	datac => \Y~54_combout\,
	datad => \s64[5][48]~527_combout\,
	combout => \Y~56_combout\);

-- Location: LCCOMB_X66_Y61_N24
\Y~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = (\Y~53_combout\ & ((\Y~56_combout\ & ((\s64[4][0]~123_combout\))) # (!\Y~56_combout\ & (\fill32~0_combout\)))) # (!\Y~53_combout\ & (((\Y~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~53_combout\,
	datab => \fill32~0_combout\,
	datac => \Y~56_combout\,
	datad => \s64[4][0]~123_combout\,
	combout => \Y~57_combout\);

-- Location: LCCOMB_X66_Y61_N30
\Y~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = (\ExtWord~input_o\ & (((\Y~57_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\Y~57_combout\))) # (!\B[5]~input_o\ & (\s64[5][16]~529_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][16]~529_combout\,
	datab => \Y~57_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~58_combout\);

-- Location: LCCOMB_X61_Y60_N24
\s64[5][49]~530\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][49]~530_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][33]~241_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][33]~241_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \fill64~1_combout\,
	combout => \s64[5][49]~530_combout\);

-- Location: LCCOMB_X61_Y60_N26
\s64[5][49]~531\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][49]~531_combout\ = (\s64[5][49]~530_combout\) # ((\s64[4][49]~228_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][49]~228_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][49]~530_combout\,
	combout => \s64[5][49]~531_combout\);

-- Location: LCCOMB_X61_Y60_N12
\Y~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = (\Y~55_combout\ & ((\s32[4][17]~13_combout\) # ((!\Y~54_combout\)))) # (!\Y~55_combout\ & (((\Y~54_combout\ & \s64[5][49]~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \s32[4][17]~13_combout\,
	datac => \Y~54_combout\,
	datad => \s64[5][49]~531_combout\,
	combout => \Y~59_combout\);

-- Location: LCCOMB_X61_Y60_N30
\Y~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = (\Y~59_combout\ & ((\s64[4][1]~171_combout\) # ((!\Y~53_combout\)))) # (!\Y~59_combout\ & (((\fill32~0_combout\ & \Y~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][1]~171_combout\,
	datab => \fill32~0_combout\,
	datac => \Y~59_combout\,
	datad => \Y~53_combout\,
	combout => \Y~60_combout\);

-- Location: LCCOMB_X61_Y60_N8
\s64[5][17]~532\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][17]~532_combout\ = (\B[4]~input_o\ & (((\Equal0~0_combout\ & \s64[4][1]~171_combout\)))) # (!\B[4]~input_o\ & (\s64[4][17]~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][17]~175_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][1]~171_combout\,
	combout => \s64[5][17]~532_combout\);

-- Location: LCCOMB_X61_Y60_N2
\s64[5][17]~533\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][17]~533_combout\ = (\s64[5][17]~532_combout\) # ((\s64[4][33]~241_combout\ & (\B[4]~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][33]~241_combout\,
	datab => \s64[5][17]~532_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][17]~533_combout\);

-- Location: LCCOMB_X61_Y60_N20
\Y~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = (\ExtWord~input_o\ & (\Y~60_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Y~60_combout\)) # (!\B[5]~input_o\ & ((\s64[5][17]~533_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~60_combout\,
	datab => \s64[5][17]~533_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~61_combout\);

-- Location: LCCOMB_X66_Y62_N30
\s64[5][50]~534\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][50]~534_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][34]~295_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][34]~295_combout\,
	datab => \fill64~1_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][50]~534_combout\);

-- Location: LCCOMB_X66_Y62_N16
\s64[5][50]~535\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][50]~535_combout\ = (\s64[5][50]~534_combout\) # ((\s64[4][50]~287_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][50]~534_combout\,
	datab => \s64[4][50]~287_combout\,
	datac => \B[4]~input_o\,
	combout => \s64[5][50]~535_combout\);

-- Location: LCCOMB_X65_Y59_N12
\Y~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = (\Y~54_combout\ & ((\Y~55_combout\ & (\s32[4][18]~17_combout\)) # (!\Y~55_combout\ & ((\s64[5][50]~535_combout\))))) # (!\Y~54_combout\ & (((\Y~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][18]~17_combout\,
	datab => \Y~54_combout\,
	datac => \Y~55_combout\,
	datad => \s64[5][50]~535_combout\,
	combout => \Y~62_combout\);

-- Location: LCCOMB_X65_Y59_N22
\Y~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = (\Y~62_combout\ & ((\s64[4][2]~261_combout\) # ((!\Y~53_combout\)))) # (!\Y~62_combout\ & (((\fill32~0_combout\ & \Y~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~62_combout\,
	datab => \s64[4][2]~261_combout\,
	datac => \fill32~0_combout\,
	datad => \Y~53_combout\,
	combout => \Y~63_combout\);

-- Location: LCCOMB_X65_Y62_N2
\s64[5][18]~536\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][18]~536_combout\ = (\B[4]~input_o\ & (\Equal0~0_combout\ & ((\s64[4][2]~261_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][18]~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[4]~input_o\,
	datac => \s64[4][18]~264_combout\,
	datad => \s64[4][2]~261_combout\,
	combout => \s64[5][18]~536_combout\);

-- Location: LCCOMB_X66_Y62_N26
\s64[5][18]~537\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][18]~537_combout\ = (\s64[5][18]~536_combout\) # ((\s64[4][34]~295_combout\ & (\B[4]~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][34]~295_combout\,
	datab => \B[4]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[5][18]~536_combout\,
	combout => \s64[5][18]~537_combout\);

-- Location: LCCOMB_X65_Y59_N8
\Y~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = (\B[5]~input_o\ & (\Y~63_combout\)) # (!\B[5]~input_o\ & ((\ExtWord~input_o\ & (\Y~63_combout\)) # (!\ExtWord~input_o\ & ((\s64[5][18]~537_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~63_combout\,
	datab => \s64[5][18]~537_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~64_combout\);

-- Location: LCCOMB_X62_Y59_N16
\s64[5][51]~538\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][51]~538_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][35]~350_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][35]~350_combout\,
	datab => \Equal0~0_combout\,
	datac => \fill64~1_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][51]~538_combout\);

-- Location: LCCOMB_X62_Y59_N10
\s64[5][51]~539\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][51]~539_combout\ = (\s64[5][51]~538_combout\) # ((\s64[4][51]~341_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[5][51]~538_combout\,
	datac => \s64[4][51]~341_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][51]~539_combout\);

-- Location: LCCOMB_X65_Y59_N10
\Y~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = (\Y~54_combout\ & ((\Y~55_combout\ & ((\s32[4][19]~21_combout\))) # (!\Y~55_combout\ & (\s64[5][51]~539_combout\)))) # (!\Y~54_combout\ & (((\Y~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][51]~539_combout\,
	datab => \Y~54_combout\,
	datac => \Y~55_combout\,
	datad => \s32[4][19]~21_combout\,
	combout => \Y~65_combout\);

-- Location: LCCOMB_X65_Y59_N4
\Y~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = (\Y~65_combout\ & ((\s64[4][3]~315_combout\) # ((!\Y~53_combout\)))) # (!\Y~65_combout\ & (((\fill32~0_combout\ & \Y~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~65_combout\,
	datab => \s64[4][3]~315_combout\,
	datac => \fill32~0_combout\,
	datad => \Y~53_combout\,
	combout => \Y~66_combout\);

-- Location: LCCOMB_X58_Y62_N10
\s64[5][19]~540\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][19]~540_combout\ = (\B[4]~input_o\ & (\Equal0~0_combout\ & ((\s64[4][3]~315_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][19]~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][19]~318_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][3]~315_combout\,
	combout => \s64[5][19]~540_combout\);

-- Location: LCCOMB_X58_Y62_N28
\s64[5][19]~541\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][19]~541_combout\ = (\s64[5][19]~540_combout\) # ((!\Equal0~0_combout\ & (\s64[4][35]~350_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][35]~350_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][19]~540_combout\,
	combout => \s64[5][19]~541_combout\);

-- Location: LCCOMB_X65_Y59_N6
\Y~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = (\ExtWord~input_o\ & (\Y~66_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Y~66_combout\)) # (!\B[5]~input_o\ & ((\s64[5][19]~541_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~66_combout\,
	datac => \B[5]~input_o\,
	datad => \s64[5][19]~541_combout\,
	combout => \Y~67_combout\);

-- Location: LCCOMB_X65_Y60_N20
\s64[5][20]~544\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][20]~544_combout\ = (\B[4]~input_o\ & (((\Equal0~0_combout\ & \s64[4][4]~357_combout\)))) # (!\B[4]~input_o\ & (\s64[4][20]~359_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][20]~359_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][4]~357_combout\,
	combout => \s64[5][20]~544_combout\);

-- Location: LCCOMB_X65_Y60_N22
\s64[5][20]~545\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][20]~545_combout\ = (\s64[5][20]~544_combout\) # ((\s64[4][36]~373_combout\ & (!\Equal0~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][36]~373_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][20]~544_combout\,
	combout => \s64[5][20]~545_combout\);

-- Location: LCCOMB_X62_Y60_N20
\s64[5][52]~542\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][52]~542_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][36]~373_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \B[4]~input_o\,
	datac => \s64[4][36]~373_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][52]~542_combout\);

-- Location: LCCOMB_X65_Y60_N10
\s64[5][52]~543\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][52]~543_combout\ = (\s64[5][52]~542_combout\) # ((!\B[4]~input_o\ & \s64[4][52]~368_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][52]~542_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][52]~368_combout\,
	combout => \s64[5][52]~543_combout\);

-- Location: LCCOMB_X63_Y60_N4
\Y~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = (\Y~55_combout\ & (((\s32[4][20]~25_combout\)) # (!\Y~54_combout\))) # (!\Y~55_combout\ & (\Y~54_combout\ & (\s64[5][52]~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \Y~54_combout\,
	datac => \s64[5][52]~543_combout\,
	datad => \s32[4][20]~25_combout\,
	combout => \Y~68_combout\);

-- Location: LCCOMB_X63_Y60_N6
\Y~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = (\Y~53_combout\ & ((\Y~68_combout\ & ((\s64[4][4]~357_combout\))) # (!\Y~68_combout\ & (\fill32~0_combout\)))) # (!\Y~53_combout\ & (((\Y~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~53_combout\,
	datab => \fill32~0_combout\,
	datac => \Y~68_combout\,
	datad => \s64[4][4]~357_combout\,
	combout => \Y~69_combout\);

-- Location: LCCOMB_X66_Y60_N24
\Y~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = (\ExtWord~input_o\ & (((\Y~69_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\Y~69_combout\))) # (!\B[5]~input_o\ & (\s64[5][20]~545_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \s64[5][20]~545_combout\,
	datac => \Y~69_combout\,
	datad => \B[5]~input_o\,
	combout => \Y~70_combout\);

-- Location: LCCOMB_X66_Y64_N22
\s64[5][21]~548\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][21]~548_combout\ = (\B[4]~input_o\ & (\s64[4][5]~380_combout\ & (\Equal0~0_combout\))) # (!\B[4]~input_o\ & (((\s64[4][21]~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][5]~380_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][21]~383_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][21]~548_combout\);

-- Location: LCCOMB_X66_Y64_N24
\s64[5][21]~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][21]~549_combout\ = (\s64[5][21]~548_combout\) # ((\s64[4][37]~397_combout\ & (!\Equal0~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][37]~397_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[5][21]~548_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][21]~549_combout\);

-- Location: LCCOMB_X66_Y64_N18
\s64[5][53]~546\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][53]~546_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][37]~397_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][37]~397_combout\,
	datab => \fill64~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][53]~546_combout\);

-- Location: LCCOMB_X66_Y64_N20
\s64[5][53]~547\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][53]~547_combout\ = (\s64[5][53]~546_combout\) # ((\s64[4][53]~392_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][53]~392_combout\,
	datab => \B[4]~input_o\,
	datad => \s64[5][53]~546_combout\,
	combout => \s64[5][53]~547_combout\);

-- Location: LCCOMB_X63_Y60_N8
\Y~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = (\Y~55_combout\ & (((\s32[4][21]~29_combout\)) # (!\Y~54_combout\))) # (!\Y~55_combout\ & (\Y~54_combout\ & ((\s64[5][53]~547_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \Y~54_combout\,
	datac => \s32[4][21]~29_combout\,
	datad => \s64[5][53]~547_combout\,
	combout => \Y~71_combout\);

-- Location: LCCOMB_X63_Y60_N26
\Y~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = (\Y~71_combout\ & ((\s64[4][5]~380_combout\) # ((!\Y~53_combout\)))) # (!\Y~71_combout\ & (((\Y~53_combout\ & \fill32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][5]~380_combout\,
	datab => \Y~71_combout\,
	datac => \Y~53_combout\,
	datad => \fill32~0_combout\,
	combout => \Y~72_combout\);

-- Location: LCCOMB_X66_Y64_N26
\Y~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = (\ExtWord~input_o\ & (((\Y~72_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\Y~72_combout\))) # (!\B[5]~input_o\ & (\s64[5][21]~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \s64[5][21]~549_combout\,
	datac => \B[5]~input_o\,
	datad => \Y~72_combout\,
	combout => \Y~73_combout\);

-- Location: LCCOMB_X66_Y63_N10
\s64[5][54]~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][54]~550_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][38]~421_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][38]~421_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][54]~550_combout\);

-- Location: LCCOMB_X66_Y63_N28
\s64[5][54]~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][54]~551_combout\ = (\s64[5][54]~550_combout\) # ((\s64[4][54]~416_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][54]~416_combout\,
	datab => \B[4]~input_o\,
	datad => \s64[5][54]~550_combout\,
	combout => \s64[5][54]~551_combout\);

-- Location: LCCOMB_X63_Y60_N28
\Y~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = (\Y~55_combout\ & ((\s32[4][22]~33_combout\) # ((!\Y~54_combout\)))) # (!\Y~55_combout\ & (((\Y~54_combout\ & \s64[5][54]~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \s32[4][22]~33_combout\,
	datac => \Y~54_combout\,
	datad => \s64[5][54]~551_combout\,
	combout => \Y~74_combout\);

-- Location: LCCOMB_X63_Y60_N30
\Y~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = (\Y~53_combout\ & ((\Y~74_combout\ & ((\s64[4][6]~404_combout\))) # (!\Y~74_combout\ & (\fill32~0_combout\)))) # (!\Y~53_combout\ & (((\Y~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~53_combout\,
	datab => \fill32~0_combout\,
	datac => \s64[4][6]~404_combout\,
	datad => \Y~74_combout\,
	combout => \Y~75_combout\);

-- Location: LCCOMB_X66_Y63_N6
\s64[5][22]~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][22]~552_combout\ = (\B[4]~input_o\ & (\s64[4][6]~404_combout\ & ((\Equal0~0_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][22]~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][6]~404_combout\,
	datab => \s64[4][22]~407_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][22]~552_combout\);

-- Location: LCCOMB_X66_Y63_N0
\s64[5][22]~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][22]~553_combout\ = (\s64[5][22]~552_combout\) # ((!\Equal0~0_combout\ & (\s64[4][38]~421_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][22]~552_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][38]~421_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][22]~553_combout\);

-- Location: LCCOMB_X67_Y62_N10
\Y~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = (\ExtWord~input_o\ & (\Y~75_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Y~75_combout\)) # (!\B[5]~input_o\ & ((\s64[5][22]~553_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~75_combout\,
	datab => \s64[5][22]~553_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~76_combout\);

-- Location: LCCOMB_X63_Y61_N28
\s64[5][55]~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][55]~554_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][39]~445_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][39]~445_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \fill64~1_combout\,
	combout => \s64[5][55]~554_combout\);

-- Location: LCCOMB_X63_Y61_N6
\s64[5][55]~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][55]~555_combout\ = (\s64[5][55]~554_combout\) # ((\s64[4][55]~440_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][55]~440_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][55]~554_combout\,
	combout => \s64[5][55]~555_combout\);

-- Location: LCCOMB_X63_Y60_N16
\Y~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = (\Y~55_combout\ & ((\s32[4][23]~37_combout\) # ((!\Y~54_combout\)))) # (!\Y~55_combout\ & (((\Y~54_combout\ & \s64[5][55]~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \s32[4][23]~37_combout\,
	datac => \Y~54_combout\,
	datad => \s64[5][55]~555_combout\,
	combout => \Y~77_combout\);

-- Location: LCCOMB_X63_Y60_N10
\Y~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = (\Y~77_combout\ & ((\s64[4][7]~428_combout\) # ((!\Y~53_combout\)))) # (!\Y~77_combout\ & (((\Y~53_combout\ & \fill32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][7]~428_combout\,
	datab => \Y~77_combout\,
	datac => \Y~53_combout\,
	datad => \fill32~0_combout\,
	combout => \Y~78_combout\);

-- Location: LCCOMB_X63_Y61_N24
\s64[5][23]~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][23]~556_combout\ = (\B[4]~input_o\ & (((\Equal0~0_combout\ & \s64[4][7]~428_combout\)))) # (!\B[4]~input_o\ & (\s64[4][23]~431_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][23]~431_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][7]~428_combout\,
	combout => \s64[5][23]~556_combout\);

-- Location: LCCOMB_X63_Y61_N26
\s64[5][23]~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][23]~557_combout\ = (\s64[5][23]~556_combout\) # ((\s64[4][39]~445_combout\ & (!\Equal0~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][39]~445_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][23]~556_combout\,
	combout => \s64[5][23]~557_combout\);

-- Location: LCCOMB_X63_Y61_N12
\Y~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = (\ExtWord~input_o\ & (\Y~78_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Y~78_combout\)) # (!\B[5]~input_o\ & ((\s64[5][23]~557_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~78_combout\,
	datab => \ExtWord~input_o\,
	datac => \s64[5][23]~557_combout\,
	datad => \B[5]~input_o\,
	combout => \Y~79_combout\);

-- Location: LCCOMB_X66_Y62_N0
\s64[5][24]~560\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][24]~560_combout\ = (\B[4]~input_o\ & (\Equal0~0_combout\ & ((\s64[4][8]~448_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][24]~449_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][24]~449_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][8]~448_combout\,
	combout => \s64[5][24]~560_combout\);

-- Location: LCCOMB_X66_Y62_N18
\s64[5][24]~561\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][24]~561_combout\ = (\s64[5][24]~560_combout\) # ((\s64[4][40]~455_combout\ & (\B[4]~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][24]~560_combout\,
	datab => \s64[4][40]~455_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][24]~561_combout\);

-- Location: LCCOMB_X66_Y62_N28
\s64[5][56]~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][56]~558_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][40]~455_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~1_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][40]~455_combout\,
	combout => \s64[5][56]~558_combout\);

-- Location: LCCOMB_X66_Y62_N6
\s64[5][56]~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][56]~559_combout\ = (\s64[5][56]~558_combout\) # ((\s64[4][56]~452_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][56]~452_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][56]~558_combout\,
	combout => \s64[5][56]~559_combout\);

-- Location: LCCOMB_X65_Y61_N26
\Y~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = (\Y~54_combout\ & ((\Y~55_combout\ & ((\s32[4][24]~40_combout\))) # (!\Y~55_combout\ & (\s64[5][56]~559_combout\)))) # (!\Y~54_combout\ & (((\Y~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~54_combout\,
	datab => \s64[5][56]~559_combout\,
	datac => \s32[4][24]~40_combout\,
	datad => \Y~55_combout\,
	combout => \Y~80_combout\);

-- Location: LCCOMB_X65_Y61_N20
\Y~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = (\Y~80_combout\ & (((\s64[4][8]~448_combout\) # (!\Y~53_combout\)))) # (!\Y~80_combout\ & (\fill32~0_combout\ & ((\Y~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~80_combout\,
	datab => \fill32~0_combout\,
	datac => \s64[4][8]~448_combout\,
	datad => \Y~53_combout\,
	combout => \Y~81_combout\);

-- Location: LCCOMB_X65_Y61_N22
\Y~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = (\B[5]~input_o\ & (((\Y~81_combout\)))) # (!\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\Y~81_combout\))) # (!\ExtWord~input_o\ & (\s64[5][24]~561_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][24]~561_combout\,
	datab => \Y~81_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~82_combout\);

-- Location: LCCOMB_X60_Y60_N26
\s64[5][25]~564\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][25]~564_combout\ = (\B[4]~input_o\ & (((\s64[4][9]~457_combout\ & \Equal0~0_combout\)))) # (!\B[4]~input_o\ & (\s64[4][25]~459_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][25]~459_combout\,
	datab => \s64[4][9]~457_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][25]~564_combout\);

-- Location: LCCOMB_X60_Y60_N28
\s64[5][25]~565\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][25]~565_combout\ = (\s64[5][25]~564_combout\) # ((\s64[4][41]~465_combout\ & (!\Equal0~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][25]~564_combout\,
	datab => \s64[4][41]~465_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][25]~565_combout\);

-- Location: LCCOMB_X60_Y60_N30
\s64[5][57]~562\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][57]~562_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][41]~465_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \s64[4][41]~465_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][57]~562_combout\);

-- Location: LCCOMB_X60_Y60_N16
\s64[5][57]~563\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][57]~563_combout\ = (\s64[5][57]~562_combout\) # ((\s64[4][57]~462_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][57]~462_combout\,
	datac => \s64[5][57]~562_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][57]~563_combout\);

-- Location: LCCOMB_X63_Y59_N26
\Y~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = (\Y~55_combout\ & ((\s32[4][25]~42_combout\) # ((!\Y~54_combout\)))) # (!\Y~55_combout\ & (((\s64[5][57]~563_combout\ & \Y~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][25]~42_combout\,
	datab => \Y~55_combout\,
	datac => \s64[5][57]~563_combout\,
	datad => \Y~54_combout\,
	combout => \Y~83_combout\);

-- Location: LCCOMB_X65_Y59_N24
\Y~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = (\Y~83_combout\ & ((\s64[4][9]~457_combout\) # ((!\Y~53_combout\)))) # (!\Y~83_combout\ & (((\fill32~0_combout\ & \Y~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][9]~457_combout\,
	datab => \Y~83_combout\,
	datac => \fill32~0_combout\,
	datad => \Y~53_combout\,
	combout => \Y~84_combout\);

-- Location: LCCOMB_X65_Y59_N18
\Y~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = (\B[5]~input_o\ & (((\Y~84_combout\)))) # (!\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\Y~84_combout\))) # (!\ExtWord~input_o\ & (\s64[5][25]~565_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][25]~565_combout\,
	datab => \Y~84_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~85_combout\);

-- Location: LCCOMB_X65_Y62_N28
\s64[5][26]~568\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][26]~568_combout\ = (\B[4]~input_o\ & (\s64[4][10]~467_combout\ & (\Equal0~0_combout\))) # (!\B[4]~input_o\ & (((\s64[4][26]~469_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][10]~467_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][26]~469_combout\,
	combout => \s64[5][26]~568_combout\);

-- Location: LCCOMB_X65_Y62_N22
\s64[5][26]~569\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][26]~569_combout\ = (\s64[5][26]~568_combout\) # ((\s64[4][42]~475_combout\ & (\B[4]~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][42]~475_combout\,
	datab => \s64[5][26]~568_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][26]~569_combout\);

-- Location: LCCOMB_X65_Y65_N2
\s64[5][58]~566\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][58]~566_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][42]~475_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \fill64~1_combout\,
	datac => \s64[4][42]~475_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][58]~566_combout\);

-- Location: LCCOMB_X65_Y65_N28
\s64[5][58]~567\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][58]~567_combout\ = (\s64[5][58]~566_combout\) # ((\s64[4][58]~472_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][58]~472_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][58]~566_combout\,
	combout => \s64[5][58]~567_combout\);

-- Location: LCCOMB_X63_Y60_N20
\Y~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = (\Y~55_combout\ & (((\s32[4][26]~44_combout\)) # (!\Y~54_combout\))) # (!\Y~55_combout\ & (\Y~54_combout\ & ((\s64[5][58]~567_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \Y~54_combout\,
	datac => \s32[4][26]~44_combout\,
	datad => \s64[5][58]~567_combout\,
	combout => \Y~86_combout\);

-- Location: LCCOMB_X63_Y60_N22
\Y~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = (\Y~86_combout\ & ((\s64[4][10]~467_combout\) # ((!\Y~53_combout\)))) # (!\Y~86_combout\ & (((\Y~53_combout\ & \fill32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][10]~467_combout\,
	datab => \Y~86_combout\,
	datac => \Y~53_combout\,
	datad => \fill32~0_combout\,
	combout => \Y~87_combout\);

-- Location: LCCOMB_X63_Y60_N24
\Y~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = (\ExtWord~input_o\ & (((\Y~87_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\Y~87_combout\))) # (!\B[5]~input_o\ & (\s64[5][26]~569_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][26]~569_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y~87_combout\,
	datad => \B[5]~input_o\,
	combout => \Y~88_combout\);

-- Location: LCCOMB_X62_Y60_N30
\s64[5][59]~570\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][59]~570_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][43]~485_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[4]~input_o\,
	datac => \fill64~1_combout\,
	datad => \s64[4][43]~485_combout\,
	combout => \s64[5][59]~570_combout\);

-- Location: LCCOMB_X62_Y60_N16
\s64[5][59]~571\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][59]~571_combout\ = (\s64[5][59]~570_combout\) # ((!\B[4]~input_o\ & \s64[4][59]~482_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][59]~570_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][59]~482_combout\,
	combout => \s64[5][59]~571_combout\);

-- Location: LCCOMB_X63_Y60_N18
\Y~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = (\Y~54_combout\ & ((\Y~55_combout\ & (\s32[4][27]~46_combout\)) # (!\Y~55_combout\ & ((\s64[5][59]~571_combout\))))) # (!\Y~54_combout\ & (((\Y~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[4][27]~46_combout\,
	datab => \Y~54_combout\,
	datac => \s64[5][59]~571_combout\,
	datad => \Y~55_combout\,
	combout => \Y~89_combout\);

-- Location: LCCOMB_X63_Y60_N12
\Y~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = (\Y~89_combout\ & ((\s64[4][11]~477_combout\) # ((!\Y~53_combout\)))) # (!\Y~89_combout\ & (((\Y~53_combout\ & \fill32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][11]~477_combout\,
	datab => \Y~89_combout\,
	datac => \Y~53_combout\,
	datad => \fill32~0_combout\,
	combout => \Y~90_combout\);

-- Location: LCCOMB_X62_Y60_N10
\s64[5][27]~572\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][27]~572_combout\ = (\B[4]~input_o\ & (\Equal0~0_combout\ & (\s64[4][11]~477_combout\))) # (!\B[4]~input_o\ & (((\s64[4][27]~479_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][11]~477_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][27]~479_combout\,
	combout => \s64[5][27]~572_combout\);

-- Location: LCCOMB_X62_Y60_N4
\s64[5][27]~573\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][27]~573_combout\ = (\s64[5][27]~572_combout\) # ((!\Equal0~0_combout\ & (\s64[4][43]~485_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][43]~485_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][27]~572_combout\,
	combout => \s64[5][27]~573_combout\);

-- Location: LCCOMB_X63_Y60_N14
\Y~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = (\ExtWord~input_o\ & (\Y~90_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Y~90_combout\)) # (!\B[5]~input_o\ & ((\s64[5][27]~573_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~90_combout\,
	datab => \ExtWord~input_o\,
	datac => \s64[5][27]~573_combout\,
	datad => \B[5]~input_o\,
	combout => \Y~91_combout\);

-- Location: LCCOMB_X63_Y59_N24
\s64[5][28]~576\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][28]~576_combout\ = (\B[4]~input_o\ & (\Equal0~0_combout\ & (\s64[4][12]~487_combout\))) # (!\B[4]~input_o\ & (((\s64[4][28]~489_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][12]~487_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][28]~489_combout\,
	combout => \s64[5][28]~576_combout\);

-- Location: LCCOMB_X62_Y59_N0
\s64[5][28]~577\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][28]~577_combout\ = (\s64[5][28]~576_combout\) # ((\s64[4][44]~495_combout\ & (!\Equal0~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][44]~495_combout\,
	datab => \s64[5][28]~576_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][28]~577_combout\);

-- Location: LCCOMB_X62_Y59_N20
\s64[5][60]~574\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][60]~574_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][44]~495_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][44]~495_combout\,
	datab => \Equal0~0_combout\,
	datac => \fill64~1_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][60]~574_combout\);

-- Location: LCCOMB_X62_Y59_N30
\s64[5][60]~575\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][60]~575_combout\ = (\s64[5][60]~574_combout\) # ((\s64[4][60]~492_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[5][60]~574_combout\,
	datac => \s64[4][60]~492_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][60]~575_combout\);

-- Location: LCCOMB_X63_Y59_N20
\Y~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = (\Y~54_combout\ & ((\Y~55_combout\ & ((\s32[4][28]~48_combout\))) # (!\Y~55_combout\ & (\s64[5][60]~575_combout\)))) # (!\Y~54_combout\ & (((\Y~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~54_combout\,
	datab => \s64[5][60]~575_combout\,
	datac => \s32[4][28]~48_combout\,
	datad => \Y~55_combout\,
	combout => \Y~92_combout\);

-- Location: LCCOMB_X63_Y59_N14
\Y~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = (\Y~53_combout\ & ((\Y~92_combout\ & (\s64[4][12]~487_combout\)) # (!\Y~92_combout\ & ((\fill32~0_combout\))))) # (!\Y~53_combout\ & (((\Y~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~53_combout\,
	datab => \s64[4][12]~487_combout\,
	datac => \fill32~0_combout\,
	datad => \Y~92_combout\,
	combout => \Y~93_combout\);

-- Location: LCCOMB_X63_Y59_N18
\Y~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = (\ExtWord~input_o\ & (((\Y~93_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\Y~93_combout\))) # (!\B[5]~input_o\ & (\s64[5][28]~577_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][28]~577_combout\,
	datab => \Y~93_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~94_combout\);

-- Location: LCCOMB_X60_Y59_N18
\s64[5][61]~578\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][61]~578_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & (\s64[4][45]~505_combout\)) # (!\Equal0~0_combout\ & ((\fill64~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][45]~505_combout\,
	datab => \Equal0~0_combout\,
	datac => \fill64~1_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][61]~578_combout\);

-- Location: LCCOMB_X60_Y59_N20
\s64[5][61]~579\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][61]~579_combout\ = (\s64[5][61]~578_combout\) # ((\s64[4][61]~502_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[5][61]~578_combout\,
	datac => \s64[4][61]~502_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][61]~579_combout\);

-- Location: LCCOMB_X60_Y59_N30
\Y~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~95_combout\ = (\Y~55_combout\ & (((\s32[4][29]~49_combout\) # (!\Y~54_combout\)))) # (!\Y~55_combout\ & (\s64[5][61]~579_combout\ & ((\Y~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \s64[5][61]~579_combout\,
	datac => \s32[4][29]~49_combout\,
	datad => \Y~54_combout\,
	combout => \Y~95_combout\);

-- Location: LCCOMB_X60_Y59_N24
\Y~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~96_combout\ = (\Y~95_combout\ & (((\s64[4][13]~497_combout\) # (!\Y~53_combout\)))) # (!\Y~95_combout\ & (\fill32~0_combout\ & ((\Y~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill32~0_combout\,
	datab => \s64[4][13]~497_combout\,
	datac => \Y~95_combout\,
	datad => \Y~53_combout\,
	combout => \Y~96_combout\);

-- Location: LCCOMB_X60_Y59_N10
\s64[5][29]~580\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][29]~580_combout\ = (\B[4]~input_o\ & (\Equal0~0_combout\ & (\s64[4][13]~497_combout\))) # (!\B[4]~input_o\ & (((\s64[4][29]~499_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][13]~497_combout\,
	datac => \s64[4][29]~499_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][29]~580_combout\);

-- Location: LCCOMB_X60_Y59_N28
\s64[5][29]~581\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][29]~581_combout\ = (\s64[5][29]~580_combout\) # ((\s64[4][45]~505_combout\ & (\B[4]~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][45]~505_combout\,
	datab => \B[4]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[5][29]~580_combout\,
	combout => \s64[5][29]~581_combout\);

-- Location: LCCOMB_X67_Y62_N12
\Y~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~97_combout\ = (\ExtWord~input_o\ & (\Y~96_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Y~96_combout\)) # (!\B[5]~input_o\ & ((\s64[5][29]~581_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~96_combout\,
	datab => \s64[5][29]~581_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~97_combout\);

-- Location: LCCOMB_X65_Y63_N4
\s64[5][30]~584\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][30]~584_combout\ = (\B[4]~input_o\ & (\s64[4][14]~507_combout\ & ((\Equal0~0_combout\)))) # (!\B[4]~input_o\ & (((\s64[4][30]~509_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \s64[4][14]~507_combout\,
	datac => \s64[4][30]~509_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][30]~584_combout\);

-- Location: LCCOMB_X65_Y63_N6
\s64[5][30]~585\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][30]~585_combout\ = (\s64[5][30]~584_combout\) # ((\B[4]~input_o\ & (\s64[4][46]~515_combout\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \s64[4][46]~515_combout\,
	datac => \s64[5][30]~584_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][30]~585_combout\);

-- Location: LCCOMB_X65_Y63_N12
\s64[5][62]~582\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][62]~582_combout\ = (\B[4]~input_o\ & ((\Equal0~0_combout\ & ((\s64[4][46]~515_combout\))) # (!\Equal0~0_combout\ & (\fill64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \fill64~1_combout\,
	datad => \s64[4][46]~515_combout\,
	combout => \s64[5][62]~582_combout\);

-- Location: LCCOMB_X65_Y63_N14
\s64[5][62]~583\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][62]~583_combout\ = (\s64[5][62]~582_combout\) # ((\s64[4][62]~512_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][62]~582_combout\,
	datac => \s64[4][62]~512_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][62]~583_combout\);

-- Location: LCCOMB_X65_Y63_N16
\Y~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~98_combout\ = (\Y~54_combout\ & ((\Y~55_combout\ & (\s32[4][30]~51_combout\)) # (!\Y~55_combout\ & ((\s64[5][62]~583_combout\))))) # (!\Y~54_combout\ & (((\Y~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~54_combout\,
	datab => \s32[4][30]~51_combout\,
	datac => \s64[5][62]~583_combout\,
	datad => \Y~55_combout\,
	combout => \Y~98_combout\);

-- Location: LCCOMB_X65_Y63_N18
\Y~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~99_combout\ = (\Y~53_combout\ & ((\Y~98_combout\ & ((\s64[4][14]~507_combout\))) # (!\Y~98_combout\ & (\fill32~0_combout\)))) # (!\Y~53_combout\ & (\Y~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~53_combout\,
	datab => \Y~98_combout\,
	datac => \fill32~0_combout\,
	datad => \s64[4][14]~507_combout\,
	combout => \Y~99_combout\);

-- Location: LCCOMB_X65_Y63_N24
\Y~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~100_combout\ = (\ExtWord~input_o\ & (((\Y~99_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\Y~99_combout\))) # (!\B[5]~input_o\ & (\s64[5][30]~585_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][30]~585_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Y~99_combout\,
	combout => \Y~100_combout\);

-- Location: LCCOMB_X60_Y61_N10
\Y_32_extended[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_32_extended[31]~0_combout\ = (\B[4]~input_o\ & (\fill32~0_combout\ & (!\Equal0~0_combout\))) # (!\B[4]~input_o\ & (((\s32[4][31]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill32~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \s32[4][31]~53_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_32_extended[31]~0_combout\);

-- Location: LCCOMB_X60_Y61_N28
\Y_32_extended[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_32_extended[31]~1_combout\ = (\Y_32_extended[31]~0_combout\) # ((\Equal0~0_combout\ & (\s64[4][15]~517_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[4][15]~517_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_32_extended[31]~1_combout\);

-- Location: LCCOMB_X63_Y62_N18
\s64[5][63]~586\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][63]~586_combout\ = (\B[4]~input_o\ & (\fill64~1_combout\ & (!\Equal0~0_combout\))) # (!\B[4]~input_o\ & (((\s64[4][63]~522_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[4][63]~522_combout\,
	combout => \s64[5][63]~586_combout\);

-- Location: LCCOMB_X63_Y62_N28
\s64[5][63]~587\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][63]~587_combout\ = (\s64[5][63]~586_combout\) # ((\s64[4][47]~525_combout\ & (\B[4]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][63]~586_combout\,
	datab => \s64[4][47]~525_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][63]~587_combout\);

-- Location: LCCOMB_X63_Y62_N14
\Y~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~101_combout\ = (\Y_32_extended[31]~1_combout\ & ((\ExtWord~input_o\) # ((\s64[5][63]~587_combout\ & \Y~4_combout\)))) # (!\Y_32_extended[31]~1_combout\ & (\s64[5][63]~587_combout\ & ((\Y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~1_combout\,
	datab => \s64[5][63]~587_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~4_combout\,
	combout => \Y~101_combout\);

-- Location: LCCOMB_X63_Y62_N16
\s64[5][31]~588\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][31]~588_combout\ = (\B[4]~input_o\ & (((\s64[4][15]~517_combout\ & \Equal0~0_combout\)))) # (!\B[4]~input_o\ & (\s64[4][31]~519_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][31]~519_combout\,
	datab => \B[4]~input_o\,
	datac => \s64[4][15]~517_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[5][31]~588_combout\);

-- Location: LCCOMB_X63_Y62_N26
\s64[5][31]~589\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][31]~589_combout\ = (\s64[5][31]~588_combout\) # ((!\Equal0~0_combout\ & (\s64[4][47]~525_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[4][47]~525_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][31]~588_combout\,
	combout => \s64[5][31]~589_combout\);

-- Location: LCCOMB_X63_Y62_N12
\Y~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~102_combout\ = (\Y~101_combout\) # ((!\ExtWord~input_o\ & (\s64[5][31]~589_combout\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~101_combout\,
	datac => \s64[5][31]~589_combout\,
	datad => \B[5]~input_o\,
	combout => \Y~102_combout\);

-- Location: LCCOMB_X63_Y59_N12
\Y~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~103_combout\ = (\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\ & (\B[5]~input_o\ & !\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~103_combout\);

-- Location: LCCOMB_X66_Y61_N0
\Y~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~104_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & (\fill64~1_combout\)) # (!\Y~5_combout\ & ((\s64[5][32]~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \fill64~1_combout\,
	datac => \s64[5][32]~114_combout\,
	datad => \Y~5_combout\,
	combout => \Y~104_combout\);

-- Location: LCCOMB_X66_Y61_N18
\Y~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~105_combout\ = (\Y~103_combout\ & ((\Y~104_combout\ & ((\s64[5][0]~124_combout\))) # (!\Y~104_combout\ & (\Y_32_extended[31]~1_combout\)))) # (!\Y~103_combout\ & (((\Y~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y_32_extended[31]~1_combout\,
	datac => \s64[5][0]~124_combout\,
	datad => \Y~104_combout\,
	combout => \Y~105_combout\);

-- Location: LCCOMB_X61_Y60_N14
\s64[5][33]~590\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][33]~590_combout\ = (\s64[5][33]~229_combout\) # ((\s64[4][33]~241_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][33]~241_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][33]~229_combout\,
	combout => \s64[5][33]~590_combout\);

-- Location: LCCOMB_X61_Y60_N0
\Y~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~106_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & (\fill64~1_combout\)) # (!\Y~5_combout\ & ((\s64[5][33]~590_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \fill64~1_combout\,
	datac => \s64[5][33]~590_combout\,
	datad => \Y~5_combout\,
	combout => \Y~106_combout\);

-- Location: LCCOMB_X61_Y60_N18
\Y~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~107_combout\ = (\Y~103_combout\ & ((\Y~106_combout\ & ((\s64[5][1]~176_combout\))) # (!\Y~106_combout\ & (\Y_32_extended[31]~1_combout\)))) # (!\Y~103_combout\ & (\Y~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y~106_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \s64[5][1]~176_combout\,
	combout => \Y~107_combout\);

-- Location: LCCOMB_X66_Y62_N4
\s64[5][34]~591\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][34]~591_combout\ = (\s64[5][34]~288_combout\) # ((\s64[4][34]~295_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][34]~295_combout\,
	datab => \s64[5][34]~288_combout\,
	datac => \B[4]~input_o\,
	combout => \s64[5][34]~591_combout\);

-- Location: LCCOMB_X65_Y60_N8
\Y~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~108_combout\ = (\Y~103_combout\ & ((\Y_32_extended[31]~1_combout\) # ((\Y~5_combout\)))) # (!\Y~103_combout\ & (((\s64[5][34]~591_combout\ & !\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y_32_extended[31]~1_combout\,
	datac => \s64[5][34]~591_combout\,
	datad => \Y~5_combout\,
	combout => \Y~108_combout\);

-- Location: LCCOMB_X65_Y60_N2
\Y~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~109_combout\ = (\Y~108_combout\ & ((\s64[5][2]~265_combout\) # ((!\Y~5_combout\)))) # (!\Y~108_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][2]~265_combout\,
	datab => \fill64~1_combout\,
	datac => \Y~108_combout\,
	datad => \Y~5_combout\,
	combout => \Y~109_combout\);

-- Location: LCCOMB_X62_Y59_N18
\s64[5][35]~592\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][35]~592_combout\ = (\s64[5][35]~342_combout\) # ((\s64[4][35]~350_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][35]~350_combout\,
	datab => \s64[5][35]~342_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][35]~592_combout\);

-- Location: LCCOMB_X62_Y59_N28
\Y~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~110_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & (\fill64~1_combout\)) # (!\Y~5_combout\ & ((\s64[5][35]~592_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \fill64~1_combout\,
	datac => \Y~5_combout\,
	datad => \s64[5][35]~592_combout\,
	combout => \Y~110_combout\);

-- Location: LCCOMB_X60_Y61_N22
\Y~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~111_combout\ = (\Y~110_combout\ & ((\s64[5][3]~319_combout\) # ((!\Y~103_combout\)))) # (!\Y~110_combout\ & (((\Y~103_combout\ & \Y_32_extended[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~110_combout\,
	datab => \s64[5][3]~319_combout\,
	datac => \Y~103_combout\,
	datad => \Y_32_extended[31]~1_combout\,
	combout => \Y~111_combout\);

-- Location: LCCOMB_X65_Y60_N12
\s64[5][36]~593\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][36]~593_combout\ = (\s64[5][36]~369_combout\) # ((\s64[4][36]~373_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][36]~373_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][36]~369_combout\,
	combout => \s64[5][36]~593_combout\);

-- Location: LCCOMB_X66_Y60_N26
\Y~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~112_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][36]~593_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][36]~593_combout\,
	datab => \Y~103_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~112_combout\);

-- Location: LCCOMB_X65_Y60_N6
\Y~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~113_combout\ = (\Y~5_combout\ & ((\Y~112_combout\ & ((\s64[5][4]~360_combout\))) # (!\Y~112_combout\ & (\fill64~1_combout\)))) # (!\Y~5_combout\ & (((\Y~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~5_combout\,
	datab => \fill64~1_combout\,
	datac => \s64[5][4]~360_combout\,
	datad => \Y~112_combout\,
	combout => \Y~113_combout\);

-- Location: LCCOMB_X66_Y64_N4
\s64[5][37]~594\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][37]~594_combout\ = (\s64[5][37]~393_combout\) # ((\s64[4][37]~397_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][37]~397_combout\,
	datab => \B[4]~input_o\,
	datad => \s64[5][37]~393_combout\,
	combout => \s64[5][37]~594_combout\);

-- Location: LCCOMB_X66_Y64_N30
\Y~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~114_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & (\fill64~1_combout\)) # (!\Y~5_combout\ & ((\s64[5][37]~594_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \fill64~1_combout\,
	datac => \s64[5][37]~594_combout\,
	datad => \Y~5_combout\,
	combout => \Y~114_combout\);

-- Location: LCCOMB_X66_Y64_N0
\Y~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~115_combout\ = (\Y~114_combout\ & (((\s64[5][5]~384_combout\) # (!\Y~103_combout\)))) # (!\Y~114_combout\ & (\Y_32_extended[31]~1_combout\ & ((\Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~1_combout\,
	datab => \s64[5][5]~384_combout\,
	datac => \Y~114_combout\,
	datad => \Y~103_combout\,
	combout => \Y~115_combout\);

-- Location: LCCOMB_X66_Y63_N2
\s64[5][38]~595\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][38]~595_combout\ = (\s64[5][38]~417_combout\) # ((\s64[4][38]~421_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][38]~421_combout\,
	datac => \s64[5][38]~417_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][38]~595_combout\);

-- Location: LCCOMB_X66_Y63_N4
\Y~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~116_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][38]~595_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \s64[5][38]~595_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~116_combout\);

-- Location: LCCOMB_X66_Y63_N30
\Y~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~117_combout\ = (\Y~116_combout\ & (((\s64[5][6]~408_combout\) # (!\Y~5_combout\)))) # (!\Y~116_combout\ & (\fill64~1_combout\ & ((\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \s64[5][6]~408_combout\,
	datac => \Y~116_combout\,
	datad => \Y~5_combout\,
	combout => \Y~117_combout\);

-- Location: LCCOMB_X63_Y61_N14
\s64[5][39]~596\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][39]~596_combout\ = (\s64[5][39]~441_combout\) # ((\s64[4][39]~445_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][39]~445_combout\,
	datab => \s64[5][39]~441_combout\,
	datac => \B[4]~input_o\,
	combout => \s64[5][39]~596_combout\);

-- Location: LCCOMB_X63_Y61_N16
\Y~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~118_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & (\fill64~1_combout\)) # (!\Y~5_combout\ & ((\s64[5][39]~596_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Y~103_combout\,
	datac => \s64[5][39]~596_combout\,
	datad => \Y~5_combout\,
	combout => \Y~118_combout\);

-- Location: LCCOMB_X63_Y61_N18
\Y~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~119_combout\ = (\Y~118_combout\ & (((\s64[5][7]~432_combout\) # (!\Y~103_combout\)))) # (!\Y~118_combout\ & (\Y_32_extended[31]~1_combout\ & (\Y~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~1_combout\,
	datab => \Y~118_combout\,
	datac => \Y~103_combout\,
	datad => \s64[5][7]~432_combout\,
	combout => \Y~119_combout\);

-- Location: LCCOMB_X66_Y62_N14
\s64[5][40]~597\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][40]~597_combout\ = (\s64[5][40]~453_combout\) # ((\s64[4][40]~455_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][40]~453_combout\,
	datab => \s64[4][40]~455_combout\,
	datac => \B[4]~input_o\,
	combout => \s64[5][40]~597_combout\);

-- Location: LCCOMB_X67_Y62_N6
\Y~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~120_combout\ = (\Y~103_combout\ & ((\Y~5_combout\) # ((\Y_32_extended[31]~1_combout\)))) # (!\Y~103_combout\ & (!\Y~5_combout\ & ((\s64[5][40]~597_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y~5_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \s64[5][40]~597_combout\,
	combout => \Y~120_combout\);

-- Location: LCCOMB_X66_Y60_N20
\Y~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~121_combout\ = (\Y~120_combout\ & (((\s64[5][8]~450_combout\) # (!\Y~5_combout\)))) # (!\Y~120_combout\ & (\fill64~1_combout\ & ((\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Y~120_combout\,
	datac => \s64[5][8]~450_combout\,
	datad => \Y~5_combout\,
	combout => \Y~121_combout\);

-- Location: LCCOMB_X60_Y60_N6
\s64[5][41]~598\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][41]~598_combout\ = (\s64[5][41]~463_combout\) # ((\s64[4][41]~465_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][41]~465_combout\,
	datac => \s64[5][41]~463_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][41]~598_combout\);

-- Location: LCCOMB_X66_Y60_N6
\Y~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~122_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & (\fill64~1_combout\)) # (!\Y~5_combout\ & ((\s64[5][41]~598_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \s64[5][41]~598_combout\,
	datac => \Y~103_combout\,
	datad => \Y~5_combout\,
	combout => \Y~122_combout\);

-- Location: LCCOMB_X66_Y60_N0
\Y~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~123_combout\ = (\Y~103_combout\ & ((\Y~122_combout\ & ((\s64[5][9]~460_combout\))) # (!\Y~122_combout\ & (\Y_32_extended[31]~1_combout\)))) # (!\Y~103_combout\ & (((\Y~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~1_combout\,
	datab => \Y~103_combout\,
	datac => \s64[5][9]~460_combout\,
	datad => \Y~122_combout\,
	combout => \Y~123_combout\);

-- Location: LCCOMB_X65_Y65_N22
\s64[5][42]~599\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][42]~599_combout\ = (\s64[5][42]~473_combout\) # ((!\B[4]~input_o\ & \s64[4][42]~475_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][42]~473_combout\,
	datab => \B[4]~input_o\,
	datac => \s64[4][42]~475_combout\,
	combout => \s64[5][42]~599_combout\);

-- Location: LCCOMB_X66_Y63_N8
\Y~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~124_combout\ = (\Y~103_combout\ & ((\Y_32_extended[31]~1_combout\) # ((\Y~5_combout\)))) # (!\Y~103_combout\ & (((\s64[5][42]~599_combout\ & !\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y_32_extended[31]~1_combout\,
	datac => \s64[5][42]~599_combout\,
	datad => \Y~5_combout\,
	combout => \Y~124_combout\);

-- Location: LCCOMB_X66_Y63_N18
\Y~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~125_combout\ = (\Y~124_combout\ & ((\s64[5][10]~470_combout\) # ((!\Y~5_combout\)))) # (!\Y~124_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][10]~470_combout\,
	datab => \Y~124_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~125_combout\);

-- Location: LCCOMB_X62_Y60_N14
\s64[5][43]~600\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][43]~600_combout\ = (\s64[5][43]~483_combout\) # ((\s64[4][43]~485_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][43]~485_combout\,
	datac => \B[4]~input_o\,
	datad => \s64[5][43]~483_combout\,
	combout => \s64[5][43]~600_combout\);

-- Location: LCCOMB_X62_Y60_N8
\Y~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~126_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & ((\fill64~1_combout\))) # (!\Y~5_combout\ & (\s64[5][43]~600_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \s64[5][43]~600_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~126_combout\);

-- Location: LCCOMB_X62_Y60_N26
\Y~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~127_combout\ = (\Y~126_combout\ & (((\s64[5][11]~480_combout\) # (!\Y~103_combout\)))) # (!\Y~126_combout\ & (\Y_32_extended[31]~1_combout\ & ((\Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~1_combout\,
	datab => \s64[5][11]~480_combout\,
	datac => \Y~126_combout\,
	datad => \Y~103_combout\,
	combout => \Y~127_combout\);

-- Location: LCCOMB_X62_Y59_N22
\s64[5][44]~601\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][44]~601_combout\ = (\s64[5][44]~493_combout\) # ((\s64[4][44]~495_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][44]~495_combout\,
	datac => \s64[5][44]~493_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][44]~601_combout\);

-- Location: LCCOMB_X66_Y60_N2
\Y~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~128_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][44]~601_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][44]~601_combout\,
	datab => \Y~103_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~128_combout\);

-- Location: LCCOMB_X66_Y60_N4
\Y~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~129_combout\ = (\Y~128_combout\ & ((\s64[5][12]~490_combout\) # ((!\Y~5_combout\)))) # (!\Y~128_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][12]~490_combout\,
	datab => \Y~128_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~129_combout\);

-- Location: LCCOMB_X60_Y59_N14
\s64[5][45]~602\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][45]~602_combout\ = (\s64[5][45]~503_combout\) # ((\s64[4][45]~505_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][45]~503_combout\,
	datac => \s64[4][45]~505_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][45]~602_combout\);

-- Location: LCCOMB_X60_Y59_N16
\Y~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~130_combout\ = (\Y~5_combout\ & (((\fill64~1_combout\) # (\Y~103_combout\)))) # (!\Y~5_combout\ & (\s64[5][45]~602_combout\ & ((!\Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~5_combout\,
	datab => \s64[5][45]~602_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~103_combout\,
	combout => \Y~130_combout\);

-- Location: LCCOMB_X60_Y59_N2
\Y~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~131_combout\ = (\Y~130_combout\ & ((\s64[5][13]~500_combout\) # ((!\Y~103_combout\)))) # (!\Y~130_combout\ & (((\Y_32_extended[31]~1_combout\ & \Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~130_combout\,
	datab => \s64[5][13]~500_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~103_combout\,
	combout => \Y~131_combout\);

-- Location: LCCOMB_X65_Y63_N2
\s64[5][46]~603\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][46]~603_combout\ = (\s64[5][46]~513_combout\) # ((\s64[4][46]~515_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][46]~513_combout\,
	datab => \s64[4][46]~515_combout\,
	datad => \B[4]~input_o\,
	combout => \s64[5][46]~603_combout\);

-- Location: LCCOMB_X66_Y60_N22
\Y~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~132_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][46]~603_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][46]~603_combout\,
	datab => \Y~103_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~132_combout\);

-- Location: LCCOMB_X66_Y60_N16
\Y~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~133_combout\ = (\Y~5_combout\ & ((\Y~132_combout\ & ((\s64[5][14]~510_combout\))) # (!\Y~132_combout\ & (\fill64~1_combout\)))) # (!\Y~5_combout\ & (((\Y~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Y~5_combout\,
	datac => \Y~132_combout\,
	datad => \s64[5][14]~510_combout\,
	combout => \Y~133_combout\);

-- Location: LCCOMB_X63_Y62_N6
\s64[5][47]~604\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][47]~604_combout\ = (\s64[5][47]~523_combout\) # ((!\B[4]~input_o\ & \s64[4][47]~525_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][47]~523_combout\,
	datab => \B[4]~input_o\,
	datac => \s64[4][47]~525_combout\,
	combout => \s64[5][47]~604_combout\);

-- Location: LCCOMB_X63_Y62_N0
\Y~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~134_combout\ = (\Y~5_combout\ & ((\fill64~1_combout\) # ((\Y~103_combout\)))) # (!\Y~5_combout\ & (((!\Y~103_combout\ & \s64[5][47]~604_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Y~5_combout\,
	datac => \Y~103_combout\,
	datad => \s64[5][47]~604_combout\,
	combout => \Y~134_combout\);

-- Location: LCCOMB_X63_Y62_N2
\Y~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~135_combout\ = (\Y~134_combout\ & (((\s64[5][15]~520_combout\) # (!\Y~103_combout\)))) # (!\Y~134_combout\ & (\Y_32_extended[31]~1_combout\ & (\Y~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~1_combout\,
	datab => \Y~134_combout\,
	datac => \Y~103_combout\,
	datad => \s64[5][15]~520_combout\,
	combout => \Y~135_combout\);

-- Location: LCCOMB_X66_Y61_N20
\Y~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~136_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][48]~527_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][48]~527_combout\,
	datab => \Y_32_extended[31]~1_combout\,
	datac => \Y~103_combout\,
	datad => \Y~5_combout\,
	combout => \Y~136_combout\);

-- Location: LCCOMB_X66_Y61_N6
\Y~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~137_combout\ = (\Y~136_combout\ & ((\s64[5][16]~529_combout\) # ((!\Y~5_combout\)))) # (!\Y~136_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][16]~529_combout\,
	datab => \Y~136_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~137_combout\);

-- Location: LCCOMB_X61_Y60_N28
\Y~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~138_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & ((\fill64~1_combout\))) # (!\Y~5_combout\ & (\s64[5][49]~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][49]~531_combout\,
	datab => \fill64~1_combout\,
	datac => \Y~103_combout\,
	datad => \Y~5_combout\,
	combout => \Y~138_combout\);

-- Location: LCCOMB_X61_Y60_N22
\Y~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~139_combout\ = (\Y~103_combout\ & ((\Y~138_combout\ & (\s64[5][17]~533_combout\)) # (!\Y~138_combout\ & ((\Y_32_extended[31]~1_combout\))))) # (!\Y~103_combout\ & (((\Y~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \s64[5][17]~533_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~138_combout\,
	combout => \Y~139_combout\);

-- Location: LCCOMB_X65_Y59_N28
\Y~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~140_combout\ = (\Y~103_combout\ & ((\Y_32_extended[31]~1_combout\) # ((\Y~5_combout\)))) # (!\Y~103_combout\ & (((!\Y~5_combout\ & \s64[5][50]~535_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y_32_extended[31]~1_combout\,
	datac => \Y~5_combout\,
	datad => \s64[5][50]~535_combout\,
	combout => \Y~140_combout\);

-- Location: LCCOMB_X65_Y59_N30
\Y~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~141_combout\ = (\Y~140_combout\ & (((\s64[5][18]~537_combout\) # (!\Y~5_combout\)))) # (!\Y~140_combout\ & (\fill64~1_combout\ & (\Y~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Y~140_combout\,
	datac => \Y~5_combout\,
	datad => \s64[5][18]~537_combout\,
	combout => \Y~141_combout\);

-- Location: LCCOMB_X65_Y59_N0
\Y~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~142_combout\ = (\Y~5_combout\ & (((\fill64~1_combout\) # (\Y~103_combout\)))) # (!\Y~5_combout\ & (\s64[5][51]~539_combout\ & ((!\Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][51]~539_combout\,
	datab => \Y~5_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~103_combout\,
	combout => \Y~142_combout\);

-- Location: LCCOMB_X65_Y59_N2
\Y~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~143_combout\ = (\Y~103_combout\ & ((\Y~142_combout\ & (\s64[5][19]~541_combout\)) # (!\Y~142_combout\ & ((\Y_32_extended[31]~1_combout\))))) # (!\Y~103_combout\ & (((\Y~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \s64[5][19]~541_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~142_combout\,
	combout => \Y~143_combout\);

-- Location: LCCOMB_X66_Y60_N10
\Y~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~144_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][52]~543_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][52]~543_combout\,
	datab => \Y~103_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~144_combout\);

-- Location: LCCOMB_X66_Y60_N28
\Y~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~145_combout\ = (\Y~144_combout\ & ((\s64[5][20]~545_combout\) # ((!\Y~5_combout\)))) # (!\Y~144_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~144_combout\,
	datab => \s64[5][20]~545_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~145_combout\);

-- Location: LCCOMB_X66_Y64_N2
\Y~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~146_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & ((\fill64~1_combout\))) # (!\Y~5_combout\ & (\s64[5][53]~547_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \s64[5][53]~547_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~146_combout\);

-- Location: LCCOMB_X66_Y64_N12
\Y~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~147_combout\ = (\Y~103_combout\ & ((\Y~146_combout\ & ((\s64[5][21]~549_combout\))) # (!\Y~146_combout\ & (\Y_32_extended[31]~1_combout\)))) # (!\Y~103_combout\ & (\Y~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y~146_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \s64[5][21]~549_combout\,
	combout => \Y~147_combout\);

-- Location: LCCOMB_X66_Y63_N20
\Y~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~148_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][54]~551_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \s64[5][54]~551_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~148_combout\);

-- Location: LCCOMB_X66_Y63_N22
\Y~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~149_combout\ = (\Y~148_combout\ & ((\s64[5][22]~553_combout\) # ((!\Y~5_combout\)))) # (!\Y~148_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~148_combout\,
	datab => \s64[5][22]~553_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~149_combout\);

-- Location: LCCOMB_X63_Y61_N4
\Y~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~150_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & ((\fill64~1_combout\))) # (!\Y~5_combout\ & (\s64[5][55]~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][55]~555_combout\,
	datab => \Y~103_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~150_combout\);

-- Location: LCCOMB_X63_Y61_N22
\Y~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~151_combout\ = (\Y~103_combout\ & ((\Y~150_combout\ & (\s64[5][23]~557_combout\)) # (!\Y~150_combout\ & ((\Y_32_extended[31]~1_combout\))))) # (!\Y~103_combout\ & (((\Y~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][23]~557_combout\,
	datab => \Y~103_combout\,
	datac => \Y~150_combout\,
	datad => \Y_32_extended[31]~1_combout\,
	combout => \Y~151_combout\);

-- Location: LCCOMB_X66_Y60_N30
\Y~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~152_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][56]~559_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][56]~559_combout\,
	datab => \Y~103_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~152_combout\);

-- Location: LCCOMB_X66_Y60_N8
\Y~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~153_combout\ = (\Y~152_combout\ & ((\s64[5][24]~561_combout\) # ((!\Y~5_combout\)))) # (!\Y~152_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~152_combout\,
	datab => \s64[5][24]~561_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~153_combout\);

-- Location: LCCOMB_X65_Y59_N20
\Y~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~154_combout\ = (\Y~5_combout\ & ((\fill64~1_combout\) # ((\Y~103_combout\)))) # (!\Y~5_combout\ & (((\s64[5][57]~563_combout\ & !\Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \s64[5][57]~563_combout\,
	datac => \Y~5_combout\,
	datad => \Y~103_combout\,
	combout => \Y~154_combout\);

-- Location: LCCOMB_X65_Y59_N14
\Y~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~155_combout\ = (\Y~103_combout\ & ((\Y~154_combout\ & ((\s64[5][25]~565_combout\))) # (!\Y~154_combout\ & (\Y_32_extended[31]~1_combout\)))) # (!\Y~103_combout\ & (\Y~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y~154_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \s64[5][25]~565_combout\,
	combout => \Y~155_combout\);

-- Location: LCCOMB_X66_Y60_N18
\Y~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~156_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][58]~567_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][58]~567_combout\,
	datab => \Y~103_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~156_combout\);

-- Location: LCCOMB_X66_Y64_N6
\Y~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~157_combout\ = (\Y~156_combout\ & (((\s64[5][26]~569_combout\) # (!\Y~5_combout\)))) # (!\Y~156_combout\ & (\fill64~1_combout\ & ((\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \fill64~1_combout\,
	datac => \s64[5][26]~569_combout\,
	datad => \Y~5_combout\,
	combout => \Y~157_combout\);

-- Location: LCCOMB_X62_Y60_N28
\Y~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~158_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & ((\fill64~1_combout\))) # (!\Y~5_combout\ & (\s64[5][59]~571_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \s64[5][59]~571_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~158_combout\);

-- Location: LCCOMB_X62_Y60_N6
\Y~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~159_combout\ = (\Y~158_combout\ & (((\s64[5][27]~573_combout\) # (!\Y~103_combout\)))) # (!\Y~158_combout\ & (\Y_32_extended[31]~1_combout\ & ((\Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~1_combout\,
	datab => \Y~158_combout\,
	datac => \s64[5][27]~573_combout\,
	datad => \Y~103_combout\,
	combout => \Y~159_combout\);

-- Location: LCCOMB_X66_Y60_N12
\Y~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~160_combout\ = (\Y~103_combout\ & (((\Y_32_extended[31]~1_combout\) # (\Y~5_combout\)))) # (!\Y~103_combout\ & (\s64[5][60]~575_combout\ & ((!\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][60]~575_combout\,
	datab => \Y~103_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~160_combout\);

-- Location: LCCOMB_X66_Y60_N14
\Y~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~161_combout\ = (\Y~160_combout\ & ((\s64[5][28]~577_combout\) # ((!\Y~5_combout\)))) # (!\Y~160_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~160_combout\,
	datab => \s64[5][28]~577_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~161_combout\);

-- Location: LCCOMB_X60_Y59_N4
\Y~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~162_combout\ = (\Y~5_combout\ & (((\fill64~1_combout\) # (\Y~103_combout\)))) # (!\Y~5_combout\ & (\s64[5][61]~579_combout\ & ((!\Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~5_combout\,
	datab => \s64[5][61]~579_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~103_combout\,
	combout => \Y~162_combout\);

-- Location: LCCOMB_X60_Y59_N6
\Y~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~163_combout\ = (\Y~162_combout\ & (((\s64[5][29]~581_combout\) # (!\Y~103_combout\)))) # (!\Y~162_combout\ & (\Y_32_extended[31]~1_combout\ & ((\Y~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_32_extended[31]~1_combout\,
	datab => \s64[5][29]~581_combout\,
	datac => \Y~162_combout\,
	datad => \Y~103_combout\,
	combout => \Y~163_combout\);

-- Location: LCCOMB_X65_Y63_N28
\Y~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~164_combout\ = (\Y~103_combout\ & ((\Y_32_extended[31]~1_combout\) # ((\Y~5_combout\)))) # (!\Y~103_combout\ & (((\s64[5][62]~583_combout\ & !\Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y_32_extended[31]~1_combout\,
	datac => \s64[5][62]~583_combout\,
	datad => \Y~5_combout\,
	combout => \Y~164_combout\);

-- Location: LCCOMB_X65_Y63_N30
\Y~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~165_combout\ = (\Y~164_combout\ & ((\s64[5][30]~585_combout\) # ((!\Y~5_combout\)))) # (!\Y~164_combout\ & (((\fill64~1_combout\ & \Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][30]~585_combout\,
	datab => \Y~164_combout\,
	datac => \fill64~1_combout\,
	datad => \Y~5_combout\,
	combout => \Y~165_combout\);

-- Location: LCCOMB_X63_Y62_N20
\Y~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~166_combout\ = (\Y~103_combout\ & (((\Y~5_combout\)))) # (!\Y~103_combout\ & ((\Y~5_combout\ & (\fill64~1_combout\)) # (!\Y~5_combout\ & ((\s64[5][63]~587_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \Y~103_combout\,
	datac => \Y~5_combout\,
	datad => \s64[5][63]~587_combout\,
	combout => \Y~166_combout\);

-- Location: LCCOMB_X63_Y62_N22
\Y~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~167_combout\ = (\Y~103_combout\ & ((\Y~166_combout\ & (\s64[5][31]~589_combout\)) # (!\Y~166_combout\ & ((\Y_32_extended[31]~1_combout\))))) # (!\Y~103_combout\ & (((\Y~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][31]~589_combout\,
	datab => \Y~103_combout\,
	datac => \Y_32_extended[31]~1_combout\,
	datad => \Y~166_combout\,
	combout => \Y~167_combout\);

-- Location: IOIBUF_X49_Y0_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X105_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X115_Y26_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
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

-- Location: IOIBUF_X83_Y0_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X98_Y0_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
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

-- Location: IOIBUF_X115_Y21_N15
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
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


