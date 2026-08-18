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

-- DATE "04/05/2026 23:19:00"

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
-- B[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \srl64[1][52]~100_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \srl64[1][51]~101_combout\ : std_logic;
SIGNAL \srl64[1][52]~102_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \srl64[3][32]~96_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \srl64[1][53]~98_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \srl64[1][54]~97_combout\ : std_logic;
SIGNAL \srl64[3][48]~99_combout\ : std_logic;
SIGNAL \sll64[3][5]~46_combout\ : std_logic;
SIGNAL \srl64[4][55]~94_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \srl64[1][50]~88_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \srl64[1][49]~89_combout\ : std_logic;
SIGNAL \srl64[1][50]~90_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \srl64[1][48]~91_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \srl64[1][47]~92_combout\ : std_logic;
SIGNAL \srl64[1][48]~93_combout\ : std_logic;
SIGNAL \srl64[3][48]~95_combout\ : std_logic;
SIGNAL \srl64[3][48]~103_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \srl64[1][56]~77_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \srl64[1][55]~78_combout\ : std_logic;
SIGNAL \srl64[1][56]~79_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \srl64[1][57]~75_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \srl64[1][58]~74_combout\ : std_logic;
SIGNAL \srl64[1][58]~76_combout\ : std_logic;
SIGNAL \srl64[3][56]~80_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \srl64[1][59]~84_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \srl64[1][60]~83_combout\ : std_logic;
SIGNAL \srl64[1][60]~85_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \sra64[0][63]~56_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \sra64[0][63]~57_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \srl64[1][61]~81_combout\ : std_logic;
SIGNAL \srl64[1][62]~82_combout\ : std_logic;
SIGNAL \srl64[2][60]~86_combout\ : std_logic;
SIGNAL \srl64[3][56]~87_combout\ : std_logic;
SIGNAL \srl64[4][48]~104_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \srl64[1][46]~126_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \srl64[1][45]~127_combout\ : std_logic;
SIGNAL \srl64[1][46]~128_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \srl64[1][44]~129_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \srl64[1][43]~130_combout\ : std_logic;
SIGNAL \srl64[1][44]~131_combout\ : std_logic;
SIGNAL \srl64[3][40]~132_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \srl64[1][35]~112_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \srl64[1][36]~111_combout\ : std_logic;
SIGNAL \srl64[1][36]~113_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \srl64[1][37]~109_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \srl64[1][38]~108_combout\ : std_logic;
SIGNAL \srl64[1][38]~110_combout\ : std_logic;
SIGNAL \srl64[3][32]~114_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \srl64[1][32]~116_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \srl64[1][32]~115_combout\ : std_logic;
SIGNAL \srl64[1][32]~117_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \srl64[1][34]~105_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \srl64[1][33]~106_combout\ : std_logic;
SIGNAL \srl64[3][32]~107_combout\ : std_logic;
SIGNAL \srl64[3][32]~118_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \srl64[1][42]~122_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \srl64[1][41]~123_combout\ : std_logic;
SIGNAL \srl64[1][42]~124_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \srl64[1][40]~119_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \srl64[1][39]~120_combout\ : std_logic;
SIGNAL \srl64[1][40]~121_combout\ : std_logic;
SIGNAL \srl64[3][40]~125_combout\ : std_logic;
SIGNAL \srl64[4][32]~133_combout\ : std_logic;
SIGNAL \Y_srl[0]~6_combout\ : std_logic;
SIGNAL \srl64[2][8]~53_combout\ : std_logic;
SIGNAL \srl64[2][9]~52_combout\ : std_logic;
SIGNAL \srl64[5][0]~54_combout\ : std_logic;
SIGNAL \srl64[5][0]~55_combout\ : std_logic;
SIGNAL \srl64[4][1]~56_combout\ : std_logic;
SIGNAL \srl64[5][0]~57_combout\ : std_logic;
SIGNAL \srl64[2][4]~49_combout\ : std_logic;
SIGNAL \srl64[2][4]~50_combout\ : std_logic;
SIGNAL \srl64[2][12]~47_combout\ : std_logic;
SIGNAL \srl64[2][13]~46_combout\ : std_logic;
SIGNAL \srl64[2][12]~48_combout\ : std_logic;
SIGNAL \srl64[5][0]~51_combout\ : std_logic;
SIGNAL \srl64[5][0]~58_combout\ : std_logic;
SIGNAL \srl64[2][20]~63_combout\ : std_logic;
SIGNAL \srl64[2][21]~62_combout\ : std_logic;
SIGNAL \srl64[2][20]~64_combout\ : std_logic;
SIGNAL \srl64[2][28]~59_combout\ : std_logic;
SIGNAL \srl64[2][28]~60_combout\ : std_logic;
SIGNAL \srl64[2][28]~61_combout\ : std_logic;
SIGNAL \srl64[4][16]~65_combout\ : std_logic;
SIGNAL \srl64[2][24]~67_combout\ : std_logic;
SIGNAL \srl64[2][25]~66_combout\ : std_logic;
SIGNAL \srl64[2][24]~68_combout\ : std_logic;
SIGNAL \srl64[2][17]~69_combout\ : std_logic;
SIGNAL \srl64[2][16]~70_combout\ : std_logic;
SIGNAL \srl64[2][16]~71_combout\ : std_logic;
SIGNAL \srl64[4][16]~72_combout\ : std_logic;
SIGNAL \srl64[5][0]~73_combout\ : std_logic;
SIGNAL \Mux63~5_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \srl64[5][62]~134_combout\ : std_logic;
SIGNAL \shamt[5]~0_combout\ : std_logic;
SIGNAL \sll64[6][0]~47_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Mux63~2_combout\ : std_logic;
SIGNAL \srl64[6][32]~135_combout\ : std_logic;
SIGNAL \sra64[0][63]~58_combout\ : std_logic;
SIGNAL \sra64[6][32]~125_combout\ : std_logic;
SIGNAL \Mux63~3_combout\ : std_logic;
SIGNAL \Mux63~4_combout\ : std_logic;
SIGNAL \sll64[6][1]~48_combout\ : std_logic;
SIGNAL \sll64[1][1]~49_combout\ : std_logic;
SIGNAL \sll64[6][1]~50_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \srl64[3][49]~158_combout\ : std_logic;
SIGNAL \srl64[1][49]~155_combout\ : std_logic;
SIGNAL \srl64[1][51]~156_combout\ : std_logic;
SIGNAL \srl64[3][49]~157_combout\ : std_logic;
SIGNAL \srl64[1][53]~159_combout\ : std_logic;
SIGNAL \srl64[3][49]~160_combout\ : std_logic;
SIGNAL \srl64[1][61]~152_combout\ : std_logic;
SIGNAL \srl64[1][59]~149_combout\ : std_logic;
SIGNAL \sra64[3][57]~59_combout\ : std_logic;
SIGNAL \sra64[3][57]~60_combout\ : std_logic;
SIGNAL \srl64[1][57]~150_combout\ : std_logic;
SIGNAL \sra64[3][57]~61_combout\ : std_logic;
SIGNAL \sra64[5][33]~62_combout\ : std_logic;
SIGNAL \srl64[1][45]~183_combout\ : std_logic;
SIGNAL \srl64[1][47]~182_combout\ : std_logic;
SIGNAL \srl64[3][41]~184_combout\ : std_logic;
SIGNAL \srl64[3][33]~173_combout\ : std_logic;
SIGNAL \srl64[1][37]~175_combout\ : std_logic;
SIGNAL \srl64[1][39]~174_combout\ : std_logic;
SIGNAL \srl64[3][33]~176_combout\ : std_logic;
SIGNAL \srl64[1][33]~177_combout\ : std_logic;
SIGNAL \srl64[3][33]~178_combout\ : std_logic;
SIGNAL \srl64[1][41]~179_combout\ : std_logic;
SIGNAL \srl64[1][43]~180_combout\ : std_logic;
SIGNAL \srl64[3][41]~181_combout\ : std_logic;
SIGNAL \srl64[4][33]~185_combout\ : std_logic;
SIGNAL \sra64[5][33]~63_combout\ : std_logic;
SIGNAL \srl64[2][22]~143_combout\ : std_logic;
SIGNAL \srl64[2][21]~144_combout\ : std_logic;
SIGNAL \srl64[2][18]~145_combout\ : std_logic;
SIGNAL \srl64[2][17]~146_combout\ : std_logic;
SIGNAL \srl64[3][17]~147_combout\ : std_logic;
SIGNAL \srl64[2][26]~140_combout\ : std_logic;
SIGNAL \srl64[2][25]~141_combout\ : std_logic;
SIGNAL \srl64[1][31]~136_combout\ : std_logic;
SIGNAL \srl64[1][31]~137_combout\ : std_logic;
SIGNAL \srl64[2][29]~138_combout\ : std_logic;
SIGNAL \srl64[2][29]~139_combout\ : std_logic;
SIGNAL \srl64[4][25]~142_combout\ : std_logic;
SIGNAL \srl64[4][17]~148_combout\ : std_logic;
SIGNAL \srl64[2][5]~163_combout\ : std_logic;
SIGNAL \srl64[2][6]~162_combout\ : std_logic;
SIGNAL \srl64[4][1]~164_combout\ : std_logic;
SIGNAL \srl64[2][14]~165_combout\ : std_logic;
SIGNAL \srl64[2][13]~166_combout\ : std_logic;
SIGNAL \srl64[4][1]~167_combout\ : std_logic;
SIGNAL \srl64[2][10]~168_combout\ : std_logic;
SIGNAL \srl64[4][1]~169_combout\ : std_logic;
SIGNAL \srl64[4][1]~170_combout\ : std_logic;
SIGNAL \srl64[4][1]~171_combout\ : std_logic;
SIGNAL \srl64[4][1]~172_combout\ : std_logic;
SIGNAL \Y_sra[1]~4_combout\ : std_logic;
SIGNAL \Y_sra[1]~6_combout\ : std_logic;
SIGNAL \srl64[3][57]~151_combout\ : std_logic;
SIGNAL \srl64[2][61]~153_combout\ : std_logic;
SIGNAL \srl64[3][57]~154_combout\ : std_logic;
SIGNAL \srl64[4][49]~161_combout\ : std_logic;
SIGNAL \srl64[6][33]~186_combout\ : std_logic;
SIGNAL \Y_srl[1]~13_combout\ : std_logic;
SIGNAL \Y_srl[1]~12_combout\ : std_logic;
SIGNAL \Y_srl[1]~7_combout\ : std_logic;
SIGNAL \Y_srl[1]~8_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \sll64[2][2]~51_combout\ : std_logic;
SIGNAL \sll64[2][2]~52_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \srl64[2][15]~204_combout\ : std_logic;
SIGNAL \srl64[2][14]~205_combout\ : std_logic;
SIGNAL \srl64[2][11]~202_combout\ : std_logic;
SIGNAL \srl64[3][10]~203_combout\ : std_logic;
SIGNAL \srl64[3][10]~206_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \srl64[1][4]~198_combout\ : std_logic;
SIGNAL \sll64[4][16]~53_combout\ : std_logic;
SIGNAL \srl64[1][2]~201_combout\ : std_logic;
SIGNAL \srl64[2][6]~199_combout\ : std_logic;
SIGNAL \srl64[2][6]~200_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \Mux61~7_combout\ : std_logic;
SIGNAL \srl64[1][54]~208_combout\ : std_logic;
SIGNAL \srl64[3][50]~209_combout\ : std_logic;
SIGNAL \srl64[3][50]~207_combout\ : std_logic;
SIGNAL \srl64[3][50]~210_combout\ : std_logic;
SIGNAL \sra64[3][58]~64_combout\ : std_logic;
SIGNAL \sra64[3][58]~65_combout\ : std_logic;
SIGNAL \srl64[4][50]~218_combout\ : std_logic;
SIGNAL \Mux61~9_combout\ : std_logic;
SIGNAL \srl64[3][34]~211_combout\ : std_logic;
SIGNAL \srl64[3][34]~212_combout\ : std_logic;
SIGNAL \srl64[1][34]~213_combout\ : std_logic;
SIGNAL \srl64[3][34]~214_combout\ : std_logic;
SIGNAL \srl64[3][42]~216_combout\ : std_logic;
SIGNAL \srl64[3][42]~215_combout\ : std_logic;
SIGNAL \srl64[4][34]~217_combout\ : std_logic;
SIGNAL \Mux61~8_combout\ : std_logic;
SIGNAL \Mux61~10_combout\ : std_logic;
SIGNAL \Mux61~11_combout\ : std_logic;
SIGNAL \sra64[5][34]~66_combout\ : std_logic;
SIGNAL \sra64[5][34]~67_combout\ : std_logic;
SIGNAL \sra64[6][34]~126_combout\ : std_logic;
SIGNAL \Mux61~12_combout\ : std_logic;
SIGNAL \srl64[2][19]~194_combout\ : std_logic;
SIGNAL \srl64[2][18]~195_combout\ : std_logic;
SIGNAL \srl64[2][23]~192_combout\ : std_logic;
SIGNAL \srl64[2][22]~193_combout\ : std_logic;
SIGNAL \srl64[3][18]~196_combout\ : std_logic;
SIGNAL \srl64[2][30]~187_combout\ : std_logic;
SIGNAL \srl64[2][30]~188_combout\ : std_logic;
SIGNAL \srl64[2][27]~189_combout\ : std_logic;
SIGNAL \srl64[2][26]~190_combout\ : std_logic;
SIGNAL \srl64[4][26]~191_combout\ : std_logic;
SIGNAL \srl64[4][18]~197_combout\ : std_logic;
SIGNAL \Mux61~13_combout\ : std_logic;
SIGNAL \Mux60~12_combout\ : std_logic;
SIGNAL \Mux61~14_combout\ : std_logic;
SIGNAL \sll64[2][3]~54_combout\ : std_logic;
SIGNAL \sll64[2][3]~55_combout\ : std_logic;
SIGNAL \srl64[3][43]~236_combout\ : std_logic;
SIGNAL \srl64[3][35]~238_combout\ : std_logic;
SIGNAL \srl64[3][35]~239_combout\ : std_logic;
SIGNAL \srl64[1][35]~240_combout\ : std_logic;
SIGNAL \srl64[3][35]~241_combout\ : std_logic;
SIGNAL \srl64[3][43]~237_combout\ : std_logic;
SIGNAL \srl64[4][35]~365_combout\ : std_logic;
SIGNAL \sra64[3][59]~68_combout\ : std_logic;
SIGNAL \sra64[4][51]~69_combout\ : std_logic;
SIGNAL \srl64[1][55]~233_combout\ : std_logic;
SIGNAL \srl64[3][51]~234_combout\ : std_logic;
SIGNAL \srl64[3][51]~232_combout\ : std_logic;
SIGNAL \srl64[3][51]~235_combout\ : std_logic;
SIGNAL \sra64[4][51]~70_combout\ : std_logic;
SIGNAL \sra64[5][35]~71_combout\ : std_logic;
SIGNAL \sra64[6][35]~127_combout\ : std_logic;
SIGNAL \srl64[3][59]~242_combout\ : std_logic;
SIGNAL \srl64[4][51]~243_combout\ : std_logic;
SIGNAL \Mux60~7_combout\ : std_logic;
SIGNAL \Mux60~8_combout\ : std_logic;
SIGNAL \Mux60~9_combout\ : std_logic;
SIGNAL \srl64[2][23]~222_combout\ : std_logic;
SIGNAL \srl64[2][19]~223_combout\ : std_logic;
SIGNAL \srl64[3][19]~224_combout\ : std_logic;
SIGNAL \srl64[3][27]~219_combout\ : std_logic;
SIGNAL \srl64[2][27]~220_combout\ : std_logic;
SIGNAL \srl64[3][27]~221_combout\ : std_logic;
SIGNAL \srl64[4][19]~225_combout\ : std_logic;
SIGNAL \srl64[1][5]~226_combout\ : std_logic;
SIGNAL \srl64[2][7]~227_combout\ : std_logic;
SIGNAL \srl64[1][3]~228_combout\ : std_logic;
SIGNAL \Mux60~4_combout\ : std_logic;
SIGNAL \srl64[3][11]~229_combout\ : std_logic;
SIGNAL \srl64[2][15]~230_combout\ : std_logic;
SIGNAL \srl64[3][11]~231_combout\ : std_logic;
SIGNAL \Mux60~5_combout\ : std_logic;
SIGNAL \Mux60~6_combout\ : std_logic;
SIGNAL \Mux60~10_combout\ : std_logic;
SIGNAL \Mux60~11_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \sll64[3][4]~57_combout\ : std_logic;
SIGNAL \sll64[2][4]~58_combout\ : std_logic;
SIGNAL \sll64[2][4]~59_combout\ : std_logic;
SIGNAL \sll64[2][4]~60_combout\ : std_logic;
SIGNAL \sll64[3][4]~313_combout\ : std_logic;
SIGNAL \sll64[5][4]~314_combout\ : std_logic;
SIGNAL \Mux59~6_combout\ : std_logic;
SIGNAL \srl64[4][53]~259_combout\ : std_logic;
SIGNAL \srl64[4][52]~260_combout\ : std_logic;
SIGNAL \srl64[3][52]~258_combout\ : std_logic;
SIGNAL \srl64[3][52]~257_combout\ : std_logic;
SIGNAL \sra64[4][52]~72_combout\ : std_logic;
SIGNAL \sll64[4][16]~56_combout\ : std_logic;
SIGNAL \sra64[4][52]~128_combout\ : std_logic;
SIGNAL \srl64[3][36]~255_combout\ : std_logic;
SIGNAL \srl64[3][44]~252_combout\ : std_logic;
SIGNAL \srl64[3][44]~251_combout\ : std_logic;
SIGNAL \srl64[3][44]~253_combout\ : std_logic;
SIGNAL \srl64[3][36]~254_combout\ : std_logic;
SIGNAL \srl64[4][36]~256_combout\ : std_logic;
SIGNAL \sra64[5][36]~73_combout\ : std_logic;
SIGNAL \Mux59~7_combout\ : std_logic;
SIGNAL \Mux59~4_combout\ : std_logic;
SIGNAL \sra64[6][36]~129_combout\ : std_logic;
SIGNAL \Mux59~5_combout\ : std_logic;
SIGNAL \srl64[3][12]~245_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \srl64[2][4]~246_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \srl64[3][28]~247_combout\ : std_logic;
SIGNAL \srl64[3][28]~248_combout\ : std_logic;
SIGNAL \srl64[3][20]~249_combout\ : std_logic;
SIGNAL \srl64[4][20]~250_combout\ : std_logic;
SIGNAL \srl64[2][8]~244_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \Mux59~combout\ : std_logic;
SIGNAL \srl64[3][37]~272_combout\ : std_logic;
SIGNAL \srl64[3][37]~271_combout\ : std_logic;
SIGNAL \srl64[3][37]~273_combout\ : std_logic;
SIGNAL \srl64[3][45]~274_combout\ : std_logic;
SIGNAL \srl64[3][45]~275_combout\ : std_logic;
SIGNAL \srl64[4][37]~276_combout\ : std_logic;
SIGNAL \Mux58~5_combout\ : std_logic;
SIGNAL \srl64[3][53]~269_combout\ : std_logic;
SIGNAL \srl64[3][53]~268_combout\ : std_logic;
SIGNAL \srl64[3][53]~270_combout\ : std_logic;
SIGNAL \srl64[4][53]~366_combout\ : std_logic;
SIGNAL \Mux58~6_combout\ : std_logic;
SIGNAL \sra64[3][61]~130_combout\ : std_logic;
SIGNAL \sra64[5][37]~74_combout\ : std_logic;
SIGNAL \sra64[5][37]~75_combout\ : std_logic;
SIGNAL \sra64[6][37]~131_combout\ : std_logic;
SIGNAL \Mux58~7_combout\ : std_logic;
SIGNAL \sll64[2][5]~61_combout\ : std_logic;
SIGNAL \sll64[2][5]~62_combout\ : std_logic;
SIGNAL \sll64[3][5]~315_combout\ : std_logic;
SIGNAL \sll64[5][5]~316_combout\ : std_logic;
SIGNAL \Mux58~8_combout\ : std_logic;
SIGNAL \srl64[3][13]~262_combout\ : std_logic;
SIGNAL \srl64[2][5]~263_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \srl64[3][21]~266_combout\ : std_logic;
SIGNAL \srl64[3][29]~264_combout\ : std_logic;
SIGNAL \srl64[3][29]~265_combout\ : std_logic;
SIGNAL \srl64[4][21]~267_combout\ : std_logic;
SIGNAL \srl64[2][9]~261_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Mux58~combout\ : std_logic;
SIGNAL \srl64[3][38]~286_combout\ : std_logic;
SIGNAL \srl64[3][46]~284_combout\ : std_logic;
SIGNAL \srl64[3][46]~283_combout\ : std_logic;
SIGNAL \srl64[3][46]~285_combout\ : std_logic;
SIGNAL \srl64[3][38]~287_combout\ : std_logic;
SIGNAL \srl64[4][38]~288_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \srl64[3][54]~289_combout\ : std_logic;
SIGNAL \srl64[3][54]~290_combout\ : std_logic;
SIGNAL \srl64[3][54]~291_combout\ : std_logic;
SIGNAL \srl64[4][54]~292_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \sra64[5][38]~77_combout\ : std_logic;
SIGNAL \sra64[4][54]~76_combout\ : std_logic;
SIGNAL \sra64[5][38]~78_combout\ : std_logic;
SIGNAL \sra64[6][38]~132_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \sll64[2][6]~63_combout\ : std_logic;
SIGNAL \sll64[2][6]~64_combout\ : std_logic;
SIGNAL \sll64[5][6]~65_combout\ : std_logic;
SIGNAL \Mux57~5_combout\ : std_logic;
SIGNAL \srl64[3][14]~278_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \srl64[3][22]~281_combout\ : std_logic;
SIGNAL \srl64[3][30]~279_combout\ : std_logic;
SIGNAL \srl64[3][30]~280_combout\ : std_logic;
SIGNAL \srl64[4][22]~282_combout\ : std_logic;
SIGNAL \srl64[2][10]~277_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~combout\ : std_logic;
SIGNAL \sll64[2][7]~66_combout\ : std_logic;
SIGNAL \sll64[2][7]~67_combout\ : std_logic;
SIGNAL \sll64[5][7]~68_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \srl64[3][39]~305_combout\ : std_logic;
SIGNAL \srl64[3][47]~302_combout\ : std_logic;
SIGNAL \srl64[3][47]~303_combout\ : std_logic;
SIGNAL \srl64[3][47]~304_combout\ : std_logic;
SIGNAL \srl64[3][39]~306_combout\ : std_logic;
SIGNAL \srl64[4][39]~307_combout\ : std_logic;
SIGNAL \sra64[4][55]~79_combout\ : std_logic;
SIGNAL \srl64[3][55]~300_combout\ : std_logic;
SIGNAL \srl64[3][55]~299_combout\ : std_logic;
SIGNAL \srl64[3][55]~301_combout\ : std_logic;
SIGNAL \sra64[5][39]~80_combout\ : std_logic;
SIGNAL \sra64[5][39]~81_combout\ : std_logic;
SIGNAL \sra64[6][39]~133_combout\ : std_logic;
SIGNAL \srl64[2][61]~308_combout\ : std_logic;
SIGNAL \srl64[4][55]~309_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \srl64[3][31]~297_combout\ : std_logic;
SIGNAL \srl64[3][23]~295_combout\ : std_logic;
SIGNAL \srl64[3][31]~296_combout\ : std_logic;
SIGNAL \srl64[4][23]~298_combout\ : std_logic;
SIGNAL \srl64[2][11]~293_combout\ : std_logic;
SIGNAL \srl64[3][15]~294_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \srl64[3][16]~310_combout\ : std_logic;
SIGNAL \srl64[4][24]~314_combout\ : std_logic;
SIGNAL \srl64[4][24]~315_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \srl64[3][8]~312_combout\ : std_logic;
SIGNAL \srl64[3][8]~313_combout\ : std_logic;
SIGNAL \sll64[5][20]~69_combout\ : std_logic;
SIGNAL \sra64[5][40]~82_combout\ : std_logic;
SIGNAL \srl64[4][40]~311_combout\ : std_logic;
SIGNAL \sra64[5][40]~83_combout\ : std_logic;
SIGNAL \sra64[6][40]~134_combout\ : std_logic;
SIGNAL \Mux55~8_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux55~5_combout\ : std_logic;
SIGNAL \sll64[2][8]~70_combout\ : std_logic;
SIGNAL \sll64[2][8]~71_combout\ : std_logic;
SIGNAL \sll64[4][8]~72_combout\ : std_logic;
SIGNAL \sll64[4][8]~317_combout\ : std_logic;
SIGNAL \Mux55~6_combout\ : std_logic;
SIGNAL \Mux55~7_combout\ : std_logic;
SIGNAL \srl64[4][25]~319_combout\ : std_logic;
SIGNAL \srl64[4][41]~316_combout\ : std_logic;
SIGNAL \sra64[5][41]~84_combout\ : std_logic;
SIGNAL \sra64[5][41]~85_combout\ : std_logic;
SIGNAL \sra64[6][41]~135_combout\ : std_logic;
SIGNAL \Mux54~8_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \srl64[3][9]~317_combout\ : std_logic;
SIGNAL \srl64[3][9]~318_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Mux54~5_combout\ : std_logic;
SIGNAL \sll64[2][10]~73_combout\ : std_logic;
SIGNAL \sll64[2][9]~74_combout\ : std_logic;
SIGNAL \sll64[4][9]~75_combout\ : std_logic;
SIGNAL \sll64[4][9]~318_combout\ : std_logic;
SIGNAL \Mux54~6_combout\ : std_logic;
SIGNAL \Mux54~7_combout\ : std_logic;
SIGNAL \sll64[2][11]~76_combout\ : std_logic;
SIGNAL \sll64[2][10]~77_combout\ : std_logic;
SIGNAL \sll64[4][10]~78_combout\ : std_logic;
SIGNAL \sll64[4][10]~319_combout\ : std_logic;
SIGNAL \Mux53~6_combout\ : std_logic;
SIGNAL \srl64[4][26]~321_combout\ : std_logic;
SIGNAL \srl64[4][42]~320_combout\ : std_logic;
SIGNAL \Mux53~8_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \sra64[5][42]~86_combout\ : std_logic;
SIGNAL \sra64[5][42]~87_combout\ : std_logic;
SIGNAL \sra64[6][42]~136_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Mux53~5_combout\ : std_logic;
SIGNAL \Mux53~7_combout\ : std_logic;
SIGNAL \sll64[2][11]~79_combout\ : std_logic;
SIGNAL \sll64[2][11]~80_combout\ : std_logic;
SIGNAL \sll64[4][11]~81_combout\ : std_logic;
SIGNAL \sll64[4][11]~320_combout\ : std_logic;
SIGNAL \Mux52~9_combout\ : std_logic;
SIGNAL \srl64[4][43]~367_combout\ : std_logic;
SIGNAL \sra64[4][59]~137_combout\ : std_logic;
SIGNAL \sra64[5][43]~88_combout\ : std_logic;
SIGNAL \sra64[6][43]~138_combout\ : std_logic;
SIGNAL \Mux52~11_combout\ : std_logic;
SIGNAL \Mux52~5_combout\ : std_logic;
SIGNAL \Mux52~6_combout\ : std_logic;
SIGNAL \srl64[4][27]~322_combout\ : std_logic;
SIGNAL \Mux52~7_combout\ : std_logic;
SIGNAL \Mux52~8_combout\ : std_logic;
SIGNAL \Mux52~10_combout\ : std_logic;
SIGNAL \srl64[4][28]~324_combout\ : std_logic;
SIGNAL \srl64[4][44]~323_combout\ : std_logic;
SIGNAL \sra64[4][60]~89_combout\ : std_logic;
SIGNAL \sra64[5][44]~90_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \sra64[6][44]~139_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \sll64[2][12]~82_combout\ : std_logic;
SIGNAL \sll64[2][12]~83_combout\ : std_logic;
SIGNAL \sll64[4][12]~84_combout\ : std_logic;
SIGNAL \sll64[4][12]~85_combout\ : std_logic;
SIGNAL \Mux51~5_combout\ : std_logic;
SIGNAL \Mux51~6_combout\ : std_logic;
SIGNAL \sll64[2][14]~86_combout\ : std_logic;
SIGNAL \sll64[2][13]~87_combout\ : std_logic;
SIGNAL \sll64[4][13]~88_combout\ : std_logic;
SIGNAL \sll64[4][13]~89_combout\ : std_logic;
SIGNAL \Mux50~5_combout\ : std_logic;
SIGNAL \srl64[4][45]~325_combout\ : std_logic;
SIGNAL \sra64[5][45]~91_combout\ : std_logic;
SIGNAL \sra64[5][45]~92_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \sra64[6][45]~140_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \srl64[4][29]~326_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Mux50~6_combout\ : std_logic;
SIGNAL \sll64[2][15]~91_combout\ : std_logic;
SIGNAL \sll64[2][14]~92_combout\ : std_logic;
SIGNAL \sll64[4][14]~93_combout\ : std_logic;
SIGNAL \sll64[3][6]~94_combout\ : std_logic;
SIGNAL \sll64[4][14]~95_combout\ : std_logic;
SIGNAL \Mux49~5_combout\ : std_logic;
SIGNAL \srl64[4][46]~327_combout\ : std_logic;
SIGNAL \sra64[5][46]~93_combout\ : std_logic;
SIGNAL \sra64[5][46]~94_combout\ : std_logic;
SIGNAL \sra64[6][46]~141_combout\ : std_logic;
SIGNAL \sll64[5][16]~90_combout\ : std_logic;
SIGNAL \srl64[5][46]~328_combout\ : std_logic;
SIGNAL \Mux49~7_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \srl64[4][30]~329_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Mux49~6_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \srl64[3][39]~331_combout\ : std_logic;
SIGNAL \srl64[4][31]~332_combout\ : std_logic;
SIGNAL \srl64[5][47]~330_combout\ : std_logic;
SIGNAL \sra64[5][47]~95_combout\ : std_logic;
SIGNAL \Mux48~7_combout\ : std_logic;
SIGNAL \sra64[6][47]~97_combout\ : std_logic;
SIGNAL \sra64[5][47]~96_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \sll64[3][7]~99_combout\ : std_logic;
SIGNAL \sll64[2][16]~96_combout\ : std_logic;
SIGNAL \sll64[2][15]~97_combout\ : std_logic;
SIGNAL \sll64[4][15]~98_combout\ : std_logic;
SIGNAL \sll64[4][15]~100_combout\ : std_logic;
SIGNAL \Mux48~5_combout\ : std_logic;
SIGNAL \Mux48~6_combout\ : std_logic;
SIGNAL \srl64[4][16]~333_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \sra64[5][48]~98_combout\ : std_logic;
SIGNAL \srl64[5][48]~335_combout\ : std_logic;
SIGNAL \sra64[6][48]~99_combout\ : std_logic;
SIGNAL \srl64[6][48]~334_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Mux47~3_combout\ : std_logic;
SIGNAL \sll64[2][17]~102_combout\ : std_logic;
SIGNAL \sll64[2][16]~103_combout\ : std_logic;
SIGNAL \Mux58~9_combout\ : std_logic;
SIGNAL \sll64[4][16]~104_combout\ : std_logic;
SIGNAL \sll64[4][16]~101_combout\ : std_logic;
SIGNAL \sll64[4][16]~105_combout\ : std_logic;
SIGNAL \sll64[5][16]~106_combout\ : std_logic;
SIGNAL \Mux47~4_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \srl64[5][49]~337_combout\ : std_logic;
SIGNAL \srl64[6][49]~336_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \sra64[5][49]~100_combout\ : std_logic;
SIGNAL \sra64[6][49]~102_combout\ : std_logic;
SIGNAL \sra64[5][49]~101_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \sll64[4][17]~107_combout\ : std_logic;
SIGNAL \sll64[2][18]~108_combout\ : std_logic;
SIGNAL \sll64[4][17]~109_combout\ : std_logic;
SIGNAL \sll64[4][17]~110_combout\ : std_logic;
SIGNAL \sll64[5][17]~111_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \sra64[3][58]~103_combout\ : std_logic;
SIGNAL \sra64[5][50]~104_combout\ : std_logic;
SIGNAL \sra64[5][50]~105_combout\ : std_logic;
SIGNAL \srl64[5][50]~339_combout\ : std_logic;
SIGNAL \srl64[6][50]~338_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \sra64[6][50]~106_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \sll64[2][19]~113_combout\ : std_logic;
SIGNAL \sll64[2][18]~114_combout\ : std_logic;
SIGNAL \sll64[4][18]~115_combout\ : std_logic;
SIGNAL \sll64[4][18]~112_combout\ : std_logic;
SIGNAL \sll64[4][18]~116_combout\ : std_logic;
SIGNAL \sll64[5][18]~117_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \sll64[4][19]~118_combout\ : std_logic;
SIGNAL \sll64[2][20]~120_combout\ : std_logic;
SIGNAL \sll64[2][19]~121_combout\ : std_logic;
SIGNAL \sll64[4][19]~119_combout\ : std_logic;
SIGNAL \sll64[4][19]~122_combout\ : std_logic;
SIGNAL \sll64[5][19]~123_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \srl64[5][51]~341_combout\ : std_logic;
SIGNAL \srl64[6][51]~340_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \sra64[6][51]~108_combout\ : std_logic;
SIGNAL \sra64[5][51]~107_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \sll64[2][21]~126_combout\ : std_logic;
SIGNAL \sll64[2][20]~127_combout\ : std_logic;
SIGNAL \sll64[4][20]~125_combout\ : std_logic;
SIGNAL \sll64[4][20]~124_combout\ : std_logic;
SIGNAL \sll64[4][20]~128_combout\ : std_logic;
SIGNAL \sll64[5][20]~321_combout\ : std_logic;
SIGNAL \srl64[6][52]~368_combout\ : std_logic;
SIGNAL \srl64[5][52]~342_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \sra64[5][52]~109_combout\ : std_logic;
SIGNAL \sra64[6][52]~142_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \srl64[5][53]~343_combout\ : std_logic;
SIGNAL \srl64[6][53]~369_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \sra64[5][53]~110_combout\ : std_logic;
SIGNAL \sra64[5][53]~143_combout\ : std_logic;
SIGNAL \sra64[6][53]~144_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \sll64[4][21]~130_combout\ : std_logic;
SIGNAL \sll64[4][21]~129_combout\ : std_logic;
SIGNAL \sll64[2][22]~131_combout\ : std_logic;
SIGNAL \sll64[2][21]~132_combout\ : std_logic;
SIGNAL \sll64[4][21]~133_combout\ : std_logic;
SIGNAL \sll64[5][21]~322_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \sra64[3][62]~111_combout\ : std_logic;
SIGNAL \sra64[5][54]~112_combout\ : std_logic;
SIGNAL \sra64[5][54]~113_combout\ : std_logic;
SIGNAL \sra64[6][54]~145_combout\ : std_logic;
SIGNAL \srl64[5][54]~344_combout\ : std_logic;
SIGNAL \srl64[6][54]~370_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \sll64[4][22]~134_combout\ : std_logic;
SIGNAL \sll64[2][23]~136_combout\ : std_logic;
SIGNAL \sll64[2][22]~137_combout\ : std_logic;
SIGNAL \sll64[4][22]~135_combout\ : std_logic;
SIGNAL \sll64[4][22]~138_combout\ : std_logic;
SIGNAL \sll64[5][22]~323_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \sll64[2][24]~141_combout\ : std_logic;
SIGNAL \sll64[2][23]~142_combout\ : std_logic;
SIGNAL \sll64[4][23]~140_combout\ : std_logic;
SIGNAL \sll64[4][23]~139_combout\ : std_logic;
SIGNAL \sll64[4][23]~143_combout\ : std_logic;
SIGNAL \sll64[5][23]~324_combout\ : std_logic;
SIGNAL \srl64[5][55]~345_combout\ : std_logic;
SIGNAL \srl64[6][55]~371_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \sra64[5][55]~114_combout\ : std_logic;
SIGNAL \sra64[6][55]~146_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \sll64[4][24]~144_combout\ : std_logic;
SIGNAL \sll64[2][25]~145_combout\ : std_logic;
SIGNAL \sll64[2][24]~146_combout\ : std_logic;
SIGNAL \sll64[4][24]~147_combout\ : std_logic;
SIGNAL \sll64[4][24]~148_combout\ : std_logic;
SIGNAL \sll64[5][24]~149_combout\ : std_logic;
SIGNAL \sra64[5][56]~115_combout\ : std_logic;
SIGNAL \srl64[6][56]~372_combout\ : std_logic;
SIGNAL \srl64[5][56]~346_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \sra64[6][56]~147_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \srl64[5][57]~347_combout\ : std_logic;
SIGNAL \srl64[6][57]~373_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \sra64[5][57]~116_combout\ : std_logic;
SIGNAL \sra64[6][57]~148_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \sll64[4][25]~152_combout\ : std_logic;
SIGNAL \sll64[2][26]~151_combout\ : std_logic;
SIGNAL \sll64[4][25]~153_combout\ : std_logic;
SIGNAL \sll64[4][25]~150_combout\ : std_logic;
SIGNAL \sll64[4][25]~154_combout\ : std_logic;
SIGNAL \sll64[5][25]~155_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \sra64[5][58]~117_combout\ : std_logic;
SIGNAL \sra64[6][58]~149_combout\ : std_logic;
SIGNAL \srl64[5][58]~348_combout\ : std_logic;
SIGNAL \srl64[6][58]~374_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \sll64[4][26]~156_combout\ : std_logic;
SIGNAL \sll64[2][27]~157_combout\ : std_logic;
SIGNAL \sll64[2][26]~158_combout\ : std_logic;
SIGNAL \sll64[4][26]~159_combout\ : std_logic;
SIGNAL \sll64[4][26]~160_combout\ : std_logic;
SIGNAL \sll64[5][26]~161_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \sll64[4][27]~162_combout\ : std_logic;
SIGNAL \sll64[2][28]~163_combout\ : std_logic;
SIGNAL \sll64[2][27]~164_combout\ : std_logic;
SIGNAL \sll64[4][27]~165_combout\ : std_logic;
SIGNAL \sll64[4][27]~166_combout\ : std_logic;
SIGNAL \sll64[5][27]~167_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \sra64[5][59]~118_combout\ : std_logic;
SIGNAL \sra64[6][59]~119_combout\ : std_logic;
SIGNAL \srl64[6][59]~375_combout\ : std_logic;
SIGNAL \srl64[5][59]~349_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \sll64[2][29]~168_combout\ : std_logic;
SIGNAL \sll64[2][28]~169_combout\ : std_logic;
SIGNAL \sll64[4][32]~170_combout\ : std_logic;
SIGNAL \sll64[4][28]~171_combout\ : std_logic;
SIGNAL \sll64[5][28]~172_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \sra64[6][60]~121_combout\ : std_logic;
SIGNAL \srl64[5][60]~377_combout\ : std_logic;
SIGNAL \srl64[6][60]~376_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \sra64[5][60]~120_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \sll64[2][30]~173_combout\ : std_logic;
SIGNAL \sll64[2][29]~174_combout\ : std_logic;
SIGNAL \sll64[4][29]~175_combout\ : std_logic;
SIGNAL \sll64[4][29]~176_combout\ : std_logic;
SIGNAL \sll64[5][29]~177_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \sra64[5][61]~122_combout\ : std_logic;
SIGNAL \srl64[5][61]~379_combout\ : std_logic;
SIGNAL \srl64[6][61]~378_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \sra64[6][61]~150_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \sra64[5][62]~123_combout\ : std_logic;
SIGNAL \sra64[6][62]~151_combout\ : std_logic;
SIGNAL \srl64[5][62]~380_combout\ : std_logic;
SIGNAL \srl64[6][62]~350_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \sll64[2][31]~178_combout\ : std_logic;
SIGNAL \sll64[2][30]~179_combout\ : std_logic;
SIGNAL \sll64[4][34]~180_combout\ : std_logic;
SIGNAL \sll64[4][30]~181_combout\ : std_logic;
SIGNAL \Y_sll[62]~6_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \sll64[5][0]~325_combout\ : std_logic;
SIGNAL \sll64[2][31]~182_combout\ : std_logic;
SIGNAL \sll64[2][31]~183_combout\ : std_logic;
SIGNAL \sll64[4][31]~184_combout\ : std_logic;
SIGNAL \sll64[4][31]~185_combout\ : std_logic;
SIGNAL \Y_sll[31]~7_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Y_srl[31]~9_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Y_srl[63]~14_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \sll64[5][0]~186_combout\ : std_logic;
SIGNAL \sll64[2][32]~187_combout\ : std_logic;
SIGNAL \sll64[2][32]~188_combout\ : std_logic;
SIGNAL \sll64[2][32]~189_combout\ : std_logic;
SIGNAL \sll64[4][32]~326_combout\ : std_logic;
SIGNAL \sll64[4][32]~327_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \sra64[6][33]~152_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \sll64[5][1]~328_combout\ : std_logic;
SIGNAL \sll64[4][33]~194_combout\ : std_logic;
SIGNAL \sll64[2][33]~190_combout\ : std_logic;
SIGNAL \sll64[2][33]~191_combout\ : std_logic;
SIGNAL \sll64[2][33]~192_combout\ : std_logic;
SIGNAL \sll64[4][33]~193_combout\ : std_logic;
SIGNAL \sll64[4][33]~195_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \sll64[5][2]~329_combout\ : std_logic;
SIGNAL \sll64[4][34]~330_combout\ : std_logic;
SIGNAL \sll64[2][34]~196_combout\ : std_logic;
SIGNAL \sll64[2][34]~197_combout\ : std_logic;
SIGNAL \sll64[2][34]~198_combout\ : std_logic;
SIGNAL \sll64[4][34]~331_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \srl64[6][34]~351_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \sll64[4][35]~200_combout\ : std_logic;
SIGNAL \sll64[2][35]~201_combout\ : std_logic;
SIGNAL \sll64[2][35]~202_combout\ : std_logic;
SIGNAL \sll64[4][35]~199_combout\ : std_logic;
SIGNAL \sll64[4][35]~203_combout\ : std_logic;
SIGNAL \sll64[4][35]~204_combout\ : std_logic;
SIGNAL \sll64[5][3]~332_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \srl64[6][35]~352_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \sll64[2][36]~205_combout\ : std_logic;
SIGNAL \sll64[4][36]~206_combout\ : std_logic;
SIGNAL \sll64[4][36]~207_combout\ : std_logic;
SIGNAL \sll64[4][36]~208_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \srl64[6][36]~353_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \srl64[6][37]~354_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \sll64[2][37]~210_combout\ : std_logic;
SIGNAL \sll64[2][37]~211_combout\ : std_logic;
SIGNAL \sll64[4][37]~212_combout\ : std_logic;
SIGNAL \sll64[4][37]~209_combout\ : std_logic;
SIGNAL \sll64[4][37]~213_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \srl64[6][38]~355_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \sll64[4][38]~216_combout\ : std_logic;
SIGNAL \sll64[2][38]~214_combout\ : std_logic;
SIGNAL \sll64[4][38]~215_combout\ : std_logic;
SIGNAL \sll64[4][38]~217_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \srl64[6][39]~356_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \sll64[4][39]~333_combout\ : std_logic;
SIGNAL \sll64[2][39]~219_combout\ : std_logic;
SIGNAL \sll64[2][39]~220_combout\ : std_logic;
SIGNAL \sll64[4][39]~218_combout\ : std_logic;
SIGNAL \sll64[4][39]~221_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \srl64[6][40]~357_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \sll64[5][8]~222_combout\ : std_logic;
SIGNAL \sll64[2][40]~225_combout\ : std_logic;
SIGNAL \sll64[2][40]~226_combout\ : std_logic;
SIGNAL \sll64[2][36]~224_combout\ : std_logic;
SIGNAL \sll64[3][40]~227_combout\ : std_logic;
SIGNAL \sll64[4][40]~223_combout\ : std_logic;
SIGNAL \sll64[4][40]~228_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \sll64[2][41]~231_combout\ : std_logic;
SIGNAL \sll64[2][41]~232_combout\ : std_logic;
SIGNAL \sll64[3][41]~233_combout\ : std_logic;
SIGNAL \sll64[4][41]~230_combout\ : std_logic;
SIGNAL \sll64[4][41]~234_combout\ : std_logic;
SIGNAL \sll64[5][9]~229_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \srl64[6][41]~358_combout\ : std_logic;
SIGNAL \srl64[6][41]~359_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \sll64[5][10]~235_combout\ : std_logic;
SIGNAL \sll64[4][42]~236_combout\ : std_logic;
SIGNAL \sll64[2][42]~238_combout\ : std_logic;
SIGNAL \sll64[2][42]~239_combout\ : std_logic;
SIGNAL \sll64[2][38]~237_combout\ : std_logic;
SIGNAL \sll64[3][42]~240_combout\ : std_logic;
SIGNAL \sll64[4][42]~241_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \srl64[6][42]~360_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \srl64[6][43]~361_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \sll64[2][43]~244_combout\ : std_logic;
SIGNAL \sll64[2][43]~245_combout\ : std_logic;
SIGNAL \sll64[3][43]~246_combout\ : std_logic;
SIGNAL \sll64[4][43]~243_combout\ : std_logic;
SIGNAL \sll64[4][43]~247_combout\ : std_logic;
SIGNAL \sll64[5][11]~242_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \sll64[2][44]~250_combout\ : std_logic;
SIGNAL \sll64[2][44]~251_combout\ : std_logic;
SIGNAL \sll64[3][44]~252_combout\ : std_logic;
SIGNAL \sll64[4][44]~249_combout\ : std_logic;
SIGNAL \sll64[4][44]~253_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \sll64[5][12]~248_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \sra64[4][60]~124_combout\ : std_logic;
SIGNAL \srl64[6][44]~362_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \sll64[4][45]~255_combout\ : std_logic;
SIGNAL \sll64[2][45]~256_combout\ : std_logic;
SIGNAL \sll64[2][45]~257_combout\ : std_logic;
SIGNAL \sll64[3][45]~258_combout\ : std_logic;
SIGNAL \sll64[4][45]~259_combout\ : std_logic;
SIGNAL \sll64[5][13]~254_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \srl64[6][45]~363_combout\ : std_logic;
SIGNAL \srl64[6][45]~364_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \srl64[6][46]~381_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \sll64[5][14]~260_combout\ : std_logic;
SIGNAL \sll64[4][46]~261_combout\ : std_logic;
SIGNAL \sll64[2][46]~262_combout\ : std_logic;
SIGNAL \sll64[2][46]~263_combout\ : std_logic;
SIGNAL \sll64[3][46]~264_combout\ : std_logic;
SIGNAL \sll64[4][46]~265_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \sll64[5][15]~266_combout\ : std_logic;
SIGNAL \sll64[4][47]~267_combout\ : std_logic;
SIGNAL \sll64[2][47]~268_combout\ : std_logic;
SIGNAL \sll64[2][47]~269_combout\ : std_logic;
SIGNAL \sll64[4][47]~270_combout\ : std_logic;
SIGNAL \sll64[4][47]~271_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \srl64[6][47]~382_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \sll64[2][48]~272_combout\ : std_logic;
SIGNAL \sll64[2][48]~273_combout\ : std_logic;
SIGNAL \sll64[3][48]~274_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \sll64[2][49]~275_combout\ : std_logic;
SIGNAL \sll64[2][49]~276_combout\ : std_logic;
SIGNAL \sll64[3][49]~277_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \sll64[2][50]~278_combout\ : std_logic;
SIGNAL \sll64[2][50]~279_combout\ : std_logic;
SIGNAL \sll64[3][50]~280_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \sll64[2][51]~281_combout\ : std_logic;
SIGNAL \sll64[2][51]~282_combout\ : std_logic;
SIGNAL \sll64[3][51]~283_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \sll64[2][52]~284_combout\ : std_logic;
SIGNAL \sll64[2][52]~285_combout\ : std_logic;
SIGNAL \sll64[3][52]~286_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \sll64[2][53]~287_combout\ : std_logic;
SIGNAL \sll64[2][53]~288_combout\ : std_logic;
SIGNAL \sll64[3][53]~289_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \sll64[2][54]~290_combout\ : std_logic;
SIGNAL \sll64[2][54]~291_combout\ : std_logic;
SIGNAL \sll64[3][54]~292_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \sll64[2][56]~294_combout\ : std_logic;
SIGNAL \sll64[2][55]~295_combout\ : std_logic;
SIGNAL \sll64[3][55]~296_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \sll64[3][47]~293_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \sll64[2][52]~297_combout\ : std_logic;
SIGNAL \sll64[2][57]~298_combout\ : std_logic;
SIGNAL \sll64[2][56]~299_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \sll64[2][53]~300_combout\ : std_logic;
SIGNAL \sll64[2][57]~301_combout\ : std_logic;
SIGNAL \sll64[2][57]~302_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \sll64[2][54]~303_combout\ : std_logic;
SIGNAL \sll64[2][59]~304_combout\ : std_logic;
SIGNAL \sll64[2][58]~305_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \sll64[2][55]~306_combout\ : std_logic;
SIGNAL \sll64[2][59]~307_combout\ : std_logic;
SIGNAL \sll64[2][59]~308_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \sll64[1][58]~309_combout\ : std_logic;
SIGNAL \sll64[1][60]~310_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \sll64[1][61]~312_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \sll64[1][59]~311_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Y_sra[62]~5_combout\ : std_logic;
SIGNAL \Y_sll[62]~8_combout\ : std_logic;
SIGNAL \Y_sll[62]~9_combout\ : std_logic;
SIGNAL \Y_sll[62]~10_combout\ : std_logic;
SIGNAL \Y_sll[62]~12_combout\ : std_logic;
SIGNAL \Y_sll[62]~11_combout\ : std_logic;
SIGNAL \Y_sll[62]~13_combout\ : std_logic;
SIGNAL \Y_sll[62]~14_combout\ : std_logic;
SIGNAL \Y_sll[62]~22_combout\ : std_logic;
SIGNAL \Y_sll[62]~23_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Y_srl[62]~10_combout\ : std_logic;
SIGNAL \Y_srl[62]~11_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Y_sll[63]~17_combout\ : std_logic;
SIGNAL \Y_sll[63]~18_combout\ : std_logic;
SIGNAL \Y_sll[63]~19_combout\ : std_logic;
SIGNAL \Y_sll[63]~20_combout\ : std_logic;
SIGNAL \Y_sll[63]~15_combout\ : std_logic;
SIGNAL \Y_sll[63]~24_combout\ : std_logic;
SIGNAL \Y_sll[63]~16_combout\ : std_logic;
SIGNAL \Y_sll[63]~21_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

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

-- Location: IOOBUF_X40_Y0_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~4_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~14_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~11_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~7_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~7_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~7_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~10_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~6_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~6_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~6_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~6_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~4_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~4_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~4_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~4_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~4_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~4_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~4_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~4_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~4_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~4_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~4_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~4_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~4_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~4_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~4_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~3_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~5_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~5_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~5_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~5_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~5_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~5_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~5_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~5_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~5_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~5_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~5_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~5_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~6_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~5_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~5_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~5_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~5_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~7_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~5_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~5_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~5_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~5_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~5_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~6_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~8_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~7_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~7_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X0_Y49_N1
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X38_Y45_N30
\srl64[1][52]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][52]~100_combout\ = (\ExtWord~input_o\ & (\A[21]~input_o\)) # (!\ExtWord~input_o\ & ((\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[53]~input_o\,
	combout => \srl64[1][52]~100_combout\);

-- Location: IOIBUF_X0_Y31_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X45_Y40_N10
\srl64[1][51]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][51]~101_combout\ = (\ExtWord~input_o\ & ((\A[20]~input_o\))) # (!\ExtWord~input_o\ & (\A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[52]~input_o\,
	datac => \A[20]~input_o\,
	combout => \srl64[1][51]~101_combout\);

-- Location: LCCOMB_X45_Y40_N12
\srl64[1][52]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][52]~102_combout\ = (\B[0]~input_o\ & (\srl64[1][52]~100_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][51]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \srl64[1][52]~100_combout\,
	datad => \srl64[1][51]~101_combout\,
	combout => \srl64[1][52]~102_combout\);

-- Location: IOIBUF_X0_Y42_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X46_Y45_N8
\srl64[3][32]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][32]~96_combout\ = (\B[1]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \srl64[3][32]~96_combout\);

-- Location: IOIBUF_X0_Y46_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X42_Y45_N14
\srl64[1][53]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][53]~98_combout\ = (\ExtWord~input_o\ & ((\A[22]~input_o\))) # (!\ExtWord~input_o\ & (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \srl64[1][53]~98_combout\);

-- Location: IOIBUF_X0_Y30_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X39_Y44_N30
\srl64[1][54]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][54]~97_combout\ = (\ExtWord~input_o\ & (\A[23]~input_o\)) # (!\ExtWord~input_o\ & ((\A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \A[55]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][54]~97_combout\);

-- Location: LCCOMB_X43_Y40_N2
\srl64[3][48]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][48]~99_combout\ = (\srl64[3][32]~96_combout\ & ((\B[0]~input_o\ & ((\srl64[1][54]~97_combout\))) # (!\B[0]~input_o\ & (\srl64[1][53]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][32]~96_combout\,
	datab => \srl64[1][53]~98_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][54]~97_combout\,
	combout => \srl64[3][48]~99_combout\);

-- Location: LCCOMB_X42_Y40_N30
\sll64[3][5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][5]~46_combout\ = (!\B[1]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][5]~46_combout\);

-- Location: LCCOMB_X43_Y43_N16
\srl64[4][55]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][55]~94_combout\ = (!\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \srl64[4][55]~94_combout\);

-- Location: IOIBUF_X0_Y34_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X38_Y45_N10
\srl64[1][50]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][50]~88_combout\ = (\ExtWord~input_o\ & (\A[19]~input_o\)) # (!\ExtWord~input_o\ & ((\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[51]~input_o\,
	combout => \srl64[1][50]~88_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X45_Y48_N20
\srl64[1][49]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][49]~89_combout\ = (\ExtWord~input_o\ & (\A[18]~input_o\)) # (!\ExtWord~input_o\ & ((\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[50]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \srl64[1][49]~89_combout\);

-- Location: LCCOMB_X45_Y40_N24
\srl64[1][50]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][50]~90_combout\ = (\B[0]~input_o\ & (\srl64[1][50]~88_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][49]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][50]~88_combout\,
	datac => \srl64[1][49]~89_combout\,
	combout => \srl64[1][50]~90_combout\);

-- Location: LCCOMB_X45_Y44_N18
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (!\B[2]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: IOIBUF_X0_Y35_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X38_Y45_N20
\srl64[1][48]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][48]~91_combout\ = (\ExtWord~input_o\ & (\A[17]~input_o\)) # (!\ExtWord~input_o\ & ((\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datac => \A[49]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][48]~91_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X45_Y48_N6
\srl64[1][47]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][47]~92_combout\ = (\ExtWord~input_o\ & (\A[16]~input_o\)) # (!\ExtWord~input_o\ & ((\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[48]~input_o\,
	combout => \srl64[1][47]~92_combout\);

-- Location: LCCOMB_X45_Y44_N24
\srl64[1][48]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][48]~93_combout\ = (\B[0]~input_o\ & (\srl64[1][48]~91_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][47]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][48]~91_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][47]~92_combout\,
	combout => \srl64[1][48]~93_combout\);

-- Location: LCCOMB_X45_Y44_N12
\srl64[3][48]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][48]~95_combout\ = (\srl64[4][55]~94_combout\ & ((\srl64[1][48]~93_combout\) # ((\srl64[1][50]~90_combout\ & \Mux61~0_combout\)))) # (!\srl64[4][55]~94_combout\ & (\srl64[1][50]~90_combout\ & (\Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[1][50]~90_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][48]~93_combout\,
	combout => \srl64[3][48]~95_combout\);

-- Location: LCCOMB_X43_Y40_N4
\srl64[3][48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][48]~103_combout\ = (\srl64[3][48]~99_combout\) # ((\srl64[3][48]~95_combout\) # ((\srl64[1][52]~102_combout\ & \sll64[3][5]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][52]~102_combout\,
	datab => \srl64[3][48]~99_combout\,
	datac => \sll64[3][5]~46_combout\,
	datad => \srl64[3][48]~95_combout\,
	combout => \srl64[3][48]~103_combout\);

-- Location: IOIBUF_X54_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X39_Y44_N28
\srl64[1][56]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][56]~77_combout\ = (\ExtWord~input_o\ & ((\A[25]~input_o\))) # (!\ExtWord~input_o\ & (\A[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[57]~input_o\,
	datac => \A[25]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][56]~77_combout\);

-- Location: IOIBUF_X0_Y45_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X42_Y45_N20
\srl64[1][55]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][55]~78_combout\ = (\ExtWord~input_o\ & ((\A[24]~input_o\))) # (!\ExtWord~input_o\ & (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[24]~input_o\,
	combout => \srl64[1][55]~78_combout\);

-- Location: LCCOMB_X43_Y40_N24
\srl64[1][56]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][56]~79_combout\ = (\B[0]~input_o\ & (\srl64[1][56]~77_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][55]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][56]~77_combout\,
	datab => \srl64[1][55]~78_combout\,
	datac => \B[0]~input_o\,
	combout => \srl64[1][56]~79_combout\);

-- Location: IOIBUF_X0_Y34_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X38_Y44_N2
\srl64[1][57]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][57]~75_combout\ = (\ExtWord~input_o\ & ((\A[26]~input_o\))) # (!\ExtWord~input_o\ & (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[58]~input_o\,
	datad => \A[26]~input_o\,
	combout => \srl64[1][57]~75_combout\);

-- Location: IOIBUF_X0_Y35_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X39_Y44_N18
\srl64[1][58]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][58]~74_combout\ = (\ExtWord~input_o\ & ((\A[27]~input_o\))) # (!\ExtWord~input_o\ & (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[59]~input_o\,
	datac => \A[27]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][58]~74_combout\);

-- Location: LCCOMB_X42_Y40_N0
\srl64[1][58]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][58]~76_combout\ = (\B[0]~input_o\ & ((\srl64[1][58]~74_combout\))) # (!\B[0]~input_o\ & (\srl64[1][57]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][57]~75_combout\,
	datab => \B[0]~input_o\,
	datac => \srl64[1][58]~74_combout\,
	combout => \srl64[1][58]~76_combout\);

-- Location: LCCOMB_X47_Y42_N8
\srl64[3][56]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][56]~80_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][58]~76_combout\))) # (!\B[1]~input_o\ & (\srl64[1][56]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][56]~79_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][58]~76_combout\,
	combout => \srl64[3][56]~80_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X38_Y44_N4
\srl64[1][59]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][59]~84_combout\ = (\ExtWord~input_o\ & ((\A[28]~input_o\))) # (!\ExtWord~input_o\ & (\A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \A[28]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][59]~84_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X39_Y49_N0
\srl64[1][60]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][60]~83_combout\ = (\ExtWord~input_o\ & ((\A[29]~input_o\))) # (!\ExtWord~input_o\ & (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[29]~input_o\,
	combout => \srl64[1][60]~83_combout\);

-- Location: LCCOMB_X42_Y40_N12
\srl64[1][60]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][60]~85_combout\ = (\B[0]~input_o\ & ((\srl64[1][60]~83_combout\))) # (!\B[0]~input_o\ & (\srl64[1][59]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \srl64[1][59]~84_combout\,
	datad => \srl64[1][60]~83_combout\,
	combout => \srl64[1][60]~85_combout\);

-- Location: IOIBUF_X0_Y35_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X40_Y41_N16
\sra64[0][63]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[0][63]~56_combout\ = (\A[63]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \sra64[0][63]~56_combout\);

-- Location: IOIBUF_X0_Y45_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X38_Y46_N16
\sra64[0][63]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[0][63]~57_combout\ = (\A[31]~input_o\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[31]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \sra64[0][63]~57_combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X39_Y45_N0
\srl64[1][61]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][61]~81_combout\ = (\ExtWord~input_o\ & (\A[30]~input_o\)) # (!\ExtWord~input_o\ & ((\A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[62]~input_o\,
	combout => \srl64[1][61]~81_combout\);

-- Location: LCCOMB_X42_Y40_N18
\srl64[1][62]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][62]~82_combout\ = (\B[0]~input_o\ & ((\sra64[0][63]~56_combout\) # ((\sra64[0][63]~57_combout\)))) # (!\B[0]~input_o\ & (((\srl64[1][61]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~56_combout\,
	datab => \B[0]~input_o\,
	datac => \sra64[0][63]~57_combout\,
	datad => \srl64[1][61]~81_combout\,
	combout => \srl64[1][62]~82_combout\);

-- Location: LCCOMB_X47_Y42_N2
\srl64[2][60]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][60]~86_combout\ = (\B[1]~input_o\ & ((\srl64[1][62]~82_combout\))) # (!\B[1]~input_o\ & (\srl64[1][60]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][60]~85_combout\,
	datab => \B[1]~input_o\,
	datad => \srl64[1][62]~82_combout\,
	combout => \srl64[2][60]~86_combout\);

-- Location: LCCOMB_X47_Y42_N28
\srl64[3][56]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][56]~87_combout\ = (\srl64[3][56]~80_combout\) # ((\B[2]~input_o\ & \srl64[2][60]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][56]~80_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][60]~86_combout\,
	combout => \srl64[3][56]~87_combout\);

-- Location: LCCOMB_X48_Y45_N0
\srl64[4][48]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][48]~104_combout\ = (\B[3]~input_o\ & ((\srl64[3][56]~87_combout\))) # (!\B[3]~input_o\ & (\srl64[3][48]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][48]~103_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][56]~87_combout\,
	combout => \srl64[4][48]~104_combout\);

-- Location: IOIBUF_X54_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X45_Y47_N6
\srl64[1][46]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][46]~126_combout\ = (\ExtWord~input_o\ & ((\A[15]~input_o\))) # (!\ExtWord~input_o\ & (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[15]~input_o\,
	combout => \srl64[1][46]~126_combout\);

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

-- Location: IOIBUF_X74_Y73_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X45_Y48_N16
\srl64[1][45]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][45]~127_combout\ = (\ExtWord~input_o\ & ((\A[14]~input_o\))) # (!\ExtWord~input_o\ & (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \A[14]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \srl64[1][45]~127_combout\);

-- Location: LCCOMB_X45_Y44_N22
\srl64[1][46]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][46]~128_combout\ = (\B[0]~input_o\ & (\srl64[1][46]~126_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][45]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][46]~126_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][45]~127_combout\,
	combout => \srl64[1][46]~128_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X45_Y47_N24
\srl64[1][44]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][44]~129_combout\ = (\ExtWord~input_o\ & (\A[13]~input_o\)) # (!\ExtWord~input_o\ & ((\A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \A[45]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][44]~129_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X45_Y48_N10
\srl64[1][43]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][43]~130_combout\ = (\ExtWord~input_o\ & (\A[12]~input_o\)) # (!\ExtWord~input_o\ & ((\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[44]~input_o\,
	combout => \srl64[1][43]~130_combout\);

-- Location: LCCOMB_X45_Y44_N16
\srl64[1][44]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][44]~131_combout\ = (\B[0]~input_o\ & (\srl64[1][44]~129_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][43]~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][44]~129_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][43]~130_combout\,
	combout => \srl64[1][44]~131_combout\);

-- Location: LCCOMB_X45_Y44_N10
\srl64[3][40]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][40]~132_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][46]~128_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][44]~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][46]~128_combout\,
	datab => \srl64[1][44]~131_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[3][40]~132_combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X39_Y48_N28
\srl64[1][35]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][35]~112_combout\ = (\ExtWord~input_o\ & (\A[4]~input_o\)) # (!\ExtWord~input_o\ & ((\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[36]~input_o\,
	combout => \srl64[1][35]~112_combout\);

-- Location: IOIBUF_X33_Y73_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X56_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X39_Y49_N10
\srl64[1][36]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][36]~111_combout\ = (\ExtWord~input_o\ & ((\A[5]~input_o\))) # (!\ExtWord~input_o\ & (\A[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \A[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][36]~111_combout\);

-- Location: LCCOMB_X47_Y45_N26
\srl64[1][36]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][36]~113_combout\ = (\B[0]~input_o\ & ((\srl64[1][36]~111_combout\))) # (!\B[0]~input_o\ & (\srl64[1][35]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \srl64[1][35]~112_combout\,
	datad => \srl64[1][36]~111_combout\,
	combout => \srl64[1][36]~113_combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X38_Y46_N18
\srl64[1][37]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][37]~109_combout\ = (\ExtWord~input_o\ & (\A[6]~input_o\)) # (!\ExtWord~input_o\ & ((\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \srl64[1][37]~109_combout\);

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

-- Location: IOIBUF_X56_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X46_Y47_N28
\srl64[1][38]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][38]~108_combout\ = (\ExtWord~input_o\ & ((\A[7]~input_o\))) # (!\ExtWord~input_o\ & (\A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \srl64[1][38]~108_combout\);

-- Location: LCCOMB_X47_Y44_N16
\srl64[1][38]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][38]~110_combout\ = (\B[0]~input_o\ & ((\srl64[1][38]~108_combout\))) # (!\B[0]~input_o\ & (\srl64[1][37]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \srl64[1][37]~109_combout\,
	datad => \srl64[1][38]~108_combout\,
	combout => \srl64[1][38]~110_combout\);

-- Location: LCCOMB_X47_Y44_N10
\srl64[3][32]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][32]~114_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][38]~110_combout\))) # (!\B[1]~input_o\ & (\srl64[1][36]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][36]~113_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][38]~110_combout\,
	combout => \srl64[3][32]~114_combout\);

-- Location: IOIBUF_X0_Y57_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X39_Y46_N26
\srl64[1][32]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][32]~116_combout\ = (\ExtWord~input_o\ & (\A[1]~input_o\)) # (!\ExtWord~input_o\ & ((\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[33]~input_o\,
	combout => \srl64[1][32]~116_combout\);

-- Location: IOIBUF_X0_Y53_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X39_Y46_N0
\srl64[1][32]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][32]~115_combout\ = (!\B[0]~input_o\ & ((\ExtWord~input_o\ & (\A[0]~input_o\)) # (!\ExtWord~input_o\ & ((\A[32]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[32]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][32]~115_combout\);

-- Location: LCCOMB_X39_Y46_N20
\srl64[1][32]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][32]~117_combout\ = (\srl64[1][32]~115_combout\) # ((\B[0]~input_o\ & \srl64[1][32]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \srl64[1][32]~116_combout\,
	datad => \srl64[1][32]~115_combout\,
	combout => \srl64[1][32]~117_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X47_Y48_N18
\srl64[1][34]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][34]~105_combout\ = (\ExtWord~input_o\ & (\A[3]~input_o\)) # (!\ExtWord~input_o\ & ((\A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[35]~input_o\,
	combout => \srl64[1][34]~105_combout\);

-- Location: IOIBUF_X0_Y52_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X46_Y48_N8
\srl64[1][33]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][33]~106_combout\ = (\ExtWord~input_o\ & (\A[2]~input_o\)) # (!\ExtWord~input_o\ & ((\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[34]~input_o\,
	combout => \srl64[1][33]~106_combout\);

-- Location: LCCOMB_X47_Y45_N8
\srl64[3][32]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][32]~107_combout\ = (\Mux61~0_combout\ & ((\B[0]~input_o\ & (\srl64[1][34]~105_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][33]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \B[0]~input_o\,
	datac => \srl64[1][34]~105_combout\,
	datad => \srl64[1][33]~106_combout\,
	combout => \srl64[3][32]~107_combout\);

-- Location: LCCOMB_X47_Y44_N20
\srl64[3][32]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][32]~118_combout\ = (\srl64[3][32]~114_combout\) # ((\srl64[3][32]~107_combout\) # ((\srl64[1][32]~117_combout\ & \srl64[4][55]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][32]~114_combout\,
	datab => \srl64[1][32]~117_combout\,
	datac => \srl64[4][55]~94_combout\,
	datad => \srl64[3][32]~107_combout\,
	combout => \srl64[3][32]~118_combout\);

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

-- Location: IOIBUF_X20_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X45_Y47_N28
\srl64[1][42]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][42]~122_combout\ = (\ExtWord~input_o\ & (\A[11]~input_o\)) # (!\ExtWord~input_o\ & ((\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[43]~input_o\,
	combout => \srl64[1][42]~122_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X46_Y47_N20
\srl64[1][41]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][41]~123_combout\ = (\ExtWord~input_o\ & (\A[10]~input_o\)) # (!\ExtWord~input_o\ & ((\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[42]~input_o\,
	combout => \srl64[1][41]~123_combout\);

-- Location: LCCOMB_X46_Y47_N14
\srl64[1][42]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][42]~124_combout\ = (\B[0]~input_o\ & (\srl64[1][42]~122_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][41]~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][42]~122_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][41]~123_combout\,
	combout => \srl64[1][42]~124_combout\);

-- Location: IOIBUF_X56_Y73_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X46_Y47_N30
\srl64[1][40]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][40]~119_combout\ = (\ExtWord~input_o\ & (\A[9]~input_o\)) # (!\ExtWord~input_o\ & ((\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[9]~input_o\,
	datad => \A[41]~input_o\,
	combout => \srl64[1][40]~119_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X46_Y47_N24
\srl64[1][39]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][39]~120_combout\ = (\ExtWord~input_o\ & (\A[8]~input_o\)) # (!\ExtWord~input_o\ & ((\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[8]~input_o\,
	datad => \A[40]~input_o\,
	combout => \srl64[1][39]~120_combout\);

-- Location: LCCOMB_X46_Y47_N26
\srl64[1][40]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][40]~121_combout\ = (\B[0]~input_o\ & (\srl64[1][40]~119_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][39]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][40]~119_combout\,
	datab => \srl64[1][39]~120_combout\,
	datac => \B[0]~input_o\,
	combout => \srl64[1][40]~121_combout\);

-- Location: LCCOMB_X47_Y44_N22
\srl64[3][40]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][40]~125_combout\ = (\srl64[1][42]~124_combout\ & ((\Mux61~0_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][40]~121_combout\)))) # (!\srl64[1][42]~124_combout\ & (\srl64[4][55]~94_combout\ & ((\srl64[1][40]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][42]~124_combout\,
	datab => \srl64[4][55]~94_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][40]~121_combout\,
	combout => \srl64[3][40]~125_combout\);

-- Location: LCCOMB_X48_Y45_N18
\srl64[4][32]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][32]~133_combout\ = (\B[3]~input_o\ & ((\srl64[3][40]~132_combout\) # ((\srl64[3][40]~125_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][32]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][40]~132_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][32]~118_combout\,
	datad => \srl64[3][40]~125_combout\,
	combout => \srl64[4][32]~133_combout\);

-- Location: LCCOMB_X43_Y45_N8
\Y_srl[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[0]~6_combout\ = (!\ExtWord~input_o\ & ((\B[4]~input_o\ & (\srl64[4][48]~104_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][32]~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][48]~104_combout\,
	datab => \B[4]~input_o\,
	datac => \srl64[4][32]~133_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y_srl[0]~6_combout\);

-- Location: LCCOMB_X46_Y47_N2
\srl64[2][8]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][8]~53_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datad => \A[10]~input_o\,
	combout => \srl64[2][8]~53_combout\);

-- Location: LCCOMB_X45_Y47_N10
\srl64[2][9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][9]~52_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[9]~input_o\,
	combout => \srl64[2][9]~52_combout\);

-- Location: LCCOMB_X46_Y46_N2
\srl64[5][0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][0]~54_combout\ = (\B[3]~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][9]~52_combout\))) # (!\B[0]~input_o\ & (\srl64[2][8]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][8]~53_combout\,
	datab => \srl64[2][9]~52_combout\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[5][0]~54_combout\);

-- Location: LCCOMB_X39_Y48_N8
\srl64[5][0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][0]~55_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[5][0]~55_combout\);

-- Location: LCCOMB_X39_Y48_N26
\srl64[4][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][1]~56_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \srl64[4][1]~56_combout\);

-- Location: LCCOMB_X45_Y45_N18
\srl64[5][0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][0]~57_combout\ = (!\B[3]~input_o\ & ((\srl64[5][0]~55_combout\) # ((\B[0]~input_o\ & \srl64[4][1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[5][0]~55_combout\,
	datac => \srl64[4][1]~56_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[5][0]~57_combout\);

-- Location: LCCOMB_X46_Y47_N16
\srl64[2][4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][4]~49_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \srl64[2][4]~49_combout\);

-- Location: LCCOMB_X47_Y48_N16
\srl64[2][4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][4]~50_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \srl64[2][4]~50_combout\);

-- Location: LCCOMB_X45_Y48_N0
\srl64[2][12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][12]~47_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[14]~input_o\,
	combout => \srl64[2][12]~47_combout\);

-- Location: LCCOMB_X45_Y47_N0
\srl64[2][13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][13]~46_combout\ = (\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[15]~input_o\,
	combout => \srl64[2][13]~46_combout\);

-- Location: LCCOMB_X46_Y46_N24
\srl64[2][12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][12]~48_combout\ = (\B[0]~input_o\ & ((\srl64[2][13]~46_combout\))) # (!\B[0]~input_o\ & (\srl64[2][12]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][12]~47_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][13]~46_combout\,
	combout => \srl64[2][12]~48_combout\);

-- Location: LCCOMB_X45_Y45_N8
\srl64[5][0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][0]~51_combout\ = (\B[3]~input_o\ & (((\srl64[2][12]~48_combout\)))) # (!\B[3]~input_o\ & ((\srl64[2][4]~49_combout\) # ((\srl64[2][4]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][4]~49_combout\,
	datab => \srl64[2][4]~50_combout\,
	datac => \srl64[2][12]~48_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[5][0]~51_combout\);

-- Location: LCCOMB_X45_Y45_N12
\srl64[5][0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][0]~58_combout\ = (\B[2]~input_o\ & (((\srl64[5][0]~51_combout\)))) # (!\B[2]~input_o\ & ((\srl64[5][0]~54_combout\) # ((\srl64[5][0]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][0]~54_combout\,
	datab => \srl64[5][0]~57_combout\,
	datac => \srl64[5][0]~51_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[5][0]~58_combout\);

-- Location: LCCOMB_X42_Y45_N26
\srl64[2][20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][20]~63_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \srl64[2][20]~63_combout\);

-- Location: LCCOMB_X42_Y45_N16
\srl64[2][21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][21]~62_combout\ = (\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \srl64[2][21]~62_combout\);

-- Location: LCCOMB_X42_Y44_N24
\srl64[2][20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][20]~64_combout\ = (\B[0]~input_o\ & ((\srl64[2][21]~62_combout\))) # (!\B[0]~input_o\ & (\srl64[2][20]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][20]~63_combout\,
	datab => \srl64[2][21]~62_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][20]~64_combout\);

-- Location: LCCOMB_X38_Y47_N16
\srl64[2][28]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][28]~59_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\A[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][28]~59_combout\);

-- Location: LCCOMB_X38_Y47_N10
\srl64[2][28]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][28]~60_combout\ = (\B[1]~input_o\ & ((\A[30]~input_o\))) # (!\B[1]~input_o\ & (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[30]~input_o\,
	combout => \srl64[2][28]~60_combout\);

-- Location: LCCOMB_X38_Y47_N28
\srl64[2][28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][28]~61_combout\ = (\srl64[2][28]~59_combout\) # ((!\B[0]~input_o\ & \srl64[2][28]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[2][28]~59_combout\,
	datad => \srl64[2][28]~60_combout\,
	combout => \srl64[2][28]~61_combout\);

-- Location: LCCOMB_X45_Y45_N14
\srl64[4][16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][16]~65_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\srl64[2][28]~61_combout\))) # (!\B[3]~input_o\ & (\srl64[2][20]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[2][20]~64_combout\,
	datac => \srl64[2][28]~61_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[4][16]~65_combout\);

-- Location: LCCOMB_X38_Y44_N24
\srl64[2][24]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][24]~67_combout\ = (\B[1]~input_o\ & ((\A[26]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[26]~input_o\,
	combout => \srl64[2][24]~67_combout\);

-- Location: LCCOMB_X39_Y44_N8
\srl64[2][25]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][25]~66_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][25]~66_combout\);

-- Location: LCCOMB_X42_Y44_N10
\srl64[2][24]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][24]~68_combout\ = (\B[0]~input_o\ & ((\srl64[2][25]~66_combout\))) # (!\B[0]~input_o\ & (\srl64[2][24]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][24]~67_combout\,
	datac => \srl64[2][25]~66_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][24]~68_combout\);

-- Location: LCCOMB_X38_Y45_N0
\srl64[2][17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][17]~69_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \srl64[2][17]~69_combout\);

-- Location: LCCOMB_X45_Y48_N2
\srl64[2][16]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][16]~70_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	combout => \srl64[2][16]~70_combout\);

-- Location: LCCOMB_X42_Y44_N4
\srl64[2][16]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][16]~71_combout\ = (\B[0]~input_o\ & (\srl64[2][17]~69_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][16]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][17]~69_combout\,
	datac => \srl64[2][16]~70_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][16]~71_combout\);

-- Location: LCCOMB_X45_Y45_N0
\srl64[4][16]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][16]~72_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\srl64[2][24]~68_combout\)) # (!\B[3]~input_o\ & ((\srl64[2][16]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[2][24]~68_combout\,
	datac => \srl64[2][16]~71_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[4][16]~72_combout\);

-- Location: LCCOMB_X45_Y45_N26
\srl64[5][0]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][0]~73_combout\ = (\B[4]~input_o\ & (((\srl64[4][16]~65_combout\) # (\srl64[4][16]~72_combout\)))) # (!\B[4]~input_o\ & (\srl64[5][0]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][0]~58_combout\,
	datab => \srl64[4][16]~65_combout\,
	datac => \B[4]~input_o\,
	datad => \srl64[4][16]~72_combout\,
	combout => \srl64[5][0]~73_combout\);

-- Location: LCCOMB_X43_Y45_N26
\Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~5_combout\ = (\ExtWord~input_o\ & (((\Y_srl[0]~6_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Y_srl[0]~6_combout\)) # (!\B[5]~input_o\ & ((\srl64[5][0]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \Y_srl[0]~6_combout\,
	datad => \srl64[5][0]~73_combout\,
	combout => \Mux63~5_combout\);

-- Location: IOIBUF_X0_Y49_N8
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X42_Y41_N0
\srl64[5][62]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][62]~134_combout\ = (!\B[4]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \srl64[5][62]~134_combout\);

-- Location: LCCOMB_X43_Y45_N10
\shamt[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shamt[5]~0_combout\ = (\B[5]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shamt[5]~0_combout\);

-- Location: LCCOMB_X45_Y42_N0
\sll64[6][0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][0]~47_combout\ = (\B[0]~input_o\) # (((\shamt[5]~0_combout\) # (!\srl64[4][55]~94_combout\)) # (!\srl64[5][62]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[5][62]~134_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \srl64[4][55]~94_combout\,
	combout => \sll64[6][0]~47_combout\);

-- Location: IOIBUF_X52_Y73_N8
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X43_Y45_N20
\Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~2_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[0]~input_o\ & ((!\sll64[6][0]~47_combout\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sll64[6][0]~47_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux63~2_combout\);

-- Location: LCCOMB_X43_Y45_N30
\srl64[6][32]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][32]~135_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\srl64[4][48]~104_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][32]~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][48]~104_combout\,
	datab => \B[4]~input_o\,
	datac => \srl64[4][32]~133_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \srl64[6][32]~135_combout\);

-- Location: LCCOMB_X43_Y45_N16
\sra64[0][63]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[0][63]~58_combout\ = (\ExtWord~input_o\ & ((\A[31]~input_o\))) # (!\ExtWord~input_o\ & (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \sra64[0][63]~58_combout\);

-- Location: LCCOMB_X43_Y45_N4
\sra64[6][32]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][32]~125_combout\ = (\srl64[6][32]~135_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \sra64[0][63]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \srl64[6][32]~135_combout\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[6][32]~125_combout\);

-- Location: LCCOMB_X43_Y45_N18
\Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~3_combout\ = (\ExtWord~input_o\ & ((\Mux63~2_combout\ & (\sra64[6][32]~125_combout\)) # (!\Mux63~2_combout\ & ((\srl64[6][32]~135_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[6][32]~125_combout\,
	datac => \srl64[6][32]~135_combout\,
	datad => \Mux63~2_combout\,
	combout => \Mux63~3_combout\);

-- Location: LCCOMB_X43_Y45_N28
\Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux63~5_combout\) # ((\Mux63~3_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux63~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~5_combout\,
	datab => \Mux63~2_combout\,
	datac => \Mux63~3_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux63~4_combout\);

-- Location: LCCOMB_X41_Y44_N8
\sll64[6][1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][1]~48_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \sll64[6][1]~48_combout\);

-- Location: LCCOMB_X45_Y42_N26
\sll64[1][1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][1]~49_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sll64[1][1]~49_combout\);

-- Location: LCCOMB_X43_Y43_N24
\sll64[6][1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][1]~50_combout\ = (\sll64[6][1]~48_combout\ & (\sll64[1][1]~49_combout\ & (!\B[3]~input_o\ & \srl64[4][55]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \sll64[1][1]~49_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[4][55]~94_combout\,
	combout => \sll64[6][1]~50_combout\);

-- Location: LCCOMB_X39_Y43_N6
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\sll64[6][1]~50_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[6][1]~50_combout\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X43_Y40_N6
\srl64[3][49]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][49]~158_combout\ = (\srl64[3][32]~96_combout\ & ((\B[0]~input_o\ & (\srl64[1][55]~78_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][54]~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][32]~96_combout\,
	datab => \srl64[1][55]~78_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][54]~97_combout\,
	combout => \srl64[3][49]~158_combout\);

-- Location: LCCOMB_X45_Y40_N30
\srl64[1][49]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][49]~155_combout\ = (\B[0]~input_o\ & ((\srl64[1][49]~89_combout\))) # (!\B[0]~input_o\ & (\srl64[1][48]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][48]~91_combout\,
	datac => \srl64[1][49]~89_combout\,
	combout => \srl64[1][49]~155_combout\);

-- Location: LCCOMB_X45_Y40_N0
\srl64[1][51]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][51]~156_combout\ = (\B[0]~input_o\ & ((\srl64[1][51]~101_combout\))) # (!\B[0]~input_o\ & (\srl64[1][50]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][50]~88_combout\,
	datad => \srl64[1][51]~101_combout\,
	combout => \srl64[1][51]~156_combout\);

-- Location: LCCOMB_X45_Y40_N26
\srl64[3][49]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][49]~157_combout\ = (\srl64[1][49]~155_combout\ & ((\srl64[4][55]~94_combout\) # ((\srl64[1][51]~156_combout\ & \Mux61~0_combout\)))) # (!\srl64[1][49]~155_combout\ & (\srl64[1][51]~156_combout\ & (\Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][49]~155_combout\,
	datab => \srl64[1][51]~156_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[4][55]~94_combout\,
	combout => \srl64[3][49]~157_combout\);

-- Location: LCCOMB_X43_Y40_N16
\srl64[1][53]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][53]~159_combout\ = (\B[0]~input_o\ & ((\srl64[1][53]~98_combout\))) # (!\B[0]~input_o\ & (\srl64[1][52]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][52]~100_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][53]~98_combout\,
	combout => \srl64[1][53]~159_combout\);

-- Location: LCCOMB_X45_Y40_N20
\srl64[3][49]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][49]~160_combout\ = (\srl64[3][49]~158_combout\) # ((\srl64[3][49]~157_combout\) # ((\sll64[3][5]~46_combout\ & \srl64[1][53]~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][49]~158_combout\,
	datab => \sll64[3][5]~46_combout\,
	datac => \srl64[3][49]~157_combout\,
	datad => \srl64[1][53]~159_combout\,
	combout => \srl64[3][49]~160_combout\);

-- Location: LCCOMB_X42_Y40_N14
\srl64[1][61]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][61]~152_combout\ = (\B[0]~input_o\ & (\srl64[1][61]~81_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][60]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][61]~81_combout\,
	datab => \B[0]~input_o\,
	datad => \srl64[1][60]~83_combout\,
	combout => \srl64[1][61]~152_combout\);

-- Location: LCCOMB_X42_Y40_N8
\srl64[1][59]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][59]~149_combout\ = (\B[0]~input_o\ & ((\srl64[1][59]~84_combout\))) # (!\B[0]~input_o\ & (\srl64[1][58]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][58]~74_combout\,
	datab => \B[0]~input_o\,
	datac => \srl64[1][59]~84_combout\,
	combout => \srl64[1][59]~149_combout\);

-- Location: LCCOMB_X42_Y40_N10
\sra64[3][57]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][57]~59_combout\ = (\Mux61~0_combout\ & ((\srl64[1][59]~149_combout\) # ((\sll64[3][5]~46_combout\ & \srl64[1][61]~152_combout\)))) # (!\Mux61~0_combout\ & (\sll64[3][5]~46_combout\ & (\srl64[1][61]~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \sll64[3][5]~46_combout\,
	datac => \srl64[1][61]~152_combout\,
	datad => \srl64[1][59]~149_combout\,
	combout => \sra64[3][57]~59_combout\);

-- Location: LCCOMB_X42_Y40_N28
\sra64[3][57]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][57]~60_combout\ = (\B[1]~input_o\ & (\B[2]~input_o\ & ((\sra64[0][63]~57_combout\) # (\sra64[0][63]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \sra64[0][63]~57_combout\,
	datac => \sra64[0][63]~56_combout\,
	datad => \B[2]~input_o\,
	combout => \sra64[3][57]~60_combout\);

-- Location: LCCOMB_X42_Y40_N2
\srl64[1][57]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][57]~150_combout\ = (\B[0]~input_o\ & (\srl64[1][57]~75_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][56]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][57]~75_combout\,
	datab => \B[0]~input_o\,
	datad => \srl64[1][56]~77_combout\,
	combout => \srl64[1][57]~150_combout\);

-- Location: LCCOMB_X42_Y40_N6
\sra64[3][57]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][57]~61_combout\ = (\sra64[3][57]~59_combout\) # ((\sra64[3][57]~60_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][57]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][57]~59_combout\,
	datab => \sra64[3][57]~60_combout\,
	datac => \srl64[4][55]~94_combout\,
	datad => \srl64[1][57]~150_combout\,
	combout => \sra64[3][57]~61_combout\);

-- Location: LCCOMB_X40_Y43_N18
\sra64[5][33]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][33]~62_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\sra64[3][57]~61_combout\))) # (!\B[3]~input_o\ & (\srl64[3][49]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][49]~160_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sra64[3][57]~61_combout\,
	combout => \sra64[5][33]~62_combout\);

-- Location: LCCOMB_X45_Y44_N0
\srl64[1][45]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][45]~183_combout\ = (\B[0]~input_o\ & ((\srl64[1][45]~127_combout\))) # (!\B[0]~input_o\ & (\srl64[1][44]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][44]~129_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][45]~127_combout\,
	combout => \srl64[1][45]~183_combout\);

-- Location: LCCOMB_X45_Y44_N6
\srl64[1][47]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][47]~182_combout\ = (\B[0]~input_o\ & ((\srl64[1][47]~92_combout\))) # (!\B[0]~input_o\ & (\srl64[1][46]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][46]~126_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][47]~92_combout\,
	combout => \srl64[1][47]~182_combout\);

-- Location: LCCOMB_X43_Y43_N28
\srl64[3][41]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][41]~184_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][47]~182_combout\))) # (!\B[1]~input_o\ & (\srl64[1][45]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \srl64[1][45]~183_combout\,
	datac => \B[1]~input_o\,
	datad => \srl64[1][47]~182_combout\,
	combout => \srl64[3][41]~184_combout\);

-- Location: LCCOMB_X47_Y45_N12
\srl64[3][33]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][33]~173_combout\ = (\Mux61~0_combout\ & ((\B[0]~input_o\ & ((\srl64[1][35]~112_combout\))) # (!\B[0]~input_o\ & (\srl64[1][34]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \B[0]~input_o\,
	datac => \srl64[1][34]~105_combout\,
	datad => \srl64[1][35]~112_combout\,
	combout => \srl64[3][33]~173_combout\);

-- Location: LCCOMB_X47_Y45_N22
\srl64[1][37]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][37]~175_combout\ = (\B[0]~input_o\ & (\srl64[1][37]~109_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][36]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][37]~109_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][36]~111_combout\,
	combout => \srl64[1][37]~175_combout\);

-- Location: LCCOMB_X46_Y47_N18
\srl64[1][39]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][39]~174_combout\ = (\B[0]~input_o\ & ((\srl64[1][39]~120_combout\))) # (!\B[0]~input_o\ & (\srl64[1][38]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][38]~108_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][39]~120_combout\,
	combout => \srl64[1][39]~174_combout\);

-- Location: LCCOMB_X47_Y45_N16
\srl64[3][33]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][33]~176_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][39]~174_combout\))) # (!\B[1]~input_o\ & (\srl64[1][37]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][37]~175_combout\,
	datab => \B[1]~input_o\,
	datac => \srl64[1][39]~174_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][33]~176_combout\);

-- Location: LCCOMB_X47_Y45_N18
\srl64[1][33]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][33]~177_combout\ = (\B[0]~input_o\ & ((\srl64[1][33]~106_combout\))) # (!\B[0]~input_o\ & (\srl64[1][32]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][32]~116_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][33]~106_combout\,
	combout => \srl64[1][33]~177_combout\);

-- Location: LCCOMB_X47_Y45_N28
\srl64[3][33]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][33]~178_combout\ = (\srl64[3][33]~173_combout\) # ((\srl64[3][33]~176_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][33]~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][33]~173_combout\,
	datab => \srl64[3][33]~176_combout\,
	datac => \srl64[4][55]~94_combout\,
	datad => \srl64[1][33]~177_combout\,
	combout => \srl64[3][33]~178_combout\);

-- Location: LCCOMB_X46_Y47_N4
\srl64[1][41]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][41]~179_combout\ = (\B[0]~input_o\ & ((\srl64[1][41]~123_combout\))) # (!\B[0]~input_o\ & (\srl64[1][40]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][40]~119_combout\,
	datab => \srl64[1][41]~123_combout\,
	datac => \B[0]~input_o\,
	combout => \srl64[1][41]~179_combout\);

-- Location: LCCOMB_X45_Y44_N4
\srl64[1][43]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][43]~180_combout\ = (\B[0]~input_o\ & ((\srl64[1][43]~130_combout\))) # (!\B[0]~input_o\ & (\srl64[1][42]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][42]~122_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][43]~130_combout\,
	combout => \srl64[1][43]~180_combout\);

-- Location: LCCOMB_X43_Y43_N10
\srl64[3][41]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][41]~181_combout\ = (\srl64[1][41]~179_combout\ & ((\srl64[4][55]~94_combout\) # ((\Mux61~0_combout\ & \srl64[1][43]~180_combout\)))) # (!\srl64[1][41]~179_combout\ & (((\Mux61~0_combout\ & \srl64[1][43]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][41]~179_combout\,
	datab => \srl64[4][55]~94_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][43]~180_combout\,
	combout => \srl64[3][41]~181_combout\);

-- Location: LCCOMB_X43_Y43_N14
\srl64[4][33]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][33]~185_combout\ = (\B[3]~input_o\ & ((\srl64[3][41]~184_combout\) # ((\srl64[3][41]~181_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][33]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][41]~184_combout\,
	datac => \srl64[3][33]~178_combout\,
	datad => \srl64[3][41]~181_combout\,
	combout => \srl64[4][33]~185_combout\);

-- Location: LCCOMB_X39_Y43_N16
\sra64[5][33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][33]~63_combout\ = (\sra64[5][33]~62_combout\) # ((!\B[4]~input_o\ & \srl64[4][33]~185_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \sra64[5][33]~62_combout\,
	datad => \srl64[4][33]~185_combout\,
	combout => \sra64[5][33]~63_combout\);

-- Location: LCCOMB_X42_Y45_N8
\srl64[2][22]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][22]~143_combout\ = (\B[1]~input_o\ & (\A[24]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \srl64[2][22]~143_combout\);

-- Location: LCCOMB_X42_Y44_N8
\srl64[2][21]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][21]~144_combout\ = (\B[0]~input_o\ & ((\srl64[2][22]~143_combout\))) # (!\B[0]~input_o\ & (\srl64[2][21]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \srl64[2][21]~62_combout\,
	datad => \srl64[2][22]~143_combout\,
	combout => \srl64[2][21]~144_combout\);

-- Location: LCCOMB_X45_Y48_N4
\srl64[2][18]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][18]~145_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[20]~input_o\,
	combout => \srl64[2][18]~145_combout\);

-- Location: LCCOMB_X42_Y44_N2
\srl64[2][17]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][17]~146_combout\ = (\B[0]~input_o\ & ((\srl64[2][18]~145_combout\))) # (!\B[0]~input_o\ & (\srl64[2][17]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \srl64[2][17]~69_combout\,
	datad => \srl64[2][18]~145_combout\,
	combout => \srl64[2][17]~146_combout\);

-- Location: LCCOMB_X43_Y44_N10
\srl64[3][17]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][17]~147_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\srl64[2][21]~144_combout\)) # (!\B[2]~input_o\ & ((\srl64[2][17]~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][21]~144_combout\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[2][17]~146_combout\,
	combout => \srl64[3][17]~147_combout\);

-- Location: LCCOMB_X38_Y44_N6
\srl64[2][26]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][26]~140_combout\ = (\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[28]~input_o\,
	datad => \A[26]~input_o\,
	combout => \srl64[2][26]~140_combout\);

-- Location: LCCOMB_X42_Y44_N14
\srl64[2][25]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][25]~141_combout\ = (\B[0]~input_o\ & (\srl64[2][26]~140_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][25]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][26]~140_combout\,
	datac => \srl64[2][25]~66_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][25]~141_combout\);

-- Location: LCCOMB_X39_Y46_N30
\srl64[1][31]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][31]~136_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[32]~input_o\))) # (!\B[0]~input_o\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[32]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][31]~136_combout\);

-- Location: LCCOMB_X39_Y46_N16
\srl64[1][31]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][31]~137_combout\ = (\srl64[1][31]~136_combout\) # ((\A[0]~input_o\ & (\ExtWord~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[1][31]~136_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][31]~137_combout\);

-- Location: LCCOMB_X39_Y46_N18
\srl64[2][29]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][29]~138_combout\ = (\B[0]~input_o\ & (\A[30]~input_o\)) # (!\B[0]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[29]~input_o\,
	combout => \srl64[2][29]~138_combout\);

-- Location: LCCOMB_X39_Y46_N4
\srl64[2][29]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][29]~139_combout\ = (\B[1]~input_o\ & (\srl64[1][31]~137_combout\)) # (!\B[1]~input_o\ & (((\srl64[2][29]~138_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][31]~137_combout\,
	datab => \srl64[2][29]~138_combout\,
	datac => \B[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[2][29]~139_combout\);

-- Location: LCCOMB_X43_Y44_N24
\srl64[4][25]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][25]~142_combout\ = (\B[2]~input_o\ & (((\srl64[2][29]~139_combout\)))) # (!\B[2]~input_o\ & (\srl64[2][25]~141_combout\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][25]~141_combout\,
	datab => \ExtWord~input_o\,
	datac => \srl64[2][29]~139_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[4][25]~142_combout\);

-- Location: LCCOMB_X43_Y44_N28
\srl64[4][17]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][17]~148_combout\ = (\B[3]~input_o\ & ((\srl64[4][25]~142_combout\))) # (!\B[3]~input_o\ & (\srl64[3][17]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][17]~147_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[4][25]~142_combout\,
	combout => \srl64[4][17]~148_combout\);

-- Location: LCCOMB_X47_Y48_N14
\srl64[2][5]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][5]~163_combout\ = (\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[5]~input_o\,
	combout => \srl64[2][5]~163_combout\);

-- Location: LCCOMB_X47_Y48_N12
\srl64[2][6]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][6]~162_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datad => \A[6]~input_o\,
	combout => \srl64[2][6]~162_combout\);

-- Location: LCCOMB_X47_Y48_N0
\srl64[4][1]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][1]~164_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][6]~162_combout\))) # (!\B[0]~input_o\ & (\srl64[2][5]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[2][5]~163_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[2][6]~162_combout\,
	combout => \srl64[4][1]~164_combout\);

-- Location: LCCOMB_X45_Y48_N14
\srl64[2][14]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][14]~165_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[14]~input_o\,
	combout => \srl64[2][14]~165_combout\);

-- Location: LCCOMB_X46_Y46_N28
\srl64[2][13]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][13]~166_combout\ = (\B[0]~input_o\ & ((\srl64[2][14]~165_combout\))) # (!\B[0]~input_o\ & (\srl64[2][13]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][13]~46_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][14]~165_combout\,
	combout => \srl64[2][13]~166_combout\);

-- Location: LCCOMB_X43_Y44_N6
\srl64[4][1]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][1]~167_combout\ = (\B[2]~input_o\ & ((\srl64[4][1]~164_combout\) # ((\srl64[2][13]~166_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][1]~164_combout\,
	datab => \srl64[2][13]~166_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \srl64[4][1]~167_combout\);

-- Location: LCCOMB_X46_Y47_N8
\srl64[2][10]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][10]~168_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \srl64[2][10]~168_combout\);

-- Location: LCCOMB_X46_Y46_N6
\srl64[4][1]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][1]~169_combout\ = (\B[3]~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][10]~168_combout\))) # (!\B[0]~input_o\ & (\srl64[2][9]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \srl64[2][9]~52_combout\,
	datad => \srl64[2][10]~168_combout\,
	combout => \srl64[4][1]~169_combout\);

-- Location: LCCOMB_X39_Y48_N22
\srl64[4][1]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][1]~170_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \srl64[4][1]~170_combout\);

-- Location: LCCOMB_X39_Y48_N24
\srl64[4][1]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][1]~171_combout\ = (!\B[3]~input_o\ & ((\srl64[4][1]~170_combout\) # ((\srl64[4][1]~56_combout\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][1]~56_combout\,
	datab => \srl64[4][1]~170_combout\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[4][1]~171_combout\);

-- Location: LCCOMB_X43_Y44_N16
\srl64[4][1]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][1]~172_combout\ = (\srl64[4][1]~167_combout\) # ((!\B[2]~input_o\ & ((\srl64[4][1]~169_combout\) # (\srl64[4][1]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][1]~167_combout\,
	datab => \srl64[4][1]~169_combout\,
	datac => \srl64[4][1]~171_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[4][1]~172_combout\);

-- Location: LCCOMB_X39_Y43_N10
\Y_sra[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[1]~4_combout\ = (\B[4]~input_o\ & (\srl64[4][17]~148_combout\)) # (!\B[4]~input_o\ & (((!\ExtWord~input_o\ & \srl64[4][1]~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \srl64[4][17]~148_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[4][1]~172_combout\,
	combout => \Y_sra[1]~4_combout\);

-- Location: LCCOMB_X39_Y43_N30
\Y_sra[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[1]~6_combout\ = (\B[5]~input_o\ & (\sra64[5][33]~63_combout\)) # (!\B[5]~input_o\ & ((\ExtWord~input_o\ & (\sra64[5][33]~63_combout\)) # (!\ExtWord~input_o\ & ((\Y_sra[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \sra64[5][33]~63_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_sra[1]~4_combout\,
	combout => \Y_sra[1]~6_combout\);

-- Location: LCCOMB_X42_Y40_N4
\srl64[3][57]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][57]~151_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][59]~149_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][57]~150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][59]~149_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \srl64[1][57]~150_combout\,
	combout => \srl64[3][57]~151_combout\);

-- Location: LCCOMB_X42_Y40_N24
\srl64[2][61]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][61]~153_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\sra64[0][63]~58_combout\)))) # (!\B[1]~input_o\ & (((\srl64[1][61]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \srl64[1][61]~152_combout\,
	datad => \sra64[0][63]~58_combout\,
	combout => \srl64[2][61]~153_combout\);

-- Location: LCCOMB_X42_Y41_N18
\srl64[3][57]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][57]~154_combout\ = (\srl64[3][57]~151_combout\) # ((\B[2]~input_o\ & \srl64[2][61]~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][57]~151_combout\,
	datab => \B[2]~input_o\,
	datac => \srl64[2][61]~153_combout\,
	combout => \srl64[3][57]~154_combout\);

-- Location: LCCOMB_X40_Y43_N16
\srl64[4][49]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][49]~161_combout\ = (\B[3]~input_o\ & ((\srl64[3][57]~154_combout\))) # (!\B[3]~input_o\ & (\srl64[3][49]~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][49]~160_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][57]~154_combout\,
	combout => \srl64[4][49]~161_combout\);

-- Location: LCCOMB_X39_Y43_N2
\srl64[6][33]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][33]~186_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\srl64[4][49]~161_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][33]~185_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \srl64[4][49]~161_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \srl64[4][33]~185_combout\,
	combout => \srl64[6][33]~186_combout\);

-- Location: LCCOMB_X39_Y43_N18
\Y_srl[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~13_combout\ = (\B[5]~input_o\ & (((\srl64[4][33]~185_combout\)))) # (!\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[4][33]~185_combout\))) # (!\ExtWord~input_o\ & (\srl64[4][1]~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \srl64[4][1]~172_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[4][33]~185_combout\,
	combout => \Y_srl[1]~13_combout\);

-- Location: LCCOMB_X39_Y43_N8
\Y_srl[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~12_combout\ = (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\srl64[4][49]~161_combout\)) # (!\B[5]~input_o\ & ((\srl64[4][17]~148_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[4][49]~161_combout\,
	datac => \srl64[4][17]~148_combout\,
	datad => \B[5]~input_o\,
	combout => \Y_srl[1]~12_combout\);

-- Location: LCCOMB_X39_Y43_N24
\Y_srl[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~7_combout\ = (\B[4]~input_o\ & (((\Y_srl[1]~12_combout\)))) # (!\B[4]~input_o\ & (!\ExtWord~input_o\ & (\Y_srl[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_srl[1]~13_combout\,
	datac => \Y_srl[1]~12_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_srl[1]~7_combout\);

-- Location: LCCOMB_X39_Y43_N20
\Y_srl[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~8_combout\ = (\Y_srl[1]~7_combout\) # ((\srl64[6][33]~186_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[6][33]~186_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_srl[1]~7_combout\,
	combout => \Y_srl[1]~8_combout\);

-- Location: LCCOMB_X39_Y43_N28
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\Mux62~0_combout\ & (((\Y_sra[1]~6_combout\)) # (!\ShiftFN[1]~input_o\))) # (!\Mux62~0_combout\ & (\ShiftFN[1]~input_o\ & ((\Y_srl[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_sra[1]~6_combout\,
	datad => \Y_srl[1]~8_combout\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X39_Y48_N10
\sll64[2][2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][2]~51_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][2]~51_combout\);

-- Location: LCCOMB_X39_Y48_N4
\sll64[2][2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][2]~52_combout\ = (\sll64[2][2]~51_combout\) # ((\B[0]~input_o\ & (!\B[1]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][2]~51_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sll64[2][2]~52_combout\);

-- Location: LCCOMB_X43_Y49_N8
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X42_Y43_N8
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\) # ((\ExtWord~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X41_Y41_N16
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\ExtWord~input_o\) # ((\B[5]~input_o\) # (!\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X45_Y47_N20
\srl64[2][15]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][15]~204_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[15]~input_o\,
	combout => \srl64[2][15]~204_combout\);

-- Location: LCCOMB_X46_Y46_N26
\srl64[2][14]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][14]~205_combout\ = (\B[0]~input_o\ & (\srl64[2][15]~204_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][14]~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \srl64[2][15]~204_combout\,
	datad => \srl64[2][14]~165_combout\,
	combout => \srl64[2][14]~205_combout\);

-- Location: LCCOMB_X45_Y47_N26
\srl64[2][11]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][11]~202_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][11]~202_combout\);

-- Location: LCCOMB_X46_Y46_N16
\srl64[3][10]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][10]~203_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\srl64[2][11]~202_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][10]~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][11]~202_combout\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][10]~168_combout\,
	combout => \srl64[3][10]~203_combout\);

-- Location: LCCOMB_X46_Y46_N20
\srl64[3][10]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][10]~206_combout\ = (!\ExtWord~input_o\ & ((\srl64[3][10]~203_combout\) # ((\srl64[2][14]~205_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][14]~205_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][10]~203_combout\,
	combout => \srl64[3][10]~206_combout\);

-- Location: LCCOMB_X46_Y48_N28
\Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux61~4_combout\);

-- Location: LCCOMB_X47_Y48_N2
\srl64[1][4]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][4]~198_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][4]~198_combout\);

-- Location: LCCOMB_X40_Y49_N0
\sll64[4][16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][16]~53_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \sll64[4][16]~53_combout\);

-- Location: LCCOMB_X46_Y48_N30
\srl64[1][2]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][2]~201_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[3]~input_o\))) # (!\B[0]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][2]~201_combout\);

-- Location: LCCOMB_X47_Y48_N4
\srl64[2][6]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][6]~199_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datad => \A[9]~input_o\,
	combout => \srl64[2][6]~199_combout\);

-- Location: LCCOMB_X47_Y48_N6
\srl64[2][6]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][6]~200_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\srl64[2][6]~199_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][6]~162_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[2][6]~199_combout\,
	datad => \srl64[2][6]~162_combout\,
	combout => \srl64[2][6]~200_combout\);

-- Location: LCCOMB_X46_Y48_N16
\Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = (\sll64[4][16]~53_combout\ & (!\Mux61~4_combout\ & (\srl64[1][2]~201_combout\))) # (!\sll64[4][16]~53_combout\ & ((\Mux61~4_combout\) # ((\srl64[2][6]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~53_combout\,
	datab => \Mux61~4_combout\,
	datac => \srl64[1][2]~201_combout\,
	datad => \srl64[2][6]~200_combout\,
	combout => \Mux61~5_combout\);

-- Location: LCCOMB_X46_Y48_N2
\Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = (\Mux61~4_combout\ & ((\Mux61~5_combout\ & (\srl64[3][10]~206_combout\)) # (!\Mux61~5_combout\ & ((\srl64[1][4]~198_combout\))))) # (!\Mux61~4_combout\ & (((\Mux61~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][10]~206_combout\,
	datab => \Mux61~4_combout\,
	datac => \srl64[1][4]~198_combout\,
	datad => \Mux61~5_combout\,
	combout => \Mux61~6_combout\);

-- Location: LCCOMB_X46_Y48_N12
\Mux61~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~7_combout\ = (\Mux61~2_combout\ & (\Mux61~3_combout\)) # (!\Mux61~2_combout\ & ((\Mux61~3_combout\ & (\A[2]~input_o\)) # (!\Mux61~3_combout\ & ((\Mux61~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \A[2]~input_o\,
	datad => \Mux61~6_combout\,
	combout => \Mux61~7_combout\);

-- Location: LCCOMB_X43_Y40_N26
\srl64[1][54]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][54]~208_combout\ = (\B[0]~input_o\ & ((\srl64[1][54]~97_combout\))) # (!\B[0]~input_o\ & (\srl64[1][53]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][53]~98_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][54]~97_combout\,
	combout => \srl64[1][54]~208_combout\);

-- Location: LCCOMB_X43_Y40_N28
\srl64[3][50]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][50]~209_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][56]~79_combout\))) # (!\B[1]~input_o\ & (\srl64[1][54]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][54]~208_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \srl64[1][56]~79_combout\,
	combout => \srl64[3][50]~209_combout\);

-- Location: LCCOMB_X45_Y40_N22
\srl64[3][50]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][50]~207_combout\ = (\Mux61~0_combout\ & ((\B[0]~input_o\ & (\srl64[1][52]~100_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][51]~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][52]~100_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][51]~101_combout\,
	combout => \srl64[3][50]~207_combout\);

-- Location: LCCOMB_X45_Y40_N8
\srl64[3][50]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][50]~210_combout\ = (\srl64[3][50]~209_combout\) # ((\srl64[3][50]~207_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][50]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[3][50]~209_combout\,
	datac => \srl64[3][50]~207_combout\,
	datad => \srl64[1][50]~90_combout\,
	combout => \srl64[3][50]~210_combout\);

-- Location: LCCOMB_X47_Y42_N30
\sra64[3][58]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][58]~64_combout\ = (\B[2]~input_o\) # ((\B[1]~input_o\ & (!\srl64[1][60]~85_combout\)) # (!\B[1]~input_o\ & ((!\srl64[1][58]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][60]~85_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][58]~76_combout\,
	combout => \sra64[3][58]~64_combout\);

-- Location: LCCOMB_X45_Y41_N0
\sra64[3][58]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][58]~65_combout\ = (\sra64[3][58]~64_combout\ & ((\B[1]~input_o\) # ((!\srl64[1][62]~82_combout\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \sra64[3][58]~64_combout\,
	datad => \srl64[1][62]~82_combout\,
	combout => \sra64[3][58]~65_combout\);

-- Location: LCCOMB_X45_Y41_N30
\srl64[4][50]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][50]~218_combout\ = (\B[3]~input_o\ & ((!\sra64[3][58]~65_combout\))) # (!\B[3]~input_o\ & (\srl64[3][50]~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][50]~210_combout\,
	datac => \B[3]~input_o\,
	datad => \sra64[3][58]~65_combout\,
	combout => \srl64[4][50]~218_combout\);

-- Location: LCCOMB_X45_Y42_N16
\Mux61~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~9_combout\ = (\ShiftFN[0]~input_o\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Mux61~9_combout\);

-- Location: LCCOMB_X47_Y45_N30
\srl64[3][34]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][34]~211_combout\ = (\Mux61~0_combout\ & ((\B[0]~input_o\ & ((\srl64[1][36]~111_combout\))) # (!\B[0]~input_o\ & (\srl64[1][35]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][35]~112_combout\,
	datab => \B[0]~input_o\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][36]~111_combout\,
	combout => \srl64[3][34]~211_combout\);

-- Location: LCCOMB_X47_Y44_N4
\srl64[3][34]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][34]~212_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][40]~121_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][38]~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][40]~121_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][38]~110_combout\,
	combout => \srl64[3][34]~212_combout\);

-- Location: LCCOMB_X47_Y45_N0
\srl64[1][34]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][34]~213_combout\ = (\B[0]~input_o\ & ((\srl64[1][34]~105_combout\))) # (!\B[0]~input_o\ & (\srl64[1][33]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][33]~106_combout\,
	datab => \B[0]~input_o\,
	datac => \srl64[1][34]~105_combout\,
	combout => \srl64[1][34]~213_combout\);

-- Location: LCCOMB_X47_Y44_N14
\srl64[3][34]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][34]~214_combout\ = (\srl64[3][34]~211_combout\) # ((\srl64[3][34]~212_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][34]~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][34]~211_combout\,
	datab => \srl64[3][34]~212_combout\,
	datac => \srl64[4][55]~94_combout\,
	datad => \srl64[1][34]~213_combout\,
	combout => \srl64[3][34]~214_combout\);

-- Location: LCCOMB_X45_Y44_N28
\srl64[3][42]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][42]~216_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][48]~93_combout\))) # (!\B[1]~input_o\ & (\srl64[1][46]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][46]~128_combout\,
	datab => \srl64[1][48]~93_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[3][42]~216_combout\);

-- Location: LCCOMB_X45_Y44_N26
\srl64[3][42]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][42]~215_combout\ = (\srl64[4][55]~94_combout\ & ((\srl64[1][42]~124_combout\) # ((\Mux61~0_combout\ & \srl64[1][44]~131_combout\)))) # (!\srl64[4][55]~94_combout\ & (\Mux61~0_combout\ & ((\srl64[1][44]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \Mux61~0_combout\,
	datac => \srl64[1][42]~124_combout\,
	datad => \srl64[1][44]~131_combout\,
	combout => \srl64[3][42]~215_combout\);

-- Location: LCCOMB_X45_Y41_N4
\srl64[4][34]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][34]~217_combout\ = (\B[3]~input_o\ & (((\srl64[3][42]~216_combout\) # (\srl64[3][42]~215_combout\)))) # (!\B[3]~input_o\ & (\srl64[3][34]~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][34]~214_combout\,
	datab => \srl64[3][42]~216_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][42]~215_combout\,
	combout => \srl64[4][34]~217_combout\);

-- Location: LCCOMB_X45_Y42_N30
\Mux61~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~8_combout\ = (!\ShiftFN[0]~input_o\ & (\srl64[4][34]~217_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[4][34]~217_combout\,
	datac => \B[4]~input_o\,
	combout => \Mux61~8_combout\);

-- Location: LCCOMB_X47_Y41_N8
\Mux61~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~10_combout\ = (!\ShiftFN[0]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux61~10_combout\);

-- Location: LCCOMB_X45_Y42_N10
\Mux61~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~11_combout\ = (\Mux61~9_combout\) # ((\Mux61~8_combout\) # ((\srl64[4][50]~218_combout\ & \Mux61~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][50]~218_combout\,
	datab => \Mux61~9_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux61~10_combout\,
	combout => \Mux61~11_combout\);

-- Location: LCCOMB_X45_Y41_N10
\sra64[5][34]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][34]~66_combout\ = (\B[3]~input_o\ & (((\sra64[3][57]~60_combout\) # (!\sra64[3][58]~65_combout\)))) # (!\B[3]~input_o\ & (\srl64[3][50]~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][50]~210_combout\,
	datab => \sra64[3][57]~60_combout\,
	datac => \B[3]~input_o\,
	datad => \sra64[3][58]~65_combout\,
	combout => \sra64[5][34]~66_combout\);

-- Location: LCCOMB_X45_Y42_N20
\sra64[5][34]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][34]~67_combout\ = (\B[4]~input_o\ & (\sra64[5][34]~66_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][34]~217_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][34]~66_combout\,
	datab => \B[4]~input_o\,
	datac => \srl64[4][34]~217_combout\,
	combout => \sra64[5][34]~67_combout\);

-- Location: LCCOMB_X45_Y42_N18
\sra64[6][34]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][34]~126_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\sra64[5][34]~67_combout\))) # (!\ExtWord~input_o\ & (\sra64[0][63]~58_combout\)))) # (!\B[5]~input_o\ & (((\sra64[5][34]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \ExtWord~input_o\,
	datad => \sra64[5][34]~67_combout\,
	combout => \sra64[6][34]~126_combout\);

-- Location: LCCOMB_X45_Y42_N12
\Mux61~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~12_combout\ = (\Mux61~11_combout\ & ((\sra64[6][34]~126_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux61~11_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[5][34]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~11_combout\,
	datab => \sra64[6][34]~126_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[5][34]~67_combout\,
	combout => \Mux61~12_combout\);

-- Location: LCCOMB_X38_Y45_N24
\srl64[2][19]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][19]~194_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	combout => \srl64[2][19]~194_combout\);

-- Location: LCCOMB_X42_Y44_N18
\srl64[2][18]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][18]~195_combout\ = (\B[0]~input_o\ & (\srl64[2][19]~194_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][18]~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \srl64[2][19]~194_combout\,
	datad => \srl64[2][18]~145_combout\,
	combout => \srl64[2][18]~195_combout\);

-- Location: LCCOMB_X39_Y44_N26
\srl64[2][23]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][23]~192_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][23]~192_combout\);

-- Location: LCCOMB_X42_Y44_N0
\srl64[2][22]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][22]~193_combout\ = (\B[0]~input_o\ & ((\srl64[2][23]~192_combout\))) # (!\B[0]~input_o\ & (\srl64[2][22]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[2][22]~143_combout\,
	datad => \srl64[2][23]~192_combout\,
	combout => \srl64[2][22]~193_combout\);

-- Location: LCCOMB_X46_Y44_N16
\srl64[3][18]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][18]~196_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\srl64[2][22]~193_combout\))) # (!\B[2]~input_o\ & (\srl64[2][18]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][18]~195_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][22]~193_combout\,
	combout => \srl64[3][18]~196_combout\);

-- Location: LCCOMB_X42_Y44_N20
\srl64[2][30]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][30]~187_combout\ = (\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][30]~187_combout\);

-- Location: LCCOMB_X47_Y44_N8
\srl64[2][30]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][30]~188_combout\ = (\B[1]~input_o\ & (((\srl64[1][32]~117_combout\)))) # (!\B[1]~input_o\ & (!\ExtWord~input_o\ & ((\srl64[2][30]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[1][32]~117_combout\,
	datad => \srl64[2][30]~187_combout\,
	combout => \srl64[2][30]~188_combout\);

-- Location: LCCOMB_X39_Y44_N0
\srl64[2][27]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][27]~189_combout\ = (\B[1]~input_o\ & ((\A[29]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[29]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][27]~189_combout\);

-- Location: LCCOMB_X42_Y44_N6
\srl64[2][26]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][26]~190_combout\ = (\B[0]~input_o\ & (\srl64[2][27]~189_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][26]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][27]~189_combout\,
	datac => \srl64[2][26]~140_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][26]~190_combout\);

-- Location: LCCOMB_X47_Y44_N26
\srl64[4][26]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][26]~191_combout\ = (\B[2]~input_o\ & (\srl64[2][30]~188_combout\)) # (!\B[2]~input_o\ & (((!\ExtWord~input_o\ & \srl64[2][26]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \srl64[2][30]~188_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[2][26]~190_combout\,
	combout => \srl64[4][26]~191_combout\);

-- Location: LCCOMB_X46_Y48_N10
\srl64[4][18]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][18]~197_combout\ = (\B[3]~input_o\ & ((\srl64[4][26]~191_combout\))) # (!\B[3]~input_o\ & (\srl64[3][18]~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][18]~196_combout\,
	datad => \srl64[4][26]~191_combout\,
	combout => \srl64[4][18]~197_combout\);

-- Location: LCCOMB_X46_Y48_N22
\Mux61~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~13_combout\ = (\Mux61~7_combout\ & (((\Mux61~12_combout\)) # (!\Mux61~2_combout\))) # (!\Mux61~7_combout\ & (\Mux61~2_combout\ & ((\srl64[4][18]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~7_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux61~12_combout\,
	datad => \srl64[4][18]~197_combout\,
	combout => \Mux61~13_combout\);

-- Location: LCCOMB_X46_Y48_N6
\Mux60~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~12_combout\ = (\sll64[6][1]~48_combout\ & (\Mux61~1_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \Mux61~1_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux60~12_combout\);

-- Location: LCCOMB_X46_Y48_N24
\Mux61~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~14_combout\ = (\sll64[2][2]~52_combout\ & ((\Mux60~12_combout\) # ((!\Mux61~1_combout\ & \Mux61~13_combout\)))) # (!\sll64[2][2]~52_combout\ & (!\Mux61~1_combout\ & (\Mux61~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][2]~52_combout\,
	datab => \Mux61~1_combout\,
	datac => \Mux61~13_combout\,
	datad => \Mux60~12_combout\,
	combout => \Mux61~14_combout\);

-- Location: LCCOMB_X46_Y48_N18
\sll64[2][3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][3]~54_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][3]~54_combout\);

-- Location: LCCOMB_X42_Y48_N0
\sll64[2][3]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][3]~55_combout\ = (\sll64[2][3]~54_combout\) # ((\sll64[1][1]~49_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~49_combout\,
	datab => \B[1]~input_o\,
	datad => \sll64[2][3]~54_combout\,
	combout => \sll64[2][3]~55_combout\);

-- Location: LCCOMB_X43_Y43_N2
\srl64[3][43]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][43]~236_combout\ = (\srl64[4][55]~94_combout\ & ((\srl64[1][43]~180_combout\) # ((\srl64[1][45]~183_combout\ & \Mux61~0_combout\)))) # (!\srl64[4][55]~94_combout\ & (\srl64[1][45]~183_combout\ & (\Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[1][45]~183_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][43]~180_combout\,
	combout => \srl64[3][43]~236_combout\);

-- Location: LCCOMB_X47_Y45_N10
\srl64[3][35]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][35]~238_combout\ = (\Mux61~0_combout\ & ((\B[0]~input_o\ & ((\srl64[1][37]~109_combout\))) # (!\B[0]~input_o\ & (\srl64[1][36]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][36]~111_combout\,
	datab => \B[0]~input_o\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][37]~109_combout\,
	combout => \srl64[3][35]~238_combout\);

-- Location: LCCOMB_X47_Y45_N20
\srl64[3][35]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][35]~239_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][41]~179_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][39]~174_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][41]~179_combout\,
	datab => \B[1]~input_o\,
	datac => \srl64[1][39]~174_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][35]~239_combout\);

-- Location: LCCOMB_X47_Y45_N6
\srl64[1][35]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][35]~240_combout\ = (\B[0]~input_o\ & ((\srl64[1][35]~112_combout\))) # (!\B[0]~input_o\ & (\srl64[1][34]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][34]~105_combout\,
	datab => \B[0]~input_o\,
	datac => \srl64[1][35]~112_combout\,
	combout => \srl64[1][35]~240_combout\);

-- Location: LCCOMB_X47_Y45_N24
\srl64[3][35]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][35]~241_combout\ = (\srl64[3][35]~238_combout\) # ((\srl64[3][35]~239_combout\) # ((\srl64[1][35]~240_combout\ & \srl64[4][55]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][35]~238_combout\,
	datab => \srl64[3][35]~239_combout\,
	datac => \srl64[1][35]~240_combout\,
	datad => \srl64[4][55]~94_combout\,
	combout => \srl64[3][35]~241_combout\);

-- Location: LCCOMB_X45_Y40_N18
\srl64[3][43]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][43]~237_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][49]~155_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][47]~182_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][49]~155_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][47]~182_combout\,
	combout => \srl64[3][43]~237_combout\);

-- Location: LCCOMB_X46_Y45_N14
\srl64[4][35]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][35]~365_combout\ = (\B[3]~input_o\ & ((\srl64[3][43]~236_combout\) # ((\srl64[3][43]~237_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][35]~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][43]~236_combout\,
	datab => \srl64[3][35]~241_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][43]~237_combout\,
	combout => \srl64[4][35]~365_combout\);

-- Location: LCCOMB_X42_Y40_N16
\sra64[3][59]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][59]~68_combout\ = (\Mux61~0_combout\ & ((\srl64[1][61]~152_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][59]~149_combout\)))) # (!\Mux61~0_combout\ & (((\srl64[4][55]~94_combout\ & \srl64[1][59]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \srl64[1][61]~152_combout\,
	datac => \srl64[4][55]~94_combout\,
	datad => \srl64[1][59]~149_combout\,
	combout => \sra64[3][59]~68_combout\);

-- Location: LCCOMB_X42_Y41_N30
\sra64[4][51]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][51]~69_combout\ = (\B[2]~input_o\ & ((\ExtWord~input_o\ & ((\A[31]~input_o\))) # (!\ExtWord~input_o\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[2]~input_o\,
	combout => \sra64[4][51]~69_combout\);

-- Location: LCCOMB_X43_Y40_N0
\srl64[1][55]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][55]~233_combout\ = (\B[0]~input_o\ & (\srl64[1][55]~78_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][54]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][55]~78_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][54]~97_combout\,
	combout => \srl64[1][55]~233_combout\);

-- Location: LCCOMB_X43_Y40_N10
\srl64[3][51]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][51]~234_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][57]~150_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][55]~233_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][57]~150_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \srl64[1][55]~233_combout\,
	combout => \srl64[3][51]~234_combout\);

-- Location: LCCOMB_X43_Y40_N14
\srl64[3][51]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][51]~232_combout\ = (\Mux61~0_combout\ & ((\B[0]~input_o\ & ((\srl64[1][53]~98_combout\))) # (!\B[0]~input_o\ & (\srl64[1][52]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][52]~100_combout\,
	datab => \srl64[1][53]~98_combout\,
	datac => \B[0]~input_o\,
	datad => \Mux61~0_combout\,
	combout => \srl64[3][51]~232_combout\);

-- Location: LCCOMB_X42_Y41_N20
\srl64[3][51]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][51]~235_combout\ = (\srl64[3][51]~234_combout\) # ((\srl64[3][51]~232_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][51]~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[3][51]~234_combout\,
	datac => \srl64[1][51]~156_combout\,
	datad => \srl64[3][51]~232_combout\,
	combout => \srl64[3][51]~235_combout\);

-- Location: LCCOMB_X42_Y41_N8
\sra64[4][51]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][51]~70_combout\ = (\B[3]~input_o\ & ((\sra64[3][59]~68_combout\) # ((\sra64[4][51]~69_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][51]~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][59]~68_combout\,
	datab => \B[3]~input_o\,
	datac => \sra64[4][51]~69_combout\,
	datad => \srl64[3][51]~235_combout\,
	combout => \sra64[4][51]~70_combout\);

-- Location: LCCOMB_X43_Y41_N24
\sra64[5][35]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][35]~71_combout\ = (\B[4]~input_o\ & ((\sra64[4][51]~70_combout\))) # (!\B[4]~input_o\ & (\srl64[4][35]~365_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[4][35]~365_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[4][51]~70_combout\,
	combout => \sra64[5][35]~71_combout\);

-- Location: LCCOMB_X43_Y41_N6
\sra64[6][35]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][35]~127_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\sra64[5][35]~71_combout\)) # (!\ExtWord~input_o\ & ((\sra64[0][63]~58_combout\))))) # (!\B[5]~input_o\ & (\sra64[5][35]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \sra64[5][35]~71_combout\,
	datac => \ExtWord~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[6][35]~127_combout\);

-- Location: LCCOMB_X42_Y41_N26
\srl64[3][59]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][59]~242_combout\ = (\sra64[3][59]~68_combout\) # ((!\B[0]~input_o\ & (\sll64[3][5]~46_combout\ & \sra64[0][63]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][59]~68_combout\,
	datab => \B[0]~input_o\,
	datac => \sll64[3][5]~46_combout\,
	datad => \sra64[0][63]~58_combout\,
	combout => \srl64[3][59]~242_combout\);

-- Location: LCCOMB_X42_Y41_N12
\srl64[4][51]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][51]~243_combout\ = (\B[3]~input_o\ & ((\srl64[3][59]~242_combout\))) # (!\B[3]~input_o\ & (\srl64[3][51]~235_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][51]~235_combout\,
	datac => \srl64[3][59]~242_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[4][51]~243_combout\);

-- Location: LCCOMB_X43_Y41_N18
\Mux60~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~7_combout\ = (!\B[4]~input_o\ & (!\ShiftFN[0]~input_o\ & \srl64[4][35]~365_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \srl64[4][35]~365_combout\,
	combout => \Mux60~7_combout\);

-- Location: LCCOMB_X43_Y41_N4
\Mux60~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~8_combout\ = (\Mux60~7_combout\) # ((\Mux61~9_combout\) # ((\srl64[4][51]~243_combout\ & \Mux61~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][51]~243_combout\,
	datab => \Mux60~7_combout\,
	datac => \Mux61~9_combout\,
	datad => \Mux61~10_combout\,
	combout => \Mux60~8_combout\);

-- Location: LCCOMB_X43_Y41_N22
\Mux60~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~9_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux60~8_combout\ & (\sra64[6][35]~127_combout\)) # (!\Mux60~8_combout\ & ((\sra64[5][35]~71_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux60~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][35]~127_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux60~8_combout\,
	datad => \sra64[5][35]~71_combout\,
	combout => \Mux60~9_combout\);

-- Location: LCCOMB_X42_Y44_N22
\srl64[2][23]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][23]~222_combout\ = (\B[0]~input_o\ & (\srl64[2][24]~67_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][23]~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[2][24]~67_combout\,
	datad => \srl64[2][23]~192_combout\,
	combout => \srl64[2][23]~222_combout\);

-- Location: LCCOMB_X42_Y44_N16
\srl64[2][19]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][19]~223_combout\ = (\B[0]~input_o\ & (\srl64[2][20]~63_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][19]~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][20]~63_combout\,
	datac => \srl64[2][19]~194_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][19]~223_combout\);

-- Location: LCCOMB_X42_Y44_N26
\srl64[3][19]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][19]~224_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\srl64[2][23]~222_combout\)) # (!\B[2]~input_o\ & ((\srl64[2][19]~223_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][23]~222_combout\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[2][19]~223_combout\,
	combout => \srl64[3][19]~224_combout\);

-- Location: LCCOMB_X46_Y45_N18
\srl64[3][27]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][27]~219_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][33]~177_combout\))) # (!\B[1]~input_o\ & (\srl64[1][31]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][31]~137_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][33]~177_combout\,
	combout => \srl64[3][27]~219_combout\);

-- Location: LCCOMB_X42_Y44_N12
\srl64[2][27]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][27]~220_combout\ = (\B[0]~input_o\ & ((\srl64[2][28]~60_combout\))) # (!\B[0]~input_o\ & (\srl64[2][27]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][27]~189_combout\,
	datac => \srl64[2][28]~60_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][27]~220_combout\);

-- Location: LCCOMB_X46_Y45_N20
\srl64[3][27]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][27]~221_combout\ = (\srl64[3][27]~219_combout\) # ((!\ExtWord~input_o\ & (!\B[2]~input_o\ & \srl64[2][27]~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[3][27]~219_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][27]~220_combout\,
	combout => \srl64[3][27]~221_combout\);

-- Location: LCCOMB_X46_Y45_N6
\srl64[4][19]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][19]~225_combout\ = (\B[3]~input_o\ & ((\srl64[3][27]~221_combout\))) # (!\B[3]~input_o\ & (\srl64[3][19]~224_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][19]~224_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][27]~221_combout\,
	combout => \srl64[4][19]~225_combout\);

-- Location: LCCOMB_X47_Y48_N8
\srl64[1][5]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][5]~226_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][5]~226_combout\);

-- Location: LCCOMB_X47_Y48_N26
\srl64[2][7]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][7]~227_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][8]~53_combout\))) # (!\B[0]~input_o\ & (\srl64[2][6]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[2][6]~199_combout\,
	datac => \srl64[2][8]~53_combout\,
	datad => \ExtWord~input_o\,
	combout => \srl64[2][7]~227_combout\);

-- Location: LCCOMB_X47_Y48_N20
\srl64[1][3]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][3]~228_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \srl64[1][3]~228_combout\);

-- Location: LCCOMB_X47_Y48_N30
\Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~4_combout\ = (\sll64[4][16]~53_combout\ & (((!\Mux61~4_combout\ & \srl64[1][3]~228_combout\)))) # (!\sll64[4][16]~53_combout\ & ((\srl64[2][7]~227_combout\) # ((\Mux61~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][7]~227_combout\,
	datab => \sll64[4][16]~53_combout\,
	datac => \Mux61~4_combout\,
	datad => \srl64[1][3]~228_combout\,
	combout => \Mux60~4_combout\);

-- Location: LCCOMB_X46_Y46_N30
\srl64[3][11]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][11]~229_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][12]~47_combout\))) # (!\B[0]~input_o\ & (\srl64[2][11]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][11]~202_combout\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][12]~47_combout\,
	combout => \srl64[3][11]~229_combout\);

-- Location: LCCOMB_X46_Y46_N8
\srl64[2][15]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][15]~230_combout\ = (\B[0]~input_o\ & ((\srl64[2][16]~70_combout\))) # (!\B[0]~input_o\ & (\srl64[2][15]~204_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][15]~204_combout\,
	datac => \srl64[2][16]~70_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][15]~230_combout\);

-- Location: LCCOMB_X46_Y45_N0
\srl64[3][11]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][11]~231_combout\ = (!\ExtWord~input_o\ & ((\srl64[3][11]~229_combout\) # ((\B[2]~input_o\ & \srl64[2][15]~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[3][11]~229_combout\,
	datad => \srl64[2][15]~230_combout\,
	combout => \srl64[3][11]~231_combout\);

-- Location: LCCOMB_X47_Y48_N24
\Mux60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~5_combout\ = (\Mux61~4_combout\ & ((\Mux60~4_combout\ & ((\srl64[3][11]~231_combout\))) # (!\Mux60~4_combout\ & (\srl64[1][5]~226_combout\)))) # (!\Mux61~4_combout\ & (((\Mux60~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~4_combout\,
	datab => \srl64[1][5]~226_combout\,
	datac => \Mux60~4_combout\,
	datad => \srl64[3][11]~231_combout\,
	combout => \Mux60~5_combout\);

-- Location: LCCOMB_X46_Y48_N20
\Mux60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~6_combout\ = (\Mux61~2_combout\ & ((\Mux61~3_combout\) # ((\srl64[4][19]~225_combout\)))) # (!\Mux61~2_combout\ & (!\Mux61~3_combout\ & ((\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \srl64[4][19]~225_combout\,
	datad => \Mux60~5_combout\,
	combout => \Mux60~6_combout\);

-- Location: LCCOMB_X46_Y48_N14
\Mux60~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~10_combout\ = (\Mux61~3_combout\ & ((\Mux60~6_combout\ & (\Mux60~9_combout\)) # (!\Mux60~6_combout\ & ((\A[3]~input_o\))))) # (!\Mux61~3_combout\ & (((\Mux60~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~9_combout\,
	datab => \Mux61~3_combout\,
	datac => \A[3]~input_o\,
	datad => \Mux60~6_combout\,
	combout => \Mux60~10_combout\);

-- Location: LCCOMB_X46_Y48_N0
\Mux60~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~11_combout\ = (\sll64[2][3]~55_combout\ & ((\Mux60~12_combout\) # ((\Mux60~10_combout\ & !\Mux61~1_combout\)))) # (!\sll64[2][3]~55_combout\ & (\Mux60~10_combout\ & (!\Mux61~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][3]~55_combout\,
	datab => \Mux60~10_combout\,
	datac => \Mux61~1_combout\,
	datad => \Mux60~12_combout\,
	combout => \Mux60~11_combout\);

-- Location: LCCOMB_X41_Y41_N10
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (!\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X41_Y41_N28
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & (!\B[5]~input_o\))) # (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X43_Y50_N16
\sll64[3][4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][4]~57_combout\ = (\A[0]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[3][4]~57_combout\);

-- Location: LCCOMB_X43_Y50_N10
\sll64[2][4]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~58_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \sll64[2][4]~58_combout\);

-- Location: LCCOMB_X43_Y50_N28
\sll64[2][4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~59_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \sll64[2][4]~59_combout\);

-- Location: LCCOMB_X43_Y50_N6
\sll64[2][4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~60_combout\ = (\sll64[2][4]~58_combout\) # ((!\B[0]~input_o\ & \sll64[2][4]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][4]~58_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][4]~59_combout\,
	combout => \sll64[2][4]~60_combout\);

-- Location: LCCOMB_X43_Y50_N20
\sll64[3][4]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][4]~313_combout\ = (\B[2]~input_o\ & (\sll64[3][4]~57_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\sll64[2][4]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[3][4]~57_combout\,
	datac => \B[1]~input_o\,
	datad => \sll64[2][4]~60_combout\,
	combout => \sll64[3][4]~313_combout\);

-- Location: LCCOMB_X42_Y46_N20
\sll64[5][4]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][4]~314_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \sll64[3][4]~313_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sll64[3][4]~313_combout\,
	combout => \sll64[5][4]~314_combout\);

-- Location: LCCOMB_X42_Y46_N24
\Mux59~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~6_combout\ = (\Mux58~1_combout\ & ((\Mux58~2_combout\ & ((\sll64[5][4]~314_combout\))) # (!\Mux58~2_combout\ & (\A[4]~input_o\)))) # (!\Mux58~1_combout\ & (!\Mux58~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~1_combout\,
	datab => \Mux58~2_combout\,
	datac => \A[4]~input_o\,
	datad => \sll64[5][4]~314_combout\,
	combout => \Mux59~6_combout\);

-- Location: LCCOMB_X42_Y48_N2
\srl64[4][53]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][53]~259_combout\ = (\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \srl64[4][53]~259_combout\);

-- Location: LCCOMB_X47_Y42_N18
\srl64[4][52]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][52]~260_combout\ = (\srl64[4][53]~259_combout\ & ((\B[1]~input_o\ & ((\srl64[1][62]~82_combout\))) # (!\B[1]~input_o\ & (\srl64[1][60]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][60]~85_combout\,
	datab => \B[1]~input_o\,
	datac => \srl64[4][53]~259_combout\,
	datad => \srl64[1][62]~82_combout\,
	combout => \srl64[4][52]~260_combout\);

-- Location: LCCOMB_X47_Y42_N0
\srl64[3][52]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][52]~258_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][58]~76_combout\))) # (!\B[1]~input_o\ & (\srl64[1][56]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][56]~79_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][58]~76_combout\,
	combout => \srl64[3][52]~258_combout\);

-- Location: LCCOMB_X43_Y40_N20
\srl64[3][52]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][52]~257_combout\ = (\srl64[4][55]~94_combout\ & ((\srl64[1][52]~102_combout\) # ((\Mux61~0_combout\ & \srl64[1][54]~208_combout\)))) # (!\srl64[4][55]~94_combout\ & (\Mux61~0_combout\ & (\srl64[1][54]~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \Mux61~0_combout\,
	datac => \srl64[1][54]~208_combout\,
	datad => \srl64[1][52]~102_combout\,
	combout => \srl64[3][52]~257_combout\);

-- Location: LCCOMB_X45_Y43_N20
\sra64[4][52]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][52]~72_combout\ = (!\srl64[4][52]~260_combout\ & ((\B[3]~input_o\) # ((!\srl64[3][52]~258_combout\ & !\srl64[3][52]~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][52]~260_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][52]~258_combout\,
	datad => \srl64[3][52]~257_combout\,
	combout => \sra64[4][52]~72_combout\);

-- Location: LCCOMB_X40_Y49_N2
\sll64[4][16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][16]~56_combout\ = (\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \sll64[4][16]~56_combout\);

-- Location: LCCOMB_X42_Y47_N18
\sra64[4][52]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][52]~128_combout\ = (\sll64[4][16]~56_combout\ & ((\ExtWord~input_o\ & (\A[31]~input_o\)) # (!\ExtWord~input_o\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sll64[4][16]~56_combout\,
	datad => \A[63]~input_o\,
	combout => \sra64[4][52]~128_combout\);

-- Location: LCCOMB_X47_Y44_N28
\srl64[3][36]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][36]~255_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][42]~124_combout\))) # (!\B[1]~input_o\ & (\srl64[1][40]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][40]~121_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][42]~124_combout\,
	combout => \srl64[3][36]~255_combout\);

-- Location: LCCOMB_X45_Y44_N8
\srl64[3][44]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][44]~252_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][50]~90_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][48]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][50]~90_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][48]~93_combout\,
	combout => \srl64[3][44]~252_combout\);

-- Location: LCCOMB_X45_Y44_N30
\srl64[3][44]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][44]~251_combout\ = (\srl64[4][55]~94_combout\ & ((\B[0]~input_o\ & (\srl64[1][44]~129_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][43]~130_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[1][44]~129_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][43]~130_combout\,
	combout => \srl64[3][44]~251_combout\);

-- Location: LCCOMB_X45_Y44_N2
\srl64[3][44]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][44]~253_combout\ = (\srl64[3][44]~252_combout\) # ((\srl64[3][44]~251_combout\) # ((\srl64[1][46]~128_combout\ & \Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][46]~128_combout\,
	datab => \srl64[3][44]~252_combout\,
	datac => \srl64[3][44]~251_combout\,
	datad => \Mux61~0_combout\,
	combout => \srl64[3][44]~253_combout\);

-- Location: LCCOMB_X47_Y44_N2
\srl64[3][36]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][36]~254_combout\ = (\srl64[4][55]~94_combout\ & ((\srl64[1][36]~113_combout\) # ((\Mux61~0_combout\ & \srl64[1][38]~110_combout\)))) # (!\srl64[4][55]~94_combout\ & (((\Mux61~0_combout\ & \srl64[1][38]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[1][36]~113_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][38]~110_combout\,
	combout => \srl64[3][36]~254_combout\);

-- Location: LCCOMB_X45_Y43_N18
\srl64[4][36]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][36]~256_combout\ = (\B[3]~input_o\ & (((\srl64[3][44]~253_combout\)))) # (!\B[3]~input_o\ & ((\srl64[3][36]~255_combout\) # ((\srl64[3][36]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][36]~255_combout\,
	datab => \srl64[3][44]~253_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][36]~254_combout\,
	combout => \srl64[4][36]~256_combout\);

-- Location: LCCOMB_X41_Y43_N16
\sra64[5][36]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][36]~73_combout\ = (\B[4]~input_o\ & (((\sra64[4][52]~128_combout\)) # (!\sra64[4][52]~72_combout\))) # (!\B[4]~input_o\ & (((\srl64[4][36]~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][52]~72_combout\,
	datab => \B[4]~input_o\,
	datac => \sra64[4][52]~128_combout\,
	datad => \srl64[4][36]~256_combout\,
	combout => \sra64[5][36]~73_combout\);

-- Location: LCCOMB_X41_Y43_N0
\Mux59~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~7_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & (!\sra64[4][52]~72_combout\ & (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sra64[4][52]~72_combout\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux59~7_combout\);

-- Location: LCCOMB_X41_Y43_N26
\Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~4_combout\ = (\Mux59~7_combout\) # ((!\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & \srl64[4][36]~256_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Mux59~7_combout\,
	datac => \B[4]~input_o\,
	datad => \srl64[4][36]~256_combout\,
	combout => \Mux59~4_combout\);

-- Location: LCCOMB_X41_Y43_N10
\sra64[6][36]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][36]~129_combout\ = (\ExtWord~input_o\ & (((\sra64[5][36]~73_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][36]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sra64[5][36]~73_combout\,
	combout => \sra64[6][36]~129_combout\);

-- Location: LCCOMB_X41_Y43_N4
\Mux59~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~5_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux59~4_combout\ & ((\sra64[6][36]~129_combout\))) # (!\Mux59~4_combout\ & (\sra64[5][36]~73_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux59~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sra64[5][36]~73_combout\,
	datac => \Mux59~4_combout\,
	datad => \sra64[6][36]~129_combout\,
	combout => \Mux59~5_combout\);

-- Location: LCCOMB_X45_Y45_N28
\srl64[3][12]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][12]~245_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\srl64[2][16]~71_combout\)) # (!\B[2]~input_o\ & ((\srl64[2][12]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][16]~71_combout\,
	datab => \ExtWord~input_o\,
	datac => \srl64[2][12]~48_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][12]~245_combout\);

-- Location: LCCOMB_X46_Y43_N16
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\B[4]~input_o\) # ((!\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X45_Y45_N6
\srl64[2][4]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][4]~246_combout\ = (!\ExtWord~input_o\ & ((\srl64[2][4]~49_combout\) # (\srl64[2][4]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][4]~49_combout\,
	datab => \ExtWord~input_o\,
	datad => \srl64[2][4]~50_combout\,
	combout => \srl64[2][4]~246_combout\);

-- Location: LCCOMB_X45_Y46_N16
\Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = (\Mux58~0_combout\ & (((!\srl64[5][62]~134_combout\)))) # (!\Mux58~0_combout\ & ((\srl64[5][62]~134_combout\ & ((\srl64[2][4]~246_combout\))) # (!\srl64[5][62]~134_combout\ & (\srl64[3][12]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][12]~245_combout\,
	datab => \Mux58~0_combout\,
	datac => \srl64[2][4]~246_combout\,
	datad => \srl64[5][62]~134_combout\,
	combout => \Mux59~2_combout\);

-- Location: LCCOMB_X47_Y44_N0
\srl64[3][28]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][28]~247_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][34]~213_combout\))) # (!\B[1]~input_o\ & (\srl64[1][32]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][32]~117_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][34]~213_combout\,
	combout => \srl64[3][28]~247_combout\);

-- Location: LCCOMB_X45_Y45_N24
\srl64[3][28]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][28]~248_combout\ = (\srl64[3][28]~247_combout\) # ((!\B[2]~input_o\ & (!\ExtWord~input_o\ & \srl64[2][28]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[2][28]~61_combout\,
	datad => \srl64[3][28]~247_combout\,
	combout => \srl64[3][28]~248_combout\);

-- Location: LCCOMB_X45_Y45_N2
\srl64[3][20]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][20]~249_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\srl64[2][24]~68_combout\))) # (!\B[2]~input_o\ & (\srl64[2][20]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[2][20]~64_combout\,
	datad => \srl64[2][24]~68_combout\,
	combout => \srl64[3][20]~249_combout\);

-- Location: LCCOMB_X45_Y43_N0
\srl64[4][20]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][20]~250_combout\ = (\B[3]~input_o\ & (\srl64[3][28]~248_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][20]~249_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][28]~248_combout\,
	datac => \srl64[3][20]~249_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[4][20]~250_combout\);

-- Location: LCCOMB_X46_Y46_N18
\srl64[2][8]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][8]~244_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\srl64[2][9]~52_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][8]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][9]~52_combout\,
	datab => \ExtWord~input_o\,
	datac => \srl64[2][8]~53_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][8]~244_combout\);

-- Location: LCCOMB_X45_Y46_N10
\Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = (\Mux59~2_combout\ & (((\srl64[4][20]~250_combout\)) # (!\Mux58~0_combout\))) # (!\Mux59~2_combout\ & (\Mux58~0_combout\ & ((\srl64[2][8]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~2_combout\,
	datab => \Mux58~0_combout\,
	datac => \srl64[4][20]~250_combout\,
	datad => \srl64[2][8]~244_combout\,
	combout => \Mux59~3_combout\);

-- Location: LCCOMB_X45_Y46_N28
Mux59 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~combout\ = (\ShiftFN[1]~input_o\ & ((\Mux59~6_combout\ & (\Mux59~5_combout\)) # (!\Mux59~6_combout\ & ((\Mux59~3_combout\))))) # (!\ShiftFN[1]~input_o\ & (\Mux59~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux59~6_combout\,
	datac => \Mux59~5_combout\,
	datad => \Mux59~3_combout\,
	combout => \Mux59~combout\);

-- Location: LCCOMB_X43_Y43_N12
\srl64[3][37]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][37]~272_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][43]~180_combout\))) # (!\B[1]~input_o\ & (\srl64[1][41]~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][41]~179_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][43]~180_combout\,
	combout => \srl64[3][37]~272_combout\);

-- Location: LCCOMB_X47_Y45_N2
\srl64[3][37]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][37]~271_combout\ = (\srl64[4][55]~94_combout\ & ((\B[0]~input_o\ & ((\srl64[1][37]~109_combout\))) # (!\B[0]~input_o\ & (\srl64[1][36]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][36]~111_combout\,
	datab => \srl64[1][37]~109_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[4][55]~94_combout\,
	combout => \srl64[3][37]~271_combout\);

-- Location: LCCOMB_X43_Y43_N30
\srl64[3][37]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][37]~273_combout\ = (\srl64[3][37]~272_combout\) # ((\srl64[3][37]~271_combout\) # ((\srl64[1][39]~174_combout\ & \Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][37]~272_combout\,
	datab => \srl64[1][39]~174_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[3][37]~271_combout\,
	combout => \srl64[3][37]~273_combout\);

-- Location: LCCOMB_X43_Y43_N8
\srl64[3][45]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][45]~274_combout\ = (\srl64[1][47]~182_combout\ & ((\Mux61~0_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][45]~183_combout\)))) # (!\srl64[1][47]~182_combout\ & (\srl64[4][55]~94_combout\ & ((\srl64[1][45]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][47]~182_combout\,
	datab => \srl64[4][55]~94_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][45]~183_combout\,
	combout => \srl64[3][45]~274_combout\);

-- Location: LCCOMB_X45_Y40_N28
\srl64[3][45]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][45]~275_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][51]~156_combout\))) # (!\B[1]~input_o\ & (\srl64[1][49]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][49]~155_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][51]~156_combout\,
	combout => \srl64[3][45]~275_combout\);

-- Location: LCCOMB_X47_Y41_N2
\srl64[4][37]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][37]~276_combout\ = (\B[3]~input_o\ & (((\srl64[3][45]~274_combout\) # (\srl64[3][45]~275_combout\)))) # (!\B[3]~input_o\ & (\srl64[3][37]~273_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][37]~273_combout\,
	datac => \srl64[3][45]~274_combout\,
	datad => \srl64[3][45]~275_combout\,
	combout => \srl64[4][37]~276_combout\);

-- Location: LCCOMB_X47_Y41_N30
\Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~5_combout\ = (!\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & \srl64[4][37]~276_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datad => \srl64[4][37]~276_combout\,
	combout => \Mux58~5_combout\);

-- Location: LCCOMB_X43_Y40_N8
\srl64[3][53]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][53]~269_combout\ = (\srl64[4][55]~94_combout\ & ((\B[0]~input_o\ & ((\srl64[1][53]~98_combout\))) # (!\B[0]~input_o\ & (\srl64[1][52]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][52]~100_combout\,
	datab => \srl64[1][53]~98_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[4][55]~94_combout\,
	combout => \srl64[3][53]~269_combout\);

-- Location: LCCOMB_X43_Y40_N30
\srl64[3][53]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][53]~268_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & (\srl64[1][59]~149_combout\)) # (!\B[2]~input_o\ & ((\srl64[1][55]~233_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][59]~149_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \srl64[1][55]~233_combout\,
	combout => \srl64[3][53]~268_combout\);

-- Location: LCCOMB_X43_Y40_N18
\srl64[3][53]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][53]~270_combout\ = (\srl64[3][53]~269_combout\) # ((\srl64[3][53]~268_combout\) # ((\srl64[1][57]~150_combout\ & \sll64[3][5]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][57]~150_combout\,
	datab => \srl64[3][53]~269_combout\,
	datac => \srl64[3][53]~268_combout\,
	datad => \sll64[3][5]~46_combout\,
	combout => \srl64[3][53]~270_combout\);

-- Location: LCCOMB_X47_Y41_N24
\srl64[4][53]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][53]~366_combout\ = (\B[3]~input_o\ & (\srl64[2][61]~153_combout\ & (!\B[2]~input_o\))) # (!\B[3]~input_o\ & (((\srl64[3][53]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][61]~153_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][53]~270_combout\,
	combout => \srl64[4][53]~366_combout\);

-- Location: LCCOMB_X47_Y41_N0
\Mux58~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~6_combout\ = (\Mux58~5_combout\) # ((\Mux61~9_combout\) # ((\Mux61~10_combout\ & \srl64[4][53]~366_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~5_combout\,
	datab => \Mux61~9_combout\,
	datac => \Mux61~10_combout\,
	datad => \srl64[4][53]~366_combout\,
	combout => \Mux58~6_combout\);

-- Location: LCCOMB_X42_Y40_N22
\sra64[3][61]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][61]~130_combout\ = (\B[1]~input_o\ & (((\sra64[0][63]~58_combout\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[2]~input_o\ & (\srl64[1][61]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[1][61]~152_combout\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[3][61]~130_combout\);

-- Location: LCCOMB_X46_Y41_N8
\sra64[5][37]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][37]~74_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\sra64[3][61]~130_combout\))) # (!\B[3]~input_o\ & (\srl64[3][53]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][53]~270_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sra64[3][61]~130_combout\,
	combout => \sra64[5][37]~74_combout\);

-- Location: LCCOMB_X47_Y41_N4
\sra64[5][37]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][37]~75_combout\ = (\sra64[5][37]~74_combout\) # ((!\B[4]~input_o\ & \srl64[4][37]~276_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][37]~74_combout\,
	datab => \B[4]~input_o\,
	datad => \srl64[4][37]~276_combout\,
	combout => \sra64[5][37]~75_combout\);

-- Location: LCCOMB_X46_Y42_N8
\sra64[6][37]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][37]~131_combout\ = (\ExtWord~input_o\ & (((\sra64[5][37]~75_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][37]~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][37]~75_combout\,
	combout => \sra64[6][37]~131_combout\);

-- Location: LCCOMB_X46_Y42_N0
\Mux58~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~7_combout\ = (\Mux58~6_combout\ & (((\sra64[6][37]~131_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux58~6_combout\ & (\sra64[5][37]~75_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~6_combout\,
	datab => \sra64[5][37]~75_combout\,
	datac => \sra64[6][37]~131_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux58~7_combout\);

-- Location: LCCOMB_X43_Y50_N8
\sll64[2][5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][5]~61_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[5]~input_o\,
	combout => \sll64[2][5]~61_combout\);

-- Location: LCCOMB_X43_Y50_N2
\sll64[2][5]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][5]~62_combout\ = (\B[0]~input_o\ & ((\sll64[2][4]~59_combout\))) # (!\B[0]~input_o\ & (\sll64[2][5]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][5]~61_combout\,
	datad => \sll64[2][4]~59_combout\,
	combout => \sll64[2][5]~62_combout\);

-- Location: LCCOMB_X42_Y48_N20
\sll64[3][5]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][5]~315_combout\ = (\B[2]~input_o\ & (\sll64[1][1]~49_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\sll64[2][5]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~49_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][5]~62_combout\,
	combout => \sll64[3][5]~315_combout\);

-- Location: LCCOMB_X40_Y49_N14
\sll64[5][5]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][5]~316_combout\ = (\sll64[3][5]~315_combout\ & (!\B[4]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][5]~315_combout\,
	datab => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \sll64[5][5]~316_combout\);

-- Location: LCCOMB_X42_Y47_N2
\Mux58~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~8_combout\ = (\Mux58~2_combout\ & (\sll64[5][5]~316_combout\ & (\Mux58~1_combout\))) # (!\Mux58~2_combout\ & (((\A[5]~input_o\) # (!\Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][5]~316_combout\,
	datab => \Mux58~2_combout\,
	datac => \Mux58~1_combout\,
	datad => \A[5]~input_o\,
	combout => \Mux58~8_combout\);

-- Location: LCCOMB_X43_Y44_N18
\srl64[3][13]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][13]~262_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\srl64[2][17]~146_combout\)) # (!\B[2]~input_o\ & ((\srl64[2][13]~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][17]~146_combout\,
	datab => \srl64[2][13]~166_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][13]~262_combout\);

-- Location: LCCOMB_X47_Y48_N10
\srl64[2][5]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][5]~263_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][6]~162_combout\))) # (!\B[0]~input_o\ & (\srl64[2][5]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][5]~163_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][6]~162_combout\,
	combout => \srl64[2][5]~263_combout\);

-- Location: LCCOMB_X45_Y46_N22
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\Mux58~0_combout\ & (((!\srl64[5][62]~134_combout\)))) # (!\Mux58~0_combout\ & ((\srl64[5][62]~134_combout\ & ((\srl64[2][5]~263_combout\))) # (!\srl64[5][62]~134_combout\ & (\srl64[3][13]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][13]~262_combout\,
	datab => \Mux58~0_combout\,
	datac => \srl64[2][5]~263_combout\,
	datad => \srl64[5][62]~134_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X43_Y44_N14
\srl64[3][21]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][21]~266_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\srl64[2][25]~141_combout\))) # (!\B[2]~input_o\ & (\srl64[2][21]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][21]~144_combout\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[2][25]~141_combout\,
	combout => \srl64[3][21]~266_combout\);

-- Location: LCCOMB_X46_Y45_N10
\srl64[3][29]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][29]~264_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][35]~240_combout\))) # (!\B[1]~input_o\ & (\srl64[1][33]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][33]~177_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][35]~240_combout\,
	combout => \srl64[3][29]~264_combout\);

-- Location: LCCOMB_X43_Y44_N20
\srl64[3][29]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][29]~265_combout\ = (\srl64[3][29]~264_combout\) # ((\srl64[2][29]~139_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][29]~264_combout\,
	datac => \srl64[2][29]~139_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][29]~265_combout\);

-- Location: LCCOMB_X43_Y44_N8
\srl64[4][21]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][21]~267_combout\ = (\B[3]~input_o\ & ((\srl64[3][29]~265_combout\))) # (!\B[3]~input_o\ & (\srl64[3][21]~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][21]~266_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][29]~265_combout\,
	combout => \srl64[4][21]~267_combout\);

-- Location: LCCOMB_X46_Y46_N4
\srl64[2][9]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][9]~261_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][10]~168_combout\))) # (!\B[0]~input_o\ & (\srl64[2][9]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[0]~input_o\,
	datac => \srl64[2][9]~52_combout\,
	datad => \srl64[2][10]~168_combout\,
	combout => \srl64[2][9]~261_combout\);

-- Location: LCCOMB_X45_Y46_N24
\Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = (\Mux58~3_combout\ & (((\srl64[4][21]~267_combout\)) # (!\Mux58~0_combout\))) # (!\Mux58~3_combout\ & (\Mux58~0_combout\ & ((\srl64[2][9]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Mux58~0_combout\,
	datac => \srl64[4][21]~267_combout\,
	datad => \srl64[2][9]~261_combout\,
	combout => \Mux58~4_combout\);

-- Location: LCCOMB_X45_Y46_N26
Mux58 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~combout\ = (\Mux58~8_combout\ & ((\Mux58~7_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux58~8_combout\ & (((\ShiftFN[1]~input_o\ & \Mux58~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~7_combout\,
	datab => \Mux58~8_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux58~4_combout\,
	combout => \Mux58~combout\);

-- Location: LCCOMB_X47_Y44_N12
\srl64[3][38]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][38]~286_combout\ = (\srl64[4][55]~94_combout\ & ((\srl64[1][38]~110_combout\) # ((\srl64[1][40]~121_combout\ & \Mux61~0_combout\)))) # (!\srl64[4][55]~94_combout\ & (\srl64[1][40]~121_combout\ & (\Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[1][40]~121_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][38]~110_combout\,
	combout => \srl64[3][38]~286_combout\);

-- Location: LCCOMB_X45_Y40_N6
\srl64[3][46]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][46]~284_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][52]~102_combout\))) # (!\B[1]~input_o\ & (\srl64[1][50]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][50]~90_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][52]~102_combout\,
	combout => \srl64[3][46]~284_combout\);

-- Location: LCCOMB_X45_Y44_N20
\srl64[3][46]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][46]~283_combout\ = (\srl64[4][55]~94_combout\ & ((\srl64[1][46]~128_combout\) # ((\Mux61~0_combout\ & \srl64[1][48]~93_combout\)))) # (!\srl64[4][55]~94_combout\ & (\Mux61~0_combout\ & ((\srl64[1][48]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \Mux61~0_combout\,
	datac => \srl64[1][46]~128_combout\,
	datad => \srl64[1][48]~93_combout\,
	combout => \srl64[3][46]~283_combout\);

-- Location: LCCOMB_X48_Y44_N8
\srl64[3][46]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][46]~285_combout\ = (\srl64[3][46]~284_combout\) # (\srl64[3][46]~283_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \srl64[3][46]~284_combout\,
	datad => \srl64[3][46]~283_combout\,
	combout => \srl64[3][46]~285_combout\);

-- Location: LCCOMB_X45_Y44_N14
\srl64[3][38]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][38]~287_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][44]~131_combout\))) # (!\B[1]~input_o\ & (\srl64[1][42]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][42]~124_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][44]~131_combout\,
	combout => \srl64[3][38]~287_combout\);

-- Location: LCCOMB_X48_Y44_N26
\srl64[4][38]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][38]~288_combout\ = (\B[3]~input_o\ & (((\srl64[3][46]~285_combout\)))) # (!\B[3]~input_o\ & ((\srl64[3][38]~286_combout\) # ((\srl64[3][38]~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][38]~286_combout\,
	datab => \srl64[3][46]~285_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][38]~287_combout\,
	combout => \srl64[4][38]~288_combout\);

-- Location: LCCOMB_X45_Y42_N24
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\srl64[4][38]~288_combout\ & (!\B[4]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][38]~288_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X43_Y40_N12
\srl64[3][54]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][54]~289_combout\ = (\srl64[4][55]~94_combout\ & ((\srl64[1][54]~208_combout\) # ((\Mux61~0_combout\ & \srl64[1][56]~79_combout\)))) # (!\srl64[4][55]~94_combout\ & (\Mux61~0_combout\ & ((\srl64[1][56]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \Mux61~0_combout\,
	datac => \srl64[1][54]~208_combout\,
	datad => \srl64[1][56]~79_combout\,
	combout => \srl64[3][54]~289_combout\);

-- Location: LCCOMB_X47_Y42_N12
\srl64[3][54]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][54]~290_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][60]~85_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][58]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][60]~85_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][58]~76_combout\,
	combout => \srl64[3][54]~290_combout\);

-- Location: LCCOMB_X47_Y42_N24
\srl64[3][54]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][54]~291_combout\ = (\srl64[3][54]~289_combout\) # (\srl64[3][54]~290_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \srl64[3][54]~289_combout\,
	datad => \srl64[3][54]~290_combout\,
	combout => \srl64[3][54]~291_combout\);

-- Location: LCCOMB_X48_Y44_N4
\srl64[4][54]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][54]~292_combout\ = (\B[3]~input_o\ & (\srl64[4][55]~94_combout\ & ((\srl64[1][62]~82_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][54]~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[3][54]~291_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[1][62]~82_combout\,
	combout => \srl64[4][54]~292_combout\);

-- Location: LCCOMB_X45_Y42_N2
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux57~2_combout\) # ((\Mux61~9_combout\) # ((\srl64[4][54]~292_combout\ & \Mux61~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~2_combout\,
	datab => \Mux61~9_combout\,
	datac => \srl64[4][54]~292_combout\,
	datad => \Mux61~10_combout\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X45_Y42_N14
\sra64[5][38]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][38]~77_combout\ = (\B[3]~input_o\ & ((\srl64[4][55]~94_combout\ & ((\srl64[1][62]~82_combout\))) # (!\srl64[4][55]~94_combout\ & (\sra64[0][63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[4][55]~94_combout\,
	datac => \sra64[0][63]~58_combout\,
	datad => \srl64[1][62]~82_combout\,
	combout => \sra64[5][38]~77_combout\);

-- Location: LCCOMB_X47_Y42_N22
\sra64[4][54]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][54]~76_combout\ = (!\B[3]~input_o\ & ((\srl64[3][54]~289_combout\) # (\srl64[3][54]~290_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \srl64[3][54]~289_combout\,
	datad => \srl64[3][54]~290_combout\,
	combout => \sra64[4][54]~76_combout\);

-- Location: LCCOMB_X46_Y42_N10
\sra64[5][38]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][38]~78_combout\ = (\B[4]~input_o\ & ((\sra64[5][38]~77_combout\) # ((\sra64[4][54]~76_combout\)))) # (!\B[4]~input_o\ & (((\srl64[4][38]~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][38]~77_combout\,
	datab => \srl64[4][38]~288_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[4][54]~76_combout\,
	combout => \sra64[5][38]~78_combout\);

-- Location: LCCOMB_X46_Y42_N18
\sra64[6][38]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][38]~132_combout\ = (\ExtWord~input_o\ & (((\sra64[5][38]~78_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][38]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][38]~78_combout\,
	combout => \sra64[6][38]~132_combout\);

-- Location: LCCOMB_X46_Y42_N28
\Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (\Mux57~3_combout\ & ((\sra64[6][38]~132_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux57~3_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[5][38]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~3_combout\,
	datab => \sra64[6][38]~132_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[5][38]~78_combout\,
	combout => \Mux57~4_combout\);

-- Location: LCCOMB_X43_Y50_N4
\sll64[2][6]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][6]~63_combout\ = (\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \sll64[2][6]~63_combout\);

-- Location: LCCOMB_X43_Y50_N22
\sll64[2][6]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][6]~64_combout\ = (\B[0]~input_o\ & ((\sll64[2][5]~61_combout\))) # (!\B[0]~input_o\ & (\sll64[2][6]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][6]~63_combout\,
	datac => \sll64[2][5]~61_combout\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][6]~64_combout\);

-- Location: LCCOMB_X43_Y47_N24
\sll64[5][6]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][6]~65_combout\ = (\srl64[5][62]~134_combout\ & ((\B[2]~input_o\ & ((\sll64[2][2]~52_combout\))) # (!\B[2]~input_o\ & (\sll64[2][6]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][6]~64_combout\,
	datab => \sll64[2][2]~52_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[5][62]~134_combout\,
	combout => \sll64[5][6]~65_combout\);

-- Location: LCCOMB_X42_Y47_N4
\Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~5_combout\ = (\Mux58~2_combout\ & (((\Mux58~1_combout\ & \sll64[5][6]~65_combout\)))) # (!\Mux58~2_combout\ & ((\A[6]~input_o\) # ((!\Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Mux58~2_combout\,
	datac => \Mux58~1_combout\,
	datad => \sll64[5][6]~65_combout\,
	combout => \Mux57~5_combout\);

-- Location: LCCOMB_X46_Y44_N18
\srl64[3][14]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][14]~278_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\srl64[2][18]~195_combout\))) # (!\B[2]~input_o\ & (\srl64[2][14]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[2][14]~205_combout\,
	datad => \srl64[2][18]~195_combout\,
	combout => \srl64[3][14]~278_combout\);

-- Location: LCCOMB_X45_Y46_N12
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\srl64[5][62]~134_combout\ & (!\Mux58~0_combout\ & (\srl64[2][6]~200_combout\))) # (!\srl64[5][62]~134_combout\ & ((\Mux58~0_combout\) # ((\srl64[3][14]~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][62]~134_combout\,
	datab => \Mux58~0_combout\,
	datac => \srl64[2][6]~200_combout\,
	datad => \srl64[3][14]~278_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X47_Y44_N18
\srl64[3][22]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][22]~281_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\srl64[2][26]~190_combout\))) # (!\B[2]~input_o\ & (\srl64[2][22]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][22]~193_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][26]~190_combout\,
	combout => \srl64[3][22]~281_combout\);

-- Location: LCCOMB_X47_Y44_N6
\srl64[3][30]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][30]~279_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][36]~113_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][34]~213_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][36]~113_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][34]~213_combout\,
	combout => \srl64[3][30]~279_combout\);

-- Location: LCCOMB_X47_Y44_N24
\srl64[3][30]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][30]~280_combout\ = (\srl64[3][30]~279_combout\) # ((\srl64[2][30]~188_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][30]~188_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][30]~279_combout\,
	combout => \srl64[3][30]~280_combout\);

-- Location: LCCOMB_X46_Y44_N12
\srl64[4][22]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][22]~282_combout\ = (\B[3]~input_o\ & ((\srl64[3][30]~280_combout\))) # (!\B[3]~input_o\ & (\srl64[3][22]~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][22]~281_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][30]~280_combout\,
	combout => \srl64[4][22]~282_combout\);

-- Location: LCCOMB_X46_Y46_N22
\srl64[2][10]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][10]~277_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\srl64[2][11]~202_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][10]~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][11]~202_combout\,
	datab => \B[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[2][10]~168_combout\,
	combout => \srl64[2][10]~277_combout\);

-- Location: LCCOMB_X45_Y46_N6
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\Mux57~0_combout\ & (((\srl64[4][22]~282_combout\)) # (!\Mux58~0_combout\))) # (!\Mux57~0_combout\ & (\Mux58~0_combout\ & ((\srl64[2][10]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~0_combout\,
	datab => \Mux58~0_combout\,
	datac => \srl64[4][22]~282_combout\,
	datad => \srl64[2][10]~277_combout\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X45_Y46_N0
Mux57 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~combout\ = (\ShiftFN[1]~input_o\ & ((\Mux57~5_combout\ & (\Mux57~4_combout\)) # (!\Mux57~5_combout\ & ((\Mux57~1_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux57~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux57~4_combout\,
	datac => \Mux57~5_combout\,
	datad => \Mux57~1_combout\,
	combout => \Mux57~combout\);

-- Location: LCCOMB_X47_Y48_N28
\sll64[2][7]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][7]~66_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[5]~input_o\,
	combout => \sll64[2][7]~66_combout\);

-- Location: LCCOMB_X43_Y50_N24
\sll64[2][7]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][7]~67_combout\ = (\B[0]~input_o\ & (\sll64[2][6]~63_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][7]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][6]~63_combout\,
	datac => \sll64[2][7]~66_combout\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][7]~67_combout\);

-- Location: LCCOMB_X41_Y49_N8
\sll64[5][7]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][7]~68_combout\ = (\srl64[5][62]~134_combout\ & ((\B[2]~input_o\ & (\sll64[2][3]~55_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][7]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \srl64[5][62]~134_combout\,
	datac => \sll64[2][3]~55_combout\,
	datad => \sll64[2][7]~67_combout\,
	combout => \sll64[5][7]~68_combout\);

-- Location: LCCOMB_X42_Y47_N14
\Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (\Mux58~2_combout\ & (\sll64[5][7]~68_combout\ & (\Mux58~1_combout\))) # (!\Mux58~2_combout\ & (((\A[7]~input_o\) # (!\Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][7]~68_combout\,
	datab => \Mux58~2_combout\,
	datac => \Mux58~1_combout\,
	datad => \A[7]~input_o\,
	combout => \Mux56~5_combout\);

-- Location: LCCOMB_X47_Y45_N14
\srl64[3][39]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][39]~305_combout\ = (\Mux61~0_combout\ & ((\srl64[1][41]~179_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][39]~174_combout\)))) # (!\Mux61~0_combout\ & (\srl64[4][55]~94_combout\ & (\srl64[1][39]~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \srl64[4][55]~94_combout\,
	datac => \srl64[1][39]~174_combout\,
	datad => \srl64[1][41]~179_combout\,
	combout => \srl64[3][39]~305_combout\);

-- Location: LCCOMB_X45_Y40_N16
\srl64[3][47]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][47]~302_combout\ = (\srl64[1][49]~155_combout\ & ((\Mux61~0_combout\) # ((\srl64[4][55]~94_combout\ & \srl64[1][47]~182_combout\)))) # (!\srl64[1][49]~155_combout\ & (\srl64[4][55]~94_combout\ & ((\srl64[1][47]~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][49]~155_combout\,
	datab => \srl64[4][55]~94_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[1][47]~182_combout\,
	combout => \srl64[3][47]~302_combout\);

-- Location: LCCOMB_X45_Y40_N2
\srl64[3][47]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][47]~303_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][53]~159_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][51]~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][53]~159_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][51]~156_combout\,
	combout => \srl64[3][47]~303_combout\);

-- Location: LCCOMB_X46_Y40_N8
\srl64[3][47]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][47]~304_combout\ = (\srl64[3][47]~302_combout\) # (\srl64[3][47]~303_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \srl64[3][47]~302_combout\,
	datad => \srl64[3][47]~303_combout\,
	combout => \srl64[3][47]~304_combout\);

-- Location: LCCOMB_X43_Y43_N26
\srl64[3][39]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][39]~306_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][45]~183_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][43]~180_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \srl64[1][45]~183_combout\,
	datac => \B[1]~input_o\,
	datad => \srl64[1][43]~180_combout\,
	combout => \srl64[3][39]~306_combout\);

-- Location: LCCOMB_X46_Y43_N26
\srl64[4][39]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][39]~307_combout\ = (\B[3]~input_o\ & (((\srl64[3][47]~304_combout\)))) # (!\B[3]~input_o\ & ((\srl64[3][39]~305_combout\) # ((\srl64[3][39]~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][39]~305_combout\,
	datac => \srl64[3][47]~304_combout\,
	datad => \srl64[3][39]~306_combout\,
	combout => \srl64[4][39]~307_combout\);

-- Location: LCCOMB_X40_Y41_N2
\sra64[4][55]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][55]~79_combout\ = (\B[3]~input_o\ & ((\ExtWord~input_o\ & (\A[31]~input_o\)) # (!\ExtWord~input_o\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[63]~input_o\,
	combout => \sra64[4][55]~79_combout\);

-- Location: LCCOMB_X42_Y40_N26
\srl64[3][55]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][55]~300_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][61]~152_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][59]~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[1][61]~152_combout\,
	datad => \srl64[1][59]~149_combout\,
	combout => \srl64[3][55]~300_combout\);

-- Location: LCCOMB_X43_Y40_N22
\srl64[3][55]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][55]~299_combout\ = (\srl64[4][55]~94_combout\ & ((\B[0]~input_o\ & (\srl64[1][55]~78_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][54]~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[1][55]~78_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][54]~97_combout\,
	combout => \srl64[3][55]~299_combout\);

-- Location: LCCOMB_X42_Y40_N20
\srl64[3][55]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][55]~301_combout\ = (\srl64[3][55]~300_combout\) # ((\srl64[3][55]~299_combout\) # ((\srl64[1][57]~150_combout\ & \Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][55]~300_combout\,
	datab => \srl64[1][57]~150_combout\,
	datac => \Mux61~0_combout\,
	datad => \srl64[3][55]~299_combout\,
	combout => \srl64[3][55]~301_combout\);

-- Location: LCCOMB_X47_Y43_N8
\sra64[5][39]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][39]~80_combout\ = (\B[4]~input_o\ & ((\sra64[4][55]~79_combout\) # ((!\B[3]~input_o\ & \srl64[3][55]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \sra64[4][55]~79_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][55]~301_combout\,
	combout => \sra64[5][39]~80_combout\);

-- Location: LCCOMB_X48_Y43_N24
\sra64[5][39]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][39]~81_combout\ = (\sra64[5][39]~80_combout\) # ((!\B[4]~input_o\ & \srl64[4][39]~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \srl64[4][39]~307_combout\,
	datad => \sra64[5][39]~80_combout\,
	combout => \sra64[5][39]~81_combout\);

-- Location: LCCOMB_X48_Y43_N0
\sra64[6][39]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][39]~133_combout\ = (\ExtWord~input_o\ & (((\sra64[5][39]~81_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][39]~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][39]~81_combout\,
	combout => \sra64[6][39]~133_combout\);

-- Location: LCCOMB_X42_Y41_N22
\srl64[2][61]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][61]~308_combout\ = (!\B[0]~input_o\ & ((\ExtWord~input_o\ & ((\A[31]~input_o\))) # (!\ExtWord~input_o\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[2][61]~308_combout\);

-- Location: LCCOMB_X42_Y41_N16
\srl64[4][55]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][55]~309_combout\ = (\B[3]~input_o\ & (\srl64[4][55]~94_combout\ & ((\srl64[2][61]~308_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][55]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~94_combout\,
	datab => \srl64[3][55]~301_combout\,
	datac => \srl64[2][61]~308_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[4][55]~309_combout\);

-- Location: LCCOMB_X48_Y43_N18
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (!\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & \srl64[4][39]~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \srl64[4][39]~307_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X47_Y41_N18
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\Mux61~9_combout\) # ((\Mux56~2_combout\) # ((\srl64[4][55]~309_combout\ & \Mux61~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][55]~309_combout\,
	datab => \Mux61~9_combout\,
	datac => \Mux61~10_combout\,
	datad => \Mux56~2_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X48_Y43_N12
\Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux56~3_combout\ & (\sra64[6][39]~133_combout\)) # (!\Mux56~3_combout\ & ((\sra64[5][39]~81_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sra64[6][39]~133_combout\,
	datac => \Mux56~3_combout\,
	datad => \sra64[5][39]~81_combout\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X46_Y45_N4
\srl64[3][31]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][31]~297_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((\srl64[1][35]~240_combout\))) # (!\B[2]~input_o\ & (\srl64[1][31]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][31]~137_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][35]~240_combout\,
	combout => \srl64[3][31]~297_combout\);

-- Location: LCCOMB_X42_Y44_N28
\srl64[3][23]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][23]~295_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\srl64[2][27]~220_combout\)) # (!\B[2]~input_o\ & ((\srl64[2][23]~222_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][27]~220_combout\,
	datab => \B[2]~input_o\,
	datac => \srl64[2][23]~222_combout\,
	datad => \ExtWord~input_o\,
	combout => \srl64[3][23]~295_combout\);

-- Location: LCCOMB_X47_Y45_N4
\srl64[3][31]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][31]~296_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & (\srl64[1][37]~175_combout\)) # (!\B[2]~input_o\ & ((\srl64[1][33]~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \srl64[1][37]~175_combout\,
	datad => \srl64[1][33]~177_combout\,
	combout => \srl64[3][31]~296_combout\);

-- Location: LCCOMB_X46_Y43_N22
\srl64[4][23]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][23]~298_combout\ = (\B[3]~input_o\ & ((\srl64[3][31]~297_combout\) # ((\srl64[3][31]~296_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][23]~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][31]~297_combout\,
	datac => \srl64[3][23]~295_combout\,
	datad => \srl64[3][31]~296_combout\,
	combout => \srl64[4][23]~298_combout\);

-- Location: LCCOMB_X46_Y46_N0
\srl64[2][11]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][11]~293_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][12]~47_combout\))) # (!\B[0]~input_o\ & (\srl64[2][11]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][11]~202_combout\,
	datab => \B[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[2][12]~47_combout\,
	combout => \srl64[2][11]~293_combout\);

-- Location: LCCOMB_X46_Y43_N10
\srl64[3][15]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][15]~294_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\srl64[2][19]~223_combout\)) # (!\B[2]~input_o\ & ((\srl64[2][15]~230_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][19]~223_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][15]~230_combout\,
	combout => \srl64[3][15]~294_combout\);

-- Location: LCCOMB_X46_Y43_N20
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Mux58~0_combout\ & (((!\srl64[5][62]~134_combout\)))) # (!\Mux58~0_combout\ & ((\srl64[5][62]~134_combout\ & ((\srl64[2][7]~227_combout\))) # (!\srl64[5][62]~134_combout\ & (\srl64[3][15]~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][15]~294_combout\,
	datab => \Mux58~0_combout\,
	datac => \srl64[5][62]~134_combout\,
	datad => \srl64[2][7]~227_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X46_Y43_N24
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\Mux58~0_combout\ & ((\Mux56~0_combout\ & (\srl64[4][23]~298_combout\)) # (!\Mux56~0_combout\ & ((\srl64[2][11]~293_combout\))))) # (!\Mux58~0_combout\ & (((\Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][23]~298_combout\,
	datab => \Mux58~0_combout\,
	datac => \srl64[2][11]~293_combout\,
	datad => \Mux56~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X46_Y43_N28
Mux56 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~combout\ = (\Mux56~5_combout\ & (((\Mux56~4_combout\)) # (!\ShiftFN[1]~input_o\))) # (!\Mux56~5_combout\ & (\ShiftFN[1]~input_o\ & ((\Mux56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~5_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux56~4_combout\,
	datad => \Mux56~1_combout\,
	combout => \Mux56~combout\);

-- Location: LCCOMB_X42_Y43_N2
\Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((\B[3]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X45_Y45_N4
\srl64[3][16]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][16]~310_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\srl64[2][20]~64_combout\))) # (!\B[2]~input_o\ & (\srl64[2][16]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][16]~71_combout\,
	datab => \srl64[2][20]~64_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][16]~310_combout\);

-- Location: LCCOMB_X45_Y45_N30
\srl64[4][24]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][24]~314_combout\ = (\B[2]~input_o\ & ((\srl64[2][28]~61_combout\))) # (!\B[2]~input_o\ & (\srl64[2][24]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][24]~68_combout\,
	datac => \srl64[2][28]~61_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[4][24]~314_combout\);

-- Location: LCCOMB_X45_Y45_N16
\srl64[4][24]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][24]~315_combout\ = (\B[3]~input_o\ & (\srl64[3][32]~118_combout\)) # (!\B[3]~input_o\ & (((!\ExtWord~input_o\ & \srl64[4][24]~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][32]~118_combout\,
	datab => \ExtWord~input_o\,
	datac => \srl64[4][24]~314_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[4][24]~315_combout\);

-- Location: LCCOMB_X40_Y46_N16
\Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\B[5]~input_o\) # ((\ExtWord~input_o\) # (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X46_Y46_N10
\srl64[3][8]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][8]~312_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][9]~52_combout\))) # (!\B[0]~input_o\ & (\srl64[2][8]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][8]~53_combout\,
	datab => \srl64[2][9]~52_combout\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[3][8]~312_combout\);

-- Location: LCCOMB_X46_Y46_N12
\srl64[3][8]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][8]~313_combout\ = (!\ExtWord~input_o\ & ((\srl64[3][8]~312_combout\) # ((\srl64[2][12]~48_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][12]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][8]~312_combout\,
	combout => \srl64[3][8]~313_combout\);

-- Location: LCCOMB_X47_Y42_N10
\sll64[5][20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][20]~69_combout\ = (\B[4]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \sll64[5][20]~69_combout\);

-- Location: LCCOMB_X47_Y42_N20
\sra64[5][40]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][40]~82_combout\ = (\sll64[5][20]~69_combout\ & ((\srl64[3][56]~80_combout\) # ((\B[2]~input_o\ & \srl64[2][60]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][20]~69_combout\,
	datab => \srl64[3][56]~80_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][60]~86_combout\,
	combout => \sra64[5][40]~82_combout\);

-- Location: LCCOMB_X48_Y45_N4
\srl64[4][40]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][40]~311_combout\ = (\B[3]~input_o\ & (\srl64[3][48]~103_combout\)) # (!\B[3]~input_o\ & (((\srl64[3][40]~132_combout\) # (\srl64[3][40]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][48]~103_combout\,
	datab => \srl64[3][40]~132_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][40]~125_combout\,
	combout => \srl64[4][40]~311_combout\);

-- Location: LCCOMB_X48_Y43_N6
\sra64[5][40]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][40]~83_combout\ = (\sra64[5][40]~82_combout\) # ((\B[4]~input_o\ & (\sra64[4][55]~79_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][40]~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][55]~79_combout\,
	datab => \sra64[5][40]~82_combout\,
	datac => \srl64[4][40]~311_combout\,
	datad => \B[4]~input_o\,
	combout => \sra64[5][40]~83_combout\);

-- Location: LCCOMB_X48_Y43_N10
\sra64[6][40]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][40]~134_combout\ = (\ExtWord~input_o\ & (((\sra64[5][40]~83_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][40]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][40]~83_combout\,
	combout => \sra64[6][40]~134_combout\);

-- Location: LCCOMB_X48_Y45_N12
\Mux55~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~8_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\srl64[3][56]~87_combout\ & ((\sll64[5][20]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][56]~87_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[5][20]~69_combout\,
	combout => \Mux55~8_combout\);

-- Location: LCCOMB_X48_Y45_N6
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux55~8_combout\) # ((\srl64[4][40]~311_combout\ & (!\B[4]~input_o\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~8_combout\,
	datab => \srl64[4][40]~311_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X48_Y43_N8
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\Mux55~2_combout\ & ((\sra64[6][40]~134_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux55~2_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[5][40]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][40]~134_combout\,
	datab => \Mux55~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[5][40]~83_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X46_Y45_N22
\Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = (\Mux52~3_combout\ & (\Mux52~4_combout\)) # (!\Mux52~3_combout\ & ((\Mux52~4_combout\ & ((\Mux55~3_combout\))) # (!\Mux52~4_combout\ & (\srl64[3][8]~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~3_combout\,
	datab => \Mux52~4_combout\,
	datac => \srl64[3][8]~313_combout\,
	datad => \Mux55~3_combout\,
	combout => \Mux55~4_combout\);

-- Location: LCCOMB_X45_Y45_N10
\Mux55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~5_combout\ = (\Mux52~3_combout\ & ((\Mux55~4_combout\ & ((\srl64[4][24]~315_combout\))) # (!\Mux55~4_combout\ & (\srl64[3][16]~310_combout\)))) # (!\Mux52~3_combout\ & (((\Mux55~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~3_combout\,
	datab => \srl64[3][16]~310_combout\,
	datac => \srl64[4][24]~315_combout\,
	datad => \Mux55~4_combout\,
	combout => \Mux55~5_combout\);

-- Location: LCCOMB_X47_Y48_N22
\sll64[2][8]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][8]~70_combout\ = (\B[1]~input_o\ & ((\A[6]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datad => \A[6]~input_o\,
	combout => \sll64[2][8]~70_combout\);

-- Location: LCCOMB_X43_Y50_N26
\sll64[2][8]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][8]~71_combout\ = (\B[0]~input_o\ & ((\sll64[2][7]~66_combout\))) # (!\B[0]~input_o\ & (\sll64[2][8]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][8]~70_combout\,
	datab => \B[0]~input_o\,
	datac => \sll64[2][7]~66_combout\,
	combout => \sll64[2][8]~71_combout\);

-- Location: LCCOMB_X43_Y50_N12
\sll64[4][8]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][8]~72_combout\ = (\B[3]~input_o\ & (((!\B[1]~input_o\ & \sll64[3][4]~57_combout\)))) # (!\B[3]~input_o\ & (\sll64[2][8]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][8]~71_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \sll64[3][4]~57_combout\,
	combout => \sll64[4][8]~72_combout\);

-- Location: LCCOMB_X43_Y50_N30
\sll64[4][8]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][8]~317_combout\ = (\B[2]~input_o\ & (\sll64[2][4]~60_combout\ & (!\B[3]~input_o\))) # (!\B[2]~input_o\ & (((\sll64[4][8]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][4]~60_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[4][8]~72_combout\,
	combout => \sll64[4][8]~317_combout\);

-- Location: LCCOMB_X42_Y49_N0
\Mux55~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~6_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][1]~48_combout\ & (\sll64[4][8]~317_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sll64[6][1]~48_combout\,
	datac => \sll64[4][8]~317_combout\,
	datad => \A[8]~input_o\,
	combout => \Mux55~6_combout\);

-- Location: LCCOMB_X45_Y45_N20
\Mux55~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~7_combout\ = (\ShiftFN[1]~input_o\ & (\Mux55~5_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux55~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~5_combout\,
	datac => \Mux55~6_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux55~7_combout\);

-- Location: LCCOMB_X43_Y44_N22
\srl64[4][25]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][25]~319_combout\ = (\B[3]~input_o\ & (\srl64[3][33]~178_combout\)) # (!\B[3]~input_o\ & ((\srl64[4][25]~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][33]~178_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[4][25]~142_combout\,
	combout => \srl64[4][25]~319_combout\);

-- Location: LCCOMB_X40_Y43_N20
\srl64[4][41]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][41]~316_combout\ = (\B[3]~input_o\ & (\srl64[3][49]~160_combout\)) # (!\B[3]~input_o\ & (((\srl64[3][41]~184_combout\) # (\srl64[3][41]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][49]~160_combout\,
	datab => \srl64[3][41]~184_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][41]~181_combout\,
	combout => \srl64[4][41]~316_combout\);

-- Location: LCCOMB_X40_Y41_N12
\sra64[5][41]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][41]~84_combout\ = (\B[4]~input_o\ & ((\sra64[4][55]~79_combout\) # ((\sra64[3][57]~61_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \sra64[3][57]~61_combout\,
	datac => \sra64[4][55]~79_combout\,
	datad => \B[3]~input_o\,
	combout => \sra64[5][41]~84_combout\);

-- Location: LCCOMB_X40_Y41_N22
\sra64[5][41]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][41]~85_combout\ = (\sra64[5][41]~84_combout\) # ((\srl64[4][41]~316_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[4][41]~316_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[5][41]~84_combout\,
	combout => \sra64[5][41]~85_combout\);

-- Location: LCCOMB_X40_Y41_N4
\sra64[6][41]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][41]~135_combout\ = (\ExtWord~input_o\ & (\sra64[5][41]~85_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[5]~input_o\ & (\sra64[5][41]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][41]~85_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[6][41]~135_combout\);

-- Location: LCCOMB_X40_Y43_N2
\Mux54~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~8_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & (((\srl64[3][57]~154_combout\ & \sll64[5][20]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[3][57]~154_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[5][20]~69_combout\,
	combout => \Mux54~8_combout\);

-- Location: LCCOMB_X40_Y43_N30
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\Mux54~8_combout\) # ((\srl64[4][41]~316_combout\ & (!\ShiftFN[0]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][41]~316_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Mux54~8_combout\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X40_Y43_N0
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\Mux54~2_combout\ & ((\sra64[6][41]~135_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux54~2_combout\ & (((\sra64[5][41]~85_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][41]~135_combout\,
	datab => \sra64[5][41]~85_combout\,
	datac => \Mux54~2_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X46_Y46_N14
\srl64[3][9]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][9]~317_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][10]~168_combout\))) # (!\B[0]~input_o\ & (\srl64[2][9]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \srl64[2][9]~52_combout\,
	datad => \srl64[2][10]~168_combout\,
	combout => \srl64[3][9]~317_combout\);

-- Location: LCCOMB_X43_Y44_N26
\srl64[3][9]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][9]~318_combout\ = (!\ExtWord~input_o\ & ((\srl64[3][9]~317_combout\) # ((\srl64[2][13]~166_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][9]~317_combout\,
	datab => \srl64[2][13]~166_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][9]~318_combout\);

-- Location: LCCOMB_X43_Y44_N12
\Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = (\Mux52~3_combout\ & (((\Mux52~4_combout\) # (\srl64[3][17]~147_combout\)))) # (!\Mux52~3_combout\ & (\srl64[3][9]~318_combout\ & (!\Mux52~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][9]~318_combout\,
	datab => \Mux52~3_combout\,
	datac => \Mux52~4_combout\,
	datad => \srl64[3][17]~147_combout\,
	combout => \Mux54~4_combout\);

-- Location: LCCOMB_X43_Y44_N0
\Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~5_combout\ = (\Mux52~4_combout\ & ((\Mux54~4_combout\ & (\srl64[4][25]~319_combout\)) # (!\Mux54~4_combout\ & ((\Mux54~3_combout\))))) # (!\Mux52~4_combout\ & (((\Mux54~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][25]~319_combout\,
	datab => \Mux54~3_combout\,
	datac => \Mux52~4_combout\,
	datad => \Mux54~4_combout\,
	combout => \Mux54~5_combout\);

-- Location: LCCOMB_X45_Y47_N22
\sll64[2][10]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][10]~73_combout\ = (\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[9]~input_o\,
	combout => \sll64[2][10]~73_combout\);

-- Location: LCCOMB_X42_Y48_N12
\sll64[2][9]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][9]~74_combout\ = (\B[0]~input_o\ & (\sll64[2][8]~70_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][10]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][8]~70_combout\,
	datad => \sll64[2][10]~73_combout\,
	combout => \sll64[2][9]~74_combout\);

-- Location: LCCOMB_X42_Y48_N14
\sll64[4][9]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][9]~75_combout\ = (\B[3]~input_o\ & (\sll64[1][1]~49_combout\ & (!\B[1]~input_o\))) # (!\B[3]~input_o\ & (((\sll64[2][9]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~49_combout\,
	datab => \B[1]~input_o\,
	datac => \sll64[2][9]~74_combout\,
	datad => \B[3]~input_o\,
	combout => \sll64[4][9]~75_combout\);

-- Location: LCCOMB_X42_Y48_N6
\sll64[4][9]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][9]~318_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & ((\sll64[2][5]~62_combout\)))) # (!\B[2]~input_o\ & (((\sll64[4][9]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[4][9]~75_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][5]~62_combout\,
	combout => \sll64[4][9]~318_combout\);

-- Location: LCCOMB_X42_Y49_N2
\Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~6_combout\ = (\ShiftFN[0]~input_o\ & (((\sll64[6][1]~48_combout\ & \sll64[4][9]~318_combout\)))) # (!\ShiftFN[0]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \sll64[6][1]~48_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[4][9]~318_combout\,
	combout => \Mux54~6_combout\);

-- Location: LCCOMB_X42_Y49_N4
\Mux54~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~7_combout\ = (\ShiftFN[1]~input_o\ & (\Mux54~5_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux54~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux54~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux54~6_combout\,
	combout => \Mux54~7_combout\);

-- Location: LCCOMB_X46_Y47_N22
\sll64[2][11]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][11]~76_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datad => \A[10]~input_o\,
	combout => \sll64[2][11]~76_combout\);

-- Location: LCCOMB_X43_Y47_N20
\sll64[2][10]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][10]~77_combout\ = (\B[0]~input_o\ & (\sll64[2][10]~73_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][11]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][10]~73_combout\,
	datad => \sll64[2][11]~76_combout\,
	combout => \sll64[2][10]~77_combout\);

-- Location: LCCOMB_X43_Y47_N30
\sll64[4][10]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][10]~78_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\sll64[2][2]~52_combout\))) # (!\B[3]~input_o\ & (\sll64[2][10]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][10]~77_combout\,
	datac => \sll64[2][2]~52_combout\,
	datad => \B[3]~input_o\,
	combout => \sll64[4][10]~78_combout\);

-- Location: LCCOMB_X43_Y47_N14
\sll64[4][10]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][10]~319_combout\ = (\sll64[4][10]~78_combout\) # ((\sll64[2][6]~64_combout\ & (!\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][6]~64_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[4][10]~78_combout\,
	combout => \sll64[4][10]~319_combout\);

-- Location: LCCOMB_X46_Y44_N2
\Mux53~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~6_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][1]~48_combout\ & (\sll64[4][10]~319_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \sll64[4][10]~319_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mux53~6_combout\);

-- Location: LCCOMB_X47_Y44_N30
\srl64[4][26]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][26]~321_combout\ = (\B[3]~input_o\ & (\srl64[3][34]~214_combout\)) # (!\B[3]~input_o\ & ((\srl64[4][26]~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][34]~214_combout\,
	datac => \srl64[4][26]~191_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[4][26]~321_combout\);

-- Location: LCCOMB_X45_Y41_N16
\srl64[4][42]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][42]~320_combout\ = (\B[3]~input_o\ & (\srl64[3][50]~210_combout\)) # (!\B[3]~input_o\ & (((\srl64[3][42]~216_combout\) # (\srl64[3][42]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][50]~210_combout\,
	datab => \srl64[3][42]~216_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][42]~215_combout\,
	combout => \srl64[4][42]~320_combout\);

-- Location: LCCOMB_X43_Y42_N24
\Mux53~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~8_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & (((!\sra64[3][58]~65_combout\ & \sll64[5][20]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[3][58]~65_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[5][20]~69_combout\,
	combout => \Mux53~8_combout\);

-- Location: LCCOMB_X43_Y42_N26
\Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\Mux53~8_combout\) # ((\srl64[4][42]~320_combout\ & (!\B[4]~input_o\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][42]~320_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux53~8_combout\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X45_Y41_N18
\sra64[5][42]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][42]~86_combout\ = (!\B[3]~input_o\ & (((\srl64[3][32]~96_combout\ & \sra64[0][63]~58_combout\)) # (!\sra64[3][58]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][32]~96_combout\,
	datab => \sra64[0][63]~58_combout\,
	datac => \B[3]~input_o\,
	datad => \sra64[3][58]~65_combout\,
	combout => \sra64[5][42]~86_combout\);

-- Location: LCCOMB_X43_Y42_N0
\sra64[5][42]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][42]~87_combout\ = (\B[4]~input_o\ & (((\sra64[4][55]~79_combout\) # (\sra64[5][42]~86_combout\)))) # (!\B[4]~input_o\ & (\srl64[4][42]~320_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][42]~320_combout\,
	datab => \sra64[4][55]~79_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[5][42]~86_combout\,
	combout => \sra64[5][42]~87_combout\);

-- Location: LCCOMB_X43_Y42_N10
\sra64[6][42]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][42]~136_combout\ = (\ExtWord~input_o\ & (\sra64[5][42]~87_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[5]~input_o\ & (\sra64[5][42]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[5][42]~87_combout\,
	datac => \B[5]~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[6][42]~136_combout\);

-- Location: LCCOMB_X43_Y42_N28
\Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\Mux53~2_combout\ & (((\sra64[6][42]~136_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux53~2_combout\ & (\sra64[5][42]~87_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~2_combout\,
	datab => \sra64[5][42]~87_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][42]~136_combout\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X46_Y44_N22
\Mux53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = (\Mux52~4_combout\ & ((\Mux52~3_combout\) # ((\Mux53~3_combout\)))) # (!\Mux52~4_combout\ & (!\Mux52~3_combout\ & (\srl64[3][10]~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~4_combout\,
	datab => \Mux52~3_combout\,
	datac => \srl64[3][10]~206_combout\,
	datad => \Mux53~3_combout\,
	combout => \Mux53~4_combout\);

-- Location: LCCOMB_X46_Y44_N24
\Mux53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~5_combout\ = (\Mux53~4_combout\ & ((\srl64[4][26]~321_combout\) # ((!\Mux52~3_combout\)))) # (!\Mux53~4_combout\ & (((\srl64[3][18]~196_combout\ & \Mux52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][26]~321_combout\,
	datab => \srl64[3][18]~196_combout\,
	datac => \Mux53~4_combout\,
	datad => \Mux52~3_combout\,
	combout => \Mux53~5_combout\);

-- Location: LCCOMB_X46_Y44_N20
\Mux53~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~7_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux53~5_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux53~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux53~6_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux53~5_combout\,
	combout => \Mux53~7_combout\);

-- Location: LCCOMB_X45_Y47_N8
\sll64[2][11]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][11]~79_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[9]~input_o\,
	combout => \sll64[2][11]~79_combout\);

-- Location: LCCOMB_X46_Y47_N0
\sll64[2][11]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][11]~80_combout\ = (\B[0]~input_o\ & ((\sll64[2][11]~76_combout\))) # (!\B[0]~input_o\ & (\sll64[2][11]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][11]~79_combout\,
	datac => \sll64[2][11]~76_combout\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][11]~80_combout\);

-- Location: LCCOMB_X41_Y49_N10
\sll64[4][11]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][11]~81_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\sll64[2][3]~55_combout\)) # (!\B[3]~input_o\ & ((\sll64[2][11]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sll64[2][3]~55_combout\,
	datad => \sll64[2][11]~80_combout\,
	combout => \sll64[4][11]~81_combout\);

-- Location: LCCOMB_X41_Y49_N12
\sll64[4][11]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][11]~320_combout\ = (\sll64[4][11]~81_combout\) # ((\B[2]~input_o\ & (!\B[3]~input_o\ & \sll64[2][7]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sll64[4][11]~81_combout\,
	datad => \sll64[2][7]~67_combout\,
	combout => \sll64[4][11]~320_combout\);

-- Location: LCCOMB_X42_Y49_N30
\Mux52~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~9_combout\ = (\ShiftFN[0]~input_o\ & (((\sll64[6][1]~48_combout\ & \sll64[4][11]~320_combout\)))) # (!\ShiftFN[0]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \sll64[6][1]~48_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[4][11]~320_combout\,
	combout => \Mux52~9_combout\);

-- Location: LCCOMB_X46_Y45_N24
\srl64[4][43]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][43]~367_combout\ = (\B[3]~input_o\ & (((\srl64[3][51]~235_combout\)))) # (!\B[3]~input_o\ & ((\srl64[3][43]~236_combout\) # ((\srl64[3][43]~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][43]~236_combout\,
	datab => \srl64[3][51]~235_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][43]~237_combout\,
	combout => \srl64[4][43]~367_combout\);

-- Location: LCCOMB_X41_Y41_N20
\sra64[4][59]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][59]~137_combout\ = (\B[3]~input_o\ & (((\sra64[0][63]~58_combout\)))) # (!\B[3]~input_o\ & ((\sra64[3][59]~68_combout\) # ((\B[2]~input_o\ & \sra64[0][63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sra64[3][59]~68_combout\,
	datac => \B[2]~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[4][59]~137_combout\);

-- Location: LCCOMB_X43_Y42_N6
\sra64[5][43]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][43]~88_combout\ = (\B[4]~input_o\ & ((\sra64[4][59]~137_combout\))) # (!\B[4]~input_o\ & (\srl64[4][43]~367_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][43]~367_combout\,
	datab => \B[4]~input_o\,
	datac => \sra64[4][59]~137_combout\,
	combout => \sra64[5][43]~88_combout\);

-- Location: LCCOMB_X43_Y42_N30
\sra64[6][43]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][43]~138_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\sra64[5][43]~88_combout\)) # (!\ExtWord~input_o\ & ((\sra64[0][63]~58_combout\))))) # (!\B[5]~input_o\ & (\sra64[5][43]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][43]~88_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[6][43]~138_combout\);

-- Location: LCCOMB_X43_Y42_N20
\Mux52~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~11_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & (((\srl64[3][59]~242_combout\ & \sll64[5][20]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[3][59]~242_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[5][20]~69_combout\,
	combout => \Mux52~11_combout\);

-- Location: LCCOMB_X43_Y42_N16
\Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~5_combout\ = (\Mux52~11_combout\) # ((\srl64[4][43]~367_combout\ & (!\B[4]~input_o\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][43]~367_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux52~11_combout\,
	combout => \Mux52~5_combout\);

-- Location: LCCOMB_X43_Y42_N2
\Mux52~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~6_combout\ = (\Mux52~5_combout\ & ((\sra64[6][43]~138_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux52~5_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[5][43]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][43]~138_combout\,
	datab => \Mux52~5_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[5][43]~88_combout\,
	combout => \Mux52~6_combout\);

-- Location: LCCOMB_X46_Y45_N26
\srl64[4][27]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][27]~322_combout\ = (\B[3]~input_o\ & ((\srl64[3][35]~241_combout\))) # (!\B[3]~input_o\ & (\srl64[3][27]~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][27]~221_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][35]~241_combout\,
	combout => \srl64[4][27]~322_combout\);

-- Location: LCCOMB_X46_Y45_N16
\Mux52~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~7_combout\ = (\Mux52~3_combout\ & ((\Mux52~4_combout\) # ((\srl64[3][19]~224_combout\)))) # (!\Mux52~3_combout\ & (!\Mux52~4_combout\ & ((\srl64[3][11]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~3_combout\,
	datab => \Mux52~4_combout\,
	datac => \srl64[3][19]~224_combout\,
	datad => \srl64[3][11]~231_combout\,
	combout => \Mux52~7_combout\);

-- Location: LCCOMB_X46_Y45_N12
\Mux52~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~8_combout\ = (\Mux52~4_combout\ & ((\Mux52~7_combout\ & ((\srl64[4][27]~322_combout\))) # (!\Mux52~7_combout\ & (\Mux52~6_combout\)))) # (!\Mux52~4_combout\ & (((\Mux52~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~6_combout\,
	datab => \Mux52~4_combout\,
	datac => \srl64[4][27]~322_combout\,
	datad => \Mux52~7_combout\,
	combout => \Mux52~8_combout\);

-- Location: LCCOMB_X42_Y49_N8
\Mux52~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~10_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux52~8_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux52~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~9_combout\,
	datab => \Mux52~8_combout\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux52~10_combout\);

-- Location: LCCOMB_X45_Y43_N2
\srl64[4][28]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][28]~324_combout\ = (\B[3]~input_o\ & ((\srl64[3][36]~255_combout\) # ((\srl64[3][36]~254_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][28]~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][36]~255_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][28]~248_combout\,
	datad => \srl64[3][36]~254_combout\,
	combout => \srl64[4][28]~324_combout\);

-- Location: LCCOMB_X45_Y43_N30
\srl64[4][44]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][44]~323_combout\ = (\B[3]~input_o\ & ((\srl64[3][52]~257_combout\) # ((\srl64[3][52]~258_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][44]~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][52]~257_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][52]~258_combout\,
	datad => \srl64[3][44]~253_combout\,
	combout => \srl64[4][44]~323_combout\);

-- Location: LCCOMB_X48_Y42_N24
\sra64[4][60]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][60]~89_combout\ = (\B[2]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[3]~input_o\ & ((\srl64[2][60]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \srl64[2][60]~86_combout\,
	combout => \sra64[4][60]~89_combout\);

-- Location: LCCOMB_X48_Y42_N10
\sra64[5][44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][44]~90_combout\ = (\B[4]~input_o\ & ((\sra64[4][60]~89_combout\))) # (!\B[4]~input_o\ & (\srl64[4][44]~323_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][44]~323_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[4][60]~89_combout\,
	combout => \sra64[5][44]~90_combout\);

-- Location: LCCOMB_X45_Y42_N28
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux61~9_combout\) # ((\srl64[2][60]~86_combout\ & (\sll64[4][16]~53_combout\ & \Mux61~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][60]~86_combout\,
	datab => \Mux61~9_combout\,
	datac => \sll64[4][16]~53_combout\,
	datad => \Mux61~10_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X48_Y42_N20
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Mux51~0_combout\) # ((!\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & \srl64[4][44]~323_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \srl64[4][44]~323_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X48_Y42_N18
\sra64[6][44]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][44]~139_combout\ = (\ExtWord~input_o\ & (((\sra64[5][44]~90_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][44]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][44]~90_combout\,
	combout => \sra64[6][44]~139_combout\);

-- Location: LCCOMB_X48_Y42_N14
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\Mux51~1_combout\ & (((\sra64[6][44]~139_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux51~1_combout\ & (\sra64[5][44]~90_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][44]~90_combout\,
	datab => \Mux51~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][44]~139_combout\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X45_Y43_N16
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (\Mux52~3_combout\ & (((\Mux52~4_combout\)))) # (!\Mux52~3_combout\ & ((\Mux52~4_combout\ & ((\Mux51~2_combout\))) # (!\Mux52~4_combout\ & (\srl64[3][12]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][12]~245_combout\,
	datab => \Mux52~3_combout\,
	datac => \Mux52~4_combout\,
	datad => \Mux51~2_combout\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X45_Y43_N4
\Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = (\Mux52~3_combout\ & ((\Mux51~3_combout\ & (\srl64[4][28]~324_combout\)) # (!\Mux51~3_combout\ & ((\srl64[3][20]~249_combout\))))) # (!\Mux52~3_combout\ & (((\Mux51~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~3_combout\,
	datab => \srl64[4][28]~324_combout\,
	datac => \srl64[3][20]~249_combout\,
	datad => \Mux51~3_combout\,
	combout => \Mux51~4_combout\);

-- Location: LCCOMB_X46_Y47_N10
\sll64[2][12]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][12]~82_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \sll64[2][12]~82_combout\);

-- Location: LCCOMB_X46_Y47_N12
\sll64[2][12]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][12]~83_combout\ = (\B[0]~input_o\ & (\sll64[2][11]~79_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][12]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][11]~79_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][12]~82_combout\,
	combout => \sll64[2][12]~83_combout\);

-- Location: LCCOMB_X42_Y50_N0
\sll64[4][12]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][12]~84_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\sll64[2][8]~71_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][12]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][8]~71_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][12]~83_combout\,
	combout => \sll64[4][12]~84_combout\);

-- Location: LCCOMB_X42_Y46_N2
\sll64[4][12]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][12]~85_combout\ = (\sll64[4][12]~84_combout\) # ((\B[3]~input_o\ & \sll64[3][4]~313_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \sll64[4][12]~84_combout\,
	datad => \sll64[3][4]~313_combout\,
	combout => \sll64[4][12]~85_combout\);

-- Location: LCCOMB_X43_Y49_N18
\Mux51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~5_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][1]~48_combout\ & ((\sll64[4][12]~85_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[12]~input_o\,
	datad => \sll64[4][12]~85_combout\,
	combout => \Mux51~5_combout\);

-- Location: LCCOMB_X43_Y49_N28
\Mux51~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~6_combout\ = (\ShiftFN[1]~input_o\ & (\Mux51~4_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux51~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux51~4_combout\,
	datad => \Mux51~5_combout\,
	combout => \Mux51~6_combout\);

-- Location: LCCOMB_X45_Y47_N2
\sll64[2][14]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][14]~86_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][14]~86_combout\);

-- Location: LCCOMB_X46_Y47_N6
\sll64[2][13]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][13]~87_combout\ = (\B[0]~input_o\ & ((\sll64[2][12]~82_combout\))) # (!\B[0]~input_o\ & (\sll64[2][14]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][14]~86_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][12]~82_combout\,
	combout => \sll64[2][13]~87_combout\);

-- Location: LCCOMB_X42_Y48_N16
\sll64[4][13]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][13]~88_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\sll64[2][9]~74_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][13]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][9]~74_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][13]~87_combout\,
	combout => \sll64[4][13]~88_combout\);

-- Location: LCCOMB_X41_Y44_N26
\sll64[4][13]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][13]~89_combout\ = (\sll64[4][13]~88_combout\) # ((\sll64[3][5]~315_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][5]~315_combout\,
	datab => \sll64[4][13]~88_combout\,
	datac => \B[3]~input_o\,
	combout => \sll64[4][13]~89_combout\);

-- Location: LCCOMB_X45_Y47_N4
\Mux50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~5_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[4][13]~89_combout\ & ((\sll64[6][1]~48_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sll64[4][13]~89_combout\,
	datac => \A[13]~input_o\,
	datad => \sll64[6][1]~48_combout\,
	combout => \Mux50~5_combout\);

-- Location: LCCOMB_X47_Y41_N20
\srl64[4][45]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][45]~325_combout\ = (\B[3]~input_o\ & (\srl64[3][53]~270_combout\)) # (!\B[3]~input_o\ & (((\srl64[3][45]~274_combout\) # (\srl64[3][45]~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][53]~270_combout\,
	datac => \srl64[3][45]~274_combout\,
	datad => \srl64[3][45]~275_combout\,
	combout => \srl64[4][45]~325_combout\);

-- Location: LCCOMB_X40_Y41_N24
\sra64[5][45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][45]~91_combout\ = (\B[4]~input_o\ & ((\sra64[4][55]~79_combout\) # ((\sra64[3][61]~130_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \sra64[4][55]~79_combout\,
	datac => \sra64[3][61]~130_combout\,
	datad => \B[3]~input_o\,
	combout => \sra64[5][45]~91_combout\);

-- Location: LCCOMB_X40_Y41_N10
\sra64[5][45]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][45]~92_combout\ = (\sra64[5][45]~91_combout\) # ((\srl64[4][45]~325_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[4][45]~325_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[5][45]~91_combout\,
	combout => \sra64[5][45]~92_combout\);

-- Location: LCCOMB_X47_Y41_N6
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux61~9_combout\) # ((\srl64[2][61]~153_combout\ & (\sll64[4][16]~53_combout\ & \Mux61~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][61]~153_combout\,
	datab => \sll64[4][16]~53_combout\,
	datac => \Mux61~10_combout\,
	datad => \Mux61~9_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X40_Y41_N28
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux50~0_combout\) # ((!\B[4]~input_o\ & (\srl64[4][45]~325_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \srl64[4][45]~325_combout\,
	datac => \Mux50~0_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X40_Y41_N6
\sra64[6][45]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][45]~140_combout\ = (\ExtWord~input_o\ & (((\sra64[5][45]~92_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][45]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][45]~92_combout\,
	combout => \sra64[6][45]~140_combout\);

-- Location: LCCOMB_X40_Y41_N14
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\Mux50~1_combout\ & (((\sra64[6][45]~140_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux50~1_combout\ & (\sra64[5][45]~92_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][45]~92_combout\,
	datab => \Mux50~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][45]~140_combout\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X43_Y44_N2
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (\Mux52~4_combout\ & (\Mux52~3_combout\)) # (!\Mux52~4_combout\ & ((\Mux52~3_combout\ & (\srl64[3][21]~266_combout\)) # (!\Mux52~3_combout\ & ((\srl64[3][13]~262_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~4_combout\,
	datab => \Mux52~3_combout\,
	datac => \srl64[3][21]~266_combout\,
	datad => \srl64[3][13]~262_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X43_Y44_N4
\srl64[4][29]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][29]~326_combout\ = (\B[3]~input_o\ & (\srl64[3][37]~273_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][29]~265_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][37]~273_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][29]~265_combout\,
	combout => \srl64[4][29]~326_combout\);

-- Location: LCCOMB_X43_Y44_N30
\Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = (\Mux50~3_combout\ & (((\srl64[4][29]~326_combout\) # (!\Mux52~4_combout\)))) # (!\Mux50~3_combout\ & (\Mux50~2_combout\ & (\Mux52~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux50~2_combout\,
	datab => \Mux50~3_combout\,
	datac => \Mux52~4_combout\,
	datad => \srl64[4][29]~326_combout\,
	combout => \Mux50~4_combout\);

-- Location: LCCOMB_X43_Y49_N30
\Mux50~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~6_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux50~4_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux50~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux50~5_combout\,
	datab => \Mux50~4_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux50~6_combout\);

-- Location: LCCOMB_X45_Y48_N8
\sll64[2][15]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][15]~91_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[14]~input_o\,
	combout => \sll64[2][15]~91_combout\);

-- Location: LCCOMB_X43_Y47_N8
\sll64[2][14]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][14]~92_combout\ = (\B[0]~input_o\ & ((\sll64[2][14]~86_combout\))) # (!\B[0]~input_o\ & (\sll64[2][15]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][15]~91_combout\,
	datad => \sll64[2][14]~86_combout\,
	combout => \sll64[2][14]~92_combout\);

-- Location: LCCOMB_X43_Y47_N10
\sll64[4][14]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][14]~93_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][10]~77_combout\))) # (!\B[2]~input_o\ & (\sll64[2][14]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[2][14]~92_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][10]~77_combout\,
	combout => \sll64[4][14]~93_combout\);

-- Location: LCCOMB_X43_Y47_N4
\sll64[3][6]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][6]~94_combout\ = (\B[2]~input_o\ & ((\sll64[2][2]~52_combout\))) # (!\B[2]~input_o\ & (\sll64[2][6]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][6]~64_combout\,
	datab => \sll64[2][2]~52_combout\,
	datac => \B[2]~input_o\,
	combout => \sll64[3][6]~94_combout\);

-- Location: LCCOMB_X46_Y44_N4
\sll64[4][14]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][14]~95_combout\ = (\sll64[4][14]~93_combout\) # ((\sll64[3][6]~94_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][14]~93_combout\,
	datab => \sll64[3][6]~94_combout\,
	datac => \B[3]~input_o\,
	combout => \sll64[4][14]~95_combout\);

-- Location: LCCOMB_X46_Y44_N14
\Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~5_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][1]~48_combout\ & (\sll64[4][14]~95_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sll64[4][14]~95_combout\,
	datad => \A[14]~input_o\,
	combout => \Mux49~5_combout\);

-- Location: LCCOMB_X48_Y44_N24
\srl64[4][46]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][46]~327_combout\ = (\B[3]~input_o\ & (\srl64[3][54]~291_combout\)) # (!\B[3]~input_o\ & (((\srl64[3][46]~284_combout\) # (\srl64[3][46]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][54]~291_combout\,
	datac => \srl64[3][46]~284_combout\,
	datad => \srl64[3][46]~283_combout\,
	combout => \srl64[4][46]~327_combout\);

-- Location: LCCOMB_X48_Y44_N30
\sra64[5][46]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][46]~93_combout\ = (\B[3]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[3]~input_o\ & ((\srl64[4][55]~94_combout\ & ((\srl64[1][62]~82_combout\))) # (!\srl64[4][55]~94_combout\ & (\sra64[0][63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \srl64[1][62]~82_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[4][55]~94_combout\,
	combout => \sra64[5][46]~93_combout\);

-- Location: LCCOMB_X48_Y44_N10
\sra64[5][46]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][46]~94_combout\ = (\B[4]~input_o\ & ((\sra64[5][46]~93_combout\))) # (!\B[4]~input_o\ & (\srl64[4][46]~327_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][46]~327_combout\,
	datab => \B[4]~input_o\,
	datac => \sra64[5][46]~93_combout\,
	combout => \sra64[5][46]~94_combout\);

-- Location: LCCOMB_X48_Y44_N18
\sra64[6][46]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][46]~141_combout\ = (\ExtWord~input_o\ & (((\sra64[5][46]~94_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][46]~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][46]~94_combout\,
	combout => \sra64[6][46]~141_combout\);

-- Location: LCCOMB_X43_Y50_N14
\sll64[5][16]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][16]~90_combout\ = (!\B[2]~input_o\ & (\B[4]~input_o\ & (!\B[1]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \sll64[5][16]~90_combout\);

-- Location: LCCOMB_X48_Y44_N12
\srl64[5][46]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][46]~328_combout\ = (\srl64[4][46]~327_combout\ & (((\sll64[5][16]~90_combout\ & \srl64[1][62]~82_combout\)) # (!\B[4]~input_o\))) # (!\srl64[4][46]~327_combout\ & (((\sll64[5][16]~90_combout\ & \srl64[1][62]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][46]~327_combout\,
	datab => \B[4]~input_o\,
	datac => \sll64[5][16]~90_combout\,
	datad => \srl64[1][62]~82_combout\,
	combout => \srl64[5][46]~328_combout\);

-- Location: LCCOMB_X48_Y44_N16
\Mux49~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~7_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\srl64[5][46]~328_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[5][46]~328_combout\,
	combout => \Mux49~7_combout\);

-- Location: LCCOMB_X48_Y44_N6
\Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux49~7_combout\ & (\sra64[6][46]~141_combout\)) # (!\Mux49~7_combout\ & ((\sra64[5][46]~94_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux49~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sra64[6][46]~141_combout\,
	datac => \Mux49~7_combout\,
	datad => \sra64[5][46]~94_combout\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X46_Y44_N30
\Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\Mux52~3_combout\ & (((\Mux52~4_combout\)))) # (!\Mux52~3_combout\ & ((\Mux52~4_combout\ & ((\Mux49~2_combout\))) # (!\Mux52~4_combout\ & (\srl64[3][14]~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][14]~278_combout\,
	datab => \Mux52~3_combout\,
	datac => \Mux52~4_combout\,
	datad => \Mux49~2_combout\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X46_Y44_N8
\srl64[4][30]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][30]~329_combout\ = (\B[3]~input_o\ & ((\srl64[3][38]~286_combout\) # ((\srl64[3][38]~287_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][30]~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][38]~286_combout\,
	datab => \srl64[3][38]~287_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][30]~280_combout\,
	combout => \srl64[4][30]~329_combout\);

-- Location: LCCOMB_X46_Y44_N10
\Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = (\Mux49~3_combout\ & (((\srl64[4][30]~329_combout\)) # (!\Mux52~3_combout\))) # (!\Mux49~3_combout\ & (\Mux52~3_combout\ & ((\srl64[3][22]~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~3_combout\,
	datab => \Mux52~3_combout\,
	datac => \srl64[4][30]~329_combout\,
	datad => \srl64[3][22]~281_combout\,
	combout => \Mux49~4_combout\);

-- Location: LCCOMB_X46_Y44_N0
\Mux49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~6_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux49~4_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux49~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux49~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux49~4_combout\,
	combout => \Mux49~6_combout\);

-- Location: LCCOMB_X46_Y43_N30
\Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = (\Mux52~4_combout\ & (((\Mux52~3_combout\)))) # (!\Mux52~4_combout\ & ((\Mux52~3_combout\ & (\srl64[3][23]~295_combout\)) # (!\Mux52~3_combout\ & ((\srl64[3][15]~294_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~4_combout\,
	datab => \srl64[3][23]~295_combout\,
	datac => \Mux52~3_combout\,
	datad => \srl64[3][15]~294_combout\,
	combout => \Mux48~3_combout\);

-- Location: LCCOMB_X46_Y43_N8
\srl64[3][39]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][39]~331_combout\ = (\srl64[3][39]~305_combout\) # (\srl64[3][39]~306_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][39]~305_combout\,
	datac => \srl64[3][39]~306_combout\,
	combout => \srl64[3][39]~331_combout\);

-- Location: LCCOMB_X46_Y43_N18
\srl64[4][31]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][31]~332_combout\ = (\B[3]~input_o\ & (((\srl64[3][39]~331_combout\)))) # (!\B[3]~input_o\ & ((\srl64[3][31]~297_combout\) # ((\srl64[3][31]~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][31]~297_combout\,
	datac => \srl64[3][39]~331_combout\,
	datad => \srl64[3][31]~296_combout\,
	combout => \srl64[4][31]~332_combout\);

-- Location: LCCOMB_X47_Y43_N14
\srl64[5][47]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][47]~330_combout\ = (!\B[0]~input_o\ & (\sra64[0][63]~58_combout\ & \sll64[5][16]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sll64[5][16]~90_combout\,
	combout => \srl64[5][47]~330_combout\);

-- Location: LCCOMB_X47_Y43_N2
\sra64[5][47]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][47]~95_combout\ = (\B[4]~input_o\) # ((\B[3]~input_o\ & (!\srl64[3][55]~301_combout\)) # (!\B[3]~input_o\ & ((!\srl64[3][47]~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \srl64[3][55]~301_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][47]~304_combout\,
	combout => \sra64[5][47]~95_combout\);

-- Location: LCCOMB_X47_Y43_N26
\Mux48~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~7_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & (((\srl64[5][47]~330_combout\) # (!\sra64[5][47]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[5][47]~330_combout\,
	datad => \sra64[5][47]~95_combout\,
	combout => \Mux48~7_combout\);

-- Location: LCCOMB_X47_Y43_N24
\sra64[6][47]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][47]~97_combout\ = (\shamt[5]~0_combout\ & (((\sra64[0][63]~58_combout\)))) # (!\shamt[5]~0_combout\ & (((\sra64[0][63]~58_combout\ & \B[4]~input_o\)) # (!\sra64[5][47]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \sra64[5][47]~95_combout\,
	datac => \sra64[0][63]~58_combout\,
	datad => \B[4]~input_o\,
	combout => \sra64[6][47]~97_combout\);

-- Location: LCCOMB_X47_Y43_N12
\sra64[5][47]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][47]~96_combout\ = ((\B[4]~input_o\ & \sra64[0][63]~58_combout\)) # (!\sra64[5][47]~95_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datad => \sra64[5][47]~95_combout\,
	combout => \sra64[5][47]~96_combout\);

-- Location: LCCOMB_X47_Y43_N18
\Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = (\Mux48~7_combout\ & ((\sra64[6][47]~97_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux48~7_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[5][47]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~7_combout\,
	datab => \sra64[6][47]~97_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[5][47]~96_combout\,
	combout => \Mux48~2_combout\);

-- Location: LCCOMB_X46_Y43_N12
\Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = (\Mux48~3_combout\ & ((\srl64[4][31]~332_combout\) # ((!\Mux52~4_combout\)))) # (!\Mux48~3_combout\ & (((\Mux52~4_combout\ & \Mux48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~3_combout\,
	datab => \srl64[4][31]~332_combout\,
	datac => \Mux52~4_combout\,
	datad => \Mux48~2_combout\,
	combout => \Mux48~4_combout\);

-- Location: LCCOMB_X41_Y49_N22
\sll64[3][7]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][7]~99_combout\ = (\B[2]~input_o\ & (\sll64[2][3]~55_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][7]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \sll64[2][3]~55_combout\,
	datad => \sll64[2][7]~67_combout\,
	combout => \sll64[3][7]~99_combout\);

-- Location: LCCOMB_X45_Y47_N14
\sll64[2][16]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][16]~96_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[15]~input_o\,
	combout => \sll64[2][16]~96_combout\);

-- Location: LCCOMB_X41_Y47_N24
\sll64[2][15]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][15]~97_combout\ = (\B[0]~input_o\ & (\sll64[2][15]~91_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][16]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][15]~91_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][16]~96_combout\,
	combout => \sll64[2][15]~97_combout\);

-- Location: LCCOMB_X41_Y49_N20
\sll64[4][15]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][15]~98_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][11]~80_combout\))) # (!\B[2]~input_o\ & (\sll64[2][15]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][15]~97_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][11]~80_combout\,
	combout => \sll64[4][15]~98_combout\);

-- Location: LCCOMB_X41_Y49_N16
\sll64[4][15]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][15]~100_combout\ = (\sll64[4][15]~98_combout\) # ((\sll64[3][7]~99_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][7]~99_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[4][15]~98_combout\,
	combout => \sll64[4][15]~100_combout\);

-- Location: LCCOMB_X45_Y47_N16
\Mux48~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~5_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][1]~48_combout\ & (\sll64[4][15]~100_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \sll64[4][15]~100_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Mux48~5_combout\);

-- Location: LCCOMB_X46_Y43_N14
\Mux48~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~6_combout\ = (\ShiftFN[1]~input_o\ & (\Mux48~4_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux48~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~4_combout\,
	datab => \Mux48~5_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux48~6_combout\);

-- Location: LCCOMB_X45_Y45_N22
\srl64[4][16]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][16]~333_combout\ = (!\ExtWord~input_o\ & ((\srl64[4][16]~65_combout\) # (\srl64[4][16]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \srl64[4][16]~65_combout\,
	datad => \srl64[4][16]~72_combout\,
	combout => \srl64[4][16]~333_combout\);

-- Location: LCCOMB_X45_Y48_N18
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Mux61~2_combout\ & (\Mux61~3_combout\)) # (!\Mux61~2_combout\ & ((\Mux61~3_combout\ & (\A[16]~input_o\)) # (!\Mux61~3_combout\ & ((\srl64[4][16]~333_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \A[16]~input_o\,
	datad => \srl64[4][16]~333_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X48_Y45_N24
\sra64[5][48]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][48]~98_combout\ = (\B[4]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[4]~input_o\ & (\srl64[4][48]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \srl64[4][48]~104_combout\,
	datac => \sra64[0][63]~58_combout\,
	combout => \sra64[5][48]~98_combout\);

-- Location: LCCOMB_X48_Y45_N20
\srl64[5][48]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][48]~335_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\srl64[3][56]~87_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][48]~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][56]~87_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \srl64[3][48]~103_combout\,
	combout => \srl64[5][48]~335_combout\);

-- Location: LCCOMB_X48_Y45_N16
\sra64[6][48]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][48]~99_combout\ = (\shamt[5]~0_combout\ & (((\sra64[0][63]~58_combout\)))) # (!\shamt[5]~0_combout\ & ((\srl64[5][48]~335_combout\) # ((\B[4]~input_o\ & \sra64[0][63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shamt[5]~0_combout\,
	datac => \sra64[0][63]~58_combout\,
	datad => \srl64[5][48]~335_combout\,
	combout => \sra64[6][48]~99_combout\);

-- Location: LCCOMB_X48_Y45_N2
\srl64[6][48]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][48]~334_combout\ = (\sll64[6][1]~48_combout\ & ((\B[3]~input_o\ & (\srl64[3][56]~87_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][48]~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][56]~87_combout\,
	datab => \sll64[6][1]~48_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][48]~103_combout\,
	combout => \srl64[6][48]~334_combout\);

-- Location: LCCOMB_X48_Y45_N22
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[6][48]~334_combout\))) # (!\ExtWord~input_o\ & (\srl64[5][48]~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[5][48]~335_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][48]~334_combout\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X48_Y45_N26
\Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = (\Mux47~1_combout\ & (((\sra64[6][48]~99_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux47~1_combout\ & (\sra64[5][48]~98_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][48]~98_combout\,
	datab => \sra64[6][48]~99_combout\,
	datac => \Mux47~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux47~2_combout\);

-- Location: LCCOMB_X48_Y45_N28
\Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~3_combout\ = (\Mux47~0_combout\ & (((\Mux47~2_combout\)) # (!\Mux61~2_combout\))) # (!\Mux47~0_combout\ & (\Mux61~2_combout\ & ((\srl64[4][32]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~0_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux47~2_combout\,
	datad => \srl64[4][32]~133_combout\,
	combout => \Mux47~3_combout\);

-- Location: LCCOMB_X45_Y48_N12
\sll64[2][17]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][17]~102_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[14]~input_o\,
	combout => \sll64[2][17]~102_combout\);

-- Location: LCCOMB_X42_Y50_N10
\sll64[2][16]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][16]~103_combout\ = (\B[0]~input_o\ & ((\sll64[2][16]~96_combout\))) # (!\B[0]~input_o\ & (\sll64[2][17]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][17]~102_combout\,
	datad => \sll64[2][16]~96_combout\,
	combout => \sll64[2][16]~103_combout\);

-- Location: LCCOMB_X43_Y47_N2
\Mux58~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~9_combout\ = (\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux58~9_combout\);

-- Location: LCCOMB_X42_Y50_N12
\sll64[4][16]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][16]~104_combout\ = (\sll64[2][16]~103_combout\ & ((\sll64[4][16]~53_combout\) # ((\Mux58~9_combout\ & \sll64[2][12]~83_combout\)))) # (!\sll64[2][16]~103_combout\ & (\Mux58~9_combout\ & ((\sll64[2][12]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][16]~103_combout\,
	datab => \Mux58~9_combout\,
	datac => \sll64[4][16]~53_combout\,
	datad => \sll64[2][12]~83_combout\,
	combout => \sll64[4][16]~104_combout\);

-- Location: LCCOMB_X43_Y50_N0
\sll64[4][16]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][16]~101_combout\ = (\sll64[4][16]~56_combout\ & ((\sll64[2][4]~60_combout\) # ((\srl64[4][53]~259_combout\ & \sll64[2][8]~71_combout\)))) # (!\sll64[4][16]~56_combout\ & (\srl64[4][53]~259_combout\ & (\sll64[2][8]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~56_combout\,
	datab => \srl64[4][53]~259_combout\,
	datac => \sll64[2][8]~71_combout\,
	datad => \sll64[2][4]~60_combout\,
	combout => \sll64[4][16]~101_combout\);

-- Location: LCCOMB_X42_Y50_N14
\sll64[4][16]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][16]~105_combout\ = (\sll64[4][16]~104_combout\) # (\sll64[4][16]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~104_combout\,
	datac => \sll64[4][16]~101_combout\,
	combout => \sll64[4][16]~105_combout\);

-- Location: LCCOMB_X43_Y50_N18
\sll64[5][16]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][16]~106_combout\ = (\sll64[4][16]~105_combout\ & (((\sll64[5][16]~90_combout\ & \sll64[3][4]~57_combout\)) # (!\B[4]~input_o\))) # (!\sll64[4][16]~105_combout\ & (((\sll64[5][16]~90_combout\ & \sll64[3][4]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~105_combout\,
	datab => \B[4]~input_o\,
	datac => \sll64[5][16]~90_combout\,
	datad => \sll64[3][4]~57_combout\,
	combout => \sll64[5][16]~106_combout\);

-- Location: LCCOMB_X41_Y48_N8
\Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & ((\sll64[5][16]~106_combout\)))) # (!\Mux61~1_combout\ & (((\Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \Mux47~3_combout\,
	datac => \Mux61~1_combout\,
	datad => \sll64[5][16]~106_combout\,
	combout => \Mux47~4_combout\);

-- Location: LCCOMB_X39_Y43_N14
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mux61~3_combout\ & (((\Mux61~2_combout\)))) # (!\Mux61~3_combout\ & ((\Mux61~2_combout\ & ((\srl64[4][33]~185_combout\))) # (!\Mux61~2_combout\ & (\srl64[4][17]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \srl64[4][17]~148_combout\,
	datac => \Mux61~2_combout\,
	datad => \srl64[4][33]~185_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X40_Y43_N24
\srl64[5][49]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][49]~337_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\srl64[3][57]~154_combout\))) # (!\B[3]~input_o\ & (\srl64[3][49]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][49]~160_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][57]~154_combout\,
	datad => \B[4]~input_o\,
	combout => \srl64[5][49]~337_combout\);

-- Location: LCCOMB_X40_Y43_N22
\srl64[6][49]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][49]~336_combout\ = (\sll64[6][1]~48_combout\ & ((\B[3]~input_o\ & ((\srl64[3][57]~154_combout\))) # (!\B[3]~input_o\ & (\srl64[3][49]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][49]~160_combout\,
	datab => \srl64[3][57]~154_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[6][1]~48_combout\,
	combout => \srl64[6][49]~336_combout\);

-- Location: LCCOMB_X40_Y43_N26
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\) # (\srl64[6][49]~336_combout\)))) # (!\ExtWord~input_o\ & (\srl64[5][49]~337_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[5][49]~337_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \srl64[6][49]~336_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X40_Y43_N10
\sra64[5][49]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][49]~100_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\sra64[3][57]~61_combout\))) # (!\B[3]~input_o\ & (\srl64[3][49]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][49]~160_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sra64[3][57]~61_combout\,
	combout => \sra64[5][49]~100_combout\);

-- Location: LCCOMB_X40_Y43_N4
\sra64[6][49]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][49]~102_combout\ = (\shamt[5]~0_combout\ & (\sra64[0][63]~58_combout\)) # (!\shamt[5]~0_combout\ & ((\sra64[5][49]~100_combout\) # ((\sra64[0][63]~58_combout\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[5][49]~100_combout\,
	combout => \sra64[6][49]~102_combout\);

-- Location: LCCOMB_X40_Y43_N12
\sra64[5][49]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][49]~101_combout\ = (\sra64[5][49]~100_combout\) # ((\sra64[0][63]~58_combout\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[5][49]~100_combout\,
	combout => \sra64[5][49]~101_combout\);

-- Location: LCCOMB_X40_Y43_N14
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux46~1_combout\ & (((\sra64[6][49]~102_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux46~1_combout\ & (\ShiftFN[0]~input_o\ & ((\sra64[5][49]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][49]~102_combout\,
	datad => \sra64[5][49]~101_combout\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X39_Y43_N0
\Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\Mux61~3_combout\ & ((\Mux46~0_combout\ & (\Mux46~2_combout\)) # (!\Mux46~0_combout\ & ((\A[17]~input_o\))))) # (!\Mux61~3_combout\ & (\Mux46~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \Mux46~0_combout\,
	datac => \Mux46~2_combout\,
	datad => \A[17]~input_o\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X42_Y48_N10
\sll64[4][17]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][17]~107_combout\ = (\sll64[2][9]~74_combout\ & ((\srl64[4][53]~259_combout\) # ((\sll64[4][16]~56_combout\ & \sll64[2][5]~62_combout\)))) # (!\sll64[2][9]~74_combout\ & (((\sll64[4][16]~56_combout\ & \sll64[2][5]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][9]~74_combout\,
	datab => \srl64[4][53]~259_combout\,
	datac => \sll64[4][16]~56_combout\,
	datad => \sll64[2][5]~62_combout\,
	combout => \sll64[4][17]~107_combout\);

-- Location: LCCOMB_X45_Y47_N18
\sll64[2][18]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][18]~108_combout\ = (\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[15]~input_o\,
	combout => \sll64[2][18]~108_combout\);

-- Location: LCCOMB_X41_Y46_N8
\sll64[4][17]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][17]~109_combout\ = (\sll64[4][16]~53_combout\ & ((\B[0]~input_o\ & ((\sll64[2][17]~102_combout\))) # (!\B[0]~input_o\ & (\sll64[2][18]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~53_combout\,
	datab => \sll64[2][18]~108_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][17]~102_combout\,
	combout => \sll64[4][17]~109_combout\);

-- Location: LCCOMB_X42_Y48_N28
\sll64[4][17]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][17]~110_combout\ = (\sll64[4][17]~107_combout\) # ((\sll64[4][17]~109_combout\) # ((\Mux58~9_combout\ & \sll64[2][13]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][17]~107_combout\,
	datab => \sll64[4][17]~109_combout\,
	datac => \Mux58~9_combout\,
	datad => \sll64[2][13]~87_combout\,
	combout => \sll64[4][17]~110_combout\);

-- Location: LCCOMB_X42_Y48_N22
\sll64[5][17]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][17]~111_combout\ = (\sll64[5][16]~90_combout\ & ((\sll64[1][1]~49_combout\) # ((\sll64[4][17]~110_combout\ & !\B[4]~input_o\)))) # (!\sll64[5][16]~90_combout\ & (\sll64[4][17]~110_combout\ & (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][16]~90_combout\,
	datab => \sll64[4][17]~110_combout\,
	datac => \B[4]~input_o\,
	datad => \sll64[1][1]~49_combout\,
	combout => \sll64[5][17]~111_combout\);

-- Location: LCCOMB_X38_Y48_N8
\Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\Mux61~1_combout\ & (((!\shamt[5]~0_combout\ & \sll64[5][17]~111_combout\)))) # (!\Mux61~1_combout\ & (\Mux46~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~3_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \sll64[5][17]~111_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X45_Y41_N20
\sra64[3][58]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][58]~103_combout\ = ((\sra64[3][57]~60_combout\) # ((\srl64[1][62]~82_combout\ & \sll64[3][5]~46_combout\))) # (!\sra64[3][58]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][62]~82_combout\,
	datab => \sll64[3][5]~46_combout\,
	datac => \sra64[3][58]~64_combout\,
	datad => \sra64[3][57]~60_combout\,
	combout => \sra64[3][58]~103_combout\);

-- Location: LCCOMB_X45_Y41_N14
\sra64[5][50]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][50]~104_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\sra64[3][58]~103_combout\))) # (!\B[3]~input_o\ & (\srl64[3][50]~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][50]~210_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \sra64[3][58]~103_combout\,
	combout => \sra64[5][50]~104_combout\);

-- Location: LCCOMB_X46_Y41_N10
\sra64[5][50]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][50]~105_combout\ = (\sra64[5][50]~104_combout\) # ((\B[4]~input_o\ & \sra64[0][63]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sra64[5][50]~104_combout\,
	combout => \sra64[5][50]~105_combout\);

-- Location: LCCOMB_X45_Y41_N2
\srl64[5][50]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][50]~339_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((!\sra64[3][58]~65_combout\))) # (!\B[3]~input_o\ & (\srl64[3][50]~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][50]~210_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \sra64[3][58]~65_combout\,
	combout => \srl64[5][50]~339_combout\);

-- Location: LCCOMB_X45_Y41_N8
\srl64[6][50]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][50]~338_combout\ = (\sll64[6][1]~48_combout\ & ((\B[3]~input_o\ & (!\sra64[3][58]~65_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][50]~210_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \sra64[3][58]~65_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][50]~210_combout\,
	combout => \srl64[6][50]~338_combout\);

-- Location: LCCOMB_X46_Y41_N4
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[6][50]~338_combout\))) # (!\ExtWord~input_o\ & (\srl64[5][50]~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][50]~339_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][50]~338_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X46_Y41_N14
\sra64[6][50]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][50]~106_combout\ = (\shamt[5]~0_combout\ & (((\sra64[0][63]~58_combout\)))) # (!\shamt[5]~0_combout\ & ((\sra64[5][50]~104_combout\) # ((\B[4]~input_o\ & \sra64[0][63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \sra64[5][50]~104_combout\,
	combout => \sra64[6][50]~106_combout\);

-- Location: LCCOMB_X46_Y41_N24
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Mux45~1_combout\ & (((\sra64[6][50]~106_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux45~1_combout\ & (\sra64[5][50]~105_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][50]~105_combout\,
	datab => \Mux45~1_combout\,
	datac => \sra64[6][50]~106_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X46_Y48_N26
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\Mux61~2_combout\ & (\Mux61~3_combout\)) # (!\Mux61~2_combout\ & ((\Mux61~3_combout\ & (\A[18]~input_o\)) # (!\Mux61~3_combout\ & ((\srl64[4][18]~197_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \A[18]~input_o\,
	datad => \srl64[4][18]~197_combout\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X46_Y48_N4
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (\Mux45~0_combout\ & (((\Mux45~2_combout\) # (!\Mux61~2_combout\)))) # (!\Mux45~0_combout\ & (\srl64[4][34]~217_combout\ & ((\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][34]~217_combout\,
	datab => \Mux45~2_combout\,
	datac => \Mux45~0_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X45_Y48_N30
\sll64[2][19]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][19]~113_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	combout => \sll64[2][19]~113_combout\);

-- Location: LCCOMB_X41_Y47_N26
\sll64[2][18]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][18]~114_combout\ = (\B[0]~input_o\ & ((\sll64[2][18]~108_combout\))) # (!\B[0]~input_o\ & (\sll64[2][19]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][19]~113_combout\,
	datab => \sll64[2][18]~108_combout\,
	datac => \B[0]~input_o\,
	combout => \sll64[2][18]~114_combout\);

-- Location: LCCOMB_X43_Y47_N16
\sll64[4][18]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][18]~115_combout\ = (\sll64[2][18]~114_combout\ & ((\sll64[4][16]~53_combout\) # ((\Mux58~9_combout\ & \sll64[2][14]~92_combout\)))) # (!\sll64[2][18]~114_combout\ & (\Mux58~9_combout\ & (\sll64[2][14]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][18]~114_combout\,
	datab => \Mux58~9_combout\,
	datac => \sll64[2][14]~92_combout\,
	datad => \sll64[4][16]~53_combout\,
	combout => \sll64[4][18]~115_combout\);

-- Location: LCCOMB_X43_Y47_N22
\sll64[4][18]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][18]~112_combout\ = (\srl64[4][53]~259_combout\ & ((\sll64[2][10]~77_combout\) # ((\sll64[2][6]~64_combout\ & \sll64[4][16]~56_combout\)))) # (!\srl64[4][53]~259_combout\ & (((\sll64[2][6]~64_combout\ & \sll64[4][16]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][53]~259_combout\,
	datab => \sll64[2][10]~77_combout\,
	datac => \sll64[2][6]~64_combout\,
	datad => \sll64[4][16]~56_combout\,
	combout => \sll64[4][18]~112_combout\);

-- Location: LCCOMB_X43_Y47_N26
\sll64[4][18]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][18]~116_combout\ = (\sll64[4][18]~115_combout\) # (\sll64[4][18]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[4][18]~115_combout\,
	datac => \sll64[4][18]~112_combout\,
	combout => \sll64[4][18]~116_combout\);

-- Location: LCCOMB_X40_Y49_N12
\sll64[5][18]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][18]~117_combout\ = (\B[4]~input_o\ & (((\sll64[2][2]~52_combout\ & \sll64[4][16]~53_combout\)))) # (!\B[4]~input_o\ & (\sll64[4][18]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][18]~116_combout\,
	datab => \B[4]~input_o\,
	datac => \sll64[2][2]~52_combout\,
	datad => \sll64[4][16]~53_combout\,
	combout => \sll64[5][18]~117_combout\);

-- Location: LCCOMB_X38_Y48_N2
\Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (\Mux61~1_combout\ & (((!\shamt[5]~0_combout\ & \sll64[5][18]~117_combout\)))) # (!\Mux61~1_combout\ & (\Mux45~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~3_combout\,
	datab => \Mux61~1_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \sll64[5][18]~117_combout\,
	combout => \Mux45~4_combout\);

-- Location: LCCOMB_X41_Y47_N12
\sll64[4][19]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][19]~118_combout\ = (\sll64[4][16]~56_combout\ & ((\sll64[2][7]~67_combout\) # ((\srl64[4][53]~259_combout\ & \sll64[2][11]~80_combout\)))) # (!\sll64[4][16]~56_combout\ & (((\srl64[4][53]~259_combout\ & \sll64[2][11]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~56_combout\,
	datab => \sll64[2][7]~67_combout\,
	datac => \srl64[4][53]~259_combout\,
	datad => \sll64[2][11]~80_combout\,
	combout => \sll64[4][19]~118_combout\);

-- Location: LCCOMB_X38_Y45_N26
\sll64[2][20]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][20]~120_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \sll64[2][20]~120_combout\);

-- Location: LCCOMB_X41_Y47_N16
\sll64[2][19]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][19]~121_combout\ = (\B[0]~input_o\ & (\sll64[2][19]~113_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][20]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][19]~113_combout\,
	datab => \B[0]~input_o\,
	datac => \sll64[2][20]~120_combout\,
	combout => \sll64[2][19]~121_combout\);

-- Location: LCCOMB_X41_Y47_N6
\sll64[4][19]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][19]~119_combout\ = (\Mux58~9_combout\ & ((\B[0]~input_o\ & (\sll64[2][15]~91_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][16]~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Mux58~9_combout\,
	datac => \sll64[2][15]~91_combout\,
	datad => \sll64[2][16]~96_combout\,
	combout => \sll64[4][19]~119_combout\);

-- Location: LCCOMB_X41_Y47_N10
\sll64[4][19]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][19]~122_combout\ = (\sll64[4][19]~118_combout\) # ((\sll64[4][19]~119_combout\) # ((\sll64[2][19]~121_combout\ & \sll64[4][16]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][19]~118_combout\,
	datab => \sll64[2][19]~121_combout\,
	datac => \sll64[4][16]~53_combout\,
	datad => \sll64[4][19]~119_combout\,
	combout => \sll64[4][19]~122_combout\);

-- Location: LCCOMB_X40_Y49_N30
\sll64[5][19]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][19]~123_combout\ = (\B[4]~input_o\ & (((\sll64[4][16]~53_combout\ & \sll64[2][3]~55_combout\)))) # (!\B[4]~input_o\ & (\sll64[4][19]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][19]~122_combout\,
	datab => \B[4]~input_o\,
	datac => \sll64[4][16]~53_combout\,
	datad => \sll64[2][3]~55_combout\,
	combout => \sll64[5][19]~123_combout\);

-- Location: LCCOMB_X43_Y41_N8
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\Mux61~2_combout\ & ((\Mux61~3_combout\) # ((\srl64[4][35]~365_combout\)))) # (!\Mux61~2_combout\ & (!\Mux61~3_combout\ & ((\srl64[4][19]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \srl64[4][35]~365_combout\,
	datad => \srl64[4][19]~225_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X42_Y41_N4
\srl64[5][51]~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][51]~341_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\srl64[3][59]~242_combout\))) # (!\B[3]~input_o\ & (\srl64[3][51]~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \srl64[3][51]~235_combout\,
	datac => \srl64[3][59]~242_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[5][51]~341_combout\);

-- Location: LCCOMB_X42_Y41_N2
\srl64[6][51]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][51]~340_combout\ = (\sll64[6][1]~48_combout\ & ((\B[3]~input_o\ & ((\srl64[3][59]~242_combout\))) # (!\B[3]~input_o\ & (\srl64[3][51]~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \srl64[3][51]~235_combout\,
	datac => \srl64[3][59]~242_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[6][51]~340_combout\);

-- Location: LCCOMB_X43_Y41_N12
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\srl64[6][51]~340_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & (\srl64[5][51]~341_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \srl64[5][51]~341_combout\,
	datad => \srl64[6][51]~340_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X43_Y41_N14
\sra64[6][51]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][51]~108_combout\ = (\B[4]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[4]~input_o\ & ((\shamt[5]~0_combout\ & (\sra64[0][63]~58_combout\)) # (!\shamt[5]~0_combout\ & ((\sra64[4][51]~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \sra64[4][51]~70_combout\,
	combout => \sra64[6][51]~108_combout\);

-- Location: LCCOMB_X43_Y41_N10
\sra64[5][51]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][51]~107_combout\ = (\B[4]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[4]~input_o\ & ((\sra64[4][51]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sra64[0][63]~58_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[4][51]~70_combout\,
	combout => \sra64[5][51]~107_combout\);

-- Location: LCCOMB_X43_Y41_N16
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux44~1_combout\ & (((\sra64[6][51]~108_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux44~1_combout\ & (\ShiftFN[0]~input_o\ & ((\sra64[5][51]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][51]~108_combout\,
	datad => \sra64[5][51]~107_combout\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X43_Y41_N2
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\Mux61~3_combout\ & ((\Mux44~0_combout\ & ((\Mux44~2_combout\))) # (!\Mux44~0_combout\ & (\A[19]~input_o\)))) # (!\Mux61~3_combout\ & (((\Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \Mux61~3_combout\,
	datac => \Mux44~0_combout\,
	datad => \Mux44~2_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X38_Y48_N12
\Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & (\sll64[5][19]~123_combout\))) # (!\Mux61~1_combout\ & (((\Mux44~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \sll64[5][19]~123_combout\,
	datac => \Mux44~3_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux44~4_combout\);

-- Location: LCCOMB_X45_Y48_N24
\sll64[2][21]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][21]~126_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[20]~input_o\,
	combout => \sll64[2][21]~126_combout\);

-- Location: LCCOMB_X42_Y48_N24
\sll64[2][20]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][20]~127_combout\ = (\B[0]~input_o\ & (\sll64[2][20]~120_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][21]~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][20]~120_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][21]~126_combout\,
	combout => \sll64[2][20]~127_combout\);

-- Location: LCCOMB_X42_Y50_N2
\sll64[4][20]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][20]~125_combout\ = (\Mux58~9_combout\ & ((\B[0]~input_o\ & ((\sll64[2][16]~96_combout\))) # (!\B[0]~input_o\ & (\sll64[2][17]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][17]~102_combout\,
	datab => \B[0]~input_o\,
	datac => \Mux58~9_combout\,
	datad => \sll64[2][16]~96_combout\,
	combout => \sll64[4][20]~125_combout\);

-- Location: LCCOMB_X42_Y50_N24
\sll64[4][20]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][20]~124_combout\ = (\sll64[2][12]~83_combout\ & ((\srl64[4][53]~259_combout\) # ((\sll64[4][16]~56_combout\ & \sll64[2][8]~71_combout\)))) # (!\sll64[2][12]~83_combout\ & (((\sll64[4][16]~56_combout\ & \sll64[2][8]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][12]~83_combout\,
	datab => \srl64[4][53]~259_combout\,
	datac => \sll64[4][16]~56_combout\,
	datad => \sll64[2][8]~71_combout\,
	combout => \sll64[4][20]~124_combout\);

-- Location: LCCOMB_X42_Y50_N20
\sll64[4][20]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][20]~128_combout\ = (\sll64[4][20]~125_combout\) # ((\sll64[4][20]~124_combout\) # ((\sll64[2][20]~127_combout\ & \sll64[4][16]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][20]~127_combout\,
	datab => \sll64[4][20]~125_combout\,
	datac => \sll64[4][16]~53_combout\,
	datad => \sll64[4][20]~124_combout\,
	combout => \sll64[4][20]~128_combout\);

-- Location: LCCOMB_X42_Y46_N14
\sll64[5][20]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][20]~321_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & ((\sll64[3][4]~313_combout\)))) # (!\B[4]~input_o\ & (((\sll64[4][20]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[4][20]~128_combout\,
	datac => \B[4]~input_o\,
	datad => \sll64[3][4]~313_combout\,
	combout => \sll64[5][20]~321_combout\);

-- Location: LCCOMB_X41_Y43_N20
\srl64[6][52]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][52]~368_combout\ = (!\B[4]~input_o\ & (!\sra64[4][52]~72_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sra64[4][52]~72_combout\,
	combout => \srl64[6][52]~368_combout\);

-- Location: LCCOMB_X41_Y43_N24
\srl64[5][52]~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][52]~342_combout\ = (!\B[4]~input_o\ & !\sra64[4][52]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \sra64[4][52]~72_combout\,
	combout => \srl64[5][52]~342_combout\);

-- Location: LCCOMB_X41_Y43_N18
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\srl64[6][52]~368_combout\)) # (!\ExtWord~input_o\ & ((\srl64[5][52]~342_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[6][52]~368_combout\,
	datac => \srl64[5][52]~342_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X41_Y43_N22
\sra64[5][52]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][52]~109_combout\ = (\B[4]~input_o\ & (((\sra64[0][63]~58_combout\)))) # (!\B[4]~input_o\ & (((\sll64[4][16]~56_combout\ & \sra64[0][63]~58_combout\)) # (!\sra64[4][52]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~56_combout\,
	datab => \B[4]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sra64[4][52]~72_combout\,
	combout => \sra64[5][52]~109_combout\);

-- Location: LCCOMB_X41_Y43_N6
\sra64[6][52]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][52]~142_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\sra64[5][52]~109_combout\)) # (!\ExtWord~input_o\ & ((\sra64[0][63]~58_combout\))))) # (!\B[5]~input_o\ & (\sra64[5][52]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][52]~109_combout\,
	datab => \B[5]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \ExtWord~input_o\,
	combout => \sra64[6][52]~142_combout\);

-- Location: LCCOMB_X41_Y43_N28
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux43~1_combout\ & ((\sra64[6][52]~142_combout\))) # (!\Mux43~1_combout\ & (\sra64[5][52]~109_combout\)))) # (!\ShiftFN[0]~input_o\ & (\Mux43~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Mux43~1_combout\,
	datac => \sra64[5][52]~109_combout\,
	datad => \sra64[6][52]~142_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X45_Y43_N6
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\Mux61~2_combout\ & (((\Mux61~3_combout\)))) # (!\Mux61~2_combout\ & ((\Mux61~3_combout\ & ((\A[20]~input_o\))) # (!\Mux61~3_combout\ & (\srl64[4][20]~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \srl64[4][20]~250_combout\,
	datac => \A[20]~input_o\,
	datad => \Mux61~3_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X45_Y43_N24
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\Mux61~2_combout\ & ((\Mux43~0_combout\ & (\Mux43~2_combout\)) # (!\Mux43~0_combout\ & ((\srl64[4][36]~256_combout\))))) # (!\Mux61~2_combout\ & (((\Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux43~2_combout\,
	datac => \Mux43~0_combout\,
	datad => \srl64[4][36]~256_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X45_Y43_N26
\Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & (\sll64[5][20]~321_combout\))) # (!\Mux61~1_combout\ & (((\Mux43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~1_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \sll64[5][20]~321_combout\,
	datad => \Mux43~3_combout\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X41_Y41_N22
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\Mux61~2_combout\ & ((\Mux61~3_combout\) # ((\srl64[4][37]~276_combout\)))) # (!\Mux61~2_combout\ & (!\Mux61~3_combout\ & (\srl64[4][21]~267_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \srl64[4][21]~267_combout\,
	datad => \srl64[4][37]~276_combout\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X46_Y41_N12
\srl64[5][53]~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][53]~343_combout\ = (!\B[4]~input_o\ & \srl64[4][53]~366_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \srl64[4][53]~366_combout\,
	combout => \srl64[5][53]~343_combout\);

-- Location: LCCOMB_X46_Y41_N20
\srl64[6][53]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][53]~369_combout\ = (!\B[4]~input_o\ & (\srl64[4][53]~366_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \srl64[4][53]~366_combout\,
	combout => \srl64[6][53]~369_combout\);

-- Location: LCCOMB_X46_Y41_N6
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[6][53]~369_combout\))) # (!\ExtWord~input_o\ & (\srl64[5][53]~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][53]~343_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][53]~369_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X46_Y41_N18
\sra64[5][53]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][53]~110_combout\ = (\B[4]~input_o\ & (((\sra64[0][63]~58_combout\)))) # (!\B[4]~input_o\ & (\B[3]~input_o\ & ((\sra64[3][61]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sra64[3][61]~130_combout\,
	combout => \sra64[5][53]~110_combout\);

-- Location: LCCOMB_X46_Y41_N2
\sra64[5][53]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][53]~143_combout\ = (\sra64[5][53]~110_combout\) # ((\srl64[3][53]~270_combout\ & (!\B[3]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][53]~270_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sra64[5][53]~110_combout\,
	combout => \sra64[5][53]~143_combout\);

-- Location: LCCOMB_X46_Y41_N22
\sra64[6][53]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][53]~144_combout\ = (\ExtWord~input_o\ & (((\sra64[5][53]~143_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][53]~143_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sra64[5][53]~143_combout\,
	combout => \sra64[6][53]~144_combout\);

-- Location: LCCOMB_X46_Y41_N0
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux42~1_combout\ & (((\sra64[6][53]~144_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux42~1_combout\ & (\ShiftFN[0]~input_o\ & ((\sra64[5][53]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][53]~144_combout\,
	datad => \sra64[5][53]~143_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X38_Y45_N4
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Mux61~3_combout\ & ((\Mux42~0_combout\ & ((\Mux42~2_combout\))) # (!\Mux42~0_combout\ & (\A[21]~input_o\)))) # (!\Mux61~3_combout\ & (\Mux42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \Mux42~0_combout\,
	datac => \A[21]~input_o\,
	datad => \Mux42~2_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X41_Y46_N26
\sll64[4][21]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][21]~130_combout\ = (\Mux58~9_combout\ & ((\B[0]~input_o\ & ((\sll64[2][17]~102_combout\))) # (!\B[0]~input_o\ & (\sll64[2][18]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Mux58~9_combout\,
	datac => \sll64[2][18]~108_combout\,
	datad => \sll64[2][17]~102_combout\,
	combout => \sll64[4][21]~130_combout\);

-- Location: LCCOMB_X42_Y48_N18
\sll64[4][21]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][21]~129_combout\ = (\sll64[2][9]~74_combout\ & ((\sll64[4][16]~56_combout\) # ((\srl64[4][53]~259_combout\ & \sll64[2][13]~87_combout\)))) # (!\sll64[2][9]~74_combout\ & (\srl64[4][53]~259_combout\ & ((\sll64[2][13]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][9]~74_combout\,
	datab => \srl64[4][53]~259_combout\,
	datac => \sll64[4][16]~56_combout\,
	datad => \sll64[2][13]~87_combout\,
	combout => \sll64[4][21]~129_combout\);

-- Location: LCCOMB_X38_Y45_N22
\sll64[2][22]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][22]~131_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	combout => \sll64[2][22]~131_combout\);

-- Location: LCCOMB_X42_Y48_N4
\sll64[2][21]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][21]~132_combout\ = (\B[0]~input_o\ & ((\sll64[2][21]~126_combout\))) # (!\B[0]~input_o\ & (\sll64[2][22]~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][22]~131_combout\,
	datad => \sll64[2][21]~126_combout\,
	combout => \sll64[2][21]~132_combout\);

-- Location: LCCOMB_X41_Y46_N12
\sll64[4][21]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][21]~133_combout\ = (\sll64[4][21]~130_combout\) # ((\sll64[4][21]~129_combout\) # ((\sll64[4][16]~53_combout\ & \sll64[2][21]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][21]~130_combout\,
	datab => \sll64[4][21]~129_combout\,
	datac => \sll64[4][16]~53_combout\,
	datad => \sll64[2][21]~132_combout\,
	combout => \sll64[4][21]~133_combout\);

-- Location: LCCOMB_X40_Y49_N16
\sll64[5][21]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][21]~322_combout\ = (\B[4]~input_o\ & (\sll64[3][5]~315_combout\ & ((!\B[3]~input_o\)))) # (!\B[4]~input_o\ & (((\sll64[4][21]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][5]~315_combout\,
	datab => \B[4]~input_o\,
	datac => \sll64[4][21]~133_combout\,
	datad => \B[3]~input_o\,
	combout => \sll64[5][21]~322_combout\);

-- Location: LCCOMB_X38_Y48_N6
\Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (\Mux61~1_combout\ & (((\sll64[5][21]~322_combout\ & !\shamt[5]~0_combout\)))) # (!\Mux61~1_combout\ & (\Mux42~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~3_combout\,
	datab => \sll64[5][21]~322_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X42_Y43_N4
\sra64[3][62]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][62]~111_combout\ = (\srl64[4][55]~94_combout\ & ((\B[0]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[0]~input_o\ & (\srl64[1][61]~81_combout\)))) # (!\srl64[4][55]~94_combout\ & (((\sra64[0][63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][61]~81_combout\,
	datab => \srl64[4][55]~94_combout\,
	datac => \sra64[0][63]~58_combout\,
	datad => \B[0]~input_o\,
	combout => \sra64[3][62]~111_combout\);

-- Location: LCCOMB_X42_Y43_N30
\sra64[5][54]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][54]~112_combout\ = (\B[4]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[4]~input_o\ & (((\sra64[3][62]~111_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \sra64[3][62]~111_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \sra64[5][54]~112_combout\);

-- Location: LCCOMB_X47_Y42_N14
\sra64[5][54]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][54]~113_combout\ = (\sra64[5][54]~112_combout\) # ((\srl64[5][62]~134_combout\ & ((\srl64[3][54]~289_combout\) # (\srl64[3][54]~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][54]~289_combout\,
	datab => \sra64[5][54]~112_combout\,
	datac => \srl64[5][62]~134_combout\,
	datad => \srl64[3][54]~290_combout\,
	combout => \sra64[5][54]~113_combout\);

-- Location: LCCOMB_X46_Y42_N14
\sra64[6][54]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][54]~145_combout\ = (\ExtWord~input_o\ & (((\sra64[5][54]~113_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][54]~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][54]~113_combout\,
	combout => \sra64[6][54]~145_combout\);

-- Location: LCCOMB_X46_Y42_N6
\srl64[5][54]~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][54]~344_combout\ = (!\B[4]~input_o\ & \srl64[4][54]~292_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \srl64[4][54]~292_combout\,
	combout => \srl64[5][54]~344_combout\);

-- Location: LCCOMB_X46_Y42_N12
\srl64[6][54]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][54]~370_combout\ = (!\B[4]~input_o\ & (\srl64[4][54]~292_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \srl64[4][54]~292_combout\,
	combout => \srl64[6][54]~370_combout\);

-- Location: LCCOMB_X46_Y42_N16
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[6][54]~370_combout\))) # (!\ExtWord~input_o\ & (\srl64[5][54]~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][54]~344_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][54]~370_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X46_Y42_N26
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux41~1_combout\ & ((\sra64[6][54]~145_combout\))) # (!\Mux41~1_combout\ & (\sra64[5][54]~113_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][54]~113_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][54]~145_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X42_Y45_N18
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\Mux61~3_combout\ & (((\Mux61~2_combout\) # (\A[22]~input_o\)))) # (!\Mux61~3_combout\ & (\srl64[4][22]~282_combout\ & (!\Mux61~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \srl64[4][22]~282_combout\,
	datac => \Mux61~2_combout\,
	datad => \A[22]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X42_Y45_N4
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux41~0_combout\ & ((\Mux41~2_combout\) # ((!\Mux61~2_combout\)))) # (!\Mux41~0_combout\ & (((\Mux61~2_combout\ & \srl64[4][38]~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~2_combout\,
	datab => \Mux41~0_combout\,
	datac => \Mux61~2_combout\,
	datad => \srl64[4][38]~288_combout\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X43_Y47_N12
\sll64[4][22]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][22]~134_combout\ = (\srl64[4][53]~259_combout\ & ((\sll64[2][14]~92_combout\) # ((\sll64[2][10]~77_combout\ & \sll64[4][16]~56_combout\)))) # (!\srl64[4][53]~259_combout\ & (\sll64[2][10]~77_combout\ & ((\sll64[4][16]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][53]~259_combout\,
	datab => \sll64[2][10]~77_combout\,
	datac => \sll64[2][14]~92_combout\,
	datad => \sll64[4][16]~56_combout\,
	combout => \sll64[4][22]~134_combout\);

-- Location: LCCOMB_X42_Y45_N30
\sll64[2][23]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][23]~136_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \sll64[2][23]~136_combout\);

-- Location: LCCOMB_X42_Y48_N30
\sll64[2][22]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][22]~137_combout\ = (\B[0]~input_o\ & (\sll64[2][22]~131_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][23]~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][22]~131_combout\,
	datad => \sll64[2][23]~136_combout\,
	combout => \sll64[2][22]~137_combout\);

-- Location: LCCOMB_X43_Y47_N6
\sll64[4][22]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][22]~135_combout\ = (\Mux58~9_combout\ & ((\B[0]~input_o\ & ((\sll64[2][18]~108_combout\))) # (!\B[0]~input_o\ & (\sll64[2][19]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Mux58~9_combout\,
	datac => \sll64[2][19]~113_combout\,
	datad => \sll64[2][18]~108_combout\,
	combout => \sll64[4][22]~135_combout\);

-- Location: LCCOMB_X43_Y47_N0
\sll64[4][22]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][22]~138_combout\ = (\sll64[4][22]~134_combout\) # ((\sll64[4][22]~135_combout\) # ((\sll64[4][16]~53_combout\ & \sll64[2][22]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][22]~134_combout\,
	datab => \sll64[4][16]~53_combout\,
	datac => \sll64[2][22]~137_combout\,
	datad => \sll64[4][22]~135_combout\,
	combout => \sll64[4][22]~138_combout\);

-- Location: LCCOMB_X42_Y47_N28
\sll64[5][22]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][22]~323_combout\ = (\B[4]~input_o\ & (\sll64[3][6]~94_combout\ & ((!\B[3]~input_o\)))) # (!\B[4]~input_o\ & (((\sll64[4][22]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][6]~94_combout\,
	datab => \sll64[4][22]~138_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \sll64[5][22]~323_combout\);

-- Location: LCCOMB_X42_Y47_N8
\Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & ((\sll64[5][22]~323_combout\)))) # (!\Mux61~1_combout\ & (((\Mux41~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \Mux61~1_combout\,
	datac => \Mux41~3_combout\,
	datad => \sll64[5][22]~323_combout\,
	combout => \Mux41~4_combout\);

-- Location: LCCOMB_X38_Y45_N16
\sll64[2][24]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][24]~141_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[23]~input_o\,
	combout => \sll64[2][24]~141_combout\);

-- Location: LCCOMB_X41_Y47_N8
\sll64[2][23]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][23]~142_combout\ = (\B[0]~input_o\ & ((\sll64[2][23]~136_combout\))) # (!\B[0]~input_o\ & (\sll64[2][24]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][24]~141_combout\,
	datad => \sll64[2][23]~136_combout\,
	combout => \sll64[2][23]~142_combout\);

-- Location: LCCOMB_X41_Y47_N14
\sll64[4][23]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][23]~140_combout\ = (\Mux58~9_combout\ & ((\B[0]~input_o\ & (\sll64[2][19]~113_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][20]~120_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][19]~113_combout\,
	datab => \Mux58~9_combout\,
	datac => \sll64[2][20]~120_combout\,
	datad => \B[0]~input_o\,
	combout => \sll64[4][23]~140_combout\);

-- Location: LCCOMB_X41_Y47_N28
\sll64[4][23]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][23]~139_combout\ = (\sll64[4][16]~56_combout\ & ((\sll64[2][11]~80_combout\) # ((\sll64[2][15]~97_combout\ & \srl64[4][53]~259_combout\)))) # (!\sll64[4][16]~56_combout\ & (\sll64[2][15]~97_combout\ & (\srl64[4][53]~259_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~56_combout\,
	datab => \sll64[2][15]~97_combout\,
	datac => \srl64[4][53]~259_combout\,
	datad => \sll64[2][11]~80_combout\,
	combout => \sll64[4][23]~139_combout\);

-- Location: LCCOMB_X41_Y47_N18
\sll64[4][23]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][23]~143_combout\ = (\sll64[4][23]~140_combout\) # ((\sll64[4][23]~139_combout\) # ((\sll64[2][23]~142_combout\ & \sll64[4][16]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][23]~142_combout\,
	datab => \sll64[4][23]~140_combout\,
	datac => \sll64[4][16]~53_combout\,
	datad => \sll64[4][23]~139_combout\,
	combout => \sll64[4][23]~143_combout\);

-- Location: LCCOMB_X41_Y49_N30
\sll64[5][23]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][23]~324_combout\ = (\B[4]~input_o\ & (\sll64[3][7]~99_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\sll64[4][23]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][7]~99_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sll64[4][23]~143_combout\,
	combout => \sll64[5][23]~324_combout\);

-- Location: LCCOMB_X47_Y43_N22
\srl64[5][55]~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][55]~345_combout\ = (\srl64[4][55]~309_combout\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[4][55]~309_combout\,
	datad => \B[4]~input_o\,
	combout => \srl64[5][55]~345_combout\);

-- Location: LCCOMB_X48_Y43_N4
\srl64[6][55]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][55]~371_combout\ = (\srl64[4][55]~309_combout\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[4][55]~309_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \srl64[6][55]~371_combout\);

-- Location: LCCOMB_X47_Y43_N16
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\) # (\srl64[6][55]~371_combout\)))) # (!\ExtWord~input_o\ & (\srl64[5][55]~345_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][55]~345_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \srl64[6][55]~371_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X47_Y43_N28
\sra64[5][55]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][55]~114_combout\ = (\B[4]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][55]~301_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][55]~301_combout\,
	combout => \sra64[5][55]~114_combout\);

-- Location: LCCOMB_X47_Y43_N20
\sra64[6][55]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][55]~146_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\sra64[5][55]~114_combout\))) # (!\ExtWord~input_o\ & (\sra64[0][63]~58_combout\)))) # (!\B[5]~input_o\ & (((\sra64[5][55]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sra64[5][55]~114_combout\,
	combout => \sra64[6][55]~146_combout\);

-- Location: LCCOMB_X47_Y43_N10
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux40~1_combout\ & ((\sra64[6][55]~146_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux40~1_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[5][55]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~1_combout\,
	datab => \sra64[6][55]~146_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[5][55]~114_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X45_Y43_N28
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\Mux61~2_combout\ & ((\srl64[4][39]~307_combout\) # ((\Mux61~3_combout\)))) # (!\Mux61~2_combout\ & (((!\Mux61~3_combout\ & \srl64[4][23]~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \srl64[4][39]~307_combout\,
	datac => \Mux61~3_combout\,
	datad => \srl64[4][23]~298_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X45_Y43_N14
\Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\Mux61~3_combout\ & ((\Mux40~0_combout\ & (\Mux40~2_combout\)) # (!\Mux40~0_combout\ & ((\A[23]~input_o\))))) # (!\Mux61~3_combout\ & (((\Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \A[23]~input_o\,
	datad => \Mux40~0_combout\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X45_Y43_N8
\Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = (\Mux61~1_combout\ & (\sll64[5][23]~324_combout\ & ((!\shamt[5]~0_combout\)))) # (!\Mux61~1_combout\ & (((\Mux40~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~1_combout\,
	datab => \sll64[5][23]~324_combout\,
	datac => \Mux40~3_combout\,
	datad => \shamt[5]~0_combout\,
	combout => \Mux40~4_combout\);

-- Location: LCCOMB_X42_Y50_N30
\sll64[4][24]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][24]~144_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\sll64[2][12]~83_combout\))) # (!\B[3]~input_o\ & (\sll64[2][20]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[2][20]~127_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][12]~83_combout\,
	combout => \sll64[4][24]~144_combout\);

-- Location: LCCOMB_X42_Y45_N0
\sll64[2][25]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][25]~145_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \sll64[2][25]~145_combout\);

-- Location: LCCOMB_X41_Y47_N4
\sll64[2][24]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][24]~146_combout\ = (\B[0]~input_o\ & (\sll64[2][24]~141_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][25]~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][24]~141_combout\,
	datad => \sll64[2][25]~145_combout\,
	combout => \sll64[2][24]~146_combout\);

-- Location: LCCOMB_X42_Y50_N8
\sll64[4][24]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][24]~147_combout\ = (\B[3]~input_o\ & ((\sll64[2][16]~103_combout\))) # (!\B[3]~input_o\ & (\sll64[2][24]~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][24]~146_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][16]~103_combout\,
	combout => \sll64[4][24]~147_combout\);

-- Location: LCCOMB_X42_Y50_N26
\sll64[4][24]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][24]~148_combout\ = (\sll64[4][24]~144_combout\) # ((\sll64[4][24]~147_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][24]~144_combout\,
	datab => \sll64[4][24]~147_combout\,
	datac => \B[2]~input_o\,
	combout => \sll64[4][24]~148_combout\);

-- Location: LCCOMB_X42_Y49_N18
\sll64[5][24]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][24]~149_combout\ = (\B[4]~input_o\ & (\sll64[4][8]~317_combout\)) # (!\B[4]~input_o\ & ((\sll64[4][24]~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \sll64[4][8]~317_combout\,
	datad => \sll64[4][24]~148_combout\,
	combout => \sll64[5][24]~149_combout\);

-- Location: LCCOMB_X48_Y45_N30
\sra64[5][56]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][56]~115_combout\ = (\B[4]~input_o\ & (((\sra64[0][63]~58_combout\)))) # (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[3]~input_o\ & (\srl64[3][56]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][56]~87_combout\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[5][56]~115_combout\);

-- Location: LCCOMB_X48_Y45_N14
\srl64[6][56]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][56]~372_combout\ = (\srl64[3][56]~87_combout\ & (!\B[3]~input_o\ & (!\B[4]~input_o\ & !\shamt[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][56]~87_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \shamt[5]~0_combout\,
	combout => \srl64[6][56]~372_combout\);

-- Location: LCCOMB_X47_Y42_N16
\srl64[5][56]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][56]~346_combout\ = (\srl64[5][62]~134_combout\ & ((\srl64[3][56]~80_combout\) # ((\B[2]~input_o\ & \srl64[2][60]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][62]~134_combout\,
	datab => \B[2]~input_o\,
	datac => \srl64[3][56]~80_combout\,
	datad => \srl64[2][60]~86_combout\,
	combout => \srl64[5][56]~346_combout\);

-- Location: LCCOMB_X42_Y45_N2
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\srl64[6][56]~372_combout\)) # (!\ExtWord~input_o\ & ((\srl64[5][56]~346_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][56]~372_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[5][56]~346_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X42_Y45_N22
\sra64[6][56]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][56]~147_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\sra64[5][56]~115_combout\))) # (!\ExtWord~input_o\ & (\sra64[0][63]~58_combout\)))) # (!\B[5]~input_o\ & (((\sra64[5][56]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \ExtWord~input_o\,
	datad => \sra64[5][56]~115_combout\,
	combout => \sra64[6][56]~147_combout\);

-- Location: LCCOMB_X42_Y45_N12
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux39~1_combout\ & (((\sra64[6][56]~147_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux39~1_combout\ & (\sra64[5][56]~115_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][56]~115_combout\,
	datab => \Mux39~1_combout\,
	datac => \sra64[6][56]~147_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X42_Y45_N24
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\Mux61~2_combout\ & (((\Mux61~3_combout\)))) # (!\Mux61~2_combout\ & ((\Mux61~3_combout\ & (\A[24]~input_o\)) # (!\Mux61~3_combout\ & ((\srl64[4][24]~315_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Mux61~2_combout\,
	datac => \Mux61~3_combout\,
	datad => \srl64[4][24]~315_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X42_Y45_N6
\Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Mux39~0_combout\ & ((\Mux39~2_combout\) # ((!\Mux61~2_combout\)))) # (!\Mux39~0_combout\ & (((\Mux61~2_combout\ & \srl64[4][40]~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~2_combout\,
	datab => \Mux39~0_combout\,
	datac => \Mux61~2_combout\,
	datad => \srl64[4][40]~311_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X38_Y48_N0
\Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & (\sll64[5][24]~149_combout\))) # (!\Mux61~1_combout\ & (((\Mux39~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \sll64[5][24]~149_combout\,
	datac => \Mux39~3_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X42_Y41_N14
\srl64[5][57]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][57]~347_combout\ = (\srl64[5][62]~134_combout\ & ((\srl64[3][57]~151_combout\) # ((\B[2]~input_o\ & \srl64[2][61]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][57]~151_combout\,
	datab => \B[2]~input_o\,
	datac => \srl64[2][61]~153_combout\,
	datad => \srl64[5][62]~134_combout\,
	combout => \srl64[5][57]~347_combout\);

-- Location: LCCOMB_X40_Y43_N28
\srl64[6][57]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][57]~373_combout\ = (!\B[4]~input_o\ & (!\shamt[5]~0_combout\ & (\srl64[3][57]~154_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shamt[5]~0_combout\,
	datac => \srl64[3][57]~154_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[6][57]~373_combout\);

-- Location: LCCOMB_X39_Y44_N16
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[6][57]~373_combout\))) # (!\ExtWord~input_o\ & (\srl64[5][57]~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[5][57]~347_combout\,
	datac => \srl64[6][57]~373_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X39_Y44_N14
\sra64[5][57]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][57]~116_combout\ = (\B[4]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[3]~input_o\ & ((\sra64[3][57]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \sra64[3][57]~61_combout\,
	combout => \sra64[5][57]~116_combout\);

-- Location: LCCOMB_X39_Y44_N6
\sra64[6][57]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][57]~148_combout\ = (\ExtWord~input_o\ & (\sra64[5][57]~116_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[5]~input_o\ & (\sra64[5][57]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[5][57]~116_combout\,
	datac => \B[5]~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[6][57]~148_combout\);

-- Location: LCCOMB_X39_Y44_N2
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux38~1_combout\ & ((\sra64[6][57]~148_combout\))) # (!\Mux38~1_combout\ & (\sra64[5][57]~116_combout\)))) # (!\ShiftFN[0]~input_o\ & (\Mux38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Mux38~1_combout\,
	datac => \sra64[5][57]~116_combout\,
	datad => \sra64[6][57]~148_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X39_Y44_N12
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\Mux61~3_combout\ & (\Mux61~2_combout\)) # (!\Mux61~3_combout\ & ((\Mux61~2_combout\ & (\srl64[4][41]~316_combout\)) # (!\Mux61~2_combout\ & ((\srl64[4][25]~319_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \Mux61~2_combout\,
	datac => \srl64[4][41]~316_combout\,
	datad => \srl64[4][25]~319_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X39_Y44_N20
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\Mux61~3_combout\ & ((\Mux38~0_combout\ & (\Mux38~2_combout\)) # (!\Mux38~0_combout\ & ((\A[25]~input_o\))))) # (!\Mux61~3_combout\ & (((\Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \Mux38~2_combout\,
	datac => \A[25]~input_o\,
	datad => \Mux38~0_combout\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X41_Y46_N30
\sll64[4][25]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][25]~152_combout\ = (\B[0]~input_o\ & ((\sll64[2][17]~102_combout\) # ((!\B[3]~input_o\)))) # (!\B[0]~input_o\ & (((\sll64[2][18]~108_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][17]~102_combout\,
	datac => \sll64[2][18]~108_combout\,
	datad => \B[3]~input_o\,
	combout => \sll64[4][25]~152_combout\);

-- Location: LCCOMB_X39_Y44_N22
\sll64[2][26]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][26]~151_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][26]~151_combout\);

-- Location: LCCOMB_X41_Y46_N0
\sll64[4][25]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][25]~153_combout\ = (\sll64[4][25]~152_combout\ & ((\sll64[2][25]~145_combout\) # ((\B[3]~input_o\)))) # (!\sll64[4][25]~152_combout\ & (((\sll64[2][26]~151_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][25]~152_combout\,
	datab => \sll64[2][25]~145_combout\,
	datac => \sll64[2][26]~151_combout\,
	datad => \B[3]~input_o\,
	combout => \sll64[4][25]~153_combout\);

-- Location: LCCOMB_X42_Y48_N8
\sll64[4][25]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][25]~150_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\sll64[2][13]~87_combout\))) # (!\B[3]~input_o\ & (\sll64[2][21]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[2][21]~132_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][13]~87_combout\,
	combout => \sll64[4][25]~150_combout\);

-- Location: LCCOMB_X42_Y48_N26
\sll64[4][25]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][25]~154_combout\ = (\sll64[4][25]~150_combout\) # ((\sll64[4][25]~153_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][25]~153_combout\,
	datab => \sll64[4][25]~150_combout\,
	datac => \B[2]~input_o\,
	combout => \sll64[4][25]~154_combout\);

-- Location: LCCOMB_X41_Y48_N26
\sll64[5][25]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][25]~155_combout\ = (\B[4]~input_o\ & (\sll64[4][9]~318_combout\)) # (!\B[4]~input_o\ & ((\sll64[4][25]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][9]~318_combout\,
	datac => \B[4]~input_o\,
	datad => \sll64[4][25]~154_combout\,
	combout => \sll64[5][25]~155_combout\);

-- Location: LCCOMB_X38_Y48_N10
\Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & ((\sll64[5][25]~155_combout\)))) # (!\Mux61~1_combout\ & (((\Mux38~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \Mux38~3_combout\,
	datac => \sll64[5][25]~155_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X45_Y41_N28
\sra64[5][58]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][58]~117_combout\ = (\B[3]~input_o\ & (((\sra64[0][63]~58_combout\)))) # (!\B[3]~input_o\ & ((\B[4]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[4]~input_o\ & (\sra64[3][58]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sra64[3][58]~103_combout\,
	datac => \sra64[0][63]~58_combout\,
	datad => \B[4]~input_o\,
	combout => \sra64[5][58]~117_combout\);

-- Location: LCCOMB_X45_Y41_N6
\sra64[6][58]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][58]~149_combout\ = (\ExtWord~input_o\ & (((\sra64[5][58]~117_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][58]~117_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sra64[5][58]~117_combout\,
	combout => \sra64[6][58]~149_combout\);

-- Location: LCCOMB_X45_Y41_N22
\srl64[5][58]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][58]~348_combout\ = (\srl64[5][62]~134_combout\ & (((\sll64[3][5]~46_combout\ & \srl64[1][62]~82_combout\)) # (!\sra64[3][58]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][62]~134_combout\,
	datab => \sll64[3][5]~46_combout\,
	datac => \sra64[3][58]~64_combout\,
	datad => \srl64[1][62]~82_combout\,
	combout => \srl64[5][58]~348_combout\);

-- Location: LCCOMB_X45_Y41_N12
\srl64[6][58]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][58]~374_combout\ = (!\shamt[5]~0_combout\ & (!\B[4]~input_o\ & (!\B[3]~input_o\ & !\sra64[3][58]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \sra64[3][58]~65_combout\,
	combout => \srl64[6][58]~374_combout\);

-- Location: LCCOMB_X45_Y41_N24
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[6][58]~374_combout\))) # (!\ExtWord~input_o\ & (\srl64[5][58]~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[5][58]~348_combout\,
	datad => \srl64[6][58]~374_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X45_Y41_N26
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux37~1_combout\ & ((\sra64[6][58]~149_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux37~1_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[5][58]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][58]~149_combout\,
	datab => \Mux37~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[5][58]~117_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X38_Y44_N16
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\Mux61~3_combout\ & (((\Mux61~2_combout\) # (\A[26]~input_o\)))) # (!\Mux61~3_combout\ & (\srl64[4][26]~321_combout\ & (!\Mux61~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][26]~321_combout\,
	datab => \Mux61~3_combout\,
	datac => \Mux61~2_combout\,
	datad => \A[26]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X38_Y44_N10
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\Mux61~2_combout\ & ((\Mux37~0_combout\ & ((\Mux37~2_combout\))) # (!\Mux37~0_combout\ & (\srl64[4][42]~320_combout\)))) # (!\Mux61~2_combout\ & (((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][42]~320_combout\,
	datab => \Mux37~2_combout\,
	datac => \Mux61~2_combout\,
	datad => \Mux37~0_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X43_Y47_N18
\sll64[4][26]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][26]~156_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\sll64[2][14]~92_combout\)) # (!\B[3]~input_o\ & ((\sll64[2][22]~137_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][14]~92_combout\,
	datac => \sll64[2][22]~137_combout\,
	datad => \B[3]~input_o\,
	combout => \sll64[4][26]~156_combout\);

-- Location: LCCOMB_X38_Y44_N12
\sll64[2][27]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][27]~157_combout\ = (\B[1]~input_o\ & (\A[24]~input_o\)) # (!\B[1]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[26]~input_o\,
	combout => \sll64[2][27]~157_combout\);

-- Location: LCCOMB_X38_Y44_N14
\sll64[2][26]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][26]~158_combout\ = (\B[0]~input_o\ & (\sll64[2][26]~151_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][27]~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][26]~151_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][27]~157_combout\,
	combout => \sll64[2][26]~158_combout\);

-- Location: LCCOMB_X39_Y47_N16
\sll64[4][26]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][26]~159_combout\ = (\B[3]~input_o\ & ((\sll64[2][18]~114_combout\))) # (!\B[3]~input_o\ & (\sll64[2][26]~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][26]~158_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][18]~114_combout\,
	combout => \sll64[4][26]~159_combout\);

-- Location: LCCOMB_X46_Y44_N26
\sll64[4][26]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][26]~160_combout\ = (\sll64[4][26]~156_combout\) # ((!\B[2]~input_o\ & \sll64[4][26]~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][26]~156_combout\,
	datab => \B[2]~input_o\,
	datac => \sll64[4][26]~159_combout\,
	combout => \sll64[4][26]~160_combout\);

-- Location: LCCOMB_X46_Y44_N28
\sll64[5][26]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][26]~161_combout\ = (\B[4]~input_o\ & ((\sll64[4][10]~319_combout\))) # (!\B[4]~input_o\ & (\sll64[4][26]~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][26]~160_combout\,
	datab => \B[4]~input_o\,
	datac => \sll64[4][10]~319_combout\,
	combout => \sll64[5][26]~161_combout\);

-- Location: LCCOMB_X38_Y48_N20
\Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & ((\sll64[5][26]~161_combout\)))) # (!\Mux61~1_combout\ & (((\Mux37~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \Mux61~1_combout\,
	datac => \Mux37~3_combout\,
	datad => \sll64[5][26]~161_combout\,
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X41_Y47_N30
\sll64[4][27]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][27]~162_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\sll64[2][15]~97_combout\))) # (!\B[3]~input_o\ & (\sll64[2][23]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][23]~142_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][15]~97_combout\,
	combout => \sll64[4][27]~162_combout\);

-- Location: LCCOMB_X39_Y44_N24
\sll64[2][28]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][28]~163_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][28]~163_combout\);

-- Location: LCCOMB_X38_Y44_N8
\sll64[2][27]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][27]~164_combout\ = (\B[0]~input_o\ & (\sll64[2][27]~157_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][28]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][27]~157_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][28]~163_combout\,
	combout => \sll64[2][27]~164_combout\);

-- Location: LCCOMB_X41_Y47_N0
\sll64[4][27]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][27]~165_combout\ = (\B[3]~input_o\ & ((\sll64[2][19]~121_combout\))) # (!\B[3]~input_o\ & (\sll64[2][27]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][27]~164_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][19]~121_combout\,
	combout => \sll64[4][27]~165_combout\);

-- Location: LCCOMB_X41_Y47_N2
\sll64[4][27]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][27]~166_combout\ = (\sll64[4][27]~162_combout\) # ((!\B[2]~input_o\ & \sll64[4][27]~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][27]~162_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[4][27]~165_combout\,
	combout => \sll64[4][27]~166_combout\);

-- Location: LCCOMB_X41_Y49_N18
\sll64[5][27]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][27]~167_combout\ = (\B[4]~input_o\ & ((\sll64[4][11]~320_combout\))) # (!\B[4]~input_o\ & (\sll64[4][27]~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][27]~166_combout\,
	datac => \B[4]~input_o\,
	datad => \sll64[4][11]~320_combout\,
	combout => \sll64[5][27]~167_combout\);

-- Location: LCCOMB_X41_Y41_N8
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\Mux61~2_combout\ & ((\Mux61~3_combout\) # ((\srl64[4][43]~367_combout\)))) # (!\Mux61~2_combout\ & (!\Mux61~3_combout\ & ((\srl64[4][27]~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \srl64[4][43]~367_combout\,
	datad => \srl64[4][27]~322_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X41_Y41_N2
\sra64[5][59]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][59]~118_combout\ = (\B[4]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[4]~input_o\ & (\sra64[4][59]~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sra64[4][59]~137_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[5][59]~118_combout\);

-- Location: LCCOMB_X41_Y41_N12
\sra64[6][59]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][59]~119_combout\ = (\shamt[5]~0_combout\ & (((\sra64[0][63]~58_combout\)))) # (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[4]~input_o\ & (\sra64[4][59]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \sra64[4][59]~137_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[6][59]~119_combout\);

-- Location: LCCOMB_X42_Y41_N6
\srl64[6][59]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][59]~375_combout\ = (!\shamt[5]~0_combout\ & (!\B[4]~input_o\ & (\srl64[3][59]~242_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \srl64[3][59]~242_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[6][59]~375_combout\);

-- Location: LCCOMB_X42_Y41_N24
\srl64[5][59]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][59]~349_combout\ = (\srl64[5][62]~134_combout\ & ((\sra64[3][59]~68_combout\) # ((\sll64[3][5]~46_combout\ & \srl64[2][61]~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][5]~46_combout\,
	datab => \srl64[5][62]~134_combout\,
	datac => \srl64[2][61]~308_combout\,
	datad => \sra64[3][59]~68_combout\,
	combout => \srl64[5][59]~349_combout\);

-- Location: LCCOMB_X42_Y41_N10
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\srl64[6][59]~375_combout\)) # (!\ExtWord~input_o\ & ((\srl64[5][59]~349_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][59]~375_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[5][59]~349_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X42_Y41_N28
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux36~1_combout\ & ((\sra64[6][59]~119_combout\))) # (!\Mux36~1_combout\ & (\sra64[5][59]~118_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][59]~118_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][59]~119_combout\,
	datad => \Mux36~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X41_Y41_N30
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux61~3_combout\ & ((\Mux36~0_combout\ & ((\Mux36~2_combout\))) # (!\Mux36~0_combout\ & (\A[27]~input_o\)))) # (!\Mux61~3_combout\ & (((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \Mux61~3_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux36~2_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X38_Y48_N14
\Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (\Mux61~1_combout\ & (\sll64[5][27]~167_combout\ & (!\shamt[5]~0_combout\))) # (!\Mux61~1_combout\ & (((\Mux36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][27]~167_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \Mux36~3_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X38_Y44_N26
\sll64[2][29]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][29]~168_combout\ = (\B[1]~input_o\ & ((\A[26]~input_o\))) # (!\B[1]~input_o\ & (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[28]~input_o\,
	datad => \A[26]~input_o\,
	combout => \sll64[2][29]~168_combout\);

-- Location: LCCOMB_X38_Y44_N20
\sll64[2][28]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][28]~169_combout\ = (\B[0]~input_o\ & ((\sll64[2][28]~163_combout\))) # (!\B[0]~input_o\ & (\sll64[2][29]~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][29]~168_combout\,
	datad => \sll64[2][28]~163_combout\,
	combout => \sll64[2][28]~169_combout\);

-- Location: LCCOMB_X42_Y50_N4
\sll64[4][32]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][32]~170_combout\ = (\B[3]~input_o\ & ((\sll64[2][20]~127_combout\))) # (!\B[3]~input_o\ & (\sll64[2][28]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][28]~169_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][20]~127_combout\,
	combout => \sll64[4][32]~170_combout\);

-- Location: LCCOMB_X42_Y50_N6
\sll64[4][28]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][28]~171_combout\ = (\B[2]~input_o\ & (\sll64[4][24]~147_combout\)) # (!\B[2]~input_o\ & ((\sll64[4][32]~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[4][24]~147_combout\,
	datac => \sll64[4][32]~170_combout\,
	combout => \sll64[4][28]~171_combout\);

-- Location: LCCOMB_X42_Y46_N4
\sll64[5][28]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][28]~172_combout\ = (\B[4]~input_o\ & (\sll64[4][12]~85_combout\)) # (!\B[4]~input_o\ & ((\sll64[4][28]~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[4][12]~85_combout\,
	datac => \B[4]~input_o\,
	datad => \sll64[4][28]~171_combout\,
	combout => \sll64[5][28]~172_combout\);

-- Location: LCCOMB_X45_Y43_N10
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux61~2_combout\ & (\Mux61~3_combout\)) # (!\Mux61~2_combout\ & ((\Mux61~3_combout\ & (\A[28]~input_o\)) # (!\Mux61~3_combout\ & ((\srl64[4][28]~324_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux61~3_combout\,
	datac => \A[28]~input_o\,
	datad => \srl64[4][28]~324_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X48_Y42_N12
\sra64[6][60]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][60]~121_combout\ = (\shamt[5]~0_combout\ & (((\sra64[0][63]~58_combout\)))) # (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\sra64[0][63]~58_combout\))) # (!\B[4]~input_o\ & (\sra64[4][60]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \sra64[4][60]~89_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[0][63]~58_combout\,
	combout => \sra64[6][60]~121_combout\);

-- Location: LCCOMB_X48_Y42_N22
\srl64[5][60]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][60]~377_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & (!\B[4]~input_o\ & \srl64[2][60]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \srl64[2][60]~86_combout\,
	combout => \srl64[5][60]~377_combout\);

-- Location: LCCOMB_X48_Y42_N28
\srl64[6][60]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][60]~376_combout\ = (\srl64[2][60]~86_combout\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ & \sll64[6][1]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][60]~86_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[6][1]~48_combout\,
	combout => \srl64[6][60]~376_combout\);

-- Location: LCCOMB_X48_Y42_N2
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\srl64[6][60]~376_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & (\srl64[5][60]~377_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \srl64[5][60]~377_combout\,
	datad => \srl64[6][60]~376_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X48_Y42_N8
\sra64[5][60]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][60]~120_combout\ = (\B[4]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[4]~input_o\ & ((\sra64[4][60]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datac => \B[4]~input_o\,
	datad => \sra64[4][60]~89_combout\,
	combout => \sra64[5][60]~120_combout\);

-- Location: LCCOMB_X48_Y42_N30
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux35~1_combout\ & ((\sra64[6][60]~121_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux35~1_combout\ & (((\sra64[5][60]~120_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][60]~121_combout\,
	datab => \Mux35~1_combout\,
	datac => \sra64[5][60]~120_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X45_Y43_N12
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux35~0_combout\ & (((\Mux35~2_combout\) # (!\Mux61~2_combout\)))) # (!\Mux35~0_combout\ & (\srl64[4][44]~323_combout\ & ((\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][44]~323_combout\,
	datab => \Mux35~0_combout\,
	datac => \Mux35~2_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X45_Y43_N22
\Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & (\sll64[5][28]~172_combout\))) # (!\Mux61~1_combout\ & (((\Mux35~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~1_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \sll64[5][28]~172_combout\,
	datad => \Mux35~3_combout\,
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X38_Y47_N6
\sll64[2][30]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][30]~173_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[29]~input_o\,
	datac => \A[27]~input_o\,
	combout => \sll64[2][30]~173_combout\);

-- Location: LCCOMB_X38_Y47_N0
\sll64[2][29]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][29]~174_combout\ = (\B[0]~input_o\ & (\sll64[2][29]~168_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][30]~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \sll64[2][29]~168_combout\,
	datad => \sll64[2][30]~173_combout\,
	combout => \sll64[2][29]~174_combout\);

-- Location: LCCOMB_X41_Y46_N10
\sll64[4][29]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][29]~175_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\sll64[2][21]~132_combout\))) # (!\B[3]~input_o\ & (\sll64[2][29]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][29]~174_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][21]~132_combout\,
	combout => \sll64[4][29]~175_combout\);

-- Location: LCCOMB_X41_Y44_N28
\sll64[4][29]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][29]~176_combout\ = (\sll64[4][29]~175_combout\) # ((\B[2]~input_o\ & \sll64[4][25]~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[4][29]~175_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[4][25]~153_combout\,
	combout => \sll64[4][29]~176_combout\);

-- Location: LCCOMB_X41_Y44_N6
\sll64[5][29]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][29]~177_combout\ = (\B[4]~input_o\ & (\sll64[4][13]~89_combout\)) # (!\B[4]~input_o\ & ((\sll64[4][29]~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \sll64[4][13]~89_combout\,
	datad => \sll64[4][29]~176_combout\,
	combout => \sll64[5][29]~177_combout\);

-- Location: LCCOMB_X41_Y44_N4
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux61~3_combout\ & (((\Mux61~2_combout\)))) # (!\Mux61~3_combout\ & ((\Mux61~2_combout\ & ((\srl64[4][45]~325_combout\))) # (!\Mux61~2_combout\ & (\srl64[4][29]~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \srl64[4][29]~326_combout\,
	datac => \Mux61~2_combout\,
	datad => \srl64[4][45]~325_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X41_Y44_N30
\sra64[5][61]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][61]~122_combout\ = (\B[4]~input_o\ & (((\sra64[0][63]~58_combout\)))) # (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[3]~input_o\ & ((\sra64[3][61]~130_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sra64[0][63]~58_combout\,
	datad => \sra64[3][61]~130_combout\,
	combout => \sra64[5][61]~122_combout\);

-- Location: LCCOMB_X47_Y41_N28
\srl64[5][61]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][61]~379_combout\ = (\srl64[2][61]~153_combout\ & (!\B[4]~input_o\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][61]~153_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \srl64[5][61]~379_combout\);

-- Location: LCCOMB_X47_Y41_N10
\srl64[6][61]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][61]~378_combout\ = (\srl64[2][61]~153_combout\ & (\sll64[6][1]~48_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][61]~153_combout\,
	datab => \sll64[6][1]~48_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \srl64[6][61]~378_combout\);

-- Location: LCCOMB_X47_Y41_N16
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[6][61]~378_combout\))) # (!\ExtWord~input_o\ & (\srl64[5][61]~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[5][61]~379_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][61]~378_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X41_Y44_N20
\sra64[6][61]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][61]~150_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\sra64[5][61]~122_combout\))) # (!\ExtWord~input_o\ & (\sra64[0][63]~58_combout\)))) # (!\B[5]~input_o\ & (((\sra64[5][61]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \sra64[5][61]~122_combout\,
	datad => \ExtWord~input_o\,
	combout => \sra64[6][61]~150_combout\);

-- Location: LCCOMB_X41_Y44_N24
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux34~1_combout\ & ((\sra64[6][61]~150_combout\))) # (!\Mux34~1_combout\ & (\sra64[5][61]~122_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[5][61]~122_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux34~1_combout\,
	datad => \sra64[6][61]~150_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X41_Y44_N10
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux61~3_combout\ & ((\Mux34~0_combout\ & ((\Mux34~2_combout\))) # (!\Mux34~0_combout\ & (\A[29]~input_o\)))) # (!\Mux61~3_combout\ & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \A[29]~input_o\,
	datac => \Mux34~0_combout\,
	datad => \Mux34~2_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X41_Y44_N16
\Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\Mux61~1_combout\ & (\sll64[5][29]~177_combout\ & (!\shamt[5]~0_combout\))) # (!\Mux61~1_combout\ & (((\Mux34~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][29]~177_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \Mux61~1_combout\,
	datad => \Mux34~3_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X38_Y47_N18
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux61~2_combout\ & (((\Mux61~3_combout\)))) # (!\Mux61~2_combout\ & ((\Mux61~3_combout\ & ((\A[30]~input_o\))) # (!\Mux61~3_combout\ & (\srl64[4][30]~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][30]~329_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux61~3_combout\,
	datad => \A[30]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X42_Y43_N24
\sra64[5][62]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[5][62]~123_combout\ = (\B[3]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[3]~input_o\ & ((\B[4]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[4]~input_o\ & ((\sra64[3][62]~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][63]~58_combout\,
	datab => \sra64[3][62]~111_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \sra64[5][62]~123_combout\);

-- Location: LCCOMB_X42_Y43_N10
\sra64[6][62]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][62]~151_combout\ = (\ExtWord~input_o\ & (((\sra64[5][62]~123_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\sra64[0][63]~58_combout\)) # (!\B[5]~input_o\ & ((\sra64[5][62]~123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \B[5]~input_o\,
	datad => \sra64[5][62]~123_combout\,
	combout => \sra64[6][62]~151_combout\);

-- Location: LCCOMB_X43_Y43_N20
\srl64[5][62]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[5][62]~380_combout\ = (\srl64[5][62]~134_combout\ & (!\B[1]~input_o\ & (!\B[2]~input_o\ & \srl64[1][62]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][62]~134_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][62]~82_combout\,
	combout => \srl64[5][62]~380_combout\);

-- Location: LCCOMB_X43_Y43_N4
\srl64[6][62]~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][62]~350_combout\ = (!\B[3]~input_o\ & (\srl64[4][55]~94_combout\ & (\sll64[6][1]~48_combout\ & \srl64[1][62]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[4][55]~94_combout\,
	datac => \sll64[6][1]~48_combout\,
	datad => \srl64[1][62]~82_combout\,
	combout => \srl64[6][62]~350_combout\);

-- Location: LCCOMB_X43_Y43_N22
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\srl64[6][62]~350_combout\))) # (!\ExtWord~input_o\ & (\srl64[5][62]~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[5][62]~380_combout\,
	datac => \srl64[6][62]~350_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X42_Y43_N26
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux33~1_combout\ & (\sra64[6][62]~151_combout\)) # (!\Mux33~1_combout\ & ((\sra64[5][62]~123_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][62]~151_combout\,
	datab => \sra64[5][62]~123_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux33~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X42_Y43_N12
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux33~0_combout\ & (((\Mux33~2_combout\)) # (!\Mux61~2_combout\))) # (!\Mux33~0_combout\ & (\Mux61~2_combout\ & ((\srl64[4][46]~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux33~2_combout\,
	datad => \srl64[4][46]~327_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X38_Y47_N12
\sll64[2][31]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][31]~178_combout\ = (\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[30]~input_o\,
	combout => \sll64[2][31]~178_combout\);

-- Location: LCCOMB_X38_Y47_N14
\sll64[2][30]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][30]~179_combout\ = (\B[0]~input_o\ & (\sll64[2][30]~173_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][31]~178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][30]~173_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][31]~178_combout\,
	combout => \sll64[2][30]~179_combout\);

-- Location: LCCOMB_X39_Y47_N26
\sll64[4][34]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][34]~180_combout\ = (\B[3]~input_o\ & (\sll64[2][22]~137_combout\)) # (!\B[3]~input_o\ & ((\sll64[2][30]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \sll64[2][22]~137_combout\,
	datad => \sll64[2][30]~179_combout\,
	combout => \sll64[4][34]~180_combout\);

-- Location: LCCOMB_X39_Y47_N4
\sll64[4][30]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][30]~181_combout\ = (\B[2]~input_o\ & (\sll64[4][26]~159_combout\)) # (!\B[2]~input_o\ & ((\sll64[4][34]~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[4][26]~159_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[4][34]~180_combout\,
	combout => \sll64[4][30]~181_combout\);

-- Location: LCCOMB_X42_Y43_N6
\Y_sll[62]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~6_combout\ = (\B[4]~input_o\ & ((\sll64[4][14]~95_combout\))) # (!\B[4]~input_o\ & (\sll64[4][30]~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][30]~181_combout\,
	datab => \B[4]~input_o\,
	datad => \sll64[4][14]~95_combout\,
	combout => \Y_sll[62]~6_combout\);

-- Location: LCCOMB_X42_Y43_N0
\Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\Mux61~1_combout\ & (!\shamt[5]~0_combout\ & ((\Y_sll[62]~6_combout\)))) # (!\Mux61~1_combout\ & (((\Mux33~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \Mux33~3_combout\,
	datac => \Mux61~1_combout\,
	datad => \Y_sll[62]~6_combout\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X42_Y47_N16
\Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (!\B[5]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X39_Y48_N14
\sll64[5][0]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][0]~325_combout\ = (\B[1]~input_o\) # ((\B[0]~input_o\) # ((\B[2]~input_o\) # (!\srl64[5][62]~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[5][62]~134_combout\,
	combout => \sll64[5][0]~325_combout\);

-- Location: LCCOMB_X38_Y47_N24
\sll64[2][31]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][31]~182_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[29]~input_o\))) # (!\B[1]~input_o\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][31]~182_combout\);

-- Location: LCCOMB_X38_Y47_N26
\sll64[2][31]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][31]~183_combout\ = (\sll64[2][31]~182_combout\) # ((\B[0]~input_o\ & \sll64[2][31]~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][31]~182_combout\,
	datad => \sll64[2][31]~178_combout\,
	combout => \sll64[2][31]~183_combout\);

-- Location: LCCOMB_X41_Y47_N20
\sll64[4][31]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][31]~184_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\sll64[2][23]~142_combout\)) # (!\B[3]~input_o\ & ((\sll64[2][31]~183_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][23]~142_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][31]~183_combout\,
	combout => \sll64[4][31]~184_combout\);

-- Location: LCCOMB_X41_Y47_N22
\sll64[4][31]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][31]~185_combout\ = (\sll64[4][31]~184_combout\) # ((\B[2]~input_o\ & \sll64[4][27]~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[4][31]~184_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[4][27]~165_combout\,
	combout => \sll64[4][31]~185_combout\);

-- Location: LCCOMB_X42_Y47_N26
\Y_sll[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[31]~7_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\sll64[4][15]~100_combout\)) # (!\B[4]~input_o\ & ((\sll64[4][31]~185_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \sll64[4][15]~100_combout\,
	datad => \sll64[4][31]~185_combout\,
	combout => \Y_sll[31]~7_combout\);

-- Location: LCCOMB_X40_Y44_N24
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_sll[31]~7_combout\) # ((\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\A[31]~input_o\ & !\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X40_Y44_N26
\Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\ShiftFN[1]~input_o\ & (\sra64[0][63]~58_combout\ & ((\Mux32~1_combout\) # (!\sll64[5][0]~325_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][0]~325_combout\,
	datab => \Mux32~1_combout\,
	datac => \sra64[0][63]~58_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X47_Y43_N4
\Y_srl[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[31]~9_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\srl64[3][55]~301_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][47]~304_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \srl64[3][55]~301_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][47]~304_combout\,
	combout => \Y_srl[31]~9_combout\);

-- Location: LCCOMB_X46_Y43_N0
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Y_srl[31]~9_combout\) # ((\srl64[4][31]~332_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[4][31]~332_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_srl[31]~9_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X40_Y44_N4
\Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux52~2_combout\ & ((\Mux32~0_combout\))) # (!\Mux52~2_combout\ & (\Mux32~2_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux52~2_combout\,
	datac => \Mux32~2_combout\,
	datad => \Mux32~0_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X43_Y45_N14
\Y_srl[63]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[63]~14_combout\ = (!\sll64[6][0]~47_combout\ & ((\ExtWord~input_o\ & ((\A[31]~input_o\))) # (!\ExtWord~input_o\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \A[31]~input_o\,
	datac => \sll64[6][0]~47_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y_srl[63]~14_combout\);

-- Location: LCCOMB_X43_Y45_N6
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[63]~14_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][32]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][32]~135_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X43_Y45_N24
\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux31~3_combout\ & (\A[31]~input_o\)) # (!\Mux31~3_combout\ & ((\sra64[6][32]~125_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][32]~125_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X45_Y42_N22
\sll64[5][0]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][0]~186_combout\ = (!\B[0]~input_o\ & (\srl64[4][55]~94_combout\ & (\A[0]~input_o\ & \srl64[5][62]~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[4][55]~94_combout\,
	datac => \A[0]~input_o\,
	datad => \srl64[5][62]~134_combout\,
	combout => \sll64[5][0]~186_combout\);

-- Location: LCCOMB_X38_Y47_N20
\sll64[2][32]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][32]~187_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[29]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \sll64[2][32]~187_combout\);

-- Location: LCCOMB_X39_Y46_N6
\sll64[2][32]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][32]~188_combout\ = (\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & (((\A[32]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[32]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \sll64[2][32]~188_combout\);

-- Location: LCCOMB_X39_Y46_N24
\sll64[2][32]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][32]~189_combout\ = (\sll64[2][32]~187_combout\) # ((!\B[1]~input_o\ & \sll64[2][32]~188_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][32]~187_combout\,
	datac => \B[1]~input_o\,
	datad => \sll64[2][32]~188_combout\,
	combout => \sll64[2][32]~189_combout\);

-- Location: LCCOMB_X42_Y50_N28
\sll64[4][32]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][32]~326_combout\ = (\B[2]~input_o\ & (\sll64[4][32]~170_combout\)) # (!\B[2]~input_o\ & (((!\B[3]~input_o\ & \sll64[2][32]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[4][32]~170_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][32]~189_combout\,
	combout => \sll64[4][32]~326_combout\);

-- Location: LCCOMB_X42_Y50_N22
\sll64[4][32]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][32]~327_combout\ = (\sll64[4][32]~326_combout\) # ((!\B[2]~input_o\ & (\B[3]~input_o\ & \sll64[2][24]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[4][32]~326_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][24]~146_combout\,
	combout => \sll64[4][32]~327_combout\);

-- Location: LCCOMB_X42_Y43_N18
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\ExtWord~input_o\) # ((!\B[5]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X42_Y49_N12
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux18~0_combout\ & (((\sll64[4][16]~105_combout\) # (!\Mux52~2_combout\)))) # (!\Mux18~0_combout\ & (\sll64[4][32]~327_combout\ & ((\Mux52~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][32]~327_combout\,
	datab => \Mux18~0_combout\,
	datac => \sll64[4][16]~105_combout\,
	datad => \Mux52~2_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X42_Y49_N6
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux52~2_combout\ & (((\Mux31~0_combout\)))) # (!\Mux52~2_combout\ & ((\Mux31~0_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux31~0_combout\ & ((\sll64[5][0]~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[5][0]~186_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X42_Y49_N16
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux31~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[32]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X43_Y49_N24
\Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\Mux31~2_combout\) # ((\Mux31~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~4_combout\,
	datac => \Mux31~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X39_Y43_N26
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][33]~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][33]~186_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X39_Y43_N4
\sra64[6][33]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][33]~152_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\sra64[5][33]~63_combout\))) # (!\ExtWord~input_o\ & (\sra64[0][63]~58_combout\)))) # (!\B[5]~input_o\ & (((\sra64[5][33]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \sra64[0][63]~58_combout\,
	datac => \ExtWord~input_o\,
	datad => \sra64[5][33]~63_combout\,
	combout => \sra64[6][33]~152_combout\);

-- Location: LCCOMB_X40_Y44_N20
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux30~3_combout\ & (((\A[31]~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux30~3_combout\ & (\ShiftFN[0]~input_o\ & ((\sra64[6][33]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \sra64[6][33]~152_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X43_Y43_N6
\sll64[5][1]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][1]~328_combout\ = (\srl64[5][62]~134_combout\ & (\sll64[1][1]~49_combout\ & (!\B[2]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][62]~134_combout\,
	datab => \sll64[1][1]~49_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[5][1]~328_combout\);

-- Location: LCCOMB_X41_Y46_N6
\sll64[4][33]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][33]~194_combout\ = (\srl64[4][53]~259_combout\ & ((\B[0]~input_o\ & ((\sll64[2][25]~145_combout\))) # (!\B[0]~input_o\ & (\sll64[2][26]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][26]~151_combout\,
	datac => \sll64[2][25]~145_combout\,
	datad => \srl64[4][53]~259_combout\,
	combout => \sll64[4][33]~194_combout\);

-- Location: LCCOMB_X39_Y46_N10
\sll64[2][33]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][33]~190_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[30]~input_o\)) # (!\B[0]~input_o\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][33]~190_combout\);

-- Location: LCCOMB_X39_Y46_N28
\sll64[2][33]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][33]~191_combout\ = (\B[0]~input_o\ & ((\A[32]~input_o\))) # (!\B[0]~input_o\ & (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[33]~input_o\,
	datac => \A[32]~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][33]~191_combout\);

-- Location: LCCOMB_X39_Y46_N14
\sll64[2][33]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][33]~192_combout\ = (\sll64[2][33]~190_combout\) # ((!\ExtWord~input_o\ & (!\B[1]~input_o\ & \sll64[2][33]~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][33]~190_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[1]~input_o\,
	datad => \sll64[2][33]~191_combout\,
	combout => \sll64[2][33]~192_combout\);

-- Location: LCCOMB_X41_Y46_N20
\sll64[4][33]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][33]~193_combout\ = (\sll64[4][16]~53_combout\ & ((\sll64[2][33]~192_combout\) # ((\sll64[4][16]~56_combout\ & \sll64[2][21]~132_combout\)))) # (!\sll64[4][16]~53_combout\ & (((\sll64[4][16]~56_combout\ & \sll64[2][21]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~53_combout\,
	datab => \sll64[2][33]~192_combout\,
	datac => \sll64[4][16]~56_combout\,
	datad => \sll64[2][21]~132_combout\,
	combout => \sll64[4][33]~193_combout\);

-- Location: LCCOMB_X41_Y46_N16
\sll64[4][33]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][33]~195_combout\ = (\sll64[4][33]~194_combout\) # ((\sll64[4][33]~193_combout\) # ((\Mux58~9_combout\ & \sll64[2][29]~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][33]~194_combout\,
	datab => \Mux58~9_combout\,
	datac => \sll64[2][29]~174_combout\,
	datad => \sll64[4][33]~193_combout\,
	combout => \sll64[4][33]~195_combout\);

-- Location: LCCOMB_X40_Y44_N6
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux18~0_combout\ & (!\Mux52~2_combout\)) # (!\Mux18~0_combout\ & ((\Mux52~2_combout\ & ((\sll64[4][33]~195_combout\))) # (!\Mux52~2_combout\ & (\sll64[5][1]~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[5][1]~328_combout\,
	datad => \sll64[4][33]~195_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X40_Y44_N16
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux18~0_combout\ & ((\Mux30~0_combout\ & ((\Y_sll[31]~7_combout\))) # (!\Mux30~0_combout\ & (\sll64[4][17]~110_combout\)))) # (!\Mux18~0_combout\ & (((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \sll64[4][17]~110_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux30~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X40_Y44_N10
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux30~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X40_Y44_N22
\Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux30~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux30~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux30~4_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X40_Y49_N10
\sll64[5][2]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][2]~329_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & (!\B[2]~input_o\ & \sll64[2][2]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][2]~52_combout\,
	combout => \sll64[5][2]~329_combout\);

-- Location: LCCOMB_X39_Y47_N28
\sll64[4][34]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][34]~330_combout\ = (\B[2]~input_o\ & (((\sll64[4][34]~180_combout\)))) # (!\B[2]~input_o\ & (\sll64[2][26]~158_combout\ & (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][26]~158_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[4][34]~180_combout\,
	combout => \sll64[4][34]~330_combout\);

-- Location: LCCOMB_X39_Y46_N8
\sll64[2][34]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][34]~196_combout\ = (\B[1]~input_o\ & (((\A[31]~input_o\)))) # (!\B[1]~input_o\ & (!\ExtWord~input_o\ & ((\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[31]~input_o\,
	datad => \A[33]~input_o\,
	combout => \sll64[2][34]~196_combout\);

-- Location: LCCOMB_X39_Y46_N2
\sll64[2][34]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][34]~197_combout\ = (\B[1]~input_o\ & (\A[32]~input_o\)) # (!\B[1]~input_o\ & ((\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[34]~input_o\,
	combout => \sll64[2][34]~197_combout\);

-- Location: LCCOMB_X39_Y46_N12
\sll64[2][34]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][34]~198_combout\ = (\B[0]~input_o\ & (((\sll64[2][34]~196_combout\)))) # (!\B[0]~input_o\ & (!\ExtWord~input_o\ & ((\sll64[2][34]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sll64[2][34]~196_combout\,
	datad => \sll64[2][34]~197_combout\,
	combout => \sll64[2][34]~198_combout\);

-- Location: LCCOMB_X39_Y47_N22
\sll64[4][34]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][34]~331_combout\ = (\sll64[4][34]~330_combout\) # ((!\B[2]~input_o\ & (!\B[3]~input_o\ & \sll64[2][34]~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[4][34]~330_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][34]~198_combout\,
	combout => \sll64[4][34]~331_combout\);

-- Location: LCCOMB_X40_Y49_N8
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux52~2_combout\ & ((\Mux18~0_combout\ & (\sll64[4][18]~116_combout\)) # (!\Mux18~0_combout\ & ((\sll64[4][34]~331_combout\))))) # (!\Mux52~2_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][18]~116_combout\,
	datab => \Mux52~2_combout\,
	datac => \Mux18~0_combout\,
	datad => \sll64[4][34]~331_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X40_Y49_N26
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & (((\Y_sll[31]~7_combout\) # (\Mux52~2_combout\)))) # (!\Mux29~0_combout\ & (\sll64[5][2]~329_combout\ & ((!\Mux52~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][2]~329_combout\,
	datab => \Mux29~0_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux52~2_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X38_Y46_N20
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux29~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux29~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X45_Y42_N8
\srl64[6][34]~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][34]~351_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\srl64[4][50]~218_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][34]~217_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][50]~218_combout\,
	datab => \srl64[4][34]~217_combout\,
	datac => \B[4]~input_o\,
	datad => \shamt[5]~0_combout\,
	combout => \srl64[6][34]~351_combout\);

-- Location: LCCOMB_X38_Y46_N6
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[63]~14_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][34]~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][34]~351_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X38_Y46_N24
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux29~3_combout\ & ((\A[31]~input_o\))) # (!\Mux29~3_combout\ & (\sra64[6][34]~126_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][34]~126_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X38_Y46_N26
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux29~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux29~2_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X38_Y47_N22
\sll64[4][35]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][35]~200_combout\ = (\Mux58~9_combout\ & ((\sll64[2][31]~182_combout\) # ((\B[0]~input_o\ & \sll64[2][31]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~9_combout\,
	datab => \sll64[2][31]~182_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][31]~178_combout\,
	combout => \sll64[4][35]~200_combout\);

-- Location: LCCOMB_X39_Y49_N4
\sll64[2][35]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][35]~201_combout\ = (\B[1]~input_o\ & (\A[33]~input_o\)) # (!\B[1]~input_o\ & ((\A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[33]~input_o\,
	datac => \A[35]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][35]~201_combout\);

-- Location: LCCOMB_X39_Y46_N22
\sll64[2][35]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][35]~202_combout\ = (\B[0]~input_o\ & ((\sll64[2][34]~197_combout\))) # (!\B[0]~input_o\ & (\sll64[2][35]~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \sll64[2][35]~201_combout\,
	datad => \sll64[2][34]~197_combout\,
	combout => \sll64[2][35]~202_combout\);

-- Location: LCCOMB_X40_Y47_N8
\sll64[4][35]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][35]~199_combout\ = (\sll64[2][27]~164_combout\ & ((\srl64[4][53]~259_combout\) # ((\sll64[4][16]~56_combout\ & \sll64[2][23]~142_combout\)))) # (!\sll64[2][27]~164_combout\ & (\sll64[4][16]~56_combout\ & (\sll64[2][23]~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][27]~164_combout\,
	datab => \sll64[4][16]~56_combout\,
	datac => \sll64[2][23]~142_combout\,
	datad => \srl64[4][53]~259_combout\,
	combout => \sll64[4][35]~199_combout\);

-- Location: LCCOMB_X40_Y46_N2
\sll64[4][35]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][35]~203_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \sll64[4][35]~203_combout\);

-- Location: LCCOMB_X40_Y47_N2
\sll64[4][35]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][35]~204_combout\ = (\sll64[4][35]~200_combout\) # ((\sll64[4][35]~199_combout\) # ((\sll64[2][35]~202_combout\ & \sll64[4][35]~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][35]~200_combout\,
	datab => \sll64[2][35]~202_combout\,
	datac => \sll64[4][35]~199_combout\,
	datad => \sll64[4][35]~203_combout\,
	combout => \sll64[4][35]~204_combout\);

-- Location: LCCOMB_X40_Y49_N4
\sll64[5][3]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][3]~332_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & (!\B[2]~input_o\ & \sll64[2][3]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][3]~55_combout\,
	combout => \sll64[5][3]~332_combout\);

-- Location: LCCOMB_X40_Y49_N20
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux52~2_combout\ & (\sll64[4][35]~204_combout\ & (!\Mux18~0_combout\))) # (!\Mux52~2_combout\ & (((\Mux18~0_combout\) # (\sll64[5][3]~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][35]~204_combout\,
	datab => \Mux52~2_combout\,
	datac => \Mux18~0_combout\,
	datad => \sll64[5][3]~332_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X40_Y49_N6
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux18~0_combout\ & ((\Mux28~0_combout\ & ((\Y_sll[31]~7_combout\))) # (!\Mux28~0_combout\ & (\sll64[4][19]~122_combout\)))) # (!\Mux18~0_combout\ & (((\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][19]~122_combout\,
	datab => \Y_sll[31]~7_combout\,
	datac => \Mux18~0_combout\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X39_Y49_N30
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux28~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[35]~input_o\,
	datad => \Mux28~1_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X43_Y41_N20
\srl64[6][35]~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][35]~352_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\srl64[4][51]~243_combout\))) # (!\B[4]~input_o\ & (\srl64[4][35]~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shamt[5]~0_combout\,
	datac => \srl64[4][35]~365_combout\,
	datad => \srl64[4][51]~243_combout\,
	combout => \srl64[6][35]~352_combout\);

-- Location: LCCOMB_X43_Y41_N30
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][35]~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][35]~352_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X43_Y41_N0
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Mux28~3_combout\ & (((\A[31]~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux28~3_combout\ & (\ShiftFN[0]~input_o\ & ((\sra64[6][35]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \sra64[6][35]~127_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X39_Y49_N16
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux28~4_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X38_Y46_N28
\sll64[2][36]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][36]~205_combout\ = (\B[1]~input_o\ & ((\A[34]~input_o\))) # (!\B[1]~input_o\ & (\A[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[36]~input_o\,
	datac => \A[34]~input_o\,
	combout => \sll64[2][36]~205_combout\);

-- Location: LCCOMB_X41_Y46_N18
\sll64[4][36]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][36]~206_combout\ = (\sll64[4][35]~203_combout\ & ((\B[0]~input_o\ & (\sll64[2][35]~201_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][36]~205_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][35]~203_combout\,
	datab => \B[0]~input_o\,
	datac => \sll64[2][35]~201_combout\,
	datad => \sll64[2][36]~205_combout\,
	combout => \sll64[4][36]~206_combout\);

-- Location: LCCOMB_X42_Y50_N16
\sll64[4][36]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][36]~207_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][24]~146_combout\))) # (!\B[2]~input_o\ & (\sll64[2][28]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][28]~169_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][24]~146_combout\,
	combout => \sll64[4][36]~207_combout\);

-- Location: LCCOMB_X42_Y50_N18
\sll64[4][36]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][36]~208_combout\ = (\sll64[4][36]~206_combout\) # ((\sll64[4][36]~207_combout\) # ((\sll64[2][32]~189_combout\ & \Mux58~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][32]~189_combout\,
	datab => \sll64[4][36]~206_combout\,
	datac => \Mux58~9_combout\,
	datad => \sll64[4][36]~207_combout\,
	combout => \sll64[4][36]~208_combout\);

-- Location: LCCOMB_X42_Y46_N30
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux18~0_combout\ & (((\sll64[4][20]~128_combout\) # (!\Mux52~2_combout\)))) # (!\Mux18~0_combout\ & (\sll64[4][36]~208_combout\ & (\Mux52~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \sll64[4][36]~208_combout\,
	datac => \Mux52~2_combout\,
	datad => \sll64[4][20]~128_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X42_Y46_N16
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & (((\Mux52~2_combout\) # (\Y_sll[31]~7_combout\)))) # (!\Mux27~0_combout\ & (\sll64[5][4]~314_combout\ & (!\Mux52~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \sll64[5][4]~314_combout\,
	datac => \Mux52~2_combout\,
	datad => \Y_sll[31]~7_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X38_Y46_N22
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux27~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[36]~input_o\,
	datad => \Mux27~1_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X41_Y43_N14
\srl64[6][36]~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][36]~353_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (!\sra64[4][52]~72_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][36]~256_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][52]~72_combout\,
	datab => \B[4]~input_o\,
	datac => \shamt[5]~0_combout\,
	datad => \srl64[4][36]~256_combout\,
	combout => \srl64[6][36]~353_combout\);

-- Location: LCCOMB_X41_Y43_N8
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[63]~14_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][36]~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[6][36]~353_combout\,
	datac => \Y_srl[63]~14_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X41_Y43_N2
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux27~3_combout\ & (\A[31]~input_o\)) # (!\Mux27~3_combout\ & ((\sra64[6][36]~129_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \Mux27~3_combout\,
	datad => \sra64[6][36]~129_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X38_Y46_N0
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux27~2_combout\) # ((\Mux27~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datac => \Mux27~4_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X47_Y41_N26
\srl64[6][37]~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][37]~354_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\srl64[4][53]~366_combout\))) # (!\B[4]~input_o\ & (\srl64[4][37]~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][37]~276_combout\,
	datab => \B[4]~input_o\,
	datac => \shamt[5]~0_combout\,
	datad => \srl64[4][53]~366_combout\,
	combout => \srl64[6][37]~354_combout\);

-- Location: LCCOMB_X46_Y42_N20
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][37]~354_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \srl64[6][37]~354_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X46_Y42_N30
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux26~3_combout\ & (\A[31]~input_o\)) # (!\Mux26~3_combout\ & ((\sra64[6][37]~131_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][37]~131_combout\,
	datad => \Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X39_Y49_N18
\sll64[2][37]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][37]~210_combout\ = (\B[1]~input_o\ & ((\A[35]~input_o\))) # (!\B[1]~input_o\ & (\A[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datac => \A[35]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][37]~210_combout\);

-- Location: LCCOMB_X40_Y46_N12
\sll64[2][37]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][37]~211_combout\ = (\B[0]~input_o\ & ((\sll64[2][36]~205_combout\))) # (!\B[0]~input_o\ & (\sll64[2][37]~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][37]~210_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][36]~205_combout\,
	combout => \sll64[2][37]~211_combout\);

-- Location: LCCOMB_X41_Y46_N14
\sll64[4][37]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][37]~212_combout\ = (\sll64[2][37]~211_combout\ & ((\sll64[4][35]~203_combout\) # ((\srl64[4][53]~259_combout\ & \sll64[2][29]~174_combout\)))) # (!\sll64[2][37]~211_combout\ & (\srl64[4][53]~259_combout\ & (\sll64[2][29]~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][37]~211_combout\,
	datab => \srl64[4][53]~259_combout\,
	datac => \sll64[2][29]~174_combout\,
	datad => \sll64[4][35]~203_combout\,
	combout => \sll64[4][37]~212_combout\);

-- Location: LCCOMB_X41_Y46_N28
\sll64[4][37]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][37]~209_combout\ = (\sll64[4][16]~56_combout\ & ((\B[0]~input_o\ & ((\sll64[2][25]~145_combout\))) # (!\B[0]~input_o\ & (\sll64[2][26]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~56_combout\,
	datab => \sll64[2][26]~151_combout\,
	datac => \sll64[2][25]~145_combout\,
	datad => \B[0]~input_o\,
	combout => \sll64[4][37]~209_combout\);

-- Location: LCCOMB_X41_Y46_N24
\sll64[4][37]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][37]~213_combout\ = (\sll64[4][37]~212_combout\) # ((\sll64[4][37]~209_combout\) # ((\sll64[2][33]~192_combout\ & \Mux58~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][37]~212_combout\,
	datab => \sll64[4][37]~209_combout\,
	datac => \sll64[2][33]~192_combout\,
	datad => \Mux58~9_combout\,
	combout => \sll64[4][37]~213_combout\);

-- Location: LCCOMB_X40_Y49_N24
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux18~0_combout\ & (!\Mux52~2_combout\)) # (!\Mux18~0_combout\ & ((\Mux52~2_combout\ & ((\sll64[4][37]~213_combout\))) # (!\Mux52~2_combout\ & (\sll64[5][5]~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[5][5]~316_combout\,
	datad => \sll64[4][37]~213_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X40_Y49_N18
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux18~0_combout\ & ((\Mux26~0_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux26~0_combout\ & ((\sll64[4][21]~133_combout\))))) # (!\Mux18~0_combout\ & (((\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Y_sll[31]~7_combout\,
	datac => \sll64[4][21]~133_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X39_Y49_N28
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux26~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux26~1_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X39_Y49_N22
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux26~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux26~4_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X46_Y42_N24
\srl64[6][38]~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][38]~355_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\srl64[4][54]~292_combout\))) # (!\B[4]~input_o\ & (\srl64[4][38]~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \srl64[4][38]~288_combout\,
	datac => \B[4]~input_o\,
	datad => \srl64[4][54]~292_combout\,
	combout => \srl64[6][38]~355_combout\);

-- Location: LCCOMB_X46_Y42_N2
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][38]~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][38]~355_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X46_Y42_N4
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux25~3_combout\ & (\A[31]~input_o\)) # (!\Mux25~3_combout\ & ((\sra64[6][38]~132_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Mux25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Mux25~3_combout\,
	datac => \A[31]~input_o\,
	datad => \sra64[6][38]~132_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X39_Y47_N6
\sll64[4][38]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][38]~216_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\sll64[2][26]~158_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][30]~179_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][26]~158_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][30]~179_combout\,
	combout => \sll64[4][38]~216_combout\);

-- Location: LCCOMB_X38_Y46_N10
\sll64[2][38]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][38]~214_combout\ = (\B[1]~input_o\ & ((\A[36]~input_o\))) # (!\B[1]~input_o\ & (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[36]~input_o\,
	combout => \sll64[2][38]~214_combout\);

-- Location: LCCOMB_X40_Y46_N14
\sll64[4][38]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][38]~215_combout\ = (\sll64[4][35]~203_combout\ & ((\B[0]~input_o\ & (\sll64[2][37]~210_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][38]~214_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][37]~210_combout\,
	datab => \sll64[2][38]~214_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[4][35]~203_combout\,
	combout => \sll64[4][38]~215_combout\);

-- Location: LCCOMB_X39_Y47_N24
\sll64[4][38]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][38]~217_combout\ = (\sll64[4][38]~216_combout\) # ((\sll64[4][38]~215_combout\) # ((\sll64[2][34]~198_combout\ & \Mux58~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][34]~198_combout\,
	datab => \sll64[4][38]~216_combout\,
	datac => \Mux58~9_combout\,
	datad => \sll64[4][38]~215_combout\,
	combout => \sll64[4][38]~217_combout\);

-- Location: LCCOMB_X42_Y47_N12
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux18~0_combout\ & (((\sll64[4][22]~138_combout\)) # (!\Mux52~2_combout\))) # (!\Mux18~0_combout\ & (\Mux52~2_combout\ & ((\sll64[4][38]~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[4][22]~138_combout\,
	datad => \sll64[4][38]~217_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X42_Y47_N30
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & ((\Mux52~2_combout\) # ((\Y_sll[31]~7_combout\)))) # (!\Mux25~0_combout\ & (!\Mux52~2_combout\ & ((\sll64[5][6]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux52~2_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \sll64[5][6]~65_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X38_Y46_N12
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux25~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[38]~input_o\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X38_Y46_N30
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux25~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Mux25~4_combout\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X48_Y43_N2
\srl64[6][39]~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][39]~356_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\srl64[4][55]~309_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][39]~307_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \srl64[4][55]~309_combout\,
	datac => \srl64[4][39]~307_combout\,
	datad => \B[4]~input_o\,
	combout => \srl64[6][39]~356_combout\);

-- Location: LCCOMB_X48_Y43_N28
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][39]~356_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_srl[63]~14_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][39]~356_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X48_Y43_N14
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux24~3_combout\ & (\A[31]~input_o\)) # (!\Mux24~3_combout\ & ((\sra64[6][39]~133_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Mux24~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Mux24~3_combout\,
	datac => \A[31]~input_o\,
	datad => \sra64[6][39]~133_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X40_Y47_N22
\sll64[4][39]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][39]~333_combout\ = (!\B[3]~input_o\ & (\B[2]~input_o\ & (!\ExtWord~input_o\ & \sll64[2][35]~202_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][35]~202_combout\,
	combout => \sll64[4][39]~333_combout\);

-- Location: LCCOMB_X40_Y48_N16
\sll64[2][39]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][39]~219_combout\ = (\B[1]~input_o\ & (\A[37]~input_o\)) # (!\B[1]~input_o\ & ((\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[39]~input_o\,
	combout => \sll64[2][39]~219_combout\);

-- Location: LCCOMB_X40_Y48_N2
\sll64[2][39]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][39]~220_combout\ = (\B[0]~input_o\ & (\sll64[2][38]~214_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][39]~219_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][38]~214_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][39]~219_combout\,
	combout => \sll64[2][39]~220_combout\);

-- Location: LCCOMB_X40_Y47_N20
\sll64[4][39]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][39]~218_combout\ = (\sll64[2][31]~183_combout\ & ((\srl64[4][53]~259_combout\) # ((\sll64[4][16]~56_combout\ & \sll64[2][27]~164_combout\)))) # (!\sll64[2][31]~183_combout\ & (((\sll64[4][16]~56_combout\ & \sll64[2][27]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][31]~183_combout\,
	datab => \srl64[4][53]~259_combout\,
	datac => \sll64[4][16]~56_combout\,
	datad => \sll64[2][27]~164_combout\,
	combout => \sll64[4][39]~218_combout\);

-- Location: LCCOMB_X40_Y47_N14
\sll64[4][39]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][39]~221_combout\ = (\sll64[4][39]~333_combout\) # ((\sll64[4][39]~218_combout\) # ((\sll64[4][35]~203_combout\ & \sll64[2][39]~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][39]~333_combout\,
	datab => \sll64[4][35]~203_combout\,
	datac => \sll64[2][39]~220_combout\,
	datad => \sll64[4][39]~218_combout\,
	combout => \sll64[4][39]~221_combout\);

-- Location: LCCOMB_X41_Y49_N4
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux52~2_combout\ & (!\Mux18~0_combout\ & ((\sll64[4][39]~221_combout\)))) # (!\Mux52~2_combout\ & ((\Mux18~0_combout\) # ((\sll64[5][7]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~2_combout\,
	datab => \Mux18~0_combout\,
	datac => \sll64[5][7]~68_combout\,
	datad => \sll64[4][39]~221_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X41_Y49_N14
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux18~0_combout\ & ((\Mux24~0_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux24~0_combout\ & ((\sll64[4][23]~143_combout\))))) # (!\Mux18~0_combout\ & (((\Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux18~0_combout\,
	datac => \Mux24~0_combout\,
	datad => \sll64[4][23]~143_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X43_Y49_N10
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux24~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[39]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X43_Y49_N20
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux24~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux24~4_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X48_Y43_N16
\srl64[6][40]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][40]~357_combout\ = (\shamt[5]~0_combout\ & (((\srl64[4][40]~311_combout\ & \sll64[6][1]~48_combout\)))) # (!\shamt[5]~0_combout\ & ((\sra64[5][40]~82_combout\) # ((\srl64[4][40]~311_combout\ & \sll64[6][1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \sra64[5][40]~82_combout\,
	datac => \srl64[4][40]~311_combout\,
	datad => \sll64[6][1]~48_combout\,
	combout => \srl64[6][40]~357_combout\);

-- Location: LCCOMB_X48_Y43_N26
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][40]~357_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_srl[63]~14_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][40]~357_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X48_Y43_N20
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux23~3_combout\ & (\A[31]~input_o\)) # (!\Mux23~3_combout\ & ((\sra64[6][40]~134_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \Mux23~3_combout\,
	datad => \sra64[6][40]~134_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X42_Y49_N26
\sll64[5][8]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][8]~222_combout\ = (!\B[4]~input_o\ & \sll64[4][8]~317_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \sll64[4][8]~317_combout\,
	combout => \sll64[5][8]~222_combout\);

-- Location: LCCOMB_X40_Y48_N12
\sll64[2][40]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][40]~225_combout\ = (\B[1]~input_o\ & (\A[38]~input_o\)) # (!\B[1]~input_o\ & ((\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[38]~input_o\,
	datad => \A[40]~input_o\,
	combout => \sll64[2][40]~225_combout\);

-- Location: LCCOMB_X40_Y48_N14
\sll64[2][40]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][40]~226_combout\ = (\B[0]~input_o\ & ((\sll64[2][39]~219_combout\))) # (!\B[0]~input_o\ & (\sll64[2][40]~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][40]~225_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][39]~219_combout\,
	combout => \sll64[2][40]~226_combout\);

-- Location: LCCOMB_X41_Y46_N2
\sll64[2][36]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][36]~224_combout\ = (\B[0]~input_o\ & (\sll64[2][35]~201_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][36]~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][35]~201_combout\,
	datad => \sll64[2][36]~205_combout\,
	combout => \sll64[2][36]~224_combout\);

-- Location: LCCOMB_X41_Y48_N6
\sll64[3][40]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][40]~227_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][36]~224_combout\))) # (!\B[2]~input_o\ & (\sll64[2][40]~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][40]~226_combout\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][36]~224_combout\,
	combout => \sll64[3][40]~227_combout\);

-- Location: LCCOMB_X41_Y48_N12
\sll64[4][40]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][40]~223_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][28]~169_combout\))) # (!\B[2]~input_o\ & (\sll64[2][32]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][32]~189_combout\,
	datab => \B[3]~input_o\,
	datac => \sll64[2][28]~169_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[4][40]~223_combout\);

-- Location: LCCOMB_X41_Y48_N0
\sll64[4][40]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][40]~228_combout\ = (\sll64[4][40]~223_combout\) # ((\sll64[3][40]~227_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][40]~227_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[4][40]~223_combout\,
	combout => \sll64[4][40]~228_combout\);

-- Location: LCCOMB_X42_Y49_N20
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux52~2_combout\ & ((\Mux18~0_combout\ & ((\sll64[4][24]~148_combout\))) # (!\Mux18~0_combout\ & (\sll64[4][40]~228_combout\)))) # (!\Mux52~2_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][40]~228_combout\,
	datab => \Mux52~2_combout\,
	datac => \Mux18~0_combout\,
	datad => \sll64[4][24]~148_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X42_Y49_N14
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux52~2_combout\ & (((\Mux23~0_combout\)))) # (!\Mux52~2_combout\ & ((\Mux23~0_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux23~0_combout\ & ((\sll64[5][8]~222_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[5][8]~222_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X42_Y49_N24
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux23~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[40]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Mux23~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X42_Y49_N10
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~2_combout\) # ((\Mux23~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux23~2_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X40_Y48_N0
\sll64[2][41]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][41]~231_combout\ = (\B[1]~input_o\ & ((\A[39]~input_o\))) # (!\B[1]~input_o\ & (\A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[39]~input_o\,
	combout => \sll64[2][41]~231_combout\);

-- Location: LCCOMB_X40_Y48_N18
\sll64[2][41]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][41]~232_combout\ = (\B[0]~input_o\ & (\sll64[2][40]~225_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][41]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][40]~225_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][41]~231_combout\,
	combout => \sll64[2][41]~232_combout\);

-- Location: LCCOMB_X40_Y46_N8
\sll64[3][41]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][41]~233_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][37]~211_combout\))) # (!\B[2]~input_o\ & (\sll64[2][41]~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][41]~232_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][37]~211_combout\,
	combout => \sll64[3][41]~233_combout\);

-- Location: LCCOMB_X41_Y46_N4
\sll64[4][41]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][41]~230_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\sll64[2][29]~174_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][33]~192_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][29]~174_combout\,
	datab => \sll64[2][33]~192_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \sll64[4][41]~230_combout\);

-- Location: LCCOMB_X41_Y46_N22
\sll64[4][41]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][41]~234_combout\ = (\sll64[4][41]~230_combout\) # ((\sll64[3][41]~233_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][41]~233_combout\,
	datab => \B[3]~input_o\,
	datac => \sll64[4][41]~230_combout\,
	combout => \sll64[4][41]~234_combout\);

-- Location: LCCOMB_X42_Y49_N28
\sll64[5][9]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][9]~229_combout\ = (!\B[4]~input_o\ & \sll64[4][9]~318_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \sll64[4][9]~318_combout\,
	combout => \sll64[5][9]~229_combout\);

-- Location: LCCOMB_X42_Y49_N22
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux52~2_combout\ & (\sll64[4][41]~234_combout\ & (!\Mux18~0_combout\))) # (!\Mux52~2_combout\ & (((\Mux18~0_combout\) # (\sll64[5][9]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][41]~234_combout\,
	datab => \Mux52~2_combout\,
	datac => \Mux18~0_combout\,
	datad => \sll64[5][9]~229_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X40_Y49_N28
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux18~0_combout\ & ((\Mux22~0_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux22~0_combout\ & ((\sll64[4][25]~154_combout\))))) # (!\Mux18~0_combout\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Y_sll[31]~7_combout\,
	datac => \sll64[4][25]~154_combout\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X43_Y49_N6
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux22~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux22~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X40_Y41_N0
\srl64[6][41]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][41]~358_combout\ = (!\B[3]~input_o\ & (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[6][41]~358_combout\);

-- Location: LCCOMB_X40_Y43_N8
\srl64[6][41]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][41]~359_combout\ = (\sll64[6][1]~48_combout\ & ((\srl64[4][41]~316_combout\) # ((\srl64[6][41]~358_combout\ & \srl64[3][57]~154_combout\)))) # (!\sll64[6][1]~48_combout\ & (\srl64[6][41]~358_combout\ & (\srl64[3][57]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \srl64[6][41]~358_combout\,
	datac => \srl64[3][57]~154_combout\,
	datad => \srl64[4][41]~316_combout\,
	combout => \srl64[6][41]~359_combout\);

-- Location: LCCOMB_X40_Y41_N26
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][41]~359_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][41]~359_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X40_Y41_N20
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux22~3_combout\ & (((\A[31]~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux22~3_combout\ & (\ShiftFN[0]~input_o\ & (\sra64[6][41]~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][41]~135_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X43_Y49_N16
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~2_combout\) # ((\Mux22~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux22~4_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X43_Y47_N28
\sll64[5][10]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][10]~235_combout\ = (!\B[4]~input_o\ & ((\sll64[4][10]~78_combout\) # ((\sll64[2][6]~64_combout\ & \Mux58~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][6]~64_combout\,
	datab => \Mux58~9_combout\,
	datac => \B[4]~input_o\,
	datad => \sll64[4][10]~78_combout\,
	combout => \sll64[5][10]~235_combout\);

-- Location: LCCOMB_X39_Y47_N18
\sll64[4][42]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][42]~236_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\sll64[2][30]~179_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][34]~198_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][30]~179_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][34]~198_combout\,
	combout => \sll64[4][42]~236_combout\);

-- Location: LCCOMB_X40_Y48_N20
\sll64[2][42]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][42]~238_combout\ = (\B[1]~input_o\ & (\A[40]~input_o\)) # (!\B[1]~input_o\ & ((\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[42]~input_o\,
	combout => \sll64[2][42]~238_combout\);

-- Location: LCCOMB_X40_Y48_N6
\sll64[2][42]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][42]~239_combout\ = (\B[0]~input_o\ & ((\sll64[2][41]~231_combout\))) # (!\B[0]~input_o\ & (\sll64[2][42]~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][42]~238_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][41]~231_combout\,
	combout => \sll64[2][42]~239_combout\);

-- Location: LCCOMB_X40_Y46_N10
\sll64[2][38]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][38]~237_combout\ = (\B[0]~input_o\ & (\sll64[2][37]~210_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][38]~214_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][37]~210_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][38]~214_combout\,
	combout => \sll64[2][38]~237_combout\);

-- Location: LCCOMB_X39_Y47_N12
\sll64[3][42]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][42]~240_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][38]~237_combout\))) # (!\B[2]~input_o\ & (\sll64[2][42]~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][42]~239_combout\,
	datab => \sll64[2][38]~237_combout\,
	datac => \B[2]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \sll64[3][42]~240_combout\);

-- Location: LCCOMB_X39_Y47_N14
\sll64[4][42]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][42]~241_combout\ = (\sll64[4][42]~236_combout\) # ((!\B[3]~input_o\ & \sll64[3][42]~240_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[4][42]~236_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[3][42]~240_combout\,
	combout => \sll64[4][42]~241_combout\);

-- Location: LCCOMB_X40_Y44_N0
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux18~0_combout\ & (((\sll64[4][26]~160_combout\)) # (!\Mux52~2_combout\))) # (!\Mux18~0_combout\ & (\Mux52~2_combout\ & ((\sll64[4][42]~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[4][26]~160_combout\,
	datad => \sll64[4][42]~241_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X40_Y44_N2
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux52~2_combout\ & (((\Mux21~0_combout\)))) # (!\Mux52~2_combout\ & ((\Mux21~0_combout\ & ((\Y_sll[31]~7_combout\))) # (!\Mux21~0_combout\ & (\sll64[5][10]~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][10]~235_combout\,
	datab => \Mux52~2_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X43_Y49_N26
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux21~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux21~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X43_Y42_N4
\srl64[6][42]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][42]~360_combout\ = (\srl64[4][42]~320_combout\ & ((\sll64[6][1]~48_combout\) # ((\srl64[6][41]~358_combout\ & !\sra64[3][58]~65_combout\)))) # (!\srl64[4][42]~320_combout\ & (((\srl64[6][41]~358_combout\ & !\sra64[3][58]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][42]~320_combout\,
	datab => \sll64[6][1]~48_combout\,
	datac => \srl64[6][41]~358_combout\,
	datad => \sra64[3][58]~65_combout\,
	combout => \srl64[6][42]~360_combout\);

-- Location: LCCOMB_X43_Y42_N14
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][42]~360_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_srl[63]~14_combout\,
	datac => \srl64[6][42]~360_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X43_Y42_N8
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux21~3_combout\ & ((\A[31]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux21~3_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[6][42]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux21~3_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][42]~136_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X43_Y49_N4
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux21~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux21~4_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X43_Y42_N18
\srl64[6][43]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][43]~361_combout\ = (\srl64[4][43]~367_combout\ & ((\sll64[6][1]~48_combout\) # ((\srl64[3][59]~242_combout\ & \srl64[6][41]~358_combout\)))) # (!\srl64[4][43]~367_combout\ & (\srl64[3][59]~242_combout\ & (\srl64[6][41]~358_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][43]~367_combout\,
	datab => \srl64[3][59]~242_combout\,
	datac => \srl64[6][41]~358_combout\,
	datad => \sll64[6][1]~48_combout\,
	combout => \srl64[6][43]~361_combout\);

-- Location: LCCOMB_X43_Y42_N12
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\ExtWord~input_o\ & ((\Y_srl[63]~14_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (((!\ShiftFN[0]~input_o\ & \srl64[6][43]~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_srl[63]~14_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \srl64[6][43]~361_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X43_Y42_N22
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux20~3_combout\ & (\A[31]~input_o\)) # (!\Mux20~3_combout\ & ((\sra64[6][43]~138_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \sra64[6][43]~138_combout\,
	datad => \Mux20~3_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X40_Y48_N8
\sll64[2][43]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][43]~244_combout\ = (\B[1]~input_o\ & (\A[41]~input_o\)) # (!\B[1]~input_o\ & ((\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[43]~input_o\,
	combout => \sll64[2][43]~244_combout\);

-- Location: LCCOMB_X40_Y48_N10
\sll64[2][43]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][43]~245_combout\ = (\B[0]~input_o\ & ((\sll64[2][42]~238_combout\))) # (!\B[0]~input_o\ & (\sll64[2][43]~244_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][43]~244_combout\,
	datad => \sll64[2][42]~238_combout\,
	combout => \sll64[2][43]~245_combout\);

-- Location: LCCOMB_X40_Y47_N26
\sll64[3][43]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][43]~246_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\sll64[2][39]~220_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][43]~245_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][39]~220_combout\,
	datab => \sll64[2][43]~245_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][43]~246_combout\);

-- Location: LCCOMB_X40_Y47_N0
\sll64[4][43]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][43]~243_combout\ = (\B[2]~input_o\ & (\sll64[2][31]~183_combout\)) # (!\B[2]~input_o\ & (((!\ExtWord~input_o\ & \sll64[2][35]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][31]~183_combout\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][35]~202_combout\,
	combout => \sll64[4][43]~243_combout\);

-- Location: LCCOMB_X40_Y47_N28
\sll64[4][43]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][43]~247_combout\ = (\B[3]~input_o\ & ((\sll64[4][43]~243_combout\))) # (!\B[3]~input_o\ & (\sll64[3][43]~246_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][43]~246_combout\,
	datab => \sll64[4][43]~243_combout\,
	datac => \B[3]~input_o\,
	combout => \sll64[4][43]~247_combout\);

-- Location: LCCOMB_X41_Y49_N0
\sll64[5][11]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][11]~242_combout\ = (!\B[4]~input_o\ & ((\sll64[4][11]~81_combout\) # ((\Mux58~9_combout\ & \sll64[2][7]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][11]~81_combout\,
	datab => \Mux58~9_combout\,
	datac => \B[4]~input_o\,
	datad => \sll64[2][7]~67_combout\,
	combout => \sll64[5][11]~242_combout\);

-- Location: LCCOMB_X41_Y49_N26
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux18~0_combout\ & (((!\Mux52~2_combout\)))) # (!\Mux18~0_combout\ & ((\Mux52~2_combout\ & (\sll64[4][43]~247_combout\)) # (!\Mux52~2_combout\ & ((\sll64[5][11]~242_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][43]~247_combout\,
	datab => \Mux18~0_combout\,
	datac => \Mux52~2_combout\,
	datad => \sll64[5][11]~242_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X41_Y49_N28
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux18~0_combout\ & ((\Mux20~0_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux20~0_combout\ & ((\sll64[4][27]~166_combout\))))) # (!\Mux18~0_combout\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux18~0_combout\,
	datac => \Mux20~0_combout\,
	datad => \sll64[4][27]~166_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X39_Y49_N8
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux20~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X39_Y49_N2
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux20~2_combout\) # ((\Mux20~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~4_combout\,
	datac => \Mux20~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X40_Y48_N4
\sll64[2][44]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][44]~250_combout\ = (\B[1]~input_o\ & (\A[42]~input_o\)) # (!\B[1]~input_o\ & ((\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[42]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][44]~250_combout\);

-- Location: LCCOMB_X40_Y48_N22
\sll64[2][44]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][44]~251_combout\ = (\B[0]~input_o\ & ((\sll64[2][43]~244_combout\))) # (!\B[0]~input_o\ & (\sll64[2][44]~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][44]~250_combout\,
	datac => \sll64[2][43]~244_combout\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][44]~251_combout\);

-- Location: LCCOMB_X41_Y48_N4
\sll64[3][44]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][44]~252_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][40]~226_combout\))) # (!\B[2]~input_o\ & (\sll64[2][44]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][44]~251_combout\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][40]~226_combout\,
	combout => \sll64[3][44]~252_combout\);

-- Location: LCCOMB_X41_Y48_N2
\sll64[4][44]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][44]~249_combout\ = (\B[2]~input_o\ & (\sll64[2][32]~189_combout\)) # (!\B[2]~input_o\ & (((\sll64[2][36]~224_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][32]~189_combout\,
	datab => \sll64[2][36]~224_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \sll64[4][44]~249_combout\);

-- Location: LCCOMB_X41_Y48_N14
\sll64[4][44]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][44]~253_combout\ = (\B[3]~input_o\ & ((\sll64[4][44]~249_combout\))) # (!\B[3]~input_o\ & (\sll64[3][44]~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[3][44]~252_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[4][44]~249_combout\,
	combout => \sll64[4][44]~253_combout\);

-- Location: LCCOMB_X42_Y46_N12
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux18~0_combout\ & (((\sll64[4][28]~171_combout\) # (!\Mux52~2_combout\)))) # (!\Mux18~0_combout\ & (\sll64[4][44]~253_combout\ & (\Mux52~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \sll64[4][44]~253_combout\,
	datac => \Mux52~2_combout\,
	datad => \sll64[4][28]~171_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X42_Y46_N10
\sll64[5][12]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][12]~248_combout\ = (!\B[4]~input_o\ & ((\sll64[4][12]~84_combout\) # ((\B[3]~input_o\ & \sll64[3][4]~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sll64[4][12]~84_combout\,
	datad => \sll64[3][4]~313_combout\,
	combout => \sll64[5][12]~248_combout\);

-- Location: LCCOMB_X42_Y46_N22
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & ((\Y_sll[31]~7_combout\) # ((\Mux52~2_combout\)))) # (!\Mux19~0_combout\ & (((!\Mux52~2_combout\ & \sll64[5][12]~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux19~0_combout\,
	datac => \Mux52~2_combout\,
	datad => \sll64[5][12]~248_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X42_Y46_N0
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux19~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[44]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[44]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X47_Y42_N26
\sra64[4][60]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][60]~124_combout\ = (\sll64[4][16]~53_combout\ & ((\B[1]~input_o\ & ((\srl64[1][62]~82_combout\))) # (!\B[1]~input_o\ & (\srl64[1][60]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][60]~85_combout\,
	datab => \B[1]~input_o\,
	datac => \sll64[4][16]~53_combout\,
	datad => \srl64[1][62]~82_combout\,
	combout => \sra64[4][60]~124_combout\);

-- Location: LCCOMB_X48_Y42_N16
\srl64[6][44]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][44]~362_combout\ = (!\shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\sra64[4][60]~124_combout\)) # (!\B[4]~input_o\ & ((\srl64[4][44]~323_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \sra64[4][60]~124_combout\,
	datac => \B[4]~input_o\,
	datad => \srl64[4][44]~323_combout\,
	combout => \srl64[6][44]~362_combout\);

-- Location: LCCOMB_X48_Y42_N26
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][44]~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][44]~362_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X48_Y42_N4
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~3_combout\ & (((\A[31]~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux19~3_combout\ & (\ShiftFN[0]~input_o\ & ((\sra64[6][44]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \sra64[6][44]~139_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X42_Y46_N18
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~2_combout\) # ((\Mux19~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux19~2_combout\,
	datac => \Mux19~4_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X40_Y46_N4
\sll64[4][45]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][45]~255_combout\ = (\B[2]~input_o\ & (((\sll64[2][33]~192_combout\)))) # (!\B[2]~input_o\ & (\sll64[2][37]~211_combout\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][37]~211_combout\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][33]~192_combout\,
	combout => \sll64[4][45]~255_combout\);

-- Location: LCCOMB_X40_Y48_N24
\sll64[2][45]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][45]~256_combout\ = (\B[1]~input_o\ & ((\A[43]~input_o\))) # (!\B[1]~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[45]~input_o\,
	datad => \A[43]~input_o\,
	combout => \sll64[2][45]~256_combout\);

-- Location: LCCOMB_X40_Y48_N26
\sll64[2][45]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][45]~257_combout\ = (\B[0]~input_o\ & (\sll64[2][44]~250_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][45]~256_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][44]~250_combout\,
	datad => \sll64[2][45]~256_combout\,
	combout => \sll64[2][45]~257_combout\);

-- Location: LCCOMB_X40_Y46_N6
\sll64[3][45]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][45]~258_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\sll64[2][41]~232_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][45]~257_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][41]~232_combout\,
	datab => \sll64[2][45]~257_combout\,
	datac => \B[2]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \sll64[3][45]~258_combout\);

-- Location: LCCOMB_X40_Y46_N24
\sll64[4][45]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][45]~259_combout\ = (\B[3]~input_o\ & (\sll64[4][45]~255_combout\)) # (!\B[3]~input_o\ & ((\sll64[3][45]~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \sll64[4][45]~255_combout\,
	datad => \sll64[3][45]~258_combout\,
	combout => \sll64[4][45]~259_combout\);

-- Location: LCCOMB_X41_Y44_N2
\sll64[5][13]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][13]~254_combout\ = (!\B[4]~input_o\ & ((\sll64[4][13]~88_combout\) # ((\B[3]~input_o\ & \sll64[3][5]~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sll64[3][5]~315_combout\,
	datad => \sll64[4][13]~88_combout\,
	combout => \sll64[5][13]~254_combout\);

-- Location: LCCOMB_X41_Y44_N12
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (!\Mux52~2_combout\)) # (!\Mux18~0_combout\ & ((\Mux52~2_combout\ & (\sll64[4][45]~259_combout\)) # (!\Mux52~2_combout\ & ((\sll64[5][13]~254_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[4][45]~259_combout\,
	datad => \sll64[5][13]~254_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X41_Y44_N14
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux18~0_combout\ & ((\Mux18~1_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux18~1_combout\ & ((\sll64[4][29]~176_combout\))))) # (!\Mux18~0_combout\ & (((\Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Y_sll[31]~7_combout\,
	datac => \Mux18~1_combout\,
	datad => \sll64[4][29]~176_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X45_Y47_N12
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux18~2_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[45]~input_o\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X47_Y41_N12
\srl64[6][45]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][45]~363_combout\ = (\sll64[4][16]~53_combout\ & (!\shamt[5]~0_combout\ & (\srl64[2][61]~153_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][16]~53_combout\,
	datab => \shamt[5]~0_combout\,
	datac => \srl64[2][61]~153_combout\,
	datad => \B[4]~input_o\,
	combout => \srl64[6][45]~363_combout\);

-- Location: LCCOMB_X47_Y41_N22
\srl64[6][45]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][45]~364_combout\ = (\srl64[6][45]~363_combout\) # ((\sll64[6][1]~48_combout\ & \srl64[4][45]~325_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][45]~363_combout\,
	datac => \sll64[6][1]~48_combout\,
	datad => \srl64[4][45]~325_combout\,
	combout => \srl64[6][45]~364_combout\);

-- Location: LCCOMB_X40_Y41_N30
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\ExtWord~input_o\ & ((\Y_srl[63]~14_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (((\srl64[6][45]~364_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ExtWord~input_o\,
	datac => \srl64[6][45]~364_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X40_Y41_N8
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux18~4_combout\ & (\A[31]~input_o\)) # (!\Mux18~4_combout\ & ((\sra64[6][45]~140_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux18~4_combout\,
	datad => \sra64[6][45]~140_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X40_Y41_N18
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux18~3_combout\) # ((\Mux18~5_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \Mux18~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X48_Y44_N28
\srl64[6][46]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][46]~381_combout\ = (\srl64[5][46]~328_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[5][46]~328_combout\,
	combout => \srl64[6][46]~381_combout\);

-- Location: LCCOMB_X48_Y44_N2
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][46]~381_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_srl[63]~14_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][46]~381_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X48_Y44_N20
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux17~3_combout\ & (\A[31]~input_o\)) # (!\Mux17~3_combout\ & ((\sra64[6][46]~141_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Mux17~3_combout\,
	datac => \A[31]~input_o\,
	datad => \sra64[6][46]~141_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X46_Y44_N6
\sll64[5][14]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][14]~260_combout\ = (!\B[4]~input_o\ & ((\sll64[4][14]~93_combout\) # ((\sll64[3][6]~94_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][14]~93_combout\,
	datab => \sll64[3][6]~94_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \sll64[5][14]~260_combout\);

-- Location: LCCOMB_X39_Y47_N8
\sll64[4][46]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][46]~261_combout\ = (\B[2]~input_o\ & (((\sll64[2][34]~198_combout\)))) # (!\B[2]~input_o\ & (\sll64[2][38]~237_combout\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][38]~237_combout\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][34]~198_combout\,
	combout => \sll64[4][46]~261_combout\);

-- Location: LCCOMB_X45_Y48_N26
\sll64[2][46]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][46]~262_combout\ = (\B[1]~input_o\ & ((\A[44]~input_o\))) # (!\B[1]~input_o\ & (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[44]~input_o\,
	combout => \sll64[2][46]~262_combout\);

-- Location: LCCOMB_X40_Y48_N28
\sll64[2][46]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][46]~263_combout\ = (\B[0]~input_o\ & (\sll64[2][45]~256_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][46]~262_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][45]~256_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][46]~262_combout\,
	combout => \sll64[2][46]~263_combout\);

-- Location: LCCOMB_X39_Y47_N10
\sll64[3][46]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][46]~264_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\sll64[2][42]~239_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][46]~263_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][42]~239_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][46]~263_combout\,
	combout => \sll64[3][46]~264_combout\);

-- Location: LCCOMB_X39_Y47_N20
\sll64[4][46]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][46]~265_combout\ = (\B[3]~input_o\ & (\sll64[4][46]~261_combout\)) # (!\B[3]~input_o\ & ((\sll64[3][46]~264_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[4][46]~261_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[3][46]~264_combout\,
	combout => \sll64[4][46]~265_combout\);

-- Location: LCCOMB_X40_Y44_N12
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux52~2_combout\ & ((\Mux18~0_combout\ & ((\sll64[4][30]~181_combout\))) # (!\Mux18~0_combout\ & (\sll64[4][46]~265_combout\)))) # (!\Mux52~2_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][46]~265_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[4][30]~181_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X40_Y44_N14
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux52~2_combout\ & (((\Mux17~0_combout\)))) # (!\Mux52~2_combout\ & ((\Mux17~0_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux17~0_combout\ & ((\sll64[5][14]~260_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[5][14]~260_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X48_Y44_N0
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux17~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[46]~input_o\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X48_Y44_N14
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~2_combout\) # ((\Mux17~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux17~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X41_Y49_N6
\sll64[5][15]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[5][15]~266_combout\ = (!\B[4]~input_o\ & ((\sll64[4][15]~98_combout\) # ((\sll64[3][7]~99_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][7]~99_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sll64[4][15]~98_combout\,
	combout => \sll64[5][15]~266_combout\);

-- Location: LCCOMB_X40_Y47_N6
\sll64[4][47]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][47]~267_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\sll64[2][35]~202_combout\))) # (!\B[3]~input_o\ & (\sll64[2][43]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \sll64[2][43]~245_combout\,
	datad => \sll64[2][35]~202_combout\,
	combout => \sll64[4][47]~267_combout\);

-- Location: LCCOMB_X45_Y47_N30
\sll64[2][47]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][47]~268_combout\ = (\B[1]~input_o\ & ((\A[45]~input_o\))) # (!\B[1]~input_o\ & (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[45]~input_o\,
	combout => \sll64[2][47]~268_combout\);

-- Location: LCCOMB_X40_Y48_N30
\sll64[2][47]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][47]~269_combout\ = (\B[0]~input_o\ & ((\sll64[2][46]~262_combout\))) # (!\B[0]~input_o\ & (\sll64[2][47]~268_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][47]~268_combout\,
	datad => \sll64[2][46]~262_combout\,
	combout => \sll64[2][47]~269_combout\);

-- Location: LCCOMB_X40_Y47_N16
\sll64[4][47]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][47]~270_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\sll64[2][39]~220_combout\)) # (!\B[3]~input_o\ & ((\sll64[2][47]~269_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][39]~220_combout\,
	datab => \sll64[2][47]~269_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \sll64[4][47]~270_combout\);

-- Location: LCCOMB_X42_Y47_N24
\sll64[4][47]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][47]~271_combout\ = (!\ExtWord~input_o\ & ((\sll64[4][47]~267_combout\) # (\sll64[4][47]~270_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][47]~267_combout\,
	datac => \ExtWord~input_o\,
	datad => \sll64[4][47]~270_combout\,
	combout => \sll64[4][47]~271_combout\);

-- Location: LCCOMB_X41_Y49_N24
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux18~0_combout\ & (((!\Mux52~2_combout\)))) # (!\Mux18~0_combout\ & ((\Mux52~2_combout\ & ((\sll64[4][47]~271_combout\))) # (!\Mux52~2_combout\ & (\sll64[5][15]~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][15]~266_combout\,
	datab => \Mux18~0_combout\,
	datac => \Mux52~2_combout\,
	datad => \sll64[4][47]~271_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X41_Y49_N2
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux18~0_combout\ & ((\Mux16~0_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux16~0_combout\ & ((\sll64[4][31]~185_combout\))))) # (!\Mux18~0_combout\ & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux18~0_combout\,
	datac => \sll64[4][31]~185_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X43_Y49_N22
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux16~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[47]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X47_Y43_N30
\srl64[6][47]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][47]~382_combout\ = (\B[5]~input_o\ & (\ExtWord~input_o\ & ((\srl64[5][47]~330_combout\) # (!\sra64[5][47]~95_combout\)))) # (!\B[5]~input_o\ & (((\srl64[5][47]~330_combout\) # (!\sra64[5][47]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[5][47]~330_combout\,
	datad => \sra64[5][47]~95_combout\,
	combout => \srl64[6][47]~382_combout\);

-- Location: LCCOMB_X47_Y43_N6
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[63]~14_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][47]~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[6][47]~382_combout\,
	datad => \Y_srl[63]~14_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X47_Y43_N0
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux16~3_combout\ & (\A[31]~input_o\)) # (!\Mux16~3_combout\ & ((\sra64[6][47]~97_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \sra64[6][47]~97_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X43_Y49_N0
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux16~4_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X48_Y45_N8
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][48]~334_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][48]~334_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X48_Y45_N10
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux15~0_combout\ & (\A[31]~input_o\)) # (!\Mux15~0_combout\ & ((\sra64[6][48]~99_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux15~0_combout\,
	datad => \sra64[6][48]~99_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X39_Y49_N20
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\ShiftFN[1]~input_o\) # ((\ExtWord~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X40_Y46_N18
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\B[5]~input_o\ & (((!\B[4]~input_o\ & \B[3]~input_o\)) # (!\ExtWord~input_o\))) # (!\B[5]~input_o\ & (((!\B[4]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X45_Y48_N28
\sll64[2][48]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][48]~272_combout\ = (\B[1]~input_o\ & ((\A[46]~input_o\))) # (!\B[1]~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[46]~input_o\,
	combout => \sll64[2][48]~272_combout\);

-- Location: LCCOMB_X39_Y48_N6
\sll64[2][48]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][48]~273_combout\ = (\B[0]~input_o\ & (\sll64[2][47]~268_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][48]~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \sll64[2][47]~268_combout\,
	datad => \sll64[2][48]~272_combout\,
	combout => \sll64[2][48]~273_combout\);

-- Location: LCCOMB_X41_Y48_N16
\sll64[3][48]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][48]~274_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][44]~251_combout\))) # (!\B[2]~input_o\ & (\sll64[2][48]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][48]~273_combout\,
	datab => \ExtWord~input_o\,
	datac => \sll64[2][44]~251_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][48]~274_combout\);

-- Location: LCCOMB_X41_Y48_N10
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux13~1_combout\ & (((!\sll64[6][1]~48_combout\)))) # (!\Mux13~1_combout\ & ((\sll64[6][1]~48_combout\ & (\sll64[3][48]~274_combout\)) # (!\sll64[6][1]~48_combout\ & ((\sll64[4][32]~327_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \sll64[3][48]~274_combout\,
	datac => \sll64[6][1]~48_combout\,
	datad => \sll64[4][32]~327_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X41_Y48_N28
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux13~1_combout\ & ((\Mux15~2_combout\ & (\sll64[5][16]~106_combout\)) # (!\Mux15~2_combout\ & ((\sll64[3][40]~227_combout\))))) # (!\Mux13~1_combout\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \sll64[5][16]~106_combout\,
	datac => \Mux15~2_combout\,
	datad => \sll64[3][40]~227_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X36_Y47_N16
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux13~0_combout\ & (((\Mux61~1_combout\)))) # (!\Mux13~0_combout\ & ((\Mux61~1_combout\ & (\Mux15~3_combout\)) # (!\Mux61~1_combout\ & ((\A[48]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux61~1_combout\,
	datad => \A[48]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X36_Y47_N26
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux13~0_combout\ & ((\Mux15~4_combout\ & ((\Y_sll[31]~7_combout\))) # (!\Mux15~4_combout\ & (\Mux15~1_combout\)))) # (!\Mux13~0_combout\ & (((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux13~0_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X39_Y43_N12
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][49]~336_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][49]~336_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X39_Y43_N22
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\A[31]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux14~0_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[6][49]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][49]~102_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X38_Y45_N2
\sll64[2][49]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][49]~275_combout\ = (\B[1]~input_o\ & (\A[47]~input_o\)) # (!\B[1]~input_o\ & ((\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[47]~input_o\,
	datac => \A[49]~input_o\,
	combout => \sll64[2][49]~275_combout\);

-- Location: LCCOMB_X39_Y48_N0
\sll64[2][49]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][49]~276_combout\ = (\B[0]~input_o\ & ((\sll64[2][48]~272_combout\))) # (!\B[0]~input_o\ & (\sll64[2][49]~275_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][49]~275_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][48]~272_combout\,
	combout => \sll64[2][49]~276_combout\);

-- Location: LCCOMB_X40_Y46_N28
\sll64[3][49]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][49]~277_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\sll64[2][45]~257_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][49]~276_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sll64[2][45]~257_combout\,
	datad => \sll64[2][49]~276_combout\,
	combout => \sll64[3][49]~277_combout\);

-- Location: LCCOMB_X40_Y46_N30
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\sll64[6][1]~48_combout\ & (\sll64[3][49]~277_combout\ & (!\Mux13~1_combout\))) # (!\sll64[6][1]~48_combout\ & (((\Mux13~1_combout\) # (\sll64[4][33]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \sll64[3][49]~277_combout\,
	datac => \Mux13~1_combout\,
	datad => \sll64[4][33]~195_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X40_Y46_N0
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & (((\sll64[5][17]~111_combout\)) # (!\Mux13~1_combout\))) # (!\Mux14~2_combout\ & (\Mux13~1_combout\ & ((\sll64[3][41]~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux13~1_combout\,
	datac => \sll64[5][17]~111_combout\,
	datad => \sll64[3][41]~233_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X36_Y47_N12
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux61~1_combout\ & ((\Mux13~0_combout\) # ((\Mux14~3_combout\)))) # (!\Mux61~1_combout\ & (!\Mux13~0_combout\ & (\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~1_combout\,
	datab => \Mux13~0_combout\,
	datac => \A[49]~input_o\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X36_Y47_N22
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux13~0_combout\ & ((\Mux14~4_combout\ & ((\Y_sll[31]~7_combout\))) # (!\Mux14~4_combout\ & (\Mux14~1_combout\)))) # (!\Mux13~0_combout\ & (((\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux13~0_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X46_Y41_N26
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][50]~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][50]~338_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X46_Y41_N28
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & (((\A[31]~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux13~2_combout\ & (\ShiftFN[0]~input_o\ & (\sra64[6][50]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][50]~106_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X45_Y48_N22
\sll64[2][50]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][50]~278_combout\ = (\B[1]~input_o\ & (\A[48]~input_o\)) # (!\B[1]~input_o\ & ((\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \sll64[2][50]~278_combout\);

-- Location: LCCOMB_X39_Y48_N18
\sll64[2][50]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][50]~279_combout\ = (\B[0]~input_o\ & (\sll64[2][49]~275_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][50]~278_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][49]~275_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][50]~278_combout\,
	combout => \sll64[2][50]~279_combout\);

-- Location: LCCOMB_X39_Y47_N30
\sll64[3][50]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][50]~280_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][46]~263_combout\))) # (!\B[2]~input_o\ & (\sll64[2][50]~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][50]~279_combout\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][46]~263_combout\,
	combout => \sll64[3][50]~280_combout\);

-- Location: LCCOMB_X39_Y47_N0
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~1_combout\ & (((!\sll64[6][1]~48_combout\)))) # (!\Mux13~1_combout\ & ((\sll64[6][1]~48_combout\ & (\sll64[3][50]~280_combout\)) # (!\sll64[6][1]~48_combout\ & ((\sll64[4][34]~331_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][50]~280_combout\,
	datab => \Mux13~1_combout\,
	datac => \sll64[6][1]~48_combout\,
	datad => \sll64[4][34]~331_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X38_Y48_N24
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~1_combout\ & ((\Mux13~4_combout\ & (\sll64[5][18]~117_combout\)) # (!\Mux13~4_combout\ & ((\sll64[3][42]~240_combout\))))) # (!\Mux13~1_combout\ & (((\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][18]~117_combout\,
	datab => \Mux13~1_combout\,
	datac => \sll64[3][42]~240_combout\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X38_Y48_N18
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux13~0_combout\ & (((\Mux61~1_combout\)))) # (!\Mux13~0_combout\ & ((\Mux61~1_combout\ & ((\Mux13~5_combout\))) # (!\Mux61~1_combout\ & (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \Mux13~5_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X38_Y48_N4
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux13~0_combout\ & ((\Mux13~6_combout\ & ((\Y_sll[31]~7_combout\))) # (!\Mux13~6_combout\ & (\Mux13~3_combout\)))) # (!\Mux13~0_combout\ & (((\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Mux13~0_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux13~6_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X38_Y45_N12
\sll64[2][51]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][51]~281_combout\ = (\B[1]~input_o\ & (\A[49]~input_o\)) # (!\B[1]~input_o\ & ((\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[49]~input_o\,
	datad => \A[51]~input_o\,
	combout => \sll64[2][51]~281_combout\);

-- Location: LCCOMB_X39_Y48_N12
\sll64[2][51]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][51]~282_combout\ = (\B[0]~input_o\ & ((\sll64[2][50]~278_combout\))) # (!\B[0]~input_o\ & (\sll64[2][51]~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][51]~281_combout\,
	datab => \B[0]~input_o\,
	datad => \sll64[2][50]~278_combout\,
	combout => \sll64[2][51]~282_combout\);

-- Location: LCCOMB_X40_Y47_N10
\sll64[3][51]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][51]~283_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][47]~269_combout\))) # (!\B[2]~input_o\ & (\sll64[2][51]~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][51]~282_combout\,
	datac => \sll64[2][47]~269_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][51]~283_combout\);

-- Location: LCCOMB_X40_Y47_N12
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\sll64[6][1]~48_combout\ & (\sll64[3][51]~283_combout\ & ((!\Mux13~1_combout\)))) # (!\sll64[6][1]~48_combout\ & (((\sll64[4][35]~204_combout\) # (\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][51]~283_combout\,
	datab => \sll64[4][35]~204_combout\,
	datac => \sll64[6][1]~48_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X38_Y48_N30
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux13~1_combout\ & ((\Mux12~2_combout\ & ((\sll64[5][19]~123_combout\))) # (!\Mux12~2_combout\ & (\sll64[3][43]~246_combout\)))) # (!\Mux13~1_combout\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][43]~246_combout\,
	datab => \sll64[5][19]~123_combout\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X38_Y48_N16
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux13~0_combout\ & (((\Mux61~1_combout\)))) # (!\Mux13~0_combout\ & ((\Mux61~1_combout\ & (\Mux12~3_combout\)) # (!\Mux61~1_combout\ & ((\A[51]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \Mux13~0_combout\,
	datac => \A[51]~input_o\,
	datad => \Mux61~1_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X43_Y41_N26
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][51]~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][51]~340_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X43_Y41_N28
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\A[31]~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux12~0_combout\ & (\ShiftFN[0]~input_o\ & (\sra64[6][51]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][51]~108_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X38_Y48_N26
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~4_combout\ & ((\Y_sll[31]~7_combout\) # ((!\Mux13~0_combout\)))) # (!\Mux12~4_combout\ & (((\Mux13~0_combout\ & \Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux12~4_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X41_Y43_N12
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[63]~14_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][52]~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[6][52]~368_combout\,
	datac => \Y_srl[63]~14_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X41_Y43_N30
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\A[31]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux11~0_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[6][52]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][52]~142_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X38_Y45_N6
\sll64[2][52]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][52]~284_combout\ = (\B[1]~input_o\ & ((\A[50]~input_o\))) # (!\B[1]~input_o\ & (\A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[52]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \sll64[2][52]~284_combout\);

-- Location: LCCOMB_X39_Y48_N30
\sll64[2][52]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][52]~285_combout\ = (\B[0]~input_o\ & (\sll64[2][51]~281_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][52]~284_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][51]~281_combout\,
	datac => \sll64[2][52]~284_combout\,
	datad => \B[0]~input_o\,
	combout => \sll64[2][52]~285_combout\);

-- Location: LCCOMB_X39_Y48_N16
\sll64[3][52]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][52]~286_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][48]~273_combout\))) # (!\B[2]~input_o\ & (\sll64[2][52]~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sll64[2][52]~285_combout\,
	datad => \sll64[2][48]~273_combout\,
	combout => \sll64[3][52]~286_combout\);

-- Location: LCCOMB_X41_Y48_N30
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux13~1_combout\ & (!\sll64[6][1]~48_combout\)) # (!\Mux13~1_combout\ & ((\sll64[6][1]~48_combout\ & (\sll64[3][52]~286_combout\)) # (!\sll64[6][1]~48_combout\ & ((\sll64[4][36]~208_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \sll64[6][1]~48_combout\,
	datac => \sll64[3][52]~286_combout\,
	datad => \sll64[4][36]~208_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X41_Y48_N24
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux13~1_combout\ & ((\Mux11~2_combout\ & ((\sll64[5][20]~321_combout\))) # (!\Mux11~2_combout\ & (\sll64[3][44]~252_combout\)))) # (!\Mux13~1_combout\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \sll64[3][44]~252_combout\,
	datac => \Mux11~2_combout\,
	datad => \sll64[5][20]~321_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X36_Y47_N24
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux61~1_combout\ & ((\Mux11~3_combout\) # ((\Mux13~0_combout\)))) # (!\Mux61~1_combout\ & (((\A[52]~input_o\ & !\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \A[52]~input_o\,
	datac => \Mux61~1_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X36_Y47_N2
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux13~0_combout\ & ((\Mux11~4_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux11~4_combout\ & ((\Mux11~1_combout\))))) # (!\Mux13~0_combout\ & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X38_Y45_N8
\sll64[2][53]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][53]~287_combout\ = (\B[1]~input_o\ & (\A[51]~input_o\)) # (!\B[1]~input_o\ & ((\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \sll64[2][53]~287_combout\);

-- Location: LCCOMB_X39_Y45_N2
\sll64[2][53]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][53]~288_combout\ = (\B[0]~input_o\ & (\sll64[2][52]~284_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][53]~287_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][52]~284_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][53]~287_combout\,
	combout => \sll64[2][53]~288_combout\);

-- Location: LCCOMB_X40_Y46_N26
\sll64[3][53]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][53]~289_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][49]~276_combout\))) # (!\B[2]~input_o\ & (\sll64[2][53]~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[2][53]~288_combout\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][49]~276_combout\,
	combout => \sll64[3][53]~289_combout\);

-- Location: LCCOMB_X40_Y46_N20
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux13~1_combout\ & (!\sll64[6][1]~48_combout\)) # (!\Mux13~1_combout\ & ((\sll64[6][1]~48_combout\ & (\sll64[3][53]~289_combout\)) # (!\sll64[6][1]~48_combout\ & ((\sll64[4][37]~213_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \sll64[6][1]~48_combout\,
	datac => \sll64[3][53]~289_combout\,
	datad => \sll64[4][37]~213_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X40_Y46_N22
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & (((\sll64[5][21]~322_combout\) # (!\Mux13~1_combout\)))) # (!\Mux10~2_combout\ & (\sll64[3][45]~258_combout\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][45]~258_combout\,
	datab => \Mux10~2_combout\,
	datac => \sll64[5][21]~322_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X38_Y48_N28
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux13~0_combout\ & (((\Mux61~1_combout\)))) # (!\Mux13~0_combout\ & ((\Mux61~1_combout\ & ((\Mux10~3_combout\))) # (!\Mux61~1_combout\ & (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \Mux10~3_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X46_Y41_N30
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][53]~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][53]~369_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X46_Y41_N16
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux10~0_combout\ & ((\A[31]~input_o\))) # (!\Mux10~0_combout\ & (\sra64[6][53]~144_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][53]~144_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X38_Y48_N22
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~4_combout\ & ((\Y_sll[31]~7_combout\) # ((!\Mux13~0_combout\)))) # (!\Mux10~4_combout\ & (((\Mux13~0_combout\ & \Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux10~4_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X38_Y45_N18
\sll64[2][54]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][54]~290_combout\ = (\B[1]~input_o\ & (\A[52]~input_o\)) # (!\B[1]~input_o\ & ((\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[52]~input_o\,
	datad => \A[54]~input_o\,
	combout => \sll64[2][54]~290_combout\);

-- Location: LCCOMB_X39_Y45_N20
\sll64[2][54]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][54]~291_combout\ = (\B[0]~input_o\ & ((\sll64[2][53]~287_combout\))) # (!\B[0]~input_o\ & (\sll64[2][54]~290_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][54]~290_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][53]~287_combout\,
	combout => \sll64[2][54]~291_combout\);

-- Location: LCCOMB_X39_Y45_N14
\sll64[3][54]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][54]~292_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & (\sll64[2][50]~279_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][54]~291_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][50]~279_combout\,
	datab => \sll64[2][54]~291_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][54]~292_combout\);

-- Location: LCCOMB_X39_Y47_N2
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux13~1_combout\ & (((!\sll64[6][1]~48_combout\)))) # (!\Mux13~1_combout\ & ((\sll64[6][1]~48_combout\ & ((\sll64[3][54]~292_combout\))) # (!\sll64[6][1]~48_combout\ & (\sll64[4][38]~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \sll64[4][38]~217_combout\,
	datac => \sll64[6][1]~48_combout\,
	datad => \sll64[3][54]~292_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X36_Y47_N28
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux13~1_combout\ & ((\Mux9~2_combout\ & ((\sll64[5][22]~323_combout\))) # (!\Mux9~2_combout\ & (\sll64[3][46]~264_combout\)))) # (!\Mux13~1_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][46]~264_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux9~2_combout\,
	datad => \sll64[5][22]~323_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X36_Y47_N30
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux13~0_combout\ & (((\Mux61~1_combout\)))) # (!\Mux13~0_combout\ & ((\Mux61~1_combout\ & ((\Mux9~3_combout\))) # (!\Mux61~1_combout\ & (\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \Mux61~1_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X46_Y42_N22
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][54]~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][54]~370_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X36_Y43_N24
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((\A[31]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux9~0_combout\ & (((\sra64[6][54]~145_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \sra64[6][54]~145_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X36_Y47_N8
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~4_combout\ & (((\Y_sll[31]~7_combout\)) # (!\Mux13~0_combout\))) # (!\Mux9~4_combout\ & (\Mux13~0_combout\ & ((\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datab => \Mux13~0_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X48_Y43_N22
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][55]~371_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_srl[63]~14_combout\,
	datac => \srl64[6][55]~371_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X36_Y47_N10
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux8~0_combout\ & (\A[31]~input_o\)) # (!\Mux8~0_combout\ & ((\sra64[6][55]~146_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][55]~146_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X38_Y45_N28
\sll64[2][56]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][56]~294_combout\ = (\B[1]~input_o\ & ((\A[53]~input_o\))) # (!\B[1]~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[55]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \sll64[2][56]~294_combout\);

-- Location: LCCOMB_X39_Y45_N8
\sll64[2][55]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][55]~295_combout\ = (\B[0]~input_o\ & ((\sll64[2][54]~290_combout\))) # (!\B[0]~input_o\ & (\sll64[2][56]~294_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][56]~294_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][54]~290_combout\,
	combout => \sll64[2][55]~295_combout\);

-- Location: LCCOMB_X40_Y47_N24
\sll64[3][55]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][55]~296_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][51]~282_combout\))) # (!\B[2]~input_o\ & (\sll64[2][55]~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][55]~295_combout\,
	datab => \sll64[2][51]~282_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][55]~296_combout\);

-- Location: LCCOMB_X40_Y47_N18
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux13~1_combout\ & (((!\sll64[6][1]~48_combout\)))) # (!\Mux13~1_combout\ & ((\sll64[6][1]~48_combout\ & ((\sll64[3][55]~296_combout\))) # (!\sll64[6][1]~48_combout\ & (\sll64[4][39]~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \sll64[4][39]~221_combout\,
	datac => \sll64[6][1]~48_combout\,
	datad => \sll64[3][55]~296_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X40_Y47_N30
\sll64[3][47]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][47]~293_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][43]~245_combout\))) # (!\B[2]~input_o\ & (\sll64[2][47]~269_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][47]~269_combout\,
	datab => \ExtWord~input_o\,
	datac => \sll64[2][43]~245_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][47]~293_combout\);

-- Location: LCCOMB_X36_Y47_N20
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux13~1_combout\ & ((\Mux8~2_combout\ & (\sll64[5][23]~324_combout\)) # (!\Mux8~2_combout\ & ((\sll64[3][47]~293_combout\))))) # (!\Mux13~1_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[5][23]~324_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux8~2_combout\,
	datad => \sll64[3][47]~293_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X36_Y47_N6
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux61~1_combout\ & ((\Mux13~0_combout\) # ((\Mux8~3_combout\)))) # (!\Mux61~1_combout\ & (!\Mux13~0_combout\ & (\A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~1_combout\,
	datab => \Mux13~0_combout\,
	datac => \A[55]~input_o\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X36_Y47_N0
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux13~0_combout\ & ((\Mux8~4_combout\ & ((\Y_sll[31]~7_combout\))) # (!\Mux8~4_combout\ & (\Mux8~1_combout\)))) # (!\Mux13~0_combout\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux13~0_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X42_Y45_N10
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][56]~372_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][56]~372_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X42_Y45_N28
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux7~0_combout\ & ((\A[31]~input_o\))) # (!\Mux7~0_combout\ & (\sra64[6][56]~147_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][56]~147_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X40_Y45_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ShiftFN[0]~input_o\ & ((\B[5]~input_o\) # (\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X39_Y48_N2
\sll64[2][52]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][52]~297_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\sll64[2][51]~281_combout\))) # (!\B[0]~input_o\ & (\sll64[2][52]~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[0]~input_o\,
	datac => \sll64[2][52]~284_combout\,
	datad => \sll64[2][51]~281_combout\,
	combout => \sll64[2][52]~297_combout\);

-- Location: LCCOMB_X41_Y45_N16
\sll64[2][57]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][57]~298_combout\ = (\B[1]~input_o\ & (\A[54]~input_o\)) # (!\B[1]~input_o\ & ((\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[56]~input_o\,
	combout => \sll64[2][57]~298_combout\);

-- Location: LCCOMB_X41_Y45_N18
\sll64[2][56]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][56]~299_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\sll64[2][56]~294_combout\))) # (!\B[0]~input_o\ & (\sll64[2][57]~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][57]~298_combout\,
	datac => \sll64[2][56]~294_combout\,
	datad => \ExtWord~input_o\,
	combout => \sll64[2][56]~299_combout\);

-- Location: LCCOMB_X41_Y48_N18
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux58~0_combout\ & (((!\srl64[5][62]~134_combout\)))) # (!\Mux58~0_combout\ & ((\srl64[5][62]~134_combout\ & (\sll64[2][56]~299_combout\)) # (!\srl64[5][62]~134_combout\ & ((\sll64[3][48]~274_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \sll64[2][56]~299_combout\,
	datac => \srl64[5][62]~134_combout\,
	datad => \sll64[3][48]~274_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X40_Y45_N12
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux58~0_combout\ & ((\Mux7~2_combout\ & ((\sll64[4][40]~228_combout\))) # (!\Mux7~2_combout\ & (\sll64[2][52]~297_combout\)))) # (!\Mux58~0_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][52]~297_combout\,
	datab => \sll64[4][40]~228_combout\,
	datac => \Mux58~0_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X40_Y45_N2
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\ExtWord~input_o\) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X40_Y45_N22
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux4~0_combout\ & (((\Mux4~1_combout\)))) # (!\Mux4~0_combout\ & ((\Mux4~1_combout\ & ((\A[56]~input_o\))) # (!\Mux4~1_combout\ & (\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux4~0_combout\,
	datac => \A[56]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X40_Y45_N8
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux4~0_combout\ & ((\Mux7~4_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux7~4_combout\ & ((\sll64[5][24]~149_combout\))))) # (!\Mux4~0_combout\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux7~4_combout\,
	datad => \sll64[5][24]~149_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X40_Y45_N26
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\ShiftFN[1]~input_o\ & (\Mux7~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux7~1_combout\,
	datac => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X39_Y45_N10
\sll64[2][53]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][53]~300_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\sll64[2][52]~284_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][53]~287_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][52]~284_combout\,
	datab => \B[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][53]~287_combout\,
	combout => \sll64[2][53]~300_combout\);

-- Location: LCCOMB_X41_Y45_N20
\sll64[2][57]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][57]~301_combout\ = (\B[1]~input_o\ & (\A[55]~input_o\)) # (!\B[1]~input_o\ & ((\A[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[55]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][57]~301_combout\);

-- Location: LCCOMB_X41_Y45_N6
\sll64[2][57]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][57]~302_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\sll64[2][57]~298_combout\))) # (!\B[0]~input_o\ & (\sll64[2][57]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][57]~301_combout\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][57]~298_combout\,
	combout => \sll64[2][57]~302_combout\);

-- Location: LCCOMB_X40_Y45_N28
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux58~0_combout\ & (((!\srl64[5][62]~134_combout\)))) # (!\Mux58~0_combout\ & ((\srl64[5][62]~134_combout\ & (\sll64[2][57]~302_combout\)) # (!\srl64[5][62]~134_combout\ & ((\sll64[3][49]~277_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][57]~302_combout\,
	datab => \sll64[3][49]~277_combout\,
	datac => \Mux58~0_combout\,
	datad => \srl64[5][62]~134_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X40_Y45_N30
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux58~0_combout\ & ((\Mux6~2_combout\ & ((\sll64[4][41]~234_combout\))) # (!\Mux6~2_combout\ & (\sll64[2][53]~300_combout\)))) # (!\Mux58~0_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][53]~300_combout\,
	datab => \sll64[4][41]~234_combout\,
	datac => \Mux58~0_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X40_Y45_N0
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux4~1_combout\ & (\Mux4~0_combout\)) # (!\Mux4~1_combout\ & ((\Mux4~0_combout\ & ((\sll64[5][25]~155_combout\))) # (!\Mux4~0_combout\ & (\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux6~3_combout\,
	datad => \sll64[5][25]~155_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X40_Y45_N10
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & (((\Y_sll[31]~7_combout\) # (!\Mux4~1_combout\)))) # (!\Mux6~4_combout\ & (\A[57]~input_o\ & ((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \Mux6~4_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X39_Y44_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ExtWord~input_o\ & (((\Y_srl[63]~14_combout\) # (\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (\srl64[6][57]~373_combout\ & ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[6][57]~373_combout\,
	datac => \Y_srl[63]~14_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X39_Y44_N4
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\A[31]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux6~0_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[6][57]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][57]~148_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X39_Y49_N6
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux6~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~5_combout\,
	datac => \Mux6~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X41_Y41_N24
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][58]~374_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][58]~374_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X41_Y41_N26
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux5~0_combout\ & (\A[31]~input_o\)) # (!\Mux5~0_combout\ & ((\sra64[6][58]~149_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][58]~149_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X39_Y45_N12
\sll64[2][54]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][54]~303_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\sll64[2][53]~287_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][54]~290_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][53]~287_combout\,
	datab => \B[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][54]~290_combout\,
	combout => \sll64[2][54]~303_combout\);

-- Location: LCCOMB_X41_Y45_N0
\sll64[2][59]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][59]~304_combout\ = (\B[1]~input_o\ & ((\A[56]~input_o\))) # (!\B[1]~input_o\ & (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[56]~input_o\,
	combout => \sll64[2][59]~304_combout\);

-- Location: LCCOMB_X41_Y45_N26
\sll64[2][58]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][58]~305_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\sll64[2][57]~301_combout\))) # (!\B[0]~input_o\ & (\sll64[2][59]~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][59]~304_combout\,
	datac => \sll64[2][57]~301_combout\,
	datad => \ExtWord~input_o\,
	combout => \sll64[2][58]~305_combout\);

-- Location: LCCOMB_X40_Y45_N20
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\srl64[5][62]~134_combout\ & (((!\Mux58~0_combout\ & \sll64[2][58]~305_combout\)))) # (!\srl64[5][62]~134_combout\ & ((\sll64[3][50]~280_combout\) # ((\Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[5][62]~134_combout\,
	datab => \sll64[3][50]~280_combout\,
	datac => \Mux58~0_combout\,
	datad => \sll64[2][58]~305_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X40_Y45_N6
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux58~0_combout\ & ((\Mux5~2_combout\ & ((\sll64[4][42]~241_combout\))) # (!\Mux5~2_combout\ & (\sll64[2][54]~303_combout\)))) # (!\Mux58~0_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][54]~303_combout\,
	datab => \Mux58~0_combout\,
	datac => \sll64[4][42]~241_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X40_Y45_N16
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux4~0_combout\ & (((\Mux4~1_combout\)))) # (!\Mux4~0_combout\ & ((\Mux4~1_combout\ & ((\A[58]~input_o\))) # (!\Mux4~1_combout\ & (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~0_combout\,
	datac => \A[58]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X40_Y45_N18
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & ((\Y_sll[31]~7_combout\) # ((!\Mux4~0_combout\)))) # (!\Mux5~4_combout\ & (((\sll64[5][26]~161_combout\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux5~4_combout\,
	datac => \sll64[5][26]~161_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X41_Y41_N4
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\ShiftFN[1]~input_o\ & (\Mux5~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X39_Y45_N22
\sll64[2][55]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][55]~306_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\sll64[2][54]~290_combout\))) # (!\B[0]~input_o\ & (\sll64[2][56]~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][56]~294_combout\,
	datab => \B[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[2][54]~290_combout\,
	combout => \sll64[2][55]~306_combout\);

-- Location: LCCOMB_X41_Y45_N12
\sll64[2][59]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][59]~307_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[57]~input_o\))) # (!\B[1]~input_o\ & (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[59]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][59]~307_combout\);

-- Location: LCCOMB_X41_Y45_N22
\sll64[2][59]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][59]~308_combout\ = (!\ExtWord~input_o\ & ((\sll64[2][59]~307_combout\) # ((\B[0]~input_o\ & \sll64[2][59]~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][59]~304_combout\,
	datac => \sll64[2][59]~307_combout\,
	datad => \ExtWord~input_o\,
	combout => \sll64[2][59]~308_combout\);

-- Location: LCCOMB_X45_Y46_N18
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux58~0_combout\ & (((!\srl64[5][62]~134_combout\)))) # (!\Mux58~0_combout\ & ((\srl64[5][62]~134_combout\ & ((\sll64[2][59]~308_combout\))) # (!\srl64[5][62]~134_combout\ & (\sll64[3][51]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][51]~283_combout\,
	datab => \Mux58~0_combout\,
	datac => \sll64[2][59]~308_combout\,
	datad => \srl64[5][62]~134_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X45_Y46_N4
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux58~0_combout\ & ((\Mux4~4_combout\ & (\sll64[4][43]~247_combout\)) # (!\Mux4~4_combout\ & ((\sll64[2][55]~306_combout\))))) # (!\Mux58~0_combout\ & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][43]~247_combout\,
	datab => \Mux58~0_combout\,
	datac => \sll64[2][55]~306_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X40_Y45_N4
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~0_combout\ & (((\sll64[5][27]~167_combout\) # (\Mux4~1_combout\)))) # (!\Mux4~0_combout\ & (\Mux4~5_combout\ & ((!\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux4~0_combout\,
	datac => \sll64[5][27]~167_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X40_Y45_N14
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\ & (((\Y_sll[31]~7_combout\) # (!\Mux4~1_combout\)))) # (!\Mux4~6_combout\ & (\A[59]~input_o\ & ((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \Mux4~6_combout\,
	datac => \Y_sll[31]~7_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X41_Y41_N14
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[63]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][59]~375_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[63]~14_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][59]~375_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X41_Y41_N0
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux4~2_combout\ & (\A[31]~input_o\)) # (!\Mux4~2_combout\ & ((\sra64[6][59]~119_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux4~2_combout\,
	datad => \sra64[6][59]~119_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X41_Y41_N18
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux4~3_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X48_Y42_N6
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][60]~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][60]~376_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X48_Y42_N0
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & (((\A[31]~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\Mux3~5_combout\ & (\ShiftFN[0]~input_o\ & ((\sra64[6][60]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \sra64[6][60]~121_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X41_Y45_N24
\sll64[1][58]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][58]~309_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[57]~input_o\)) # (!\B[0]~input_o\ & ((\A[58]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[58]~input_o\,
	combout => \sll64[1][58]~309_combout\);

-- Location: LCCOMB_X41_Y45_N2
\sll64[1][60]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][60]~310_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[59]~input_o\)) # (!\B[0]~input_o\ & ((\A[60]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[59]~input_o\,
	datac => \A[60]~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[1][60]~310_combout\);

-- Location: LCCOMB_X41_Y45_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sll64[4][16]~53_combout\ & (\sll64[1][60]~310_combout\ & ((!\Mux61~4_combout\)))) # (!\sll64[4][16]~53_combout\ & (((\sll64[2][56]~299_combout\) # (\Mux61~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][60]~310_combout\,
	datab => \sll64[2][56]~299_combout\,
	datac => \sll64[4][16]~53_combout\,
	datad => \Mux61~4_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X41_Y45_N14
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\sll64[3][52]~286_combout\) # ((!\Mux61~4_combout\)))) # (!\Mux3~0_combout\ & (((\sll64[1][58]~309_combout\ & \Mux61~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][52]~286_combout\,
	datab => \sll64[1][58]~309_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux61~4_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X42_Y46_N28
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux52~2_combout\ & ((\Mux18~0_combout\ & ((\sll64[4][44]~253_combout\))) # (!\Mux18~0_combout\ & (\Mux3~1_combout\)))) # (!\Mux52~2_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \sll64[4][44]~253_combout\,
	datac => \Mux52~2_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X42_Y46_N6
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux52~2_combout\ & (((\Mux3~2_combout\)))) # (!\Mux52~2_combout\ & ((\Mux3~2_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux3~2_combout\ & ((\sll64[5][28]~172_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \Mux52~2_combout\,
	datac => \sll64[5][28]~172_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X42_Y46_N8
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux3~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X42_Y46_N26
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~4_combout\) # ((\Mux3~6_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~6_combout\,
	datac => \Mux3~4_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X43_Y45_N2
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\) # ((\Y_srl[63]~14_combout\)))) # (!\ExtWord~input_o\ & (!\ShiftFN[0]~input_o\ & ((\srl64[6][61]~378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_srl[63]~14_combout\,
	datad => \srl64[6][61]~378_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X43_Y45_N12
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux2~5_combout\ & (\A[31]~input_o\)) # (!\Mux2~5_combout\ & ((\sra64[6][61]~150_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sra64[6][61]~150_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X39_Y45_N16
\sll64[1][61]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][61]~312_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[60]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[61]~input_o\,
	combout => \sll64[1][61]~312_combout\);

-- Location: LCCOMB_X41_Y45_N10
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sll64[4][16]~53_combout\ & (((\sll64[1][61]~312_combout\ & !\Mux61~4_combout\)))) # (!\sll64[4][16]~53_combout\ & ((\sll64[2][57]~302_combout\) # ((\Mux61~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][57]~302_combout\,
	datab => \sll64[4][16]~53_combout\,
	datac => \sll64[1][61]~312_combout\,
	datad => \Mux61~4_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X41_Y45_N8
\sll64[1][59]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][59]~311_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[58]~input_o\)) # (!\B[0]~input_o\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[58]~input_o\,
	datad => \A[59]~input_o\,
	combout => \sll64[1][59]~311_combout\);

-- Location: LCCOMB_X41_Y45_N28
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\sll64[3][53]~289_combout\) # (!\Mux61~4_combout\)))) # (!\Mux2~0_combout\ & (\sll64[1][59]~311_combout\ & ((\Mux61~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \sll64[1][59]~311_combout\,
	datac => \sll64[3][53]~289_combout\,
	datad => \Mux61~4_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X41_Y44_N0
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux18~0_combout\ & (!\Mux52~2_combout\)) # (!\Mux18~0_combout\ & ((\Mux52~2_combout\ & (\Mux2~1_combout\)) # (!\Mux52~2_combout\ & ((\sll64[5][29]~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux52~2_combout\,
	datac => \Mux2~1_combout\,
	datad => \sll64[5][29]~177_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X41_Y44_N18
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux18~0_combout\ & ((\Mux2~2_combout\ & (\Y_sll[31]~7_combout\)) # (!\Mux2~2_combout\ & ((\sll64[4][45]~259_combout\))))) # (!\Mux18~0_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Y_sll[31]~7_combout\,
	datac => \sll64[4][45]~259_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X39_Y49_N24
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux2~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \Mux2~3_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X39_Y49_N26
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~4_combout\) # ((\Mux2~6_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \ShiftFN[1]~input_o\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X42_Y43_N22
\Y_sra[62]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[62]~5_combout\ = (\ExtWord~input_o\ & (\A[31]~input_o\)) # (!\ExtWord~input_o\ & ((\sra64[6][62]~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[31]~input_o\,
	datad => \sra64[6][62]~151_combout\,
	combout => \Y_sra[62]~5_combout\);

-- Location: LCCOMB_X39_Y45_N26
\Y_sll[62]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~8_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[59]~input_o\)) # (!\B[1]~input_o\ & ((\A[61]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Y_sll[62]~8_combout\);

-- Location: LCCOMB_X39_Y45_N28
\Y_sll[62]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~9_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[60]~input_o\)) # (!\B[1]~input_o\ & ((\A[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Y_sll[62]~9_combout\);

-- Location: LCCOMB_X39_Y45_N6
\Y_sll[62]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~10_combout\ = (\B[3]~input_o\ & (\sll64[2][54]~291_combout\)) # (!\B[3]~input_o\ & (((\Y_sll[62]~8_combout\) # (\Y_sll[62]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[2][54]~291_combout\,
	datac => \Y_sll[62]~8_combout\,
	datad => \Y_sll[62]~9_combout\,
	combout => \Y_sll[62]~10_combout\);

-- Location: LCCOMB_X41_Y45_N30
\Y_sll[62]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~12_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & (\sll64[2][57]~301_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][59]~304_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][57]~301_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][59]~304_combout\,
	combout => \Y_sll[62]~12_combout\);

-- Location: LCCOMB_X39_Y48_N20
\Y_sll[62]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~11_combout\ = (\B[3]~input_o\ & ((\B[0]~input_o\ & (\sll64[2][49]~275_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][50]~278_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][49]~275_combout\,
	datab => \B[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][50]~278_combout\,
	combout => \Y_sll[62]~11_combout\);

-- Location: LCCOMB_X39_Y45_N24
\Y_sll[62]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~13_combout\ = (\B[2]~input_o\ & (((\Y_sll[62]~12_combout\) # (\Y_sll[62]~11_combout\)))) # (!\B[2]~input_o\ & (\Y_sll[62]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[62]~10_combout\,
	datab => \Y_sll[62]~12_combout\,
	datac => \Y_sll[62]~11_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_sll[62]~13_combout\);

-- Location: LCCOMB_X39_Y45_N18
\Y_sll[62]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~14_combout\ = (\B[4]~input_o\ & (((\sll64[4][46]~265_combout\)))) # (!\B[4]~input_o\ & (\Y_sll[62]~13_combout\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_sll[62]~13_combout\,
	datac => \ExtWord~input_o\,
	datad => \sll64[4][46]~265_combout\,
	combout => \Y_sll[62]~14_combout\);

-- Location: LCCOMB_X42_Y43_N28
\Y_sll[62]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~22_combout\ = (\ExtWord~input_o\ & (\Y_sll[31]~7_combout\)) # (!\ExtWord~input_o\ & (((\B[5]~input_o\ & \Y_sll[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_sll[31]~7_combout\,
	datac => \B[5]~input_o\,
	datad => \Y_sll[62]~6_combout\,
	combout => \Y_sll[62]~22_combout\);

-- Location: LCCOMB_X42_Y43_N14
\Y_sll[62]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[62]~23_combout\ = (\Y_sll[62]~22_combout\) # ((!\ExtWord~input_o\ & (\Y_sll[62]~14_combout\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_sll[62]~14_combout\,
	datac => \B[5]~input_o\,
	datad => \Y_sll[62]~22_combout\,
	combout => \Y_sll[62]~23_combout\);

-- Location: LCCOMB_X42_Y43_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y_sll[62]~23_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \Y_sll[62]~23_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X43_Y43_N0
\Y_srl[62]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[62]~10_combout\ = (\ExtWord~input_o\ & (\A[31]~input_o\ & (!\B[0]~input_o\))) # (!\ExtWord~input_o\ & (((\srl64[1][62]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][62]~82_combout\,
	combout => \Y_srl[62]~10_combout\);

-- Location: LCCOMB_X43_Y43_N18
\Y_srl[62]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[62]~11_combout\ = (\sll64[6][1]~48_combout\ & (\srl64[4][55]~94_combout\ & (!\B[3]~input_o\ & \Y_srl[62]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][1]~48_combout\,
	datab => \srl64[4][55]~94_combout\,
	datac => \B[3]~input_o\,
	datad => \Y_srl[62]~10_combout\,
	combout => \Y_srl[62]~11_combout\);

-- Location: LCCOMB_X42_Y43_N16
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\Y_sra[62]~5_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux1~0_combout\ & (((\ShiftFN[1]~input_o\ & \Y_srl[62]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sra[62]~5_combout\,
	datab => \Mux1~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_srl[62]~11_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X39_Y45_N4
\Y_sll[63]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[63]~17_combout\ = (\B[0]~input_o\ & (\A[62]~input_o\ & (!\ExtWord~input_o\))) # (!\B[0]~input_o\ & (((\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_sll[63]~17_combout\);

-- Location: LCCOMB_X39_Y45_N30
\Y_sll[63]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[63]~18_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\sll64[1][61]~312_combout\))) # (!\B[1]~input_o\ & (\Y_sll[63]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Y_sll[63]~17_combout\,
	datad => \sll64[1][61]~312_combout\,
	combout => \Y_sll[63]~18_combout\);

-- Location: LCCOMB_X40_Y47_N4
\Y_sll[63]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[63]~19_combout\ = (!\B[3]~input_o\ & ((\Y_sll[63]~18_combout\) # ((\sll64[2][59]~308_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[63]~18_combout\,
	datab => \sll64[2][59]~308_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_sll[63]~19_combout\);

-- Location: LCCOMB_X42_Y47_N6
\Y_sll[63]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[63]~20_combout\ = (!\B[4]~input_o\ & ((\Y_sll[63]~19_combout\) # ((\B[3]~input_o\ & \sll64[3][55]~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[63]~19_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \sll64[3][55]~296_combout\,
	combout => \Y_sll[63]~20_combout\);

-- Location: LCCOMB_X42_Y47_N10
\Y_sll[63]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[63]~15_combout\ = (!\ExtWord~input_o\ & ((\B[4]~input_o\ & (\sll64[4][15]~100_combout\)) # (!\B[4]~input_o\ & ((\sll64[4][31]~185_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[4][15]~100_combout\,
	datac => \B[4]~input_o\,
	datad => \sll64[4][31]~185_combout\,
	combout => \Y_sll[63]~15_combout\);

-- Location: LCCOMB_X42_Y47_N22
\Y_sll[63]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[63]~24_combout\ = (\ExtWord~input_o\ & ((\Y_sll[31]~7_combout\) # ((\Y_sll[63]~15_combout\)))) # (!\ExtWord~input_o\ & (((\B[5]~input_o\ & \Y_sll[63]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~7_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_sll[63]~15_combout\,
	combout => \Y_sll[63]~24_combout\);

-- Location: LCCOMB_X42_Y47_N20
\Y_sll[63]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[63]~16_combout\ = (\B[4]~input_o\ & (!\ExtWord~input_o\ & ((\sll64[4][47]~267_combout\) # (\sll64[4][47]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][47]~267_combout\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \sll64[4][47]~270_combout\,
	combout => \Y_sll[63]~16_combout\);

-- Location: LCCOMB_X42_Y47_N0
\Y_sll[63]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[63]~21_combout\ = (\Y_sll[63]~24_combout\) # ((\Mux52~2_combout\ & ((\Y_sll[63]~20_combout\) # (\Y_sll[63]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[63]~20_combout\,
	datab => \Mux52~2_combout\,
	datac => \Y_sll[63]~24_combout\,
	datad => \Y_sll[63]~16_combout\,
	combout => \Y_sll[63]~21_combout\);

-- Location: LCCOMB_X43_Y45_N22
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ShiftFN[0]~input_o\ & (((\Y_sll[63]~21_combout\) # (\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\A[63]~input_o\ & ((!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Y_sll[63]~21_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X43_Y45_N0
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\ShiftFN[1]~input_o\ & (\sra64[0][63]~58_combout\ & ((\Mux0~0_combout\) # (!\sll64[6][0]~47_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \sra64[0][63]~58_combout\,
	datac => \sll64[6][0]~47_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X81_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X115_Y48_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X115_Y62_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X115_Y65_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
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


