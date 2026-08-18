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

-- DATE "04/07/2026 21:29:15"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
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
-- B[6]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \s64[2][0]~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \s64[2][0]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \s64[2][0]~1_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \s64[2][0]~3_combout\ : std_logic;
SIGNAL \s64[3][24]~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \s64[2][0]~11_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \s64[2][0]~10_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \s64[2][0]~12_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \s64[2][0]~13_combout\ : std_logic;
SIGNAL \s64[3][8]~14_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \s64[2][0]~5_combout\ : std_logic;
SIGNAL \s64[2][0]~6_combout\ : std_logic;
SIGNAL \s64[2][0]~7_combout\ : std_logic;
SIGNAL \s64[2][0]~8_combout\ : std_logic;
SIGNAL \s64[3][16]~9_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \s64[4][16]~15_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \s64[1][34]~17_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \s64[1][36]~22_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \s64[1][38]~23_combout\ : std_logic;
SIGNAL \s64[2][36]~24_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \s64[1][42]~27_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \s64[1][40]~26_combout\ : std_logic;
SIGNAL \s64[2][40]~28_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \s64[1][44]~29_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \s64[1][46]~30_combout\ : std_logic;
SIGNAL \s64[2][44]~31_combout\ : std_logic;
SIGNAL \s64[3][40]~32_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \s64[1][32]~16_combout\ : std_logic;
SIGNAL \s64[2][0]~19_combout\ : std_logic;
SIGNAL \s64[2][0]~18_combout\ : std_logic;
SIGNAL \s64[2][0]~20_combout\ : std_logic;
SIGNAL \s64[2][0]~21_combout\ : std_logic;
SIGNAL \s64[3][32]~25_combout\ : std_logic;
SIGNAL \s64[4][32]~33_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \s64[1][52]~37_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \s64[1][50]~35_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \s64[1][54]~38_combout\ : std_logic;
SIGNAL \s64[2][52]~39_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \s64[1][48]~34_combout\ : std_logic;
SIGNAL \s64[2][48]~36_combout\ : std_logic;
SIGNAL \s64[3][48]~40_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \s64[1][60]~44_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \s64[1][58]~42_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \s64[1][62]~45_combout\ : std_logic;
SIGNAL \s64[2][60]~46_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \s64[1][56]~41_combout\ : std_logic;
SIGNAL \s64[2][56]~43_combout\ : std_logic;
SIGNAL \s64[3][56]~47_combout\ : std_logic;
SIGNAL \s64[4][48]~48_combout\ : std_logic;
SIGNAL \s64[5][32]~49_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \s64[2][0]~50_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \s64[2][0]~51_combout\ : std_logic;
SIGNAL \s64[2][0]~52_combout\ : std_logic;
SIGNAL \s64[3][0]~53_combout\ : std_logic;
SIGNAL \s64[4][0]~54_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \s64[2][0]~61_combout\ : std_logic;
SIGNAL \s64[2][0]~60_combout\ : std_logic;
SIGNAL \s64[2][0]~63_combout\ : std_logic;
SIGNAL \s64[2][0]~62_combout\ : std_logic;
SIGNAL \s64[3][17]~64_combout\ : std_logic;
SIGNAL \s64[2][0]~65_combout\ : std_logic;
SIGNAL \s64[2][0]~66_combout\ : std_logic;
SIGNAL \s64[2][0]~67_combout\ : std_logic;
SIGNAL \s64[2][0]~324_combout\ : std_logic;
SIGNAL \s32[3][25]~0_combout\ : std_logic;
SIGNAL \s64[2][0]~58_combout\ : std_logic;
SIGNAL \s64[2][0]~56_combout\ : std_logic;
SIGNAL \s64[2][0]~57_combout\ : std_logic;
SIGNAL \s64[2][0]~55_combout\ : std_logic;
SIGNAL \s64[3][9]~59_combout\ : std_logic;
SIGNAL \s32[4][17]~1_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \s64[2][0]~105_combout\ : std_logic;
SIGNAL \s64[2][0]~104_combout\ : std_logic;
SIGNAL \s64[2][0]~103_combout\ : std_logic;
SIGNAL \s64[3][1]~106_combout\ : std_logic;
SIGNAL \s64[4][1]~107_combout\ : std_logic;
SIGNAL \s64[2][0]~68_combout\ : std_logic;
SIGNAL \s64[3][25]~69_combout\ : std_logic;
SIGNAL \s64[4][17]~70_combout\ : std_logic;
SIGNAL \s64[5][1]~108_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \s64[1][43]~80_combout\ : std_logic;
SIGNAL \s64[1][47]~83_combout\ : std_logic;
SIGNAL \s64[1][45]~82_combout\ : std_logic;
SIGNAL \s64[2][45]~84_combout\ : std_logic;
SIGNAL \s64[1][49]~87_combout\ : std_logic;
SIGNAL \s64[1][51]~88_combout\ : std_logic;
SIGNAL \s64[2][49]~89_combout\ : std_logic;
SIGNAL \s64[1][55]~91_combout\ : std_logic;
SIGNAL \s64[1][53]~90_combout\ : std_logic;
SIGNAL \s64[2][53]~92_combout\ : std_logic;
SIGNAL \s64[3][49]~93_combout\ : std_logic;
SIGNAL \s64[1][39]~76_combout\ : std_logic;
SIGNAL \s64[1][35]~72_combout\ : std_logic;
SIGNAL \s64[1][37]~75_combout\ : std_logic;
SIGNAL \s64[2][37]~77_combout\ : std_logic;
SIGNAL \s64[1][41]~79_combout\ : std_logic;
SIGNAL \s64[2][41]~81_combout\ : std_logic;
SIGNAL \s64[3][41]~85_combout\ : std_logic;
SIGNAL \s64[1][59]~95_combout\ : std_logic;
SIGNAL \s64[1][57]~94_combout\ : std_logic;
SIGNAL \s64[2][57]~96_combout\ : std_logic;
SIGNAL \s64[1][61]~97_combout\ : std_logic;
SIGNAL \s64[1][63]~98_combout\ : std_logic;
SIGNAL \s64[2][61]~99_combout\ : std_logic;
SIGNAL \s64[3][57]~100_combout\ : std_logic;
SIGNAL \s64[4][49]~101_combout\ : std_logic;
SIGNAL \s64[1][33]~71_combout\ : std_logic;
SIGNAL \s64[2][0]~73_combout\ : std_logic;
SIGNAL \s64[2][0]~74_combout\ : std_logic;
SIGNAL \s64[3][33]~78_combout\ : std_logic;
SIGNAL \s64[4][33]~86_combout\ : std_logic;
SIGNAL \s64[5][33]~102_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \s64[2][0]~117_combout\ : std_logic;
SIGNAL \s64[2][0]~115_combout\ : std_logic;
SIGNAL \s64[2][0]~116_combout\ : std_logic;
SIGNAL \s64[2][0]~114_combout\ : std_logic;
SIGNAL \s64[3][10]~118_combout\ : std_logic;
SIGNAL \s64[2][0]~126_combout\ : std_logic;
SIGNAL \s64[2][0]~125_combout\ : std_logic;
SIGNAL \s64[2][0]~127_combout\ : std_logic;
SIGNAL \s64[3][2]~128_combout\ : std_logic;
SIGNAL \s64[4][2]~129_combout\ : std_logic;
SIGNAL \s64[2][0]~112_combout\ : std_logic;
SIGNAL \s64[2][0]~109_combout\ : std_logic;
SIGNAL \s64[2][0]~110_combout\ : std_logic;
SIGNAL \s64[2][0]~147_combout\ : std_logic;
SIGNAL \s32[3][26]~2_combout\ : std_logic;
SIGNAL \s64[2][0]~120_combout\ : std_logic;
SIGNAL \s64[2][0]~121_combout\ : std_logic;
SIGNAL \s64[2][0]~119_combout\ : std_logic;
SIGNAL \s64[2][0]~122_combout\ : std_logic;
SIGNAL \s64[3][18]~123_combout\ : std_logic;
SIGNAL \s32[4][18]~3_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \fill64~0_combout\ : std_logic;
SIGNAL \s64[2][62]~143_combout\ : std_logic;
SIGNAL \s64[2][58]~142_combout\ : std_logic;
SIGNAL \s64[2][54]~140_combout\ : std_logic;
SIGNAL \s64[3][58]~144_combout\ : std_logic;
SIGNAL \s64[2][50]~139_combout\ : std_logic;
SIGNAL \s64[2][46]~136_combout\ : std_logic;
SIGNAL \s64[3][50]~141_combout\ : std_logic;
SIGNAL \s64[2][42]~135_combout\ : std_logic;
SIGNAL \s64[2][38]~133_combout\ : std_logic;
SIGNAL \s64[3][42]~137_combout\ : std_logic;
SIGNAL \s64[4][50]~145_combout\ : std_logic;
SIGNAL \s64[2][0]~111_combout\ : std_logic;
SIGNAL \s64[3][26]~113_combout\ : std_logic;
SIGNAL \s64[2][34]~131_combout\ : std_logic;
SIGNAL \s64[2][0]~132_combout\ : std_logic;
SIGNAL \s64[3][34]~134_combout\ : std_logic;
SIGNAL \s64[4][34]~138_combout\ : std_logic;
SIGNAL \s64[4][18]~124_combout\ : std_logic;
SIGNAL \s64[5][34]~146_combout\ : std_logic;
SIGNAL \s64[5][2]~130_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \s64[2][0]~153_combout\ : std_logic;
SIGNAL \s64[2][0]~154_combout\ : std_logic;
SIGNAL \s64[2][0]~155_combout\ : std_logic;
SIGNAL \s64[2][0]~156_combout\ : std_logic;
SIGNAL \s64[3][11]~157_combout\ : std_logic;
SIGNAL \s64[2][0]~158_combout\ : std_logic;
SIGNAL \s64[2][0]~161_combout\ : std_logic;
SIGNAL \s64[2][0]~159_combout\ : std_logic;
SIGNAL \s64[2][0]~160_combout\ : std_logic;
SIGNAL \s64[3][19]~162_combout\ : std_logic;
SIGNAL \s64[2][0]~148_combout\ : std_logic;
SIGNAL \s64[2][0]~151_combout\ : std_logic;
SIGNAL \s64[2][0]~149_combout\ : std_logic;
SIGNAL \s64[2][0]~150_combout\ : std_logic;
SIGNAL \s64[3][27]~152_combout\ : std_logic;
SIGNAL \s64[4][19]~163_combout\ : std_logic;
SIGNAL \s64[2][0]~165_combout\ : std_logic;
SIGNAL \s64[2][0]~166_combout\ : std_logic;
SIGNAL \s64[2][0]~164_combout\ : std_logic;
SIGNAL \s64[3][3]~167_combout\ : std_logic;
SIGNAL \s64[4][3]~168_combout\ : std_logic;
SIGNAL \s64[5][3]~169_combout\ : std_logic;
SIGNAL \s64[2][0]~171_combout\ : std_logic;
SIGNAL \s64[2][35]~170_combout\ : std_logic;
SIGNAL \s64[2][39]~172_combout\ : std_logic;
SIGNAL \s64[3][35]~173_combout\ : std_logic;
SIGNAL \s64[2][43]~174_combout\ : std_logic;
SIGNAL \s64[2][47]~175_combout\ : std_logic;
SIGNAL \s64[3][43]~176_combout\ : std_logic;
SIGNAL \s64[4][35]~177_combout\ : std_logic;
SIGNAL \s64[2][55]~179_combout\ : std_logic;
SIGNAL \s64[2][51]~178_combout\ : std_logic;
SIGNAL \s64[3][51]~180_combout\ : std_logic;
SIGNAL \s64[2][59]~181_combout\ : std_logic;
SIGNAL \s64[2][63]~182_combout\ : std_logic;
SIGNAL \s64[3][59]~183_combout\ : std_logic;
SIGNAL \s64[4][51]~184_combout\ : std_logic;
SIGNAL \s64[5][35]~185_combout\ : std_logic;
SIGNAL \s64[2][0]~186_combout\ : std_logic;
SIGNAL \s32[3][27]~4_combout\ : std_logic;
SIGNAL \s32[4][19]~5_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \s64[3][4]~191_combout\ : std_logic;
SIGNAL \s64[3][12]~188_combout\ : std_logic;
SIGNAL \s64[4][4]~192_combout\ : std_logic;
SIGNAL \s64[3][28]~187_combout\ : std_logic;
SIGNAL \s64[3][20]~189_combout\ : std_logic;
SIGNAL \s64[4][20]~190_combout\ : std_logic;
SIGNAL \s64[5][4]~193_combout\ : std_logic;
SIGNAL \fill32~0_combout\ : std_logic;
SIGNAL \s32[3][28]~6_combout\ : std_logic;
SIGNAL \s32[4][20]~7_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \s64[3][60]~198_combout\ : std_logic;
SIGNAL \s64[3][52]~197_combout\ : std_logic;
SIGNAL \s64[3][44]~195_combout\ : std_logic;
SIGNAL \s64[4][52]~199_combout\ : std_logic;
SIGNAL \s64[3][36]~194_combout\ : std_logic;
SIGNAL \s64[4][36]~196_combout\ : std_logic;
SIGNAL \s64[5][36]~200_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \s32[3][29]~8_combout\ : std_logic;
SIGNAL \s64[3][21]~203_combout\ : std_logic;
SIGNAL \s64[3][13]~202_combout\ : std_logic;
SIGNAL \s32[4][21]~9_combout\ : std_logic;
SIGNAL \s64[3][5]~205_combout\ : std_logic;
SIGNAL \s64[4][5]~206_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \s64[3][45]~209_combout\ : std_logic;
SIGNAL \s64[3][53]~211_combout\ : std_logic;
SIGNAL \s64[3][61]~212_combout\ : std_logic;
SIGNAL \s64[4][53]~213_combout\ : std_logic;
SIGNAL \s64[3][29]~201_combout\ : std_logic;
SIGNAL \s64[4][21]~204_combout\ : std_logic;
SIGNAL \s64[3][37]~208_combout\ : std_logic;
SIGNAL \s64[4][37]~210_combout\ : std_logic;
SIGNAL \s64[5][37]~214_combout\ : std_logic;
SIGNAL \s64[5][5]~207_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \s64[3][14]~216_combout\ : std_logic;
SIGNAL \s64[3][6]~219_combout\ : std_logic;
SIGNAL \s64[4][6]~220_combout\ : std_logic;
SIGNAL \s32[3][30]~10_combout\ : std_logic;
SIGNAL \s64[3][22]~217_combout\ : std_logic;
SIGNAL \s32[4][22]~11_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \s64[3][30]~215_combout\ : std_logic;
SIGNAL \s64[4][22]~218_combout\ : std_logic;
SIGNAL \s64[5][6]~221_combout\ : std_logic;
SIGNAL \s64[3][62]~226_combout\ : std_logic;
SIGNAL \s64[3][46]~223_combout\ : std_logic;
SIGNAL \s64[3][54]~225_combout\ : std_logic;
SIGNAL \s64[4][54]~227_combout\ : std_logic;
SIGNAL \s64[3][38]~222_combout\ : std_logic;
SIGNAL \s64[4][38]~224_combout\ : std_logic;
SIGNAL \s64[5][38]~228_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \s64[3][31]~229_combout\ : std_logic;
SIGNAL \s64[3][23]~231_combout\ : std_logic;
SIGNAL \s64[3][15]~230_combout\ : std_logic;
SIGNAL \s64[4][23]~232_combout\ : std_logic;
SIGNAL \s64[3][7]~233_combout\ : std_logic;
SIGNAL \s64[4][7]~234_combout\ : std_logic;
SIGNAL \s64[5][7]~235_combout\ : std_logic;
SIGNAL \s32[3][31]~12_combout\ : std_logic;
SIGNAL \s32[4][23]~13_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \s64[3][55]~239_combout\ : std_logic;
SIGNAL \s64[3][63]~240_combout\ : std_logic;
SIGNAL \s64[3][47]~237_combout\ : std_logic;
SIGNAL \s64[4][55]~241_combout\ : std_logic;
SIGNAL \s64[3][39]~236_combout\ : std_logic;
SIGNAL \s64[4][39]~238_combout\ : std_logic;
SIGNAL \s64[5][39]~242_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \s64[4][56]~245_combout\ : std_logic;
SIGNAL \s64[4][24]~243_combout\ : std_logic;
SIGNAL \s64[4][40]~244_combout\ : std_logic;
SIGNAL \s64[5][40]~246_combout\ : std_logic;
SIGNAL \s32[4][24]~14_combout\ : std_logic;
SIGNAL \s64[4][8]~247_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \s64[4][41]~249_combout\ : std_logic;
SIGNAL \s64[4][57]~250_combout\ : std_logic;
SIGNAL \s64[4][25]~248_combout\ : std_logic;
SIGNAL \s64[5][41]~251_combout\ : std_logic;
SIGNAL \s64[4][9]~252_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \s32[4][25]~15_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \s64[4][58]~257_combout\ : std_logic;
SIGNAL \s64[4][42]~256_combout\ : std_logic;
SIGNAL \s64[4][26]~253_combout\ : std_logic;
SIGNAL \s64[5][42]~258_combout\ : std_logic;
SIGNAL \s64[4][10]~254_combout\ : std_logic;
SIGNAL \s32[4][26]~16_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \s64[5][10]~255_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \s64[4][11]~260_combout\ : std_logic;
SIGNAL \s32[4][27]~17_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \s64[4][27]~259_combout\ : std_logic;
SIGNAL \s64[4][59]~263_combout\ : std_logic;
SIGNAL \s64[4][43]~262_combout\ : std_logic;
SIGNAL \s64[5][43]~264_combout\ : std_logic;
SIGNAL \s64[5][11]~261_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \s64[4][12]~266_combout\ : std_logic;
SIGNAL \s32[4][28]~18_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \s64[4][28]~265_combout\ : std_logic;
SIGNAL \s64[4][60]~269_combout\ : std_logic;
SIGNAL \s64[4][44]~268_combout\ : std_logic;
SIGNAL \s64[5][44]~270_combout\ : std_logic;
SIGNAL \s64[5][12]~267_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \s64[4][13]~272_combout\ : std_logic;
SIGNAL \s64[4][29]~271_combout\ : std_logic;
SIGNAL \s64[5][13]~273_combout\ : std_logic;
SIGNAL \s32[4][29]~19_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \s64[4][61]~275_combout\ : std_logic;
SIGNAL \s64[4][45]~274_combout\ : std_logic;
SIGNAL \s64[5][45]~276_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \s64[4][30]~277_combout\ : std_logic;
SIGNAL \s64[4][62]~281_combout\ : std_logic;
SIGNAL \s64[4][46]~280_combout\ : std_logic;
SIGNAL \s64[5][46]~282_combout\ : std_logic;
SIGNAL \s32[4][30]~20_combout\ : std_logic;
SIGNAL \s64[4][14]~278_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \s64[5][14]~279_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \s64[4][31]~283_combout\ : std_logic;
SIGNAL \s64[4][15]~284_combout\ : std_logic;
SIGNAL \s64[5][15]~285_combout\ : std_logic;
SIGNAL \s64[4][47]~286_combout\ : std_logic;
SIGNAL \s64[4][63]~287_combout\ : std_logic;
SIGNAL \s64[5][47]~288_combout\ : std_logic;
SIGNAL \s32[4][31]~21_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \s64[5][16]~289_combout\ : std_logic;
SIGNAL \s64[5][48]~290_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \s64[5][49]~292_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \s64[5][17]~291_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \s64[5][18]~293_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \s64[5][50]~294_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \s64[5][51]~296_combout\ : std_logic;
SIGNAL \s64[5][19]~295_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \s64[5][20]~297_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \s64[5][52]~298_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \s64[5][21]~299_combout\ : std_logic;
SIGNAL \s64[5][53]~300_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \s64[5][54]~302_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \s64[5][22]~301_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
SIGNAL \s64[5][23]~303_combout\ : std_logic;
SIGNAL \Y~51_combout\ : std_logic;
SIGNAL \s64[5][55]~304_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \s64[5][56]~306_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \s64[5][24]~305_combout\ : std_logic;
SIGNAL \Y~54_combout\ : std_logic;
SIGNAL \Y~99_combout\ : std_logic;
SIGNAL \s64[5][57]~308_combout\ : std_logic;
SIGNAL \s64[5][25]~307_combout\ : std_logic;
SIGNAL \Y~55_combout\ : std_logic;
SIGNAL \s64[5][58]~310_combout\ : std_logic;
SIGNAL \Y~56_combout\ : std_logic;
SIGNAL \s64[5][26]~309_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \s64[5][27]~311_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \s64[5][59]~312_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \s64[5][28]~313_combout\ : std_logic;
SIGNAL \s64[5][60]~314_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \s64[5][61]~316_combout\ : std_logic;
SIGNAL \s64[5][29]~315_combout\ : std_logic;
SIGNAL \Y~98_combout\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \s64[5][62]~318_combout\ : std_logic;
SIGNAL \s64[5][30]~317_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \s64[5][63]~319_combout\ : std_logic;
SIGNAL \s64[5][31]~320_combout\ : std_logic;
SIGNAL \Y_32_extended[31]~0_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \s64[5][0]~321_combout\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \s64[5][8]~322_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
SIGNAL \s64[5][9]~323_combout\ : std_logic;
SIGNAL \Y~75_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \Y~77_combout\ : std_logic;
SIGNAL \Y~78_combout\ : std_logic;
SIGNAL \Y~79_combout\ : std_logic;
SIGNAL \Y~80_combout\ : std_logic;
SIGNAL \Y~81_combout\ : std_logic;
SIGNAL \Y~82_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \Y~92_combout\ : std_logic;
SIGNAL \Y~93_combout\ : std_logic;
SIGNAL \Y~94_combout\ : std_logic;
SIGNAL \Y~95_combout\ : std_logic;
SIGNAL \Y~96_combout\ : std_logic;
SIGNAL \Y~97_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][16]~289_combout\ : std_logic;
SIGNAL \ALT_INV_Y~36_combout\ : std_logic;
SIGNAL \ALT_INV_Y~34_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][31]~21_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][47]~288_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][63]~287_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][47]~286_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][15]~285_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][15]~284_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][31]~283_combout\ : std_logic;
SIGNAL \ALT_INV_Y~32_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][30]~20_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][46]~282_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][62]~281_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][46]~280_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][14]~279_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][14]~278_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][30]~277_combout\ : std_logic;
SIGNAL \ALT_INV_Y~30_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][29]~19_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][45]~276_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][61]~275_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][45]~274_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][13]~273_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][13]~272_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][29]~271_combout\ : std_logic;
SIGNAL \ALT_INV_Y~28_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][28]~18_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][44]~270_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][60]~269_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][44]~268_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][12]~267_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][12]~266_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][28]~265_combout\ : std_logic;
SIGNAL \ALT_INV_Y~26_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][27]~17_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][43]~264_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][59]~263_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][43]~262_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][11]~261_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][11]~260_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][27]~259_combout\ : std_logic;
SIGNAL \ALT_INV_Y~24_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][26]~16_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][42]~258_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][58]~257_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][42]~256_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][10]~255_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][10]~254_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][26]~253_combout\ : std_logic;
SIGNAL \ALT_INV_Y~22_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][9]~252_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][41]~251_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][57]~250_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][41]~249_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][25]~248_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][25]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Y~20_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][8]~247_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][40]~246_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][56]~245_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][40]~244_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][24]~243_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][24]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Y~18_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][23]~13_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][31]~12_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][39]~242_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][55]~241_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][63]~240_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][55]~239_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][39]~238_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][47]~237_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][39]~236_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][7]~235_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][7]~234_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][7]~233_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][23]~232_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][23]~231_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][15]~230_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][31]~229_combout\ : std_logic;
SIGNAL \ALT_INV_Y~16_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][22]~11_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][30]~10_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][38]~228_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][54]~227_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][62]~226_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][54]~225_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][38]~224_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][46]~223_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][38]~222_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][6]~221_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][6]~220_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][6]~219_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][22]~218_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][22]~217_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][14]~216_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][30]~215_combout\ : std_logic;
SIGNAL \ALT_INV_Y~14_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][21]~9_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][29]~8_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][37]~214_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][53]~213_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][61]~212_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][53]~211_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][37]~210_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][45]~209_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][37]~208_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][5]~207_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][5]~206_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][5]~205_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][21]~204_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][21]~203_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][13]~202_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][29]~201_combout\ : std_logic;
SIGNAL \ALT_INV_Y~12_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][20]~7_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][28]~6_combout\ : std_logic;
SIGNAL \ALT_INV_fill32~0_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][36]~200_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][52]~199_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][60]~198_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][52]~197_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][36]~196_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][44]~195_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][36]~194_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][4]~193_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][4]~192_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][4]~191_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][20]~190_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][20]~189_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][12]~188_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][28]~187_combout\ : std_logic;
SIGNAL \ALT_INV_Y~10_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][19]~5_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][27]~4_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~186_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][35]~185_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][51]~184_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][59]~183_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][63]~182_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][59]~181_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][51]~180_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][55]~179_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][51]~178_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][35]~177_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][43]~176_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][47]~175_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][43]~174_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][35]~173_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][39]~172_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~171_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][35]~170_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][3]~169_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][3]~168_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][3]~167_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~166_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~165_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~164_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][19]~163_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][19]~162_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~161_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~160_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~159_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~158_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][11]~157_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~156_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~155_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~154_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~153_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][27]~152_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~151_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~150_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~149_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~148_combout\ : std_logic;
SIGNAL \ALT_INV_Y~8_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][18]~3_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][26]~2_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~147_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][34]~146_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][50]~145_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][58]~144_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][62]~143_combout\ : std_logic;
SIGNAL \ALT_INV_fill64~0_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][58]~142_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][50]~141_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][54]~140_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][50]~139_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][34]~138_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][42]~137_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][46]~136_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][42]~135_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][34]~134_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][38]~133_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~132_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][34]~131_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][2]~130_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][2]~129_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][2]~128_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~127_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~126_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~125_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][18]~124_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][18]~123_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~122_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~121_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~120_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~119_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][10]~118_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~117_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~116_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~115_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~114_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][26]~113_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~112_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~111_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~110_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~109_combout\ : std_logic;
SIGNAL \ALT_INV_Y~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y~4_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][1]~108_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][1]~107_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][1]~106_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~105_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~104_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~103_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][33]~102_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][49]~101_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][57]~100_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][61]~99_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][63]~98_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][61]~97_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][57]~96_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][59]~95_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][57]~94_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][49]~93_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][53]~92_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][55]~91_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][53]~90_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][49]~89_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][51]~88_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][49]~87_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][33]~86_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][41]~85_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][45]~84_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][47]~83_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][45]~82_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][41]~81_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][43]~80_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][41]~79_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][33]~78_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][37]~77_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][39]~76_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][37]~75_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~74_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~73_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][35]~72_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][33]~71_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][17]~70_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][25]~69_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~68_combout\ : std_logic;
SIGNAL \ALT_INV_Y~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y~2_combout\ : std_logic;
SIGNAL \ALT_INV_s32[4][17]~1_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][25]~0_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~67_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~66_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~65_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][17]~64_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~63_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~62_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~61_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~60_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][9]~59_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~58_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~57_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~56_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~55_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][0]~54_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][0]~53_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~52_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~51_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~50_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][32]~49_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][48]~48_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][56]~47_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][60]~46_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][62]~45_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][60]~44_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][56]~43_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][58]~42_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][56]~41_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][48]~40_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][52]~39_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][54]~38_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][52]~37_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][48]~36_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][50]~35_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][48]~34_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][32]~33_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][40]~32_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][44]~31_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][46]~30_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][44]~29_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][40]~28_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][42]~27_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][40]~26_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][32]~25_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][36]~24_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][38]~23_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][36]~22_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~21_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~20_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~19_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~18_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][34]~17_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][32]~16_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][16]~15_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][8]~14_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~12_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~11_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][16]~9_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~8_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~7_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][24]~4_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~324_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y~99_combout\ : std_logic;
SIGNAL \ALT_INV_Y~98_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][9]~323_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][8]~322_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][0]~321_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][31]~320_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][63]~319_combout\ : std_logic;
SIGNAL \ALT_INV_Y_32_extended[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~63_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][62]~318_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][30]~317_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][61]~316_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][29]~315_combout\ : std_logic;
SIGNAL \ALT_INV_Y~60_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][60]~314_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][28]~313_combout\ : std_logic;
SIGNAL \ALT_INV_Y~58_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][59]~312_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][27]~311_combout\ : std_logic;
SIGNAL \ALT_INV_Y~56_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][58]~310_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][26]~309_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][57]~308_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][25]~307_combout\ : std_logic;
SIGNAL \ALT_INV_Y~53_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][56]~306_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][24]~305_combout\ : std_logic;
SIGNAL \ALT_INV_Y~51_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][55]~304_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][23]~303_combout\ : std_logic;
SIGNAL \ALT_INV_Y~49_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][54]~302_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][22]~301_combout\ : std_logic;
SIGNAL \ALT_INV_Y~47_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][53]~300_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][21]~299_combout\ : std_logic;
SIGNAL \ALT_INV_Y~45_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][52]~298_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][20]~297_combout\ : std_logic;
SIGNAL \ALT_INV_Y~43_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][51]~296_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][19]~295_combout\ : std_logic;
SIGNAL \ALT_INV_Y~41_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][50]~294_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][18]~293_combout\ : std_logic;
SIGNAL \ALT_INV_Y~39_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][49]~292_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][17]~291_combout\ : std_logic;
SIGNAL \ALT_INV_Y~37_combout\ : std_logic;
SIGNAL \ALT_INV_s64[5][48]~290_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s64[5][16]~289_combout\ <= NOT \s64[5][16]~289_combout\;
\ALT_INV_Y~36_combout\ <= NOT \Y~36_combout\;
\ALT_INV_Y~34_combout\ <= NOT \Y~34_combout\;
\ALT_INV_s32[4][31]~21_combout\ <= NOT \s32[4][31]~21_combout\;
\ALT_INV_s64[5][47]~288_combout\ <= NOT \s64[5][47]~288_combout\;
\ALT_INV_s64[4][63]~287_combout\ <= NOT \s64[4][63]~287_combout\;
\ALT_INV_s64[4][47]~286_combout\ <= NOT \s64[4][47]~286_combout\;
\ALT_INV_s64[5][15]~285_combout\ <= NOT \s64[5][15]~285_combout\;
\ALT_INV_s64[4][15]~284_combout\ <= NOT \s64[4][15]~284_combout\;
\ALT_INV_s64[4][31]~283_combout\ <= NOT \s64[4][31]~283_combout\;
\ALT_INV_Y~32_combout\ <= NOT \Y~32_combout\;
\ALT_INV_s32[4][30]~20_combout\ <= NOT \s32[4][30]~20_combout\;
\ALT_INV_s64[5][46]~282_combout\ <= NOT \s64[5][46]~282_combout\;
\ALT_INV_s64[4][62]~281_combout\ <= NOT \s64[4][62]~281_combout\;
\ALT_INV_s64[4][46]~280_combout\ <= NOT \s64[4][46]~280_combout\;
\ALT_INV_s64[5][14]~279_combout\ <= NOT \s64[5][14]~279_combout\;
\ALT_INV_s64[4][14]~278_combout\ <= NOT \s64[4][14]~278_combout\;
\ALT_INV_s64[4][30]~277_combout\ <= NOT \s64[4][30]~277_combout\;
\ALT_INV_Y~30_combout\ <= NOT \Y~30_combout\;
\ALT_INV_s32[4][29]~19_combout\ <= NOT \s32[4][29]~19_combout\;
\ALT_INV_s64[5][45]~276_combout\ <= NOT \s64[5][45]~276_combout\;
\ALT_INV_s64[4][61]~275_combout\ <= NOT \s64[4][61]~275_combout\;
\ALT_INV_s64[4][45]~274_combout\ <= NOT \s64[4][45]~274_combout\;
\ALT_INV_s64[5][13]~273_combout\ <= NOT \s64[5][13]~273_combout\;
\ALT_INV_s64[4][13]~272_combout\ <= NOT \s64[4][13]~272_combout\;
\ALT_INV_s64[4][29]~271_combout\ <= NOT \s64[4][29]~271_combout\;
\ALT_INV_Y~28_combout\ <= NOT \Y~28_combout\;
\ALT_INV_s32[4][28]~18_combout\ <= NOT \s32[4][28]~18_combout\;
\ALT_INV_s64[5][44]~270_combout\ <= NOT \s64[5][44]~270_combout\;
\ALT_INV_s64[4][60]~269_combout\ <= NOT \s64[4][60]~269_combout\;
\ALT_INV_s64[4][44]~268_combout\ <= NOT \s64[4][44]~268_combout\;
\ALT_INV_s64[5][12]~267_combout\ <= NOT \s64[5][12]~267_combout\;
\ALT_INV_s64[4][12]~266_combout\ <= NOT \s64[4][12]~266_combout\;
\ALT_INV_s64[4][28]~265_combout\ <= NOT \s64[4][28]~265_combout\;
\ALT_INV_Y~26_combout\ <= NOT \Y~26_combout\;
\ALT_INV_s32[4][27]~17_combout\ <= NOT \s32[4][27]~17_combout\;
\ALT_INV_s64[5][43]~264_combout\ <= NOT \s64[5][43]~264_combout\;
\ALT_INV_s64[4][59]~263_combout\ <= NOT \s64[4][59]~263_combout\;
\ALT_INV_s64[4][43]~262_combout\ <= NOT \s64[4][43]~262_combout\;
\ALT_INV_s64[5][11]~261_combout\ <= NOT \s64[5][11]~261_combout\;
\ALT_INV_s64[4][11]~260_combout\ <= NOT \s64[4][11]~260_combout\;
\ALT_INV_s64[4][27]~259_combout\ <= NOT \s64[4][27]~259_combout\;
\ALT_INV_Y~24_combout\ <= NOT \Y~24_combout\;
\ALT_INV_s32[4][26]~16_combout\ <= NOT \s32[4][26]~16_combout\;
\ALT_INV_s64[5][42]~258_combout\ <= NOT \s64[5][42]~258_combout\;
\ALT_INV_s64[4][58]~257_combout\ <= NOT \s64[4][58]~257_combout\;
\ALT_INV_s64[4][42]~256_combout\ <= NOT \s64[4][42]~256_combout\;
\ALT_INV_s64[5][10]~255_combout\ <= NOT \s64[5][10]~255_combout\;
\ALT_INV_s64[4][10]~254_combout\ <= NOT \s64[4][10]~254_combout\;
\ALT_INV_s64[4][26]~253_combout\ <= NOT \s64[4][26]~253_combout\;
\ALT_INV_Y~22_combout\ <= NOT \Y~22_combout\;
\ALT_INV_s64[4][9]~252_combout\ <= NOT \s64[4][9]~252_combout\;
\ALT_INV_s64[5][41]~251_combout\ <= NOT \s64[5][41]~251_combout\;
\ALT_INV_s64[4][57]~250_combout\ <= NOT \s64[4][57]~250_combout\;
\ALT_INV_s64[4][41]~249_combout\ <= NOT \s64[4][41]~249_combout\;
\ALT_INV_s64[4][25]~248_combout\ <= NOT \s64[4][25]~248_combout\;
\ALT_INV_s32[4][25]~15_combout\ <= NOT \s32[4][25]~15_combout\;
\ALT_INV_Y~20_combout\ <= NOT \Y~20_combout\;
\ALT_INV_s64[4][8]~247_combout\ <= NOT \s64[4][8]~247_combout\;
\ALT_INV_s64[5][40]~246_combout\ <= NOT \s64[5][40]~246_combout\;
\ALT_INV_s64[4][56]~245_combout\ <= NOT \s64[4][56]~245_combout\;
\ALT_INV_s64[4][40]~244_combout\ <= NOT \s64[4][40]~244_combout\;
\ALT_INV_s64[4][24]~243_combout\ <= NOT \s64[4][24]~243_combout\;
\ALT_INV_s32[4][24]~14_combout\ <= NOT \s32[4][24]~14_combout\;
\ALT_INV_Y~18_combout\ <= NOT \Y~18_combout\;
\ALT_INV_s32[4][23]~13_combout\ <= NOT \s32[4][23]~13_combout\;
\ALT_INV_s32[3][31]~12_combout\ <= NOT \s32[3][31]~12_combout\;
\ALT_INV_s64[5][39]~242_combout\ <= NOT \s64[5][39]~242_combout\;
\ALT_INV_s64[4][55]~241_combout\ <= NOT \s64[4][55]~241_combout\;
\ALT_INV_s64[3][63]~240_combout\ <= NOT \s64[3][63]~240_combout\;
\ALT_INV_s64[3][55]~239_combout\ <= NOT \s64[3][55]~239_combout\;
\ALT_INV_s64[4][39]~238_combout\ <= NOT \s64[4][39]~238_combout\;
\ALT_INV_s64[3][47]~237_combout\ <= NOT \s64[3][47]~237_combout\;
\ALT_INV_s64[3][39]~236_combout\ <= NOT \s64[3][39]~236_combout\;
\ALT_INV_s64[5][7]~235_combout\ <= NOT \s64[5][7]~235_combout\;
\ALT_INV_s64[4][7]~234_combout\ <= NOT \s64[4][7]~234_combout\;
\ALT_INV_s64[3][7]~233_combout\ <= NOT \s64[3][7]~233_combout\;
\ALT_INV_s64[4][23]~232_combout\ <= NOT \s64[4][23]~232_combout\;
\ALT_INV_s64[3][23]~231_combout\ <= NOT \s64[3][23]~231_combout\;
\ALT_INV_s64[3][15]~230_combout\ <= NOT \s64[3][15]~230_combout\;
\ALT_INV_s64[3][31]~229_combout\ <= NOT \s64[3][31]~229_combout\;
\ALT_INV_Y~16_combout\ <= NOT \Y~16_combout\;
\ALT_INV_s32[4][22]~11_combout\ <= NOT \s32[4][22]~11_combout\;
\ALT_INV_s32[3][30]~10_combout\ <= NOT \s32[3][30]~10_combout\;
\ALT_INV_s64[5][38]~228_combout\ <= NOT \s64[5][38]~228_combout\;
\ALT_INV_s64[4][54]~227_combout\ <= NOT \s64[4][54]~227_combout\;
\ALT_INV_s64[3][62]~226_combout\ <= NOT \s64[3][62]~226_combout\;
\ALT_INV_s64[3][54]~225_combout\ <= NOT \s64[3][54]~225_combout\;
\ALT_INV_s64[4][38]~224_combout\ <= NOT \s64[4][38]~224_combout\;
\ALT_INV_s64[3][46]~223_combout\ <= NOT \s64[3][46]~223_combout\;
\ALT_INV_s64[3][38]~222_combout\ <= NOT \s64[3][38]~222_combout\;
\ALT_INV_s64[5][6]~221_combout\ <= NOT \s64[5][6]~221_combout\;
\ALT_INV_s64[4][6]~220_combout\ <= NOT \s64[4][6]~220_combout\;
\ALT_INV_s64[3][6]~219_combout\ <= NOT \s64[3][6]~219_combout\;
\ALT_INV_s64[4][22]~218_combout\ <= NOT \s64[4][22]~218_combout\;
\ALT_INV_s64[3][22]~217_combout\ <= NOT \s64[3][22]~217_combout\;
\ALT_INV_s64[3][14]~216_combout\ <= NOT \s64[3][14]~216_combout\;
\ALT_INV_s64[3][30]~215_combout\ <= NOT \s64[3][30]~215_combout\;
\ALT_INV_Y~14_combout\ <= NOT \Y~14_combout\;
\ALT_INV_s32[4][21]~9_combout\ <= NOT \s32[4][21]~9_combout\;
\ALT_INV_s32[3][29]~8_combout\ <= NOT \s32[3][29]~8_combout\;
\ALT_INV_s64[5][37]~214_combout\ <= NOT \s64[5][37]~214_combout\;
\ALT_INV_s64[4][53]~213_combout\ <= NOT \s64[4][53]~213_combout\;
\ALT_INV_s64[3][61]~212_combout\ <= NOT \s64[3][61]~212_combout\;
\ALT_INV_s64[3][53]~211_combout\ <= NOT \s64[3][53]~211_combout\;
\ALT_INV_s64[4][37]~210_combout\ <= NOT \s64[4][37]~210_combout\;
\ALT_INV_s64[3][45]~209_combout\ <= NOT \s64[3][45]~209_combout\;
\ALT_INV_s64[3][37]~208_combout\ <= NOT \s64[3][37]~208_combout\;
\ALT_INV_s64[5][5]~207_combout\ <= NOT \s64[5][5]~207_combout\;
\ALT_INV_s64[4][5]~206_combout\ <= NOT \s64[4][5]~206_combout\;
\ALT_INV_s64[3][5]~205_combout\ <= NOT \s64[3][5]~205_combout\;
\ALT_INV_s64[4][21]~204_combout\ <= NOT \s64[4][21]~204_combout\;
\ALT_INV_s64[3][21]~203_combout\ <= NOT \s64[3][21]~203_combout\;
\ALT_INV_s64[3][13]~202_combout\ <= NOT \s64[3][13]~202_combout\;
\ALT_INV_s64[3][29]~201_combout\ <= NOT \s64[3][29]~201_combout\;
\ALT_INV_Y~12_combout\ <= NOT \Y~12_combout\;
\ALT_INV_s32[4][20]~7_combout\ <= NOT \s32[4][20]~7_combout\;
\ALT_INV_s32[3][28]~6_combout\ <= NOT \s32[3][28]~6_combout\;
\ALT_INV_fill32~0_combout\ <= NOT \fill32~0_combout\;
\ALT_INV_s64[5][36]~200_combout\ <= NOT \s64[5][36]~200_combout\;
\ALT_INV_s64[4][52]~199_combout\ <= NOT \s64[4][52]~199_combout\;
\ALT_INV_s64[3][60]~198_combout\ <= NOT \s64[3][60]~198_combout\;
\ALT_INV_s64[3][52]~197_combout\ <= NOT \s64[3][52]~197_combout\;
\ALT_INV_s64[4][36]~196_combout\ <= NOT \s64[4][36]~196_combout\;
\ALT_INV_s64[3][44]~195_combout\ <= NOT \s64[3][44]~195_combout\;
\ALT_INV_s64[3][36]~194_combout\ <= NOT \s64[3][36]~194_combout\;
\ALT_INV_s64[5][4]~193_combout\ <= NOT \s64[5][4]~193_combout\;
\ALT_INV_s64[4][4]~192_combout\ <= NOT \s64[4][4]~192_combout\;
\ALT_INV_s64[3][4]~191_combout\ <= NOT \s64[3][4]~191_combout\;
\ALT_INV_s64[4][20]~190_combout\ <= NOT \s64[4][20]~190_combout\;
\ALT_INV_s64[3][20]~189_combout\ <= NOT \s64[3][20]~189_combout\;
\ALT_INV_s64[3][12]~188_combout\ <= NOT \s64[3][12]~188_combout\;
\ALT_INV_s64[3][28]~187_combout\ <= NOT \s64[3][28]~187_combout\;
\ALT_INV_Y~10_combout\ <= NOT \Y~10_combout\;
\ALT_INV_s32[4][19]~5_combout\ <= NOT \s32[4][19]~5_combout\;
\ALT_INV_s32[3][27]~4_combout\ <= NOT \s32[3][27]~4_combout\;
\ALT_INV_s64[2][0]~186_combout\ <= NOT \s64[2][0]~186_combout\;
\ALT_INV_s64[5][35]~185_combout\ <= NOT \s64[5][35]~185_combout\;
\ALT_INV_s64[4][51]~184_combout\ <= NOT \s64[4][51]~184_combout\;
\ALT_INV_s64[3][59]~183_combout\ <= NOT \s64[3][59]~183_combout\;
\ALT_INV_s64[2][63]~182_combout\ <= NOT \s64[2][63]~182_combout\;
\ALT_INV_s64[2][59]~181_combout\ <= NOT \s64[2][59]~181_combout\;
\ALT_INV_s64[3][51]~180_combout\ <= NOT \s64[3][51]~180_combout\;
\ALT_INV_s64[2][55]~179_combout\ <= NOT \s64[2][55]~179_combout\;
\ALT_INV_s64[2][51]~178_combout\ <= NOT \s64[2][51]~178_combout\;
\ALT_INV_s64[4][35]~177_combout\ <= NOT \s64[4][35]~177_combout\;
\ALT_INV_s64[3][43]~176_combout\ <= NOT \s64[3][43]~176_combout\;
\ALT_INV_s64[2][47]~175_combout\ <= NOT \s64[2][47]~175_combout\;
\ALT_INV_s64[2][43]~174_combout\ <= NOT \s64[2][43]~174_combout\;
\ALT_INV_s64[3][35]~173_combout\ <= NOT \s64[3][35]~173_combout\;
\ALT_INV_s64[2][39]~172_combout\ <= NOT \s64[2][39]~172_combout\;
\ALT_INV_s64[2][0]~171_combout\ <= NOT \s64[2][0]~171_combout\;
\ALT_INV_s64[2][35]~170_combout\ <= NOT \s64[2][35]~170_combout\;
\ALT_INV_s64[5][3]~169_combout\ <= NOT \s64[5][3]~169_combout\;
\ALT_INV_s64[4][3]~168_combout\ <= NOT \s64[4][3]~168_combout\;
\ALT_INV_s64[3][3]~167_combout\ <= NOT \s64[3][3]~167_combout\;
\ALT_INV_s64[2][0]~166_combout\ <= NOT \s64[2][0]~166_combout\;
\ALT_INV_s64[2][0]~165_combout\ <= NOT \s64[2][0]~165_combout\;
\ALT_INV_s64[2][0]~164_combout\ <= NOT \s64[2][0]~164_combout\;
\ALT_INV_s64[4][19]~163_combout\ <= NOT \s64[4][19]~163_combout\;
\ALT_INV_s64[3][19]~162_combout\ <= NOT \s64[3][19]~162_combout\;
\ALT_INV_s64[2][0]~161_combout\ <= NOT \s64[2][0]~161_combout\;
\ALT_INV_s64[2][0]~160_combout\ <= NOT \s64[2][0]~160_combout\;
\ALT_INV_s64[2][0]~159_combout\ <= NOT \s64[2][0]~159_combout\;
\ALT_INV_s64[2][0]~158_combout\ <= NOT \s64[2][0]~158_combout\;
\ALT_INV_s64[3][11]~157_combout\ <= NOT \s64[3][11]~157_combout\;
\ALT_INV_s64[2][0]~156_combout\ <= NOT \s64[2][0]~156_combout\;
\ALT_INV_s64[2][0]~155_combout\ <= NOT \s64[2][0]~155_combout\;
\ALT_INV_s64[2][0]~154_combout\ <= NOT \s64[2][0]~154_combout\;
\ALT_INV_s64[2][0]~153_combout\ <= NOT \s64[2][0]~153_combout\;
\ALT_INV_s64[3][27]~152_combout\ <= NOT \s64[3][27]~152_combout\;
\ALT_INV_s64[2][0]~151_combout\ <= NOT \s64[2][0]~151_combout\;
\ALT_INV_s64[2][0]~150_combout\ <= NOT \s64[2][0]~150_combout\;
\ALT_INV_s64[2][0]~149_combout\ <= NOT \s64[2][0]~149_combout\;
\ALT_INV_s64[2][0]~148_combout\ <= NOT \s64[2][0]~148_combout\;
\ALT_INV_Y~8_combout\ <= NOT \Y~8_combout\;
\ALT_INV_s32[4][18]~3_combout\ <= NOT \s32[4][18]~3_combout\;
\ALT_INV_s32[3][26]~2_combout\ <= NOT \s32[3][26]~2_combout\;
\ALT_INV_s64[2][0]~147_combout\ <= NOT \s64[2][0]~147_combout\;
\ALT_INV_s64[5][34]~146_combout\ <= NOT \s64[5][34]~146_combout\;
\ALT_INV_s64[4][50]~145_combout\ <= NOT \s64[4][50]~145_combout\;
\ALT_INV_s64[3][58]~144_combout\ <= NOT \s64[3][58]~144_combout\;
\ALT_INV_s64[2][62]~143_combout\ <= NOT \s64[2][62]~143_combout\;
\ALT_INV_fill64~0_combout\ <= NOT \fill64~0_combout\;
\ALT_INV_s64[2][58]~142_combout\ <= NOT \s64[2][58]~142_combout\;
\ALT_INV_s64[3][50]~141_combout\ <= NOT \s64[3][50]~141_combout\;
\ALT_INV_s64[2][54]~140_combout\ <= NOT \s64[2][54]~140_combout\;
\ALT_INV_s64[2][50]~139_combout\ <= NOT \s64[2][50]~139_combout\;
\ALT_INV_s64[4][34]~138_combout\ <= NOT \s64[4][34]~138_combout\;
\ALT_INV_s64[3][42]~137_combout\ <= NOT \s64[3][42]~137_combout\;
\ALT_INV_s64[2][46]~136_combout\ <= NOT \s64[2][46]~136_combout\;
\ALT_INV_s64[2][42]~135_combout\ <= NOT \s64[2][42]~135_combout\;
\ALT_INV_s64[3][34]~134_combout\ <= NOT \s64[3][34]~134_combout\;
\ALT_INV_s64[2][38]~133_combout\ <= NOT \s64[2][38]~133_combout\;
\ALT_INV_s64[2][0]~132_combout\ <= NOT \s64[2][0]~132_combout\;
\ALT_INV_s64[2][34]~131_combout\ <= NOT \s64[2][34]~131_combout\;
\ALT_INV_s64[5][2]~130_combout\ <= NOT \s64[5][2]~130_combout\;
\ALT_INV_s64[4][2]~129_combout\ <= NOT \s64[4][2]~129_combout\;
\ALT_INV_s64[3][2]~128_combout\ <= NOT \s64[3][2]~128_combout\;
\ALT_INV_s64[2][0]~127_combout\ <= NOT \s64[2][0]~127_combout\;
\ALT_INV_s64[2][0]~126_combout\ <= NOT \s64[2][0]~126_combout\;
\ALT_INV_s64[2][0]~125_combout\ <= NOT \s64[2][0]~125_combout\;
\ALT_INV_s64[4][18]~124_combout\ <= NOT \s64[4][18]~124_combout\;
\ALT_INV_s64[3][18]~123_combout\ <= NOT \s64[3][18]~123_combout\;
\ALT_INV_s64[2][0]~122_combout\ <= NOT \s64[2][0]~122_combout\;
\ALT_INV_s64[2][0]~121_combout\ <= NOT \s64[2][0]~121_combout\;
\ALT_INV_s64[2][0]~120_combout\ <= NOT \s64[2][0]~120_combout\;
\ALT_INV_s64[2][0]~119_combout\ <= NOT \s64[2][0]~119_combout\;
\ALT_INV_s64[3][10]~118_combout\ <= NOT \s64[3][10]~118_combout\;
\ALT_INV_s64[2][0]~117_combout\ <= NOT \s64[2][0]~117_combout\;
\ALT_INV_s64[2][0]~116_combout\ <= NOT \s64[2][0]~116_combout\;
\ALT_INV_s64[2][0]~115_combout\ <= NOT \s64[2][0]~115_combout\;
\ALT_INV_s64[2][0]~114_combout\ <= NOT \s64[2][0]~114_combout\;
\ALT_INV_s64[3][26]~113_combout\ <= NOT \s64[3][26]~113_combout\;
\ALT_INV_s64[2][0]~112_combout\ <= NOT \s64[2][0]~112_combout\;
\ALT_INV_s64[2][0]~111_combout\ <= NOT \s64[2][0]~111_combout\;
\ALT_INV_s64[2][0]~110_combout\ <= NOT \s64[2][0]~110_combout\;
\ALT_INV_s64[2][0]~109_combout\ <= NOT \s64[2][0]~109_combout\;
\ALT_INV_Y~6_combout\ <= NOT \Y~6_combout\;
\ALT_INV_Y~5_combout\ <= NOT \Y~5_combout\;
\ALT_INV_Y~4_combout\ <= NOT \Y~4_combout\;
\ALT_INV_s64[5][1]~108_combout\ <= NOT \s64[5][1]~108_combout\;
\ALT_INV_s64[4][1]~107_combout\ <= NOT \s64[4][1]~107_combout\;
\ALT_INV_s64[3][1]~106_combout\ <= NOT \s64[3][1]~106_combout\;
\ALT_INV_s64[2][0]~105_combout\ <= NOT \s64[2][0]~105_combout\;
\ALT_INV_s64[2][0]~104_combout\ <= NOT \s64[2][0]~104_combout\;
\ALT_INV_s64[2][0]~103_combout\ <= NOT \s64[2][0]~103_combout\;
\ALT_INV_s64[5][33]~102_combout\ <= NOT \s64[5][33]~102_combout\;
\ALT_INV_s64[4][49]~101_combout\ <= NOT \s64[4][49]~101_combout\;
\ALT_INV_s64[3][57]~100_combout\ <= NOT \s64[3][57]~100_combout\;
\ALT_INV_s64[2][61]~99_combout\ <= NOT \s64[2][61]~99_combout\;
\ALT_INV_s64[1][63]~98_combout\ <= NOT \s64[1][63]~98_combout\;
\ALT_INV_s64[1][61]~97_combout\ <= NOT \s64[1][61]~97_combout\;
\ALT_INV_s64[2][57]~96_combout\ <= NOT \s64[2][57]~96_combout\;
\ALT_INV_s64[1][59]~95_combout\ <= NOT \s64[1][59]~95_combout\;
\ALT_INV_s64[1][57]~94_combout\ <= NOT \s64[1][57]~94_combout\;
\ALT_INV_s64[3][49]~93_combout\ <= NOT \s64[3][49]~93_combout\;
\ALT_INV_s64[2][53]~92_combout\ <= NOT \s64[2][53]~92_combout\;
\ALT_INV_s64[1][55]~91_combout\ <= NOT \s64[1][55]~91_combout\;
\ALT_INV_s64[1][53]~90_combout\ <= NOT \s64[1][53]~90_combout\;
\ALT_INV_s64[2][49]~89_combout\ <= NOT \s64[2][49]~89_combout\;
\ALT_INV_s64[1][51]~88_combout\ <= NOT \s64[1][51]~88_combout\;
\ALT_INV_s64[1][49]~87_combout\ <= NOT \s64[1][49]~87_combout\;
\ALT_INV_s64[4][33]~86_combout\ <= NOT \s64[4][33]~86_combout\;
\ALT_INV_s64[3][41]~85_combout\ <= NOT \s64[3][41]~85_combout\;
\ALT_INV_s64[2][45]~84_combout\ <= NOT \s64[2][45]~84_combout\;
\ALT_INV_s64[1][47]~83_combout\ <= NOT \s64[1][47]~83_combout\;
\ALT_INV_s64[1][45]~82_combout\ <= NOT \s64[1][45]~82_combout\;
\ALT_INV_s64[2][41]~81_combout\ <= NOT \s64[2][41]~81_combout\;
\ALT_INV_s64[1][43]~80_combout\ <= NOT \s64[1][43]~80_combout\;
\ALT_INV_s64[1][41]~79_combout\ <= NOT \s64[1][41]~79_combout\;
\ALT_INV_s64[3][33]~78_combout\ <= NOT \s64[3][33]~78_combout\;
\ALT_INV_s64[2][37]~77_combout\ <= NOT \s64[2][37]~77_combout\;
\ALT_INV_s64[1][39]~76_combout\ <= NOT \s64[1][39]~76_combout\;
\ALT_INV_s64[1][37]~75_combout\ <= NOT \s64[1][37]~75_combout\;
\ALT_INV_s64[2][0]~74_combout\ <= NOT \s64[2][0]~74_combout\;
\ALT_INV_s64[2][0]~73_combout\ <= NOT \s64[2][0]~73_combout\;
\ALT_INV_s64[1][35]~72_combout\ <= NOT \s64[1][35]~72_combout\;
\ALT_INV_s64[1][33]~71_combout\ <= NOT \s64[1][33]~71_combout\;
\ALT_INV_s64[4][17]~70_combout\ <= NOT \s64[4][17]~70_combout\;
\ALT_INV_s64[3][25]~69_combout\ <= NOT \s64[3][25]~69_combout\;
\ALT_INV_s64[2][0]~68_combout\ <= NOT \s64[2][0]~68_combout\;
\ALT_INV_Y~3_combout\ <= NOT \Y~3_combout\;
\ALT_INV_Y~2_combout\ <= NOT \Y~2_combout\;
\ALT_INV_s32[4][17]~1_combout\ <= NOT \s32[4][17]~1_combout\;
\ALT_INV_s32[3][25]~0_combout\ <= NOT \s32[3][25]~0_combout\;
\ALT_INV_s64[2][0]~67_combout\ <= NOT \s64[2][0]~67_combout\;
\ALT_INV_s64[2][0]~66_combout\ <= NOT \s64[2][0]~66_combout\;
\ALT_INV_s64[2][0]~65_combout\ <= NOT \s64[2][0]~65_combout\;
\ALT_INV_s64[3][17]~64_combout\ <= NOT \s64[3][17]~64_combout\;
\ALT_INV_s64[2][0]~63_combout\ <= NOT \s64[2][0]~63_combout\;
\ALT_INV_s64[2][0]~62_combout\ <= NOT \s64[2][0]~62_combout\;
\ALT_INV_s64[2][0]~61_combout\ <= NOT \s64[2][0]~61_combout\;
\ALT_INV_s64[2][0]~60_combout\ <= NOT \s64[2][0]~60_combout\;
\ALT_INV_s64[3][9]~59_combout\ <= NOT \s64[3][9]~59_combout\;
\ALT_INV_s64[2][0]~58_combout\ <= NOT \s64[2][0]~58_combout\;
\ALT_INV_s64[2][0]~57_combout\ <= NOT \s64[2][0]~57_combout\;
\ALT_INV_s64[2][0]~56_combout\ <= NOT \s64[2][0]~56_combout\;
\ALT_INV_s64[2][0]~55_combout\ <= NOT \s64[2][0]~55_combout\;
\ALT_INV_s64[4][0]~54_combout\ <= NOT \s64[4][0]~54_combout\;
\ALT_INV_s64[3][0]~53_combout\ <= NOT \s64[3][0]~53_combout\;
\ALT_INV_s64[2][0]~52_combout\ <= NOT \s64[2][0]~52_combout\;
\ALT_INV_s64[2][0]~51_combout\ <= NOT \s64[2][0]~51_combout\;
\ALT_INV_s64[2][0]~50_combout\ <= NOT \s64[2][0]~50_combout\;
\ALT_INV_s64[5][32]~49_combout\ <= NOT \s64[5][32]~49_combout\;
\ALT_INV_s64[4][48]~48_combout\ <= NOT \s64[4][48]~48_combout\;
\ALT_INV_s64[3][56]~47_combout\ <= NOT \s64[3][56]~47_combout\;
\ALT_INV_s64[2][60]~46_combout\ <= NOT \s64[2][60]~46_combout\;
\ALT_INV_s64[1][62]~45_combout\ <= NOT \s64[1][62]~45_combout\;
\ALT_INV_s64[1][60]~44_combout\ <= NOT \s64[1][60]~44_combout\;
\ALT_INV_s64[2][56]~43_combout\ <= NOT \s64[2][56]~43_combout\;
\ALT_INV_s64[1][58]~42_combout\ <= NOT \s64[1][58]~42_combout\;
\ALT_INV_s64[1][56]~41_combout\ <= NOT \s64[1][56]~41_combout\;
\ALT_INV_s64[3][48]~40_combout\ <= NOT \s64[3][48]~40_combout\;
\ALT_INV_s64[2][52]~39_combout\ <= NOT \s64[2][52]~39_combout\;
\ALT_INV_s64[1][54]~38_combout\ <= NOT \s64[1][54]~38_combout\;
\ALT_INV_s64[1][52]~37_combout\ <= NOT \s64[1][52]~37_combout\;
\ALT_INV_s64[2][48]~36_combout\ <= NOT \s64[2][48]~36_combout\;
\ALT_INV_s64[1][50]~35_combout\ <= NOT \s64[1][50]~35_combout\;
\ALT_INV_s64[1][48]~34_combout\ <= NOT \s64[1][48]~34_combout\;
\ALT_INV_s64[4][32]~33_combout\ <= NOT \s64[4][32]~33_combout\;
\ALT_INV_s64[3][40]~32_combout\ <= NOT \s64[3][40]~32_combout\;
\ALT_INV_s64[2][44]~31_combout\ <= NOT \s64[2][44]~31_combout\;
\ALT_INV_s64[1][46]~30_combout\ <= NOT \s64[1][46]~30_combout\;
\ALT_INV_s64[1][44]~29_combout\ <= NOT \s64[1][44]~29_combout\;
\ALT_INV_s64[2][40]~28_combout\ <= NOT \s64[2][40]~28_combout\;
\ALT_INV_s64[1][42]~27_combout\ <= NOT \s64[1][42]~27_combout\;
\ALT_INV_s64[1][40]~26_combout\ <= NOT \s64[1][40]~26_combout\;
\ALT_INV_s64[3][32]~25_combout\ <= NOT \s64[3][32]~25_combout\;
\ALT_INV_s64[2][36]~24_combout\ <= NOT \s64[2][36]~24_combout\;
\ALT_INV_s64[1][38]~23_combout\ <= NOT \s64[1][38]~23_combout\;
\ALT_INV_s64[1][36]~22_combout\ <= NOT \s64[1][36]~22_combout\;
\ALT_INV_s64[2][0]~21_combout\ <= NOT \s64[2][0]~21_combout\;
\ALT_INV_s64[2][0]~20_combout\ <= NOT \s64[2][0]~20_combout\;
\ALT_INV_s64[2][0]~19_combout\ <= NOT \s64[2][0]~19_combout\;
\ALT_INV_s64[2][0]~18_combout\ <= NOT \s64[2][0]~18_combout\;
\ALT_INV_s64[1][34]~17_combout\ <= NOT \s64[1][34]~17_combout\;
\ALT_INV_s64[1][32]~16_combout\ <= NOT \s64[1][32]~16_combout\;
\ALT_INV_s64[4][16]~15_combout\ <= NOT \s64[4][16]~15_combout\;
\ALT_INV_s64[3][8]~14_combout\ <= NOT \s64[3][8]~14_combout\;
\ALT_INV_s64[2][0]~13_combout\ <= NOT \s64[2][0]~13_combout\;
\ALT_INV_s64[2][0]~12_combout\ <= NOT \s64[2][0]~12_combout\;
\ALT_INV_s64[2][0]~11_combout\ <= NOT \s64[2][0]~11_combout\;
\ALT_INV_s64[2][0]~10_combout\ <= NOT \s64[2][0]~10_combout\;
\ALT_INV_s64[3][16]~9_combout\ <= NOT \s64[3][16]~9_combout\;
\ALT_INV_s64[2][0]~8_combout\ <= NOT \s64[2][0]~8_combout\;
\ALT_INV_s64[2][0]~7_combout\ <= NOT \s64[2][0]~7_combout\;
\ALT_INV_s64[2][0]~6_combout\ <= NOT \s64[2][0]~6_combout\;
\ALT_INV_s64[2][0]~5_combout\ <= NOT \s64[2][0]~5_combout\;
\ALT_INV_s64[3][24]~4_combout\ <= NOT \s64[3][24]~4_combout\;
\ALT_INV_s64[2][0]~3_combout\ <= NOT \s64[2][0]~3_combout\;
\ALT_INV_s64[2][0]~2_combout\ <= NOT \s64[2][0]~2_combout\;
\ALT_INV_s64[2][0]~1_combout\ <= NOT \s64[2][0]~1_combout\;
\ALT_INV_s64[2][0]~0_combout\ <= NOT \s64[2][0]~0_combout\;
\ALT_INV_Y~0_combout\ <= NOT \Y~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_s64[2][0]~324_combout\ <= NOT \s64[2][0]~324_combout\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_Y~99_combout\ <= NOT \Y~99_combout\;
\ALT_INV_Y~98_combout\ <= NOT \Y~98_combout\;
\ALT_INV_s64[5][9]~323_combout\ <= NOT \s64[5][9]~323_combout\;
\ALT_INV_s64[5][8]~322_combout\ <= NOT \s64[5][8]~322_combout\;
\ALT_INV_s64[5][0]~321_combout\ <= NOT \s64[5][0]~321_combout\;
\ALT_INV_s64[5][31]~320_combout\ <= NOT \s64[5][31]~320_combout\;
\ALT_INV_s64[5][63]~319_combout\ <= NOT \s64[5][63]~319_combout\;
\ALT_INV_Y_32_extended[31]~0_combout\ <= NOT \Y_32_extended[31]~0_combout\;
\ALT_INV_Y~63_combout\ <= NOT \Y~63_combout\;
\ALT_INV_s64[5][62]~318_combout\ <= NOT \s64[5][62]~318_combout\;
\ALT_INV_s64[5][30]~317_combout\ <= NOT \s64[5][30]~317_combout\;
\ALT_INV_s64[5][61]~316_combout\ <= NOT \s64[5][61]~316_combout\;
\ALT_INV_s64[5][29]~315_combout\ <= NOT \s64[5][29]~315_combout\;
\ALT_INV_Y~60_combout\ <= NOT \Y~60_combout\;
\ALT_INV_s64[5][60]~314_combout\ <= NOT \s64[5][60]~314_combout\;
\ALT_INV_s64[5][28]~313_combout\ <= NOT \s64[5][28]~313_combout\;
\ALT_INV_Y~58_combout\ <= NOT \Y~58_combout\;
\ALT_INV_s64[5][59]~312_combout\ <= NOT \s64[5][59]~312_combout\;
\ALT_INV_s64[5][27]~311_combout\ <= NOT \s64[5][27]~311_combout\;
\ALT_INV_Y~56_combout\ <= NOT \Y~56_combout\;
\ALT_INV_s64[5][58]~310_combout\ <= NOT \s64[5][58]~310_combout\;
\ALT_INV_s64[5][26]~309_combout\ <= NOT \s64[5][26]~309_combout\;
\ALT_INV_s64[5][57]~308_combout\ <= NOT \s64[5][57]~308_combout\;
\ALT_INV_s64[5][25]~307_combout\ <= NOT \s64[5][25]~307_combout\;
\ALT_INV_Y~53_combout\ <= NOT \Y~53_combout\;
\ALT_INV_s64[5][56]~306_combout\ <= NOT \s64[5][56]~306_combout\;
\ALT_INV_s64[5][24]~305_combout\ <= NOT \s64[5][24]~305_combout\;
\ALT_INV_Y~51_combout\ <= NOT \Y~51_combout\;
\ALT_INV_s64[5][55]~304_combout\ <= NOT \s64[5][55]~304_combout\;
\ALT_INV_s64[5][23]~303_combout\ <= NOT \s64[5][23]~303_combout\;
\ALT_INV_Y~49_combout\ <= NOT \Y~49_combout\;
\ALT_INV_s64[5][54]~302_combout\ <= NOT \s64[5][54]~302_combout\;
\ALT_INV_s64[5][22]~301_combout\ <= NOT \s64[5][22]~301_combout\;
\ALT_INV_Y~47_combout\ <= NOT \Y~47_combout\;
\ALT_INV_s64[5][53]~300_combout\ <= NOT \s64[5][53]~300_combout\;
\ALT_INV_s64[5][21]~299_combout\ <= NOT \s64[5][21]~299_combout\;
\ALT_INV_Y~45_combout\ <= NOT \Y~45_combout\;
\ALT_INV_s64[5][52]~298_combout\ <= NOT \s64[5][52]~298_combout\;
\ALT_INV_s64[5][20]~297_combout\ <= NOT \s64[5][20]~297_combout\;
\ALT_INV_Y~43_combout\ <= NOT \Y~43_combout\;
\ALT_INV_s64[5][51]~296_combout\ <= NOT \s64[5][51]~296_combout\;
\ALT_INV_s64[5][19]~295_combout\ <= NOT \s64[5][19]~295_combout\;
\ALT_INV_Y~41_combout\ <= NOT \Y~41_combout\;
\ALT_INV_s64[5][50]~294_combout\ <= NOT \s64[5][50]~294_combout\;
\ALT_INV_s64[5][18]~293_combout\ <= NOT \s64[5][18]~293_combout\;
\ALT_INV_Y~39_combout\ <= NOT \Y~39_combout\;
\ALT_INV_s64[5][49]~292_combout\ <= NOT \s64[5][49]~292_combout\;
\ALT_INV_s64[5][17]~291_combout\ <= NOT \s64[5][17]~291_combout\;
\ALT_INV_Y~37_combout\ <= NOT \Y~37_combout\;
\ALT_INV_s64[5][48]~290_combout\ <= NOT \s64[5][48]~290_combout\;

-- Location: IOOBUF_X42_Y56_N98
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X38_Y56_N36
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~7_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X59_Y51_N67
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~11_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X25_Y56_N5
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~13_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X40_Y56_N33
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X51_Y56_N98
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X36_Y56_N36
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~23_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X56_Y56_N95
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X55_Y56_N5
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X38_Y56_N2
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X35_Y56_N36
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X46_Y56_N2
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~33_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X36_Y56_N2
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~35_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~38_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X23_Y56_N36
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~40_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X59_Y33_N67
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~42_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X35_Y56_N67
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~44_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X59_Y22_N98
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~46_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X49_Y56_N2
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~48_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~50_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X56_Y56_N33
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~52_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~54_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~55_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~57_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~59_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X55_Y56_N98
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~61_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~62_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X23_Y56_N98
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~64_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~65_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\Y[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~66_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\Y[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~67_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\Y[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~68_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X40_Y56_N67
\Y[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~69_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X53_Y56_N67
\Y[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~70_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X51_Y56_N67
\Y[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~71_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\Y[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~72_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X48_Y56_N67
\Y[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~73_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\Y[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~74_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\Y[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~75_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X55_Y56_N67
\Y[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~76_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X48_Y56_N33
\Y[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~77_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X44_Y56_N2
\Y[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~78_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X38_Y56_N98
\Y[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~79_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X53_Y56_N98
\Y[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~80_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X25_Y56_N98
\Y[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~81_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X21_Y56_N67
\Y[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~82_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X36_Y56_N67
\Y[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~83_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X56_Y56_N64
\Y[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~84_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X35_Y56_N2
\Y[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~85_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X49_Y56_N98
\Y[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~86_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X56_Y56_N2
\Y[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~87_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\Y[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~88_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X53_Y56_N36
\Y[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~89_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\Y[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~90_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X19_Y56_N67
\Y[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~91_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X49_Y56_N67
\Y[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~92_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X53_Y56_N2
\Y[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~93_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X35_Y56_N98
\Y[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~94_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\Y[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~95_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\Y[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~96_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X33_Y56_N5
\Y[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~97_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X42_Y56_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X50_Y40_N22
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X59_Y25_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X59_Y36_N94
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X46_Y56_N94
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X46_Y44_N2
\s64[2][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~0_combout\ = ( \A[26]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))) ) ) ) # ( !\A[26]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[27]~input_o\))) ) ) ) # ( \A[26]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[26]~input_o\ & ( !\B[0]~input_o\ & ( (\A[24]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~0_combout\);

-- Location: IOIBUF_X59_Y31_N1
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X48_Y56_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X48_Y56_N94
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y51_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X47_Y43_N4
\s64[2][0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~2_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\) # (\A[29]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (\A[29]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[2][0]~2_combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X51_Y56_N32
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y46_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: MLABCELL_X46_Y44_N4
\s64[2][0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~1_combout\ = ( \A[22]~input_o\ & ( \A[24]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[23]~input_o\)) # (\B[1]~input_o\ & ((\A[21]~input_o\)))) ) ) ) # ( !\A[22]~input_o\ & ( \A[24]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[23]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[21]~input_o\)))) ) ) ) # ( \A[22]~input_o\ & ( !\A[24]~input_o\ & ( (!\B[1]~input_o\ & (\A[23]~input_o\ & (\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # 
-- (\A[21]~input_o\)))) ) ) ) # ( !\A[22]~input_o\ & ( !\A[24]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[23]~input_o\)) # (\B[1]~input_o\ & ((\A[21]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \s64[2][0]~1_combout\);

-- Location: IOIBUF_X59_Y49_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X59_Y48_N32
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X59_Y49_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X59_Y51_N94
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: MLABCELL_X52_Y43_N2
\s64[2][0]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~3_combout\ = ( \A[18]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[20]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[17]~input_o\)))) ) ) ) # ( !\A[18]~input_o\ & ( \A[19]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[20]~input_o\))) # (\B[1]~input_o\ & (((\A[17]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[18]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[20]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((!\B[0]~input_o\) # (\A[17]~input_o\)))) ) ) ) # ( !\A[18]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[20]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[17]~input_o\ & \B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \s64[2][0]~3_combout\);

-- Location: LABCELL_X43_Y43_N0
\s64[3][24]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][24]~4_combout\ = ( \s64[2][0]~1_combout\ & ( \s64[2][0]~3_combout\ & ( ((!\B[2]~input_o\ & (\s64[2][0]~0_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~2_combout\)))) # (\Equal0~0_combout\) ) ) ) # ( !\s64[2][0]~1_combout\ & ( \s64[2][0]~3_combout\ & 
-- ( (!\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~0_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~2_combout\))))) # (\Equal0~0_combout\ & (((\B[2]~input_o\)))) ) ) ) # ( \s64[2][0]~1_combout\ & ( !\s64[2][0]~3_combout\ & ( (!\Equal0~0_combout\ & 
-- ((!\B[2]~input_o\ & (\s64[2][0]~0_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~2_combout\))))) # (\Equal0~0_combout\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\s64[2][0]~1_combout\ & ( !\s64[2][0]~3_combout\ & ( (!\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- (\s64[2][0]~0_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~0_combout\,
	datac => \ALT_INV_s64[2][0]~2_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_s64[2][0]~1_combout\,
	dataf => \ALT_INV_s64[2][0]~3_combout\,
	combout => \s64[3][24]~4_combout\);

-- Location: IOIBUF_X59_Y31_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X49_Y43_N10
\s64[2][0]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~11_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[5]~input_o\)) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (\A[6]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~11_combout\);

-- Location: IOIBUF_X59_Y49_N1
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X51_Y56_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X49_Y43_N6
\s64[2][0]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~10_combout\ = ( \A[8]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( \A[10]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\ & 
-- ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[11]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[9]~input_o\))) # (\B[1]~input_o\ & (((\A[11]~input_o\ & \B[0]~input_o\)))) 
-- ) ) ) # ( !\A[8]~input_o\ & ( !\A[10]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \s64[2][0]~10_combout\);

-- Location: IOIBUF_X59_Y28_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X59_Y31_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X55_Y56_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y51_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X50_Y43_N26
\s64[2][0]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~12_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[15]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (\B[0]~input_o\) # (\A[12]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[15]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\A[12]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~12_combout\);

-- Location: IOIBUF_X36_Y56_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X25_Y56_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X45_Y43_N22
\s64[2][0]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~13_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (\A[2]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~13_combout\);

-- Location: LABCELL_X43_Y43_N8
\s64[3][8]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][8]~14_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~13_combout\ & ( (\s64[2][0]~12_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~13_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~10_combout\))) # (\Equal0~0_combout\ & 
-- (\s64[2][0]~11_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~13_combout\ & ( (!\Equal0~0_combout\ & \s64[2][0]~12_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~13_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~10_combout\))) # 
-- (\Equal0~0_combout\ & (\s64[2][0]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~11_combout\,
	datac => \ALT_INV_s64[2][0]~10_combout\,
	datad => \ALT_INV_s64[2][0]~12_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~13_combout\,
	combout => \s64[3][8]~14_combout\);

-- Location: IOIBUF_X59_Y48_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X52_Y43_N6
\s64[2][0]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~5_combout\ = ( \A[18]~input_o\ & ( \A[19]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[18]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[18]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)))) 
-- # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[18]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \s64[2][0]~5_combout\);

-- Location: LABCELL_X50_Y43_N22
\s64[2][0]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~6_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (\A[14]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( \B[1]~input_o\ 
-- & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & \A[14]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~6_combout\);

-- Location: MLABCELL_X46_Y44_N10
\s64[2][0]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~7_combout\ = ( \A[23]~input_o\ & ( \A[20]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[22]~input_o\)))) # (\B[0]~input_o\ & (((\A[21]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( \A[20]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[22]~input_o\)))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[21]~input_o\))) ) ) ) # ( \A[23]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[22]~input_o\)))) # (\B[0]~input_o\ & 
-- (((\A[21]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[22]~input_o\)))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[21]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \s64[2][0]~7_combout\);

-- Location: MLABCELL_X49_Y43_N0
\s64[2][0]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~8_combout\ = ( \A[12]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[10]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \s64[2][0]~8_combout\);

-- Location: LABCELL_X43_Y43_N4
\s64[3][16]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][16]~9_combout\ = ( \s64[2][0]~7_combout\ & ( \s64[2][0]~8_combout\ & ( ((!\Equal0~0_combout\ & (\s64[2][0]~5_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~6_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\s64[2][0]~7_combout\ & ( 
-- \s64[2][0]~8_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~5_combout\ & ((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & (((\B[2]~input_o\) # (\s64[2][0]~6_combout\)))) ) ) ) # ( \s64[2][0]~7_combout\ & ( !\s64[2][0]~8_combout\ & ( (!\Equal0~0_combout\ & 
-- (((\B[2]~input_o\)) # (\s64[2][0]~5_combout\))) # (\Equal0~0_combout\ & (((\s64[2][0]~6_combout\ & !\B[2]~input_o\)))) ) ) ) # ( !\s64[2][0]~7_combout\ & ( !\s64[2][0]~8_combout\ & ( (!\B[2]~input_o\ & ((!\Equal0~0_combout\ & (\s64[2][0]~5_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~5_combout\,
	datab => \ALT_INV_s64[2][0]~6_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_s64[2][0]~7_combout\,
	dataf => \ALT_INV_s64[2][0]~8_combout\,
	combout => \s64[3][16]~9_combout\);

-- Location: IOIBUF_X42_Y56_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X43_Y45_N2
\s64[4][16]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][16]~15_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][24]~4_combout\)) # (\Equal0~0_combout\ & ((\s64[3][8]~14_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][16]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][24]~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][8]~14_combout\,
	datad => \ALT_INV_s64[3][16]~9_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][16]~15_combout\);

-- Location: IOIBUF_X59_Y30_N1
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X59_Y33_N32
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LABCELL_X47_Y40_N4
\s64[1][34]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][34]~17_combout\ = ( \A[34]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[35]~input_o\) ) ) ) # ( !\A[34]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\B[0]~input_o\ & \A[35]~input_o\) ) ) ) # ( \A[34]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & (\A[35]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\A[33]~input_o\)))) ) ) ) # ( !\A[34]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\A[35]~input_o\)) # 
-- (\ShiftFN[0]~input_o\ & ((\A[33]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110111010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][34]~17_combout\);

-- Location: IOIBUF_X59_Y36_N1
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X59_Y36_N32
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LABCELL_X50_Y40_N26
\s64[1][36]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][36]~22_combout\ = ( \B[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \A[37]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \A[36]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\A[37]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\A[35]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \A[36]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001000100111011100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_A[35]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][36]~22_combout\);

-- Location: IOIBUF_X59_Y28_N1
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LABCELL_X50_Y40_N30
\s64[1][38]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][38]~23_combout\ = ( \B[0]~input_o\ & ( \A[39]~input_o\ & ( ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)) # (\A[37]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[39]~input_o\ & ( \A[38]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\A[39]~input_o\ & ( 
-- (\A[37]~input_o\ & (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[39]~input_o\ & ( \A[38]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000011000001010101010101011111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \s64[1][38]~23_combout\);

-- Location: MLABCELL_X46_Y43_N2
\s64[2][36]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][36]~24_combout\ = ( \B[1]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[1][38]~23_combout\))) # (\Equal0~0_combout\ & (\s64[1][34]~17_combout\)) ) ) # ( !\B[1]~input_o\ & ( \s64[1][36]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][34]~17_combout\,
	datab => \ALT_INV_s64[1][36]~22_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[1][38]~23_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][36]~24_combout\);

-- Location: IOIBUF_X59_Y26_N32
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LABCELL_X50_Y40_N16
\s64[1][42]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][42]~27_combout\ = ( \A[43]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\A[42]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[43]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & \A[42]~input_o\) ) ) ) # ( \A[43]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\ & (((\A[42]~input_o\)))) # (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\A[41]~input_o\)))) ) ) ) # ( !\A[43]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[42]~input_o\)))) # (\B[0]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- (\A[41]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000010111111101100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	datae => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][42]~27_combout\);

-- Location: IOIBUF_X59_Y25_N63
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LABCELL_X50_Y40_N14
\s64[1][40]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][40]~26_combout\ = ( \A[41]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\B[0]~input_o\) # (\A[40]~input_o\) ) ) ) # ( !\A[41]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\A[40]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[41]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\ & (((\A[40]~input_o\)))) # (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\A[39]~input_o\)))) ) ) ) # ( !\A[41]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[40]~input_o\)))) # (\B[0]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- ((\A[39]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001110100011111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	datae => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][40]~26_combout\);

-- Location: LABCELL_X45_Y41_N20
\s64[2][40]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][40]~28_combout\ = ( \B[1]~input_o\ & ( \s64[1][40]~26_combout\ & ( (!\Equal0~0_combout\ & (\s64[1][42]~27_combout\)) # (\Equal0~0_combout\ & ((\s64[1][38]~23_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( \s64[1][40]~26_combout\ ) ) # ( \B[1]~input_o\ 
-- & ( !\s64[1][40]~26_combout\ & ( (!\Equal0~0_combout\ & (\s64[1][42]~27_combout\)) # (\Equal0~0_combout\ & ((\s64[1][38]~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100110101001111111111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][42]~27_combout\,
	datab => \ALT_INV_s64[1][38]~23_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][40]~26_combout\,
	combout => \s64[2][40]~28_combout\);

-- Location: IOIBUF_X59_Y39_N94
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X59_Y25_N1
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: MLABCELL_X49_Y41_N0
\s64[1][44]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][44]~29_combout\ = ( \A[45]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\B[0]~input_o\) # (\A[44]~input_o\) ) ) ) # ( !\A[45]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\A[44]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[45]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\ & (((\A[44]~input_o\)))) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\A[43]~input_o\))) ) ) ) # ( !\A[45]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[44]~input_o\)))) # (\B[0]~input_o\ & (\A[43]~input_o\ & 
-- (\ShiftFN[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011111101110100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][44]~29_combout\);

-- Location: IOIBUF_X59_Y23_N32
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: MLABCELL_X49_Y41_N6
\s64[1][46]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][46]~30_combout\ = ( \A[45]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[46]~input_o\)) # (\B[0]~input_o\ & ((\A[47]~input_o\))) ) ) ) # ( !\A[45]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[46]~input_o\)) # 
-- (\B[0]~input_o\ & ((\A[47]~input_o\))) ) ) ) # ( \A[45]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[46]~input_o\)) # (\B[0]~input_o\ & (((\A[47]~input_o\) # (\ShiftFN[0]~input_o\)))) ) ) ) # ( !\A[45]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\ & (\A[46]~input_o\)) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \A[47]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001001110111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][46]~30_combout\);

-- Location: LABCELL_X45_Y41_N6
\s64[2][44]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][44]~31_combout\ = ( \s64[1][42]~27_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][44]~29_combout\)))) # (\B[1]~input_o\ & (((\s64[1][46]~30_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][42]~27_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][44]~29_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & ((\s64[1][46]~30_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111010001100000011101000110101001111110011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][44]~29_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_s64[1][46]~30_combout\,
	dataf => \ALT_INV_s64[1][42]~27_combout\,
	combout => \s64[2][44]~31_combout\);

-- Location: MLABCELL_X44_Y43_N2
\s64[3][40]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][40]~32_combout\ = ( \s64[2][44]~31_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][40]~28_combout\)))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[2][36]~24_combout\)))) ) ) # ( !\s64[2][44]~31_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][40]~28_combout\)))) # (\B[2]~input_o\ & (\Equal0~0_combout\ & (\s64[2][36]~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111101110110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][36]~24_combout\,
	datac => \ALT_INV_s64[2][40]~28_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][44]~31_combout\,
	combout => \s64[3][40]~32_combout\);

-- Location: IOIBUF_X59_Y48_N94
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X47_Y40_N22
\s64[1][32]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][32]~16_combout\ = ( \A[31]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[32]~input_o\))) # (\B[0]~input_o\ & (\A[33]~input_o\)) ) ) ) # ( !\A[31]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[32]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[33]~input_o\)) ) ) ) # ( \A[31]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[32]~input_o\)))) # (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\A[33]~input_o\))) ) ) ) # ( !\A[31]~input_o\ & ( !\ShiftFN[1]~input_o\ 
-- & ( (!\B[0]~input_o\ & (((\A[32]~input_o\)))) # (\B[0]~input_o\ & (\A[33]~input_o\ & (!\ShiftFN[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101000100000011110111011100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][32]~16_combout\);

-- Location: LABCELL_X47_Y40_N12
\s64[2][0]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~19_combout\ = ( \ShiftFN[0]~input_o\ & ( (\B[1]~input_o\ & !\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \s64[2][0]~19_combout\);

-- Location: LABCELL_X47_Y40_N10
\s64[2][0]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~18_combout\ = (\B[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110011001100010011001100110001001100110011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[2][0]~18_combout\);

-- Location: LABCELL_X47_Y40_N36
\s64[2][0]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~20_combout\ = ( \A[29]~input_o\ & ( \s64[2][0]~18_combout\ & ( (\s64[2][0]~19_combout\) # (\s64[1][34]~17_combout\) ) ) ) # ( !\A[29]~input_o\ & ( \s64[2][0]~18_combout\ & ( (\s64[1][34]~17_combout\ & !\s64[2][0]~19_combout\) ) ) ) # ( 
-- \A[29]~input_o\ & ( !\s64[2][0]~18_combout\ & ( (!\s64[2][0]~19_combout\ & (\s64[1][32]~16_combout\)) # (\s64[2][0]~19_combout\ & ((\A[30]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\s64[2][0]~18_combout\ & ( (!\s64[2][0]~19_combout\ & 
-- (\s64[1][32]~16_combout\)) # (\s64[2][0]~19_combout\ & ((\A[30]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][34]~17_combout\,
	datab => \ALT_INV_s64[1][32]~16_combout\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_s64[2][0]~19_combout\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_s64[2][0]~18_combout\,
	combout => \s64[2][0]~20_combout\);

-- Location: LABCELL_X47_Y43_N30
\s64[2][0]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~21_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[25]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\) # (\A[27]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[25]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (\A[27]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[2][0]~21_combout\);

-- Location: LABCELL_X43_Y43_N14
\s64[3][32]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][32]~25_combout\ = ( \s64[2][0]~21_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][0]~20_combout\)))) # (\B[2]~input_o\ & (((\s64[2][36]~24_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][0]~21_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][0]~20_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][36]~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][36]~24_combout\,
	datad => \ALT_INV_s64[2][0]~20_combout\,
	dataf => \ALT_INV_s64[2][0]~21_combout\,
	combout => \s64[3][32]~25_combout\);

-- Location: LABCELL_X43_Y45_N6
\s64[4][32]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][32]~33_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][40]~32_combout\))) # (\Equal0~0_combout\ & (\s64[3][24]~4_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][32]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][24]~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][40]~32_combout\,
	datad => \ALT_INV_s64[3][32]~25_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][32]~33_combout\);

-- Location: IOIBUF_X59_Y30_N63
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X59_Y30_N32
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: MLABCELL_X49_Y41_N16
\s64[1][52]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][52]~37_combout\ = ( \A[53]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\A[52]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[53]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & \A[52]~input_o\) ) ) ) # ( \A[53]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\A[51]~input_o\)))) ) ) ) # ( !\A[53]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & (((\A[51]~input_o\ & 
-- \ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011101110010011100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][52]~37_combout\);

-- Location: IOIBUF_X59_Y28_N32
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: MLABCELL_X49_Y41_N14
\s64[1][50]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][50]~35_combout\ = ( \A[50]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[51]~input_o\) ) ) ) # ( !\A[50]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\B[0]~input_o\ & \A[51]~input_o\) ) ) ) # ( \A[50]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\A[51]~input_o\))) # (\ShiftFN[0]~input_o\ & (\A[49]~input_o\))) ) ) ) # ( !\A[50]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\A[51]~input_o\))) # 
-- (\ShiftFN[0]~input_o\ & (\A[49]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101010111111101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[49]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	datae => \ALT_INV_A[50]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][50]~35_combout\);

-- Location: IOIBUF_X59_Y26_N63
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X59_Y37_N94
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LABCELL_X50_Y41_N0
\s64[1][54]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][54]~38_combout\ = ( \A[55]~input_o\ & ( \B[0]~input_o\ & ( ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)) # (\A[53]~input_o\) ) ) ) # ( !\A[55]~input_o\ & ( \B[0]~input_o\ & ( (\A[53]~input_o\ & (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)) 
-- ) ) ) # ( \A[55]~input_o\ & ( !\B[0]~input_o\ & ( \A[54]~input_o\ ) ) ) # ( !\A[55]~input_o\ & ( !\B[0]~input_o\ & ( \A[54]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[1][54]~38_combout\);

-- Location: LABCELL_X45_Y41_N12
\s64[2][52]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][52]~39_combout\ = ( \s64[1][54]~38_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][52]~37_combout\)))) # (\B[1]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[1][50]~35_combout\)))) ) ) # ( !\s64[1][54]~38_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][52]~37_combout\)))) # (\B[1]~input_o\ & (\Equal0~0_combout\ & ((\s64[1][50]~35_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011101011110011001110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][52]~37_combout\,
	datac => \ALT_INV_s64[1][50]~35_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][54]~38_combout\,
	combout => \s64[2][52]~39_combout\);

-- Location: IOIBUF_X59_Y23_N63
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: MLABCELL_X49_Y41_N30
\s64[1][48]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][48]~34_combout\ = ( \A[49]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\A[48]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & \A[48]~input_o\) ) ) ) # ( \A[49]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\ & (\A[48]~input_o\)) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\A[47]~input_o\)))) ) ) ) # ( !\A[49]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[48]~input_o\)) # (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\ & 
-- \A[47]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011100100111011100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][48]~34_combout\);

-- Location: LABCELL_X45_Y41_N28
\s64[2][48]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][48]~36_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][48]~34_combout\)) # (\B[1]~input_o\ & ((\s64[1][46]~30_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][48]~34_combout\)) # (\B[1]~input_o\ & 
-- ((\s64[1][50]~35_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][48]~34_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][50]~35_combout\,
	datad => \ALT_INV_s64[1][46]~30_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][48]~36_combout\);

-- Location: MLABCELL_X44_Y43_N24
\s64[3][48]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][48]~40_combout\ = ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][52]~39_combout\)) # (\Equal0~0_combout\ & ((\s64[2][44]~31_combout\))) ) ) # ( !\B[2]~input_o\ & ( \s64[2][48]~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][52]~39_combout\,
	datab => \ALT_INV_s64[2][44]~31_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][48]~36_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][48]~40_combout\);

-- Location: IOIBUF_X59_Y33_N94
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X59_Y33_N1
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X59_Y49_N94
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LABCELL_X50_Y41_N12
\s64[1][60]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][60]~44_combout\ = ( \A[59]~input_o\ & ( \A[61]~input_o\ & ( (\A[60]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[59]~input_o\ & ( \A[61]~input_o\ & ( (!\B[0]~input_o\ & (((\A[60]~input_o\)))) # (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # 
-- ((\ShiftFN[1]~input_o\)))) ) ) ) # ( \A[59]~input_o\ & ( !\A[61]~input_o\ & ( (!\B[0]~input_o\ & (((\A[60]~input_o\)))) # (\B[0]~input_o\ & (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\)))) ) ) ) # ( !\A[59]~input_o\ & ( !\A[61]~input_o\ & ( 
-- (!\B[0]~input_o\ & \A[60]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000110110000101001001110010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_A[59]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \s64[1][60]~44_combout\);

-- Location: IOIBUF_X59_Y37_N1
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LABCELL_X50_Y41_N28
\s64[1][58]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][58]~42_combout\ = ( \ShiftFN[1]~input_o\ & ( \B[0]~input_o\ & ( \A[59]~input_o\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \B[0]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\A[59]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\A[57]~input_o\))) ) ) ) # ( 
-- \ShiftFN[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[58]~input_o\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[58]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[1][58]~42_combout\);

-- Location: IOIBUF_X59_Y25_N94
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X50_Y41_N38
\s64[1][62]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][62]~45_combout\ = ( \ShiftFN[1]~input_o\ & ( \A[61]~input_o\ & ( (!\B[0]~input_o\ & (\A[62]~input_o\)) # (\B[0]~input_o\ & ((\A[63]~input_o\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[61]~input_o\ & ( (!\B[0]~input_o\ & (\A[62]~input_o\)) # 
-- (\B[0]~input_o\ & (((\A[63]~input_o\) # (\ShiftFN[0]~input_o\)))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\A[61]~input_o\ & ( (!\B[0]~input_o\ & (\A[62]~input_o\)) # (\B[0]~input_o\ & ((\A[63]~input_o\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\A[61]~input_o\ & 
-- ( (!\B[0]~input_o\ & (\A[62]~input_o\)) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \A[63]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111011100100111011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \s64[1][62]~45_combout\);

-- Location: LABCELL_X45_Y41_N2
\s64[2][60]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][60]~46_combout\ = ( \s64[1][62]~45_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][60]~44_combout\)))) # (\B[1]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[1][58]~42_combout\)))) ) ) # ( !\s64[1][62]~45_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][60]~44_combout\)))) # (\B[1]~input_o\ & (\Equal0~0_combout\ & ((\s64[1][58]~42_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][60]~44_combout\,
	datad => \ALT_INV_s64[1][58]~42_combout\,
	dataf => \ALT_INV_s64[1][62]~45_combout\,
	combout => \s64[2][60]~46_combout\);

-- Location: IOIBUF_X59_Y34_N1
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LABCELL_X50_Y41_N26
\s64[1][56]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][56]~41_combout\ = ( \ShiftFN[1]~input_o\ & ( \A[56]~input_o\ & ( (!\B[0]~input_o\) # (\A[57]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[56]~input_o\ & ( (!\B[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\A[57]~input_o\))) # 
-- (\ShiftFN[0]~input_o\ & (\A[55]~input_o\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\A[56]~input_o\ & ( (\B[0]~input_o\ & \A[57]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\A[56]~input_o\ & ( (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- ((\A[57]~input_o\))) # (\ShiftFN[0]~input_o\ & (\A[55]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000000101010110101011111110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \s64[1][56]~41_combout\);

-- Location: LABCELL_X45_Y41_N18
\s64[2][56]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][56]~43_combout\ = ( \s64[1][54]~38_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][56]~41_combout\)))) # (\B[1]~input_o\ & (((\s64[1][58]~42_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][54]~38_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][56]~41_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & ((\s64[1][58]~42_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001010001100110000101000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][56]~41_combout\,
	datac => \ALT_INV_s64[1][58]~42_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][54]~38_combout\,
	combout => \s64[2][56]~43_combout\);

-- Location: MLABCELL_X44_Y43_N10
\s64[3][56]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][56]~47_combout\ = ( \s64[2][56]~43_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & (\s64[2][60]~46_combout\)) # (\Equal0~0_combout\ & ((\s64[2][52]~39_combout\)))) ) ) # ( !\s64[2][56]~43_combout\ & ( (\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[2][60]~46_combout\)) # (\Equal0~0_combout\ & ((\s64[2][52]~39_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][60]~46_combout\,
	datad => \ALT_INV_s64[2][52]~39_combout\,
	dataf => \ALT_INV_s64[2][56]~43_combout\,
	combout => \s64[3][56]~47_combout\);

-- Location: LABCELL_X43_Y45_N10
\s64[4][48]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][48]~48_combout\ = ( \s64[3][56]~47_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][48]~40_combout\)))) # (\B[3]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[3][40]~32_combout\))) ) ) # ( !\s64[3][56]~47_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][48]~40_combout\)))) # (\B[3]~input_o\ & (\s64[3][40]~32_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101010001111110110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][40]~32_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[3][48]~40_combout\,
	dataf => \ALT_INV_s64[3][56]~47_combout\,
	combout => \s64[4][48]~48_combout\);

-- Location: LABCELL_X43_Y45_N12
\s64[5][32]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][32]~49_combout\ = ( \s64[4][48]~48_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][32]~33_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][16]~15_combout\))) ) ) # ( !\s64[4][48]~48_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][32]~33_combout\)))) # (\B[4]~input_o\ & (\s64[4][16]~15_combout\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101011111000110110101111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][16]~15_combout\,
	datac => \ALT_INV_s64[4][32]~33_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][48]~48_combout\,
	combout => \s64[5][32]~49_combout\);

-- Location: IOIBUF_X42_Y56_N32
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X40_Y56_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X43_Y49_N2
\Y~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \B[5]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	combout => \Y~0_combout\);

-- Location: LABCELL_X45_Y43_N24
\s64[2][0]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~50_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[5]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & 
-- ( \A[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~50_combout\);

-- Location: IOIBUF_X46_Y56_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X45_Y43_N28
\s64[2][0]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~51_combout\ = ( \A[0]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[3]~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~51_combout\);

-- Location: MLABCELL_X46_Y43_N6
\s64[2][0]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~52_combout\ = ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~52_combout\);

-- Location: LABCELL_X43_Y43_N12
\s64[3][0]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][0]~53_combout\ = ( \s64[2][0]~52_combout\ & ( (!\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~51_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~50_combout\)))) # (\Equal0~0_combout\ & (!\B[2]~input_o\)) ) ) # ( !\s64[2][0]~52_combout\ & ( 
-- (!\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~51_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~50_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~50_combout\,
	datad => \ALT_INV_s64[2][0]~51_combout\,
	dataf => \ALT_INV_s64[2][0]~52_combout\,
	combout => \s64[3][0]~53_combout\);

-- Location: LABCELL_X43_Y45_N38
\s64[4][0]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][0]~54_combout\ = ( \s64[3][8]~14_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][0]~53_combout\))) # (\B[3]~input_o\ & (!\Equal0~0_combout\)) ) ) # ( !\s64[3][8]~14_combout\ & ( (!\B[3]~input_o\ & \s64[3][0]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][0]~53_combout\,
	dataf => \ALT_INV_s64[3][8]~14_combout\,
	combout => \s64[4][0]~54_combout\);

-- Location: LABCELL_X43_Y45_N20
\Y~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = ( \Equal0~0_combout\ & ( \s64[4][0]~54_combout\ & ( (!\B[4]~input_o\ & !\Y~0_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \s64[4][0]~54_combout\ & ( (!\Y~0_combout\ & (((!\B[4]~input_o\) # (\s64[4][16]~15_combout\)))) # (\Y~0_combout\ & 
-- (\s64[5][32]~49_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\s64[4][0]~54_combout\ & ( (!\Y~0_combout\ & (((\s64[4][16]~15_combout\ & \B[4]~input_o\)))) # (\Y~0_combout\ & (\s64[5][32]~49_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000000000000011110011010101011111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[5][32]~49_combout\,
	datab => \ALT_INV_s64[4][16]~15_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Y~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][0]~54_combout\,
	combout => \Y~1_combout\);

-- Location: LABCELL_X50_Y43_N34
\s64[2][0]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~61_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\) # (\A[16]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\B[0]~input_o\ & \A[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \s64[2][0]~61_combout\);

-- Location: MLABCELL_X52_Y43_N8
\s64[2][0]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~60_combout\ = ( \A[18]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\A[17]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[20]~input_o\))) ) ) ) # ( !\A[18]~input_o\ & ( \A[19]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[17]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[20]~input_o\))) ) ) ) # ( \A[18]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\A[17]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (\A[20]~input_o\ & (\B[0]~input_o\))) ) ) ) # ( !\A[18]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[17]~input_o\)))) # (\B[1]~input_o\ & (\A[20]~input_o\ & (\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \s64[2][0]~60_combout\);

-- Location: LABCELL_X50_Y43_N16
\s64[2][0]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~63_combout\ = ( \A[10]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[12]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[11]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \A[13]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[12]~input_o\)))) # (\B[1]~input_o\ & (\A[11]~input_o\ & (!\B[0]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\ & \A[12]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\B[0]~input_o\)) # (\A[11]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\ & \A[12]~input_o\)))) # (\B[1]~input_o\ & (\A[11]~input_o\ & (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~63_combout\);

-- Location: MLABCELL_X46_Y44_N34
\s64[2][0]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~62_combout\ = ( \A[22]~input_o\ & ( \A[24]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[21]~input_o\))) # (\B[1]~input_o\ & (\A[23]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[22]~input_o\ & ( \A[24]~input_o\ & ( (!\B[1]~input_o\ & (((\A[21]~input_o\ 
-- & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[23]~input_o\))) ) ) ) # ( \A[22]~input_o\ & ( !\A[24]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[21]~input_o\)))) # (\B[1]~input_o\ & (\A[23]~input_o\ & 
-- ((!\B[0]~input_o\)))) ) ) ) # ( !\A[22]~input_o\ & ( !\A[24]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[21]~input_o\))) # (\B[1]~input_o\ & (\A[23]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \s64[2][0]~62_combout\);

-- Location: MLABCELL_X46_Y46_N6
\s64[3][17]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][17]~64_combout\ = ( \s64[2][0]~62_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~63_combout\) ) ) ) # ( !\s64[2][0]~62_combout\ & ( \B[2]~input_o\ & ( (\Equal0~0_combout\ & \s64[2][0]~63_combout\) ) ) ) # ( 
-- \s64[2][0]~62_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~60_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~61_combout\)) ) ) ) # ( !\s64[2][0]~62_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((\s64[2][0]~60_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~61_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~61_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~60_combout\,
	datad => \ALT_INV_s64[2][0]~63_combout\,
	datae => \ALT_INV_s64[2][0]~62_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][17]~64_combout\);

-- Location: LABCELL_X47_Y43_N34
\s64[2][0]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~65_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (\B[0]~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (\A[27]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[2][0]~65_combout\);

-- Location: MLABCELL_X46_Y44_N38
\s64[2][0]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~66_combout\ = ( \A[22]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[22]~input_o\ & ( \B[0]~input_o\ & ( (\A[24]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[22]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ 
-- & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[23]~input_o\))) ) ) ) # ( !\A[22]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~66_combout\);

-- Location: MLABCELL_X52_Y43_N34
\s64[2][0]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~67_combout\ = ( \A[20]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[21]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[18]~input_o\)))) ) ) ) # ( !\A[20]~input_o\ & ( \A[19]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[21]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[18]~input_o\)))) ) ) ) # ( \A[20]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[21]~input_o\))) # (\B[1]~input_o\ & 
-- (((\A[18]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( !\A[20]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[21]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[18]~input_o\ & \B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \s64[2][0]~67_combout\);

-- Location: LABCELL_X47_Y43_N0
\s64[2][0]~324\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~324_combout\ = ( !\B[1]~input_o\ & ( ((!\B[0]~input_o\ & (((\A[29]~input_o\)))) # (\B[0]~input_o\ & (\A[30]~input_o\))) ) ) # ( \B[1]~input_o\ & ( ((\A[31]~input_o\ & ((!\B[0]~input_o\) # ((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101001100110000000000001111010101010011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_A[29]~input_o\,
	combout => \s64[2][0]~324_combout\);

-- Location: MLABCELL_X46_Y46_N8
\s32[3][25]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][25]~0_combout\ = ( \Equal0~0_combout\ & ( \s64[2][0]~324_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~66_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~67_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( \s64[2][0]~324_combout\ & ( (\B[2]~input_o\) # 
-- (\s64[2][0]~65_combout\) ) ) ) # ( \Equal0~0_combout\ & ( !\s64[2][0]~324_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~66_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~67_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( !\s64[2][0]~324_combout\ & ( 
-- (\s64[2][0]~65_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~65_combout\,
	datab => \ALT_INV_s64[2][0]~66_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_s64[2][0]~67_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][0]~324_combout\,
	combout => \s32[3][25]~0_combout\);

-- Location: LABCELL_X45_Y43_N12
\s64[2][0]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~58_combout\ = ( \A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)) ) ) ) # ( !\A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[2]~input_o\)) ) ) ) # ( \A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( !\B[1]~input_o\ & ( (\A[4]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~58_combout\);

-- Location: MLABCELL_X49_Y43_N38
\s64[2][0]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~56_combout\ = ( \A[9]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[7]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\ & \A[7]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( \A[9]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[7]~input_o\)))) # (\B[0]~input_o\ & (\A[8]~input_o\ & 
-- (!\B[1]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A[7]~input_o\)))) # (\B[0]~input_o\ & (\A[8]~input_o\ & (!\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \s64[2][0]~56_combout\);

-- Location: LABCELL_X50_Y43_N30
\s64[2][0]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~57_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # (\A[14]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\B[0]~input_o\ & \A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~57_combout\);

-- Location: MLABCELL_X49_Y43_N34
\s64[2][0]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~55_combout\ = ( \A[12]~input_o\ & ( \A[10]~input_o\ & ( ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \A[10]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) 
-- # (\A[9]~input_o\))) # (\B[1]~input_o\ & (((\A[11]~input_o\ & !\B[0]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[11]~input_o\)))) ) 
-- ) ) # ( !\A[12]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \s64[2][0]~55_combout\);

-- Location: MLABCELL_X46_Y46_N0
\s64[3][9]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][9]~59_combout\ = ( \Equal0~0_combout\ & ( \B[2]~input_o\ & ( \s64[2][0]~58_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[2]~input_o\ & ( \s64[2][0]~57_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[2]~input_o\ & ( \s64[2][0]~56_combout\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[2]~input_o\ & ( \s64[2][0]~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~58_combout\,
	datab => \ALT_INV_s64[2][0]~56_combout\,
	datac => \ALT_INV_s64[2][0]~57_combout\,
	datad => \ALT_INV_s64[2][0]~55_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][9]~59_combout\);

-- Location: MLABCELL_X42_Y46_N20
\s32[4][17]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][17]~1_combout\ = ( \s64[3][9]~59_combout\ & ( (!\B[3]~input_o\ & (\s64[3][17]~64_combout\)) # (\B[3]~input_o\ & (((\Equal0~0_combout\) # (\s32[3][25]~0_combout\)))) ) ) # ( !\s64[3][9]~59_combout\ & ( (!\B[3]~input_o\ & (\s64[3][17]~64_combout\)) 
-- # (\B[3]~input_o\ & (((\s32[3][25]~0_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][17]~64_combout\,
	datac => \ALT_INV_s32[3][25]~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][9]~59_combout\,
	combout => \s32[4][17]~1_combout\);

-- Location: LABCELL_X45_Y48_N20
\Y~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = ( \B[4]~input_o\ & ( (\ExtWord~input_o\ & !\Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y~2_combout\);

-- Location: MLABCELL_X42_Y48_N22
\Y~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = ( !\ExtWord~input_o\ & ( !\B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~4_combout\);

-- Location: LABCELL_X45_Y49_N22
\Y~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = ( !\B[4]~input_o\ & ( \ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y~5_combout\);

-- Location: LABCELL_X45_Y43_N2
\s64[2][0]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~105_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~105_combout\);

-- Location: LABCELL_X45_Y43_N16
\s64[2][0]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~104_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[4]~input_o\)) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (\A[2]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~104_combout\);

-- Location: MLABCELL_X49_Y43_N22
\s64[2][0]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~103_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (\A[6]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[5]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~103_combout\);

-- Location: MLABCELL_X46_Y46_N34
\s64[3][1]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][1]~106_combout\ = ( \s64[2][0]~103_combout\ & ( (!\B[2]~input_o\ & ((!\Equal0~0_combout\ & ((\s64[2][0]~104_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~105_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\)) ) ) # ( 
-- !\s64[2][0]~103_combout\ & ( (!\B[2]~input_o\ & ((!\Equal0~0_combout\ & ((\s64[2][0]~104_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~105_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~105_combout\,
	datad => \ALT_INV_s64[2][0]~104_combout\,
	dataf => \ALT_INV_s64[2][0]~103_combout\,
	combout => \s64[3][1]~106_combout\);

-- Location: MLABCELL_X42_Y46_N38
\s64[4][1]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][1]~107_combout\ = ( \s64[3][1]~106_combout\ & ( (!\B[3]~input_o\) # ((\s64[3][9]~59_combout\ & !\Equal0~0_combout\)) ) ) # ( !\s64[3][1]~106_combout\ & ( (\B[3]~input_o\ & (\s64[3][9]~59_combout\ & !\Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][9]~59_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][1]~106_combout\,
	combout => \s64[4][1]~107_combout\);

-- Location: LABCELL_X47_Y43_N38
\s64[2][0]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~68_combout\ = ( \B[1]~input_o\ & ( \A[32]~input_o\ & ( (\B[0]~input_o\) # (\A[31]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[32]~input_o\ & ( (!\B[0]~input_o\ & ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[32]~input_o\ & ( (\A[31]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[32]~input_o\ & ( (!\B[0]~input_o\ & ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \s64[2][0]~68_combout\);

-- Location: MLABCELL_X46_Y46_N10
\s64[3][25]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][25]~69_combout\ = ( \Equal0~0_combout\ & ( \s64[2][0]~68_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~66_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~67_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( \s64[2][0]~68_combout\ & ( (\B[2]~input_o\) # 
-- (\s64[2][0]~65_combout\) ) ) ) # ( \Equal0~0_combout\ & ( !\s64[2][0]~68_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~66_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~67_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( !\s64[2][0]~68_combout\ & ( 
-- (\s64[2][0]~65_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~65_combout\,
	datab => \ALT_INV_s64[2][0]~66_combout\,
	datac => \ALT_INV_s64[2][0]~67_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][0]~68_combout\,
	combout => \s64[3][25]~69_combout\);

-- Location: MLABCELL_X42_Y46_N24
\s64[4][17]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][17]~70_combout\ = ( \s64[3][9]~59_combout\ & ( (!\B[3]~input_o\ & (\s64[3][17]~64_combout\)) # (\B[3]~input_o\ & (((\Equal0~0_combout\) # (\s64[3][25]~69_combout\)))) ) ) # ( !\s64[3][9]~59_combout\ & ( (!\B[3]~input_o\ & 
-- (\s64[3][17]~64_combout\)) # (\B[3]~input_o\ & (((\s64[3][25]~69_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][17]~64_combout\,
	datac => \ALT_INV_s64[3][25]~69_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][9]~59_combout\,
	combout => \s64[4][17]~70_combout\);

-- Location: MLABCELL_X42_Y49_N20
\s64[5][1]~108\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][1]~108_combout\ = ( \s64[4][1]~107_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & \s64[4][17]~70_combout\)) ) ) # ( !\s64[4][1]~107_combout\ & ( (\B[4]~input_o\ & (!\Equal0~0_combout\ & \s64[4][17]~70_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010101010111011101010101011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[4][17]~70_combout\,
	dataf => \ALT_INV_s64[4][1]~107_combout\,
	combout => \s64[5][1]~108_combout\);

-- Location: MLABCELL_X42_Y49_N6
\Y~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = ( \s64[5][1]~108_combout\ & ( ((\Y~5_combout\ & \s64[4][1]~107_combout\)) # (\Y~4_combout\) ) ) # ( !\s64[5][1]~108_combout\ & ( (\Y~5_combout\ & \s64[4][1]~107_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_Y~5_combout\,
	datad => \ALT_INV_s64[4][1]~107_combout\,
	dataf => \ALT_INV_s64[5][1]~108_combout\,
	combout => \Y~6_combout\);

-- Location: LABCELL_X50_Y40_N38
\s64[1][43]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][43]~80_combout\ = ( \B[0]~input_o\ & ( \A[44]~input_o\ & ( ((!\ShiftFN[0]~input_o\) # (\A[42]~input_o\)) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[44]~input_o\ & ( \A[43]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\A[44]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & (\A[42]~input_o\ & \ShiftFN[0]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[44]~input_o\ & ( \A[43]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000101000110011001100111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[44]~input_o\,
	combout => \s64[1][43]~80_combout\);

-- Location: MLABCELL_X49_Y41_N24
\s64[1][47]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][47]~83_combout\ = ( \A[46]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[47]~input_o\))) # (\B[0]~input_o\ & (\A[48]~input_o\)) ) ) ) # ( !\A[46]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[47]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[48]~input_o\)) ) ) ) # ( \A[46]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[47]~input_o\)))) # (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\A[48]~input_o\))) ) ) ) # ( !\A[46]~input_o\ & ( !\ShiftFN[1]~input_o\ 
-- & ( (!\B[0]~input_o\ & (((\A[47]~input_o\)))) # (\B[0]~input_o\ & (\A[48]~input_o\ & ((!\ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001010000110110101111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][47]~83_combout\);

-- Location: MLABCELL_X49_Y41_N20
\s64[1][45]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][45]~82_combout\ = ( \A[45]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[46]~input_o\) ) ) ) # ( !\A[45]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\A[46]~input_o\ & \B[0]~input_o\) ) ) ) # ( \A[45]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\A[46]~input_o\))) # (\ShiftFN[0]~input_o\ & (\A[44]~input_o\))) ) ) ) # ( !\A[45]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\A[46]~input_o\))) # 
-- (\ShiftFN[0]~input_o\ & (\A[44]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100111111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][45]~82_combout\);

-- Location: MLABCELL_X49_Y44_N26
\s64[2][45]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][45]~84_combout\ = ( \s64[1][45]~82_combout\ & ( (!\B[1]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[1][47]~83_combout\))) # (\Equal0~0_combout\ & (\s64[1][43]~80_combout\))) ) ) # ( !\s64[1][45]~82_combout\ & ( (\B[1]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[1][47]~83_combout\))) # (\Equal0~0_combout\ & (\s64[1][43]~80_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][43]~80_combout\,
	datad => \ALT_INV_s64[1][47]~83_combout\,
	dataf => \ALT_INV_s64[1][45]~82_combout\,
	combout => \s64[2][45]~84_combout\);

-- Location: MLABCELL_X49_Y41_N10
\s64[1][49]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][49]~87_combout\ = ( \A[50]~input_o\ & ( \A[48]~input_o\ & ( (\B[0]~input_o\) # (\A[49]~input_o\) ) ) ) # ( !\A[50]~input_o\ & ( \A[48]~input_o\ & ( (!\B[0]~input_o\ & (((\A[49]~input_o\)))) # (\B[0]~input_o\ & (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\))) ) ) ) # ( \A[50]~input_o\ & ( !\A[48]~input_o\ & ( (!\B[0]~input_o\ & (((\A[49]~input_o\)))) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\))) ) ) ) # ( !\A[50]~input_o\ & ( !\A[48]~input_o\ & ( 
-- (\A[49]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111101110100001111001000100000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[50]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \s64[1][49]~87_combout\);

-- Location: MLABCELL_X49_Y41_N32
\s64[1][51]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][51]~88_combout\ = ( \A[50]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[51]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\)) ) ) ) # ( !\A[50]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[51]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[52]~input_o\)) ) ) ) # ( \A[50]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[51]~input_o\)))) # (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\A[52]~input_o\))) ) ) ) # ( !\A[50]~input_o\ & ( !\ShiftFN[1]~input_o\ 
-- & ( (!\B[0]~input_o\ & (((\A[51]~input_o\)))) # (\B[0]~input_o\ & (\A[52]~input_o\ & ((!\ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001010000110110101111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[50]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][51]~88_combout\);

-- Location: MLABCELL_X49_Y44_N28
\s64[2][49]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][49]~89_combout\ = ( \s64[1][51]~88_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][49]~87_combout\)))) # (\B[1]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[1][47]~83_combout\)))) ) ) # ( !\s64[1][51]~88_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][49]~87_combout\)))) # (\B[1]~input_o\ & (\Equal0~0_combout\ & ((\s64[1][47]~83_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][49]~87_combout\,
	datad => \ALT_INV_s64[1][47]~83_combout\,
	dataf => \ALT_INV_s64[1][51]~88_combout\,
	combout => \s64[2][49]~89_combout\);

-- Location: LABCELL_X50_Y41_N22
\s64[1][55]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][55]~91_combout\ = ( \ShiftFN[1]~input_o\ & ( \A[56]~input_o\ & ( (\A[55]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[56]~input_o\ & ( (!\B[0]~input_o\ & (\A[55]~input_o\)) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\) # 
-- (\A[54]~input_o\)))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\A[56]~input_o\ & ( (!\B[0]~input_o\ & \A[55]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\A[56]~input_o\ & ( (!\B[0]~input_o\ & (\A[55]~input_o\)) # (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\ & 
-- \A[54]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010001001110010011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[54]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \s64[1][55]~91_combout\);

-- Location: MLABCELL_X49_Y41_N36
\s64[1][53]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][53]~90_combout\ = ( \A[53]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[54]~input_o\) ) ) ) # ( !\A[53]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\B[0]~input_o\ & \A[54]~input_o\) ) ) ) # ( \A[53]~input_o\ & ( !\ShiftFN[1]~input_o\ & 
-- ( (!\B[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\A[54]~input_o\))) # (\ShiftFN[0]~input_o\ & (\A[52]~input_o\))) ) ) ) # ( !\A[53]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\A[54]~input_o\))) # 
-- (\ShiftFN[0]~input_o\ & (\A[52]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011111011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][53]~90_combout\);

-- Location: MLABCELL_X49_Y44_N34
\s64[2][53]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][53]~92_combout\ = ( \s64[1][51]~88_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][53]~90_combout\)))) # (\B[1]~input_o\ & (((\s64[1][55]~91_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][51]~88_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][53]~90_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & (\s64[1][55]~91_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110010000000101111001000000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][55]~91_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_s64[1][53]~90_combout\,
	dataf => \ALT_INV_s64[1][51]~88_combout\,
	combout => \s64[2][53]~92_combout\);

-- Location: MLABCELL_X46_Y46_N20
\s64[3][49]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][49]~93_combout\ = ( \s64[2][53]~92_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][49]~89_combout\)))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][45]~84_combout\))) ) ) # ( !\s64[2][53]~92_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][49]~89_combout\)))) # (\B[2]~input_o\ & (\s64[2][45]~84_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101010001111110110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_s64[2][45]~84_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][49]~89_combout\,
	dataf => \ALT_INV_s64[2][53]~92_combout\,
	combout => \s64[3][49]~93_combout\);

-- Location: LABCELL_X50_Y40_N6
\s64[1][39]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][39]~76_combout\ = ( \A[40]~input_o\ & ( \A[39]~input_o\ & ( ((!\B[0]~input_o\) # ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\))) # (\A[38]~input_o\) ) ) ) # ( !\A[40]~input_o\ & ( \A[39]~input_o\ & ( (!\B[0]~input_o\) # ((\A[38]~input_o\ & 
-- (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))) ) ) ) # ( \A[40]~input_o\ & ( !\A[39]~input_o\ & ( (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)) # (\A[38]~input_o\))) ) ) ) # ( !\A[40]~input_o\ & ( !\A[39]~input_o\ & ( 
-- (\A[38]~input_o\ & (\B[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000001100110001001111001100110111001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \s64[1][39]~76_combout\);

-- Location: LABCELL_X47_Y40_N26
\s64[1][35]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][35]~72_combout\ = ( \ShiftFN[1]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[0]~input_o\ & (\A[35]~input_o\)) # (\B[0]~input_o\ & ((\A[36]~input_o\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((\A[35]~input_o\))) # (\B[0]~input_o\ & (\A[34]~input_o\)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\B[0]~input_o\ & (\A[35]~input_o\)) # (\B[0]~input_o\ & ((\A[36]~input_o\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( 
-- !\ShiftFN[0]~input_o\ & ( (!\B[0]~input_o\ & (\A[35]~input_o\)) # (\B[0]~input_o\ & ((\A[36]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100011011000110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \s64[1][35]~72_combout\);

-- Location: LABCELL_X50_Y40_N2
\s64[1][37]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][37]~75_combout\ = ( \B[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \A[38]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \A[37]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- ((\A[38]~input_o\))) # (\ShiftFN[0]~input_o\ & (\A[36]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \A[37]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000001011010111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][37]~75_combout\);

-- Location: LABCELL_X50_Y40_N10
\s64[2][37]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][37]~77_combout\ = ( \s64[1][37]~75_combout\ & ( (!\B[1]~input_o\) # ((!\Equal0~0_combout\ & (\s64[1][39]~76_combout\)) # (\Equal0~0_combout\ & ((\s64[1][35]~72_combout\)))) ) ) # ( !\s64[1][37]~75_combout\ & ( (\B[1]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[1][39]~76_combout\)) # (\Equal0~0_combout\ & ((\s64[1][35]~72_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_s64[1][39]~76_combout\,
	datac => \ALT_INV_s64[1][35]~72_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[1][37]~75_combout\,
	combout => \s64[2][37]~77_combout\);

-- Location: LABCELL_X50_Y40_N32
\s64[1][41]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][41]~79_combout\ = ( \A[40]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[41]~input_o\)) # (\B[0]~input_o\ & ((\A[42]~input_o\))) ) ) ) # ( !\A[40]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[41]~input_o\)) # 
-- (\B[0]~input_o\ & ((\A[42]~input_o\))) ) ) ) # ( \A[40]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[41]~input_o\)))) # (\B[0]~input_o\ & (((\A[42]~input_o\)) # (\ShiftFN[0]~input_o\))) ) ) ) # ( !\A[40]~input_o\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[41]~input_o\)))) # (\B[0]~input_o\ & (!\ShiftFN[0]~input_o\ & ((\A[42]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111010001101010011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][41]~79_combout\);

-- Location: MLABCELL_X49_Y44_N22
\s64[2][41]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][41]~81_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][41]~79_combout\)) # (\B[1]~input_o\ & ((\s64[1][39]~76_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][41]~79_combout\)) # (\B[1]~input_o\ & 
-- ((\s64[1][43]~80_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][41]~79_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][39]~76_combout\,
	datad => \ALT_INV_s64[1][43]~80_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][41]~81_combout\);

-- Location: MLABCELL_X46_Y46_N38
\s64[3][41]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][41]~85_combout\ = ( \s64[2][41]~81_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[2][45]~84_combout\))) # (\Equal0~0_combout\ & (\s64[2][37]~77_combout\))) ) ) # ( !\s64[2][41]~81_combout\ & ( (\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[2][45]~84_combout\))) # (\Equal0~0_combout\ & (\s64[2][37]~77_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_s64[2][37]~77_combout\,
	datac => \ALT_INV_s64[2][45]~84_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][41]~81_combout\,
	combout => \s64[3][41]~85_combout\);

-- Location: LABCELL_X50_Y41_N8
\s64[1][59]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][59]~95_combout\ = ( \ShiftFN[1]~input_o\ & ( \B[0]~input_o\ & ( \A[60]~input_o\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \B[0]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\A[60]~input_o\))) # (\ShiftFN[0]~input_o\ & (\A[58]~input_o\)) ) ) ) # ( 
-- \ShiftFN[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[59]~input_o\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[59]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[1][59]~95_combout\);

-- Location: LABCELL_X50_Y41_N4
\s64[1][57]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][57]~94_combout\ = ( \ShiftFN[1]~input_o\ & ( \A[58]~input_o\ & ( (\A[57]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[58]~input_o\ & ( (!\B[0]~input_o\ & (((\A[57]~input_o\)))) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\)) 
-- # (\A[56]~input_o\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\A[58]~input_o\ & ( (!\B[0]~input_o\ & \A[57]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\A[58]~input_o\ & ( (!\B[0]~input_o\ & (((\A[57]~input_o\)))) # (\B[0]~input_o\ & (\A[56]~input_o\ & 
-- ((\ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100000101001011111000110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \s64[1][57]~94_combout\);

-- Location: MLABCELL_X49_Y44_N36
\s64[2][57]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][57]~96_combout\ = ( \B[1]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[1][59]~95_combout\)) # (\Equal0~0_combout\ & ((\s64[1][55]~91_combout\))) ) ) # ( !\B[1]~input_o\ & ( \s64[1][57]~94_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][59]~95_combout\,
	datac => \ALT_INV_s64[1][57]~94_combout\,
	datad => \ALT_INV_s64[1][55]~91_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][57]~96_combout\);

-- Location: LABCELL_X50_Y41_N34
\s64[1][61]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][61]~97_combout\ = ( \A[62]~input_o\ & ( \A[61]~input_o\ & ( (!\B[0]~input_o\) # ((!\ShiftFN[0]~input_o\) # ((\A[60]~input_o\) # (\ShiftFN[1]~input_o\))) ) ) ) # ( !\A[62]~input_o\ & ( \A[61]~input_o\ & ( (!\B[0]~input_o\) # ((\ShiftFN[0]~input_o\ 
-- & (!\ShiftFN[1]~input_o\ & \A[60]~input_o\))) ) ) ) # ( \A[62]~input_o\ & ( !\A[61]~input_o\ & ( (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\A[60]~input_o\) # (\ShiftFN[1]~input_o\)))) ) ) ) # ( !\A[62]~input_o\ & ( !\A[61]~input_o\ & ( 
-- (\B[0]~input_o\ & (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \A[60]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000010001010101010110101010101110101110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \s64[1][61]~97_combout\);

-- Location: LABCELL_X50_Y41_N16
\s64[1][63]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][63]~98_combout\ = ( \B[0]~input_o\ & ( (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\A[62]~input_o\))) # (\ShiftFN[1]~input_o\ & (\A[63]~input_o\)))) ) ) # ( !\B[0]~input_o\ & ( \A[63]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000001000011010000000100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[1][63]~98_combout\);

-- Location: MLABCELL_X49_Y44_N38
\s64[2][61]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][61]~99_combout\ = ( \B[1]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[1][63]~98_combout\))) # (\Equal0~0_combout\ & (\s64[1][59]~95_combout\)) ) ) # ( !\B[1]~input_o\ & ( \s64[1][61]~97_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][59]~95_combout\,
	datac => \ALT_INV_s64[1][61]~97_combout\,
	datad => \ALT_INV_s64[1][63]~98_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][61]~99_combout\);

-- Location: MLABCELL_X49_Y44_N2
\s64[3][57]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][57]~100_combout\ = ( \s64[2][61]~99_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][57]~96_combout\)))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[2][53]~92_combout\)))) ) ) # ( !\s64[2][61]~99_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][57]~96_combout\)))) # (\B[2]~input_o\ & (\Equal0~0_combout\ & ((\s64[2][53]~92_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][57]~96_combout\,
	datad => \ALT_INV_s64[2][53]~92_combout\,
	dataf => \ALT_INV_s64[2][61]~99_combout\,
	combout => \s64[3][57]~100_combout\);

-- Location: MLABCELL_X42_Y46_N12
\s64[4][49]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][49]~101_combout\ = ( \s64[3][57]~100_combout\ & ( (!\B[3]~input_o\ & (\s64[3][49]~93_combout\)) # (\B[3]~input_o\ & (((!\Equal0~0_combout\) # (\s64[3][41]~85_combout\)))) ) ) # ( !\s64[3][57]~100_combout\ & ( (!\B[3]~input_o\ & 
-- (\s64[3][49]~93_combout\)) # (\B[3]~input_o\ & (((\Equal0~0_combout\ & \s64[3][41]~85_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101110011110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][49]~93_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][41]~85_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][57]~100_combout\,
	combout => \s64[4][49]~101_combout\);

-- Location: LABCELL_X47_Y40_N0
\s64[1][33]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][33]~71_combout\ = ( \A[32]~input_o\ & ( \A[34]~input_o\ & ( (\A[33]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( \A[34]~input_o\ & ( (!\B[0]~input_o\ & (((\A[33]~input_o\)))) # (\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\)) # 
-- (\ShiftFN[1]~input_o\))) ) ) ) # ( \A[32]~input_o\ & ( !\A[34]~input_o\ & ( (!\B[0]~input_o\ & (((\A[33]~input_o\)))) # (\B[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\)))) ) ) ) # ( !\A[32]~input_o\ & ( !\A[34]~input_o\ & ( 
-- (!\B[0]~input_o\ & \A[33]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100100111001011111000110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \s64[1][33]~71_combout\);

-- Location: LABCELL_X47_Y40_N30
\s64[2][0]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~73_combout\ = ( \A[31]~input_o\ & ( \s64[2][0]~18_combout\ & ( (!\s64[2][0]~19_combout\ & (\s64[1][35]~72_combout\)) # (\s64[2][0]~19_combout\ & ((\A[30]~input_o\))) ) ) ) # ( !\A[31]~input_o\ & ( \s64[2][0]~18_combout\ & ( 
-- (!\s64[2][0]~19_combout\ & (\s64[1][35]~72_combout\)) # (\s64[2][0]~19_combout\ & ((\A[30]~input_o\))) ) ) ) # ( \A[31]~input_o\ & ( !\s64[2][0]~18_combout\ & ( (\s64[2][0]~19_combout\) # (\s64[1][33]~71_combout\) ) ) ) # ( !\A[31]~input_o\ & ( 
-- !\s64[2][0]~18_combout\ & ( (\s64[1][33]~71_combout\ & !\s64[2][0]~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][33]~71_combout\,
	datab => \ALT_INV_s64[1][35]~72_combout\,
	datac => \ALT_INV_s64[2][0]~19_combout\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_s64[2][0]~18_combout\,
	combout => \s64[2][0]~73_combout\);

-- Location: LABCELL_X47_Y43_N20
\s64[2][0]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~74_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[27]~input_o\))) # (\B[0]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (\B[0]~input_o\) # (\A[29]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[27]~input_o\))) # (\B[0]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (\A[29]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[2][0]~74_combout\);

-- Location: MLABCELL_X46_Y46_N32
\s64[3][33]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][33]~78_combout\ = ( \s64[2][37]~77_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][0]~73_combout\)))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[2][0]~74_combout\)))) ) ) # ( !\s64[2][37]~77_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][0]~73_combout\)))) # (\B[2]~input_o\ & (\Equal0~0_combout\ & ((\s64[2][0]~74_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~73_combout\,
	datad => \ALT_INV_s64[2][0]~74_combout\,
	dataf => \ALT_INV_s64[2][37]~77_combout\,
	combout => \s64[3][33]~78_combout\);

-- Location: MLABCELL_X42_Y46_N30
\s64[4][33]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][33]~86_combout\ = ( \s64[3][25]~69_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][33]~78_combout\)))) # (\B[3]~input_o\ & (((\Equal0~0_combout\)) # (\s64[3][41]~85_combout\))) ) ) # ( !\s64[3][25]~69_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][33]~78_combout\)))) # (\B[3]~input_o\ & (\s64[3][41]~85_combout\ & ((!\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010000001100110101000000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][41]~85_combout\,
	datab => \ALT_INV_s64[3][33]~78_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][25]~69_combout\,
	combout => \s64[4][33]~86_combout\);

-- Location: MLABCELL_X42_Y49_N22
\s64[5][33]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][33]~102_combout\ = ( \s64[4][33]~86_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & (\s64[4][49]~101_combout\)) # (\Equal0~0_combout\ & ((\s64[4][17]~70_combout\)))) ) ) # ( !\s64[4][33]~86_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[4][49]~101_combout\)) # (\Equal0~0_combout\ & ((\s64[4][17]~70_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][49]~101_combout\,
	datad => \ALT_INV_s64[4][17]~70_combout\,
	dataf => \ALT_INV_s64[4][33]~86_combout\,
	combout => \s64[5][33]~102_combout\);

-- Location: LABCELL_X43_Y48_N20
\Y~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = ( !\ExtWord~input_o\ & ( (\B[5]~input_o\ & !\Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~3_combout\);

-- Location: MLABCELL_X42_Y49_N30
\Y~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = ( \Y~3_combout\ & ( (((\s32[4][17]~1_combout\ & \Y~2_combout\)) # (\s64[5][33]~102_combout\)) # (\Y~6_combout\) ) ) # ( !\Y~3_combout\ & ( ((\s32[4][17]~1_combout\ & \Y~2_combout\)) # (\Y~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[4][17]~1_combout\,
	datab => \ALT_INV_Y~2_combout\,
	datac => \ALT_INV_Y~6_combout\,
	datad => \ALT_INV_s64[5][33]~102_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~7_combout\);

-- Location: LABCELL_X45_Y43_N6
\s64[2][0]~117\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~117_combout\ = ( \A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[3]~input_o\))) ) ) ) # ( \A[5]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( !\B[1]~input_o\ & ( (\A[6]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~117_combout\);

-- Location: MLABCELL_X49_Y43_N26
\s64[2][0]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~115_combout\ = ( \A[9]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[7]~input_o\))) ) ) ) # ( \A[9]~input_o\ & ( !\B[1]~input_o\ & ( (\A[10]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~115_combout\);

-- Location: LABCELL_X50_Y43_N6
\s64[2][0]~116\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~116_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (\A[16]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & \A[16]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \s64[2][0]~116_combout\);

-- Location: LABCELL_X50_Y43_N0
\s64[2][0]~114\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~114_combout\ = ( \A[10]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[11]~input_o\))) # (\B[1]~input_o\ & (((\A[12]~input_o\) # (\B[0]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[13]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[11]~input_o\ & (\B[0]~input_o\))) # (\B[1]~input_o\ & (((\A[12]~input_o\) # (\B[0]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[11]~input_o\))) # (\B[1]~input_o\ & 
-- (((!\B[0]~input_o\ & \A[12]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\ & (\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~114_combout\);

-- Location: MLABCELL_X46_Y43_N32
\s64[3][10]~118\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][10]~118_combout\ = ( \s64[2][0]~114_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~116_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~117_combout\)) ) ) ) # ( !\s64[2][0]~114_combout\ & ( \B[2]~input_o\ & ( 
-- (!\Equal0~0_combout\ & ((\s64[2][0]~116_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~117_combout\)) ) ) ) # ( \s64[2][0]~114_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~115_combout\) ) ) ) # ( !\s64[2][0]~114_combout\ & ( 
-- !\B[2]~input_o\ & ( (\s64[2][0]~115_combout\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~117_combout\,
	datab => \ALT_INV_s64[2][0]~115_combout\,
	datac => \ALT_INV_s64[2][0]~116_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[2][0]~114_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][10]~118_combout\);

-- Location: LABCELL_X45_Y43_N8
\s64[2][0]~126\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~126_combout\ = ( \A[5]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( \B[1]~input_o\ & ( (\A[4]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~126_combout\);

-- Location: MLABCELL_X49_Y43_N28
\s64[2][0]~125\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~125_combout\ = ( \A[9]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[8]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[7]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)) # (\A[8]~input_o\))) # (\B[0]~input_o\ & (((\A[7]~input_o\ & !\B[1]~input_o\)))) ) ) ) # ( \A[9]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # 
-- (\A[7]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[7]~input_o\ & !\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \s64[2][0]~125_combout\);

-- Location: LABCELL_X45_Y43_N0
\s64[2][0]~127\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~127_combout\ = ( \B[1]~input_o\ & ( (\A[0]~input_o\ & !\B[0]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~127_combout\);

-- Location: MLABCELL_X44_Y43_N8
\s64[3][2]~128\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][2]~128_combout\ = ( \s64[2][0]~127_combout\ & ( (!\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~126_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~125_combout\))))) # (\Equal0~0_combout\ & (!\B[2]~input_o\)) ) ) # ( !\s64[2][0]~127_combout\ & 
-- ( (!\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~126_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~125_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~126_combout\,
	datad => \ALT_INV_s64[2][0]~125_combout\,
	dataf => \ALT_INV_s64[2][0]~127_combout\,
	combout => \s64[3][2]~128_combout\);

-- Location: MLABCELL_X44_Y45_N6
\s64[4][2]~129\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][2]~129_combout\ = ( \s64[3][2]~128_combout\ & ( (!\B[3]~input_o\) # ((\s64[3][10]~118_combout\ & !\Equal0~0_combout\)) ) ) # ( !\s64[3][2]~128_combout\ & ( (\B[3]~input_o\ & (\s64[3][10]~118_combout\ & !\Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][10]~118_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][2]~128_combout\,
	combout => \s64[4][2]~129_combout\);

-- Location: MLABCELL_X52_Y43_N18
\s64[2][0]~112\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~112_combout\ = ( \A[21]~input_o\ & ( \A[19]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\A[22]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[20]~input_o\))) ) ) ) # ( \A[21]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[22]~input_o\)))) # (\B[1]~input_o\ & (\A[20]~input_o\ & 
-- ((!\B[0]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \s64[2][0]~112_combout\);

-- Location: LABCELL_X47_Y43_N26
\s64[2][0]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~109_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\) # (\A[29]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[26]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (\B[0]~input_o\ & \A[29]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[26]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[2][0]~109_combout\);

-- Location: MLABCELL_X46_Y44_N22
\s64[2][0]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~110_combout\ = ( \A[26]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[23]~input_o\))) ) ) ) # ( !\A[26]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[23]~input_o\))) ) ) ) # ( \A[26]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[26]~input_o\ & ( !\B[0]~input_o\ & ( (\A[24]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~110_combout\);

-- Location: LABCELL_X47_Y40_N34
\s64[2][0]~147\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~147_combout\ = ( \ShiftFN[1]~input_o\ & ( \B[0]~input_o\ & ( (\A[31]~input_o\ & ((!\B[1]~input_o\) # (\ShiftFN[0]~input_o\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[31]~input_o\) ) ) ) # ( 
-- \ShiftFN[1]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\)))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\B[0]~input_o\ & ( (\A[30]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101001100000000111100000000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~147_combout\);

-- Location: MLABCELL_X46_Y43_N10
\s32[3][26]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][26]~2_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~147_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~112_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~147_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~109_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~110_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~147_combout\ & ( (\s64[2][0]~112_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~147_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~109_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~110_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~112_combout\,
	datab => \ALT_INV_s64[2][0]~109_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~110_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~147_combout\,
	combout => \s32[3][26]~2_combout\);

-- Location: MLABCELL_X52_Y43_N26
\s64[2][0]~120\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~120_combout\ = ( \A[18]~input_o\ & ( \A[17]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[16]~input_o\)) # (\B[0]~input_o\ & ((\A[15]~input_o\)))) ) ) ) # ( !\A[18]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ 
-- & (\A[16]~input_o\))) # (\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[15]~input_o\)))) ) ) ) # ( \A[18]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[16]~input_o\)))) # (\B[0]~input_o\ & (\B[1]~input_o\ & 
-- ((\A[15]~input_o\)))) ) ) ) # ( !\A[18]~input_o\ & ( !\A[17]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[16]~input_o\)) # (\B[0]~input_o\ & ((\A[15]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \s64[2][0]~120_combout\);

-- Location: MLABCELL_X46_Y44_N26
\s64[2][0]~121\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~121_combout\ = ( \A[22]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[23]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)) ) ) ) # ( !\A[22]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[23]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[25]~input_o\)) ) ) ) # ( \A[22]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[22]~input_o\ & ( !\B[0]~input_o\ & ( (\A[24]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~121_combout\);

-- Location: MLABCELL_X52_Y43_N22
\s64[2][0]~119\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~119_combout\ = ( \A[20]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[18]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[21]~input_o\))) ) ) ) # ( !\A[20]~input_o\ & ( \A[19]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[18]~input_o\)))) # (\B[1]~input_o\ & (\A[21]~input_o\ & ((\B[0]~input_o\)))) ) ) ) # ( \A[20]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\A[18]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[21]~input_o\))) ) ) ) # ( !\A[20]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\A[18]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[21]~input_o\ & ((\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \s64[2][0]~119_combout\);

-- Location: LABCELL_X50_Y43_N8
\s64[2][0]~122\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~122_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (\A[14]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & \A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~122_combout\);

-- Location: MLABCELL_X46_Y43_N38
\s64[3][18]~123\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][18]~123_combout\ = ( \Equal0~0_combout\ & ( \B[2]~input_o\ & ( \s64[2][0]~122_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[2]~input_o\ & ( \s64[2][0]~121_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[2]~input_o\ & ( \s64[2][0]~120_combout\ ) ) ) 
-- # ( !\Equal0~0_combout\ & ( !\B[2]~input_o\ & ( \s64[2][0]~119_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~120_combout\,
	datab => \ALT_INV_s64[2][0]~121_combout\,
	datac => \ALT_INV_s64[2][0]~119_combout\,
	datad => \ALT_INV_s64[2][0]~122_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][18]~123_combout\);

-- Location: MLABCELL_X44_Y45_N20
\s32[4][18]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][18]~3_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][18]~123_combout\)) # (\B[3]~input_o\ & ((\s64[3][10]~118_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][18]~123_combout\))) # (\B[3]~input_o\ & 
-- (\s32[3][26]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[3][26]~2_combout\,
	datab => \ALT_INV_s64[3][18]~123_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][10]~118_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s32[4][18]~3_combout\);

-- Location: MLABCELL_X42_Y49_N28
\Y~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = ( \s32[4][18]~3_combout\ & ( ((\s64[4][2]~129_combout\ & \Y~5_combout\)) # (\Y~2_combout\) ) ) # ( !\s32[4][18]~3_combout\ & ( (\s64[4][2]~129_combout\ & \Y~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y~2_combout\,
	datac => \ALT_INV_s64[4][2]~129_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_s32[4][18]~3_combout\,
	combout => \Y~8_combout\);

-- Location: LABCELL_X50_Y41_N18
\fill64~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill64~0_combout\ = ( \ShiftFN[0]~input_o\ & ( (\A[63]~input_o\ & \ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \fill64~0_combout\);

-- Location: LABCELL_X45_Y41_N0
\s64[2][62]~143\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][62]~143_combout\ = ( \s64[1][60]~44_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][62]~45_combout\)))) # (\B[1]~input_o\ & (((\fill64~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][60]~44_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][62]~45_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & ((\fill64~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][62]~45_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_s64[1][60]~44_combout\,
	combout => \s64[2][62]~143_combout\);

-- Location: LABCELL_X45_Y41_N16
\s64[2][58]~142\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][58]~142_combout\ = ( \s64[1][60]~44_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][58]~42_combout\)))) # (\B[1]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[1][56]~41_combout\)))) ) ) # ( !\s64[1][60]~44_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][58]~42_combout\)))) # (\B[1]~input_o\ & (\Equal0~0_combout\ & (\s64[1][56]~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111101110110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][56]~41_combout\,
	datac => \ALT_INV_s64[1][58]~42_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][60]~44_combout\,
	combout => \s64[2][58]~142_combout\);

-- Location: LABCELL_X45_Y41_N14
\s64[2][54]~140\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][54]~140_combout\ = ( \s64[1][54]~38_combout\ & ( (!\B[1]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[1][56]~41_combout\))) # (\Equal0~0_combout\ & (\s64[1][52]~37_combout\))) ) ) # ( !\s64[1][54]~38_combout\ & ( (\B[1]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[1][56]~41_combout\))) # (\Equal0~0_combout\ & (\s64[1][52]~37_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101111111111000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][52]~37_combout\,
	datac => \ALT_INV_s64[1][56]~41_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][54]~38_combout\,
	combout => \s64[2][54]~140_combout\);

-- Location: LABCELL_X45_Y41_N32
\s64[3][58]~144\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][58]~144_combout\ = ( \s64[2][54]~140_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][58]~142_combout\)))) # (\B[2]~input_o\ & (((\s64[2][62]~143_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][54]~140_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][58]~142_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][62]~143_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][62]~143_combout\,
	datad => \ALT_INV_s64[2][58]~142_combout\,
	dataf => \ALT_INV_s64[2][54]~140_combout\,
	combout => \s64[3][58]~144_combout\);

-- Location: LABCELL_X45_Y41_N30
\s64[2][50]~139\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][50]~139_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][50]~35_combout\))) # (\B[1]~input_o\ & (\s64[1][48]~34_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][50]~35_combout\))) # (\B[1]~input_o\ & 
-- (\s64[1][52]~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][48]~34_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][52]~37_combout\,
	datad => \ALT_INV_s64[1][50]~35_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][50]~139_combout\);

-- Location: LABCELL_X45_Y41_N4
\s64[2][46]~136\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][46]~136_combout\ = ( \s64[1][48]~34_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][46]~30_combout\)))) # (\B[1]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[1][44]~29_combout\)))) ) ) # ( !\s64[1][48]~34_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][46]~30_combout\)))) # (\B[1]~input_o\ & (\Equal0~0_combout\ & (\s64[1][44]~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111101110110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][44]~29_combout\,
	datac => \ALT_INV_s64[1][46]~30_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][48]~34_combout\,
	combout => \s64[2][46]~136_combout\);

-- Location: LABCELL_X45_Y41_N34
\s64[3][50]~141\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][50]~141_combout\ = ( \s64[2][54]~140_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][50]~139_combout\)))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[2][46]~136_combout\)))) ) ) # ( !\s64[2][54]~140_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][50]~139_combout\)))) # (\B[2]~input_o\ & (\Equal0~0_combout\ & ((\s64[2][46]~136_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][50]~139_combout\,
	datad => \ALT_INV_s64[2][46]~136_combout\,
	dataf => \ALT_INV_s64[2][54]~140_combout\,
	combout => \s64[3][50]~141_combout\);

-- Location: LABCELL_X45_Y41_N26
\s64[2][42]~135\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][42]~135_combout\ = ( \B[1]~input_o\ & ( \s64[1][40]~26_combout\ & ( (\s64[1][44]~29_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \s64[1][40]~26_combout\ & ( \s64[1][42]~27_combout\ ) ) ) # ( \B[1]~input_o\ & ( 
-- !\s64[1][40]~26_combout\ & ( (!\Equal0~0_combout\ & \s64[1][44]~29_combout\) ) ) ) # ( !\B[1]~input_o\ & ( !\s64[1][40]~26_combout\ & ( \s64[1][42]~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000010100000101000000000111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[1][44]~29_combout\,
	datad => \ALT_INV_s64[1][42]~27_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][40]~26_combout\,
	combout => \s64[2][42]~135_combout\);

-- Location: LABCELL_X50_Y40_N20
\s64[2][38]~133\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][38]~133_combout\ = ( \s64[1][40]~26_combout\ & ( (!\B[1]~input_o\ & (\s64[1][38]~23_combout\)) # (\B[1]~input_o\ & (((!\Equal0~0_combout\) # (\s64[1][36]~22_combout\)))) ) ) # ( !\s64[1][40]~26_combout\ & ( (!\B[1]~input_o\ & 
-- (\s64[1][38]~23_combout\)) # (\B[1]~input_o\ & (((\Equal0~0_combout\ & \s64[1][36]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010100000101001101011100010111110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][38]~23_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_s64[1][36]~22_combout\,
	dataf => \ALT_INV_s64[1][40]~26_combout\,
	combout => \s64[2][38]~133_combout\);

-- Location: LABCELL_X45_Y41_N10
\s64[3][42]~137\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][42]~137_combout\ = ( \s64[2][38]~133_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][42]~135_combout\)))) # (\B[2]~input_o\ & (((\s64[2][46]~136_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][38]~133_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][42]~135_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][46]~136_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][42]~135_combout\,
	datad => \ALT_INV_s64[2][46]~136_combout\,
	dataf => \ALT_INV_s64[2][38]~133_combout\,
	combout => \s64[3][42]~137_combout\);

-- Location: MLABCELL_X44_Y45_N32
\s64[4][50]~145\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][50]~145_combout\ = ( \s64[3][42]~137_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][50]~141_combout\)))) # (\B[3]~input_o\ & (((\Equal0~0_combout\)) # (\s64[3][58]~144_combout\))) ) ) # ( !\s64[3][42]~137_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][50]~141_combout\)))) # (\B[3]~input_o\ & (\s64[3][58]~144_combout\ & (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][58]~144_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][50]~141_combout\,
	dataf => \ALT_INV_s64[3][42]~137_combout\,
	combout => \s64[4][50]~145_combout\);

-- Location: LABCELL_X47_Y40_N8
\s64[2][0]~111\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~111_combout\ = ( \A[30]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[31]~input_o\)))) # (\B[1]~input_o\ & (((\s64[1][32]~16_combout\)))) ) ) # ( !\A[30]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[31]~input_o\))) # 
-- (\B[1]~input_o\ & (((\s64[1][32]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_s64[1][32]~16_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \s64[2][0]~111_combout\);

-- Location: MLABCELL_X46_Y43_N8
\s64[3][26]~113\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][26]~113_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~111_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~112_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~111_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~109_combout\)) # (\Equal0~0_combout\ 
-- & ((\s64[2][0]~110_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~111_combout\ & ( (\s64[2][0]~112_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~111_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~109_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~110_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~112_combout\,
	datab => \ALT_INV_s64[2][0]~109_combout\,
	datac => \ALT_INV_s64[2][0]~110_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~111_combout\,
	combout => \s64[3][26]~113_combout\);

-- Location: MLABCELL_X46_Y43_N0
\s64[2][34]~131\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][34]~131_combout\ = ( \B[1]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[1][36]~22_combout\)) # (\Equal0~0_combout\ & ((\s64[1][32]~16_combout\))) ) ) # ( !\B[1]~input_o\ & ( \s64[1][34]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][34]~17_combout\,
	datab => \ALT_INV_s64[1][36]~22_combout\,
	datac => \ALT_INV_s64[1][32]~16_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][34]~131_combout\);

-- Location: LABCELL_X47_Y43_N8
\s64[2][0]~132\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~132_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & ((\A[29]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (\A[27]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & ((\A[29]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[2][0]~132_combout\);

-- Location: MLABCELL_X46_Y43_N20
\s64[3][34]~134\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][34]~134_combout\ = ( \s64[2][0]~132_combout\ & ( (!\B[2]~input_o\ & (\s64[2][34]~131_combout\)) # (\B[2]~input_o\ & (((\Equal0~0_combout\) # (\s64[2][38]~133_combout\)))) ) ) # ( !\s64[2][0]~132_combout\ & ( (!\B[2]~input_o\ & 
-- (\s64[2][34]~131_combout\)) # (\B[2]~input_o\ & (((\s64[2][38]~133_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010000010100110101000001010011010111110101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][34]~131_combout\,
	datab => \ALT_INV_s64[2][38]~133_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][0]~132_combout\,
	combout => \s64[3][34]~134_combout\);

-- Location: MLABCELL_X44_Y45_N2
\s64[4][34]~138\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][34]~138_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][42]~137_combout\))) # (\Equal0~0_combout\ & (\s64[3][26]~113_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][34]~134_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][26]~113_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][42]~137_combout\,
	datad => \ALT_INV_s64[3][34]~134_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][34]~138_combout\);

-- Location: MLABCELL_X44_Y45_N0
\s64[4][18]~124\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][18]~124_combout\ = ( \s64[3][18]~123_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & (\s64[3][26]~113_combout\)) # (\Equal0~0_combout\ & ((\s64[3][10]~118_combout\)))) ) ) # ( !\s64[3][18]~123_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[3][26]~113_combout\)) # (\Equal0~0_combout\ & ((\s64[3][10]~118_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][26]~113_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][10]~118_combout\,
	dataf => \ALT_INV_s64[3][18]~123_combout\,
	combout => \s64[4][18]~124_combout\);

-- Location: MLABCELL_X44_Y45_N16
\s64[5][34]~146\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][34]~146_combout\ = ( \Equal0~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][34]~138_combout\)) # (\B[4]~input_o\ & ((\s64[4][18]~124_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[4]~input_o\ & ((\s64[4][34]~138_combout\))) # (\B[4]~input_o\ & 
-- (\s64[4][50]~145_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][50]~145_combout\,
	datab => \ALT_INV_s64[4][34]~138_combout\,
	datac => \ALT_INV_s64[4][18]~124_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[5][34]~146_combout\);

-- Location: MLABCELL_X44_Y45_N30
\s64[5][2]~130\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][2]~130_combout\ = ( \Equal0~0_combout\ & ( (\s64[4][2]~129_combout\ & !\B[4]~input_o\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[4]~input_o\ & ((\s64[4][2]~129_combout\))) # (\B[4]~input_o\ & (\s64[4][18]~124_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][18]~124_combout\,
	datab => \ALT_INV_s64[4][2]~129_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[5][2]~130_combout\);

-- Location: LABCELL_X43_Y48_N26
\Y~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = ( \s64[5][2]~130_combout\ & ( (((\Y~3_combout\ & \s64[5][34]~146_combout\)) # (\Y~8_combout\)) # (\Y~4_combout\) ) ) # ( !\s64[5][2]~130_combout\ & ( ((\Y~3_combout\ & \s64[5][34]~146_combout\)) # (\Y~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~3_combout\,
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_Y~8_combout\,
	datad => \ALT_INV_s64[5][34]~146_combout\,
	dataf => \ALT_INV_s64[5][2]~130_combout\,
	combout => \Y~9_combout\);

-- Location: LABCELL_X50_Y43_N12
\s64[2][0]~153\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~153_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[11]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\B[0]~input_o\ & \A[14]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[11]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~153_combout\);

-- Location: MLABCELL_X49_Y43_N12
\s64[2][0]~154\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~154_combout\ = ( \A[8]~input_o\ & ( \A[10]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) # 
-- (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \s64[2][0]~154_combout\);

-- Location: MLABCELL_X52_Y43_N30
\s64[2][0]~155\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~155_combout\ = ( \A[18]~input_o\ & ( \A[17]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[16]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[18]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\A[15]~input_o\)) # (\B[1]~input_o\))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[16]~input_o\))) ) ) ) # ( \A[18]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[15]~input_o\)))) # (\B[0]~input_o\ & (((\A[16]~input_o\)) # 
-- (\B[1]~input_o\))) ) ) ) # ( !\A[18]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[16]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \s64[2][0]~155_combout\);

-- Location: MLABCELL_X46_Y43_N26
\s64[2][0]~156\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~156_combout\ = ( \A[6]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \B[0]~input_o\ & ( (\A[4]~input_o\ & \B[1]~input_o\) ) ) ) # ( \A[6]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( !\A[6]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~156_combout\);

-- Location: LABCELL_X47_Y44_N26
\s64[3][11]~157\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][11]~157_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~156_combout\ & ( (\Equal0~0_combout\) # (\s64[2][0]~155_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~156_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~153_combout\)) # (\Equal0~0_combout\ 
-- & ((\s64[2][0]~154_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~156_combout\ & ( (\s64[2][0]~155_combout\ & !\Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~156_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~153_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~154_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~153_combout\,
	datab => \ALT_INV_s64[2][0]~154_combout\,
	datac => \ALT_INV_s64[2][0]~155_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~156_combout\,
	combout => \s64[3][11]~157_combout\);

-- Location: MLABCELL_X52_Y43_N14
\s64[2][0]~158\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~158_combout\ = ( \A[21]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[20]~input_o\))) # (\B[1]~input_o\ & (((\A[22]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[21]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[20]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # 
-- (\A[22]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( !\A[19]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \s64[2][0]~158_combout\);

-- Location: LABCELL_X50_Y43_N38
\s64[2][0]~161\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~161_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\A[12]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~161_combout\);

-- Location: MLABCELL_X52_Y43_N38
\s64[2][0]~159\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~159_combout\ = ( \A[18]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\)))) ) ) ) # ( !\A[18]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))))) ) ) ) # ( \A[18]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))))) ) ) ) # ( !\A[18]~input_o\ & ( !\A[19]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \s64[2][0]~159_combout\);

-- Location: MLABCELL_X46_Y44_N16
\s64[2][0]~160\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~160_combout\ = ( \A[26]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[26]~input_o\ & ( \B[0]~input_o\ & ( (\A[24]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[26]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[23]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)) ) ) ) # ( !\A[26]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[23]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~160_combout\);

-- Location: LABCELL_X47_Y44_N10
\s64[3][19]~162\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][19]~162_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~160_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~161_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~160_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~158_combout\)) # (\Equal0~0_combout\ 
-- & ((\s64[2][0]~159_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~160_combout\ & ( (\s64[2][0]~161_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~160_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~158_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~159_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~158_combout\,
	datab => \ALT_INV_s64[2][0]~161_combout\,
	datac => \ALT_INV_s64[2][0]~159_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~160_combout\,
	combout => \s64[3][19]~162_combout\);

-- Location: LABCELL_X47_Y43_N14
\s64[2][0]~148\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~148_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (\B[0]~input_o\) # (\A[27]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (\A[27]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[2][0]~148_combout\);

-- Location: MLABCELL_X46_Y44_N14
\s64[2][0]~151\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~151_combout\ = ( \A[23]~input_o\ & ( \A[20]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[21]~input_o\)))) # (\B[0]~input_o\ & (((\A[22]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( \A[20]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A[21]~input_o\))) # (\B[0]~input_o\ & (((\A[22]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( \A[23]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[21]~input_o\)))) # (\B[0]~input_o\ & 
-- (!\B[1]~input_o\ & ((\A[22]~input_o\)))) ) ) ) # ( !\A[23]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A[21]~input_o\))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[22]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \s64[2][0]~151_combout\);

-- Location: MLABCELL_X46_Y44_N30
\s64[2][0]~149\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~149_combout\ = ( \A[26]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[26]~input_o\ & ( \B[0]~input_o\ & ( (\A[24]~input_o\ & \B[1]~input_o\) ) ) ) # ( \A[26]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)) ) ) ) # ( !\A[26]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~149_combout\);

-- Location: LABCELL_X47_Y40_N16
\s64[2][0]~150\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~150_combout\ = ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[32]~input_o\))) # (\B[1]~input_o\ & (\s64[1][33]~71_combout\)) ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\s64[1][33]~71_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][33]~71_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~150_combout\);

-- Location: LABCELL_X47_Y44_N20
\s64[3][27]~152\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][27]~152_combout\ = ( \s64[2][0]~150_combout\ & ( \Equal0~0_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][0]~149_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~151_combout\)) ) ) ) # ( !\s64[2][0]~150_combout\ & ( \Equal0~0_combout\ & ( (!\B[2]~input_o\ & 
-- ((\s64[2][0]~149_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~151_combout\)) ) ) ) # ( \s64[2][0]~150_combout\ & ( !\Equal0~0_combout\ & ( (\B[2]~input_o\) # (\s64[2][0]~148_combout\) ) ) ) # ( !\s64[2][0]~150_combout\ & ( !\Equal0~0_combout\ & ( 
-- (\s64[2][0]~148_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~148_combout\,
	datab => \ALT_INV_s64[2][0]~151_combout\,
	datac => \ALT_INV_s64[2][0]~149_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_s64[2][0]~150_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[3][27]~152_combout\);

-- Location: LABCELL_X43_Y48_N30
\s64[4][19]~163\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][19]~163_combout\ = ( \s64[3][27]~152_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][19]~162_combout\)))) # (\B[3]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[3][11]~157_combout\))) ) ) # ( !\s64[3][27]~152_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][19]~162_combout\)))) # (\B[3]~input_o\ & (\s64[3][11]~157_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111110111010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][11]~157_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][19]~162_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][27]~152_combout\,
	combout => \s64[4][19]~163_combout\);

-- Location: LABCELL_X45_Y43_N34
\s64[2][0]~165\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~165_combout\ = ( \A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( \B[1]~input_o\ & ( (\A[6]~input_o\ & \B[0]~input_o\) ) ) ) # ( \A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~165_combout\);

-- Location: LABCELL_X45_Y43_N38
\s64[2][0]~166\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~166_combout\ = ( \A[0]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[1]~input_o\ & ( (\A[1]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)) ) ) ) # ( !\A[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~166_combout\);

-- Location: MLABCELL_X49_Y43_N16
\s64[2][0]~164\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~164_combout\ = ( \A[9]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[9]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[8]~input_o\)) ) ) ) # ( !\A[9]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[8]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~164_combout\);

-- Location: LABCELL_X47_Y44_N12
\s64[3][3]~167\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][3]~167_combout\ = ( \s64[2][0]~164_combout\ & ( (!\Equal0~0_combout\ & (((\s64[2][0]~165_combout\)) # (\B[2]~input_o\))) # (\Equal0~0_combout\ & (!\B[2]~input_o\ & ((\s64[2][0]~166_combout\)))) ) ) # ( !\s64[2][0]~164_combout\ & ( (!\B[2]~input_o\ 
-- & ((!\Equal0~0_combout\ & (\s64[2][0]~165_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~166_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~165_combout\,
	datad => \ALT_INV_s64[2][0]~166_combout\,
	dataf => \ALT_INV_s64[2][0]~164_combout\,
	combout => \s64[3][3]~167_combout\);

-- Location: LABCELL_X43_Y48_N14
\s64[4][3]~168\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][3]~168_combout\ = ( \s64[3][11]~157_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][3]~167_combout\))) # (\B[3]~input_o\ & (!\Equal0~0_combout\)) ) ) # ( !\s64[3][11]~157_combout\ & ( (!\B[3]~input_o\ & \s64[3][3]~167_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][3]~167_combout\,
	dataf => \ALT_INV_s64[3][11]~157_combout\,
	combout => \s64[4][3]~168_combout\);

-- Location: LABCELL_X43_Y48_N38
\s64[5][3]~169\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][3]~169_combout\ = ( \s64[4][3]~168_combout\ & ( (!\B[4]~input_o\) # ((\s64[4][19]~163_combout\ & !\Equal0~0_combout\)) ) ) # ( !\s64[4][3]~168_combout\ & ( (\B[4]~input_o\ & (\s64[4][19]~163_combout\ & !\Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][19]~163_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][3]~168_combout\,
	combout => \s64[5][3]~169_combout\);

-- Location: LABCELL_X47_Y43_N18
\s64[2][0]~171\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~171_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (\A[29]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[31]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & \A[29]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[31]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[2][0]~171_combout\);

-- Location: LABCELL_X47_Y40_N18
\s64[2][35]~170\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][35]~170_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][35]~72_combout\))) # (\B[1]~input_o\ & (\s64[1][33]~71_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][35]~72_combout\)) # (\B[1]~input_o\ & 
-- ((\s64[1][37]~75_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][33]~71_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][35]~72_combout\,
	datad => \ALT_INV_s64[1][37]~75_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][35]~170_combout\);

-- Location: LABCELL_X50_Y40_N8
\s64[2][39]~172\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][39]~172_combout\ = ( \s64[1][37]~75_combout\ & ( (!\B[1]~input_o\ & (\s64[1][39]~76_combout\)) # (\B[1]~input_o\ & (((\Equal0~0_combout\) # (\s64[1][41]~79_combout\)))) ) ) # ( !\s64[1][37]~75_combout\ & ( (!\B[1]~input_o\ & 
-- (\s64[1][39]~76_combout\)) # (\B[1]~input_o\ & (((\s64[1][41]~79_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_s64[1][39]~76_combout\,
	datac => \ALT_INV_s64[1][41]~79_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[1][37]~75_combout\,
	combout => \s64[2][39]~172_combout\);

-- Location: LABCELL_X47_Y44_N14
\s64[3][35]~173\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][35]~173_combout\ = ( \s64[2][39]~172_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][35]~170_combout\)))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[2][0]~171_combout\)))) ) ) # ( !\s64[2][39]~172_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][35]~170_combout\)))) # (\B[2]~input_o\ & (\Equal0~0_combout\ & (\s64[2][0]~171_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~171_combout\,
	datad => \ALT_INV_s64[2][35]~170_combout\,
	dataf => \ALT_INV_s64[2][39]~172_combout\,
	combout => \s64[3][35]~173_combout\);

-- Location: MLABCELL_X49_Y44_N20
\s64[2][43]~174\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][43]~174_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][43]~80_combout\))) # (\B[1]~input_o\ & (\s64[1][41]~79_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][43]~80_combout\))) # (\B[1]~input_o\ & 
-- (\s64[1][45]~82_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][41]~79_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][45]~82_combout\,
	datad => \ALT_INV_s64[1][43]~80_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][43]~174_combout\);

-- Location: MLABCELL_X49_Y44_N24
\s64[2][47]~175\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][47]~175_combout\ = ( \s64[1][45]~82_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][47]~83_combout\)))) # (\B[1]~input_o\ & (((\s64[1][49]~87_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][45]~82_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][47]~83_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & (\s64[1][49]~87_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][49]~87_combout\,
	datad => \ALT_INV_s64[1][47]~83_combout\,
	dataf => \ALT_INV_s64[1][45]~82_combout\,
	combout => \s64[2][47]~175_combout\);

-- Location: LABCELL_X47_Y44_N36
\s64[3][43]~176\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][43]~176_combout\ = ( \s64[2][47]~175_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][43]~174_combout\)))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][39]~172_combout\))) ) ) # ( !\s64[2][47]~175_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][43]~174_combout\)))) # (\B[2]~input_o\ & (\s64[2][39]~172_combout\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100111111000111010011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][39]~172_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][43]~174_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][47]~175_combout\,
	combout => \s64[3][43]~176_combout\);

-- Location: LABCELL_X43_Y48_N0
\s64[4][35]~177\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][35]~177_combout\ = ( \s64[3][43]~176_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][35]~173_combout\)))) # (\B[3]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[3][27]~152_combout\))) ) ) # ( !\s64[3][43]~176_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][35]~173_combout\)))) # (\B[3]~input_o\ & (\s64[3][27]~152_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111110111010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][27]~152_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][35]~173_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][43]~176_combout\,
	combout => \s64[4][35]~177_combout\);

-- Location: MLABCELL_X49_Y44_N32
\s64[2][55]~179\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][55]~179_combout\ = ( \B[1]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[1][57]~94_combout\)) # (\Equal0~0_combout\ & ((\s64[1][53]~90_combout\))) ) ) # ( !\B[1]~input_o\ & ( \s64[1][55]~91_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][55]~91_combout\,
	datac => \ALT_INV_s64[1][57]~94_combout\,
	datad => \ALT_INV_s64[1][53]~90_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][55]~179_combout\);

-- Location: MLABCELL_X49_Y44_N30
\s64[2][51]~178\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][51]~178_combout\ = ( \s64[1][51]~88_combout\ & ( (!\B[1]~input_o\) # ((!\Equal0~0_combout\ & (\s64[1][53]~90_combout\)) # (\Equal0~0_combout\ & ((\s64[1][49]~87_combout\)))) ) ) # ( !\s64[1][51]~88_combout\ & ( (\B[1]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[1][53]~90_combout\)) # (\Equal0~0_combout\ & ((\s64[1][49]~87_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][53]~90_combout\,
	datad => \ALT_INV_s64[1][49]~87_combout\,
	dataf => \ALT_INV_s64[1][51]~88_combout\,
	combout => \s64[2][51]~178_combout\);

-- Location: MLABCELL_X49_Y44_N6
\s64[3][51]~180\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][51]~180_combout\ = ( \s64[2][47]~175_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][51]~178_combout\)))) # (\B[2]~input_o\ & (((\s64[2][55]~179_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][47]~175_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][51]~178_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][55]~179_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][55]~179_combout\,
	datad => \ALT_INV_s64[2][51]~178_combout\,
	dataf => \ALT_INV_s64[2][47]~175_combout\,
	combout => \s64[3][51]~180_combout\);

-- Location: MLABCELL_X49_Y44_N8
\s64[2][59]~181\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][59]~181_combout\ = ( \s64[1][59]~95_combout\ & ( (!\B[1]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[1][61]~97_combout\))) # (\Equal0~0_combout\ & (\s64[1][57]~94_combout\))) ) ) # ( !\s64[1][59]~95_combout\ & ( (\B[1]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[1][61]~97_combout\))) # (\Equal0~0_combout\ & (\s64[1][57]~94_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][57]~94_combout\,
	datad => \ALT_INV_s64[1][61]~97_combout\,
	dataf => \ALT_INV_s64[1][59]~95_combout\,
	combout => \s64[2][59]~181_combout\);

-- Location: MLABCELL_X49_Y44_N10
\s64[2][63]~182\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][63]~182_combout\ = ( \s64[1][61]~97_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][63]~98_combout\)))) # (\B[1]~input_o\ & (((\fill64~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][61]~97_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][63]~98_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & (\fill64~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_s64[1][63]~98_combout\,
	dataf => \ALT_INV_s64[1][61]~97_combout\,
	combout => \s64[2][63]~182_combout\);

-- Location: MLABCELL_X49_Y44_N0
\s64[3][59]~183\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][59]~183_combout\ = ( \s64[2][55]~179_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][59]~181_combout\)))) # (\B[2]~input_o\ & (((\s64[2][63]~182_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][55]~179_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][59]~181_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][63]~182_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][59]~181_combout\,
	datad => \ALT_INV_s64[2][63]~182_combout\,
	dataf => \ALT_INV_s64[2][55]~179_combout\,
	combout => \s64[3][59]~183_combout\);

-- Location: MLABCELL_X44_Y48_N0
\s64[4][51]~184\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][51]~184_combout\ = ( \s64[3][59]~183_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][51]~180_combout\)))) # (\B[3]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[3][43]~176_combout\)))) ) ) # ( !\s64[3][59]~183_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][51]~180_combout\)))) # (\B[3]~input_o\ & (\Equal0~0_combout\ & (\s64[3][43]~176_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][43]~176_combout\,
	datad => \ALT_INV_s64[3][51]~180_combout\,
	dataf => \ALT_INV_s64[3][59]~183_combout\,
	combout => \s64[4][51]~184_combout\);

-- Location: LABCELL_X43_Y48_N4
\s64[5][35]~185\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][35]~185_combout\ = ( \s64[4][51]~184_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][35]~177_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][19]~163_combout\))) ) ) # ( !\s64[4][51]~184_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][35]~177_combout\)))) # (\B[4]~input_o\ & (\s64[4][19]~163_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111110111010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][19]~163_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][35]~177_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][51]~184_combout\,
	combout => \s64[5][35]~185_combout\);

-- Location: LABCELL_X47_Y40_N14
\s64[2][0]~186\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~186_combout\ = ( \B[0]~input_o\ & ( (\A[31]~input_o\ & (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) ) ) # ( !\B[0]~input_o\ & ( (\A[31]~input_o\ & ((!\B[1]~input_o\) # ((\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000101010001000100010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~186_combout\);

-- Location: LABCELL_X47_Y44_N0
\s32[3][27]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][27]~4_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~186_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~151_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~186_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~148_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~149_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~186_combout\ & ( (\Equal0~0_combout\ & \s64[2][0]~151_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~186_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~148_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~149_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~148_combout\,
	datab => \ALT_INV_s64[2][0]~149_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~151_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~186_combout\,
	combout => \s32[3][27]~4_combout\);

-- Location: LABCELL_X43_Y48_N28
\s32[4][19]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][19]~5_combout\ = ( \s64[3][19]~162_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\s32[3][27]~4_combout\))) # (\Equal0~0_combout\ & (\s64[3][11]~157_combout\))) ) ) # ( !\s64[3][19]~162_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s32[3][27]~4_combout\))) # (\Equal0~0_combout\ & (\s64[3][11]~157_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][11]~157_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s32[3][27]~4_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][19]~162_combout\,
	combout => \s32[4][19]~5_combout\);

-- Location: LABCELL_X43_Y48_N10
\Y~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = ( \s64[4][3]~168_combout\ & ( ((\Y~2_combout\ & \s32[4][19]~5_combout\)) # (\Y~5_combout\) ) ) # ( !\s64[4][3]~168_combout\ & ( (\Y~2_combout\ & \s32[4][19]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y~2_combout\,
	datac => \ALT_INV_Y~5_combout\,
	datad => \ALT_INV_s32[4][19]~5_combout\,
	dataf => \ALT_INV_s64[4][3]~168_combout\,
	combout => \Y~10_combout\);

-- Location: LABCELL_X43_Y48_N24
\Y~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = ( \Y~10_combout\ ) # ( !\Y~10_combout\ & ( (!\Y~3_combout\ & (\Y~4_combout\ & (\s64[5][3]~169_combout\))) # (\Y~3_combout\ & (((\Y~4_combout\ & \s64[5][3]~169_combout\)) # (\s64[5][35]~185_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~3_combout\,
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_s64[5][3]~169_combout\,
	datad => \ALT_INV_s64[5][35]~185_combout\,
	dataf => \ALT_INV_Y~10_combout\,
	combout => \Y~11_combout\);

-- Location: LABCELL_X43_Y43_N30
\s64[3][4]~191\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][4]~191_combout\ = ( \s64[2][0]~10_combout\ & ( \Equal0~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~13_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~52_combout\))) ) ) ) # ( !\s64[2][0]~10_combout\ & ( \Equal0~0_combout\ & ( (!\B[2]~input_o\ & 
-- (\s64[2][0]~13_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~52_combout\))) ) ) ) # ( \s64[2][0]~10_combout\ & ( !\Equal0~0_combout\ & ( (\s64[2][0]~50_combout\) # (\B[2]~input_o\) ) ) ) # ( !\s64[2][0]~10_combout\ & ( !\Equal0~0_combout\ & ( 
-- (!\B[2]~input_o\ & \s64[2][0]~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~13_combout\,
	datab => \ALT_INV_s64[2][0]~52_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_s64[2][0]~50_combout\,
	datae => \ALT_INV_s64[2][0]~10_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[3][4]~191_combout\);

-- Location: LABCELL_X43_Y43_N22
\s64[3][12]~188\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][12]~188_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~8_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~5_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~11_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~8_combout\ & ( (\Equal0~0_combout\) # 
-- (\s64[2][0]~12_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~8_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~5_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~11_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~8_combout\ & ( 
-- (\s64[2][0]~12_combout\ & !\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~5_combout\,
	datab => \ALT_INV_s64[2][0]~11_combout\,
	datac => \ALT_INV_s64[2][0]~12_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~8_combout\,
	combout => \s64[3][12]~188_combout\);

-- Location: LABCELL_X43_Y43_N34
\s64[4][4]~192\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][4]~192_combout\ = ( \Equal0~0_combout\ & ( (\s64[3][4]~191_combout\ & !\B[3]~input_o\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][4]~191_combout\)) # (\B[3]~input_o\ & ((\s64[3][12]~188_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][4]~191_combout\,
	datac => \ALT_INV_s64[3][12]~188_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][4]~192_combout\);

-- Location: LABCELL_X43_Y43_N38
\s64[3][28]~187\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][28]~187_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~20_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~1_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~20_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~2_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~21_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~20_combout\ & ( (\s64[2][0]~1_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~20_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~2_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~2_combout\,
	datab => \ALT_INV_s64[2][0]~1_combout\,
	datac => \ALT_INV_s64[2][0]~21_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~20_combout\,
	combout => \s64[3][28]~187_combout\);

-- Location: LABCELL_X43_Y43_N26
\s64[3][20]~189\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][20]~189_combout\ = ( \s64[2][0]~6_combout\ & ( \s64[2][0]~7_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][0]~3_combout\))) # (\B[2]~input_o\ & (((\Equal0~0_combout\) # (\s64[2][0]~0_combout\)))) ) ) ) # ( 
-- !\s64[2][0]~6_combout\ & ( \s64[2][0]~7_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][0]~3_combout\))) # (\B[2]~input_o\ & (((\s64[2][0]~0_combout\ & !\Equal0~0_combout\)))) ) ) ) # ( \s64[2][0]~6_combout\ & ( !\s64[2][0]~7_combout\ 
-- & ( (!\B[2]~input_o\ & (\s64[2][0]~3_combout\ & ((\Equal0~0_combout\)))) # (\B[2]~input_o\ & (((\Equal0~0_combout\) # (\s64[2][0]~0_combout\)))) ) ) ) # ( !\s64[2][0]~6_combout\ & ( !\s64[2][0]~7_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~3_combout\ & 
-- ((\Equal0~0_combout\)))) # (\B[2]~input_o\ & (((\s64[2][0]~0_combout\ & !\Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~3_combout\,
	datab => \ALT_INV_s64[2][0]~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[2][0]~6_combout\,
	dataf => \ALT_INV_s64[2][0]~7_combout\,
	combout => \s64[3][20]~189_combout\);

-- Location: MLABCELL_X44_Y43_N12
\s64[4][20]~190\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][20]~190_combout\ = ( \s64[3][20]~189_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & (\s64[3][28]~187_combout\)) # (\Equal0~0_combout\ & ((\s64[3][12]~188_combout\)))) ) ) # ( !\s64[3][20]~189_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[3][28]~187_combout\)) # (\Equal0~0_combout\ & ((\s64[3][12]~188_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][28]~187_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][12]~188_combout\,
	dataf => \ALT_INV_s64[3][20]~189_combout\,
	combout => \s64[4][20]~190_combout\);

-- Location: MLABCELL_X44_Y49_N2
\s64[5][4]~193\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][4]~193_combout\ = ( \Equal0~0_combout\ & ( (\s64[4][4]~192_combout\ & !\B[4]~input_o\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][4]~192_combout\)) # (\B[4]~input_o\ & ((\s64[4][20]~190_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][4]~192_combout\,
	datac => \ALT_INV_s64[4][20]~190_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[5][4]~193_combout\);

-- Location: LABCELL_X43_Y45_N26
\fill32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill32~0_combout\ = ( \ShiftFN[1]~input_o\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \fill32~0_combout\);

-- Location: LABCELL_X43_Y43_N36
\s32[3][28]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][28]~6_combout\ = ( \B[2]~input_o\ & ( \fill32~0_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~1_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \fill32~0_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~2_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~21_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\fill32~0_combout\ & ( (\s64[2][0]~1_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\fill32~0_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~2_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~2_combout\,
	datab => \ALT_INV_s64[2][0]~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~21_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \s32[3][28]~6_combout\);

-- Location: LABCELL_X43_Y43_N16
\s32[4][20]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][20]~7_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][20]~189_combout\)) # (\B[3]~input_o\ & ((\s64[3][12]~188_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][20]~189_combout\)) # (\B[3]~input_o\ & 
-- ((\s32[3][28]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][20]~189_combout\,
	datab => \ALT_INV_s32[3][28]~6_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][12]~188_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s32[4][20]~7_combout\);

-- Location: MLABCELL_X44_Y49_N0
\Y~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = ( \s32[4][20]~7_combout\ & ( ((\s64[4][4]~192_combout\ & \Y~5_combout\)) # (\Y~2_combout\) ) ) # ( !\s32[4][20]~7_combout\ & ( (\s64[4][4]~192_combout\ & \Y~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][4]~192_combout\,
	datac => \ALT_INV_Y~2_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_s32[4][20]~7_combout\,
	combout => \Y~12_combout\);

-- Location: MLABCELL_X44_Y43_N28
\s64[3][60]~198\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][60]~198_combout\ = ( \s64[2][60]~46_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[2][56]~43_combout\))) ) ) # ( !\s64[2][60]~46_combout\ & ( (\B[2]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[2][56]~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101111111111000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][56]~43_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][60]~46_combout\,
	combout => \s64[3][60]~198_combout\);

-- Location: MLABCELL_X44_Y43_N30
\s64[3][52]~197\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][52]~197_combout\ = ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][56]~43_combout\)) # (\Equal0~0_combout\ & ((\s64[2][48]~36_combout\))) ) ) # ( !\B[2]~input_o\ & ( \s64[2][52]~39_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][56]~43_combout\,
	datac => \ALT_INV_s64[2][48]~36_combout\,
	datad => \ALT_INV_s64[2][52]~39_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][52]~197_combout\);

-- Location: MLABCELL_X44_Y43_N22
\s64[3][44]~195\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][44]~195_combout\ = ( \s64[2][48]~36_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[2][40]~28_combout\) ) ) ) # ( !\s64[2][48]~36_combout\ & ( \B[2]~input_o\ & ( (\s64[2][40]~28_combout\ & \Equal0~0_combout\) ) ) ) # ( 
-- \s64[2][48]~36_combout\ & ( !\B[2]~input_o\ & ( \s64[2][44]~31_combout\ ) ) ) # ( !\s64[2][48]~36_combout\ & ( !\B[2]~input_o\ & ( \s64[2][44]~31_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s64[2][40]~28_combout\,
	datac => \ALT_INV_s64[2][44]~31_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[2][48]~36_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][44]~195_combout\);

-- Location: MLABCELL_X44_Y43_N34
\s64[4][52]~199\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][52]~199_combout\ = ( \s64[3][44]~195_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][52]~197_combout\)))) # (\B[3]~input_o\ & (((\s64[3][60]~198_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[3][44]~195_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][52]~197_combout\)))) # (\B[3]~input_o\ & (!\Equal0~0_combout\ & (\s64[3][60]~198_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100010000011110010001000001111011101110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][60]~198_combout\,
	datac => \ALT_INV_s64[3][52]~197_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][44]~195_combout\,
	combout => \s64[4][52]~199_combout\);

-- Location: MLABCELL_X44_Y43_N36
\s64[3][36]~194\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][36]~194_combout\ = ( \s64[2][40]~28_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~20_combout\) ) ) ) # ( !\s64[2][40]~28_combout\ & ( \B[2]~input_o\ & ( (\Equal0~0_combout\ & \s64[2][0]~20_combout\) ) ) ) # ( 
-- \s64[2][40]~28_combout\ & ( !\B[2]~input_o\ & ( \s64[2][36]~24_combout\ ) ) ) # ( !\s64[2][40]~28_combout\ & ( !\B[2]~input_o\ & ( \s64[2][36]~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][36]~24_combout\,
	datac => \ALT_INV_s64[2][0]~20_combout\,
	datae => \ALT_INV_s64[2][40]~28_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][36]~194_combout\);

-- Location: MLABCELL_X44_Y43_N4
\s64[4][36]~196\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][36]~196_combout\ = ( \s64[3][28]~187_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][36]~194_combout\)))) # (\B[3]~input_o\ & (((\s64[3][44]~195_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[3][28]~187_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][36]~194_combout\)))) # (\B[3]~input_o\ & (!\Equal0~0_combout\ & ((\s64[3][44]~195_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001010001100110000101000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][36]~194_combout\,
	datac => \ALT_INV_s64[3][44]~195_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][28]~187_combout\,
	combout => \s64[4][36]~196_combout\);

-- Location: MLABCELL_X44_Y49_N4
\s64[5][36]~200\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][36]~200_combout\ = ( \s64[4][36]~196_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[4][52]~199_combout\))) # (\Equal0~0_combout\ & (\s64[4][20]~190_combout\))) ) ) # ( !\s64[4][36]~196_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[4][52]~199_combout\))) # (\Equal0~0_combout\ & (\s64[4][20]~190_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101111110001111110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[4][20]~190_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_s64[4][52]~199_combout\,
	dataf => \ALT_INV_s64[4][36]~196_combout\,
	combout => \s64[5][36]~200_combout\);

-- Location: MLABCELL_X44_Y49_N30
\Y~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = ( \s64[5][36]~200_combout\ & ( (((\Y~4_combout\ & \s64[5][4]~193_combout\)) # (\Y~12_combout\)) # (\Y~3_combout\) ) ) # ( !\s64[5][36]~200_combout\ & ( ((\Y~4_combout\ & \s64[5][4]~193_combout\)) # (\Y~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~3_combout\,
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_s64[5][4]~193_combout\,
	datad => \ALT_INV_Y~12_combout\,
	dataf => \ALT_INV_s64[5][36]~200_combout\,
	combout => \Y~13_combout\);

-- Location: MLABCELL_X46_Y46_N26
\s32[3][29]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][29]~8_combout\ = ( \fill32~0_combout\ & ( \s64[2][0]~324_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & ((\s64[2][0]~74_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~66_combout\))) ) ) ) # ( !\fill32~0_combout\ & ( \s64[2][0]~324_combout\ 
-- & ( (!\Equal0~0_combout\ & (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~74_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~66_combout\)))) ) ) ) # ( \fill32~0_combout\ & ( !\s64[2][0]~324_combout\ & ( (!\Equal0~0_combout\ & 
-- (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~74_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~66_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( !\s64[2][0]~324_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- ((\s64[2][0]~74_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~66_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~66_combout\,
	datac => \ALT_INV_s64[2][0]~74_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[2][0]~324_combout\,
	combout => \s32[3][29]~8_combout\);

-- Location: MLABCELL_X46_Y46_N14
\s64[3][21]~203\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][21]~203_combout\ = ( \s64[2][0]~62_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~65_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~61_combout\)) ) ) ) # ( !\s64[2][0]~62_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((\s64[2][0]~65_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~61_combout\)) ) ) ) # ( \s64[2][0]~62_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~67_combout\) ) ) ) # ( !\s64[2][0]~62_combout\ & ( !\B[2]~input_o\ & ( 
-- (\Equal0~0_combout\ & \s64[2][0]~67_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~61_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~67_combout\,
	datad => \ALT_INV_s64[2][0]~65_combout\,
	datae => \ALT_INV_s64[2][0]~62_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][21]~203_combout\);

-- Location: MLABCELL_X46_Y46_N30
\s64[3][13]~202\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][13]~202_combout\ = ( \s64[2][0]~56_combout\ & ( \B[2]~input_o\ & ( (\s64[2][0]~60_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\s64[2][0]~56_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & \s64[2][0]~60_combout\) ) ) ) # ( 
-- \s64[2][0]~56_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~57_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~63_combout\))) ) ) ) # ( !\s64[2][0]~56_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~57_combout\)) 
-- # (\Equal0~0_combout\ & ((\s64[2][0]~63_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~57_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~60_combout\,
	datad => \ALT_INV_s64[2][0]~63_combout\,
	datae => \ALT_INV_s64[2][0]~56_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][13]~202_combout\);

-- Location: LABCELL_X45_Y46_N20
\s32[4][21]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][21]~9_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s32[3][29]~8_combout\)) # (\Equal0~0_combout\ & ((\s64[3][13]~202_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][21]~203_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[3][29]~8_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][21]~203_combout\,
	datad => \ALT_INV_s64[3][13]~202_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s32[4][21]~9_combout\);

-- Location: MLABCELL_X46_Y46_N18
\s64[3][5]~205\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][5]~205_combout\ = ( \s64[2][0]~105_combout\ & ( \B[2]~input_o\ & ( (\Equal0~0_combout\) # (\s64[2][0]~55_combout\) ) ) ) # ( !\s64[2][0]~105_combout\ & ( \B[2]~input_o\ & ( (\s64[2][0]~55_combout\ & !\Equal0~0_combout\) ) ) ) # ( 
-- \s64[2][0]~105_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~103_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~58_combout\)) ) ) ) # ( !\s64[2][0]~105_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((\s64[2][0]~103_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~58_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~58_combout\,
	datab => \ALT_INV_s64[2][0]~55_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~103_combout\,
	datae => \ALT_INV_s64[2][0]~105_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][5]~205_combout\);

-- Location: LABCELL_X45_Y46_N24
\s64[4][5]~206\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][5]~206_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & \s64[3][13]~202_combout\) ) ) # ( !\B[3]~input_o\ & ( \s64[3][5]~205_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][5]~205_combout\,
	datad => \ALT_INV_s64[3][13]~202_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][5]~206_combout\);

-- Location: MLABCELL_X44_Y48_N4
\Y~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = ( \Y~5_combout\ & ( ((\s32[4][21]~9_combout\ & \Y~2_combout\)) # (\s64[4][5]~206_combout\) ) ) # ( !\Y~5_combout\ & ( (\s32[4][21]~9_combout\ & \Y~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[4][21]~9_combout\,
	datab => \ALT_INV_s64[4][5]~206_combout\,
	datad => \ALT_INV_Y~2_combout\,
	dataf => \ALT_INV_Y~5_combout\,
	combout => \Y~14_combout\);

-- Location: MLABCELL_X46_Y46_N22
\s64[3][45]~209\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][45]~209_combout\ = ( \s64[2][41]~81_combout\ & ( (!\B[2]~input_o\ & (\s64[2][45]~84_combout\)) # (\B[2]~input_o\ & (((\s64[2][49]~89_combout\) # (\Equal0~0_combout\)))) ) ) # ( !\s64[2][41]~81_combout\ & ( (!\B[2]~input_o\ & 
-- (\s64[2][45]~84_combout\)) # (\B[2]~input_o\ & (((!\Equal0~0_combout\ & \s64[2][49]~89_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_s64[2][45]~84_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][49]~89_combout\,
	dataf => \ALT_INV_s64[2][41]~81_combout\,
	combout => \s64[3][45]~209_combout\);

-- Location: MLABCELL_X49_Y44_N14
\s64[3][53]~211\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][53]~211_combout\ = ( \s64[2][49]~89_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][53]~92_combout\)))) # (\B[2]~input_o\ & (((\s64[2][57]~96_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][49]~89_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][53]~92_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][57]~96_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100010000011110010001000001111011101110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][57]~96_combout\,
	datac => \ALT_INV_s64[2][53]~92_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][49]~89_combout\,
	combout => \s64[3][53]~211_combout\);

-- Location: MLABCELL_X49_Y44_N12
\s64[3][61]~212\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][61]~212_combout\ = ( \s64[2][61]~99_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[2][57]~96_combout\))) ) ) # ( !\s64[2][61]~99_combout\ & ( (\B[2]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[2][57]~96_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101111111111000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][57]~96_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][61]~99_combout\,
	combout => \s64[3][61]~212_combout\);

-- Location: LABCELL_X45_Y46_N34
\s64[4][53]~213\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][53]~213_combout\ = ( \s64[3][61]~212_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][53]~211_combout\)))) # (\B[3]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[3][45]~209_combout\))) ) ) # ( !\s64[3][61]~212_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][53]~211_combout\)))) # (\B[3]~input_o\ & (\s64[3][45]~209_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100001101111111010000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][45]~209_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][53]~211_combout\,
	dataf => \ALT_INV_s64[3][61]~212_combout\,
	combout => \s64[4][53]~213_combout\);

-- Location: MLABCELL_X46_Y46_N24
\s64[3][29]~201\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][29]~201_combout\ = ( \s64[2][0]~73_combout\ & ( \s64[2][0]~68_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & ((\s64[2][0]~74_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~66_combout\))) ) ) ) # ( !\s64[2][0]~73_combout\ & ( 
-- \s64[2][0]~68_combout\ & ( (!\Equal0~0_combout\ & (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~74_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~66_combout\)))) ) ) ) # ( \s64[2][0]~73_combout\ & ( !\s64[2][0]~68_combout\ & 
-- ( (!\Equal0~0_combout\ & (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~74_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~66_combout\)))) ) ) ) # ( !\s64[2][0]~73_combout\ & ( !\s64[2][0]~68_combout\ & ( (\Equal0~0_combout\ & 
-- ((!\B[2]~input_o\ & ((\s64[2][0]~74_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~66_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~66_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_s64[2][0]~74_combout\,
	datae => \ALT_INV_s64[2][0]~73_combout\,
	dataf => \ALT_INV_s64[2][0]~68_combout\,
	combout => \s64[3][29]~201_combout\);

-- Location: LABCELL_X45_Y46_N2
\s64[4][21]~204\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][21]~204_combout\ = ( \s64[3][29]~201_combout\ & ( \B[3]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[3][13]~202_combout\) ) ) ) # ( !\s64[3][29]~201_combout\ & ( \B[3]~input_o\ & ( (\Equal0~0_combout\ & \s64[3][13]~202_combout\) ) ) ) # ( 
-- \s64[3][29]~201_combout\ & ( !\B[3]~input_o\ & ( \s64[3][21]~203_combout\ ) ) ) # ( !\s64[3][29]~201_combout\ & ( !\B[3]~input_o\ & ( \s64[3][21]~203_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][13]~202_combout\,
	datad => \ALT_INV_s64[3][21]~203_combout\,
	datae => \ALT_INV_s64[3][29]~201_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][21]~204_combout\);

-- Location: MLABCELL_X46_Y46_N36
\s64[3][37]~208\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][37]~208_combout\ = ( \Equal0~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][37]~77_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][37]~77_combout\)) # (\B[2]~input_o\ & 
-- ((\s64[2][41]~81_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_s64[2][37]~77_combout\,
	datac => \ALT_INV_s64[2][41]~81_combout\,
	datad => \ALT_INV_s64[2][0]~73_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[3][37]~208_combout\);

-- Location: LABCELL_X45_Y46_N28
\s64[4][37]~210\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][37]~210_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][45]~209_combout\))) # (\Equal0~0_combout\ & (\s64[3][29]~201_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][37]~208_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][37]~208_combout\,
	datab => \ALT_INV_s64[3][29]~201_combout\,
	datac => \ALT_INV_s64[3][45]~209_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][37]~210_combout\);

-- Location: LABCELL_X45_Y46_N36
\s64[5][37]~214\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][37]~214_combout\ = ( \s64[4][37]~210_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & (\s64[4][53]~213_combout\)) # (\Equal0~0_combout\ & ((\s64[4][21]~204_combout\)))) ) ) # ( !\s64[4][37]~210_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[4][53]~213_combout\)) # (\Equal0~0_combout\ & ((\s64[4][21]~204_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][53]~213_combout\,
	datac => \ALT_INV_s64[4][21]~204_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][37]~210_combout\,
	combout => \s64[5][37]~214_combout\);

-- Location: MLABCELL_X44_Y48_N2
\s64[5][5]~207\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][5]~207_combout\ = ( \s64[4][21]~204_combout\ & ( (!\B[4]~input_o\ & ((\s64[4][5]~206_combout\))) # (\B[4]~input_o\ & (!\Equal0~0_combout\)) ) ) # ( !\s64[4][21]~204_combout\ & ( (\s64[4][5]~206_combout\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][5]~206_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][21]~204_combout\,
	combout => \s64[5][5]~207_combout\);

-- Location: MLABCELL_X44_Y48_N8
\Y~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = ( \s64[5][5]~207_combout\ & ( (((\Y~3_combout\ & \s64[5][37]~214_combout\)) # (\Y~14_combout\)) # (\Y~4_combout\) ) ) # ( !\s64[5][5]~207_combout\ & ( ((\Y~3_combout\ & \s64[5][37]~214_combout\)) # (\Y~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~3_combout\,
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_Y~14_combout\,
	datad => \ALT_INV_s64[5][37]~214_combout\,
	dataf => \ALT_INV_s64[5][5]~207_combout\,
	combout => \Y~15_combout\);

-- Location: MLABCELL_X46_Y43_N12
\s64[3][14]~216\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][14]~216_combout\ = ( \Equal0~0_combout\ & ( \B[2]~input_o\ & ( \s64[2][0]~115_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[2]~input_o\ & ( \s64[2][0]~119_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[2]~input_o\ & ( \s64[2][0]~122_combout\ ) ) ) 
-- # ( !\Equal0~0_combout\ & ( !\B[2]~input_o\ & ( \s64[2][0]~116_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~116_combout\,
	datab => \ALT_INV_s64[2][0]~115_combout\,
	datac => \ALT_INV_s64[2][0]~122_combout\,
	datad => \ALT_INV_s64[2][0]~119_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][14]~216_combout\);

-- Location: MLABCELL_X44_Y43_N16
\s64[3][6]~219\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][6]~219_combout\ = ( \s64[2][0]~117_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~114_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~127_combout\))) ) ) ) # ( !\s64[2][0]~117_combout\ & ( \B[2]~input_o\ & ( 
-- (!\Equal0~0_combout\ & (\s64[2][0]~114_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~127_combout\))) ) ) ) # ( \s64[2][0]~117_combout\ & ( !\B[2]~input_o\ & ( (\s64[2][0]~125_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\s64[2][0]~117_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & \s64[2][0]~125_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~125_combout\,
	datac => \ALT_INV_s64[2][0]~114_combout\,
	datad => \ALT_INV_s64[2][0]~127_combout\,
	datae => \ALT_INV_s64[2][0]~117_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][6]~219_combout\);

-- Location: LABCELL_X45_Y49_N8
\s64[4][6]~220\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][6]~220_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & \s64[3][6]~219_combout\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][6]~219_combout\))) # (\B[3]~input_o\ & (\s64[3][14]~216_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s64[3][14]~216_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][6]~219_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][6]~220_combout\);

-- Location: MLABCELL_X46_Y43_N28
\s32[3][30]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][30]~10_combout\ = ( \fill32~0_combout\ & ( \s64[2][0]~147_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~132_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~110_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( 
-- \s64[2][0]~147_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][0]~132_combout\))) # (\B[2]~input_o\ & (((\s64[2][0]~110_combout\ & \Equal0~0_combout\)))) ) ) ) # ( \fill32~0_combout\ & ( !\s64[2][0]~147_combout\ & ( (!\B[2]~input_o\ & 
-- (\s64[2][0]~132_combout\ & ((\Equal0~0_combout\)))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~110_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( !\s64[2][0]~147_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- (\s64[2][0]~132_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~110_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_s64[2][0]~132_combout\,
	datac => \ALT_INV_s64[2][0]~110_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[2][0]~147_combout\,
	combout => \s32[3][30]~10_combout\);

-- Location: MLABCELL_X46_Y43_N18
\s64[3][22]~217\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][22]~217_combout\ = ( \s64[2][0]~109_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~120_combout\) ) ) ) # ( !\s64[2][0]~109_combout\ & ( \B[2]~input_o\ & ( (\Equal0~0_combout\ & \s64[2][0]~120_combout\) ) ) ) # ( 
-- \s64[2][0]~109_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~121_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~112_combout\)) ) ) ) # ( !\s64[2][0]~109_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((\s64[2][0]~121_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~112_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~112_combout\,
	datab => \ALT_INV_s64[2][0]~121_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~120_combout\,
	datae => \ALT_INV_s64[2][0]~109_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][22]~217_combout\);

-- Location: LABCELL_X45_Y49_N0
\s32[4][22]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][22]~11_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][22]~217_combout\)) # (\B[3]~input_o\ & ((\s64[3][14]~216_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][22]~217_combout\))) # (\B[3]~input_o\ & 
-- (\s32[3][30]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s32[3][30]~10_combout\,
	datac => \ALT_INV_s64[3][22]~217_combout\,
	datad => \ALT_INV_s64[3][14]~216_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s32[4][22]~11_combout\);

-- Location: MLABCELL_X42_Y49_N36
\Y~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = ( \Y~2_combout\ & ( ((\s64[4][6]~220_combout\ & \Y~5_combout\)) # (\s32[4][22]~11_combout\) ) ) # ( !\Y~2_combout\ & ( (\s64[4][6]~220_combout\ & \Y~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][6]~220_combout\,
	datab => \ALT_INV_s32[4][22]~11_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_Y~2_combout\,
	combout => \Y~16_combout\);

-- Location: MLABCELL_X46_Y43_N30
\s64[3][30]~215\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][30]~215_combout\ = ( \s64[2][34]~131_combout\ & ( \s64[2][0]~111_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~132_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~110_combout\)))) ) ) ) # ( !\s64[2][34]~131_combout\ & ( 
-- \s64[2][0]~111_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][0]~132_combout\))) # (\B[2]~input_o\ & (((\Equal0~0_combout\ & \s64[2][0]~110_combout\)))) ) ) ) # ( \s64[2][34]~131_combout\ & ( !\s64[2][0]~111_combout\ & ( 
-- (!\B[2]~input_o\ & (\s64[2][0]~132_combout\ & (\Equal0~0_combout\))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~110_combout\)))) ) ) ) # ( !\s64[2][34]~131_combout\ & ( !\s64[2][0]~111_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- (\s64[2][0]~132_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~110_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_s64[2][0]~132_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~110_combout\,
	datae => \ALT_INV_s64[2][34]~131_combout\,
	dataf => \ALT_INV_s64[2][0]~111_combout\,
	combout => \s64[3][30]~215_combout\);

-- Location: LABCELL_X45_Y49_N26
\s64[4][22]~218\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][22]~218_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][22]~217_combout\)) # (\B[3]~input_o\ & ((\s64[3][14]~216_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][22]~217_combout\))) # (\B[3]~input_o\ & 
-- (\s64[3][30]~215_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][30]~215_combout\,
	datac => \ALT_INV_s64[3][22]~217_combout\,
	datad => \ALT_INV_s64[3][14]~216_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][22]~218_combout\);

-- Location: MLABCELL_X42_Y49_N14
\s64[5][6]~221\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][6]~221_combout\ = (!\B[4]~input_o\ & (((\s64[4][6]~220_combout\)))) # (\B[4]~input_o\ & (!\Equal0~0_combout\ & (\s64[4][22]~218_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][22]~218_combout\,
	datad => \ALT_INV_s64[4][6]~220_combout\,
	combout => \s64[5][6]~221_combout\);

-- Location: LABCELL_X45_Y41_N38
\s64[3][62]~226\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][62]~226_combout\ = ( \fill64~0_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][62]~143_combout\)))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[2][58]~142_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][62]~143_combout\)))) # (\B[2]~input_o\ & (\Equal0~0_combout\ & (\s64[2][58]~142_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][58]~142_combout\,
	datad => \ALT_INV_s64[2][62]~143_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[3][62]~226_combout\);

-- Location: LABCELL_X45_Y41_N8
\s64[3][46]~223\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][46]~223_combout\ = ( \s64[2][42]~135_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][46]~136_combout\)))) # (\B[2]~input_o\ & (((\s64[2][50]~139_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][42]~135_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][46]~136_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][50]~139_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][46]~136_combout\,
	datad => \ALT_INV_s64[2][50]~139_combout\,
	dataf => \ALT_INV_s64[2][42]~135_combout\,
	combout => \s64[3][46]~223_combout\);

-- Location: LABCELL_X45_Y41_N36
\s64[3][54]~225\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][54]~225_combout\ = ( \s64[2][54]~140_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & (\s64[2][58]~142_combout\)) # (\Equal0~0_combout\ & ((\s64[2][50]~139_combout\)))) ) ) # ( !\s64[2][54]~140_combout\ & ( (\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[2][58]~142_combout\)) # (\Equal0~0_combout\ & ((\s64[2][50]~139_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][58]~142_combout\,
	datad => \ALT_INV_s64[2][50]~139_combout\,
	dataf => \ALT_INV_s64[2][54]~140_combout\,
	combout => \s64[3][54]~225_combout\);

-- Location: LABCELL_X45_Y49_N16
\s64[4][54]~227\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][54]~227_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][62]~226_combout\)) # (\Equal0~0_combout\ & ((\s64[3][46]~223_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][54]~225_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][62]~226_combout\,
	datac => \ALT_INV_s64[3][46]~223_combout\,
	datad => \ALT_INV_s64[3][54]~225_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][54]~227_combout\);

-- Location: MLABCELL_X46_Y43_N22
\s64[3][38]~222\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][38]~222_combout\ = ( \s64[2][42]~135_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][38]~133_combout\)))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][34]~131_combout\))) ) ) # ( !\s64[2][42]~135_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][38]~133_combout\)))) # (\B[2]~input_o\ & (\s64[2][34]~131_combout\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011111101010011001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][34]~131_combout\,
	datab => \ALT_INV_s64[2][38]~133_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][42]~135_combout\,
	combout => \s64[3][38]~222_combout\);

-- Location: LABCELL_X45_Y49_N34
\s64[4][38]~224\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][38]~224_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][38]~222_combout\)) # (\B[3]~input_o\ & ((\s64[3][30]~215_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][38]~222_combout\)) # (\B[3]~input_o\ & 
-- ((\s64[3][46]~223_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][38]~222_combout\,
	datac => \ALT_INV_s64[3][46]~223_combout\,
	datad => \ALT_INV_s64[3][30]~215_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][38]~224_combout\);

-- Location: MLABCELL_X42_Y49_N12
\s64[5][38]~228\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][38]~228_combout\ = ( \s64[4][38]~224_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & (\s64[4][54]~227_combout\)) # (\Equal0~0_combout\ & ((\s64[4][22]~218_combout\)))) ) ) # ( !\s64[4][38]~224_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[4][54]~227_combout\)) # (\Equal0~0_combout\ & ((\s64[4][22]~218_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][54]~227_combout\,
	datad => \ALT_INV_s64[4][22]~218_combout\,
	dataf => \ALT_INV_s64[4][38]~224_combout\,
	combout => \s64[5][38]~228_combout\);

-- Location: MLABCELL_X42_Y49_N4
\Y~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = ( \Y~3_combout\ & ( (((\Y~4_combout\ & \s64[5][6]~221_combout\)) # (\s64[5][38]~228_combout\)) # (\Y~16_combout\) ) ) # ( !\Y~3_combout\ & ( ((\Y~4_combout\ & \s64[5][6]~221_combout\)) # (\Y~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~4_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_s64[5][6]~221_combout\,
	datad => \ALT_INV_s64[5][38]~228_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~17_combout\);

-- Location: LABCELL_X47_Y44_N6
\s64[3][31]~229\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][31]~229_combout\ = ( \s64[2][35]~170_combout\ & ( \s64[2][0]~150_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~171_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~149_combout\)))) ) ) ) # ( !\s64[2][35]~170_combout\ & ( 
-- \s64[2][0]~150_combout\ & ( (!\Equal0~0_combout\ & (!\B[2]~input_o\)) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~171_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~149_combout\))))) ) ) ) # ( \s64[2][35]~170_combout\ & ( !\s64[2][0]~150_combout\ 
-- & ( (!\Equal0~0_combout\ & (\B[2]~input_o\)) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~171_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~149_combout\))))) ) ) ) # ( !\s64[2][35]~170_combout\ & ( !\s64[2][0]~150_combout\ & ( (\Equal0~0_combout\ 
-- & ((!\B[2]~input_o\ & (\s64[2][0]~171_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~149_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~171_combout\,
	datad => \ALT_INV_s64[2][0]~149_combout\,
	datae => \ALT_INV_s64[2][35]~170_combout\,
	dataf => \ALT_INV_s64[2][0]~150_combout\,
	combout => \s64[3][31]~229_combout\);

-- Location: LABCELL_X47_Y44_N34
\s64[3][23]~231\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][23]~231_combout\ = ( \s64[2][0]~159_combout\ & ( \s64[2][0]~160_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~151_combout\)))) # (\B[2]~input_o\ & (((\Equal0~0_combout\)) # (\s64[2][0]~148_combout\))) ) ) ) # ( 
-- !\s64[2][0]~159_combout\ & ( \s64[2][0]~160_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~151_combout\)))) # (\B[2]~input_o\ & (\s64[2][0]~148_combout\ & ((!\Equal0~0_combout\)))) ) ) ) # ( \s64[2][0]~159_combout\ & ( 
-- !\s64[2][0]~160_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][0]~151_combout\ & \Equal0~0_combout\)))) # (\B[2]~input_o\ & (((\Equal0~0_combout\)) # (\s64[2][0]~148_combout\))) ) ) ) # ( !\s64[2][0]~159_combout\ & ( !\s64[2][0]~160_combout\ & ( 
-- (!\B[2]~input_o\ & (((\s64[2][0]~151_combout\ & \Equal0~0_combout\)))) # (\B[2]~input_o\ & (\s64[2][0]~148_combout\ & ((!\Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~148_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~151_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[2][0]~159_combout\,
	dataf => \ALT_INV_s64[2][0]~160_combout\,
	combout => \s64[3][23]~231_combout\);

-- Location: LABCELL_X47_Y44_N30
\s64[3][15]~230\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][15]~230_combout\ = ( \s64[2][0]~155_combout\ & ( \s64[2][0]~154_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~161_combout\)))) # (\B[2]~input_o\ & (((\Equal0~0_combout\)) # (\s64[2][0]~158_combout\))) ) ) ) # ( 
-- !\s64[2][0]~155_combout\ & ( \s64[2][0]~154_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][0]~161_combout\ & \Equal0~0_combout\)))) # (\B[2]~input_o\ & (((\Equal0~0_combout\)) # (\s64[2][0]~158_combout\))) ) ) ) # ( \s64[2][0]~155_combout\ & ( 
-- !\s64[2][0]~154_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~161_combout\)))) # (\B[2]~input_o\ & (\s64[2][0]~158_combout\ & ((!\Equal0~0_combout\)))) ) ) ) # ( !\s64[2][0]~155_combout\ & ( !\s64[2][0]~154_combout\ & ( 
-- (!\B[2]~input_o\ & (((\s64[2][0]~161_combout\ & \Equal0~0_combout\)))) # (\B[2]~input_o\ & (\s64[2][0]~158_combout\ & ((!\Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~158_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~161_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[2][0]~155_combout\,
	dataf => \ALT_INV_s64[2][0]~154_combout\,
	combout => \s64[3][15]~230_combout\);

-- Location: LABCELL_X45_Y48_N6
\s64[4][23]~232\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][23]~232_combout\ = ( \s64[3][15]~230_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][23]~231_combout\)))) # (\B[3]~input_o\ & (((\Equal0~0_combout\)) # (\s64[3][31]~229_combout\))) ) ) # ( !\s64[3][15]~230_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][23]~231_combout\)))) # (\B[3]~input_o\ & (\s64[3][31]~229_combout\ & (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][31]~229_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][23]~231_combout\,
	dataf => \ALT_INV_s64[3][15]~230_combout\,
	combout => \s64[4][23]~232_combout\);

-- Location: LABCELL_X47_Y44_N18
\s64[3][7]~233\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][7]~233_combout\ = ( \Equal0~0_combout\ & ( \s64[2][0]~164_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][0]~156_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~166_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( \s64[2][0]~164_combout\ & ( (!\B[2]~input_o\) # 
-- (\s64[2][0]~153_combout\) ) ) ) # ( \Equal0~0_combout\ & ( !\s64[2][0]~164_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][0]~156_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~166_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\s64[2][0]~164_combout\ & ( 
-- (\s64[2][0]~153_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~153_combout\,
	datab => \ALT_INV_s64[2][0]~166_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_s64[2][0]~156_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][0]~164_combout\,
	combout => \s64[3][7]~233_combout\);

-- Location: LABCELL_X45_Y48_N30
\s64[4][7]~234\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][7]~234_combout\ = ( \B[3]~input_o\ & ( (\s64[3][15]~230_combout\ & !\Equal0~0_combout\) ) ) # ( !\B[3]~input_o\ & ( \s64[3][7]~233_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][15]~230_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[3][7]~233_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][7]~234_combout\);

-- Location: LABCELL_X45_Y48_N14
\s64[5][7]~235\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][7]~235_combout\ = ( \B[4]~input_o\ & ( (\s64[4][23]~232_combout\ & !\Equal0~0_combout\) ) ) # ( !\B[4]~input_o\ & ( \s64[4][7]~234_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s64[4][23]~232_combout\,
	datac => \ALT_INV_s64[4][7]~234_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \s64[5][7]~235_combout\);

-- Location: LABCELL_X47_Y44_N4
\s32[3][31]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][31]~12_combout\ = ( \fill32~0_combout\ & ( \s64[2][0]~186_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & ((\s64[2][0]~171_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~149_combout\))) ) ) ) # ( !\fill32~0_combout\ & ( 
-- \s64[2][0]~186_combout\ & ( (!\Equal0~0_combout\ & (!\B[2]~input_o\)) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~171_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~149_combout\)))) ) ) ) # ( \fill32~0_combout\ & ( !\s64[2][0]~186_combout\ & ( 
-- (!\Equal0~0_combout\ & (\B[2]~input_o\)) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~171_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~149_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( !\s64[2][0]~186_combout\ & ( (\Equal0~0_combout\ & 
-- ((!\B[2]~input_o\ & ((\s64[2][0]~171_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~149_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~149_combout\,
	datad => \ALT_INV_s64[2][0]~171_combout\,
	datae => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[2][0]~186_combout\,
	combout => \s32[3][31]~12_combout\);

-- Location: LABCELL_X45_Y48_N24
\s32[4][23]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][23]~13_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s32[3][31]~12_combout\))) # (\Equal0~0_combout\ & (\s64[3][15]~230_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][23]~231_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][23]~231_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][15]~230_combout\,
	datad => \ALT_INV_s32[3][31]~12_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s32[4][23]~13_combout\);

-- Location: LABCELL_X45_Y48_N10
\Y~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = (!\s32[4][23]~13_combout\ & (\s64[4][7]~234_combout\ & ((\Y~5_combout\)))) # (\s32[4][23]~13_combout\ & (((\s64[4][7]~234_combout\ & \Y~5_combout\)) # (\Y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[4][23]~13_combout\,
	datab => \ALT_INV_s64[4][7]~234_combout\,
	datac => \ALT_INV_Y~2_combout\,
	datad => \ALT_INV_Y~5_combout\,
	combout => \Y~18_combout\);

-- Location: MLABCELL_X49_Y44_N18
\s64[3][55]~239\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][55]~239_combout\ = ( \s64[2][55]~179_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[2][59]~181_combout\))) # (\Equal0~0_combout\ & (\s64[2][51]~178_combout\))) ) ) # ( !\s64[2][55]~179_combout\ & ( (\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[2][59]~181_combout\))) # (\Equal0~0_combout\ & (\s64[2][51]~178_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][51]~178_combout\,
	datad => \ALT_INV_s64[2][59]~181_combout\,
	dataf => \ALT_INV_s64[2][55]~179_combout\,
	combout => \s64[3][55]~239_combout\);

-- Location: MLABCELL_X49_Y44_N16
\s64[3][63]~240\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][63]~240_combout\ = ( \s64[2][63]~182_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[2][59]~181_combout\))) ) ) # ( !\s64[2][63]~182_combout\ & ( (\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[2][59]~181_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][59]~181_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_s64[2][63]~182_combout\,
	combout => \s64[3][63]~240_combout\);

-- Location: MLABCELL_X49_Y44_N4
\s64[3][47]~237\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][47]~237_combout\ = ( \s64[2][47]~175_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[2][51]~178_combout\))) # (\Equal0~0_combout\ & (\s64[2][43]~174_combout\))) ) ) # ( !\s64[2][47]~175_combout\ & ( (\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[2][51]~178_combout\))) # (\Equal0~0_combout\ & (\s64[2][43]~174_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][43]~174_combout\,
	datad => \ALT_INV_s64[2][51]~178_combout\,
	dataf => \ALT_INV_s64[2][47]~175_combout\,
	combout => \s64[3][47]~237_combout\);

-- Location: LABCELL_X45_Y48_N18
\s64[4][55]~241\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][55]~241_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][63]~240_combout\)) # (\Equal0~0_combout\ & ((\s64[3][47]~237_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][55]~239_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][55]~239_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][63]~240_combout\,
	datad => \ALT_INV_s64[3][47]~237_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][55]~241_combout\);

-- Location: LABCELL_X47_Y44_N38
\s64[3][39]~236\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][39]~236_combout\ = ( \s64[2][43]~174_combout\ & ( (!\B[2]~input_o\ & (\s64[2][39]~172_combout\)) # (\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][35]~170_combout\)))) ) ) # ( !\s64[2][43]~174_combout\ & ( (!\B[2]~input_o\ & 
-- (\s64[2][39]~172_combout\)) # (\B[2]~input_o\ & (((\Equal0~0_combout\ & \s64[2][35]~170_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][39]~172_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][35]~170_combout\,
	dataf => \ALT_INV_s64[2][43]~174_combout\,
	combout => \s64[3][39]~236_combout\);

-- Location: LABCELL_X45_Y48_N4
\s64[4][39]~238\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][39]~238_combout\ = ( \s64[3][39]~236_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[3][47]~237_combout\))) # (\Equal0~0_combout\ & (\s64[3][31]~229_combout\))) ) ) # ( !\s64[3][39]~236_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[3][47]~237_combout\))) # (\Equal0~0_combout\ & (\s64[3][31]~229_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][31]~229_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][47]~237_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][39]~236_combout\,
	combout => \s64[4][39]~238_combout\);

-- Location: LABCELL_X45_Y48_N2
\s64[5][39]~242\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][39]~242_combout\ = ( \s64[4][23]~232_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][39]~238_combout\)))) # (\B[4]~input_o\ & (((\Equal0~0_combout\)) # (\s64[4][55]~241_combout\))) ) ) # ( !\s64[4][23]~232_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][39]~238_combout\)))) # (\B[4]~input_o\ & (\s64[4][55]~241_combout\ & (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011100000100001101110000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][55]~241_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[4][39]~238_combout\,
	dataf => \ALT_INV_s64[4][23]~232_combout\,
	combout => \s64[5][39]~242_combout\);

-- Location: LABCELL_X45_Y48_N22
\Y~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = ( \s64[5][39]~242_combout\ & ( (((\Y~4_combout\ & \s64[5][7]~235_combout\)) # (\Y~18_combout\)) # (\Y~3_combout\) ) ) # ( !\s64[5][39]~242_combout\ & ( ((\Y~4_combout\ & \s64[5][7]~235_combout\)) # (\Y~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~4_combout\,
	datab => \ALT_INV_Y~3_combout\,
	datac => \ALT_INV_s64[5][7]~235_combout\,
	datad => \ALT_INV_Y~18_combout\,
	dataf => \ALT_INV_s64[5][39]~242_combout\,
	combout => \Y~19_combout\);

-- Location: LABCELL_X43_Y45_N28
\s64[4][56]~245\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][56]~245_combout\ = ( \s64[3][56]~47_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][48]~40_combout\)))) ) ) # ( !\s64[3][56]~47_combout\ & ( (\B[3]~input_o\ & ((!\Equal0~0_combout\ & 
-- (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][48]~40_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][48]~40_combout\,
	dataf => \ALT_INV_s64[3][56]~47_combout\,
	combout => \s64[4][56]~245_combout\);

-- Location: LABCELL_X43_Y45_N4
\s64[4][24]~243\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][24]~243_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][32]~25_combout\))) # (\Equal0~0_combout\ & (\s64[3][16]~9_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][24]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][24]~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][16]~9_combout\,
	datad => \ALT_INV_s64[3][32]~25_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][24]~243_combout\);

-- Location: LABCELL_X43_Y45_N8
\s64[4][40]~244\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][40]~244_combout\ = ( \s64[3][32]~25_combout\ & ( (!\B[3]~input_o\ & (\s64[3][40]~32_combout\)) # (\B[3]~input_o\ & (((\Equal0~0_combout\) # (\s64[3][48]~40_combout\)))) ) ) # ( !\s64[3][32]~25_combout\ & ( (!\B[3]~input_o\ & 
-- (\s64[3][40]~32_combout\)) # (\B[3]~input_o\ & (((\s64[3][48]~40_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][40]~32_combout\,
	datac => \ALT_INV_s64[3][48]~40_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][32]~25_combout\,
	combout => \s64[4][40]~244_combout\);

-- Location: MLABCELL_X42_Y48_N26
\s64[5][40]~246\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][40]~246_combout\ = ( \s64[4][40]~244_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & (\s64[4][56]~245_combout\)) # (\Equal0~0_combout\ & ((\s64[4][24]~243_combout\)))) ) ) # ( !\s64[4][40]~244_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[4][56]~245_combout\)) # (\Equal0~0_combout\ & ((\s64[4][24]~243_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][56]~245_combout\,
	datac => \ALT_INV_s64[4][24]~243_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][40]~244_combout\,
	combout => \s64[5][40]~246_combout\);

-- Location: LABCELL_X43_Y45_N0
\s32[4][24]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][24]~14_combout\ = ( \fill32~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][24]~4_combout\)) # (\B[3]~input_o\ & (((!\Equal0~0_combout\) # (\s64[3][16]~9_combout\)))) ) ) # ( !\fill32~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][24]~4_combout\)) # 
-- (\B[3]~input_o\ & (((\Equal0~0_combout\ & \s64[3][16]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101110011110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][24]~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][16]~9_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \s32[4][24]~14_combout\);

-- Location: LABCELL_X43_Y45_N36
\s64[4][8]~247\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][8]~247_combout\ = ( \s64[3][8]~14_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[3][16]~9_combout\))) # (\Equal0~0_combout\ & (\s64[3][0]~53_combout\))) ) ) # ( !\s64[3][8]~14_combout\ & ( (\B[3]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\s64[3][16]~9_combout\))) # (\Equal0~0_combout\ & (\s64[3][0]~53_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][0]~53_combout\,
	datad => \ALT_INV_s64[3][16]~9_combout\,
	dataf => \ALT_INV_s64[3][8]~14_combout\,
	combout => \s64[4][8]~247_combout\);

-- Location: MLABCELL_X42_Y48_N10
\Y~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = ( \s64[4][24]~243_combout\ & ( \s64[4][8]~247_combout\ & ( (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((!\B[4]~input_o\) # (!\Equal0~0_combout\)))) # (\ExtWord~input_o\ & (!\B[4]~input_o\)) ) ) ) # ( !\s64[4][24]~243_combout\ & ( 
-- \s64[4][8]~247_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\))) ) ) ) # ( \s64[4][24]~243_combout\ & ( !\s64[4][8]~247_combout\ & ( (\B[4]~input_o\ & (!\Equal0~0_combout\ & (!\ExtWord~input_o\ & !\B[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000010101010000010101110101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_s64[4][24]~243_combout\,
	dataf => \ALT_INV_s64[4][8]~247_combout\,
	combout => \Y~20_combout\);

-- Location: LABCELL_X43_Y49_N6
\Y~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = ( \Y~3_combout\ & ( (((\Y~2_combout\ & \s32[4][24]~14_combout\)) # (\Y~20_combout\)) # (\s64[5][40]~246_combout\) ) ) # ( !\Y~3_combout\ & ( ((\Y~2_combout\ & \s32[4][24]~14_combout\)) # (\Y~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~2_combout\,
	datab => \ALT_INV_s64[5][40]~246_combout\,
	datac => \ALT_INV_s32[4][24]~14_combout\,
	datad => \ALT_INV_Y~20_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~21_combout\);

-- Location: MLABCELL_X42_Y46_N28
\s64[4][41]~249\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][41]~249_combout\ = ( \s64[3][49]~93_combout\ & ( (!\B[3]~input_o\ & (\s64[3][41]~85_combout\)) # (\B[3]~input_o\ & (((!\Equal0~0_combout\) # (\s64[3][33]~78_combout\)))) ) ) # ( !\s64[3][49]~93_combout\ & ( (!\B[3]~input_o\ & 
-- (\s64[3][41]~85_combout\)) # (\B[3]~input_o\ & (((\s64[3][33]~78_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010100000101001101011111010100110101111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][41]~85_combout\,
	datab => \ALT_INV_s64[3][33]~78_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][49]~93_combout\,
	combout => \s64[4][41]~249_combout\);

-- Location: MLABCELL_X42_Y46_N14
\s64[4][57]~250\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][57]~250_combout\ = ( \s64[3][57]~100_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][49]~93_combout\))) ) ) # ( !\s64[3][57]~100_combout\ & ( (\B[3]~input_o\ & ((!\Equal0~0_combout\ 
-- & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][49]~93_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][49]~93_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][57]~100_combout\,
	combout => \s64[4][57]~250_combout\);

-- Location: MLABCELL_X42_Y46_N26
\s64[4][25]~248\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][25]~248_combout\ = ( \s64[3][25]~69_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[3][33]~78_combout\))) # (\Equal0~0_combout\ & (\s64[3][17]~64_combout\))) ) ) # ( !\s64[3][25]~69_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[3][33]~78_combout\))) # (\Equal0~0_combout\ & (\s64[3][17]~64_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][17]~64_combout\,
	datac => \ALT_INV_s64[3][33]~78_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][25]~69_combout\,
	combout => \s64[4][25]~248_combout\);

-- Location: MLABCELL_X42_Y46_N2
\s64[5][41]~251\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][41]~251_combout\ = ( \s64[4][25]~248_combout\ & ( (!\B[4]~input_o\ & (\s64[4][41]~249_combout\)) # (\B[4]~input_o\ & (((\Equal0~0_combout\) # (\s64[4][57]~250_combout\)))) ) ) # ( !\s64[4][25]~248_combout\ & ( (!\B[4]~input_o\ & 
-- (\s64[4][41]~249_combout\)) # (\B[4]~input_o\ & (((\s64[4][57]~250_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110000010101010011000001010101001111110101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][41]~249_combout\,
	datab => \ALT_INV_s64[4][57]~250_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][25]~248_combout\,
	combout => \s64[5][41]~251_combout\);

-- Location: MLABCELL_X42_Y46_N36
\s64[4][9]~252\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][9]~252_combout\ = ( \s64[3][17]~64_combout\ & ( (!\B[3]~input_o\ & (\s64[3][9]~59_combout\)) # (\B[3]~input_o\ & (((!\Equal0~0_combout\) # (\s64[3][1]~106_combout\)))) ) ) # ( !\s64[3][17]~64_combout\ & ( (!\B[3]~input_o\ & 
-- (\s64[3][9]~59_combout\)) # (\B[3]~input_o\ & (((\s64[3][1]~106_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011101110111001001110111011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][9]~59_combout\,
	datac => \ALT_INV_s64[3][1]~106_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][17]~64_combout\,
	combout => \s64[4][9]~252_combout\);

-- Location: MLABCELL_X42_Y48_N8
\Y~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = ( \s64[4][25]~248_combout\ & ( \s64[4][9]~252_combout\ & ( (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((!\B[4]~input_o\) # (!\Equal0~0_combout\)))) # (\ExtWord~input_o\ & (!\B[4]~input_o\)) ) ) ) # ( !\s64[4][25]~248_combout\ & ( 
-- \s64[4][9]~252_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\))) ) ) ) # ( \s64[4][25]~248_combout\ & ( !\s64[4][9]~252_combout\ & ( (\B[4]~input_o\ & (!\Equal0~0_combout\ & (!\B[5]~input_o\ & !\ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000010100000101010101110000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_s64[4][25]~248_combout\,
	dataf => \ALT_INV_s64[4][9]~252_combout\,
	combout => \Y~22_combout\);

-- Location: MLABCELL_X42_Y46_N22
\s32[4][25]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][25]~15_combout\ = ( \s32[3][25]~0_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\fill32~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][17]~64_combout\))) ) ) # ( !\s32[3][25]~0_combout\ & ( (\B[3]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\fill32~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][17]~64_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000110101011111110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][17]~64_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s32[3][25]~0_combout\,
	combout => \s32[4][25]~15_combout\);

-- Location: LABCELL_X43_Y48_N8
\Y~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = ( \s32[4][25]~15_combout\ & ( (((\s64[5][41]~251_combout\ & \Y~3_combout\)) # (\Y~22_combout\)) # (\Y~2_combout\) ) ) # ( !\s32[4][25]~15_combout\ & ( ((\s64[5][41]~251_combout\ & \Y~3_combout\)) # (\Y~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[5][41]~251_combout\,
	datab => \ALT_INV_Y~2_combout\,
	datac => \ALT_INV_Y~3_combout\,
	datad => \ALT_INV_Y~22_combout\,
	dataf => \ALT_INV_s32[4][25]~15_combout\,
	combout => \Y~23_combout\);

-- Location: MLABCELL_X44_Y45_N34
\s64[4][58]~257\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][58]~257_combout\ = ( \fill64~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][58]~144_combout\)) # (\B[3]~input_o\ & (((!\Equal0~0_combout\) # (\s64[3][50]~141_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][58]~144_combout\)) # 
-- (\B[3]~input_o\ & (((\Equal0~0_combout\ & \s64[3][50]~141_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010100000101001101011100010111110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][58]~144_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][50]~141_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[4][58]~257_combout\);

-- Location: MLABCELL_X44_Y45_N26
\s64[4][42]~256\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][42]~256_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][42]~137_combout\))) # (\B[3]~input_o\ & (\s64[3][34]~134_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][42]~137_combout\)) # (\B[3]~input_o\ & 
-- ((\s64[3][50]~141_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][34]~134_combout\,
	datac => \ALT_INV_s64[3][42]~137_combout\,
	datad => \ALT_INV_s64[3][50]~141_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][42]~256_combout\);

-- Location: MLABCELL_X44_Y45_N24
\s64[4][26]~253\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][26]~253_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][26]~113_combout\)) # (\B[3]~input_o\ & ((\s64[3][18]~123_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][26]~113_combout\))) # (\B[3]~input_o\ & 
-- (\s64[3][34]~134_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][34]~134_combout\,
	datac => \ALT_INV_s64[3][26]~113_combout\,
	datad => \ALT_INV_s64[3][18]~123_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][26]~253_combout\);

-- Location: MLABCELL_X44_Y45_N10
\s64[5][42]~258\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][42]~258_combout\ = ( \s64[4][26]~253_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][42]~256_combout\)))) # (\B[4]~input_o\ & (((\s64[4][58]~257_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[4][26]~253_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][42]~256_combout\)))) # (\B[4]~input_o\ & (!\Equal0~0_combout\ & (\s64[4][58]~257_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][58]~257_combout\,
	datad => \ALT_INV_s64[4][42]~256_combout\,
	dataf => \ALT_INV_s64[4][26]~253_combout\,
	combout => \s64[5][42]~258_combout\);

-- Location: MLABCELL_X44_Y45_N4
\s64[4][10]~254\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][10]~254_combout\ = ( \s64[3][2]~128_combout\ & ( (!\B[3]~input_o\ & (\s64[3][10]~118_combout\)) # (\B[3]~input_o\ & (((\s64[3][18]~123_combout\) # (\Equal0~0_combout\)))) ) ) # ( !\s64[3][2]~128_combout\ & ( (!\B[3]~input_o\ & 
-- (\s64[3][10]~118_combout\)) # (\B[3]~input_o\ & (((!\Equal0~0_combout\ & \s64[3][18]~123_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][10]~118_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[3][18]~123_combout\,
	dataf => \ALT_INV_s64[3][2]~128_combout\,
	combout => \s64[4][10]~254_combout\);

-- Location: MLABCELL_X44_Y45_N22
\s32[4][26]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][26]~16_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\fill32~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][18]~123_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s32[3][26]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[3][26]~2_combout\,
	datab => \ALT_INV_s64[3][18]~123_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s32[4][26]~16_combout\);

-- Location: MLABCELL_X44_Y49_N12
\Y~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (!\s64[4][10]~254_combout\ & (\s32[4][26]~16_combout\ & (\Y~2_combout\))) # (\s64[4][10]~254_combout\ & (((\s32[4][26]~16_combout\ & \Y~2_combout\)) # (\Y~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][10]~254_combout\,
	datab => \ALT_INV_s32[4][26]~16_combout\,
	datac => \ALT_INV_Y~2_combout\,
	datad => \ALT_INV_Y~5_combout\,
	combout => \Y~24_combout\);

-- Location: MLABCELL_X44_Y49_N14
\s64[5][10]~255\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][10]~255_combout\ = ( \Equal0~0_combout\ & ( (\s64[4][10]~254_combout\ & !\B[4]~input_o\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][10]~254_combout\)) # (\B[4]~input_o\ & ((\s64[4][26]~253_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][10]~254_combout\,
	datac => \ALT_INV_s64[4][26]~253_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[5][10]~255_combout\);

-- Location: MLABCELL_X44_Y49_N28
\Y~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = ( \s64[5][10]~255_combout\ & ( (((\Y~3_combout\ & \s64[5][42]~258_combout\)) # (\Y~24_combout\)) # (\Y~4_combout\) ) ) # ( !\s64[5][10]~255_combout\ & ( ((\Y~3_combout\ & \s64[5][42]~258_combout\)) # (\Y~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~3_combout\,
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_s64[5][42]~258_combout\,
	datad => \ALT_INV_Y~24_combout\,
	dataf => \ALT_INV_s64[5][10]~255_combout\,
	combout => \Y~25_combout\);

-- Location: LABCELL_X43_Y48_N32
\s64[4][11]~260\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][11]~260_combout\ = ( \s64[3][11]~157_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & (\s64[3][19]~162_combout\)) # (\Equal0~0_combout\ & ((\s64[3][3]~167_combout\)))) ) ) # ( !\s64[3][11]~157_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[3][19]~162_combout\)) # (\Equal0~0_combout\ & ((\s64[3][3]~167_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][19]~162_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][3]~167_combout\,
	dataf => \ALT_INV_s64[3][11]~157_combout\,
	combout => \s64[4][11]~260_combout\);

-- Location: LABCELL_X43_Y48_N34
\s32[4][27]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][27]~17_combout\ = ( \fill32~0_combout\ & ( (!\B[3]~input_o\ & (((\s32[3][27]~4_combout\)))) # (\B[3]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[3][19]~162_combout\))) ) ) # ( !\fill32~0_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s32[3][27]~4_combout\)))) # (\B[3]~input_o\ & (\s64[3][19]~162_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100001101111111010000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][19]~162_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s32[3][27]~4_combout\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \s32[4][27]~17_combout\);

-- Location: MLABCELL_X44_Y48_N22
\Y~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = ( \Y~5_combout\ & ( ((\s32[4][27]~17_combout\ & \Y~2_combout\)) # (\s64[4][11]~260_combout\) ) ) # ( !\Y~5_combout\ & ( (\s32[4][27]~17_combout\ & \Y~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][11]~260_combout\,
	datab => \ALT_INV_s32[4][27]~17_combout\,
	datac => \ALT_INV_Y~2_combout\,
	dataf => \ALT_INV_Y~5_combout\,
	combout => \Y~26_combout\);

-- Location: LABCELL_X43_Y48_N2
\s64[4][27]~259\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][27]~259_combout\ = ( \s64[3][35]~173_combout\ & ( (!\B[3]~input_o\ & (\s64[3][27]~152_combout\)) # (\B[3]~input_o\ & (((!\Equal0~0_combout\) # (\s64[3][19]~162_combout\)))) ) ) # ( !\s64[3][35]~173_combout\ & ( (!\B[3]~input_o\ & 
-- (\s64[3][27]~152_combout\)) # (\B[3]~input_o\ & (((\Equal0~0_combout\ & \s64[3][19]~162_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101110011110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][27]~152_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][19]~162_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][35]~173_combout\,
	combout => \s64[4][27]~259_combout\);

-- Location: MLABCELL_X44_Y48_N18
\s64[4][59]~263\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][59]~263_combout\ = ( \s64[3][59]~183_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][51]~180_combout\))) ) ) # ( !\s64[3][59]~183_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][51]~180_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][51]~180_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][59]~183_combout\,
	combout => \s64[4][59]~263_combout\);

-- Location: MLABCELL_X44_Y48_N16
\s64[4][43]~262\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][43]~262_combout\ = ( \s64[3][43]~176_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & (\s64[3][51]~180_combout\)) # (\Equal0~0_combout\ & ((\s64[3][35]~173_combout\)))) ) ) # ( !\s64[3][43]~176_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[3][51]~180_combout\)) # (\Equal0~0_combout\ & ((\s64[3][35]~173_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][51]~180_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][35]~173_combout\,
	dataf => \ALT_INV_s64[3][43]~176_combout\,
	combout => \s64[4][43]~262_combout\);

-- Location: MLABCELL_X44_Y48_N12
\s64[5][43]~264\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][43]~264_combout\ = ( \s64[4][43]~262_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[4][59]~263_combout\))) # (\Equal0~0_combout\ & (\s64[4][27]~259_combout\))) ) ) # ( !\s64[4][43]~262_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[4][59]~263_combout\))) # (\Equal0~0_combout\ & (\s64[4][27]~259_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][27]~259_combout\,
	datac => \ALT_INV_s64[4][59]~263_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][43]~262_combout\,
	combout => \s64[5][43]~264_combout\);

-- Location: MLABCELL_X44_Y48_N14
\s64[5][11]~261\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][11]~261_combout\ = ( \s64[4][11]~260_combout\ & ( (!\B[4]~input_o\) # ((\s64[4][27]~259_combout\ & !\Equal0~0_combout\)) ) ) # ( !\s64[4][11]~260_combout\ & ( (\B[4]~input_o\ & (\s64[4][27]~259_combout\ & !\Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][27]~259_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][11]~260_combout\,
	combout => \s64[5][11]~261_combout\);

-- Location: MLABCELL_X44_Y48_N10
\Y~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = ( \s64[5][11]~261_combout\ & ( (((\Y~3_combout\ & \s64[5][43]~264_combout\)) # (\Y~26_combout\)) # (\Y~4_combout\) ) ) # ( !\s64[5][11]~261_combout\ & ( ((\Y~3_combout\ & \s64[5][43]~264_combout\)) # (\Y~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~3_combout\,
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_Y~26_combout\,
	datad => \ALT_INV_s64[5][43]~264_combout\,
	dataf => \ALT_INV_s64[5][11]~261_combout\,
	combout => \Y~27_combout\);

-- Location: LABCELL_X43_Y43_N32
\s64[4][12]~266\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][12]~266_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][12]~188_combout\))) # (\B[3]~input_o\ & (\s64[3][4]~191_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][12]~188_combout\)) # (\B[3]~input_o\ & 
-- ((\s64[3][20]~189_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][4]~191_combout\,
	datab => \ALT_INV_s64[3][12]~188_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][20]~189_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][12]~266_combout\);

-- Location: LABCELL_X43_Y43_N18
\s32[4][28]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][28]~18_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s32[3][28]~6_combout\))) # (\B[3]~input_o\ & (\s64[3][20]~189_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s32[3][28]~6_combout\)) # (\B[3]~input_o\ & 
-- ((\fill32~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][20]~189_combout\,
	datab => \ALT_INV_s32[3][28]~6_combout\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s32[4][28]~18_combout\);

-- Location: LABCELL_X43_Y49_N12
\Y~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = ( \Y~2_combout\ & ( ((\s64[4][12]~266_combout\ & \Y~5_combout\)) # (\s32[4][28]~18_combout\) ) ) # ( !\Y~2_combout\ & ( (\s64[4][12]~266_combout\ & \Y~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][12]~266_combout\,
	datab => \ALT_INV_s32[4][28]~18_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_Y~2_combout\,
	combout => \Y~28_combout\);

-- Location: MLABCELL_X44_Y43_N14
\s64[4][28]~265\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][28]~265_combout\ = ( \s64[3][20]~189_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][28]~187_combout\)))) # (\B[3]~input_o\ & (((\s64[3][36]~194_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[3][20]~189_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][28]~187_combout\)))) # (\B[3]~input_o\ & (!\Equal0~0_combout\ & ((\s64[3][36]~194_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001010001100110000101000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][28]~187_combout\,
	datac => \ALT_INV_s64[3][36]~194_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][20]~189_combout\,
	combout => \s64[4][28]~265_combout\);

-- Location: MLABCELL_X44_Y43_N32
\s64[4][60]~269\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][60]~269_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][52]~197_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][60]~198_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][60]~198_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_s64[3][52]~197_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][60]~269_combout\);

-- Location: MLABCELL_X44_Y43_N6
\s64[4][44]~268\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][44]~268_combout\ = ( \s64[3][44]~195_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[3][52]~197_combout\))) # (\Equal0~0_combout\ & (\s64[3][36]~194_combout\))) ) ) # ( !\s64[3][44]~195_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[3][52]~197_combout\))) # (\Equal0~0_combout\ & (\s64[3][36]~194_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101111111111000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][36]~194_combout\,
	datac => \ALT_INV_s64[3][52]~197_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][44]~195_combout\,
	combout => \s64[4][44]~268_combout\);

-- Location: LABCELL_X43_Y49_N8
\s64[5][44]~270\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][44]~270_combout\ = ( \s64[4][44]~268_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[4][60]~269_combout\))) # (\Equal0~0_combout\ & (\s64[4][28]~265_combout\))) ) ) # ( !\s64[4][44]~268_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[4][60]~269_combout\))) # (\Equal0~0_combout\ & (\s64[4][28]~265_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][28]~265_combout\,
	datad => \ALT_INV_s64[4][60]~269_combout\,
	dataf => \ALT_INV_s64[4][44]~268_combout\,
	combout => \s64[5][44]~270_combout\);

-- Location: LABCELL_X43_Y49_N10
\s64[5][12]~267\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][12]~267_combout\ = ( \s64[4][12]~266_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & \s64[4][28]~265_combout\)) ) ) # ( !\s64[4][12]~266_combout\ & ( (!\Equal0~0_combout\ & (\B[4]~input_o\ & \s64[4][28]~265_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_s64[4][28]~265_combout\,
	dataf => \ALT_INV_s64[4][12]~266_combout\,
	combout => \s64[5][12]~267_combout\);

-- Location: LABCELL_X43_Y49_N18
\Y~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = ( \s64[5][12]~267_combout\ & ( (((\Y~3_combout\ & \s64[5][44]~270_combout\)) # (\Y~28_combout\)) # (\Y~4_combout\) ) ) # ( !\s64[5][12]~267_combout\ & ( ((\Y~3_combout\ & \s64[5][44]~270_combout\)) # (\Y~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~4_combout\,
	datab => \ALT_INV_Y~3_combout\,
	datac => \ALT_INV_Y~28_combout\,
	datad => \ALT_INV_s64[5][44]~270_combout\,
	dataf => \ALT_INV_s64[5][12]~267_combout\,
	combout => \Y~29_combout\);

-- Location: LABCELL_X45_Y46_N6
\s64[4][13]~272\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][13]~272_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][13]~202_combout\)) # (\B[3]~input_o\ & ((\s64[3][5]~205_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][13]~202_combout\))) # (\B[3]~input_o\ & 
-- (\s64[3][21]~203_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001100000011111100110101001101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][21]~203_combout\,
	datab => \ALT_INV_s64[3][13]~202_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][5]~205_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][13]~272_combout\);

-- Location: LABCELL_X45_Y46_N30
\s64[4][29]~271\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][29]~271_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][37]~208_combout\)) # (\Equal0~0_combout\ & ((\s64[3][21]~203_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][29]~201_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][37]~208_combout\,
	datab => \ALT_INV_s64[3][29]~201_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[3][21]~203_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][29]~271_combout\);

-- Location: LABCELL_X43_Y49_N22
\s64[5][13]~273\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][13]~273_combout\ = ( \Equal0~0_combout\ & ( (\s64[4][13]~272_combout\ & !\B[4]~input_o\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][13]~272_combout\)) # (\B[4]~input_o\ & ((\s64[4][29]~271_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][13]~272_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][29]~271_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[5][13]~273_combout\);

-- Location: LABCELL_X45_Y46_N22
\s32[4][29]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][29]~19_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\fill32~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][21]~203_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s32[3][29]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[3][29]~8_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_s64[3][21]~203_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s32[4][29]~19_combout\);

-- Location: LABCELL_X43_Y49_N20
\Y~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = ( \s32[4][29]~19_combout\ & ( ((\s64[4][13]~272_combout\ & \Y~5_combout\)) # (\Y~2_combout\) ) ) # ( !\s32[4][29]~19_combout\ & ( (\s64[4][13]~272_combout\ & \Y~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][13]~272_combout\,
	datac => \ALT_INV_Y~2_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_s32[4][29]~19_combout\,
	combout => \Y~30_combout\);

-- Location: LABCELL_X45_Y46_N10
\s64[4][61]~275\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][61]~275_combout\ = ( \s64[3][61]~212_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][53]~211_combout\)))) ) ) # ( !\s64[3][61]~212_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][53]~211_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill64~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][53]~211_combout\,
	dataf => \ALT_INV_s64[3][61]~212_combout\,
	combout => \s64[4][61]~275_combout\);

-- Location: LABCELL_X45_Y46_N32
\s64[4][45]~274\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][45]~274_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][53]~211_combout\))) # (\Equal0~0_combout\ & (\s64[3][37]~208_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][45]~209_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][45]~209_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][37]~208_combout\,
	datad => \ALT_INV_s64[3][53]~211_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][45]~274_combout\);

-- Location: LABCELL_X45_Y46_N14
\s64[5][45]~276\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][45]~276_combout\ = ( \s64[4][45]~274_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[4][61]~275_combout\))) # (\Equal0~0_combout\ & (\s64[4][29]~271_combout\))) ) ) # ( !\s64[4][45]~274_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[4][61]~275_combout\))) # (\Equal0~0_combout\ & (\s64[4][29]~271_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][29]~271_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][61]~275_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][45]~274_combout\,
	combout => \s64[5][45]~276_combout\);

-- Location: LABCELL_X43_Y49_N16
\Y~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = ( \s64[5][45]~276_combout\ & ( (((\Y~4_combout\ & \s64[5][13]~273_combout\)) # (\Y~30_combout\)) # (\Y~3_combout\) ) ) # ( !\s64[5][45]~276_combout\ & ( ((\Y~4_combout\ & \s64[5][13]~273_combout\)) # (\Y~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~4_combout\,
	datab => \ALT_INV_Y~3_combout\,
	datac => \ALT_INV_s64[5][13]~273_combout\,
	datad => \ALT_INV_Y~30_combout\,
	dataf => \ALT_INV_s64[5][45]~276_combout\,
	combout => \Y~31_combout\);

-- Location: LABCELL_X45_Y49_N24
\s64[4][30]~277\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][30]~277_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][30]~215_combout\)) # (\B[3]~input_o\ & ((\s64[3][22]~217_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][30]~215_combout\)) # (\B[3]~input_o\ & 
-- ((\s64[3][38]~222_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][30]~215_combout\,
	datac => \ALT_INV_s64[3][22]~217_combout\,
	datad => \ALT_INV_s64[3][38]~222_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][30]~277_combout\);

-- Location: LABCELL_X45_Y49_N18
\s64[4][62]~281\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][62]~281_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][54]~225_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][62]~226_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][62]~226_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_s64[3][54]~225_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][62]~281_combout\);

-- Location: LABCELL_X45_Y49_N32
\s64[4][46]~280\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][46]~280_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][46]~223_combout\))) # (\B[3]~input_o\ & (\s64[3][38]~222_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][46]~223_combout\)) # (\B[3]~input_o\ & 
-- ((\s64[3][54]~225_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][38]~222_combout\,
	datac => \ALT_INV_s64[3][46]~223_combout\,
	datad => \ALT_INV_s64[3][54]~225_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][46]~280_combout\);

-- Location: LABCELL_X45_Y49_N28
\s64[5][46]~282\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][46]~282_combout\ = ( \s64[4][46]~280_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[4][62]~281_combout\))) # (\Equal0~0_combout\ & (\s64[4][30]~277_combout\))) ) ) # ( !\s64[4][46]~280_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[4][62]~281_combout\))) # (\Equal0~0_combout\ & (\s64[4][30]~277_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][30]~277_combout\,
	datad => \ALT_INV_s64[4][62]~281_combout\,
	dataf => \ALT_INV_s64[4][46]~280_combout\,
	combout => \s64[5][46]~282_combout\);

-- Location: LABCELL_X45_Y49_N2
\s32[4][30]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][30]~20_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s32[3][30]~10_combout\)) # (\B[3]~input_o\ & ((\s64[3][22]~217_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s32[3][30]~10_combout\)) # (\B[3]~input_o\ & 
-- ((\fill32~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s32[3][30]~10_combout\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_s64[3][22]~217_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s32[4][30]~20_combout\);

-- Location: LABCELL_X45_Y49_N10
\s64[4][14]~278\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][14]~278_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][14]~216_combout\)) # (\B[3]~input_o\ & ((\s64[3][6]~219_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][14]~216_combout\)) # (\B[3]~input_o\ & 
-- ((\s64[3][22]~217_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][14]~216_combout\,
	datac => \ALT_INV_s64[3][22]~217_combout\,
	datad => \ALT_INV_s64[3][6]~219_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][14]~278_combout\);

-- Location: LABCELL_X45_Y49_N14
\Y~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = ( \Y~5_combout\ & ( ((\s32[4][30]~20_combout\ & \Y~2_combout\)) # (\s64[4][14]~278_combout\) ) ) # ( !\Y~5_combout\ & ( (\s32[4][30]~20_combout\ & \Y~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[4][30]~20_combout\,
	datab => \ALT_INV_s64[4][14]~278_combout\,
	datac => \ALT_INV_Y~2_combout\,
	dataf => \ALT_INV_Y~5_combout\,
	combout => \Y~32_combout\);

-- Location: LABCELL_X45_Y49_N6
\s64[5][14]~279\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][14]~279_combout\ = ( \Equal0~0_combout\ & ( (\s64[4][14]~278_combout\ & !\B[4]~input_o\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[4]~input_o\ & ((\s64[4][14]~278_combout\))) # (\B[4]~input_o\ & (\s64[4][30]~277_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][30]~277_combout\,
	datac => \ALT_INV_s64[4][14]~278_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[5][14]~279_combout\);

-- Location: LABCELL_X45_Y49_N20
\Y~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = ( \s64[5][14]~279_combout\ & ( (((\s64[5][46]~282_combout\ & \Y~3_combout\)) # (\Y~4_combout\)) # (\Y~32_combout\) ) ) # ( !\s64[5][14]~279_combout\ & ( ((\s64[5][46]~282_combout\ & \Y~3_combout\)) # (\Y~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[5][46]~282_combout\,
	datab => \ALT_INV_Y~32_combout\,
	datac => \ALT_INV_Y~4_combout\,
	datad => \ALT_INV_Y~3_combout\,
	dataf => \ALT_INV_s64[5][14]~279_combout\,
	combout => \Y~33_combout\);

-- Location: LABCELL_X45_Y48_N34
\s64[4][31]~283\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][31]~283_combout\ = ( \s64[3][23]~231_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][31]~229_combout\)))) # (\B[3]~input_o\ & (((\Equal0~0_combout\)) # (\s64[3][39]~236_combout\))) ) ) # ( !\s64[3][23]~231_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][31]~229_combout\)))) # (\B[3]~input_o\ & (\s64[3][39]~236_combout\ & (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][39]~236_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][31]~229_combout\,
	dataf => \ALT_INV_s64[3][23]~231_combout\,
	combout => \s64[4][31]~283_combout\);

-- Location: LABCELL_X45_Y48_N28
\s64[4][15]~284\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][15]~284_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][23]~231_combout\)) # (\Equal0~0_combout\ & ((\s64[3][7]~233_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][15]~230_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][15]~230_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][23]~231_combout\,
	datad => \ALT_INV_s64[3][7]~233_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][15]~284_combout\);

-- Location: MLABCELL_X42_Y48_N12
\s64[5][15]~285\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][15]~285_combout\ = ( \s64[4][15]~284_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & \s64[4][31]~283_combout\)) ) ) # ( !\s64[4][15]~284_combout\ & ( (\B[4]~input_o\ & (!\Equal0~0_combout\ & \s64[4][31]~283_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][31]~283_combout\,
	dataf => \ALT_INV_s64[4][15]~284_combout\,
	combout => \s64[5][15]~285_combout\);

-- Location: LABCELL_X45_Y48_N32
\s64[4][47]~286\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][47]~286_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][55]~239_combout\))) # (\Equal0~0_combout\ & (\s64[3][39]~236_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][47]~237_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][39]~236_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][55]~239_combout\,
	datad => \ALT_INV_s64[3][47]~237_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][47]~286_combout\);

-- Location: LABCELL_X45_Y48_N16
\s64[4][63]~287\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][63]~287_combout\ = ( \fill64~0_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][63]~240_combout\)))) # (\B[3]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[3][55]~239_combout\))) ) ) # ( !\fill64~0_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][63]~240_combout\)))) # (\B[3]~input_o\ & (\s64[3][55]~239_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111110111010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][55]~239_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][63]~240_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[4][63]~287_combout\);

-- Location: MLABCELL_X42_Y48_N18
\s64[5][47]~288\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][47]~288_combout\ = ( \s64[4][63]~287_combout\ & ( (!\B[4]~input_o\ & (\s64[4][47]~286_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][31]~283_combout\)))) ) ) # ( !\s64[4][63]~287_combout\ & ( (!\B[4]~input_o\ & 
-- (\s64[4][47]~286_combout\)) # (\B[4]~input_o\ & (((\s64[4][31]~283_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101111100110101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][47]~286_combout\,
	datab => \ALT_INV_s64[4][31]~283_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][63]~287_combout\,
	combout => \s64[5][47]~288_combout\);

-- Location: LABCELL_X45_Y48_N26
\s32[4][31]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[4][31]~21_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\fill32~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][23]~231_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s32[3][31]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][23]~231_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_s32[3][31]~12_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s32[4][31]~21_combout\);

-- Location: LABCELL_X43_Y49_N4
\Y~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = ( \s64[4][15]~284_combout\ & ( ((\Y~2_combout\ & \s32[4][31]~21_combout\)) # (\Y~5_combout\) ) ) # ( !\s64[4][15]~284_combout\ & ( (\Y~2_combout\ & \s32[4][31]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~2_combout\,
	datac => \ALT_INV_s32[4][31]~21_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_s64[4][15]~284_combout\,
	combout => \Y~34_combout\);

-- Location: LABCELL_X43_Y49_N26
\Y~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = ( \Y~3_combout\ & ( (((\s64[5][15]~285_combout\ & \Y~4_combout\)) # (\Y~34_combout\)) # (\s64[5][47]~288_combout\) ) ) # ( !\Y~3_combout\ & ( ((\s64[5][15]~285_combout\ & \Y~4_combout\)) # (\Y~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[5][15]~285_combout\,
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_s64[5][47]~288_combout\,
	datad => \ALT_INV_Y~34_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~35_combout\);

-- Location: LABCELL_X43_Y49_N24
\Y~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = ( \Equal0~0_combout\ & ( !\ExtWord~input_o\ ) ) # ( !\Equal0~0_combout\ & ( (!\B[5]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Y~36_combout\);

-- Location: LABCELL_X43_Y45_N14
\s64[5][16]~289\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][16]~289_combout\ = ( \s64[4][0]~54_combout\ & ( (!\B[4]~input_o\ & (\s64[4][16]~15_combout\)) # (\B[4]~input_o\ & (((\s64[4][32]~33_combout\) # (\Equal0~0_combout\)))) ) ) # ( !\s64[4][0]~54_combout\ & ( (!\B[4]~input_o\ & 
-- (\s64[4][16]~15_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\ & \s64[4][32]~33_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][16]~15_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[4][32]~33_combout\,
	dataf => \ALT_INV_s64[4][0]~54_combout\,
	combout => \s64[5][16]~289_combout\);

-- Location: LABCELL_X43_Y45_N30
\s64[5][48]~290\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][48]~290_combout\ = ( \s64[4][48]~48_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[4][32]~33_combout\)))) ) ) # ( !\s64[4][48]~48_combout\ & ( (\B[4]~input_o\ & ((!\Equal0~0_combout\ & 
-- (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[4][32]~33_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011111111111001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_s64[4][32]~33_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][48]~48_combout\,
	combout => \s64[5][48]~290_combout\);

-- Location: LABCELL_X43_Y45_N34
\Y~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = ( \s64[4][16]~15_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\fill32~0_combout\))) # (\Equal0~0_combout\ & (\s64[4][0]~54_combout\))) ) ) # ( !\s64[4][16]~15_combout\ & ( (\B[4]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\fill32~0_combout\))) # (\Equal0~0_combout\ & (\s64[4][0]~54_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][0]~54_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][16]~15_combout\,
	combout => \Y~37_combout\);

-- Location: LABCELL_X43_Y45_N24
\Y~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = ( \Y~0_combout\ & ( (!\Y~36_combout\ & \s64[5][48]~290_combout\) ) ) # ( !\Y~0_combout\ & ( (!\Y~36_combout\ & ((\Y~37_combout\))) # (\Y~36_combout\ & (\s64[5][16]~289_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_s64[5][16]~289_combout\,
	datac => \ALT_INV_s64[5][48]~290_combout\,
	datad => \ALT_INV_Y~37_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~38_combout\);

-- Location: MLABCELL_X42_Y48_N14
\s64[5][49]~292\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][49]~292_combout\ = ( \s64[4][49]~101_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[4][33]~86_combout\))) ) ) # ( !\s64[4][49]~101_combout\ & ( (\B[4]~input_o\ & ((!\Equal0~0_combout\ 
-- & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[4][33]~86_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][33]~86_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_s64[4][49]~101_combout\,
	combout => \s64[5][49]~292_combout\);

-- Location: MLABCELL_X42_Y49_N0
\Y~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = ( \fill32~0_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][17]~1_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][1]~107_combout\))) ) ) # ( !\fill32~0_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][17]~1_combout\)))) # 
-- (\B[4]~input_o\ & (\s64[4][1]~107_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100001101111111010000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][1]~107_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_s32[4][17]~1_combout\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~39_combout\);

-- Location: MLABCELL_X42_Y49_N2
\s64[5][17]~291\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][17]~291_combout\ = ( \s64[4][33]~86_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][17]~70_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][1]~107_combout\))) ) ) # ( !\s64[4][33]~86_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][17]~70_combout\)))) # (\B[4]~input_o\ & (\s64[4][1]~107_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111110111010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][1]~107_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][17]~70_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][33]~86_combout\,
	combout => \s64[5][17]~291_combout\);

-- Location: MLABCELL_X42_Y49_N26
\Y~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = ( \s64[5][17]~291_combout\ & ( (!\Y~0_combout\ & (((\Y~39_combout\)) # (\Y~36_combout\))) # (\Y~0_combout\ & (!\Y~36_combout\ & (\s64[5][49]~292_combout\))) ) ) # ( !\s64[5][17]~291_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y~39_combout\))) # (\Y~0_combout\ & (\s64[5][49]~292_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_s64[5][49]~292_combout\,
	datad => \ALT_INV_Y~39_combout\,
	dataf => \ALT_INV_s64[5][17]~291_combout\,
	combout => \Y~40_combout\);

-- Location: MLABCELL_X44_Y45_N28
\s64[5][18]~293\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][18]~293_combout\ = ( \s64[4][34]~138_combout\ & ( (!\B[4]~input_o\ & (\s64[4][18]~124_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][2]~129_combout\)))) ) ) # ( !\s64[4][34]~138_combout\ & ( (!\B[4]~input_o\ & 
-- (\s64[4][18]~124_combout\)) # (\B[4]~input_o\ & (((\s64[4][2]~129_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101111100110101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][18]~124_combout\,
	datab => \ALT_INV_s64[4][2]~129_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][34]~138_combout\,
	combout => \s64[5][18]~293_combout\);

-- Location: MLABCELL_X44_Y45_N8
\Y~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = ( \s64[4][2]~129_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][18]~3_combout\)))) # (\B[4]~input_o\ & (((\fill32~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[4][2]~129_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][18]~3_combout\)))) # 
-- (\B[4]~input_o\ & (!\Equal0~0_combout\ & ((\fill32~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s32[4][18]~3_combout\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[4][2]~129_combout\,
	combout => \Y~41_combout\);

-- Location: MLABCELL_X44_Y45_N18
\s64[5][50]~294\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][50]~294_combout\ = ( \fill64~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][50]~145_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][34]~138_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][50]~145_combout\)) # 
-- (\B[4]~input_o\ & (((\s64[4][34]~138_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101111100110101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][50]~145_combout\,
	datab => \ALT_INV_s64[4][34]~138_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[5][50]~294_combout\);

-- Location: MLABCELL_X44_Y45_N12
\Y~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = ( \s64[5][50]~294_combout\ & ( (!\Y~36_combout\ & (((\Y~41_combout\)) # (\Y~0_combout\))) # (\Y~36_combout\ & (!\Y~0_combout\ & (\s64[5][18]~293_combout\))) ) ) # ( !\s64[5][50]~294_combout\ & ( (!\Y~0_combout\ & ((!\Y~36_combout\ & 
-- ((\Y~41_combout\))) # (\Y~36_combout\ & (\s64[5][18]~293_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_s64[5][18]~293_combout\,
	datad => \ALT_INV_Y~41_combout\,
	dataf => \ALT_INV_s64[5][50]~294_combout\,
	combout => \Y~42_combout\);

-- Location: LABCELL_X43_Y48_N12
\s64[5][51]~296\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][51]~296_combout\ = ( \fill64~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][51]~184_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][35]~177_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][51]~184_combout\)) # 
-- (\B[4]~input_o\ & (((\Equal0~0_combout\ & \s64[4][35]~177_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101110011110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][51]~184_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][35]~177_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[5][51]~296_combout\);

-- Location: LABCELL_X43_Y48_N6
\s64[5][19]~295\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][19]~295_combout\ = ( \s64[4][35]~177_combout\ & ( (!\B[4]~input_o\ & (\s64[4][19]~163_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][3]~168_combout\)))) ) ) # ( !\s64[4][35]~177_combout\ & ( (!\B[4]~input_o\ & 
-- (\s64[4][19]~163_combout\)) # (\B[4]~input_o\ & (((\Equal0~0_combout\ & \s64[4][3]~168_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101110011110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][19]~163_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][3]~168_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][35]~177_combout\,
	combout => \s64[5][19]~295_combout\);

-- Location: LABCELL_X43_Y48_N36
\Y~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = ( \s64[4][3]~168_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][19]~5_combout\)))) # (\B[4]~input_o\ & (((\fill32~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[4][3]~168_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][19]~5_combout\)))) # 
-- (\B[4]~input_o\ & (!\Equal0~0_combout\ & (\fill32~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_s32[4][19]~5_combout\,
	dataf => \ALT_INV_s64[4][3]~168_combout\,
	combout => \Y~43_combout\);

-- Location: LABCELL_X43_Y48_N22
\Y~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = ( \Y~36_combout\ & ( (\s64[5][19]~295_combout\ & !\Y~0_combout\) ) ) # ( !\Y~36_combout\ & ( (!\Y~0_combout\ & ((\Y~43_combout\))) # (\Y~0_combout\ & (\s64[5][51]~296_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[5][51]~296_combout\,
	datab => \ALT_INV_s64[5][19]~295_combout\,
	datac => \ALT_INV_Y~43_combout\,
	datad => \ALT_INV_Y~0_combout\,
	dataf => \ALT_INV_Y~36_combout\,
	combout => \Y~44_combout\);

-- Location: MLABCELL_X44_Y49_N6
\s64[5][20]~297\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][20]~297_combout\ = ( \s64[4][4]~192_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][20]~190_combout\)))) # (\B[4]~input_o\ & (((\s64[4][36]~196_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[4][4]~192_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][20]~190_combout\)))) # (\B[4]~input_o\ & (!\Equal0~0_combout\ & ((\s64[4][36]~196_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001010001100110000101000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[4][20]~190_combout\,
	datac => \ALT_INV_s64[4][36]~196_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][4]~192_combout\,
	combout => \s64[5][20]~297_combout\);

-- Location: MLABCELL_X44_Y49_N22
\Y~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = ( \s64[4][4]~192_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][20]~7_combout\)))) # (\B[4]~input_o\ & (((\fill32~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[4][4]~192_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][20]~7_combout\)))) # 
-- (\B[4]~input_o\ & (!\Equal0~0_combout\ & ((\fill32~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s32[4][20]~7_combout\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[4][4]~192_combout\,
	combout => \Y~45_combout\);

-- Location: MLABCELL_X44_Y49_N36
\s64[5][52]~298\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][52]~298_combout\ = ( \fill64~0_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][52]~199_combout\)))) # (\B[4]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[4][36]~196_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][52]~199_combout\)))) # (\B[4]~input_o\ & (\Equal0~0_combout\ & (\s64[4][36]~196_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][36]~196_combout\,
	datad => \ALT_INV_s64[4][52]~199_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[5][52]~298_combout\);

-- Location: MLABCELL_X44_Y45_N14
\Y~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = ( \s64[5][52]~298_combout\ & ( (!\Y~36_combout\ & (((\Y~45_combout\)) # (\Y~0_combout\))) # (\Y~36_combout\ & (!\Y~0_combout\ & (\s64[5][20]~297_combout\))) ) ) # ( !\s64[5][52]~298_combout\ & ( (!\Y~0_combout\ & ((!\Y~36_combout\ & 
-- ((\Y~45_combout\))) # (\Y~36_combout\ & (\s64[5][20]~297_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_s64[5][20]~297_combout\,
	datad => \ALT_INV_Y~45_combout\,
	dataf => \ALT_INV_s64[5][52]~298_combout\,
	combout => \Y~46_combout\);

-- Location: MLABCELL_X44_Y48_N6
\Y~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = ( \fill32~0_combout\ & ( (!\B[4]~input_o\ & (\s32[4][21]~9_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][5]~206_combout\)))) ) ) # ( !\fill32~0_combout\ & ( (!\B[4]~input_o\ & (\s32[4][21]~9_combout\)) # 
-- (\B[4]~input_o\ & (((\s64[4][5]~206_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101111100110101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[4][21]~9_combout\,
	datab => \ALT_INV_s64[4][5]~206_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~47_combout\);

-- Location: LABCELL_X45_Y46_N26
\s64[5][21]~299\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][21]~299_combout\ = ( \s64[4][37]~210_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][21]~204_combout\)))) # (\B[4]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[4][5]~206_combout\)))) ) ) # ( !\s64[4][37]~210_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][21]~204_combout\)))) # (\B[4]~input_o\ & (\Equal0~0_combout\ & ((\s64[4][5]~206_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][21]~204_combout\,
	datad => \ALT_INV_s64[4][5]~206_combout\,
	dataf => \ALT_INV_s64[4][37]~210_combout\,
	combout => \s64[5][21]~299_combout\);

-- Location: LABCELL_X45_Y46_N38
\s64[5][53]~300\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][53]~300_combout\ = ( \s64[4][37]~210_combout\ & ( (!\B[4]~input_o\ & (\s64[4][53]~213_combout\)) # (\B[4]~input_o\ & (((\fill64~0_combout\) # (\Equal0~0_combout\)))) ) ) # ( !\s64[4][37]~210_combout\ & ( (!\B[4]~input_o\ & 
-- (\s64[4][53]~213_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\ & \fill64~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][53]~213_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_s64[4][37]~210_combout\,
	combout => \s64[5][53]~300_combout\);

-- Location: MLABCELL_X44_Y49_N26
\Y~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = ( \s64[5][53]~300_combout\ & ( (!\Y~36_combout\ & (((\Y~47_combout\)) # (\Y~0_combout\))) # (\Y~36_combout\ & (!\Y~0_combout\ & ((\s64[5][21]~299_combout\)))) ) ) # ( !\s64[5][53]~300_combout\ & ( (!\Y~0_combout\ & ((!\Y~36_combout\ & 
-- (\Y~47_combout\)) # (\Y~36_combout\ & ((\s64[5][21]~299_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y~47_combout\,
	datad => \ALT_INV_s64[5][21]~299_combout\,
	dataf => \ALT_INV_s64[5][53]~300_combout\,
	combout => \Y~48_combout\);

-- Location: MLABCELL_X42_Y49_N8
\s64[5][54]~302\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][54]~302_combout\ = ( \s64[4][38]~224_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][54]~227_combout\)))) # (\B[4]~input_o\ & (((\fill64~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[4][38]~224_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][54]~227_combout\)))) # (\B[4]~input_o\ & (!\Equal0~0_combout\ & ((\fill64~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][54]~227_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_s64[4][38]~224_combout\,
	combout => \s64[5][54]~302_combout\);

-- Location: MLABCELL_X42_Y49_N38
\Y~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = ( \fill32~0_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][22]~11_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][6]~220_combout\))) ) ) # ( !\fill32~0_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][22]~11_combout\)))) # 
-- (\B[4]~input_o\ & (\s64[4][6]~220_combout\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011111101010011001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][6]~220_combout\,
	datab => \ALT_INV_s32[4][22]~11_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~49_combout\);

-- Location: MLABCELL_X42_Y49_N10
\s64[5][22]~301\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][22]~301_combout\ = ( \s64[4][38]~224_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][22]~218_combout\)))) # (\B[4]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[4][6]~220_combout\)))) ) ) # ( !\s64[4][38]~224_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][22]~218_combout\)))) # (\B[4]~input_o\ & (\Equal0~0_combout\ & ((\s64[4][6]~220_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][22]~218_combout\,
	datad => \ALT_INV_s64[4][6]~220_combout\,
	dataf => \ALT_INV_s64[4][38]~224_combout\,
	combout => \s64[5][22]~301_combout\);

-- Location: MLABCELL_X42_Y49_N24
\Y~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = ( \s64[5][22]~301_combout\ & ( (!\Y~0_combout\ & (((\Y~49_combout\)) # (\Y~36_combout\))) # (\Y~0_combout\ & (!\Y~36_combout\ & (\s64[5][54]~302_combout\))) ) ) # ( !\s64[5][22]~301_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y~49_combout\))) # (\Y~0_combout\ & (\s64[5][54]~302_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_s64[5][54]~302_combout\,
	datad => \ALT_INV_Y~49_combout\,
	dataf => \ALT_INV_s64[5][22]~301_combout\,
	combout => \Y~50_combout\);

-- Location: LABCELL_X45_Y48_N12
\s64[5][23]~303\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][23]~303_combout\ = ( \B[4]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[4][39]~238_combout\))) # (\Equal0~0_combout\ & (\s64[4][7]~234_combout\)) ) ) # ( !\B[4]~input_o\ & ( \s64[4][23]~232_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][7]~234_combout\,
	datab => \ALT_INV_s64[4][23]~232_combout\,
	datac => \ALT_INV_s64[4][39]~238_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \s64[5][23]~303_combout\);

-- Location: LABCELL_X45_Y48_N8
\Y~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = ( \fill32~0_combout\ & ( (!\B[4]~input_o\ & (\s32[4][23]~13_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][7]~234_combout\)))) ) ) # ( !\fill32~0_combout\ & ( (!\B[4]~input_o\ & (\s32[4][23]~13_combout\)) # 
-- (\B[4]~input_o\ & (((\s64[4][7]~234_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010100000101001101011111010100110101111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[4][23]~13_combout\,
	datab => \ALT_INV_s64[4][7]~234_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~51_combout\);

-- Location: LABCELL_X45_Y48_N0
\s64[5][55]~304\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][55]~304_combout\ = ( \fill64~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][55]~241_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][39]~238_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[4]~input_o\ & (\s64[4][55]~241_combout\)) # 
-- (\B[4]~input_o\ & (((\s64[4][39]~238_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101110111010001110111011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][55]~241_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][39]~238_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[5][55]~304_combout\);

-- Location: MLABCELL_X44_Y48_N24
\Y~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = ( \s64[5][55]~304_combout\ & ( (!\Y~0_combout\ & ((!\Y~36_combout\ & ((\Y~51_combout\))) # (\Y~36_combout\ & (\s64[5][23]~303_combout\)))) # (\Y~0_combout\ & (!\Y~36_combout\)) ) ) # ( !\s64[5][55]~304_combout\ & ( (!\Y~0_combout\ & 
-- ((!\Y~36_combout\ & ((\Y~51_combout\))) # (\Y~36_combout\ & (\s64[5][23]~303_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_s64[5][23]~303_combout\,
	datad => \ALT_INV_Y~51_combout\,
	dataf => \ALT_INV_s64[5][55]~304_combout\,
	combout => \Y~52_combout\);

-- Location: MLABCELL_X42_Y48_N24
\s64[5][56]~306\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][56]~306_combout\ = ( \s64[4][40]~244_combout\ & ( (!\B[4]~input_o\ & (\s64[4][56]~245_combout\)) # (\B[4]~input_o\ & (((\Equal0~0_combout\) # (\fill64~0_combout\)))) ) ) # ( !\s64[4][40]~244_combout\ & ( (!\B[4]~input_o\ & 
-- (\s64[4][56]~245_combout\)) # (\B[4]~input_o\ & (((\fill64~0_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][56]~245_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][40]~244_combout\,
	combout => \s64[5][56]~306_combout\);

-- Location: MLABCELL_X42_Y48_N0
\Y~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = ( \s32[4][24]~14_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\fill32~0_combout\))) # (\Equal0~0_combout\ & (\s64[4][8]~247_combout\))) ) ) # ( !\s32[4][24]~14_combout\ & ( (\B[4]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\fill32~0_combout\))) # (\Equal0~0_combout\ & (\s64[4][8]~247_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][8]~247_combout\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s32[4][24]~14_combout\,
	combout => \Y~53_combout\);

-- Location: MLABCELL_X42_Y48_N2
\s64[5][24]~305\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][24]~305_combout\ = ( \s64[4][40]~244_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][24]~243_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][8]~247_combout\))) ) ) # ( !\s64[4][40]~244_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][24]~243_combout\)))) # (\B[4]~input_o\ & (\s64[4][8]~247_combout\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101011111000110110101111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][8]~247_combout\,
	datac => \ALT_INV_s64[4][24]~243_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][40]~244_combout\,
	combout => \s64[5][24]~305_combout\);

-- Location: MLABCELL_X42_Y48_N20
\Y~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = ( \s64[5][24]~305_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y~53_combout\))) # (\Y~0_combout\ & (\s64[5][56]~306_combout\)))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) # ( !\s64[5][24]~305_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y~53_combout\))) # (\Y~0_combout\ & (\s64[5][56]~306_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_s64[5][56]~306_combout\,
	datad => \ALT_INV_Y~53_combout\,
	dataf => \ALT_INV_s64[5][24]~305_combout\,
	combout => \Y~54_combout\);

-- Location: MLABCELL_X42_Y46_N18
\Y~99\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~99_combout\ = ( \s32[4][25]~15_combout\ & ( \s64[4][9]~252_combout\ & ( (\ExtWord~input_o\ & ((!\B[4]~input_o\) # ((\Equal0~0_combout\) # (\fill32~0_combout\)))) ) ) ) # ( !\s32[4][25]~15_combout\ & ( \s64[4][9]~252_combout\ & ( (\B[4]~input_o\ & 
-- (\ExtWord~input_o\ & ((\Equal0~0_combout\) # (\fill32~0_combout\)))) ) ) ) # ( \s32[4][25]~15_combout\ & ( !\s64[4][9]~252_combout\ & ( (\ExtWord~input_o\ & ((!\B[4]~input_o\) # ((\fill32~0_combout\ & !\Equal0~0_combout\)))) ) ) ) # ( 
-- !\s32[4][25]~15_combout\ & ( !\s64[4][9]~252_combout\ & ( (\B[4]~input_o\ & (\fill32~0_combout\ & (!\Equal0~0_combout\ & \ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000001011101000000000000101010000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_fill32~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_s32[4][25]~15_combout\,
	dataf => \ALT_INV_s64[4][9]~252_combout\,
	combout => \Y~99_combout\);

-- Location: MLABCELL_X42_Y46_N0
\s64[5][57]~308\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][57]~308_combout\ = ( \fill64~0_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][57]~250_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][41]~249_combout\))) ) ) # ( !\fill64~0_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][57]~250_combout\)))) # (\B[4]~input_o\ & (\s64[4][41]~249_combout\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011111101010011001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][41]~249_combout\,
	datab => \ALT_INV_s64[4][57]~250_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[5][57]~308_combout\);

-- Location: MLABCELL_X42_Y46_N4
\s64[5][25]~307\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][25]~307_combout\ = ( \s64[4][25]~248_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[4][41]~249_combout\))) # (\Equal0~0_combout\ & (\s64[4][9]~252_combout\))) ) ) # ( !\s64[4][25]~248_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[4][41]~249_combout\))) # (\Equal0~0_combout\ & (\s64[4][9]~252_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_s64[4][9]~252_combout\,
	datac => \ALT_INV_s64[4][41]~249_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][25]~248_combout\,
	combout => \s64[5][25]~307_combout\);

-- Location: MLABCELL_X42_Y46_N10
\Y~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = ( \s64[5][25]~307_combout\ & ( ((!\Y~36_combout\ & (\Y~0_combout\ & \s64[5][57]~308_combout\)) # (\Y~36_combout\ & (!\Y~0_combout\))) # (\Y~99_combout\) ) ) # ( !\s64[5][25]~307_combout\ & ( ((!\Y~36_combout\ & (\Y~0_combout\ & 
-- \s64[5][57]~308_combout\))) # (\Y~99_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011110010111101001111011011110100111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y~99_combout\,
	datad => \ALT_INV_s64[5][57]~308_combout\,
	dataf => \ALT_INV_s64[5][25]~307_combout\,
	combout => \Y~55_combout\);

-- Location: MLABCELL_X44_Y49_N20
\s64[5][58]~310\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][58]~310_combout\ = ( \fill64~0_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][58]~257_combout\)))) # (\B[4]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[4][42]~256_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][58]~257_combout\)))) # (\B[4]~input_o\ & (\Equal0~0_combout\ & (\s64[4][42]~256_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][42]~256_combout\,
	datad => \ALT_INV_s64[4][58]~257_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[5][58]~310_combout\);

-- Location: MLABCELL_X44_Y49_N8
\Y~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = ( \fill32~0_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][26]~16_combout\)))) # (\B[4]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[4][10]~254_combout\)))) ) ) # ( !\fill32~0_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][26]~16_combout\)))) # 
-- (\B[4]~input_o\ & (\Equal0~0_combout\ & (\s64[4][10]~254_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][10]~254_combout\,
	datad => \ALT_INV_s32[4][26]~16_combout\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~56_combout\);

-- Location: MLABCELL_X44_Y49_N10
\s64[5][26]~309\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][26]~309_combout\ = ( \s64[4][42]~256_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][26]~253_combout\)))) # (\B[4]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[4][10]~254_combout\)))) ) ) # ( !\s64[4][42]~256_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][26]~253_combout\)))) # (\B[4]~input_o\ & (\Equal0~0_combout\ & ((\s64[4][10]~254_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][26]~253_combout\,
	datad => \ALT_INV_s64[4][10]~254_combout\,
	dataf => \ALT_INV_s64[4][42]~256_combout\,
	combout => \s64[5][26]~309_combout\);

-- Location: MLABCELL_X44_Y49_N24
\Y~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = ( \s64[5][26]~309_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y~56_combout\))) # (\Y~0_combout\ & (\s64[5][58]~310_combout\)))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) # ( !\s64[5][26]~309_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y~56_combout\))) # (\Y~0_combout\ & (\s64[5][58]~310_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_s64[5][58]~310_combout\,
	datad => \ALT_INV_Y~56_combout\,
	dataf => \ALT_INV_s64[5][26]~309_combout\,
	combout => \Y~57_combout\);

-- Location: MLABCELL_X44_Y48_N30
\s64[5][27]~311\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][27]~311_combout\ = ( \s64[4][11]~260_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][27]~259_combout\)))) # (\B[4]~input_o\ & (((\Equal0~0_combout\)) # (\s64[4][43]~262_combout\))) ) ) # ( !\s64[4][11]~260_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][27]~259_combout\)))) # (\B[4]~input_o\ & (\s64[4][43]~262_combout\ & (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101000100000011110100010000001111011101110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][43]~262_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][27]~259_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][11]~260_combout\,
	combout => \s64[5][27]~311_combout\);

-- Location: MLABCELL_X44_Y48_N20
\Y~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = ( \fill32~0_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][27]~17_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][11]~260_combout\))) ) ) # ( !\fill32~0_combout\ & ( (!\B[4]~input_o\ & (((\s32[4][27]~17_combout\)))) # 
-- (\B[4]~input_o\ & (\s64[4][11]~260_combout\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111111001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][11]~260_combout\,
	datab => \ALT_INV_s32[4][27]~17_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~58_combout\);

-- Location: MLABCELL_X44_Y48_N28
\s64[5][59]~312\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][59]~312_combout\ = ( \fill64~0_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][59]~263_combout\)))) # (\B[4]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[4][43]~262_combout\))) ) ) # ( !\fill64~0_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][59]~263_combout\)))) # (\B[4]~input_o\ & (\s64[4][43]~262_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111110111010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][43]~262_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][59]~263_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[5][59]~312_combout\);

-- Location: MLABCELL_X44_Y48_N26
\Y~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = ( \s64[5][59]~312_combout\ & ( (!\Y~0_combout\ & ((!\Y~36_combout\ & ((\Y~58_combout\))) # (\Y~36_combout\ & (\s64[5][27]~311_combout\)))) # (\Y~0_combout\ & (!\Y~36_combout\)) ) ) # ( !\s64[5][59]~312_combout\ & ( (!\Y~0_combout\ & 
-- ((!\Y~36_combout\ & ((\Y~58_combout\))) # (\Y~36_combout\ & (\s64[5][27]~311_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_s64[5][27]~311_combout\,
	datad => \ALT_INV_Y~58_combout\,
	dataf => \ALT_INV_s64[5][59]~312_combout\,
	combout => \Y~59_combout\);

-- Location: LABCELL_X43_Y49_N28
\s64[5][28]~313\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][28]~313_combout\ = ( \s64[4][12]~266_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][28]~265_combout\)))) # (\B[4]~input_o\ & (((\s64[4][44]~268_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[4][12]~266_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][28]~265_combout\)))) # (\B[4]~input_o\ & (!\Equal0~0_combout\ & (\s64[4][44]~268_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100010000011110010001000001111011101110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[4][44]~268_combout\,
	datac => \ALT_INV_s64[4][28]~265_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][12]~266_combout\,
	combout => \s64[5][28]~313_combout\);

-- Location: LABCELL_X43_Y49_N30
\s64[5][60]~314\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][60]~314_combout\ = ( \fill64~0_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][60]~269_combout\)))) # (\B[4]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[4][44]~268_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][60]~269_combout\)))) # (\B[4]~input_o\ & (\Equal0~0_combout\ & (\s64[4][44]~268_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111101110110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[4][44]~268_combout\,
	datac => \ALT_INV_s64[4][60]~269_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[5][60]~314_combout\);

-- Location: LABCELL_X43_Y49_N14
\Y~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = ( \Equal0~0_combout\ & ( (!\B[4]~input_o\ & ((\s32[4][28]~18_combout\))) # (\B[4]~input_o\ & (\s64[4][12]~266_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[4]~input_o\ & (\s32[4][28]~18_combout\)) # (\B[4]~input_o\ & 
-- ((\fill32~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][12]~266_combout\,
	datab => \ALT_INV_s32[4][28]~18_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Y~60_combout\);

-- Location: LABCELL_X43_Y49_N32
\Y~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = ( \Y~60_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\) # ((\s64[5][60]~314_combout\)))) # (\Y~36_combout\ & (!\Y~0_combout\ & (\s64[5][28]~313_combout\))) ) ) # ( !\Y~60_combout\ & ( (!\Y~36_combout\ & (\Y~0_combout\ & 
-- ((\s64[5][60]~314_combout\)))) # (\Y~36_combout\ & (!\Y~0_combout\ & (\s64[5][28]~313_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_s64[5][28]~313_combout\,
	datad => \ALT_INV_s64[5][60]~314_combout\,
	dataf => \ALT_INV_Y~60_combout\,
	combout => \Y~61_combout\);

-- Location: LABCELL_X45_Y46_N8
\s64[5][61]~316\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][61]~316_combout\ = ( \s64[4][61]~275_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[4][45]~274_combout\)))) ) ) # ( !\s64[4][61]~275_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[4][45]~274_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill64~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_s64[4][45]~274_combout\,
	dataf => \ALT_INV_s64[4][61]~275_combout\,
	combout => \s64[5][61]~316_combout\);

-- Location: LABCELL_X45_Y46_N12
\s64[5][29]~315\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][29]~315_combout\ = ( \s64[4][45]~274_combout\ & ( (!\B[4]~input_o\ & (\s64[4][29]~271_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][13]~272_combout\)))) ) ) # ( !\s64[4][45]~274_combout\ & ( (!\B[4]~input_o\ & 
-- (\s64[4][29]~271_combout\)) # (\B[4]~input_o\ & (((\Equal0~0_combout\ & \s64[4][13]~272_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010100000101001101011100010111110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][29]~271_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_s64[4][13]~272_combout\,
	dataf => \ALT_INV_s64[4][45]~274_combout\,
	combout => \s64[5][29]~315_combout\);

-- Location: MLABCELL_X42_Y46_N16
\Y~98\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~98_combout\ = ( \s32[4][29]~19_combout\ & ( \s64[4][13]~272_combout\ & ( (\ExtWord~input_o\ & ((!\B[4]~input_o\) # ((\Equal0~0_combout\) # (\fill32~0_combout\)))) ) ) ) # ( !\s32[4][29]~19_combout\ & ( \s64[4][13]~272_combout\ & ( (\B[4]~input_o\ & 
-- (\ExtWord~input_o\ & ((\Equal0~0_combout\) # (\fill32~0_combout\)))) ) ) ) # ( \s32[4][29]~19_combout\ & ( !\s64[4][13]~272_combout\ & ( (\ExtWord~input_o\ & ((!\B[4]~input_o\) # ((\fill32~0_combout\ & !\Equal0~0_combout\)))) ) ) ) # ( 
-- !\s32[4][29]~19_combout\ & ( !\s64[4][13]~272_combout\ & ( (\B[4]~input_o\ & (\fill32~0_combout\ & (\ExtWord~input_o\ & !\Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000010110000101000000001000001010000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_fill32~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s32[4][29]~19_combout\,
	dataf => \ALT_INV_s64[4][13]~272_combout\,
	combout => \Y~98_combout\);

-- Location: MLABCELL_X42_Y46_N8
\Y~62\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = ( \Y~98_combout\ ) # ( !\Y~98_combout\ & ( (!\Y~36_combout\ & (\Y~0_combout\ & (\s64[5][61]~316_combout\))) # (\Y~36_combout\ & (!\Y~0_combout\ & ((\s64[5][29]~315_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_s64[5][61]~316_combout\,
	datad => \ALT_INV_s64[5][29]~315_combout\,
	dataf => \ALT_INV_Y~98_combout\,
	combout => \Y~62_combout\);

-- Location: LABCELL_X45_Y49_N12
\Y~63\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = ( \fill32~0_combout\ & ( (!\B[4]~input_o\ & (\s32[4][30]~20_combout\)) # (\B[4]~input_o\ & (((!\Equal0~0_combout\) # (\s64[4][14]~278_combout\)))) ) ) # ( !\fill32~0_combout\ & ( (!\B[4]~input_o\ & (\s32[4][30]~20_combout\)) # 
-- (\B[4]~input_o\ & (((\s64[4][14]~278_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101111100110101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s32[4][30]~20_combout\,
	datab => \ALT_INV_s64[4][14]~278_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~63_combout\);

-- Location: LABCELL_X45_Y49_N30
\s64[5][62]~318\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][62]~318_combout\ = ( \s64[4][46]~280_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][62]~281_combout\)))) # (\B[4]~input_o\ & (((\fill64~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[4][46]~280_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][62]~281_combout\)))) # (\B[4]~input_o\ & (!\Equal0~0_combout\ & (\fill64~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_s64[4][62]~281_combout\,
	dataf => \ALT_INV_s64[4][46]~280_combout\,
	combout => \s64[5][62]~318_combout\);

-- Location: LABCELL_X45_Y49_N4
\s64[5][30]~317\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][30]~317_combout\ = ( \B[4]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[4][46]~280_combout\))) # (\Equal0~0_combout\ & (\s64[4][14]~278_combout\)) ) ) # ( !\B[4]~input_o\ & ( \s64[4][30]~277_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][30]~277_combout\,
	datab => \ALT_INV_s64[4][14]~278_combout\,
	datac => \ALT_INV_s64[4][46]~280_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \s64[5][30]~317_combout\);

-- Location: LABCELL_X43_Y49_N34
\Y~64\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = ( \s64[5][30]~317_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y~63_combout\)) # (\Y~0_combout\ & ((\s64[5][62]~318_combout\))))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) # ( !\s64[5][30]~317_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y~63_combout\)) # (\Y~0_combout\ & ((\s64[5][62]~318_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y~63_combout\,
	datad => \ALT_INV_s64[5][62]~318_combout\,
	dataf => \ALT_INV_s64[5][30]~317_combout\,
	combout => \Y~64_combout\);

-- Location: MLABCELL_X42_Y48_N4
\s64[5][63]~319\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][63]~319_combout\ = ( \s64[4][63]~287_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[4][47]~286_combout\))) ) ) # ( !\s64[4][63]~287_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[4][47]~286_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][47]~286_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_s64[4][63]~287_combout\,
	combout => \s64[5][63]~319_combout\);

-- Location: MLABCELL_X42_Y48_N16
\s64[5][31]~320\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][31]~320_combout\ = ( \s64[4][15]~284_combout\ & ( (!\B[4]~input_o\ & (((\s64[4][31]~283_combout\)))) # (\B[4]~input_o\ & (((\Equal0~0_combout\)) # (\s64[4][47]~286_combout\))) ) ) # ( !\s64[4][15]~284_combout\ & ( (!\B[4]~input_o\ & 
-- (((\s64[4][31]~283_combout\)))) # (\B[4]~input_o\ & (\s64[4][47]~286_combout\ & ((!\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110000001101010011000000110101001111110011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][47]~286_combout\,
	datab => \ALT_INV_s64[4][31]~283_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][15]~284_combout\,
	combout => \s64[5][31]~320_combout\);

-- Location: MLABCELL_X44_Y49_N38
\Y_32_extended[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_32_extended[31]~0_combout\ = ( \s32[4][31]~21_combout\ & ( (!\B[4]~input_o\) # ((!\Equal0~0_combout\ & (\fill32~0_combout\)) # (\Equal0~0_combout\ & ((\s64[4][15]~284_combout\)))) ) ) # ( !\s32[4][31]~21_combout\ & ( (\B[4]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\fill32~0_combout\)) # (\Equal0~0_combout\ & ((\s64[4][15]~284_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_s64[4][15]~284_combout\,
	dataf => \ALT_INV_s32[4][31]~21_combout\,
	combout => \Y_32_extended[31]~0_combout\);

-- Location: MLABCELL_X42_Y48_N28
\Y~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = ( \Equal0~0_combout\ & ( \Y_32_extended[31]~0_combout\ & ( ((\s64[5][31]~320_combout\ & !\B[5]~input_o\)) # (\ExtWord~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \Y_32_extended[31]~0_combout\ & ( ((!\B[5]~input_o\ & 
-- ((\s64[5][31]~320_combout\))) # (\B[5]~input_o\ & (\s64[5][63]~319_combout\))) # (\ExtWord~input_o\) ) ) ) # ( \Equal0~0_combout\ & ( !\Y_32_extended[31]~0_combout\ & ( (\s64[5][31]~320_combout\ & (!\B[5]~input_o\ & !\ExtWord~input_o\)) ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\Y_32_extended[31]~0_combout\ & ( (!\ExtWord~input_o\ & ((!\B[5]~input_o\ & ((\s64[5][31]~320_combout\))) # (\B[5]~input_o\ & (\s64[5][63]~319_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001100000000000000110101111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[5][63]~319_combout\,
	datab => \ALT_INV_s64[5][31]~320_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Y_32_extended[31]~0_combout\,
	combout => \Y~65_combout\);

-- Location: LABCELL_X43_Y45_N32
\s64[5][0]~321\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][0]~321_combout\ = ( \s64[4][16]~15_combout\ & ( (!\B[4]~input_o\ & (\s64[4][0]~54_combout\)) # (\B[4]~input_o\ & ((!\Equal0~0_combout\))) ) ) # ( !\s64[4][16]~15_combout\ & ( (\s64[4][0]~54_combout\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101110011000101010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][0]~54_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[4][16]~15_combout\,
	combout => \s64[5][0]~321_combout\);

-- Location: LABCELL_X43_Y45_N16
\Y~66\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = ( \s64[5][32]~49_combout\ & ( \s64[5][0]~321_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][32]~49_combout\ & ( \s64[5][0]~321_combout\ & 
-- ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (\Y~0_combout\)) ) ) ) # ( \s64[5][32]~49_combout\ & ( !\s64[5][0]~321_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) ) # ( !\s64[5][32]~49_combout\ & ( !\s64[5][0]~321_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][32]~49_combout\,
	dataf => \ALT_INV_s64[5][0]~321_combout\,
	combout => \Y~66_combout\);

-- Location: MLABCELL_X42_Y49_N34
\Y~67\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = ( \s64[5][33]~102_combout\ & ( \s64[5][1]~108_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][33]~102_combout\ & ( \s64[5][1]~108_combout\ 
-- & ( (!\Y~0_combout\ & (!\Y~36_combout\ & (\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (((\fill64~0_combout\)) # (\Y~36_combout\))) ) ) ) # ( \s64[5][33]~102_combout\ & ( !\s64[5][1]~108_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y_32_extended[31]~0_combout\)) # (\Y~36_combout\))) # (\Y~0_combout\ & (!\Y~36_combout\ & ((\fill64~0_combout\)))) ) ) ) # ( !\s64[5][33]~102_combout\ & ( !\s64[5][1]~108_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][33]~102_combout\,
	dataf => \ALT_INV_s64[5][1]~108_combout\,
	combout => \Y~67_combout\);

-- Location: MLABCELL_X44_Y45_N36
\Y~68\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = ( \s64[5][34]~146_combout\ & ( \s64[5][2]~130_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][34]~146_combout\ & ( \s64[5][2]~130_combout\ 
-- & ( (!\Y~0_combout\ & (((\Y_32_extended[31]~0_combout\ & !\Y~36_combout\)))) # (\Y~0_combout\ & (((\Y~36_combout\)) # (\fill64~0_combout\))) ) ) ) # ( \s64[5][34]~146_combout\ & ( !\s64[5][2]~130_combout\ & ( (!\Y~0_combout\ & (((\Y~36_combout\) # 
-- (\Y_32_extended[31]~0_combout\)))) # (\Y~0_combout\ & (\fill64~0_combout\ & ((!\Y~36_combout\)))) ) ) ) # ( !\s64[5][34]~146_combout\ & ( !\s64[5][2]~130_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # 
-- (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill64~0_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_Y~36_combout\,
	datae => \ALT_INV_s64[5][34]~146_combout\,
	dataf => \ALT_INV_s64[5][2]~130_combout\,
	combout => \Y~68_combout\);

-- Location: LABCELL_X43_Y48_N18
\Y~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = ( \s64[5][35]~185_combout\ & ( \s64[5][3]~169_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][35]~185_combout\ & ( \s64[5][3]~169_combout\ 
-- & ( (!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\ & ((!\Y~36_combout\)))) # (\Y~0_combout\ & (((\Y~36_combout\) # (\fill64~0_combout\)))) ) ) ) # ( \s64[5][35]~185_combout\ & ( !\s64[5][3]~169_combout\ & ( (!\Y~0_combout\ & (((\Y~36_combout\)) # 
-- (\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (((\fill64~0_combout\ & !\Y~36_combout\)))) ) ) ) # ( !\s64[5][35]~185_combout\ & ( !\s64[5][3]~169_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & 
-- ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_32_extended[31]~0_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y~36_combout\,
	datae => \ALT_INV_s64[5][35]~185_combout\,
	dataf => \ALT_INV_s64[5][3]~169_combout\,
	combout => \Y~69_combout\);

-- Location: MLABCELL_X44_Y49_N34
\Y~70\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = ( \s64[5][36]~200_combout\ & ( \s64[5][4]~193_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][36]~200_combout\ & ( \s64[5][4]~193_combout\ 
-- & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (\Y~0_combout\)) ) ) ) # ( \s64[5][36]~200_combout\ & ( !\s64[5][4]~193_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) ) # ( !\s64[5][36]~200_combout\ & ( !\s64[5][4]~193_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][36]~200_combout\,
	dataf => \ALT_INV_s64[5][4]~193_combout\,
	combout => \Y~70_combout\);

-- Location: MLABCELL_X44_Y48_N34
\Y~71\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = ( \s64[5][37]~214_combout\ & ( \s64[5][5]~207_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][37]~214_combout\ & ( \s64[5][5]~207_combout\ 
-- & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][37]~214_combout\ & ( !\s64[5][5]~207_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][37]~214_combout\ & ( !\s64[5][5]~207_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y~0_combout\,
	datae => \ALT_INV_s64[5][37]~214_combout\,
	dataf => \ALT_INV_s64[5][5]~207_combout\,
	combout => \Y~71_combout\);

-- Location: MLABCELL_X42_Y49_N16
\Y~72\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = ( \s64[5][38]~228_combout\ & ( \s64[5][6]~221_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][38]~228_combout\ & ( \s64[5][6]~221_combout\ 
-- & ( (!\Y~0_combout\ & (!\Y~36_combout\ & ((\Y_32_extended[31]~0_combout\)))) # (\Y~0_combout\ & (((\fill64~0_combout\)) # (\Y~36_combout\))) ) ) ) # ( \s64[5][38]~228_combout\ & ( !\s64[5][6]~221_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y_32_extended[31]~0_combout\)) # (\Y~36_combout\))) # (\Y~0_combout\ & (!\Y~36_combout\ & (\fill64~0_combout\))) ) ) ) # ( !\s64[5][38]~228_combout\ & ( !\s64[5][6]~221_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][38]~228_combout\,
	dataf => \ALT_INV_s64[5][6]~221_combout\,
	combout => \Y~72_combout\);

-- Location: LABCELL_X45_Y48_N36
\Y~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = ( \s64[5][39]~242_combout\ & ( \s64[5][7]~235_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][39]~242_combout\ & ( \s64[5][7]~235_combout\ 
-- & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][39]~242_combout\ & ( !\s64[5][7]~235_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][39]~242_combout\ & ( !\s64[5][7]~235_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][39]~242_combout\,
	dataf => \ALT_INV_s64[5][7]~235_combout\,
	combout => \Y~73_combout\);

-- Location: MLABCELL_X42_Y48_N6
\s64[5][8]~322\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][8]~322_combout\ = ( \s64[4][24]~243_combout\ & ( (!\B[4]~input_o\ & ((\s64[4][8]~247_combout\))) # (\B[4]~input_o\ & (!\Equal0~0_combout\)) ) ) # ( !\s64[4][24]~243_combout\ & ( (!\B[4]~input_o\ & \s64[4][8]~247_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[4][8]~247_combout\,
	dataf => \ALT_INV_s64[4][24]~243_combout\,
	combout => \s64[5][8]~322_combout\);

-- Location: MLABCELL_X42_Y48_N32
\Y~74\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = ( \s64[5][40]~246_combout\ & ( \s64[5][8]~322_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][40]~246_combout\ & ( \s64[5][8]~322_combout\ 
-- & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][40]~246_combout\ & ( !\s64[5][8]~322_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][40]~246_combout\ & ( !\s64[5][8]~322_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y~0_combout\,
	datae => \ALT_INV_s64[5][40]~246_combout\,
	dataf => \ALT_INV_s64[5][8]~322_combout\,
	combout => \Y~74_combout\);

-- Location: MLABCELL_X42_Y46_N6
\s64[5][9]~323\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[5][9]~323_combout\ = ( \s64[4][25]~248_combout\ & ( (!\B[4]~input_o\ & (\s64[4][9]~252_combout\)) # (\B[4]~input_o\ & ((!\Equal0~0_combout\))) ) ) # ( !\s64[4][25]~248_combout\ & ( (!\B[4]~input_o\ & \s64[4][9]~252_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111000010100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_s64[4][9]~252_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[4][25]~248_combout\,
	combout => \s64[5][9]~323_combout\);

-- Location: MLABCELL_X42_Y46_N34
\Y~75\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = ( \s64[5][41]~251_combout\ & ( \s64[5][9]~323_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][41]~251_combout\ & ( \s64[5][9]~323_combout\ 
-- & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][41]~251_combout\ & ( !\s64[5][9]~323_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][41]~251_combout\ & ( !\s64[5][9]~323_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][41]~251_combout\,
	dataf => \ALT_INV_s64[5][9]~323_combout\,
	combout => \Y~75_combout\);

-- Location: MLABCELL_X44_Y49_N18
\Y~76\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = ( \s64[5][42]~258_combout\ & ( \s64[5][10]~255_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][42]~258_combout\ & ( 
-- \s64[5][10]~255_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (\Y~0_combout\)) ) ) ) # ( \s64[5][42]~258_combout\ & ( !\s64[5][10]~255_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) ) # ( !\s64[5][42]~258_combout\ & ( !\s64[5][10]~255_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][42]~258_combout\,
	dataf => \ALT_INV_s64[5][10]~255_combout\,
	combout => \Y~76_combout\);

-- Location: MLABCELL_X44_Y48_N36
\Y~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = ( \s64[5][43]~264_combout\ & ( \s64[5][11]~261_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][43]~264_combout\ & ( 
-- \s64[5][11]~261_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][43]~264_combout\ & ( !\s64[5][11]~261_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][43]~264_combout\ & ( !\s64[5][11]~261_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][43]~264_combout\,
	dataf => \ALT_INV_s64[5][11]~261_combout\,
	combout => \Y~77_combout\);

-- Location: MLABCELL_X44_Y48_N32
\Y~78\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = ( \s64[5][44]~270_combout\ & ( \s64[5][12]~267_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][44]~270_combout\ & ( 
-- \s64[5][12]~267_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][44]~270_combout\ & ( !\s64[5][12]~267_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][44]~270_combout\ & ( !\s64[5][12]~267_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][44]~270_combout\,
	dataf => \ALT_INV_s64[5][12]~267_combout\,
	combout => \Y~78_combout\);

-- Location: LABCELL_X43_Y49_N36
\Y~79\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = ( \s64[5][45]~276_combout\ & ( \s64[5][13]~273_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][45]~276_combout\ & ( 
-- \s64[5][13]~273_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (\Y~0_combout\)) ) ) ) # ( \s64[5][45]~276_combout\ & ( !\s64[5][13]~273_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) ) # ( !\s64[5][45]~276_combout\ & ( !\s64[5][13]~273_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][45]~276_combout\,
	dataf => \ALT_INV_s64[5][13]~273_combout\,
	combout => \Y~79_combout\);

-- Location: LABCELL_X45_Y49_N36
\Y~80\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = ( \s64[5][46]~282_combout\ & ( \s64[5][14]~279_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][46]~282_combout\ & ( 
-- \s64[5][14]~279_combout\ & ( (!\Y~0_combout\ & (!\Y~36_combout\ & (\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (((\fill64~0_combout\)) # (\Y~36_combout\))) ) ) ) # ( \s64[5][46]~282_combout\ & ( !\s64[5][14]~279_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y_32_extended[31]~0_combout\)) # (\Y~36_combout\))) # (\Y~0_combout\ & (!\Y~36_combout\ & ((\fill64~0_combout\)))) ) ) ) # ( !\s64[5][46]~282_combout\ & ( !\s64[5][14]~279_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][46]~282_combout\,
	dataf => \ALT_INV_s64[5][14]~279_combout\,
	combout => \Y~80_combout\);

-- Location: MLABCELL_X42_Y48_N38
\Y~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = ( \s64[5][47]~288_combout\ & ( \s64[5][15]~285_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][47]~288_combout\ & ( 
-- \s64[5][15]~285_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][47]~288_combout\ & ( !\s64[5][15]~285_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][47]~288_combout\ & ( !\s64[5][15]~285_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][47]~288_combout\,
	dataf => \ALT_INV_s64[5][15]~285_combout\,
	combout => \Y~81_combout\);

-- Location: LABCELL_X43_Y45_N18
\Y~82\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = ( \s64[5][48]~290_combout\ & ( \s64[5][16]~289_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][48]~290_combout\ & ( 
-- \s64[5][16]~289_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (\Y~0_combout\)) ) ) ) # ( \s64[5][48]~290_combout\ & ( !\s64[5][16]~289_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) ) # ( !\s64[5][48]~290_combout\ & ( !\s64[5][16]~289_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][48]~290_combout\,
	dataf => \ALT_INV_s64[5][16]~289_combout\,
	combout => \Y~82_combout\);

-- Location: MLABCELL_X42_Y49_N32
\Y~83\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = ( \s64[5][49]~292_combout\ & ( \s64[5][17]~291_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][49]~292_combout\ & ( 
-- \s64[5][17]~291_combout\ & ( (!\Y~0_combout\ & (!\Y~36_combout\ & ((\Y_32_extended[31]~0_combout\)))) # (\Y~0_combout\ & (((\fill64~0_combout\)) # (\Y~36_combout\))) ) ) ) # ( \s64[5][49]~292_combout\ & ( !\s64[5][17]~291_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y_32_extended[31]~0_combout\)) # (\Y~36_combout\))) # (\Y~0_combout\ & (!\Y~36_combout\ & (\fill64~0_combout\))) ) ) ) # ( !\s64[5][49]~292_combout\ & ( !\s64[5][17]~291_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][49]~292_combout\,
	dataf => \ALT_INV_s64[5][17]~291_combout\,
	combout => \Y~83_combout\);

-- Location: MLABCELL_X44_Y45_N38
\Y~84\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = ( \s64[5][50]~294_combout\ & ( \s64[5][18]~293_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][50]~294_combout\ & ( 
-- \s64[5][18]~293_combout\ & ( (!\Y~0_combout\ & (((!\Y~36_combout\ & \Y_32_extended[31]~0_combout\)))) # (\Y~0_combout\ & (((\Y~36_combout\)) # (\fill64~0_combout\))) ) ) ) # ( \s64[5][50]~294_combout\ & ( !\s64[5][18]~293_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y_32_extended[31]~0_combout\) # (\Y~36_combout\)))) # (\Y~0_combout\ & (\fill64~0_combout\ & (!\Y~36_combout\))) ) ) ) # ( !\s64[5][50]~294_combout\ & ( !\s64[5][18]~293_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill64~0_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y~36_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][50]~294_combout\,
	dataf => \ALT_INV_s64[5][18]~293_combout\,
	combout => \Y~84_combout\);

-- Location: LABCELL_X43_Y48_N16
\Y~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = ( \s64[5][51]~296_combout\ & ( \s64[5][19]~295_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][51]~296_combout\ & ( 
-- \s64[5][19]~295_combout\ & ( (!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\ & (!\Y~36_combout\))) # (\Y~0_combout\ & (((\fill64~0_combout\) # (\Y~36_combout\)))) ) ) ) # ( \s64[5][51]~296_combout\ & ( !\s64[5][19]~295_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y~36_combout\)) # (\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (((!\Y~36_combout\ & \fill64~0_combout\)))) ) ) ) # ( !\s64[5][51]~296_combout\ & ( !\s64[5][19]~295_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_32_extended[31]~0_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y~36_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][51]~296_combout\,
	dataf => \ALT_INV_s64[5][19]~295_combout\,
	combout => \Y~85_combout\);

-- Location: MLABCELL_X44_Y49_N32
\Y~86\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = ( \s64[5][52]~298_combout\ & ( \s64[5][20]~297_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][52]~298_combout\ & ( 
-- \s64[5][20]~297_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (\Y~0_combout\)) ) ) ) # ( \s64[5][52]~298_combout\ & ( !\s64[5][20]~297_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) ) # ( !\s64[5][52]~298_combout\ & ( !\s64[5][20]~297_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][52]~298_combout\,
	dataf => \ALT_INV_s64[5][20]~297_combout\,
	combout => \Y~86_combout\);

-- Location: LABCELL_X45_Y46_N16
\Y~87\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = ( \s64[5][53]~300_combout\ & ( \s64[5][21]~299_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][53]~300_combout\ & ( 
-- \s64[5][21]~299_combout\ & ( (!\Y~0_combout\ & (((\Y_32_extended[31]~0_combout\ & !\Y~36_combout\)))) # (\Y~0_combout\ & (((\Y~36_combout\)) # (\fill64~0_combout\))) ) ) ) # ( \s64[5][53]~300_combout\ & ( !\s64[5][21]~299_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y~36_combout\) # (\Y_32_extended[31]~0_combout\)))) # (\Y~0_combout\ & (\fill64~0_combout\ & ((!\Y~36_combout\)))) ) ) ) # ( !\s64[5][53]~300_combout\ & ( !\s64[5][21]~299_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill64~0_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_Y~36_combout\,
	datae => \ALT_INV_s64[5][53]~300_combout\,
	dataf => \ALT_INV_s64[5][21]~299_combout\,
	combout => \Y~87_combout\);

-- Location: MLABCELL_X42_Y49_N18
\Y~88\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = ( \s64[5][54]~302_combout\ & ( \s64[5][22]~301_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][54]~302_combout\ & ( 
-- \s64[5][22]~301_combout\ & ( (!\Y~0_combout\ & (!\Y~36_combout\ & (\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (((\fill64~0_combout\)) # (\Y~36_combout\))) ) ) ) # ( \s64[5][54]~302_combout\ & ( !\s64[5][22]~301_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y_32_extended[31]~0_combout\)) # (\Y~36_combout\))) # (\Y~0_combout\ & (!\Y~36_combout\ & ((\fill64~0_combout\)))) ) ) ) # ( !\s64[5][54]~302_combout\ & ( !\s64[5][22]~301_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][54]~302_combout\,
	dataf => \ALT_INV_s64[5][22]~301_combout\,
	combout => \Y~88_combout\);

-- Location: LABCELL_X45_Y48_N38
\Y~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = ( \s64[5][55]~304_combout\ & ( \s64[5][23]~303_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][55]~304_combout\ & ( 
-- \s64[5][23]~303_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][55]~304_combout\ & ( !\s64[5][23]~303_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][55]~304_combout\ & ( !\s64[5][23]~303_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y~0_combout\,
	datae => \ALT_INV_s64[5][55]~304_combout\,
	dataf => \ALT_INV_s64[5][23]~303_combout\,
	combout => \Y~89_combout\);

-- Location: MLABCELL_X42_Y48_N34
\Y~90\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = ( \s64[5][56]~306_combout\ & ( \s64[5][24]~305_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][56]~306_combout\ & ( 
-- \s64[5][24]~305_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][56]~306_combout\ & ( !\s64[5][24]~305_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][56]~306_combout\ & ( !\s64[5][24]~305_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][56]~306_combout\,
	dataf => \ALT_INV_s64[5][24]~305_combout\,
	combout => \Y~90_combout\);

-- Location: MLABCELL_X42_Y46_N32
\Y~91\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = ( \s64[5][57]~308_combout\ & ( \s64[5][25]~307_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][57]~308_combout\ & ( 
-- \s64[5][25]~307_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][57]~308_combout\ & ( !\s64[5][25]~307_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][57]~308_combout\ & ( !\s64[5][25]~307_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_Y~0_combout\,
	datae => \ALT_INV_s64[5][57]~308_combout\,
	dataf => \ALT_INV_s64[5][25]~307_combout\,
	combout => \Y~91_combout\);

-- Location: MLABCELL_X44_Y49_N16
\Y~92\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = ( \s64[5][58]~310_combout\ & ( \s64[5][26]~309_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][58]~310_combout\ & ( 
-- \s64[5][26]~309_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (\Y~0_combout\)) ) ) ) # ( \s64[5][58]~310_combout\ & ( !\s64[5][26]~309_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) ) # ( !\s64[5][58]~310_combout\ & ( !\s64[5][26]~309_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_Y_32_extended[31]~0_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[5][58]~310_combout\,
	dataf => \ALT_INV_s64[5][26]~309_combout\,
	combout => \Y~92_combout\);

-- Location: MLABCELL_X44_Y48_N38
\Y~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = ( \s64[5][59]~312_combout\ & ( \s64[5][27]~311_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][59]~312_combout\ & ( 
-- \s64[5][27]~311_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][59]~312_combout\ & ( !\s64[5][27]~311_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][59]~312_combout\ & ( !\s64[5][27]~311_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y~0_combout\,
	datae => \ALT_INV_s64[5][59]~312_combout\,
	dataf => \ALT_INV_s64[5][27]~311_combout\,
	combout => \Y~93_combout\);

-- Location: LABCELL_X43_Y49_N38
\Y~94\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = ( \s64[5][60]~314_combout\ & ( \s64[5][28]~313_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][60]~314_combout\ & ( 
-- \s64[5][28]~313_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (\Y~0_combout\)) ) ) ) # ( \s64[5][60]~314_combout\ & ( !\s64[5][28]~313_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (!\Y~0_combout\)) ) ) ) # ( !\s64[5][60]~314_combout\ & ( !\s64[5][28]~313_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][60]~314_combout\,
	dataf => \ALT_INV_s64[5][28]~313_combout\,
	combout => \Y~94_combout\);

-- Location: LABCELL_X45_Y46_N18
\Y~95\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~95_combout\ = ( \s64[5][61]~316_combout\ & ( \s64[5][29]~315_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][61]~316_combout\ & ( 
-- \s64[5][29]~315_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][61]~316_combout\ & ( !\s64[5][29]~315_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][61]~316_combout\ & ( !\s64[5][29]~315_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill64~0_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_Y~36_combout\,
	datad => \ALT_INV_Y~0_combout\,
	datae => \ALT_INV_s64[5][61]~316_combout\,
	dataf => \ALT_INV_s64[5][29]~315_combout\,
	combout => \Y~95_combout\);

-- Location: LABCELL_X45_Y49_N38
\Y~96\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~96_combout\ = ( \s64[5][62]~318_combout\ & ( \s64[5][30]~317_combout\ & ( ((!\Y~0_combout\ & ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][62]~318_combout\ & ( 
-- \s64[5][30]~317_combout\ & ( (!\Y~0_combout\ & (!\Y~36_combout\ & ((\Y_32_extended[31]~0_combout\)))) # (\Y~0_combout\ & (((\fill64~0_combout\)) # (\Y~36_combout\))) ) ) ) # ( \s64[5][62]~318_combout\ & ( !\s64[5][30]~317_combout\ & ( (!\Y~0_combout\ & 
-- (((\Y_32_extended[31]~0_combout\)) # (\Y~36_combout\))) # (\Y~0_combout\ & (!\Y~36_combout\ & (\fill64~0_combout\))) ) ) ) # ( !\s64[5][62]~318_combout\ & ( !\s64[5][30]~317_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & 
-- ((\Y_32_extended[31]~0_combout\))) # (\Y~0_combout\ & (\fill64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y_32_extended[31]~0_combout\,
	datae => \ALT_INV_s64[5][62]~318_combout\,
	dataf => \ALT_INV_s64[5][30]~317_combout\,
	combout => \Y~96_combout\);

-- Location: MLABCELL_X42_Y48_N36
\Y~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~97_combout\ = ( \s64[5][63]~319_combout\ & ( \s64[5][31]~320_combout\ & ( ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\)))) # (\Y~36_combout\) ) ) ) # ( !\s64[5][63]~319_combout\ & ( 
-- \s64[5][31]~320_combout\ & ( (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((\Y~0_combout\)))) ) ) ) # ( \s64[5][63]~319_combout\ & ( !\s64[5][31]~320_combout\ & ( 
-- (!\Y~36_combout\ & ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) # (\Y~36_combout\ & (((!\Y~0_combout\)))) ) ) ) # ( !\s64[5][63]~319_combout\ & ( !\s64[5][31]~320_combout\ & ( (!\Y~36_combout\ & 
-- ((!\Y~0_combout\ & (\Y_32_extended[31]~0_combout\)) # (\Y~0_combout\ & ((\fill64~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y_32_extended[31]~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y~0_combout\,
	datae => \ALT_INV_s64[5][63]~319_combout\,
	dataf => \ALT_INV_s64[5][31]~320_combout\,
	combout => \Y~97_combout\);

-- Location: IOIBUF_X13_Y0_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X10_Y56_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X17_Y56_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y21_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y16_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X13_Y0_N94
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X19_Y0_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X25_Y0_N94
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X19_Y56_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X3_Y0_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X15_Y0_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y12_N63
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X3_Y56_N32
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X30_Y0_N32
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X23_Y56_N63
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X11_Y0_N94
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X7_Y56_N32
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X59_Y22_N63
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X33_Y0_N32
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X3_Y0_N63
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X17_Y56_N94
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X19_Y0_N32
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X12_Y56_N1
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X22_Y0_N32
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X11_Y0_N32
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X52_Y0_N63
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X18_Y0_N32
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X35_Y0_N63
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X3_Y56_N1
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X9_Y0_N32
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X5_Y0_N32
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\B[63]~input\ : arriaii_io_ibuf
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


