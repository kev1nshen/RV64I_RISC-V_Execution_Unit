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

-- DATE "04/07/2026 21:32:51"

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
-- B[6]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \A_in[53]~21_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A_in[52]~20_combout\ : std_logic;
SIGNAL \stage[1][10]~27_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A_in[55]~23_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A_in[54]~22_combout\ : std_logic;
SIGNAL \stage[1][8]~26_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A_in[50]~18_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \A_in[51]~19_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \stage[1][12]~28_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A_in[48]~16_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A_in[49]~17_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \stage[1][14]~29_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \stage[3][8]~30_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A_in[47]~15_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A_in[46]~14_combout\ : std_logic;
SIGNAL \stage[1][16]~31_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \A_in[40]~8_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A_in[41]~9_combout\ : std_logic;
SIGNAL \stage[1][22]~34_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \A_in[44]~12_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A_in[45]~13_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \stage[1][18]~32_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \A_in[42]~10_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A_in[43]~11_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \stage[1][20]~33_combout\ : std_logic;
SIGNAL \stage[3][16]~35_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A_in[37]~5_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A_in[36]~4_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \stage[1][26]~37_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A_in[32]~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A_in[33]~1_combout\ : std_logic;
SIGNAL \stage[1][30]~39_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A_in[38]~6_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A_in[39]~7_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \stage[1][24]~36_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A_in[34]~2_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A_in[35]~3_combout\ : std_logic;
SIGNAL \stage[1][28]~38_combout\ : std_logic;
SIGNAL \stage[3][24]~40_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A_in[56]~24_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A_in[57]~25_combout\ : std_logic;
SIGNAL \stage[1][6]~24_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A_in[58]~26_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A_in[59]~27_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \stage[1][4]~23_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A_in[62]~30_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \A_in[63]~31_combout\ : std_logic;
SIGNAL \stage[5][0]~21_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A_in[61]~29_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A_in[60]~28_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \stage[1][2]~22_combout\ : std_logic;
SIGNAL \stage[5][0]~25_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \stage[5][0]~41_combout\ : std_logic;
SIGNAL \A_rev[63]~0_combout\ : std_logic;
SIGNAL \fill~0_combout\ : std_logic;
SIGNAL \A_rev[63]~1_combout\ : std_logic;
SIGNAL \stage[5][55]~42_combout\ : std_logic;
SIGNAL \stage[3][63]~43_combout\ : std_logic;
SIGNAL \stage[5][63]~44_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \shamt[5]~0_combout\ : std_logic;
SIGNAL \stage[1][50]~11_combout\ : std_logic;
SIGNAL \stage[1][52]~12_combout\ : std_logic;
SIGNAL \stage[1][48]~10_combout\ : std_logic;
SIGNAL \stage[1][54]~13_combout\ : std_logic;
SIGNAL \stage[3][48]~14_combout\ : std_logic;
SIGNAL \stage[1][62]~18_combout\ : std_logic;
SIGNAL \stage[1][60]~17_combout\ : std_logic;
SIGNAL \stage[1][56]~15_combout\ : std_logic;
SIGNAL \stage[1][58]~16_combout\ : std_logic;
SIGNAL \stage[3][56]~19_combout\ : std_logic;
SIGNAL \stage[1][40]~5_combout\ : std_logic;
SIGNAL \stage[1][46]~8_combout\ : std_logic;
SIGNAL \stage[1][42]~6_combout\ : std_logic;
SIGNAL \stage[1][44]~7_combout\ : std_logic;
SIGNAL \stage[3][40]~9_combout\ : std_logic;
SIGNAL \stage[1][36]~2_combout\ : std_logic;
SIGNAL \stage[1][34]~1_combout\ : std_logic;
SIGNAL \stage[1][32]~0_combout\ : std_logic;
SIGNAL \stage[1][38]~3_combout\ : std_logic;
SIGNAL \stage[3][32]~4_combout\ : std_logic;
SIGNAL \stage[5][32]~20_combout\ : std_logic;
SIGNAL \Y~183_combout\ : std_logic;
SIGNAL \stage[1][49]~55_combout\ : std_logic;
SIGNAL \stage[1][53]~57_combout\ : std_logic;
SIGNAL \stage[1][51]~56_combout\ : std_logic;
SIGNAL \stage[1][55]~58_combout\ : std_logic;
SIGNAL \stage[3][49]~59_combout\ : std_logic;
SIGNAL \stage[1][57]~60_combout\ : std_logic;
SIGNAL \stage[1][61]~62_combout\ : std_logic;
SIGNAL \stage[1][59]~61_combout\ : std_logic;
SIGNAL \stage[1][63]~63_combout\ : std_logic;
SIGNAL \stage[3][57]~64_combout\ : std_logic;
SIGNAL \stage[1][39]~48_combout\ : std_logic;
SIGNAL \stage[1][33]~45_combout\ : std_logic;
SIGNAL \stage[1][35]~46_combout\ : std_logic;
SIGNAL \stage[1][37]~47_combout\ : std_logic;
SIGNAL \stage[3][33]~49_combout\ : std_logic;
SIGNAL \stage[1][41]~50_combout\ : std_logic;
SIGNAL \stage[1][43]~51_combout\ : std_logic;
SIGNAL \stage[1][47]~53_combout\ : std_logic;
SIGNAL \stage[1][45]~52_combout\ : std_logic;
SIGNAL \stage[3][41]~54_combout\ : std_logic;
SIGNAL \stage[5][33]~65_combout\ : std_logic;
SIGNAL \stage[1][7]~69_combout\ : std_logic;
SIGNAL \stage[1][5]~68_combout\ : std_logic;
SIGNAL \stage[1][3]~67_combout\ : std_logic;
SIGNAL \stage[5][1]~66_combout\ : std_logic;
SIGNAL \stage[5][1]~70_combout\ : std_logic;
SIGNAL \stage[1][19]~77_combout\ : std_logic;
SIGNAL \stage[1][23]~79_combout\ : std_logic;
SIGNAL \stage[1][21]~78_combout\ : std_logic;
SIGNAL \stage[1][17]~76_combout\ : std_logic;
SIGNAL \stage[3][17]~80_combout\ : std_logic;
SIGNAL \stage[1][15]~74_combout\ : std_logic;
SIGNAL \stage[1][11]~72_combout\ : std_logic;
SIGNAL \stage[1][9]~71_combout\ : std_logic;
SIGNAL \stage[1][13]~73_combout\ : std_logic;
SIGNAL \stage[3][9]~75_combout\ : std_logic;
SIGNAL \stage[1][29]~83_combout\ : std_logic;
SIGNAL \stage[1][27]~82_combout\ : std_logic;
SIGNAL \stage[1][25]~81_combout\ : std_logic;
SIGNAL \stage[1][31]~84_combout\ : std_logic;
SIGNAL \stage[3][25]~85_combout\ : std_logic;
SIGNAL \stage[5][1]~86_combout\ : std_logic;
SIGNAL \stage[5][62]~87_combout\ : std_logic;
SIGNAL \Y~179_combout\ : std_logic;
SIGNAL \stage[5][2]~93_combout\ : std_logic;
SIGNAL \stage[3][10]~94_combout\ : std_logic;
SIGNAL \stage[3][26]~96_combout\ : std_logic;
SIGNAL \stage[3][18]~95_combout\ : std_logic;
SIGNAL \stage[5][2]~97_combout\ : std_logic;
SIGNAL \stage[5][61]~98_combout\ : std_logic;
SIGNAL \stage[3][34]~88_combout\ : std_logic;
SIGNAL \stage[3][50]~90_combout\ : std_logic;
SIGNAL \stage[3][58]~91_combout\ : std_logic;
SIGNAL \stage[3][42]~89_combout\ : std_logic;
SIGNAL \stage[5][34]~92_combout\ : std_logic;
SIGNAL \Y~175_combout\ : std_logic;
SIGNAL \stage[3][51]~101_combout\ : std_logic;
SIGNAL \stage[3][59]~102_combout\ : std_logic;
SIGNAL \stage[3][35]~99_combout\ : std_logic;
SIGNAL \stage[3][43]~100_combout\ : std_logic;
SIGNAL \stage[5][35]~103_combout\ : std_logic;
SIGNAL \stage[5][60]~109_combout\ : std_logic;
SIGNAL \stage[5][3]~104_combout\ : std_logic;
SIGNAL \stage[3][11]~105_combout\ : std_logic;
SIGNAL \stage[3][19]~106_combout\ : std_logic;
SIGNAL \stage[3][27]~107_combout\ : std_logic;
SIGNAL \stage[5][3]~108_combout\ : std_logic;
SIGNAL \Y~171_combout\ : std_logic;
SIGNAL \stage[3][44]~111_combout\ : std_logic;
SIGNAL \stage[3][36]~110_combout\ : std_logic;
SIGNAL \stage[3][60]~113_combout\ : std_logic;
SIGNAL \stage[3][52]~112_combout\ : std_logic;
SIGNAL \stage[5][36]~114_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \stage[5][4]~115_combout\ : std_logic;
SIGNAL \stage[3][20]~117_combout\ : std_logic;
SIGNAL \stage[3][12]~116_combout\ : std_logic;
SIGNAL \stage[3][28]~118_combout\ : std_logic;
SIGNAL \stage[5][4]~119_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \stage[5][5]~125_combout\ : std_logic;
SIGNAL \stage[3][13]~126_combout\ : std_logic;
SIGNAL \stage[3][21]~127_combout\ : std_logic;
SIGNAL \stage[3][29]~128_combout\ : std_logic;
SIGNAL \stage[5][5]~129_combout\ : std_logic;
SIGNAL \stage[3][37]~120_combout\ : std_logic;
SIGNAL \stage[3][53]~122_combout\ : std_logic;
SIGNAL \stage[3][45]~121_combout\ : std_logic;
SIGNAL \stage[3][61]~123_combout\ : std_logic;
SIGNAL \stage[5][37]~124_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \stage[3][22]~137_combout\ : std_logic;
SIGNAL \stage[3][14]~136_combout\ : std_logic;
SIGNAL \stage[3][30]~138_combout\ : std_logic;
SIGNAL \stage[5][6]~135_combout\ : std_logic;
SIGNAL \stage[5][6]~139_combout\ : std_logic;
SIGNAL \stage[3][62]~133_combout\ : std_logic;
SIGNAL \stage[3][38]~130_combout\ : std_logic;
SIGNAL \stage[3][54]~132_combout\ : std_logic;
SIGNAL \stage[3][46]~131_combout\ : std_logic;
SIGNAL \stage[5][38]~134_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \stage[3][39]~140_combout\ : std_logic;
SIGNAL \stage[3][55]~142_combout\ : std_logic;
SIGNAL \stage[3][47]~141_combout\ : std_logic;
SIGNAL \stage[3][63]~143_combout\ : std_logic;
SIGNAL \stage[5][39]~144_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \stage[3][23]~147_combout\ : std_logic;
SIGNAL \stage[3][15]~146_combout\ : std_logic;
SIGNAL \stage[3][31]~148_combout\ : std_logic;
SIGNAL \stage[5][7]~145_combout\ : std_logic;
SIGNAL \stage[5][7]~149_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \stage[5][8]~151_combout\ : std_logic;
SIGNAL \stage[5][55]~152_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \stage[5][40]~150_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \stage[5][41]~153_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \stage[5][9]~154_combout\ : std_logic;
SIGNAL \Y~167_combout\ : std_logic;
SIGNAL \stage[5][42]~155_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \stage[5][10]~156_combout\ : std_logic;
SIGNAL \Y~163_combout\ : std_logic;
SIGNAL \stage[5][43]~157_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \stage[5][11]~158_combout\ : std_logic;
SIGNAL \Y~159_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \stage[5][44]~159_combout\ : std_logic;
SIGNAL \stage[5][12]~160_combout\ : std_logic;
SIGNAL \Y~155_combout\ : std_logic;
SIGNAL \stage[5][45]~161_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \stage[5][13]~162_combout\ : std_logic;
SIGNAL \Y~151_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \stage[5][46]~163_combout\ : std_logic;
SIGNAL \stage[5][14]~164_combout\ : std_logic;
SIGNAL \Y~147_combout\ : std_logic;
SIGNAL \stage[5][47]~165_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \stage[5][15]~166_combout\ : std_logic;
SIGNAL \Y~143_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \stage[5][16]~167_combout\ : std_logic;
SIGNAL \Y~139_combout\ : std_logic;
SIGNAL \stage[5][17]~168_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \Y~135_combout\ : std_logic;
SIGNAL \stage[5][18]~169_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~131_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \stage[5][19]~170_combout\ : std_logic;
SIGNAL \Y~127_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \stage[5][20]~171_combout\ : std_logic;
SIGNAL \Y~123_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \stage[5][21]~172_combout\ : std_logic;
SIGNAL \Y~119_combout\ : std_logic;
SIGNAL \stage[5][22]~173_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~115_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \stage[5][23]~174_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \stage[5][24]~175_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \stage[5][25]~176_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \stage[5][26]~177_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \stage[5][27]~178_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \stage[5][28]~179_combout\ : std_logic;
SIGNAL \Y~111_combout\ : std_logic;
SIGNAL \stage[5][29]~180_combout\ : std_logic;
SIGNAL \Y~107_combout\ : std_logic;
SIGNAL \stage[5][30]~181_combout\ : std_logic;
SIGNAL \Y~103_combout\ : std_logic;
SIGNAL \stage[5][31]~182_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \stage[5][59]~183_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \stage[5][58]~184_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
SIGNAL \stage[5][57]~185_combout\ : std_logic;
SIGNAL \Y~51_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \stage[5][56]~186_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \Y~54_combout\ : std_logic;
SIGNAL \stage[5][55]~187_combout\ : std_logic;
SIGNAL \Y~55_combout\ : std_logic;
SIGNAL \Y~56_combout\ : std_logic;
SIGNAL \stage[5][54]~188_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \stage[5][53]~189_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \stage[5][52]~190_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \stage[5][51]~191_combout\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \stage[5][50]~192_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \stage[5][49]~193_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \stage[5][48]~194_combout\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
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
SIGNAL \Y~98_combout\ : std_logic;
SIGNAL \Y~99_combout\ : std_logic;
SIGNAL \Y~100_combout\ : std_logic;
SIGNAL \Y~101_combout\ : std_logic;
SIGNAL \Y~102_combout\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y~101_combout\ : std_logic;
SIGNAL \ALT_INV_Y~99_combout\ : std_logic;
SIGNAL \ALT_INV_Y~97_combout\ : std_logic;
SIGNAL \ALT_INV_Y~95_combout\ : std_logic;
SIGNAL \ALT_INV_Y~93_combout\ : std_logic;
SIGNAL \ALT_INV_Y~91_combout\ : std_logic;
SIGNAL \ALT_INV_Y~89_combout\ : std_logic;
SIGNAL \ALT_INV_Y~87_combout\ : std_logic;
SIGNAL \ALT_INV_Y~85_combout\ : std_logic;
SIGNAL \ALT_INV_Y~83_combout\ : std_logic;
SIGNAL \ALT_INV_Y~81_combout\ : std_logic;
SIGNAL \ALT_INV_Y~79_combout\ : std_logic;
SIGNAL \ALT_INV_Y~77_combout\ : std_logic;
SIGNAL \ALT_INV_Y~75_combout\ : std_logic;
SIGNAL \ALT_INV_Y~73_combout\ : std_logic;
SIGNAL \ALT_INV_Y~71_combout\ : std_logic;
SIGNAL \ALT_INV_Y~69_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][48]~194_combout\ : std_logic;
SIGNAL \ALT_INV_Y~67_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][49]~193_combout\ : std_logic;
SIGNAL \ALT_INV_Y~65_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][50]~192_combout\ : std_logic;
SIGNAL \ALT_INV_Y~63_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][51]~191_combout\ : std_logic;
SIGNAL \ALT_INV_Y~61_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][52]~190_combout\ : std_logic;
SIGNAL \ALT_INV_Y~59_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][53]~189_combout\ : std_logic;
SIGNAL \ALT_INV_Y~57_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][54]~188_combout\ : std_logic;
SIGNAL \ALT_INV_Y~55_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][55]~187_combout\ : std_logic;
SIGNAL \ALT_INV_Y~53_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][56]~186_combout\ : std_logic;
SIGNAL \ALT_INV_Y~51_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][57]~185_combout\ : std_logic;
SIGNAL \ALT_INV_Y~49_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][58]~184_combout\ : std_logic;
SIGNAL \ALT_INV_Y~47_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][59]~183_combout\ : std_logic;
SIGNAL \ALT_INV_Y~45_combout\ : std_logic;
SIGNAL \ALT_INV_Y~43_combout\ : std_logic;
SIGNAL \ALT_INV_Y~41_combout\ : std_logic;
SIGNAL \ALT_INV_Y~39_combout\ : std_logic;
SIGNAL \ALT_INV_Y~37_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][31]~182_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][30]~181_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][29]~180_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][28]~179_combout\ : std_logic;
SIGNAL \ALT_INV_Y~35_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][27]~178_combout\ : std_logic;
SIGNAL \ALT_INV_Y~33_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][26]~177_combout\ : std_logic;
SIGNAL \ALT_INV_Y~31_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][25]~176_combout\ : std_logic;
SIGNAL \ALT_INV_Y~29_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][24]~175_combout\ : std_logic;
SIGNAL \ALT_INV_Y~27_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][23]~174_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][22]~173_combout\ : std_logic;
SIGNAL \ALT_INV_Y~26_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][21]~172_combout\ : std_logic;
SIGNAL \ALT_INV_Y~25_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][20]~171_combout\ : std_logic;
SIGNAL \ALT_INV_Y~24_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][19]~170_combout\ : std_logic;
SIGNAL \ALT_INV_Y~23_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][18]~169_combout\ : std_logic;
SIGNAL \ALT_INV_Y~22_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][17]~168_combout\ : std_logic;
SIGNAL \ALT_INV_Y~21_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][16]~167_combout\ : std_logic;
SIGNAL \ALT_INV_Y~20_combout\ : std_logic;
SIGNAL \ALT_INV_Y~19_combout\ : std_logic;
SIGNAL \ALT_INV_Y~18_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][15]~166_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][47]~165_combout\ : std_logic;
SIGNAL \ALT_INV_Y~17_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][14]~164_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][46]~163_combout\ : std_logic;
SIGNAL \ALT_INV_Y~16_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][13]~162_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][45]~161_combout\ : std_logic;
SIGNAL \ALT_INV_Y~15_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][12]~160_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][44]~159_combout\ : std_logic;
SIGNAL \ALT_INV_Y~14_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][11]~158_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][43]~157_combout\ : std_logic;
SIGNAL \ALT_INV_Y~13_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][10]~156_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][42]~155_combout\ : std_logic;
SIGNAL \ALT_INV_Y~12_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][9]~154_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][41]~153_combout\ : std_logic;
SIGNAL \ALT_INV_Y~11_combout\ : std_logic;
SIGNAL \ALT_INV_Y~9_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][55]~152_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][26]~37_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][24]~36_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][16]~35_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][22]~34_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][20]~33_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][18]~32_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][16]~31_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][8]~30_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][14]~29_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][12]~28_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][10]~27_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][8]~26_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][0]~25_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][6]~24_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][4]~23_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][2]~22_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][0]~21_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][32]~20_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][56]~19_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][62]~18_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[63]~31_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[62]~30_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][60]~17_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[61]~29_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[60]~28_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][58]~16_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[59]~27_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[58]~26_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][56]~15_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[57]~25_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[56]~24_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][48]~14_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][54]~13_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[55]~23_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[54]~22_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][52]~12_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[53]~21_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[52]~20_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][50]~11_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[51]~19_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[50]~18_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][48]~10_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[49]~17_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[48]~16_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][40]~9_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][46]~8_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[47]~15_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[46]~14_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][44]~7_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[45]~13_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[44]~12_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][42]~6_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[43]~11_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[42]~10_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][40]~5_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[41]~9_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[40]~8_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][32]~4_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][38]~3_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[39]~7_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[38]~6_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][36]~2_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[37]~5_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[36]~4_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][34]~1_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[35]~3_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[34]~2_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][32]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[33]~1_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[32]~0_combout\ : std_logic;
SIGNAL \ALT_INV_shamt[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][8]~151_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][40]~150_combout\ : std_logic;
SIGNAL \ALT_INV_Y~7_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][7]~149_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][31]~148_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][23]~147_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][15]~146_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][7]~145_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][39]~144_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][63]~143_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][55]~142_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][47]~141_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][39]~140_combout\ : std_logic;
SIGNAL \ALT_INV_Y~5_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][6]~139_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][30]~138_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][22]~137_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][14]~136_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][6]~135_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][38]~134_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][62]~133_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][54]~132_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][46]~131_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][38]~130_combout\ : std_logic;
SIGNAL \ALT_INV_Y~3_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][5]~129_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][29]~128_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][21]~127_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][13]~126_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][5]~125_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][37]~124_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][61]~123_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][53]~122_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][45]~121_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][37]~120_combout\ : std_logic;
SIGNAL \ALT_INV_Y~1_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][4]~119_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][28]~118_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][20]~117_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][12]~116_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][4]~115_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][36]~114_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][60]~113_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][52]~112_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][44]~111_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][36]~110_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][60]~109_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][3]~108_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][27]~107_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][19]~106_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][11]~105_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][3]~104_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][35]~103_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][59]~102_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][51]~101_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][43]~100_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][35]~99_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][61]~98_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][2]~97_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][26]~96_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][18]~95_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][10]~94_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][2]~93_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][34]~92_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][58]~91_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][50]~90_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][42]~89_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][34]~88_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][62]~87_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][1]~86_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][25]~85_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][31]~84_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][29]~83_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][27]~82_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][25]~81_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][17]~80_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][23]~79_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][21]~78_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][19]~77_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][17]~76_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][9]~75_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][15]~74_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][13]~73_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][11]~72_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][9]~71_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][1]~70_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][7]~69_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][5]~68_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][3]~67_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][1]~66_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][33]~65_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][57]~64_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][63]~63_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][61]~62_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][59]~61_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][57]~60_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][49]~59_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][55]~58_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][53]~57_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][51]~56_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][49]~55_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][41]~54_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][47]~53_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][45]~52_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][43]~51_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][41]~50_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][33]~49_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][39]~48_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][37]~47_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][35]~46_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][33]~45_combout\ : std_logic;
SIGNAL \ALT_INV_Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][63]~44_combout\ : std_logic;
SIGNAL \ALT_INV_fill~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][63]~43_combout\ : std_logic;
SIGNAL \ALT_INV_A_rev[63]~1_combout\ : std_logic;
SIGNAL \ALT_INV_A_rev[63]~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][55]~42_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[5][0]~41_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][24]~40_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][30]~39_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][28]~38_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_Y~101_combout\ <= NOT \Y~101_combout\;
\ALT_INV_Y~99_combout\ <= NOT \Y~99_combout\;
\ALT_INV_Y~97_combout\ <= NOT \Y~97_combout\;
\ALT_INV_Y~95_combout\ <= NOT \Y~95_combout\;
\ALT_INV_Y~93_combout\ <= NOT \Y~93_combout\;
\ALT_INV_Y~91_combout\ <= NOT \Y~91_combout\;
\ALT_INV_Y~89_combout\ <= NOT \Y~89_combout\;
\ALT_INV_Y~87_combout\ <= NOT \Y~87_combout\;
\ALT_INV_Y~85_combout\ <= NOT \Y~85_combout\;
\ALT_INV_Y~83_combout\ <= NOT \Y~83_combout\;
\ALT_INV_Y~81_combout\ <= NOT \Y~81_combout\;
\ALT_INV_Y~79_combout\ <= NOT \Y~79_combout\;
\ALT_INV_Y~77_combout\ <= NOT \Y~77_combout\;
\ALT_INV_Y~75_combout\ <= NOT \Y~75_combout\;
\ALT_INV_Y~73_combout\ <= NOT \Y~73_combout\;
\ALT_INV_Y~71_combout\ <= NOT \Y~71_combout\;
\ALT_INV_Y~69_combout\ <= NOT \Y~69_combout\;
\ALT_INV_stage[5][48]~194_combout\ <= NOT \stage[5][48]~194_combout\;
\ALT_INV_Y~67_combout\ <= NOT \Y~67_combout\;
\ALT_INV_stage[5][49]~193_combout\ <= NOT \stage[5][49]~193_combout\;
\ALT_INV_Y~65_combout\ <= NOT \Y~65_combout\;
\ALT_INV_stage[5][50]~192_combout\ <= NOT \stage[5][50]~192_combout\;
\ALT_INV_Y~63_combout\ <= NOT \Y~63_combout\;
\ALT_INV_stage[5][51]~191_combout\ <= NOT \stage[5][51]~191_combout\;
\ALT_INV_Y~61_combout\ <= NOT \Y~61_combout\;
\ALT_INV_stage[5][52]~190_combout\ <= NOT \stage[5][52]~190_combout\;
\ALT_INV_Y~59_combout\ <= NOT \Y~59_combout\;
\ALT_INV_stage[5][53]~189_combout\ <= NOT \stage[5][53]~189_combout\;
\ALT_INV_Y~57_combout\ <= NOT \Y~57_combout\;
\ALT_INV_stage[5][54]~188_combout\ <= NOT \stage[5][54]~188_combout\;
\ALT_INV_Y~55_combout\ <= NOT \Y~55_combout\;
\ALT_INV_stage[5][55]~187_combout\ <= NOT \stage[5][55]~187_combout\;
\ALT_INV_Y~53_combout\ <= NOT \Y~53_combout\;
\ALT_INV_stage[5][56]~186_combout\ <= NOT \stage[5][56]~186_combout\;
\ALT_INV_Y~51_combout\ <= NOT \Y~51_combout\;
\ALT_INV_stage[5][57]~185_combout\ <= NOT \stage[5][57]~185_combout\;
\ALT_INV_Y~49_combout\ <= NOT \Y~49_combout\;
\ALT_INV_stage[5][58]~184_combout\ <= NOT \stage[5][58]~184_combout\;
\ALT_INV_Y~47_combout\ <= NOT \Y~47_combout\;
\ALT_INV_stage[5][59]~183_combout\ <= NOT \stage[5][59]~183_combout\;
\ALT_INV_Y~45_combout\ <= NOT \Y~45_combout\;
\ALT_INV_Y~43_combout\ <= NOT \Y~43_combout\;
\ALT_INV_Y~41_combout\ <= NOT \Y~41_combout\;
\ALT_INV_Y~39_combout\ <= NOT \Y~39_combout\;
\ALT_INV_Y~37_combout\ <= NOT \Y~37_combout\;
\ALT_INV_stage[5][31]~182_combout\ <= NOT \stage[5][31]~182_combout\;
\ALT_INV_stage[5][30]~181_combout\ <= NOT \stage[5][30]~181_combout\;
\ALT_INV_stage[5][29]~180_combout\ <= NOT \stage[5][29]~180_combout\;
\ALT_INV_stage[5][28]~179_combout\ <= NOT \stage[5][28]~179_combout\;
\ALT_INV_Y~35_combout\ <= NOT \Y~35_combout\;
\ALT_INV_stage[5][27]~178_combout\ <= NOT \stage[5][27]~178_combout\;
\ALT_INV_Y~33_combout\ <= NOT \Y~33_combout\;
\ALT_INV_stage[5][26]~177_combout\ <= NOT \stage[5][26]~177_combout\;
\ALT_INV_Y~31_combout\ <= NOT \Y~31_combout\;
\ALT_INV_stage[5][25]~176_combout\ <= NOT \stage[5][25]~176_combout\;
\ALT_INV_Y~29_combout\ <= NOT \Y~29_combout\;
\ALT_INV_stage[5][24]~175_combout\ <= NOT \stage[5][24]~175_combout\;
\ALT_INV_Y~27_combout\ <= NOT \Y~27_combout\;
\ALT_INV_stage[5][23]~174_combout\ <= NOT \stage[5][23]~174_combout\;
\ALT_INV_stage[5][22]~173_combout\ <= NOT \stage[5][22]~173_combout\;
\ALT_INV_Y~26_combout\ <= NOT \Y~26_combout\;
\ALT_INV_stage[5][21]~172_combout\ <= NOT \stage[5][21]~172_combout\;
\ALT_INV_Y~25_combout\ <= NOT \Y~25_combout\;
\ALT_INV_stage[5][20]~171_combout\ <= NOT \stage[5][20]~171_combout\;
\ALT_INV_Y~24_combout\ <= NOT \Y~24_combout\;
\ALT_INV_stage[5][19]~170_combout\ <= NOT \stage[5][19]~170_combout\;
\ALT_INV_Y~23_combout\ <= NOT \Y~23_combout\;
\ALT_INV_stage[5][18]~169_combout\ <= NOT \stage[5][18]~169_combout\;
\ALT_INV_Y~22_combout\ <= NOT \Y~22_combout\;
\ALT_INV_stage[5][17]~168_combout\ <= NOT \stage[5][17]~168_combout\;
\ALT_INV_Y~21_combout\ <= NOT \Y~21_combout\;
\ALT_INV_stage[5][16]~167_combout\ <= NOT \stage[5][16]~167_combout\;
\ALT_INV_Y~20_combout\ <= NOT \Y~20_combout\;
\ALT_INV_Y~19_combout\ <= NOT \Y~19_combout\;
\ALT_INV_Y~18_combout\ <= NOT \Y~18_combout\;
\ALT_INV_stage[5][15]~166_combout\ <= NOT \stage[5][15]~166_combout\;
\ALT_INV_stage[5][47]~165_combout\ <= NOT \stage[5][47]~165_combout\;
\ALT_INV_Y~17_combout\ <= NOT \Y~17_combout\;
\ALT_INV_stage[5][14]~164_combout\ <= NOT \stage[5][14]~164_combout\;
\ALT_INV_stage[5][46]~163_combout\ <= NOT \stage[5][46]~163_combout\;
\ALT_INV_Y~16_combout\ <= NOT \Y~16_combout\;
\ALT_INV_stage[5][13]~162_combout\ <= NOT \stage[5][13]~162_combout\;
\ALT_INV_stage[5][45]~161_combout\ <= NOT \stage[5][45]~161_combout\;
\ALT_INV_Y~15_combout\ <= NOT \Y~15_combout\;
\ALT_INV_stage[5][12]~160_combout\ <= NOT \stage[5][12]~160_combout\;
\ALT_INV_stage[5][44]~159_combout\ <= NOT \stage[5][44]~159_combout\;
\ALT_INV_Y~14_combout\ <= NOT \Y~14_combout\;
\ALT_INV_stage[5][11]~158_combout\ <= NOT \stage[5][11]~158_combout\;
\ALT_INV_stage[5][43]~157_combout\ <= NOT \stage[5][43]~157_combout\;
\ALT_INV_Y~13_combout\ <= NOT \Y~13_combout\;
\ALT_INV_stage[5][10]~156_combout\ <= NOT \stage[5][10]~156_combout\;
\ALT_INV_stage[5][42]~155_combout\ <= NOT \stage[5][42]~155_combout\;
\ALT_INV_Y~12_combout\ <= NOT \Y~12_combout\;
\ALT_INV_stage[5][9]~154_combout\ <= NOT \stage[5][9]~154_combout\;
\ALT_INV_stage[5][41]~153_combout\ <= NOT \stage[5][41]~153_combout\;
\ALT_INV_Y~11_combout\ <= NOT \Y~11_combout\;
\ALT_INV_Y~9_combout\ <= NOT \Y~9_combout\;
\ALT_INV_stage[5][55]~152_combout\ <= NOT \stage[5][55]~152_combout\;
\ALT_INV_stage[1][26]~37_combout\ <= NOT \stage[1][26]~37_combout\;
\ALT_INV_stage[1][24]~36_combout\ <= NOT \stage[1][24]~36_combout\;
\ALT_INV_stage[3][16]~35_combout\ <= NOT \stage[3][16]~35_combout\;
\ALT_INV_stage[1][22]~34_combout\ <= NOT \stage[1][22]~34_combout\;
\ALT_INV_stage[1][20]~33_combout\ <= NOT \stage[1][20]~33_combout\;
\ALT_INV_stage[1][18]~32_combout\ <= NOT \stage[1][18]~32_combout\;
\ALT_INV_stage[1][16]~31_combout\ <= NOT \stage[1][16]~31_combout\;
\ALT_INV_stage[3][8]~30_combout\ <= NOT \stage[3][8]~30_combout\;
\ALT_INV_stage[1][14]~29_combout\ <= NOT \stage[1][14]~29_combout\;
\ALT_INV_stage[1][12]~28_combout\ <= NOT \stage[1][12]~28_combout\;
\ALT_INV_stage[1][10]~27_combout\ <= NOT \stage[1][10]~27_combout\;
\ALT_INV_stage[1][8]~26_combout\ <= NOT \stage[1][8]~26_combout\;
\ALT_INV_stage[5][0]~25_combout\ <= NOT \stage[5][0]~25_combout\;
\ALT_INV_stage[1][6]~24_combout\ <= NOT \stage[1][6]~24_combout\;
\ALT_INV_stage[1][4]~23_combout\ <= NOT \stage[1][4]~23_combout\;
\ALT_INV_stage[1][2]~22_combout\ <= NOT \stage[1][2]~22_combout\;
\ALT_INV_stage[5][0]~21_combout\ <= NOT \stage[5][0]~21_combout\;
\ALT_INV_stage[5][32]~20_combout\ <= NOT \stage[5][32]~20_combout\;
\ALT_INV_stage[3][56]~19_combout\ <= NOT \stage[3][56]~19_combout\;
\ALT_INV_stage[1][62]~18_combout\ <= NOT \stage[1][62]~18_combout\;
\ALT_INV_A_in[63]~31_combout\ <= NOT \A_in[63]~31_combout\;
\ALT_INV_A_in[62]~30_combout\ <= NOT \A_in[62]~30_combout\;
\ALT_INV_stage[1][60]~17_combout\ <= NOT \stage[1][60]~17_combout\;
\ALT_INV_A_in[61]~29_combout\ <= NOT \A_in[61]~29_combout\;
\ALT_INV_A_in[60]~28_combout\ <= NOT \A_in[60]~28_combout\;
\ALT_INV_stage[1][58]~16_combout\ <= NOT \stage[1][58]~16_combout\;
\ALT_INV_A_in[59]~27_combout\ <= NOT \A_in[59]~27_combout\;
\ALT_INV_A_in[58]~26_combout\ <= NOT \A_in[58]~26_combout\;
\ALT_INV_stage[1][56]~15_combout\ <= NOT \stage[1][56]~15_combout\;
\ALT_INV_A_in[57]~25_combout\ <= NOT \A_in[57]~25_combout\;
\ALT_INV_A_in[56]~24_combout\ <= NOT \A_in[56]~24_combout\;
\ALT_INV_stage[3][48]~14_combout\ <= NOT \stage[3][48]~14_combout\;
\ALT_INV_stage[1][54]~13_combout\ <= NOT \stage[1][54]~13_combout\;
\ALT_INV_A_in[55]~23_combout\ <= NOT \A_in[55]~23_combout\;
\ALT_INV_A_in[54]~22_combout\ <= NOT \A_in[54]~22_combout\;
\ALT_INV_stage[1][52]~12_combout\ <= NOT \stage[1][52]~12_combout\;
\ALT_INV_A_in[53]~21_combout\ <= NOT \A_in[53]~21_combout\;
\ALT_INV_A_in[52]~20_combout\ <= NOT \A_in[52]~20_combout\;
\ALT_INV_stage[1][50]~11_combout\ <= NOT \stage[1][50]~11_combout\;
\ALT_INV_A_in[51]~19_combout\ <= NOT \A_in[51]~19_combout\;
\ALT_INV_A_in[50]~18_combout\ <= NOT \A_in[50]~18_combout\;
\ALT_INV_stage[1][48]~10_combout\ <= NOT \stage[1][48]~10_combout\;
\ALT_INV_A_in[49]~17_combout\ <= NOT \A_in[49]~17_combout\;
\ALT_INV_A_in[48]~16_combout\ <= NOT \A_in[48]~16_combout\;
\ALT_INV_stage[3][40]~9_combout\ <= NOT \stage[3][40]~9_combout\;
\ALT_INV_stage[1][46]~8_combout\ <= NOT \stage[1][46]~8_combout\;
\ALT_INV_A_in[47]~15_combout\ <= NOT \A_in[47]~15_combout\;
\ALT_INV_A_in[46]~14_combout\ <= NOT \A_in[46]~14_combout\;
\ALT_INV_stage[1][44]~7_combout\ <= NOT \stage[1][44]~7_combout\;
\ALT_INV_A_in[45]~13_combout\ <= NOT \A_in[45]~13_combout\;
\ALT_INV_A_in[44]~12_combout\ <= NOT \A_in[44]~12_combout\;
\ALT_INV_stage[1][42]~6_combout\ <= NOT \stage[1][42]~6_combout\;
\ALT_INV_A_in[43]~11_combout\ <= NOT \A_in[43]~11_combout\;
\ALT_INV_A_in[42]~10_combout\ <= NOT \A_in[42]~10_combout\;
\ALT_INV_stage[1][40]~5_combout\ <= NOT \stage[1][40]~5_combout\;
\ALT_INV_A_in[41]~9_combout\ <= NOT \A_in[41]~9_combout\;
\ALT_INV_A_in[40]~8_combout\ <= NOT \A_in[40]~8_combout\;
\ALT_INV_stage[3][32]~4_combout\ <= NOT \stage[3][32]~4_combout\;
\ALT_INV_stage[1][38]~3_combout\ <= NOT \stage[1][38]~3_combout\;
\ALT_INV_A_in[39]~7_combout\ <= NOT \A_in[39]~7_combout\;
\ALT_INV_A_in[38]~6_combout\ <= NOT \A_in[38]~6_combout\;
\ALT_INV_stage[1][36]~2_combout\ <= NOT \stage[1][36]~2_combout\;
\ALT_INV_A_in[37]~5_combout\ <= NOT \A_in[37]~5_combout\;
\ALT_INV_A_in[36]~4_combout\ <= NOT \A_in[36]~4_combout\;
\ALT_INV_stage[1][34]~1_combout\ <= NOT \stage[1][34]~1_combout\;
\ALT_INV_A_in[35]~3_combout\ <= NOT \A_in[35]~3_combout\;
\ALT_INV_A_in[34]~2_combout\ <= NOT \A_in[34]~2_combout\;
\ALT_INV_stage[1][32]~0_combout\ <= NOT \stage[1][32]~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_A_in[33]~1_combout\ <= NOT \A_in[33]~1_combout\;
\ALT_INV_A_in[32]~0_combout\ <= NOT \A_in[32]~0_combout\;
\ALT_INV_shamt[5]~0_combout\ <= NOT \shamt[5]~0_combout\;
\ALT_INV_stage[5][8]~151_combout\ <= NOT \stage[5][8]~151_combout\;
\ALT_INV_stage[5][40]~150_combout\ <= NOT \stage[5][40]~150_combout\;
\ALT_INV_Y~7_combout\ <= NOT \Y~7_combout\;
\ALT_INV_stage[5][7]~149_combout\ <= NOT \stage[5][7]~149_combout\;
\ALT_INV_stage[3][31]~148_combout\ <= NOT \stage[3][31]~148_combout\;
\ALT_INV_stage[3][23]~147_combout\ <= NOT \stage[3][23]~147_combout\;
\ALT_INV_stage[3][15]~146_combout\ <= NOT \stage[3][15]~146_combout\;
\ALT_INV_stage[5][7]~145_combout\ <= NOT \stage[5][7]~145_combout\;
\ALT_INV_stage[5][39]~144_combout\ <= NOT \stage[5][39]~144_combout\;
\ALT_INV_stage[3][63]~143_combout\ <= NOT \stage[3][63]~143_combout\;
\ALT_INV_stage[3][55]~142_combout\ <= NOT \stage[3][55]~142_combout\;
\ALT_INV_stage[3][47]~141_combout\ <= NOT \stage[3][47]~141_combout\;
\ALT_INV_stage[3][39]~140_combout\ <= NOT \stage[3][39]~140_combout\;
\ALT_INV_Y~5_combout\ <= NOT \Y~5_combout\;
\ALT_INV_stage[5][6]~139_combout\ <= NOT \stage[5][6]~139_combout\;
\ALT_INV_stage[3][30]~138_combout\ <= NOT \stage[3][30]~138_combout\;
\ALT_INV_stage[3][22]~137_combout\ <= NOT \stage[3][22]~137_combout\;
\ALT_INV_stage[3][14]~136_combout\ <= NOT \stage[3][14]~136_combout\;
\ALT_INV_stage[5][6]~135_combout\ <= NOT \stage[5][6]~135_combout\;
\ALT_INV_stage[5][38]~134_combout\ <= NOT \stage[5][38]~134_combout\;
\ALT_INV_stage[3][62]~133_combout\ <= NOT \stage[3][62]~133_combout\;
\ALT_INV_stage[3][54]~132_combout\ <= NOT \stage[3][54]~132_combout\;
\ALT_INV_stage[3][46]~131_combout\ <= NOT \stage[3][46]~131_combout\;
\ALT_INV_stage[3][38]~130_combout\ <= NOT \stage[3][38]~130_combout\;
\ALT_INV_Y~3_combout\ <= NOT \Y~3_combout\;
\ALT_INV_stage[5][5]~129_combout\ <= NOT \stage[5][5]~129_combout\;
\ALT_INV_stage[3][29]~128_combout\ <= NOT \stage[3][29]~128_combout\;
\ALT_INV_stage[3][21]~127_combout\ <= NOT \stage[3][21]~127_combout\;
\ALT_INV_stage[3][13]~126_combout\ <= NOT \stage[3][13]~126_combout\;
\ALT_INV_stage[5][5]~125_combout\ <= NOT \stage[5][5]~125_combout\;
\ALT_INV_stage[5][37]~124_combout\ <= NOT \stage[5][37]~124_combout\;
\ALT_INV_stage[3][61]~123_combout\ <= NOT \stage[3][61]~123_combout\;
\ALT_INV_stage[3][53]~122_combout\ <= NOT \stage[3][53]~122_combout\;
\ALT_INV_stage[3][45]~121_combout\ <= NOT \stage[3][45]~121_combout\;
\ALT_INV_stage[3][37]~120_combout\ <= NOT \stage[3][37]~120_combout\;
\ALT_INV_Y~1_combout\ <= NOT \Y~1_combout\;
\ALT_INV_stage[5][4]~119_combout\ <= NOT \stage[5][4]~119_combout\;
\ALT_INV_stage[3][28]~118_combout\ <= NOT \stage[3][28]~118_combout\;
\ALT_INV_stage[3][20]~117_combout\ <= NOT \stage[3][20]~117_combout\;
\ALT_INV_stage[3][12]~116_combout\ <= NOT \stage[3][12]~116_combout\;
\ALT_INV_stage[5][4]~115_combout\ <= NOT \stage[5][4]~115_combout\;
\ALT_INV_stage[5][36]~114_combout\ <= NOT \stage[5][36]~114_combout\;
\ALT_INV_stage[3][60]~113_combout\ <= NOT \stage[3][60]~113_combout\;
\ALT_INV_stage[3][52]~112_combout\ <= NOT \stage[3][52]~112_combout\;
\ALT_INV_stage[3][44]~111_combout\ <= NOT \stage[3][44]~111_combout\;
\ALT_INV_stage[3][36]~110_combout\ <= NOT \stage[3][36]~110_combout\;
\ALT_INV_stage[5][60]~109_combout\ <= NOT \stage[5][60]~109_combout\;
\ALT_INV_stage[5][3]~108_combout\ <= NOT \stage[5][3]~108_combout\;
\ALT_INV_stage[3][27]~107_combout\ <= NOT \stage[3][27]~107_combout\;
\ALT_INV_stage[3][19]~106_combout\ <= NOT \stage[3][19]~106_combout\;
\ALT_INV_stage[3][11]~105_combout\ <= NOT \stage[3][11]~105_combout\;
\ALT_INV_stage[5][3]~104_combout\ <= NOT \stage[5][3]~104_combout\;
\ALT_INV_stage[5][35]~103_combout\ <= NOT \stage[5][35]~103_combout\;
\ALT_INV_stage[3][59]~102_combout\ <= NOT \stage[3][59]~102_combout\;
\ALT_INV_stage[3][51]~101_combout\ <= NOT \stage[3][51]~101_combout\;
\ALT_INV_stage[3][43]~100_combout\ <= NOT \stage[3][43]~100_combout\;
\ALT_INV_stage[3][35]~99_combout\ <= NOT \stage[3][35]~99_combout\;
\ALT_INV_stage[5][61]~98_combout\ <= NOT \stage[5][61]~98_combout\;
\ALT_INV_stage[5][2]~97_combout\ <= NOT \stage[5][2]~97_combout\;
\ALT_INV_stage[3][26]~96_combout\ <= NOT \stage[3][26]~96_combout\;
\ALT_INV_stage[3][18]~95_combout\ <= NOT \stage[3][18]~95_combout\;
\ALT_INV_stage[3][10]~94_combout\ <= NOT \stage[3][10]~94_combout\;
\ALT_INV_stage[5][2]~93_combout\ <= NOT \stage[5][2]~93_combout\;
\ALT_INV_stage[5][34]~92_combout\ <= NOT \stage[5][34]~92_combout\;
\ALT_INV_stage[3][58]~91_combout\ <= NOT \stage[3][58]~91_combout\;
\ALT_INV_stage[3][50]~90_combout\ <= NOT \stage[3][50]~90_combout\;
\ALT_INV_stage[3][42]~89_combout\ <= NOT \stage[3][42]~89_combout\;
\ALT_INV_stage[3][34]~88_combout\ <= NOT \stage[3][34]~88_combout\;
\ALT_INV_stage[5][62]~87_combout\ <= NOT \stage[5][62]~87_combout\;
\ALT_INV_stage[5][1]~86_combout\ <= NOT \stage[5][1]~86_combout\;
\ALT_INV_stage[3][25]~85_combout\ <= NOT \stage[3][25]~85_combout\;
\ALT_INV_stage[1][31]~84_combout\ <= NOT \stage[1][31]~84_combout\;
\ALT_INV_stage[1][29]~83_combout\ <= NOT \stage[1][29]~83_combout\;
\ALT_INV_stage[1][27]~82_combout\ <= NOT \stage[1][27]~82_combout\;
\ALT_INV_stage[1][25]~81_combout\ <= NOT \stage[1][25]~81_combout\;
\ALT_INV_stage[3][17]~80_combout\ <= NOT \stage[3][17]~80_combout\;
\ALT_INV_stage[1][23]~79_combout\ <= NOT \stage[1][23]~79_combout\;
\ALT_INV_stage[1][21]~78_combout\ <= NOT \stage[1][21]~78_combout\;
\ALT_INV_stage[1][19]~77_combout\ <= NOT \stage[1][19]~77_combout\;
\ALT_INV_stage[1][17]~76_combout\ <= NOT \stage[1][17]~76_combout\;
\ALT_INV_stage[3][9]~75_combout\ <= NOT \stage[3][9]~75_combout\;
\ALT_INV_stage[1][15]~74_combout\ <= NOT \stage[1][15]~74_combout\;
\ALT_INV_stage[1][13]~73_combout\ <= NOT \stage[1][13]~73_combout\;
\ALT_INV_stage[1][11]~72_combout\ <= NOT \stage[1][11]~72_combout\;
\ALT_INV_stage[1][9]~71_combout\ <= NOT \stage[1][9]~71_combout\;
\ALT_INV_stage[5][1]~70_combout\ <= NOT \stage[5][1]~70_combout\;
\ALT_INV_stage[1][7]~69_combout\ <= NOT \stage[1][7]~69_combout\;
\ALT_INV_stage[1][5]~68_combout\ <= NOT \stage[1][5]~68_combout\;
\ALT_INV_stage[1][3]~67_combout\ <= NOT \stage[1][3]~67_combout\;
\ALT_INV_stage[5][1]~66_combout\ <= NOT \stage[5][1]~66_combout\;
\ALT_INV_stage[5][33]~65_combout\ <= NOT \stage[5][33]~65_combout\;
\ALT_INV_stage[3][57]~64_combout\ <= NOT \stage[3][57]~64_combout\;
\ALT_INV_stage[1][63]~63_combout\ <= NOT \stage[1][63]~63_combout\;
\ALT_INV_stage[1][61]~62_combout\ <= NOT \stage[1][61]~62_combout\;
\ALT_INV_stage[1][59]~61_combout\ <= NOT \stage[1][59]~61_combout\;
\ALT_INV_stage[1][57]~60_combout\ <= NOT \stage[1][57]~60_combout\;
\ALT_INV_stage[3][49]~59_combout\ <= NOT \stage[3][49]~59_combout\;
\ALT_INV_stage[1][55]~58_combout\ <= NOT \stage[1][55]~58_combout\;
\ALT_INV_stage[1][53]~57_combout\ <= NOT \stage[1][53]~57_combout\;
\ALT_INV_stage[1][51]~56_combout\ <= NOT \stage[1][51]~56_combout\;
\ALT_INV_stage[1][49]~55_combout\ <= NOT \stage[1][49]~55_combout\;
\ALT_INV_stage[3][41]~54_combout\ <= NOT \stage[3][41]~54_combout\;
\ALT_INV_stage[1][47]~53_combout\ <= NOT \stage[1][47]~53_combout\;
\ALT_INV_stage[1][45]~52_combout\ <= NOT \stage[1][45]~52_combout\;
\ALT_INV_stage[1][43]~51_combout\ <= NOT \stage[1][43]~51_combout\;
\ALT_INV_stage[1][41]~50_combout\ <= NOT \stage[1][41]~50_combout\;
\ALT_INV_stage[3][33]~49_combout\ <= NOT \stage[3][33]~49_combout\;
\ALT_INV_stage[1][39]~48_combout\ <= NOT \stage[1][39]~48_combout\;
\ALT_INV_stage[1][37]~47_combout\ <= NOT \stage[1][37]~47_combout\;
\ALT_INV_stage[1][35]~46_combout\ <= NOT \stage[1][35]~46_combout\;
\ALT_INV_stage[1][33]~45_combout\ <= NOT \stage[1][33]~45_combout\;
\ALT_INV_Y~0_combout\ <= NOT \Y~0_combout\;
\ALT_INV_stage[5][63]~44_combout\ <= NOT \stage[5][63]~44_combout\;
\ALT_INV_fill~0_combout\ <= NOT \fill~0_combout\;
\ALT_INV_stage[3][63]~43_combout\ <= NOT \stage[3][63]~43_combout\;
\ALT_INV_A_rev[63]~1_combout\ <= NOT \A_rev[63]~1_combout\;
\ALT_INV_A_rev[63]~0_combout\ <= NOT \A_rev[63]~0_combout\;
\ALT_INV_stage[5][55]~42_combout\ <= NOT \stage[5][55]~42_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_stage[5][0]~41_combout\ <= NOT \stage[5][0]~41_combout\;
\ALT_INV_stage[3][24]~40_combout\ <= NOT \stage[3][24]~40_combout\;
\ALT_INV_stage[1][30]~39_combout\ <= NOT \stage[1][30]~39_combout\;
\ALT_INV_stage[1][28]~38_combout\ <= NOT \stage[1][28]~38_combout\;

-- Location: IOOBUF_X59_Y18_N2
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~183_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~179_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X25_Y56_N5
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~175_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X59_Y31_N36
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~171_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X49_Y56_N67
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~2_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X53_Y56_N36
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~4_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X59_Y48_N67
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~6_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X59_Y30_N36
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~8_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X59_Y49_N2
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~10_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~167_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X59_Y28_N98
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~163_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X59_Y21_N33
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~159_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X59_Y51_N33
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~155_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X59_Y28_N2
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~151_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X49_Y56_N2
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~147_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~143_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X59_Y48_N36
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~139_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X56_Y56_N33
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~135_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X59_Y33_N98
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~131_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X59_Y51_N98
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~127_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~123_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X59_Y21_N5
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~119_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~115_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X56_Y56_N95
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X49_Y56_N36
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~32_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X59_Y21_N98
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~34_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X53_Y56_N98
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~36_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X59_Y46_N36
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~111_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~107_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X55_Y56_N67
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~103_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X59_Y34_N2
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~38_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X59_Y30_N2
\Y[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~40_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\Y[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~42_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X59_Y30_N98
\Y[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~44_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X35_Y56_N36
\Y[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~46_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\Y[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~48_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X55_Y56_N98
\Y[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~50_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X49_Y56_N98
\Y[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~52_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X53_Y56_N67
\Y[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~54_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
\Y[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~56_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\Y[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~58_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X40_Y56_N33
\Y[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~60_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X36_Y56_N67
\Y[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~62_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X59_Y34_N67
\Y[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~64_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\Y[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~66_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X38_Y56_N98
\Y[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~68_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X55_Y56_N5
\Y[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~70_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X56_Y56_N64
\Y[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~72_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\Y[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~74_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\Y[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~76_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X59_Y22_N2
\Y[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~78_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X36_Y56_N2
\Y[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~80_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\Y[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~82_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\Y[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~84_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\Y[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~86_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\Y[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~88_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X38_Y56_N36
\Y[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~90_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X33_Y56_N5
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

-- Location: IOOBUF_X31_Y56_N98
\Y[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~94_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X59_Y36_N2
\Y[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~96_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\Y[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~98_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X40_Y56_N67
\Y[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~100_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X59_Y25_N67
\Y[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~102_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X59_Y36_N94
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X51_Y56_N63
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X59_Y46_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X43_Y44_N36
\A_in[53]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[53]~21_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[53]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[53]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[53]~21_combout\);

-- Location: IOIBUF_X59_Y31_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X45_Y40_N2
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X59_Y39_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X30_Y56_N32
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X43_Y40_N34
\A_in[52]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[52]~20_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[52]~input_o\)))) # (\ExtWord~input_o\ & (\A[31]~input_o\ & ((\ShiftFN[1]~input_o\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[52]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000111010000110000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \A_in[52]~20_combout\);

-- Location: LABCELL_X43_Y39_N14
\stage[1][10]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][10]~27_combout\ = ( \A[10]~input_o\ & ( \A_in[52]~20_combout\ & ( (!\Equal0~0_combout\ & (((!\B[0]~input_o\) # (\A[11]~input_o\)))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)) # (\A_in[53]~21_combout\))) ) ) ) # ( !\A[10]~input_o\ & ( 
-- \A_in[52]~20_combout\ & ( (!\Equal0~0_combout\ & (((\A[11]~input_o\ & \B[0]~input_o\)))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)) # (\A_in[53]~21_combout\))) ) ) ) # ( \A[10]~input_o\ & ( !\A_in[52]~20_combout\ & ( (!\Equal0~0_combout\ & 
-- (((!\B[0]~input_o\) # (\A[11]~input_o\)))) # (\Equal0~0_combout\ & (\A_in[53]~21_combout\ & ((!\B[0]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A_in[52]~20_combout\ & ( (!\Equal0~0_combout\ & (((\A[11]~input_o\ & \B[0]~input_o\)))) # 
-- (\Equal0~0_combout\ & (\A_in[53]~21_combout\ & ((!\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[53]~21_combout\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A_in[52]~20_combout\,
	combout => \stage[1][10]~27_combout\);

-- Location: IOIBUF_X51_Y56_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X44_Y56_N1
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LABCELL_X43_Y44_N24
\A_in[55]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[55]~23_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[55]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[55]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[55]~23_combout\);

-- Location: IOIBUF_X59_Y51_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X40_Y56_N1
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LABCELL_X43_Y44_N20
\A_in[54]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[54]~22_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[54]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[54]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[54]~22_combout\);

-- Location: MLABCELL_X46_Y40_N14
\stage[1][8]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][8]~26_combout\ = ( \B[0]~input_o\ & ( \A_in[54]~22_combout\ & ( (\Equal0~0_combout\) # (\A[9]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[54]~22_combout\ & ( (!\Equal0~0_combout\ & ((\A[8]~input_o\))) # (\Equal0~0_combout\ & 
-- (\A_in[55]~23_combout\)) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[54]~22_combout\ & ( (\A[9]~input_o\ & !\Equal0~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[54]~22_combout\ & ( (!\Equal0~0_combout\ & ((\A[8]~input_o\))) # (\Equal0~0_combout\ & 
-- (\A_in[55]~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A_in[55]~23_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[54]~22_combout\,
	combout => \stage[1][8]~26_combout\);

-- Location: IOIBUF_X59_Y39_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X42_Y56_N63
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LABCELL_X43_Y44_N12
\A_in[50]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[50]~18_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[50]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[50]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[50]~18_combout\);

-- Location: IOIBUF_X59_Y23_N32
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LABCELL_X47_Y38_N38
\A_in[51]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[51]~19_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[51]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & \A[51]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[51]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[51]~19_combout\);

-- Location: IOIBUF_X59_Y51_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X43_Y39_N18
\stage[1][12]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][12]~28_combout\ = ( \B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\ & (\A[13]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[50]~18_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\) # 
-- (\A_in[51]~19_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & (\A[13]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[50]~18_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[12]~input_o\ & ( (\Equal0~0_combout\ & 
-- \A_in[51]~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A_in[50]~18_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A_in[51]~19_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \stage[1][12]~28_combout\);

-- Location: IOIBUF_X46_Y56_N1
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LABCELL_X45_Y41_N0
\A_in[48]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[48]~16_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[48]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & \A[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[48]~16_combout\);

-- Location: IOIBUF_X59_Y39_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LABCELL_X45_Y41_N26
\A_in[49]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[49]~17_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[49]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & \A[49]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[49]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[49]~17_combout\);

-- Location: IOIBUF_X59_Y49_N32
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X43_Y39_N20
\stage[1][14]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][14]~29_combout\ = ( \B[0]~input_o\ & ( \Equal0~0_combout\ & ( \A_in[48]~16_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \Equal0~0_combout\ & ( \A_in[49]~17_combout\ ) ) ) # ( \B[0]~input_o\ & ( !\Equal0~0_combout\ & ( \A[15]~input_o\ ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\Equal0~0_combout\ & ( \A[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[48]~16_combout\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A_in[49]~17_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \stage[1][14]~29_combout\);

-- Location: IOIBUF_X59_Y39_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y37_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X40_Y37_N26
\stage[3][8]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][8]~30_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \stage[1][14]~29_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \stage[1][10]~27_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \stage[1][12]~28_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \stage[1][8]~26_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][10]~27_combout\,
	datab => \ALT_INV_stage[1][8]~26_combout\,
	datac => \ALT_INV_stage[1][12]~28_combout\,
	datad => \ALT_INV_stage[1][14]~29_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[3][8]~30_combout\);

-- Location: IOIBUF_X38_Y56_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X45_Y41_N18
\A_in[47]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[47]~15_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[47]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & \A[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[47]~15_combout\);

-- Location: IOIBUF_X59_Y26_N1
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X51_Y56_N32
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LABCELL_X43_Y44_N8
\A_in[46]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[46]~14_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[46]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[46]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[46]~14_combout\);

-- Location: LABCELL_X43_Y37_N28
\stage[1][16]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][16]~31_combout\ = ( \B[0]~input_o\ & ( \Equal0~0_combout\ & ( \A_in[46]~14_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \Equal0~0_combout\ & ( \A_in[47]~15_combout\ ) ) ) # ( \B[0]~input_o\ & ( !\Equal0~0_combout\ & ( \A[17]~input_o\ ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\Equal0~0_combout\ & ( \A[16]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_A_in[47]~15_combout\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A_in[46]~14_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \stage[1][16]~31_combout\);

-- Location: IOIBUF_X59_Y33_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y22_N94
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: MLABCELL_X46_Y38_N26
\A_in[40]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[40]~8_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[40]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[40]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[40]~8_combout\);

-- Location: IOIBUF_X59_Y25_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X35_Y56_N1
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LABCELL_X43_Y40_N24
\A_in[41]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[41]~9_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[41]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[41]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \A_in[41]~9_combout\);

-- Location: MLABCELL_X46_Y38_N36
\stage[1][22]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][22]~34_combout\ = ( \A_in[41]~9_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[23]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[40]~8_combout\))) ) ) ) # ( !\A_in[41]~9_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- (\A[23]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[40]~8_combout\))) ) ) ) # ( \A_in[41]~9_combout\ & ( !\B[0]~input_o\ & ( (\A[22]~input_o\) # (\Equal0~0_combout\) ) ) ) # ( !\A_in[41]~9_combout\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- \A[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A_in[40]~8_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A_in[41]~9_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][22]~34_combout\);

-- Location: IOIBUF_X59_Y30_N63
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LABCELL_X47_Y38_N4
\A_in[44]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[44]~12_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[44]~input_o\)))) # (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & \A[44]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[44]~12_combout\);

-- Location: IOIBUF_X44_Y56_N94
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LABCELL_X43_Y44_N6
\A_in[45]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[45]~13_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[45]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[45]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[45]~13_combout\);

-- Location: IOIBUF_X59_Y25_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X59_Y33_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X43_Y37_N32
\stage[1][18]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][18]~32_combout\ = ( \B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[19]~input_o\))) # (\Equal0~0_combout\ & (\A_in[44]~12_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\Equal0~0_combout\) # 
-- (\A_in[45]~13_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[18]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[19]~input_o\))) # (\Equal0~0_combout\ & (\A_in[44]~12_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[18]~input_o\ & ( (\A_in[45]~13_combout\ & 
-- \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[44]~12_combout\,
	datab => \ALT_INV_A_in[45]~13_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \stage[1][18]~32_combout\);

-- Location: IOIBUF_X31_Y56_N63
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X43_Y40_N30
\A_in[42]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[42]~10_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[42]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[42]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[42]~10_combout\);

-- Location: IOIBUF_X59_Y34_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X36_Y56_N32
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LABCELL_X43_Y40_N32
\A_in[43]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[43]~11_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[43]~input_o\)))) # (\ExtWord~input_o\ & (\A[31]~input_o\ & ((\ShiftFN[1]~input_o\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[43]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000111010000110000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \A_in[43]~11_combout\);

-- Location: IOIBUF_X59_Y25_N94
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X43_Y40_N6
\stage[1][20]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][20]~33_combout\ = ( \A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[42]~10_combout\) ) ) ) # ( !\A[21]~input_o\ & ( \B[0]~input_o\ & ( (\Equal0~0_combout\ & \A_in[42]~10_combout\) ) ) ) # ( \A[21]~input_o\ & ( 
-- !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[20]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[43]~11_combout\))) ) ) ) # ( !\A[21]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[20]~input_o\)) # (\Equal0~0_combout\ & 
-- ((\A_in[43]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[42]~10_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A_in[43]~11_combout\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][20]~33_combout\);

-- Location: LABCELL_X40_Y37_N30
\stage[3][16]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][16]~35_combout\ = ( \B[2]~input_o\ & ( \stage[1][20]~33_combout\ & ( (!\B[1]~input_o\) # (\stage[1][22]~34_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][20]~33_combout\ & ( (!\B[1]~input_o\ & (\stage[1][16]~31_combout\)) # (\B[1]~input_o\ & 
-- ((\stage[1][18]~32_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][20]~33_combout\ & ( (\stage[1][22]~34_combout\ & \B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][20]~33_combout\ & ( (!\B[1]~input_o\ & (\stage[1][16]~31_combout\)) # 
-- (\B[1]~input_o\ & ((\stage[1][18]~32_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][16]~31_combout\,
	datab => \ALT_INV_stage[1][22]~34_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][18]~32_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][20]~33_combout\,
	combout => \stage[3][16]~35_combout\);

-- Location: IOIBUF_X59_Y26_N63
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X46_Y56_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LABCELL_X45_Y40_N8
\A_in[37]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[37]~5_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[37]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[37]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \A_in[37]~5_combout\);

-- Location: IOIBUF_X48_Y56_N32
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LABCELL_X45_Y40_N6
\A_in[36]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[36]~4_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[36]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\ & \A[31]~input_o\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[36]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \A_in[36]~4_combout\);

-- Location: IOIBUF_X59_Y23_N63
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: MLABCELL_X44_Y38_N38
\stage[1][26]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][26]~37_combout\ = ( \Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A_in[36]~4_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A[27]~input_o\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A_in[37]~5_combout\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_A_in[37]~5_combout\,
	datac => \ALT_INV_A_in[36]~4_combout\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][26]~37_combout\);

-- Location: IOIBUF_X59_Y31_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X47_Y38_N6
\A_in[32]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[32]~0_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[32]~input_o\)))) # (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & \A[32]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[32]~0_combout\);

-- Location: IOIBUF_X48_Y56_N94
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LABCELL_X43_Y44_N2
\A_in[33]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[33]~1_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[33]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[33]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[33]~1_combout\);

-- Location: LABCELL_X47_Y38_N24
\stage[1][30]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][30]~39_combout\ = ( \A_in[33]~1_combout\ & ( \A[31]~input_o\ & ( (!\Equal0~0_combout\ & (((\B[0]~input_o\)) # (\A[30]~input_o\))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\) # (\A_in[32]~0_combout\)))) ) ) ) # ( !\A_in[33]~1_combout\ & ( 
-- \A[31]~input_o\ & ( (!\Equal0~0_combout\ & (((\B[0]~input_o\)) # (\A[30]~input_o\))) # (\Equal0~0_combout\ & (((\A_in[32]~0_combout\ & \B[0]~input_o\)))) ) ) ) # ( \A_in[33]~1_combout\ & ( !\A[31]~input_o\ & ( (!\Equal0~0_combout\ & (\A[30]~input_o\ & 
-- ((!\B[0]~input_o\)))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\) # (\A_in[32]~0_combout\)))) ) ) ) # ( !\A_in[33]~1_combout\ & ( !\A[31]~input_o\ & ( (!\Equal0~0_combout\ & (\A[30]~input_o\ & ((!\B[0]~input_o\)))) # (\Equal0~0_combout\ & 
-- (((\A_in[32]~0_combout\ & \B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A_in[32]~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A_in[33]~1_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \stage[1][30]~39_combout\);

-- Location: IOIBUF_X59_Y49_N94
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: MLABCELL_X44_Y41_N2
\A_in[38]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[38]~6_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[38]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (\A[38]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[38]~6_combout\);

-- Location: IOIBUF_X59_Y18_N94
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: MLABCELL_X46_Y38_N0
\A_in[39]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[39]~7_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[39]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (\A[39]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[39]~7_combout\);

-- Location: IOIBUF_X59_Y46_N94
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: MLABCELL_X44_Y38_N14
\stage[1][24]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][24]~36_combout\ = ( \A[24]~input_o\ & ( \A[25]~input_o\ & ( (!\Equal0~0_combout\) # ((!\B[0]~input_o\ & ((\A_in[39]~7_combout\))) # (\B[0]~input_o\ & (\A_in[38]~6_combout\))) ) ) ) # ( !\A[24]~input_o\ & ( \A[25]~input_o\ & ( 
-- (!\Equal0~0_combout\ & (((\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[39]~7_combout\))) # (\B[0]~input_o\ & (\A_in[38]~6_combout\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\Equal0~0_combout\ & 
-- (((!\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[39]~7_combout\))) # (\B[0]~input_o\ & (\A_in[38]~6_combout\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[25]~input_o\ & ( (\Equal0~0_combout\ & ((!\B[0]~input_o\ & 
-- ((\A_in[39]~7_combout\))) # (\B[0]~input_o\ & (\A_in[38]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[38]~6_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_in[39]~7_combout\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \stage[1][24]~36_combout\);

-- Location: IOIBUF_X48_Y56_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LABCELL_X47_Y38_N14
\A_in[34]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[34]~2_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[34]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & \A[34]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[34]~2_combout\);

-- Location: IOIBUF_X59_Y31_N1
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X35_Y56_N94
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LABCELL_X43_Y40_N20
\A_in[35]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[35]~3_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[35]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[35]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \A_in[35]~3_combout\);

-- Location: MLABCELL_X44_Y38_N22
\stage[1][28]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][28]~38_combout\ = ( \Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A_in[34]~2_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A[29]~input_o\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A_in[35]~3_combout\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A_in[34]~2_combout\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A_in[35]~3_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][28]~38_combout\);

-- Location: LABCELL_X43_Y38_N28
\stage[3][24]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][24]~40_combout\ = ( \B[1]~input_o\ & ( \stage[1][28]~38_combout\ & ( (!\B[2]~input_o\ & (\stage[1][26]~37_combout\)) # (\B[2]~input_o\ & ((\stage[1][30]~39_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( \stage[1][28]~38_combout\ & ( 
-- (\stage[1][24]~36_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\stage[1][28]~38_combout\ & ( (!\B[2]~input_o\ & (\stage[1][26]~37_combout\)) # (\B[2]~input_o\ & ((\stage[1][30]~39_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\stage[1][28]~38_combout\ & ( (!\B[2]~input_o\ & \stage[1][24]~36_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][26]~37_combout\,
	datab => \ALT_INV_stage[1][30]~39_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][24]~36_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][28]~38_combout\,
	combout => \stage[3][24]~40_combout\);

-- Location: IOIBUF_X55_Y56_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: MLABCELL_X46_Y38_N12
\A_in[56]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[56]~24_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[56]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (\A[56]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[56]~24_combout\);

-- Location: IOIBUF_X59_Y46_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X42_Y56_N1
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LABCELL_X43_Y44_N30
\A_in[57]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[57]~25_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[57]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[57]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[57]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[57]~25_combout\);

-- Location: MLABCELL_X46_Y40_N28
\stage[1][6]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][6]~24_combout\ = ( \A[6]~input_o\ & ( \A_in[57]~25_combout\ & ( (!\B[0]~input_o\) # ((!\Equal0~0_combout\ & (\A[7]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[56]~24_combout\)))) ) ) ) # ( !\A[6]~input_o\ & ( \A_in[57]~25_combout\ & ( 
-- (!\B[0]~input_o\ & (((\Equal0~0_combout\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\ & (\A[7]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[56]~24_combout\))))) ) ) ) # ( \A[6]~input_o\ & ( !\A_in[57]~25_combout\ & ( (!\B[0]~input_o\ & 
-- (((!\Equal0~0_combout\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\ & (\A[7]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[56]~24_combout\))))) ) ) ) # ( !\A[6]~input_o\ & ( !\A_in[57]~25_combout\ & ( (\B[0]~input_o\ & ((!\Equal0~0_combout\ & 
-- (\A[7]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[56]~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A_in[56]~24_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A_in[57]~25_combout\,
	combout => \stage[1][6]~24_combout\);

-- Location: IOIBUF_X56_Y56_N1
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LABCELL_X45_Y40_N12
\A_in[58]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[58]~26_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[58]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[58]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[58]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \A_in[58]~26_combout\);

-- Location: IOIBUF_X36_Y56_N94
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LABCELL_X43_Y40_N0
\A_in[59]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[59]~27_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[59]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[59]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \A_in[59]~27_combout\);

-- Location: IOIBUF_X59_Y28_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X28_Y56_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X42_Y40_N2
\stage[1][4]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][4]~23_combout\ = ( \A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[5]~input_o\))) # (\Equal0~0_combout\ & (\A_in[58]~26_combout\)) ) ) ) # ( !\A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[5]~input_o\))) # 
-- (\Equal0~0_combout\ & (\A_in[58]~26_combout\)) ) ) ) # ( \A[4]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[59]~27_combout\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[0]~input_o\ & ( (\A_in[59]~27_combout\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[58]~26_combout\,
	datab => \ALT_INV_A_in[59]~27_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][4]~23_combout\);

-- Location: IOIBUF_X33_Y56_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LABCELL_X43_Y44_N16
\A_in[62]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[62]~30_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[62]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[62]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[62]~30_combout\);

-- Location: IOIBUF_X59_Y28_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X47_Y37_N26
\A_in[63]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[63]~31_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[63]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[63]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[63]~31_combout\);

-- Location: MLABCELL_X42_Y40_N32
\stage[5][0]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][0]~21_combout\ = ( \A_in[63]~31_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[1]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[62]~30_combout\))) ) ) ) # ( !\A_in[63]~31_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- (\A[1]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[62]~30_combout\))) ) ) ) # ( \A_in[63]~31_combout\ & ( !\B[0]~input_o\ & ( (\A[0]~input_o\) # (\Equal0~0_combout\) ) ) ) # ( !\A_in[63]~31_combout\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- \A[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A_in[62]~30_combout\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A_in[63]~31_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[5][0]~21_combout\);

-- Location: IOIBUF_X35_Y56_N63
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LABCELL_X43_Y44_N32
\A_in[61]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[61]~29_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[61]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[61]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[61]~29_combout\);

-- Location: IOIBUF_X30_Y56_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y22_N63
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X47_Y38_N20
\A_in[60]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[60]~28_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[60]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & \A[60]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \A_in[60]~28_combout\);

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

-- Location: MLABCELL_X42_Y40_N38
\stage[1][2]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][2]~22_combout\ = ( \Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A_in[60]~28_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A[3]~input_o\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A_in[61]~29_combout\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[61]~29_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A_in[60]~28_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][2]~22_combout\);

-- Location: LABCELL_X40_Y37_N22
\stage[5][0]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][0]~25_combout\ = ( \B[2]~input_o\ & ( \stage[1][2]~22_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][4]~23_combout\))) # (\B[1]~input_o\ & (\stage[1][6]~24_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][2]~22_combout\ & ( 
-- (\stage[5][0]~21_combout\) # (\B[1]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][2]~22_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][4]~23_combout\))) # (\B[1]~input_o\ & (\stage[1][6]~24_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\stage[1][2]~22_combout\ & ( (!\B[1]~input_o\ & \stage[5][0]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][6]~24_combout\,
	datab => \ALT_INV_stage[1][4]~23_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[5][0]~21_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][2]~22_combout\,
	combout => \stage[5][0]~25_combout\);

-- Location: IOIBUF_X59_Y36_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y37_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X46_Y37_N2
\stage[5][0]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][0]~41_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][24]~40_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][16]~35_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][8]~30_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[5][0]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][8]~30_combout\,
	datab => \ALT_INV_stage[3][16]~35_combout\,
	datac => \ALT_INV_stage[3][24]~40_combout\,
	datad => \ALT_INV_stage[5][0]~25_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][0]~41_combout\);

-- Location: LABCELL_X47_Y37_N12
\A_rev[63]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \A_rev[63]~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_rev[63]~0_combout\);

-- Location: LABCELL_X47_Y37_N14
\fill~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill~0_combout\ = ( \ExtWord~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[31]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[63]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \fill~0_combout\);

-- Location: LABCELL_X47_Y37_N24
\A_rev[63]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \A_rev[63]~1_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[63]~input_o\)) # (\ExtWord~input_o\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[63]~input_o\ & (!\ExtWord~input_o\ & 
-- !\ShiftFN[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_rev[63]~1_combout\);

-- Location: LABCELL_X47_Y37_N30
\stage[5][55]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][55]~42_combout\ = (!\B[4]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \stage[5][55]~42_combout\);

-- Location: LABCELL_X47_Y37_N16
\stage[3][63]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][63]~43_combout\ = ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[3][63]~43_combout\);

-- Location: LABCELL_X47_Y37_N0
\stage[5][63]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][63]~44_combout\ = ( \stage[3][63]~43_combout\ & ( (!\stage[5][55]~42_combout\ & (((\fill~0_combout\)))) # (\stage[5][55]~42_combout\ & (((\A_rev[63]~1_combout\)) # (\A_rev[63]~0_combout\))) ) ) # ( !\stage[3][63]~43_combout\ & ( \fill~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_rev[63]~0_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_A_rev[63]~1_combout\,
	datad => \ALT_INV_stage[5][55]~42_combout\,
	dataf => \ALT_INV_stage[3][63]~43_combout\,
	combout => \stage[5][63]~44_combout\);

-- Location: IOIBUF_X59_Y19_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X47_Y38_N2
\shamt[5]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \shamt[5]~0_combout\ = ( !\ExtWord~input_o\ & ( \B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \shamt[5]~0_combout\);

-- Location: LABCELL_X43_Y39_N26
\stage[1][50]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][50]~11_combout\ = ( \B[0]~input_o\ & ( \A[12]~input_o\ & ( (\A_in[51]~19_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[50]~18_combout\))) # (\Equal0~0_combout\ & 
-- (\A[13]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & \A_in[51]~19_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[50]~18_combout\))) # (\Equal0~0_combout\ & 
-- (\A[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A_in[50]~18_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A_in[51]~19_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \stage[1][50]~11_combout\);

-- Location: LABCELL_X43_Y39_N30
\stage[1][52]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][52]~12_combout\ = ( \A[10]~input_o\ & ( \A_in[52]~20_combout\ & ( (!\Equal0~0_combout\ & (((!\B[0]~input_o\)) # (\A_in[53]~21_combout\))) # (\Equal0~0_combout\ & (((\B[0]~input_o\) # (\A[11]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( 
-- \A_in[52]~20_combout\ & ( (!\Equal0~0_combout\ & (((!\B[0]~input_o\)) # (\A_in[53]~21_combout\))) # (\Equal0~0_combout\ & (((\A[11]~input_o\ & !\B[0]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A_in[52]~20_combout\ & ( (!\Equal0~0_combout\ & 
-- (\A_in[53]~21_combout\ & ((\B[0]~input_o\)))) # (\Equal0~0_combout\ & (((\B[0]~input_o\) # (\A[11]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A_in[52]~20_combout\ & ( (!\Equal0~0_combout\ & (\A_in[53]~21_combout\ & ((\B[0]~input_o\)))) # 
-- (\Equal0~0_combout\ & (((\A[11]~input_o\ & !\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[53]~21_combout\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A_in[52]~20_combout\,
	combout => \stage[1][52]~12_combout\);

-- Location: LABCELL_X43_Y39_N2
\stage[1][48]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][48]~10_combout\ = ( \B[0]~input_o\ & ( \Equal0~0_combout\ & ( \A[14]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \Equal0~0_combout\ & ( \A[15]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\Equal0~0_combout\ & ( \A_in[49]~17_combout\ ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\Equal0~0_combout\ & ( \A_in[48]~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[48]~16_combout\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A_in[49]~17_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \stage[1][48]~10_combout\);

-- Location: MLABCELL_X46_Y40_N2
\stage[1][54]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][54]~13_combout\ = ( \B[0]~input_o\ & ( \A_in[54]~22_combout\ & ( (!\Equal0~0_combout\ & (\A_in[55]~23_combout\)) # (\Equal0~0_combout\ & ((\A[8]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[54]~22_combout\ & ( (!\Equal0~0_combout\) # 
-- (\A[9]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[54]~22_combout\ & ( (!\Equal0~0_combout\ & (\A_in[55]~23_combout\)) # (\Equal0~0_combout\ & ((\A[8]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[54]~22_combout\ & ( (\A[9]~input_o\ & 
-- \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A_in[55]~23_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[54]~22_combout\,
	combout => \stage[1][54]~13_combout\);

-- Location: MLABCELL_X42_Y39_N2
\stage[3][48]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][48]~14_combout\ = ( \stage[1][54]~13_combout\ & ( \B[2]~input_o\ & ( (\stage[1][52]~12_combout\) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][54]~13_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \stage[1][52]~12_combout\) ) ) ) # ( 
-- \stage[1][54]~13_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][48]~10_combout\))) # (\B[1]~input_o\ & (\stage[1][50]~11_combout\)) ) ) ) # ( !\stage[1][54]~13_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\stage[1][48]~10_combout\))) # (\B[1]~input_o\ & (\stage[1][50]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][50]~11_combout\,
	datac => \ALT_INV_stage[1][52]~12_combout\,
	datad => \ALT_INV_stage[1][48]~10_combout\,
	datae => \ALT_INV_stage[1][54]~13_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][48]~14_combout\);

-- Location: MLABCELL_X42_Y40_N10
\stage[1][62]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][62]~18_combout\ = ( \A_in[63]~31_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A[0]~input_o\) ) ) ) # ( !\A_in[63]~31_combout\ & ( \B[0]~input_o\ & ( (\Equal0~0_combout\ & \A[0]~input_o\) ) ) ) # ( \A_in[63]~31_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[62]~30_combout\))) # (\Equal0~0_combout\ & (\A[1]~input_o\)) ) ) ) # ( !\A_in[63]~31_combout\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[62]~30_combout\))) # (\Equal0~0_combout\ & 
-- (\A[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A_in[62]~30_combout\,
	datae => \ALT_INV_A_in[63]~31_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][62]~18_combout\);

-- Location: MLABCELL_X42_Y40_N24
\stage[1][60]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][60]~17_combout\ = ( \Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A_in[61]~29_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A[3]~input_o\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A_in[60]~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[61]~29_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A_in[60]~28_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][60]~17_combout\);

-- Location: MLABCELL_X46_Y40_N6
\stage[1][56]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][56]~15_combout\ = ( \A[6]~input_o\ & ( \A_in[57]~25_combout\ & ( ((!\Equal0~0_combout\ & ((\A_in[56]~24_combout\))) # (\Equal0~0_combout\ & (\A[7]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \A_in[57]~25_combout\ & ( 
-- (!\Equal0~0_combout\ & (((\B[0]~input_o\) # (\A_in[56]~24_combout\)))) # (\Equal0~0_combout\ & (\A[7]~input_o\ & ((!\B[0]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A_in[57]~25_combout\ & ( (!\Equal0~0_combout\ & (((\A_in[56]~24_combout\ & 
-- !\B[0]~input_o\)))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( !\A[6]~input_o\ & ( !\A_in[57]~25_combout\ & ( (!\B[0]~input_o\ & ((!\Equal0~0_combout\ & ((\A_in[56]~24_combout\))) # (\Equal0~0_combout\ & (\A[7]~input_o\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A_in[56]~24_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A_in[57]~25_combout\,
	combout => \stage[1][56]~15_combout\);

-- Location: MLABCELL_X42_Y40_N22
\stage[1][58]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][58]~16_combout\ = ( \A[4]~input_o\ & ( \B[0]~input_o\ & ( (\Equal0~0_combout\) # (\A_in[59]~27_combout\) ) ) ) # ( !\A[4]~input_o\ & ( \B[0]~input_o\ & ( (\A_in[59]~27_combout\ & !\Equal0~0_combout\) ) ) ) # ( \A[4]~input_o\ & ( !\B[0]~input_o\ 
-- & ( (!\Equal0~0_combout\ & (\A_in[58]~26_combout\)) # (\Equal0~0_combout\ & ((\A[5]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A_in[58]~26_combout\)) # (\Equal0~0_combout\ & ((\A[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[58]~26_combout\,
	datab => \ALT_INV_A_in[59]~27_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][58]~16_combout\);

-- Location: MLABCELL_X42_Y39_N6
\stage[3][56]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][56]~19_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][62]~18_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][60]~17_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][58]~16_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][56]~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][62]~18_combout\,
	datab => \ALT_INV_stage[1][60]~17_combout\,
	datac => \ALT_INV_stage[1][56]~15_combout\,
	datad => \ALT_INV_stage[1][58]~16_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][56]~19_combout\);

-- Location: MLABCELL_X46_Y38_N8
\stage[1][40]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][40]~5_combout\ = ( \A_in[41]~9_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A[22]~input_o\) ) ) ) # ( !\A_in[41]~9_combout\ & ( \B[0]~input_o\ & ( (\Equal0~0_combout\ & \A[22]~input_o\) ) ) ) # ( \A_in[41]~9_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[40]~8_combout\))) # (\Equal0~0_combout\ & (\A[23]~input_o\)) ) ) ) # ( !\A_in[41]~9_combout\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[40]~8_combout\))) # (\Equal0~0_combout\ & 
-- (\A[23]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A_in[40]~8_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A_in[41]~9_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][40]~5_combout\);

-- Location: LABCELL_X43_Y37_N6
\stage[1][46]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][46]~8_combout\ = ( \B[0]~input_o\ & ( \Equal0~0_combout\ & ( \A[16]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \Equal0~0_combout\ & ( \A[17]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\Equal0~0_combout\ & ( \A_in[47]~15_combout\ ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\Equal0~0_combout\ & ( \A_in[46]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_A_in[47]~15_combout\,
	datac => \ALT_INV_A_in[46]~14_combout\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \stage[1][46]~8_combout\);

-- Location: LABCELL_X43_Y40_N38
\stage[1][42]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][42]~6_combout\ = ( \A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[43]~11_combout\))) # (\Equal0~0_combout\ & (\A[20]~input_o\)) ) ) ) # ( !\A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((\A_in[43]~11_combout\))) # (\Equal0~0_combout\ & (\A[20]~input_o\)) ) ) ) # ( \A[21]~input_o\ & ( !\B[0]~input_o\ & ( (\A_in[42]~10_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\A[21]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- \A_in[42]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[42]~10_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A_in[43]~11_combout\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][42]~6_combout\);

-- Location: LABCELL_X43_Y37_N0
\stage[1][44]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][44]~7_combout\ = ( \B[0]~input_o\ & ( \A[18]~input_o\ & ( (\Equal0~0_combout\) # (\A_in[45]~13_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\Equal0~0_combout\ & (\A_in[44]~12_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[19]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[18]~input_o\ & ( (\A_in[45]~13_combout\ & !\Equal0~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[18]~input_o\ & ( (!\Equal0~0_combout\ & (\A_in[44]~12_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[44]~12_combout\,
	datab => \ALT_INV_A_in[45]~13_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \stage[1][44]~7_combout\);

-- Location: LABCELL_X43_Y38_N6
\stage[3][40]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][40]~9_combout\ = ( \B[1]~input_o\ & ( \stage[1][44]~7_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][42]~6_combout\))) # (\B[2]~input_o\ & (\stage[1][46]~8_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \stage[1][44]~7_combout\ & ( (\B[2]~input_o\) # 
-- (\stage[1][40]~5_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\stage[1][44]~7_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][42]~6_combout\))) # (\B[2]~input_o\ & (\stage[1][46]~8_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\stage[1][44]~7_combout\ & ( 
-- (\stage[1][40]~5_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][40]~5_combout\,
	datab => \ALT_INV_stage[1][46]~8_combout\,
	datac => \ALT_INV_stage[1][42]~6_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][44]~7_combout\,
	combout => \stage[3][40]~9_combout\);

-- Location: MLABCELL_X44_Y38_N6
\stage[1][36]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][36]~2_combout\ = ( \Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A[26]~input_o\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A_in[37]~5_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A[27]~input_o\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A_in[36]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_A_in[37]~5_combout\,
	datac => \ALT_INV_A_in[36]~4_combout\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][36]~2_combout\);

-- Location: MLABCELL_X44_Y38_N2
\stage[1][34]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][34]~1_combout\ = ( \Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A[28]~input_o\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A_in[35]~3_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A[29]~input_o\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A_in[34]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A_in[34]~2_combout\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A_in[35]~3_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][34]~1_combout\);

-- Location: LABCELL_X47_Y38_N30
\stage[1][32]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][32]~0_combout\ = ( \A_in[33]~1_combout\ & ( \A[31]~input_o\ & ( (!\B[0]~input_o\ & (((\Equal0~0_combout\) # (\A_in[32]~0_combout\)))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\)) # (\A[30]~input_o\))) ) ) ) # ( !\A_in[33]~1_combout\ & ( 
-- \A[31]~input_o\ & ( (!\B[0]~input_o\ & (((\Equal0~0_combout\) # (\A_in[32]~0_combout\)))) # (\B[0]~input_o\ & (\A[30]~input_o\ & ((\Equal0~0_combout\)))) ) ) ) # ( \A_in[33]~1_combout\ & ( !\A[31]~input_o\ & ( (!\B[0]~input_o\ & (((\A_in[32]~0_combout\ & 
-- !\Equal0~0_combout\)))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\)) # (\A[30]~input_o\))) ) ) ) # ( !\A_in[33]~1_combout\ & ( !\A[31]~input_o\ & ( (!\B[0]~input_o\ & (((\A_in[32]~0_combout\ & !\Equal0~0_combout\)))) # (\B[0]~input_o\ & (\A[30]~input_o\ & 
-- ((\Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A_in[32]~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_A_in[33]~1_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \stage[1][32]~0_combout\);

-- Location: MLABCELL_X44_Y38_N8
\stage[1][38]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][38]~3_combout\ = ( \A[24]~input_o\ & ( \A[25]~input_o\ & ( ((!\B[0]~input_o\ & (\A_in[38]~6_combout\)) # (\B[0]~input_o\ & ((\A_in[39]~7_combout\)))) # (\Equal0~0_combout\) ) ) ) # ( !\A[24]~input_o\ & ( \A[25]~input_o\ & ( (!\Equal0~0_combout\ 
-- & ((!\B[0]~input_o\ & (\A_in[38]~6_combout\)) # (\B[0]~input_o\ & ((\A_in[39]~7_combout\))))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & 
-- (\A_in[38]~6_combout\)) # (\B[0]~input_o\ & ((\A_in[39]~7_combout\))))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A_in[38]~6_combout\)) # (\B[0]~input_o\ 
-- & ((\A_in[39]~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[38]~6_combout\,
	datac => \ALT_INV_A_in[39]~7_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \stage[1][38]~3_combout\);

-- Location: LABCELL_X43_Y38_N0
\stage[3][32]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][32]~4_combout\ = ( \B[2]~input_o\ & ( \stage[1][38]~3_combout\ & ( (\stage[1][36]~2_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][38]~3_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][32]~0_combout\))) # (\B[1]~input_o\ & 
-- (\stage[1][34]~1_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][38]~3_combout\ & ( (!\B[1]~input_o\ & \stage[1][36]~2_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][38]~3_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][32]~0_combout\))) # 
-- (\B[1]~input_o\ & (\stage[1][34]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][36]~2_combout\,
	datac => \ALT_INV_stage[1][34]~1_combout\,
	datad => \ALT_INV_stage[1][32]~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][38]~3_combout\,
	combout => \stage[3][32]~4_combout\);

-- Location: MLABCELL_X46_Y41_N20
\stage[5][32]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][32]~20_combout\ = ( \stage[3][40]~9_combout\ & ( \stage[3][32]~4_combout\ & ( (!\B[4]~input_o\) # ((!\B[3]~input_o\ & (\stage[3][48]~14_combout\)) # (\B[3]~input_o\ & ((\stage[3][56]~19_combout\)))) ) ) ) # ( !\stage[3][40]~9_combout\ & ( 
-- \stage[3][32]~4_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & (\stage[3][48]~14_combout\)) # (\B[3]~input_o\ & ((\stage[3][56]~19_combout\))))) ) ) ) # ( \stage[3][40]~9_combout\ & ( 
-- !\stage[3][32]~4_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & (\stage[3][48]~14_combout\)) # (\B[3]~input_o\ & ((\stage[3][56]~19_combout\))))) ) ) ) # ( !\stage[3][40]~9_combout\ & ( 
-- !\stage[3][32]~4_combout\ & ( (\B[4]~input_o\ & ((!\B[3]~input_o\ & (\stage[3][48]~14_combout\)) # (\B[3]~input_o\ & ((\stage[3][56]~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_stage[3][48]~14_combout\,
	datac => \ALT_INV_stage[3][56]~19_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][40]~9_combout\,
	dataf => \ALT_INV_stage[3][32]~4_combout\,
	combout => \stage[5][32]~20_combout\);

-- Location: LABCELL_X47_Y37_N20
\Y~183\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~183_combout\ = ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\A[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((!\shamt[5]~0_combout\ & (\stage[5][0]~41_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][32]~20_combout\)))))) ) ) # ( 
-- \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\stage[5][63]~44_combout\ & (!\shamt[5]~0_combout\))))) # (\ShiftFN[1]~input_o\ & (((!\shamt[5]~0_combout\ & (\stage[5][0]~41_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][32]~20_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100001010000110110000000000011011010111110001101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_stage[5][0]~41_combout\,
	datac => \ALT_INV_stage[5][63]~44_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_stage[5][32]~20_combout\,
	datag => \ALT_INV_A[0]~input_o\,
	combout => \Y~183_combout\);

-- Location: LABCELL_X43_Y39_N6
\stage[1][49]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][49]~55_combout\ = ( \B[0]~input_o\ & ( \A_in[50]~18_combout\ & ( (!\Equal0~0_combout\) # (\A[13]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[50]~18_combout\ & ( (!\Equal0~0_combout\ & ((\A_in[49]~17_combout\))) # (\Equal0~0_combout\ & 
-- (\A[14]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[50]~18_combout\ & ( (\A[13]~input_o\ & \Equal0~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[50]~18_combout\ & ( (!\Equal0~0_combout\ & ((\A_in[49]~17_combout\))) # (\Equal0~0_combout\ & 
-- (\A[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A_in[49]~17_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[50]~18_combout\,
	combout => \stage[1][49]~55_combout\);

-- Location: MLABCELL_X46_Y40_N18
\stage[1][53]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][53]~57_combout\ = ( \B[0]~input_o\ & ( \A_in[54]~22_combout\ & ( (!\Equal0~0_combout\) # (\A[9]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[54]~22_combout\ & ( (!\Equal0~0_combout\ & (\A_in[53]~21_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[10]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[54]~22_combout\ & ( (\A[9]~input_o\ & \Equal0~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[54]~22_combout\ & ( (!\Equal0~0_combout\ & (\A_in[53]~21_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A_in[53]~21_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[54]~22_combout\,
	combout => \stage[1][53]~57_combout\);

-- Location: LABCELL_X43_Y39_N8
\stage[1][51]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][51]~56_combout\ = ( \B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[52]~20_combout\))) # (\Equal0~0_combout\ & (\A[11]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[12]~input_o\ & ( (\Equal0~0_combout\) # 
-- (\A_in[51]~19_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[52]~20_combout\))) # (\Equal0~0_combout\ & (\A[11]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[12]~input_o\ & ( (\A_in[51]~19_combout\ & 
-- !\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[51]~19_combout\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A_in[52]~20_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \stage[1][51]~56_combout\);

-- Location: MLABCELL_X46_Y40_N20
\stage[1][55]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][55]~58_combout\ = ( \B[0]~input_o\ & ( \A[8]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[56]~24_combout\))) # (\Equal0~0_combout\ & (\A[7]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[8]~input_o\ & ( (\A_in[55]~23_combout\) # (\Equal0~0_combout\) 
-- ) ) ) # ( \B[0]~input_o\ & ( !\A[8]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[56]~24_combout\))) # (\Equal0~0_combout\ & (\A[7]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[8]~input_o\ & ( (!\Equal0~0_combout\ & \A_in[55]~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[55]~23_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A_in[56]~24_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \stage[1][55]~58_combout\);

-- Location: MLABCELL_X44_Y37_N26
\stage[3][49]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][49]~59_combout\ = ( \stage[1][55]~58_combout\ & ( \B[2]~input_o\ & ( (\B[1]~input_o\) # (\stage[1][53]~57_combout\) ) ) ) # ( !\stage[1][55]~58_combout\ & ( \B[2]~input_o\ & ( (\stage[1][53]~57_combout\ & !\B[1]~input_o\) ) ) ) # ( 
-- \stage[1][55]~58_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][49]~55_combout\)) # (\B[1]~input_o\ & ((\stage[1][51]~56_combout\))) ) ) ) # ( !\stage[1][55]~58_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][49]~55_combout\)) # (\B[1]~input_o\ & ((\stage[1][51]~56_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][49]~55_combout\,
	datab => \ALT_INV_stage[1][53]~57_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][51]~56_combout\,
	datae => \ALT_INV_stage[1][55]~58_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][49]~59_combout\);

-- Location: MLABCELL_X46_Y40_N24
\stage[1][57]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][57]~60_combout\ = ( \B[0]~input_o\ & ( \A_in[58]~26_combout\ & ( (!\Equal0~0_combout\) # (\A[5]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[58]~26_combout\ & ( (!\Equal0~0_combout\ & (\A_in[57]~25_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[6]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[58]~26_combout\ & ( (\A[5]~input_o\ & \Equal0~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[58]~26_combout\ & ( (!\Equal0~0_combout\ & (\A_in[57]~25_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[57]~25_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[58]~26_combout\,
	combout => \stage[1][57]~60_combout\);

-- Location: MLABCELL_X42_Y40_N28
\stage[1][61]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][61]~62_combout\ = ( \Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A[1]~input_o\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A_in[62]~30_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A_in[61]~29_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[62]~30_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A_in[61]~29_combout\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][61]~62_combout\);

-- Location: MLABCELL_X42_Y40_N6
\stage[1][59]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][59]~61_combout\ = ( \A_in[60]~28_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A[3]~input_o\) ) ) ) # ( !\A_in[60]~28_combout\ & ( \B[0]~input_o\ & ( (\Equal0~0_combout\ & \A[3]~input_o\) ) ) ) # ( \A_in[60]~28_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[59]~27_combout\))) # (\Equal0~0_combout\ & (\A[4]~input_o\)) ) ) ) # ( !\A_in[60]~28_combout\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[59]~27_combout\))) # (\Equal0~0_combout\ & 
-- (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A_in[59]~27_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A_in[60]~28_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][59]~61_combout\);

-- Location: LABCELL_X47_Y37_N2
\stage[1][63]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][63]~63_combout\ = ( \B[0]~input_o\ & ( !\fill~0_combout\ ) ) # ( !\B[0]~input_o\ & ( (!\A_rev[63]~0_combout\ & !\A_rev[63]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_rev[63]~0_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_A_rev[63]~1_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][63]~63_combout\);

-- Location: MLABCELL_X44_Y39_N2
\stage[3][57]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][57]~64_combout\ = ( \stage[1][63]~63_combout\ & ( \B[2]~input_o\ & ( (\stage[1][61]~62_combout\ & !\B[1]~input_o\) ) ) ) # ( !\stage[1][63]~63_combout\ & ( \B[2]~input_o\ & ( (\B[1]~input_o\) # (\stage[1][61]~62_combout\) ) ) ) # ( 
-- \stage[1][63]~63_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][57]~60_combout\)) # (\B[1]~input_o\ & ((\stage[1][59]~61_combout\))) ) ) ) # ( !\stage[1][63]~63_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][57]~60_combout\)) # (\B[1]~input_o\ & ((\stage[1][59]~61_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100111111001111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][57]~60_combout\,
	datab => \ALT_INV_stage[1][61]~62_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][59]~61_combout\,
	datae => \ALT_INV_stage[1][63]~63_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][57]~64_combout\);

-- Location: MLABCELL_X46_Y38_N22
\stage[1][39]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][39]~48_combout\ = ( \Equal0~0_combout\ & ( \A[24]~input_o\ & ( (!\B[0]~input_o\) # (\A[23]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A[24]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[39]~7_combout\))) # (\B[0]~input_o\ & (\A_in[40]~8_combout\)) ) 
-- ) ) # ( \Equal0~0_combout\ & ( !\A[24]~input_o\ & ( (\A[23]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[24]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[39]~7_combout\))) # (\B[0]~input_o\ & (\A_in[40]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A_in[40]~8_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_in[39]~7_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \stage[1][39]~48_combout\);

-- Location: LABCELL_X45_Y38_N20
\stage[1][33]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][33]~45_combout\ = ( \A_in[33]~1_combout\ & ( \A_in[34]~2_combout\ & ( (!\Equal0~0_combout\) # ((!\B[0]~input_o\ & ((\A[30]~input_o\))) # (\B[0]~input_o\ & (\A[29]~input_o\))) ) ) ) # ( !\A_in[33]~1_combout\ & ( \A_in[34]~2_combout\ & ( 
-- (!\Equal0~0_combout\ & (((\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A[30]~input_o\))) # (\B[0]~input_o\ & (\A[29]~input_o\)))) ) ) ) # ( \A_in[33]~1_combout\ & ( !\A_in[34]~2_combout\ & ( (!\Equal0~0_combout\ & 
-- (((!\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A[30]~input_o\))) # (\B[0]~input_o\ & (\A[29]~input_o\)))) ) ) ) # ( !\A_in[33]~1_combout\ & ( !\A_in[34]~2_combout\ & ( (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A[30]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[29]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_A_in[33]~1_combout\,
	dataf => \ALT_INV_A_in[34]~2_combout\,
	combout => \stage[1][33]~45_combout\);

-- Location: MLABCELL_X44_Y38_N24
\stage[1][35]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][35]~46_combout\ = ( \A[28]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[36]~4_combout\))) # (\Equal0~0_combout\ & (\A[27]~input_o\)) ) ) ) # ( !\A[28]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((\A_in[36]~4_combout\))) # (\Equal0~0_combout\ & (\A[27]~input_o\)) ) ) ) # ( \A[28]~input_o\ & ( !\B[0]~input_o\ & ( (\Equal0~0_combout\) # (\A_in[35]~3_combout\) ) ) ) # ( !\A[28]~input_o\ & ( !\B[0]~input_o\ & ( (\A_in[35]~3_combout\ & 
-- !\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A_in[36]~4_combout\,
	datac => \ALT_INV_A_in[35]~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][35]~46_combout\);

-- Location: MLABCELL_X44_Y38_N30
\stage[1][37]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][37]~47_combout\ = ( \A_in[38]~6_combout\ & ( \A[25]~input_o\ & ( ((!\Equal0~0_combout\ & (\A_in[37]~5_combout\)) # (\Equal0~0_combout\ & ((\A[26]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A_in[38]~6_combout\ & ( \A[25]~input_o\ & ( 
-- (!\Equal0~0_combout\ & (\A_in[37]~5_combout\ & (!\B[0]~input_o\))) # (\Equal0~0_combout\ & (((\A[26]~input_o\) # (\B[0]~input_o\)))) ) ) ) # ( \A_in[38]~6_combout\ & ( !\A[25]~input_o\ & ( (!\Equal0~0_combout\ & (((\B[0]~input_o\)) # 
-- (\A_in[37]~5_combout\))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\ & \A[26]~input_o\)))) ) ) ) # ( !\A_in[38]~6_combout\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((!\Equal0~0_combout\ & (\A_in[37]~5_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[26]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[37]~5_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A_in[38]~6_combout\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \stage[1][37]~47_combout\);

-- Location: LABCELL_X45_Y38_N26
\stage[3][33]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][33]~49_combout\ = ( \stage[1][35]~46_combout\ & ( \stage[1][37]~47_combout\ & ( (!\B[1]~input_o\ & (((\stage[1][33]~45_combout\) # (\B[2]~input_o\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\stage[1][39]~48_combout\))) ) ) ) # ( 
-- !\stage[1][35]~46_combout\ & ( \stage[1][37]~47_combout\ & ( (!\B[1]~input_o\ & (((\stage[1][33]~45_combout\) # (\B[2]~input_o\)))) # (\B[1]~input_o\ & (\stage[1][39]~48_combout\ & (\B[2]~input_o\))) ) ) ) # ( \stage[1][35]~46_combout\ & ( 
-- !\stage[1][37]~47_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\ & \stage[1][33]~45_combout\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\stage[1][39]~48_combout\))) ) ) ) # ( !\stage[1][35]~46_combout\ & ( !\stage[1][37]~47_combout\ & ( 
-- (!\B[1]~input_o\ & (((!\B[2]~input_o\ & \stage[1][33]~45_combout\)))) # (\B[1]~input_o\ & (\stage[1][39]~48_combout\ & (\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][39]~48_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][33]~45_combout\,
	datae => \ALT_INV_stage[1][35]~46_combout\,
	dataf => \ALT_INV_stage[1][37]~47_combout\,
	combout => \stage[3][33]~49_combout\);

-- Location: LABCELL_X43_Y40_N10
\stage[1][41]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][41]~50_combout\ = ( \A[21]~input_o\ & ( \B[0]~input_o\ & ( (\A_in[42]~10_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & \A_in[42]~10_combout\) ) ) ) # ( \A[21]~input_o\ & ( 
-- !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[41]~9_combout\))) # (\Equal0~0_combout\ & (\A[22]~input_o\)) ) ) ) # ( !\A[21]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[41]~9_combout\))) # (\Equal0~0_combout\ & (\A[22]~input_o\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[42]~10_combout\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A_in[41]~9_combout\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][41]~50_combout\);

-- Location: LABCELL_X43_Y37_N16
\stage[1][43]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][43]~51_combout\ = ( \B[0]~input_o\ & ( \A_in[44]~12_combout\ & ( (!\Equal0~0_combout\) # (\A[19]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[44]~12_combout\ & ( (!\Equal0~0_combout\ & (\A_in[43]~11_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[20]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[44]~12_combout\ & ( (\Equal0~0_combout\ & \A[19]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[44]~12_combout\ & ( (!\Equal0~0_combout\ & (\A_in[43]~11_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_A_in[43]~11_combout\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[44]~12_combout\,
	combout => \stage[1][43]~51_combout\);

-- Location: LABCELL_X43_Y37_N26
\stage[1][47]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][47]~53_combout\ = ( \B[0]~input_o\ & ( \A[15]~input_o\ & ( (\A_in[48]~16_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[15]~input_o\ & ( (!\Equal0~0_combout\ & (\A_in[47]~15_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[16]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[15]~input_o\ & ( (!\Equal0~0_combout\ & \A_in[48]~16_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[15]~input_o\ & ( (!\Equal0~0_combout\ & (\A_in[47]~15_combout\)) # (\Equal0~0_combout\ & 
-- ((\A[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[47]~15_combout\,
	datac => \ALT_INV_A_in[48]~16_combout\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \stage[1][47]~53_combout\);

-- Location: LABCELL_X43_Y37_N22
\stage[1][45]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][45]~52_combout\ = ( \B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[46]~14_combout\))) # (\Equal0~0_combout\ & (\A[17]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[18]~input_o\ & ( (\Equal0~0_combout\) # 
-- (\A_in[45]~13_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[18]~input_o\ & ( (!\Equal0~0_combout\ & ((\A_in[46]~14_combout\))) # (\Equal0~0_combout\ & (\A[17]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[18]~input_o\ & ( (\A_in[45]~13_combout\ & 
-- !\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_A_in[46]~14_combout\,
	datac => \ALT_INV_A_in[45]~13_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \stage[1][45]~52_combout\);

-- Location: MLABCELL_X44_Y37_N22
\stage[3][41]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][41]~54_combout\ = ( \stage[1][45]~52_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][47]~53_combout\) ) ) ) # ( !\stage[1][45]~52_combout\ & ( \B[2]~input_o\ & ( (\B[1]~input_o\ & \stage[1][47]~53_combout\) ) ) ) # ( 
-- \stage[1][45]~52_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][41]~50_combout\)) # (\B[1]~input_o\ & ((\stage[1][43]~51_combout\))) ) ) ) # ( !\stage[1][45]~52_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][41]~50_combout\)) # (\B[1]~input_o\ & ((\stage[1][43]~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][41]~50_combout\,
	datab => \ALT_INV_stage[1][43]~51_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][47]~53_combout\,
	datae => \ALT_INV_stage[1][45]~52_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][41]~54_combout\);

-- Location: MLABCELL_X44_Y40_N28
\stage[5][33]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][33]~65_combout\ = ( \B[4]~input_o\ & ( \stage[3][41]~54_combout\ & ( (!\B[3]~input_o\ & (\stage[3][49]~59_combout\)) # (\B[3]~input_o\ & ((\stage[3][57]~64_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][41]~54_combout\ & ( 
-- (\stage[3][33]~49_combout\) # (\B[3]~input_o\) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][41]~54_combout\ & ( (!\B[3]~input_o\ & (\stage[3][49]~59_combout\)) # (\B[3]~input_o\ & ((\stage[3][57]~64_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\stage[3][41]~54_combout\ & ( (!\B[3]~input_o\ & \stage[3][33]~49_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001110100011100110011111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][49]~59_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][57]~64_combout\,
	datad => \ALT_INV_stage[3][33]~49_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][41]~54_combout\,
	combout => \stage[5][33]~65_combout\);

-- Location: MLABCELL_X46_Y40_N32
\stage[1][7]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][7]~69_combout\ = ( \B[0]~input_o\ & ( \A[8]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[55]~23_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[8]~input_o\ & ( (!\Equal0~0_combout\ & (\A[7]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[56]~24_combout\))) 
-- ) ) ) # ( \B[0]~input_o\ & ( !\A[8]~input_o\ & ( (\Equal0~0_combout\ & \A_in[55]~23_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[8]~input_o\ & ( (!\Equal0~0_combout\ & (\A[7]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[56]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[55]~23_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A_in[56]~24_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \stage[1][7]~69_combout\);

-- Location: MLABCELL_X46_Y40_N10
\stage[1][5]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][5]~68_combout\ = ( \B[0]~input_o\ & ( \A_in[58]~26_combout\ & ( (!\Equal0~0_combout\ & ((\A[6]~input_o\))) # (\Equal0~0_combout\ & (\A_in[57]~25_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[58]~26_combout\ & ( (\Equal0~0_combout\) # 
-- (\A[5]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[58]~26_combout\ & ( (!\Equal0~0_combout\ & ((\A[6]~input_o\))) # (\Equal0~0_combout\ & (\A_in[57]~25_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[58]~26_combout\ & ( (\A[5]~input_o\ & 
-- !\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[57]~25_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[58]~26_combout\,
	combout => \stage[1][5]~68_combout\);

-- Location: MLABCELL_X42_Y40_N18
\stage[1][3]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][3]~67_combout\ = ( \A_in[60]~28_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[4]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[59]~27_combout\))) ) ) ) # ( !\A_in[60]~28_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- (\A[4]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[59]~27_combout\))) ) ) ) # ( \A_in[60]~28_combout\ & ( !\B[0]~input_o\ & ( (\A[3]~input_o\) # (\Equal0~0_combout\) ) ) ) # ( !\A_in[60]~28_combout\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A_in[59]~27_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A_in[60]~28_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][3]~67_combout\);

-- Location: MLABCELL_X42_Y40_N14
\stage[5][1]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][1]~66_combout\ = ( \Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A_in[61]~29_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \B[0]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( \Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A_in[62]~30_combout\ ) ) ) # ( 
-- !\Equal0~0_combout\ & ( !\B[0]~input_o\ & ( \A[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[62]~30_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A_in[61]~29_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[5][1]~66_combout\);

-- Location: LABCELL_X45_Y37_N22
\stage[5][1]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][1]~70_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][7]~69_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][5]~68_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][3]~67_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[5][1]~66_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][7]~69_combout\,
	datab => \ALT_INV_stage[1][5]~68_combout\,
	datac => \ALT_INV_stage[1][3]~67_combout\,
	datad => \ALT_INV_stage[5][1]~66_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[5][1]~70_combout\);

-- Location: LABCELL_X43_Y37_N36
\stage[1][19]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][19]~77_combout\ = ( \B[0]~input_o\ & ( \A_in[44]~12_combout\ & ( (!\Equal0~0_combout\ & ((\A[20]~input_o\))) # (\Equal0~0_combout\ & (\A_in[43]~11_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[44]~12_combout\ & ( (\A[19]~input_o\) # 
-- (\Equal0~0_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[44]~12_combout\ & ( (!\Equal0~0_combout\ & ((\A[20]~input_o\))) # (\Equal0~0_combout\ & (\A_in[43]~11_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[44]~12_combout\ & ( (!\Equal0~0_combout\ & 
-- \A[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_A_in[43]~11_combout\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[44]~12_combout\,
	combout => \stage[1][19]~77_combout\);

-- Location: MLABCELL_X46_Y38_N6
\stage[1][23]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][23]~79_combout\ = ( \Equal0~0_combout\ & ( \A[24]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[40]~8_combout\)) # (\B[0]~input_o\ & ((\A_in[39]~7_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( \A[24]~input_o\ & ( (\B[0]~input_o\) # (\A[23]~input_o\) ) 
-- ) ) # ( \Equal0~0_combout\ & ( !\A[24]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[40]~8_combout\)) # (\B[0]~input_o\ & ((\A_in[39]~7_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[24]~input_o\ & ( (\A[23]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A_in[40]~8_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_in[39]~7_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \stage[1][23]~79_combout\);

-- Location: LABCELL_X43_Y40_N14
\stage[1][21]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][21]~78_combout\ = ( \A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[22]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[41]~9_combout\))) ) ) ) # ( !\A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[22]~input_o\)) # 
-- (\Equal0~0_combout\ & ((\A_in[41]~9_combout\))) ) ) ) # ( \A[21]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[42]~10_combout\) ) ) ) # ( !\A[21]~input_o\ & ( !\B[0]~input_o\ & ( (\Equal0~0_combout\ & \A_in[42]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[42]~10_combout\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A_in[41]~9_combout\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][21]~78_combout\);

-- Location: LABCELL_X43_Y37_N12
\stage[1][17]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][17]~76_combout\ = ( \B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[45]~13_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\Equal0~0_combout\ & (\A[17]~input_o\)) # (\Equal0~0_combout\ & 
-- ((\A_in[46]~14_combout\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[18]~input_o\ & ( (\Equal0~0_combout\ & \A_in[45]~13_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[18]~input_o\ & ( (!\Equal0~0_combout\ & (\A[17]~input_o\)) # (\Equal0~0_combout\ & 
-- ((\A_in[46]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_A_in[46]~14_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A_in[45]~13_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \stage[1][17]~76_combout\);

-- Location: LABCELL_X45_Y37_N8
\stage[3][17]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][17]~80_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][23]~79_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][21]~78_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][19]~77_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][17]~76_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][19]~77_combout\,
	datab => \ALT_INV_stage[1][23]~79_combout\,
	datac => \ALT_INV_stage[1][21]~78_combout\,
	datad => \ALT_INV_stage[1][17]~76_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][17]~80_combout\);

-- Location: LABCELL_X43_Y37_N8
\stage[1][15]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][15]~74_combout\ = ( \B[0]~input_o\ & ( \A[15]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[16]~input_o\))) # (\Equal0~0_combout\ & (\A_in[47]~15_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[15]~input_o\ & ( (!\Equal0~0_combout\) # 
-- (\A_in[48]~16_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[15]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[16]~input_o\))) # (\Equal0~0_combout\ & (\A_in[47]~15_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[15]~input_o\ & ( (\Equal0~0_combout\ & 
-- \A_in[48]~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[47]~15_combout\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A_in[48]~16_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \stage[1][15]~74_combout\);

-- Location: LABCELL_X43_Y39_N34
\stage[1][11]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][11]~72_combout\ = ( \B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[51]~19_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\ & (\A[11]~input_o\)) # (\Equal0~0_combout\ & 
-- ((\A_in[52]~20_combout\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[12]~input_o\ & ( (\A_in[51]~19_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & (\A[11]~input_o\)) # (\Equal0~0_combout\ & 
-- ((\A_in[52]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[51]~19_combout\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A_in[52]~20_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \stage[1][11]~72_combout\);

-- Location: MLABCELL_X46_Y40_N36
\stage[1][9]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][9]~71_combout\ = ( \B[0]~input_o\ & ( \A_in[54]~22_combout\ & ( (!\Equal0~0_combout\ & ((\A[10]~input_o\))) # (\Equal0~0_combout\ & (\A_in[53]~21_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[54]~22_combout\ & ( (\Equal0~0_combout\) # 
-- (\A[9]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[54]~22_combout\ & ( (!\Equal0~0_combout\ & ((\A[10]~input_o\))) # (\Equal0~0_combout\ & (\A_in[53]~21_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[54]~22_combout\ & ( (\A[9]~input_o\ & 
-- !\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A_in[53]~21_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[54]~22_combout\,
	combout => \stage[1][9]~71_combout\);

-- Location: LABCELL_X43_Y39_N36
\stage[1][13]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][13]~73_combout\ = ( \B[0]~input_o\ & ( \A_in[50]~18_combout\ & ( (!\Equal0~0_combout\ & ((\A[14]~input_o\))) # (\Equal0~0_combout\ & (\A_in[49]~17_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( \A_in[50]~18_combout\ & ( (\Equal0~0_combout\) # 
-- (\A[13]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\A_in[50]~18_combout\ & ( (!\Equal0~0_combout\ & ((\A[14]~input_o\))) # (\Equal0~0_combout\ & (\A_in[49]~17_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A_in[50]~18_combout\ & ( (\A[13]~input_o\ & 
-- !\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A_in[49]~17_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[50]~18_combout\,
	combout => \stage[1][13]~73_combout\);

-- Location: LABCELL_X45_Y37_N4
\stage[3][9]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][9]~75_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][15]~74_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][13]~73_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][11]~72_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][9]~71_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][15]~74_combout\,
	datab => \ALT_INV_stage[1][11]~72_combout\,
	datac => \ALT_INV_stage[1][9]~71_combout\,
	datad => \ALT_INV_stage[1][13]~73_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][9]~75_combout\);

-- Location: LABCELL_X45_Y38_N28
\stage[1][29]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][29]~83_combout\ = ( \A_in[33]~1_combout\ & ( \A_in[34]~2_combout\ & ( ((!\B[0]~input_o\ & (\A[29]~input_o\)) # (\B[0]~input_o\ & ((\A[30]~input_o\)))) # (\Equal0~0_combout\) ) ) ) # ( !\A_in[33]~1_combout\ & ( \A_in[34]~2_combout\ & ( 
-- (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A[29]~input_o\)) # (\B[0]~input_o\ & ((\A[30]~input_o\))))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A_in[33]~1_combout\ & ( !\A_in[34]~2_combout\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & 
-- (\A[29]~input_o\)) # (\B[0]~input_o\ & ((\A[30]~input_o\))))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A_in[33]~1_combout\ & ( !\A_in[34]~2_combout\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A[29]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[30]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_A_in[33]~1_combout\,
	dataf => \ALT_INV_A_in[34]~2_combout\,
	combout => \stage[1][29]~83_combout\);

-- Location: MLABCELL_X44_Y38_N18
\stage[1][27]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][27]~82_combout\ = ( \A[28]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[35]~3_combout\) ) ) ) # ( !\A[28]~input_o\ & ( \B[0]~input_o\ & ( (\Equal0~0_combout\ & \A_in[35]~3_combout\) ) ) ) # ( \A[28]~input_o\ & ( !\B[0]~input_o\ 
-- & ( (!\Equal0~0_combout\ & (\A[27]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[36]~4_combout\))) ) ) ) # ( !\A[28]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[27]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[36]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A_in[36]~4_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A_in[35]~3_combout\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][27]~82_combout\);

-- Location: MLABCELL_X44_Y38_N32
\stage[1][25]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][25]~81_combout\ = ( \A_in[38]~6_combout\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\) # ((!\Equal0~0_combout\ & ((\A[26]~input_o\))) # (\Equal0~0_combout\ & (\A_in[37]~5_combout\))) ) ) ) # ( !\A_in[38]~6_combout\ & ( \A[25]~input_o\ & ( 
-- (!\Equal0~0_combout\ & (((!\B[0]~input_o\) # (\A[26]~input_o\)))) # (\Equal0~0_combout\ & (\A_in[37]~5_combout\ & ((\B[0]~input_o\)))) ) ) ) # ( \A_in[38]~6_combout\ & ( !\A[25]~input_o\ & ( (!\Equal0~0_combout\ & (((\A[26]~input_o\ & \B[0]~input_o\)))) # 
-- (\Equal0~0_combout\ & (((!\B[0]~input_o\)) # (\A_in[37]~5_combout\))) ) ) ) # ( !\A_in[38]~6_combout\ & ( !\A[25]~input_o\ & ( (\B[0]~input_o\ & ((!\Equal0~0_combout\ & ((\A[26]~input_o\))) # (\Equal0~0_combout\ & (\A_in[37]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[37]~5_combout\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A_in[38]~6_combout\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \stage[1][25]~81_combout\);

-- Location: LABCELL_X47_Y38_N34
\stage[1][31]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][31]~84_combout\ = ( \B[0]~input_o\ & ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)) # (\A[32]~input_o\))) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( 
-- \A[31]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (((!\ExtWord~input_o\ & \A[32]~input_o\)) # (\ShiftFN[1]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[32]~input_o\ & ((!\ShiftFN[0]~input_o\) # 
-- (\ShiftFN[1]~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & (\A[32]~input_o\ & (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000001000000010001011110010111111110010111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \stage[1][31]~84_combout\);

-- Location: LABCELL_X45_Y38_N34
\stage[3][25]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][25]~85_combout\ = ( \stage[1][31]~84_combout\ & ( \B[2]~input_o\ & ( (\B[1]~input_o\) # (\stage[1][29]~83_combout\) ) ) ) # ( !\stage[1][31]~84_combout\ & ( \B[2]~input_o\ & ( (\stage[1][29]~83_combout\ & !\B[1]~input_o\) ) ) ) # ( 
-- \stage[1][31]~84_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][25]~81_combout\))) # (\B[1]~input_o\ & (\stage[1][27]~82_combout\)) ) ) ) # ( !\stage[1][31]~84_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\stage[1][25]~81_combout\))) # (\B[1]~input_o\ & (\stage[1][27]~82_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][29]~83_combout\,
	datab => \ALT_INV_stage[1][27]~82_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][25]~81_combout\,
	datae => \ALT_INV_stage[1][31]~84_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][25]~85_combout\);

-- Location: MLABCELL_X44_Y40_N14
\stage[5][1]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][1]~86_combout\ = ( \B[4]~input_o\ & ( \stage[3][25]~85_combout\ & ( (\B[3]~input_o\) # (\stage[3][17]~80_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][25]~85_combout\ & ( (!\B[3]~input_o\ & (\stage[5][1]~70_combout\)) # (\B[3]~input_o\ & 
-- ((\stage[3][9]~75_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][25]~85_combout\ & ( (\stage[3][17]~80_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\stage[3][25]~85_combout\ & ( (!\B[3]~input_o\ & (\stage[5][1]~70_combout\)) # 
-- (\B[3]~input_o\ & ((\stage[3][9]~75_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][1]~70_combout\,
	datab => \ALT_INV_stage[3][17]~80_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][9]~75_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][25]~85_combout\,
	combout => \stage[5][1]~86_combout\);

-- Location: MLABCELL_X44_Y40_N18
\stage[5][62]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][62]~87_combout\ = ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) # ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[1][62]~18_combout\))))) # (\B[1]~input_o\ & 
-- (\fill~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101011101010100010101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[5][55]~42_combout\,
	datad => \ALT_INV_stage[1][62]~18_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[5][62]~87_combout\);

-- Location: MLABCELL_X44_Y40_N24
\Y~179\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~179_combout\ = ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((((\A[1]~input_o\))))) # (\ShiftFN[1]~input_o\ & (((!\shamt[5]~0_combout\ & ((\stage[5][1]~86_combout\))) # (\shamt[5]~0_combout\ & (\stage[5][33]~65_combout\))))) ) ) # ( 
-- \ShiftFN[0]~input_o\ & ( (!\shamt[5]~0_combout\ & (((!\ShiftFN[1]~input_o\ & ((\stage[5][62]~87_combout\))) # (\ShiftFN[1]~input_o\ & (\stage[5][1]~86_combout\))))) # (\shamt[5]~0_combout\ & (\stage[5][33]~65_combout\ & (((\ShiftFN[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000000000110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][33]~65_combout\,
	datab => \ALT_INV_stage[5][1]~86_combout\,
	datac => \ALT_INV_stage[5][62]~87_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_A[1]~input_o\,
	combout => \Y~179_combout\);

-- Location: LABCELL_X40_Y37_N12
\stage[5][2]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][2]~93_combout\ = ( \B[2]~input_o\ & ( \stage[1][4]~23_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][6]~24_combout\))) # (\B[1]~input_o\ & (\stage[1][8]~26_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][4]~23_combout\ & ( (\B[1]~input_o\) # 
-- (\stage[1][2]~22_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][4]~23_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][6]~24_combout\))) # (\B[1]~input_o\ & (\stage[1][8]~26_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][4]~23_combout\ & ( 
-- (\stage[1][2]~22_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][2]~22_combout\,
	datab => \ALT_INV_stage[1][8]~26_combout\,
	datac => \ALT_INV_stage[1][6]~24_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][4]~23_combout\,
	combout => \stage[5][2]~93_combout\);

-- Location: LABCELL_X40_Y37_N36
\stage[3][10]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][10]~94_combout\ = ( \B[2]~input_o\ & ( \stage[1][16]~31_combout\ & ( (\B[1]~input_o\) # (\stage[1][14]~29_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][16]~31_combout\ & ( (!\B[1]~input_o\ & (\stage[1][10]~27_combout\)) # (\B[1]~input_o\ & 
-- ((\stage[1][12]~28_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][16]~31_combout\ & ( (\stage[1][14]~29_combout\ & !\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][16]~31_combout\ & ( (!\B[1]~input_o\ & (\stage[1][10]~27_combout\)) # 
-- (\B[1]~input_o\ & ((\stage[1][12]~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][14]~29_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][10]~27_combout\,
	datad => \ALT_INV_stage[1][12]~28_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][16]~31_combout\,
	combout => \stage[3][10]~94_combout\);

-- Location: LABCELL_X43_Y38_N38
\stage[3][26]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][26]~96_combout\ = ( \B[1]~input_o\ & ( \stage[1][26]~37_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][28]~38_combout\))) # (\B[2]~input_o\ & (\stage[1][32]~0_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \stage[1][26]~37_combout\ & ( (!\B[2]~input_o\) 
-- # (\stage[1][30]~39_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\stage[1][26]~37_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][28]~38_combout\))) # (\B[2]~input_o\ & (\stage[1][32]~0_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\stage[1][26]~37_combout\ & ( 
-- (\B[2]~input_o\ & \stage[1][30]~39_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_stage[1][30]~39_combout\,
	datac => \ALT_INV_stage[1][32]~0_combout\,
	datad => \ALT_INV_stage[1][28]~38_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][26]~37_combout\,
	combout => \stage[3][26]~96_combout\);

-- Location: LABCELL_X40_Y37_N0
\stage[3][18]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][18]~95_combout\ = ( \B[2]~input_o\ & ( \stage[1][20]~33_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][22]~34_combout\))) # (\B[1]~input_o\ & (\stage[1][24]~36_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][20]~33_combout\ & ( (\B[1]~input_o\) 
-- # (\stage[1][18]~32_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][20]~33_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][22]~34_combout\))) # (\B[1]~input_o\ & (\stage[1][24]~36_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][20]~33_combout\ & ( 
-- (\stage[1][18]~32_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][24]~36_combout\,
	datab => \ALT_INV_stage[1][22]~34_combout\,
	datac => \ALT_INV_stage[1][18]~32_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][20]~33_combout\,
	combout => \stage[3][18]~95_combout\);

-- Location: MLABCELL_X42_Y37_N12
\stage[5][2]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][2]~97_combout\ = ( \stage[3][18]~95_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\) # (\stage[3][26]~96_combout\) ) ) ) # ( !\stage[3][18]~95_combout\ & ( \B[4]~input_o\ & ( (\stage[3][26]~96_combout\ & \B[3]~input_o\) ) ) ) # ( 
-- \stage[3][18]~95_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[5][2]~93_combout\)) # (\B[3]~input_o\ & ((\stage[3][10]~94_combout\))) ) ) ) # ( !\stage[3][18]~95_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[5][2]~93_combout\)) 
-- # (\B[3]~input_o\ & ((\stage[3][10]~94_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][2]~93_combout\,
	datab => \ALT_INV_stage[3][10]~94_combout\,
	datac => \ALT_INV_stage[3][26]~96_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][18]~95_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][2]~97_combout\);

-- Location: MLABCELL_X42_Y37_N38
\stage[5][61]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][61]~98_combout\ = ( \stage[1][61]~62_combout\ & ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\stage[1][61]~62_combout\ & ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) ) # ( \stage[1][61]~62_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\stage[5][55]~42_combout\ & (((\fill~0_combout\)))) # (\stage[5][55]~42_combout\ & ((!\stage[1][63]~63_combout\) # ((!\B[1]~input_o\)))) ) ) ) # ( !\stage[1][61]~62_combout\ & ( !\B[2]~input_o\ & ( (!\stage[5][55]~42_combout\ & (((\fill~0_combout\)))) # 
-- (\stage[5][55]~42_combout\ & (!\stage[1][63]~63_combout\ & (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110010101001111111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][55]~42_combout\,
	datab => \ALT_INV_stage[1][63]~63_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_stage[1][61]~62_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[5][61]~98_combout\);

-- Location: LABCELL_X43_Y38_N14
\stage[3][34]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][34]~88_combout\ = ( \B[2]~input_o\ & ( \stage[1][38]~3_combout\ & ( (!\B[1]~input_o\) # (\stage[1][40]~5_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][38]~3_combout\ & ( (!\B[1]~input_o\ & (\stage[1][34]~1_combout\)) # (\B[1]~input_o\ & 
-- ((\stage[1][36]~2_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][38]~3_combout\ & ( (\B[1]~input_o\ & \stage[1][40]~5_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][38]~3_combout\ & ( (!\B[1]~input_o\ & (\stage[1][34]~1_combout\)) # 
-- (\B[1]~input_o\ & ((\stage[1][36]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][34]~1_combout\,
	datab => \ALT_INV_stage[1][36]~2_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][40]~5_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][38]~3_combout\,
	combout => \stage[3][34]~88_combout\);

-- Location: MLABCELL_X42_Y39_N14
\stage[3][50]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][50]~90_combout\ = ( \stage[1][54]~13_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][56]~15_combout\) ) ) ) # ( !\stage[1][54]~13_combout\ & ( \B[2]~input_o\ & ( (\stage[1][56]~15_combout\ & \B[1]~input_o\) ) ) ) # ( 
-- \stage[1][54]~13_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][50]~11_combout\)) # (\B[1]~input_o\ & ((\stage[1][52]~12_combout\))) ) ) ) # ( !\stage[1][54]~13_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][50]~11_combout\)) # (\B[1]~input_o\ & ((\stage[1][52]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][50]~11_combout\,
	datab => \ALT_INV_stage[1][56]~15_combout\,
	datac => \ALT_INV_stage[1][52]~12_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][54]~13_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][50]~90_combout\);

-- Location: MLABCELL_X42_Y39_N18
\stage[3][58]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][58]~91_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][62]~18_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][60]~17_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][58]~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][62]~18_combout\,
	datab => \ALT_INV_stage[1][60]~17_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[1][58]~16_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][58]~91_combout\);

-- Location: MLABCELL_X42_Y39_N28
\stage[3][42]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][42]~89_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][48]~10_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][46]~8_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][44]~7_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][42]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][42]~6_combout\,
	datab => \ALT_INV_stage[1][44]~7_combout\,
	datac => \ALT_INV_stage[1][48]~10_combout\,
	datad => \ALT_INV_stage[1][46]~8_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][42]~89_combout\);

-- Location: MLABCELL_X42_Y37_N8
\stage[5][34]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][34]~92_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][58]~91_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][50]~90_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][42]~89_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][34]~88_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][34]~88_combout\,
	datab => \ALT_INV_stage[3][50]~90_combout\,
	datac => \ALT_INV_stage[3][58]~91_combout\,
	datad => \ALT_INV_stage[3][42]~89_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][34]~92_combout\);

-- Location: MLABCELL_X42_Y37_N4
\Y~175\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~175_combout\ = ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((((\A[2]~input_o\))))) # (\ShiftFN[1]~input_o\ & ((!\shamt[5]~0_combout\ & (\stage[5][2]~97_combout\)) # (\shamt[5]~0_combout\ & (((\stage[5][34]~92_combout\)))))) ) ) # ( 
-- \ShiftFN[0]~input_o\ & ( (!\shamt[5]~0_combout\ & (((!\ShiftFN[1]~input_o\ & ((\stage[5][61]~98_combout\))) # (\ShiftFN[1]~input_o\ & (\stage[5][2]~97_combout\))))) # (\shamt[5]~0_combout\ & ((((\stage[5][34]~92_combout\ & \ShiftFN[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011000000110001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][2]~97_combout\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_stage[5][61]~98_combout\,
	datad => \ALT_INV_stage[5][34]~92_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_A[2]~input_o\,
	combout => \Y~175_combout\);

-- Location: MLABCELL_X44_Y37_N16
\stage[3][51]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][51]~101_combout\ = ( \stage[1][55]~58_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][57]~60_combout\) ) ) ) # ( !\stage[1][55]~58_combout\ & ( \B[2]~input_o\ & ( (\stage[1][57]~60_combout\ & \B[1]~input_o\) ) ) ) # ( 
-- \stage[1][55]~58_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][51]~56_combout\))) # (\B[1]~input_o\ & (\stage[1][53]~57_combout\)) ) ) ) # ( !\stage[1][55]~58_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\stage[1][51]~56_combout\))) # (\B[1]~input_o\ & (\stage[1][53]~57_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][57]~60_combout\,
	datab => \ALT_INV_stage[1][53]~57_combout\,
	datac => \ALT_INV_stage[1][51]~56_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][55]~58_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][51]~101_combout\);

-- Location: MLABCELL_X44_Y39_N24
\stage[3][59]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][59]~102_combout\ = ( \stage[1][63]~63_combout\ & ( \B[2]~input_o\ & ( (\fill~0_combout\ & \B[1]~input_o\) ) ) ) # ( !\stage[1][63]~63_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\fill~0_combout\) ) ) ) # ( \stage[1][63]~63_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][59]~61_combout\))) # (\B[1]~input_o\ & (\stage[1][61]~62_combout\)) ) ) ) # ( !\stage[1][63]~63_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][59]~61_combout\))) # (\B[1]~input_o\ & 
-- (\stage[1][61]~62_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001111111111010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[1][61]~62_combout\,
	datac => \ALT_INV_stage[1][59]~61_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][63]~63_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][59]~102_combout\);

-- Location: MLABCELL_X44_Y37_N28
\stage[3][35]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][35]~99_combout\ = ( \stage[1][39]~48_combout\ & ( \stage[1][41]~50_combout\ & ( ((!\B[1]~input_o\ & (\stage[1][35]~46_combout\)) # (\B[1]~input_o\ & ((\stage[1][37]~47_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\stage[1][39]~48_combout\ & ( 
-- \stage[1][41]~50_combout\ & ( (!\B[1]~input_o\ & (\stage[1][35]~46_combout\ & ((!\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\stage[1][37]~47_combout\)))) ) ) ) # ( \stage[1][39]~48_combout\ & ( !\stage[1][41]~50_combout\ & ( 
-- (!\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][35]~46_combout\))) # (\B[1]~input_o\ & (((\stage[1][37]~47_combout\ & !\B[2]~input_o\)))) ) ) ) # ( !\stage[1][39]~48_combout\ & ( !\stage[1][41]~50_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- (\stage[1][35]~46_combout\)) # (\B[1]~input_o\ & ((\stage[1][37]~47_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][35]~46_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][37]~47_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][39]~48_combout\,
	dataf => \ALT_INV_stage[1][41]~50_combout\,
	combout => \stage[3][35]~99_combout\);

-- Location: MLABCELL_X44_Y37_N32
\stage[3][43]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][43]~100_combout\ = ( \stage[1][45]~52_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][47]~53_combout\))) # (\B[1]~input_o\ & (\stage[1][49]~55_combout\)) ) ) ) # ( !\stage[1][45]~52_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & ((\stage[1][47]~53_combout\))) # (\B[1]~input_o\ & (\stage[1][49]~55_combout\)) ) ) ) # ( \stage[1][45]~52_combout\ & ( !\B[2]~input_o\ & ( (\stage[1][43]~51_combout\) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][45]~52_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\B[1]~input_o\ & \stage[1][43]~51_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][49]~55_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][47]~53_combout\,
	datad => \ALT_INV_stage[1][43]~51_combout\,
	datae => \ALT_INV_stage[1][45]~52_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][43]~100_combout\);

-- Location: MLABCELL_X49_Y37_N10
\stage[5][35]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][35]~103_combout\ = ( \stage[3][43]~100_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][51]~101_combout\)) # (\B[3]~input_o\ & ((\stage[3][59]~102_combout\))) ) ) ) # ( !\stage[3][43]~100_combout\ & ( \B[4]~input_o\ & ( 
-- (!\B[3]~input_o\ & (\stage[3][51]~101_combout\)) # (\B[3]~input_o\ & ((\stage[3][59]~102_combout\))) ) ) ) # ( \stage[3][43]~100_combout\ & ( !\B[4]~input_o\ & ( (\stage[3][35]~99_combout\) # (\B[3]~input_o\) ) ) ) # ( !\stage[3][43]~100_combout\ & ( 
-- !\B[4]~input_o\ & ( (!\B[3]~input_o\ & \stage[3][35]~99_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][51]~101_combout\,
	datab => \ALT_INV_stage[3][59]~102_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][35]~99_combout\,
	datae => \ALT_INV_stage[3][43]~100_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][35]~103_combout\);

-- Location: MLABCELL_X46_Y39_N38
\stage[5][60]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][60]~109_combout\ = ( \stage[1][62]~18_combout\ & ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\stage[1][62]~18_combout\ & ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) ) # ( \stage[1][62]~18_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & (((\stage[1][60]~17_combout\) # (\B[1]~input_o\)))) ) ) ) # ( !\stage[1][62]~18_combout\ & ( !\B[2]~input_o\ & ( (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # 
-- (\stage[5][55]~42_combout\ & (((!\B[1]~input_o\ & \stage[1][60]~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001110111011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[5][55]~42_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][60]~17_combout\,
	datae => \ALT_INV_stage[1][62]~18_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[5][60]~109_combout\);

-- Location: LABCELL_X45_Y37_N14
\stage[5][3]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][3]~104_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][9]~71_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][7]~69_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][5]~68_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][3]~67_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][7]~69_combout\,
	datab => \ALT_INV_stage[1][5]~68_combout\,
	datac => \ALT_INV_stage[1][3]~67_combout\,
	datad => \ALT_INV_stage[1][9]~71_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[5][3]~104_combout\);

-- Location: LABCELL_X45_Y37_N16
\stage[3][11]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][11]~105_combout\ = ( \stage[1][11]~72_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][15]~74_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~76_combout\))) ) ) ) # ( !\stage[1][11]~72_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & (\stage[1][15]~74_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~76_combout\))) ) ) ) # ( \stage[1][11]~72_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][13]~73_combout\) ) ) ) # ( !\stage[1][11]~72_combout\ & ( !\B[2]~input_o\ & ( 
-- (\B[1]~input_o\ & \stage[1][13]~73_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][15]~74_combout\,
	datac => \ALT_INV_stage[1][17]~76_combout\,
	datad => \ALT_INV_stage[1][13]~73_combout\,
	datae => \ALT_INV_stage[1][11]~72_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][11]~105_combout\);

-- Location: LABCELL_X45_Y37_N0
\stage[3][19]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][19]~106_combout\ = ( \B[1]~input_o\ & ( \stage[1][19]~77_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][21]~78_combout\))) # (\B[2]~input_o\ & (\stage[1][25]~81_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \stage[1][19]~77_combout\ & ( 
-- (!\B[2]~input_o\) # (\stage[1][23]~79_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\stage[1][19]~77_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][21]~78_combout\))) # (\B[2]~input_o\ & (\stage[1][25]~81_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\stage[1][19]~77_combout\ & ( (\stage[1][23]~79_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][25]~81_combout\,
	datab => \ALT_INV_stage[1][23]~79_combout\,
	datac => \ALT_INV_stage[1][21]~78_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][19]~77_combout\,
	combout => \stage[3][19]~106_combout\);

-- Location: LABCELL_X45_Y38_N38
\stage[3][27]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][27]~107_combout\ = ( \stage[1][31]~84_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][33]~45_combout\) ) ) ) # ( !\stage[1][31]~84_combout\ & ( \B[2]~input_o\ & ( (\B[1]~input_o\ & \stage[1][33]~45_combout\) ) ) ) # ( 
-- \stage[1][31]~84_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][27]~82_combout\))) # (\B[1]~input_o\ & (\stage[1][29]~83_combout\)) ) ) ) # ( !\stage[1][31]~84_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\stage[1][27]~82_combout\))) # (\B[1]~input_o\ & (\stage[1][29]~83_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][29]~83_combout\,
	datab => \ALT_INV_stage[1][27]~82_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][33]~45_combout\,
	datae => \ALT_INV_stage[1][31]~84_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][27]~107_combout\);

-- Location: MLABCELL_X49_Y37_N34
\stage[5][3]~108\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][3]~108_combout\ = ( \stage[3][27]~107_combout\ & ( \B[4]~input_o\ & ( (\stage[3][19]~106_combout\) # (\B[3]~input_o\) ) ) ) # ( !\stage[3][27]~107_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & \stage[3][19]~106_combout\) ) ) ) # ( 
-- \stage[3][27]~107_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[5][3]~104_combout\)) # (\B[3]~input_o\ & ((\stage[3][11]~105_combout\))) ) ) ) # ( !\stage[3][27]~107_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\stage[5][3]~104_combout\)) # (\B[3]~input_o\ & ((\stage[3][11]~105_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][3]~104_combout\,
	datab => \ALT_INV_stage[3][11]~105_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][19]~106_combout\,
	datae => \ALT_INV_stage[3][27]~107_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][3]~108_combout\);

-- Location: MLABCELL_X46_Y39_N32
\Y~171\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~171_combout\ = ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\A[3]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((!\shamt[5]~0_combout\ & ((\stage[5][3]~108_combout\))) # (\shamt[5]~0_combout\ & (\stage[5][35]~103_combout\))))) ) ) # ( 
-- \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\stage[5][60]~109_combout\ & ((!\shamt[5]~0_combout\)))))) # (\ShiftFN[1]~input_o\ & (((!\shamt[5]~0_combout\ & ((\stage[5][3]~108_combout\))) # (\shamt[5]~0_combout\ & (\stage[5][35]~103_combout\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000011000011111100011101000111010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][35]~103_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_stage[5][60]~109_combout\,
	datad => \ALT_INV_stage[5][3]~108_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	datag => \ALT_INV_A[3]~input_o\,
	combout => \Y~171_combout\);

-- Location: MLABCELL_X42_Y39_N20
\stage[3][44]~111\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][44]~111_combout\ = ( \stage[1][50]~11_combout\ & ( \B[2]~input_o\ & ( (\stage[1][48]~10_combout\) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][50]~11_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \stage[1][48]~10_combout\) ) ) ) # ( 
-- \stage[1][50]~11_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][44]~7_combout\)) # (\B[1]~input_o\ & ((\stage[1][46]~8_combout\))) ) ) ) # ( !\stage[1][50]~11_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][44]~7_combout\)) 
-- # (\B[1]~input_o\ & ((\stage[1][46]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][44]~7_combout\,
	datac => \ALT_INV_stage[1][48]~10_combout\,
	datad => \ALT_INV_stage[1][46]~8_combout\,
	datae => \ALT_INV_stage[1][50]~11_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][44]~111_combout\);

-- Location: LABCELL_X43_Y38_N22
\stage[3][36]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][36]~110_combout\ = ( \B[2]~input_o\ & ( \stage[1][38]~3_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][40]~5_combout\))) # (\B[1]~input_o\ & (\stage[1][42]~6_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][38]~3_combout\ & ( 
-- (\stage[1][36]~2_combout\) # (\B[1]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][38]~3_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][40]~5_combout\))) # (\B[1]~input_o\ & (\stage[1][42]~6_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\stage[1][38]~3_combout\ & ( (!\B[1]~input_o\ & \stage[1][36]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][42]~6_combout\,
	datac => \ALT_INV_stage[1][36]~2_combout\,
	datad => \ALT_INV_stage[1][40]~5_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][38]~3_combout\,
	combout => \stage[3][36]~110_combout\);

-- Location: MLABCELL_X44_Y40_N16
\stage[3][60]~113\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][60]~113_combout\ = ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) # ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][60]~17_combout\))) # (\B[1]~input_o\ & (\stage[1][62]~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][62]~18_combout\,
	datad => \ALT_INV_stage[1][60]~17_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][60]~113_combout\);

-- Location: MLABCELL_X42_Y39_N26
\stage[3][52]~112\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][52]~112_combout\ = ( \stage[1][54]~13_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][56]~15_combout\)) # (\B[1]~input_o\ & ((\stage[1][58]~16_combout\))) ) ) ) # ( !\stage[1][54]~13_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & (\stage[1][56]~15_combout\)) # (\B[1]~input_o\ & ((\stage[1][58]~16_combout\))) ) ) ) # ( \stage[1][54]~13_combout\ & ( !\B[2]~input_o\ & ( (\stage[1][52]~12_combout\) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][54]~13_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\B[1]~input_o\ & \stage[1][52]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][52]~12_combout\,
	datac => \ALT_INV_stage[1][56]~15_combout\,
	datad => \ALT_INV_stage[1][58]~16_combout\,
	datae => \ALT_INV_stage[1][54]~13_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][52]~112_combout\);

-- Location: LABCELL_X45_Y39_N20
\stage[5][36]~114\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][36]~114_combout\ = ( \stage[3][52]~112_combout\ & ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & (\stage[3][44]~111_combout\)) # (\B[4]~input_o\ & ((\stage[3][60]~113_combout\))) ) ) ) # ( !\stage[3][52]~112_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[4]~input_o\ & (\stage[3][44]~111_combout\)) # (\B[4]~input_o\ & ((\stage[3][60]~113_combout\))) ) ) ) # ( \stage[3][52]~112_combout\ & ( !\B[3]~input_o\ & ( (\stage[3][36]~110_combout\) # (\B[4]~input_o\) ) ) ) # ( !\stage[3][52]~112_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[4]~input_o\ & \stage[3][36]~110_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][44]~111_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_stage[3][36]~110_combout\,
	datad => \ALT_INV_stage[3][60]~113_combout\,
	datae => \ALT_INV_stage[3][52]~112_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[5][36]~114_combout\);

-- Location: LABCELL_X47_Y38_N8
\Equal2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X45_Y40_N38
\Y~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\shamt[5]~0_combout\ & !\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~0_combout\);

-- Location: LABCELL_X45_Y39_N30
\Y~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = ( \A[4]~input_o\ & ( \Y~0_combout\ & ( ((!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][59]~102_combout\)))) # (\Equal2~0_combout\) ) ) ) # ( !\A[4]~input_o\ & ( \Y~0_combout\ & ( 
-- (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][59]~102_combout\))) ) ) ) # ( \A[4]~input_o\ & ( !\Y~0_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101001100110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][59]~102_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_stage[5][55]~42_combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~1_combout\);

-- Location: LABCELL_X40_Y37_N6
\stage[5][4]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][4]~115_combout\ = ( \B[2]~input_o\ & ( \stage[1][6]~24_combout\ & ( (!\B[1]~input_o\ & (\stage[1][8]~26_combout\)) # (\B[1]~input_o\ & ((\stage[1][10]~27_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][6]~24_combout\ & ( (\B[1]~input_o\) # 
-- (\stage[1][4]~23_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][6]~24_combout\ & ( (!\B[1]~input_o\ & (\stage[1][8]~26_combout\)) # (\B[1]~input_o\ & ((\stage[1][10]~27_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][6]~24_combout\ & ( 
-- (\stage[1][4]~23_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][4]~23_combout\,
	datab => \ALT_INV_stage[1][8]~26_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][10]~27_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][6]~24_combout\,
	combout => \stage[5][4]~115_combout\);

-- Location: MLABCELL_X44_Y39_N8
\stage[3][20]~117\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][20]~117_combout\ = ( \stage[1][24]~36_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][26]~37_combout\) ) ) ) # ( !\stage[1][24]~36_combout\ & ( \B[2]~input_o\ & ( (\stage[1][26]~37_combout\ & \B[1]~input_o\) ) ) ) # ( 
-- \stage[1][24]~36_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][20]~33_combout\))) # (\B[1]~input_o\ & (\stage[1][22]~34_combout\)) ) ) ) # ( !\stage[1][24]~36_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\stage[1][20]~33_combout\))) # (\B[1]~input_o\ & (\stage[1][22]~34_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][26]~37_combout\,
	datab => \ALT_INV_stage[1][22]~34_combout\,
	datac => \ALT_INV_stage[1][20]~33_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][24]~36_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][20]~117_combout\);

-- Location: LABCELL_X40_Y37_N10
\stage[3][12]~116\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][12]~116_combout\ = ( \B[2]~input_o\ & ( \stage[1][16]~31_combout\ & ( (!\B[1]~input_o\) # (\stage[1][18]~32_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][16]~31_combout\ & ( (!\B[1]~input_o\ & (\stage[1][12]~28_combout\)) # (\B[1]~input_o\ & 
-- ((\stage[1][14]~29_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][16]~31_combout\ & ( (\stage[1][18]~32_combout\ & \B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][16]~31_combout\ & ( (!\B[1]~input_o\ & (\stage[1][12]~28_combout\)) # 
-- (\B[1]~input_o\ & ((\stage[1][14]~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][18]~32_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][12]~28_combout\,
	datad => \ALT_INV_stage[1][14]~29_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][16]~31_combout\,
	combout => \stage[3][12]~116_combout\);

-- Location: LABCELL_X43_Y38_N26
\stage[3][28]~118\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][28]~118_combout\ = ( \B[1]~input_o\ & ( \stage[1][28]~38_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][30]~39_combout\))) # (\B[2]~input_o\ & (\stage[1][34]~1_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \stage[1][28]~38_combout\ & ( (!\B[2]~input_o\) 
-- # (\stage[1][32]~0_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\stage[1][28]~38_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][30]~39_combout\))) # (\B[2]~input_o\ & (\stage[1][34]~1_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\stage[1][28]~38_combout\ & ( 
-- (\stage[1][32]~0_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][34]~1_combout\,
	datab => \ALT_INV_stage[1][30]~39_combout\,
	datac => \ALT_INV_stage[1][32]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][28]~38_combout\,
	combout => \stage[3][28]~118_combout\);

-- Location: LABCELL_X45_Y39_N26
\stage[5][4]~119\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][4]~119_combout\ = ( \B[4]~input_o\ & ( \stage[3][28]~118_combout\ & ( (\B[3]~input_o\) # (\stage[3][20]~117_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][28]~118_combout\ & ( (!\B[3]~input_o\ & (\stage[5][4]~115_combout\)) # (\B[3]~input_o\ 
-- & ((\stage[3][12]~116_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][28]~118_combout\ & ( (\stage[3][20]~117_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\stage[3][28]~118_combout\ & ( (!\B[3]~input_o\ & (\stage[5][4]~115_combout\)) # 
-- (\B[3]~input_o\ & ((\stage[3][12]~116_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][4]~115_combout\,
	datab => \ALT_INV_stage[3][20]~117_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][12]~116_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][28]~118_combout\,
	combout => \stage[5][4]~119_combout\);

-- Location: LABCELL_X45_Y40_N22
\Y~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = ( \stage[5][4]~119_combout\ & ( ((\ShiftFN[1]~input_o\ & ((!\shamt[5]~0_combout\) # (\stage[5][36]~114_combout\)))) # (\Y~1_combout\) ) ) # ( !\stage[5][4]~119_combout\ & ( ((\ShiftFN[1]~input_o\ & (\shamt[5]~0_combout\ & 
-- \stage[5][36]~114_combout\))) # (\Y~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111101000101111111110100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_stage[5][36]~114_combout\,
	datad => \ALT_INV_Y~1_combout\,
	dataf => \ALT_INV_stage[5][4]~119_combout\,
	combout => \Y~2_combout\);

-- Location: LABCELL_X45_Y37_N24
\stage[5][5]~125\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][5]~125_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][11]~72_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][9]~71_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][7]~69_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][5]~68_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][7]~69_combout\,
	datab => \ALT_INV_stage[1][5]~68_combout\,
	datac => \ALT_INV_stage[1][9]~71_combout\,
	datad => \ALT_INV_stage[1][11]~72_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[5][5]~125_combout\);

-- Location: LABCELL_X45_Y37_N28
\stage[3][13]~126\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][13]~126_combout\ = ( \stage[1][17]~76_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][19]~77_combout\) ) ) ) # ( !\stage[1][17]~76_combout\ & ( \B[2]~input_o\ & ( (\B[1]~input_o\ & \stage[1][19]~77_combout\) ) ) ) # ( 
-- \stage[1][17]~76_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][13]~73_combout\))) # (\B[1]~input_o\ & (\stage[1][15]~74_combout\)) ) ) ) # ( !\stage[1][17]~76_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\stage[1][13]~73_combout\))) # (\B[1]~input_o\ & (\stage[1][15]~74_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][15]~74_combout\,
	datac => \ALT_INV_stage[1][19]~77_combout\,
	datad => \ALT_INV_stage[1][13]~73_combout\,
	datae => \ALT_INV_stage[1][17]~76_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][13]~126_combout\);

-- Location: LABCELL_X45_Y38_N0
\stage[3][21]~127\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][21]~127_combout\ = ( \stage[1][21]~78_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][25]~81_combout\)) # (\B[1]~input_o\ & ((\stage[1][27]~82_combout\))) ) ) ) # ( !\stage[1][21]~78_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & (\stage[1][25]~81_combout\)) # (\B[1]~input_o\ & ((\stage[1][27]~82_combout\))) ) ) ) # ( \stage[1][21]~78_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][23]~79_combout\) ) ) ) # ( !\stage[1][21]~78_combout\ & ( !\B[2]~input_o\ & ( 
-- (\B[1]~input_o\ & \stage[1][23]~79_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][23]~79_combout\,
	datac => \ALT_INV_stage[1][25]~81_combout\,
	datad => \ALT_INV_stage[1][27]~82_combout\,
	datae => \ALT_INV_stage[1][21]~78_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][21]~127_combout\);

-- Location: LABCELL_X45_Y38_N4
\stage[3][29]~128\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][29]~128_combout\ = ( \stage[1][31]~84_combout\ & ( \stage[1][35]~46_combout\ & ( ((!\B[2]~input_o\ & ((\stage[1][29]~83_combout\))) # (\B[2]~input_o\ & (\stage[1][33]~45_combout\))) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][31]~84_combout\ & ( 
-- \stage[1][35]~46_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][29]~83_combout\))) # (\B[2]~input_o\ & (\stage[1][33]~45_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( \stage[1][31]~84_combout\ & ( 
-- !\stage[1][35]~46_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][29]~83_combout\))) # (\B[2]~input_o\ & (\stage[1][33]~45_combout\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\stage[1][31]~84_combout\ & ( 
-- !\stage[1][35]~46_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][29]~83_combout\))) # (\B[2]~input_o\ & (\stage[1][33]~45_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][33]~45_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][29]~83_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][31]~84_combout\,
	dataf => \ALT_INV_stage[1][35]~46_combout\,
	combout => \stage[3][29]~128_combout\);

-- Location: MLABCELL_X44_Y36_N4
\stage[5][5]~129\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][5]~129_combout\ = ( \B[4]~input_o\ & ( \stage[3][29]~128_combout\ & ( (\B[3]~input_o\) # (\stage[3][21]~127_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][29]~128_combout\ & ( (!\B[3]~input_o\ & (\stage[5][5]~125_combout\)) # (\B[3]~input_o\ 
-- & ((\stage[3][13]~126_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][29]~128_combout\ & ( (\stage[3][21]~127_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\stage[3][29]~128_combout\ & ( (!\B[3]~input_o\ & (\stage[5][5]~125_combout\)) # 
-- (\B[3]~input_o\ & ((\stage[3][13]~126_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][5]~125_combout\,
	datab => \ALT_INV_stage[3][13]~126_combout\,
	datac => \ALT_INV_stage[3][21]~127_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][29]~128_combout\,
	combout => \stage[5][5]~129_combout\);

-- Location: MLABCELL_X44_Y37_N0
\stage[3][37]~120\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][37]~120_combout\ = ( \stage[1][39]~48_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][41]~50_combout\))) # (\B[1]~input_o\ & (\stage[1][43]~51_combout\)) ) ) ) # ( !\stage[1][39]~48_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & ((\stage[1][41]~50_combout\))) # (\B[1]~input_o\ & (\stage[1][43]~51_combout\)) ) ) ) # ( \stage[1][39]~48_combout\ & ( !\B[2]~input_o\ & ( (\B[1]~input_o\) # (\stage[1][37]~47_combout\) ) ) ) # ( !\stage[1][39]~48_combout\ & ( !\B[2]~input_o\ & ( 
-- (\stage[1][37]~47_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][37]~47_combout\,
	datab => \ALT_INV_stage[1][43]~51_combout\,
	datac => \ALT_INV_stage[1][41]~50_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][39]~48_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][37]~120_combout\);

-- Location: MLABCELL_X44_Y37_N10
\stage[3][53]~122\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][53]~122_combout\ = ( \stage[1][55]~58_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][57]~60_combout\)) # (\B[1]~input_o\ & ((\stage[1][59]~61_combout\))) ) ) ) # ( !\stage[1][55]~58_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & (\stage[1][57]~60_combout\)) # (\B[1]~input_o\ & ((\stage[1][59]~61_combout\))) ) ) ) # ( \stage[1][55]~58_combout\ & ( !\B[2]~input_o\ & ( (\B[1]~input_o\) # (\stage[1][53]~57_combout\) ) ) ) # ( !\stage[1][55]~58_combout\ & ( !\B[2]~input_o\ & ( 
-- (\stage[1][53]~57_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][57]~60_combout\,
	datab => \ALT_INV_stage[1][53]~57_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][59]~61_combout\,
	datae => \ALT_INV_stage[1][55]~58_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][53]~122_combout\);

-- Location: MLABCELL_X44_Y37_N4
\stage[3][45]~121\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][45]~121_combout\ = ( \stage[1][49]~55_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][51]~56_combout\) ) ) ) # ( !\stage[1][49]~55_combout\ & ( \B[2]~input_o\ & ( (\stage[1][51]~56_combout\ & \B[1]~input_o\) ) ) ) # ( 
-- \stage[1][49]~55_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][45]~52_combout\)) # (\B[1]~input_o\ & ((\stage[1][47]~53_combout\))) ) ) ) # ( !\stage[1][49]~55_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][45]~52_combout\)) # (\B[1]~input_o\ & ((\stage[1][47]~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][51]~56_combout\,
	datab => \ALT_INV_stage[1][45]~52_combout\,
	datac => \ALT_INV_stage[1][47]~53_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][49]~55_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][45]~121_combout\);

-- Location: MLABCELL_X44_Y39_N32
\stage[3][61]~123\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][61]~123_combout\ = ( \stage[1][63]~63_combout\ & ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\stage[1][63]~63_combout\ & ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) ) # ( \stage[1][63]~63_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- \stage[1][61]~62_combout\) ) ) ) # ( !\stage[1][63]~63_combout\ & ( !\B[2]~input_o\ & ( (\stage[1][61]~62_combout\) # (\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000000001100110001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][61]~62_combout\,
	datae => \ALT_INV_stage[1][63]~63_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][61]~123_combout\);

-- Location: MLABCELL_X44_Y36_N22
\stage[5][37]~124\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][37]~124_combout\ = ( \B[4]~input_o\ & ( \stage[3][61]~123_combout\ & ( (\B[3]~input_o\) # (\stage[3][53]~122_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][61]~123_combout\ & ( (!\B[3]~input_o\ & (\stage[3][37]~120_combout\)) # 
-- (\B[3]~input_o\ & ((\stage[3][45]~121_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][61]~123_combout\ & ( (\stage[3][53]~122_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\stage[3][61]~123_combout\ & ( (!\B[3]~input_o\ & 
-- (\stage[3][37]~120_combout\)) # (\B[3]~input_o\ & ((\stage[3][45]~121_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][37]~120_combout\,
	datab => \ALT_INV_stage[3][53]~122_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][45]~121_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][61]~123_combout\,
	combout => \stage[5][37]~124_combout\);

-- Location: MLABCELL_X44_Y36_N30
\Y~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = ( \A[5]~input_o\ & ( \Y~0_combout\ & ( ((!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][58]~91_combout\)))) # (\Equal2~0_combout\) ) ) ) # ( !\A[5]~input_o\ & ( \Y~0_combout\ & ( 
-- (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][58]~91_combout\))) ) ) ) # ( \A[5]~input_o\ & ( !\Y~0_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001010010111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][55]~42_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][58]~91_combout\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~3_combout\);

-- Location: LABCELL_X45_Y40_N20
\Y~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = ( \Y~3_combout\ ) # ( !\Y~3_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\shamt[5]~0_combout\ & (\stage[5][5]~129_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][37]~124_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_stage[5][5]~129_combout\,
	datad => \ALT_INV_stage[5][37]~124_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~4_combout\);

-- Location: MLABCELL_X44_Y41_N8
\Y~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = ( \A[6]~input_o\ & ( \Y~0_combout\ & ( ((!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][57]~64_combout\)))) # (\Equal2~0_combout\) ) ) ) # ( !\A[6]~input_o\ & ( \Y~0_combout\ & ( 
-- (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][57]~64_combout\))) ) ) ) # ( \A[6]~input_o\ & ( !\Y~0_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101001100110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][57]~64_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_stage[5][55]~42_combout\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~5_combout\);

-- Location: LABCELL_X43_Y38_N34
\stage[3][22]~137\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][22]~137_combout\ = ( \B[1]~input_o\ & ( \stage[1][28]~38_combout\ & ( (\B[2]~input_o\) # (\stage[1][24]~36_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \stage[1][28]~38_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][22]~34_combout\))) # (\B[2]~input_o\ 
-- & (\stage[1][26]~37_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\stage[1][28]~38_combout\ & ( (\stage[1][24]~36_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\stage[1][28]~38_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][22]~34_combout\))) # 
-- (\B[2]~input_o\ & (\stage[1][26]~37_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][26]~37_combout\,
	datab => \ALT_INV_stage[1][22]~34_combout\,
	datac => \ALT_INV_stage[1][24]~36_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][28]~38_combout\,
	combout => \stage[3][22]~137_combout\);

-- Location: LABCELL_X40_Y37_N16
\stage[3][14]~136\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][14]~136_combout\ = ( \B[2]~input_o\ & ( \stage[1][16]~31_combout\ & ( (!\B[1]~input_o\ & (\stage[1][18]~32_combout\)) # (\B[1]~input_o\ & ((\stage[1][20]~33_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][16]~31_combout\ & ( 
-- (\stage[1][14]~29_combout\) # (\B[1]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][16]~31_combout\ & ( (!\B[1]~input_o\ & (\stage[1][18]~32_combout\)) # (\B[1]~input_o\ & ((\stage[1][20]~33_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\stage[1][16]~31_combout\ & ( (!\B[1]~input_o\ & \stage[1][14]~29_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][18]~32_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][14]~29_combout\,
	datad => \ALT_INV_stage[1][20]~33_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][16]~31_combout\,
	combout => \stage[3][14]~136_combout\);

-- Location: LABCELL_X43_Y38_N16
\stage[3][30]~138\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][30]~138_combout\ = ( \B[2]~input_o\ & ( \stage[1][36]~2_combout\ & ( (\stage[1][34]~1_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][36]~2_combout\ & ( (!\B[1]~input_o\ & (\stage[1][30]~39_combout\)) # (\B[1]~input_o\ & 
-- ((\stage[1][32]~0_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][36]~2_combout\ & ( (!\B[1]~input_o\ & \stage[1][34]~1_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][36]~2_combout\ & ( (!\B[1]~input_o\ & (\stage[1][30]~39_combout\)) # 
-- (\B[1]~input_o\ & ((\stage[1][32]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][30]~39_combout\,
	datac => \ALT_INV_stage[1][34]~1_combout\,
	datad => \ALT_INV_stage[1][32]~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][36]~2_combout\,
	combout => \stage[3][30]~138_combout\);

-- Location: LABCELL_X40_Y37_N34
\stage[5][6]~135\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][6]~135_combout\ = ( \B[2]~input_o\ & ( \stage[1][12]~28_combout\ & ( (\B[1]~input_o\) # (\stage[1][10]~27_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][12]~28_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][6]~24_combout\))) # (\B[1]~input_o\ & 
-- (\stage[1][8]~26_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][12]~28_combout\ & ( (\stage[1][10]~27_combout\ & !\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][12]~28_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][6]~24_combout\))) # 
-- (\B[1]~input_o\ & (\stage[1][8]~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][10]~27_combout\,
	datab => \ALT_INV_stage[1][8]~26_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][6]~24_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][12]~28_combout\,
	combout => \stage[5][6]~135_combout\);

-- Location: MLABCELL_X44_Y41_N26
\stage[5][6]~139\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][6]~139_combout\ = ( \stage[5][6]~135_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][22]~137_combout\)) # (\B[3]~input_o\ & ((\stage[3][30]~138_combout\))) ) ) ) # ( !\stage[5][6]~135_combout\ & ( \B[4]~input_o\ & ( 
-- (!\B[3]~input_o\ & (\stage[3][22]~137_combout\)) # (\B[3]~input_o\ & ((\stage[3][30]~138_combout\))) ) ) ) # ( \stage[5][6]~135_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\) # (\stage[3][14]~136_combout\) ) ) ) # ( !\stage[5][6]~135_combout\ & ( 
-- !\B[4]~input_o\ & ( (\stage[3][14]~136_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][22]~137_combout\,
	datab => \ALT_INV_stage[3][14]~136_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][30]~138_combout\,
	datae => \ALT_INV_stage[5][6]~135_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][6]~139_combout\);

-- Location: MLABCELL_X44_Y39_N16
\stage[3][62]~133\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][62]~133_combout\ = ( \fill~0_combout\ & ( \B[2]~input_o\ ) ) # ( \fill~0_combout\ & ( !\B[2]~input_o\ & ( (\B[1]~input_o\) # (\stage[1][62]~18_combout\) ) ) ) # ( !\fill~0_combout\ & ( !\B[2]~input_o\ & ( (\stage[1][62]~18_combout\ & 
-- !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_stage[1][62]~18_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][62]~133_combout\);

-- Location: LABCELL_X43_Y38_N10
\stage[3][38]~130\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][38]~130_combout\ = ( \B[1]~input_o\ & ( \stage[1][44]~7_combout\ & ( (\B[2]~input_o\) # (\stage[1][40]~5_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \stage[1][44]~7_combout\ & ( (!\B[2]~input_o\ & (\stage[1][38]~3_combout\)) # (\B[2]~input_o\ & 
-- ((\stage[1][42]~6_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\stage[1][44]~7_combout\ & ( (\stage[1][40]~5_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\stage[1][44]~7_combout\ & ( (!\B[2]~input_o\ & (\stage[1][38]~3_combout\)) # 
-- (\B[2]~input_o\ & ((\stage[1][42]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][40]~5_combout\,
	datab => \ALT_INV_stage[1][38]~3_combout\,
	datac => \ALT_INV_stage[1][42]~6_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][44]~7_combout\,
	combout => \stage[3][38]~130_combout\);

-- Location: MLABCELL_X42_Y39_N34
\stage[3][54]~132\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][54]~132_combout\ = ( \stage[1][54]~13_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][58]~16_combout\))) # (\B[1]~input_o\ & (\stage[1][60]~17_combout\)) ) ) ) # ( !\stage[1][54]~13_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & ((\stage[1][58]~16_combout\))) # (\B[1]~input_o\ & (\stage[1][60]~17_combout\)) ) ) ) # ( \stage[1][54]~13_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][56]~15_combout\) ) ) ) # ( !\stage[1][54]~13_combout\ & ( !\B[2]~input_o\ & ( 
-- (\B[1]~input_o\ & \stage[1][56]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][60]~17_combout\,
	datac => \ALT_INV_stage[1][56]~15_combout\,
	datad => \ALT_INV_stage[1][58]~16_combout\,
	datae => \ALT_INV_stage[1][54]~13_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][54]~132_combout\);

-- Location: MLABCELL_X42_Y39_N10
\stage[3][46]~131\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][46]~131_combout\ = ( \stage[1][52]~12_combout\ & ( \B[2]~input_o\ & ( (\stage[1][50]~11_combout\) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][52]~12_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \stage[1][50]~11_combout\) ) ) ) # ( 
-- \stage[1][52]~12_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][46]~8_combout\)) # (\B[1]~input_o\ & ((\stage[1][48]~10_combout\))) ) ) ) # ( !\stage[1][52]~12_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][46]~8_combout\)) 
-- # (\B[1]~input_o\ & ((\stage[1][48]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][46]~8_combout\,
	datac => \ALT_INV_stage[1][50]~11_combout\,
	datad => \ALT_INV_stage[1][48]~10_combout\,
	datae => \ALT_INV_stage[1][52]~12_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][46]~131_combout\);

-- Location: LABCELL_X43_Y41_N30
\stage[5][38]~134\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][38]~134_combout\ = ( \stage[3][46]~131_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\stage[3][54]~132_combout\))) # (\B[3]~input_o\ & (\stage[3][62]~133_combout\)) ) ) ) # ( !\stage[3][46]~131_combout\ & ( \B[4]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\stage[3][54]~132_combout\))) # (\B[3]~input_o\ & (\stage[3][62]~133_combout\)) ) ) ) # ( \stage[3][46]~131_combout\ & ( !\B[4]~input_o\ & ( (\B[3]~input_o\) # (\stage[3][38]~130_combout\) ) ) ) # ( !\stage[3][46]~131_combout\ & ( 
-- !\B[4]~input_o\ & ( (\stage[3][38]~130_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][62]~133_combout\,
	datab => \ALT_INV_stage[3][38]~130_combout\,
	datac => \ALT_INV_stage[3][54]~132_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][46]~131_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][38]~134_combout\);

-- Location: MLABCELL_X44_Y41_N32
\Y~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = ( \shamt[5]~0_combout\ & ( ((\stage[5][38]~134_combout\ & \ShiftFN[1]~input_o\)) # (\Y~5_combout\) ) ) # ( !\shamt[5]~0_combout\ & ( ((\stage[5][6]~139_combout\ & \ShiftFN[1]~input_o\)) # (\Y~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~5_combout\,
	datab => \ALT_INV_stage[5][6]~139_combout\,
	datac => \ALT_INV_stage[5][38]~134_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~6_combout\);

-- Location: MLABCELL_X44_Y37_N12
\stage[3][39]~140\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][39]~140_combout\ = ( \stage[1][45]~52_combout\ & ( \B[2]~input_o\ & ( (\stage[1][43]~51_combout\) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][45]~52_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \stage[1][43]~51_combout\) ) ) ) # ( 
-- \stage[1][45]~52_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][39]~48_combout\)) # (\B[1]~input_o\ & ((\stage[1][41]~50_combout\))) ) ) ) # ( !\stage[1][45]~52_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][39]~48_combout\)) # (\B[1]~input_o\ & ((\stage[1][41]~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][39]~48_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][41]~50_combout\,
	datad => \ALT_INV_stage[1][43]~51_combout\,
	datae => \ALT_INV_stage[1][45]~52_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][39]~140_combout\);

-- Location: MLABCELL_X44_Y39_N20
\stage[3][55]~142\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][55]~142_combout\ = ( \stage[1][55]~58_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][59]~61_combout\))) # (\B[1]~input_o\ & (\stage[1][61]~62_combout\)) ) ) ) # ( !\stage[1][55]~58_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & ((\stage[1][59]~61_combout\))) # (\B[1]~input_o\ & (\stage[1][61]~62_combout\)) ) ) ) # ( \stage[1][55]~58_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][57]~60_combout\) ) ) ) # ( !\stage[1][55]~58_combout\ & ( !\B[2]~input_o\ & ( 
-- (\stage[1][57]~60_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][57]~60_combout\,
	datab => \ALT_INV_stage[1][61]~62_combout\,
	datac => \ALT_INV_stage[1][59]~61_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][55]~58_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][55]~142_combout\);

-- Location: MLABCELL_X44_Y37_N36
\stage[3][47]~141\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][47]~141_combout\ = ( \stage[1][49]~55_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][51]~56_combout\)) # (\B[1]~input_o\ & ((\stage[1][53]~57_combout\))) ) ) ) # ( !\stage[1][49]~55_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & (\stage[1][51]~56_combout\)) # (\B[1]~input_o\ & ((\stage[1][53]~57_combout\))) ) ) ) # ( \stage[1][49]~55_combout\ & ( !\B[2]~input_o\ & ( (\B[1]~input_o\) # (\stage[1][47]~53_combout\) ) ) ) # ( !\stage[1][49]~55_combout\ & ( !\B[2]~input_o\ & ( 
-- (\stage[1][47]~53_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][51]~56_combout\,
	datab => \ALT_INV_stage[1][53]~57_combout\,
	datac => \ALT_INV_stage[1][47]~53_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][49]~55_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][47]~141_combout\);

-- Location: LABCELL_X47_Y37_N28
\stage[3][63]~143\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][63]~143_combout\ = ( \fill~0_combout\ & ( (!\A_rev[63]~0_combout\ & (\stage[3][63]~43_combout\ & !\A_rev[63]~1_combout\)) ) ) # ( !\fill~0_combout\ & ( (!\stage[3][63]~43_combout\) # ((!\A_rev[63]~0_combout\ & !\A_rev[63]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_rev[63]~0_combout\,
	datab => \ALT_INV_stage[3][63]~43_combout\,
	datac => \ALT_INV_A_rev[63]~1_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[3][63]~143_combout\);

-- Location: MLABCELL_X46_Y37_N4
\stage[5][39]~144\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][39]~144_combout\ = ( \stage[3][63]~143_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & \stage[3][55]~142_combout\) ) ) ) # ( !\stage[3][63]~143_combout\ & ( \B[4]~input_o\ & ( (\stage[3][55]~142_combout\) # (\B[3]~input_o\) ) ) ) # ( 
-- \stage[3][63]~143_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][39]~140_combout\)) # (\B[3]~input_o\ & ((\stage[3][47]~141_combout\))) ) ) ) # ( !\stage[3][63]~143_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\stage[3][39]~140_combout\)) # (\B[3]~input_o\ & ((\stage[3][47]~141_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011101011111010111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_stage[3][39]~140_combout\,
	datac => \ALT_INV_stage[3][55]~142_combout\,
	datad => \ALT_INV_stage[3][47]~141_combout\,
	datae => \ALT_INV_stage[3][63]~143_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][39]~144_combout\);

-- Location: MLABCELL_X46_Y41_N4
\Y~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = ( \A[7]~input_o\ & ( \Y~0_combout\ & ( ((!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][56]~19_combout\)))) # (\Equal2~0_combout\) ) ) ) # ( !\A[7]~input_o\ & ( \Y~0_combout\ & ( 
-- (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][56]~19_combout\))) ) ) ) # ( \A[7]~input_o\ & ( !\Y~0_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101010101000011110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_stage[3][56]~19_combout\,
	datad => \ALT_INV_stage[5][55]~42_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~7_combout\);

-- Location: LABCELL_X45_Y38_N10
\stage[3][23]~147\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][23]~147_combout\ = ( \stage[1][27]~82_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\stage[1][29]~83_combout\) ) ) ) # ( !\stage[1][27]~82_combout\ & ( \B[2]~input_o\ & ( (\stage[1][29]~83_combout\ & \B[1]~input_o\) ) ) ) # ( 
-- \stage[1][27]~82_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][23]~79_combout\)) # (\B[1]~input_o\ & ((\stage[1][25]~81_combout\))) ) ) ) # ( !\stage[1][27]~82_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][23]~79_combout\)) # (\B[1]~input_o\ & ((\stage[1][25]~81_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][29]~83_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][23]~79_combout\,
	datad => \ALT_INV_stage[1][25]~81_combout\,
	datae => \ALT_INV_stage[1][27]~82_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][23]~147_combout\);

-- Location: LABCELL_X45_Y37_N36
\stage[3][15]~146\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][15]~146_combout\ = ( \stage[1][21]~78_combout\ & ( \B[2]~input_o\ & ( (\stage[1][19]~77_combout\) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][21]~78_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \stage[1][19]~77_combout\) ) ) ) # ( 
-- \stage[1][21]~78_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][15]~74_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~76_combout\))) ) ) ) # ( !\stage[1][21]~78_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][15]~74_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][15]~74_combout\,
	datac => \ALT_INV_stage[1][19]~77_combout\,
	datad => \ALT_INV_stage[1][17]~76_combout\,
	datae => \ALT_INV_stage[1][21]~78_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][15]~146_combout\);

-- Location: LABCELL_X45_Y38_N14
\stage[3][31]~148\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][31]~148_combout\ = ( \stage[1][31]~84_combout\ & ( \stage[1][35]~46_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\stage[1][33]~45_combout\))) # (\B[2]~input_o\ & (\stage[1][37]~47_combout\))) ) ) ) # ( !\stage[1][31]~84_combout\ & ( 
-- \stage[1][35]~46_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][33]~45_combout\))) # (\B[2]~input_o\ & (\stage[1][37]~47_combout\)))) ) ) ) # ( \stage[1][31]~84_combout\ & ( 
-- !\stage[1][35]~46_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][33]~45_combout\))) # (\B[2]~input_o\ & (\stage[1][37]~47_combout\)))) ) ) ) # ( !\stage[1][31]~84_combout\ & ( 
-- !\stage[1][35]~46_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][33]~45_combout\))) # (\B[2]~input_o\ & (\stage[1][37]~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][37]~47_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][33]~45_combout\,
	datae => \ALT_INV_stage[1][31]~84_combout\,
	dataf => \ALT_INV_stage[1][35]~46_combout\,
	combout => \stage[3][31]~148_combout\);

-- Location: LABCELL_X45_Y37_N32
\stage[5][7]~145\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][7]~145_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][13]~73_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \stage[1][11]~72_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][9]~71_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \stage[1][7]~69_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][9]~71_combout\,
	datab => \ALT_INV_stage[1][13]~73_combout\,
	datac => \ALT_INV_stage[1][7]~69_combout\,
	datad => \ALT_INV_stage[1][11]~72_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[5][7]~145_combout\);

-- Location: MLABCELL_X46_Y37_N10
\stage[5][7]~149\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][7]~149_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][31]~148_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][23]~147_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][15]~146_combout\ ) ) ) # 
-- ( !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[5][7]~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][23]~147_combout\,
	datab => \ALT_INV_stage[3][15]~146_combout\,
	datac => \ALT_INV_stage[3][31]~148_combout\,
	datad => \ALT_INV_stage[5][7]~145_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][7]~149_combout\);

-- Location: MLABCELL_X46_Y38_N28
\Y~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = ( \stage[5][7]~149_combout\ & ( ((\ShiftFN[1]~input_o\ & ((!\shamt[5]~0_combout\) # (\stage[5][39]~144_combout\)))) # (\Y~7_combout\) ) ) # ( !\stage[5][7]~149_combout\ & ( ((\stage[5][39]~144_combout\ & (\ShiftFN[1]~input_o\ & 
-- \shamt[5]~0_combout\))) # (\Y~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011011100111111001101110011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][39]~144_combout\,
	datab => \ALT_INV_Y~7_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_stage[5][7]~149_combout\,
	combout => \Y~8_combout\);

-- Location: MLABCELL_X46_Y37_N34
\stage[5][8]~151\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][8]~151_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][32]~4_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][24]~40_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][16]~35_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][8]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][32]~4_combout\,
	datab => \ALT_INV_stage[3][16]~35_combout\,
	datac => \ALT_INV_stage[3][24]~40_combout\,
	datad => \ALT_INV_stage[3][8]~30_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][8]~151_combout\);

-- Location: LABCELL_X47_Y37_N6
\stage[5][55]~152\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][55]~152_combout\ = ( \B[4]~input_o\ & ( \A_rev[63]~1_combout\ & ( \fill~0_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \A_rev[63]~1_combout\ & ( (\B[3]~input_o\ & ((\stage[3][63]~43_combout\) # (\fill~0_combout\))) ) ) ) # ( \B[4]~input_o\ & ( 
-- !\A_rev[63]~1_combout\ & ( \fill~0_combout\ ) ) ) # ( !\B[4]~input_o\ & ( !\A_rev[63]~1_combout\ & ( (\B[3]~input_o\ & ((!\stage[3][63]~43_combout\ & ((\fill~0_combout\))) # (\stage[3][63]~43_combout\ & (\A_rev[63]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101001100110011001100000000001111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_rev[63]~0_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[3][63]~43_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A_rev[63]~1_combout\,
	combout => \stage[5][55]~152_combout\);

-- Location: MLABCELL_X46_Y41_N12
\Y~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = ( \A[8]~input_o\ & ( \Y~0_combout\ & ( (((\stage[3][55]~142_combout\ & \stage[5][55]~42_combout\)) # (\stage[5][55]~152_combout\)) # (\Equal2~0_combout\) ) ) ) # ( !\A[8]~input_o\ & ( \Y~0_combout\ & ( ((\stage[3][55]~142_combout\ & 
-- \stage[5][55]~42_combout\)) # (\stage[5][55]~152_combout\) ) ) ) # ( \A[8]~input_o\ & ( !\Y~0_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000101111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][55]~142_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_stage[5][55]~42_combout\,
	datad => \ALT_INV_stage[5][55]~152_combout\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~9_combout\);

-- Location: MLABCELL_X46_Y41_N28
\stage[5][40]~150\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][40]~150_combout\ = ( \stage[3][40]~9_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\stage[3][56]~19_combout\))) # (\B[3]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][40]~9_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\stage[3][56]~19_combout\))) # (\B[3]~input_o\ & (\fill~0_combout\)) ) ) ) # ( \stage[3][40]~9_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\) # (\stage[3][48]~14_combout\) ) ) ) # ( !\stage[3][40]~9_combout\ & ( !\B[4]~input_o\ & ( 
-- (\stage[3][48]~14_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][48]~14_combout\,
	datac => \ALT_INV_stage[3][56]~19_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][40]~9_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][40]~150_combout\);

-- Location: MLABCELL_X46_Y41_N38
\Y~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = ( \stage[5][40]~150_combout\ & ( ((\ShiftFN[1]~input_o\ & ((\stage[5][8]~151_combout\) # (\shamt[5]~0_combout\)))) # (\Y~9_combout\) ) ) # ( !\stage[5][40]~150_combout\ & ( ((!\shamt[5]~0_combout\ & (\stage[5][8]~151_combout\ & 
-- \ShiftFN[1]~input_o\))) # (\Y~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111100000111111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_stage[5][8]~151_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Y~9_combout\,
	dataf => \ALT_INV_stage[5][40]~150_combout\,
	combout => \Y~10_combout\);

-- Location: MLABCELL_X44_Y41_N38
\stage[5][41]~153\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][41]~153_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][57]~64_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][49]~59_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][41]~54_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][41]~54_combout\,
	datab => \ALT_INV_stage[3][57]~64_combout\,
	datac => \ALT_INV_stage[3][49]~59_combout\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][41]~153_combout\);

-- Location: LABCELL_X43_Y41_N12
\Y~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = ( \stage[3][62]~133_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & (((\stage[3][54]~132_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) ) # ( !\stage[3][62]~133_combout\ & ( \Y~0_combout\ & ( 
-- (!\B[4]~input_o\ & (!\B[3]~input_o\ & ((\stage[3][54]~132_combout\)))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011101000110101001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_stage[3][54]~132_combout\,
	datae => \ALT_INV_stage[3][62]~133_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~11_combout\);

-- Location: MLABCELL_X44_Y40_N22
\stage[5][9]~154\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][9]~154_combout\ = ( \B[4]~input_o\ & ( \stage[3][17]~80_combout\ & ( (!\B[3]~input_o\ & (\stage[3][25]~85_combout\)) # (\B[3]~input_o\ & ((\stage[3][33]~49_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][17]~80_combout\ & ( 
-- (\stage[3][9]~75_combout\) # (\B[3]~input_o\) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][17]~80_combout\ & ( (!\B[3]~input_o\ & (\stage[3][25]~85_combout\)) # (\B[3]~input_o\ & ((\stage[3][33]~49_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\stage[3][17]~80_combout\ & ( (!\B[3]~input_o\ & \stage[3][9]~75_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][25]~85_combout\,
	datab => \ALT_INV_stage[3][33]~49_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][9]~75_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][17]~80_combout\,
	combout => \stage[5][9]~154_combout\);

-- Location: LABCELL_X43_Y41_N4
\Y~167\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~167_combout\ = ( !\shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\A[9]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][9]~154_combout\))))) # (\Y~11_combout\) ) ) # ( \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & (\A[9]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][41]~153_combout\))))) # (\Y~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001011111111001000101111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_stage[5][41]~153_combout\,
	datad => \ALT_INV_Y~11_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_stage[5][9]~154_combout\,
	combout => \Y~167_combout\);

-- Location: LABCELL_X43_Y36_N38
\stage[5][42]~155\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][42]~155_combout\ = ( \B[4]~input_o\ & ( \B[3]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[3]~input_o\ & ( \stage[3][50]~90_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[3]~input_o\ & ( \stage[3][58]~91_combout\ ) ) ) # ( 
-- !\B[4]~input_o\ & ( !\B[3]~input_o\ & ( \stage[3][42]~89_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][42]~89_combout\,
	datab => \ALT_INV_stage[3][58]~91_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][50]~90_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[5][42]~155_combout\);

-- Location: MLABCELL_X44_Y36_N34
\Y~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = ( \stage[3][53]~122_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\stage[3][61]~123_combout\))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) ) # ( !\stage[3][53]~122_combout\ & ( \Y~0_combout\ & ( 
-- (!\B[4]~input_o\ & (\stage[3][61]~123_combout\ & ((\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001100111111010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][61]~123_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_stage[3][53]~122_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~12_combout\);

-- Location: MLABCELL_X42_Y37_N2
\stage[5][10]~156\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][10]~156_combout\ = ( \stage[3][34]~88_combout\ & ( \B[4]~input_o\ & ( (\B[3]~input_o\) # (\stage[3][26]~96_combout\) ) ) ) # ( !\stage[3][34]~88_combout\ & ( \B[4]~input_o\ & ( (\stage[3][26]~96_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \stage[3][34]~88_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][10]~94_combout\)) # (\B[3]~input_o\ & ((\stage[3][18]~95_combout\))) ) ) ) # ( !\stage[3][34]~88_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\stage[3][10]~94_combout\)) # (\B[3]~input_o\ & ((\stage[3][18]~95_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][26]~96_combout\,
	datab => \ALT_INV_stage[3][10]~94_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][18]~95_combout\,
	datae => \ALT_INV_stage[3][34]~88_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][10]~156_combout\);

-- Location: LABCELL_X43_Y36_N12
\Y~163\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~163_combout\ = ( !\shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\A[10]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][10]~156_combout\))))) # (\Y~12_combout\) ) ) # ( \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & (\A[10]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][42]~155_combout\))))) # (\Y~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000001111001000100000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_stage[5][42]~155_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_Y~12_combout\,
	datag => \ALT_INV_stage[5][10]~156_combout\,
	combout => \Y~163_combout\);

-- Location: MLABCELL_X49_Y37_N38
\stage[5][43]~157\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][43]~157_combout\ = ( \stage[3][43]~100_combout\ & ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & ((\stage[3][51]~101_combout\))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][43]~100_combout\ & ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & 
-- ((\stage[3][51]~101_combout\))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( \stage[3][43]~100_combout\ & ( !\B[3]~input_o\ & ( (!\B[4]~input_o\) # (\stage[3][59]~102_combout\) ) ) ) # ( !\stage[3][43]~100_combout\ & ( !\B[3]~input_o\ & ( 
-- (\B[4]~input_o\ & \stage[3][59]~102_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_stage[3][59]~102_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][51]~101_combout\,
	datae => \ALT_INV_stage[3][43]~100_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[5][43]~157_combout\);

-- Location: LABCELL_X45_Y39_N34
\Y~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = ( \stage[3][52]~112_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\stage[3][60]~113_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][52]~112_combout\ & ( \Y~0_combout\ & ( 
-- (!\B[4]~input_o\ & (((\stage[3][60]~113_combout\ & \B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][60]~113_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_stage[3][52]~112_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~13_combout\);

-- Location: MLABCELL_X49_Y37_N0
\stage[5][11]~158\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][11]~158_combout\ = ( \stage[3][27]~107_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\) # (\stage[3][35]~99_combout\) ) ) ) # ( !\stage[3][27]~107_combout\ & ( \B[4]~input_o\ & ( (\stage[3][35]~99_combout\ & \B[3]~input_o\) ) ) ) # ( 
-- \stage[3][27]~107_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\stage[3][11]~105_combout\))) # (\B[3]~input_o\ & (\stage[3][19]~106_combout\)) ) ) ) # ( !\stage[3][27]~107_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\stage[3][11]~105_combout\))) # (\B[3]~input_o\ & (\stage[3][19]~106_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][19]~106_combout\,
	datab => \ALT_INV_stage[3][11]~105_combout\,
	datac => \ALT_INV_stage[3][35]~99_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][27]~107_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][11]~158_combout\);

-- Location: MLABCELL_X49_Y37_N4
\Y~159\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~159_combout\ = ( !\shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\A[11]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][11]~158_combout\))))) # (\Y~13_combout\) ) ) # ( \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & (\A[11]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][43]~157_combout\))))) # (\Y~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001011111111001000101111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_stage[5][43]~157_combout\,
	datad => \ALT_INV_Y~13_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_stage[5][11]~158_combout\,
	combout => \Y~159_combout\);

-- Location: LABCELL_X45_Y39_N36
\Y~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = ( \stage[3][59]~102_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & (((\stage[3][51]~101_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][59]~102_combout\ & ( \Y~0_combout\ & ( 
-- (!\B[4]~input_o\ & (((!\B[3]~input_o\ & \stage[3][51]~101_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][51]~101_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_stage[3][59]~102_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~14_combout\);

-- Location: LABCELL_X45_Y39_N2
\stage[5][44]~159\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][44]~159_combout\ = ( \fill~0_combout\ & ( \stage[3][60]~113_combout\ & ( ((!\B[3]~input_o\ & ((\stage[3][44]~111_combout\))) # (\B[3]~input_o\ & (\stage[3][52]~112_combout\))) # (\B[4]~input_o\) ) ) ) # ( !\fill~0_combout\ & ( 
-- \stage[3][60]~113_combout\ & ( (!\B[3]~input_o\ & (((\stage[3][44]~111_combout\) # (\B[4]~input_o\)))) # (\B[3]~input_o\ & (\stage[3][52]~112_combout\ & (!\B[4]~input_o\))) ) ) ) # ( \fill~0_combout\ & ( !\stage[3][60]~113_combout\ & ( (!\B[3]~input_o\ & 
-- (((!\B[4]~input_o\ & \stage[3][44]~111_combout\)))) # (\B[3]~input_o\ & (((\B[4]~input_o\)) # (\stage[3][52]~112_combout\))) ) ) ) # ( !\fill~0_combout\ & ( !\stage[3][60]~113_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & 
-- ((\stage[3][44]~111_combout\))) # (\B[3]~input_o\ & (\stage[3][52]~112_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][52]~112_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_stage[3][44]~111_combout\,
	datae => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_stage[3][60]~113_combout\,
	combout => \stage[5][44]~159_combout\);

-- Location: LABCELL_X45_Y39_N6
\stage[5][12]~160\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][12]~160_combout\ = ( \B[4]~input_o\ & ( \stage[3][36]~110_combout\ & ( (\B[3]~input_o\) # (\stage[3][28]~118_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][36]~110_combout\ & ( (!\B[3]~input_o\ & ((\stage[3][12]~116_combout\))) # 
-- (\B[3]~input_o\ & (\stage[3][20]~117_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][36]~110_combout\ & ( (\stage[3][28]~118_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\stage[3][36]~110_combout\ & ( (!\B[3]~input_o\ & 
-- ((\stage[3][12]~116_combout\))) # (\B[3]~input_o\ & (\stage[3][20]~117_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][28]~118_combout\,
	datab => \ALT_INV_stage[3][20]~117_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][12]~116_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][36]~110_combout\,
	combout => \stage[5][12]~160_combout\);

-- Location: MLABCELL_X46_Y39_N8
\Y~155\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~155_combout\ = ( !\shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & ((\A[12]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\stage[5][12]~160_combout\))))) # (\Y~14_combout\) ) ) # ( \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ 
-- & (!\ShiftFN[0]~input_o\ & ((\A[12]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\stage[5][44]~159_combout\))))) # (\Y~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001110111011001100111011101100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Y~14_combout\,
	datac => \ALT_INV_stage[5][44]~159_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_stage[5][12]~160_combout\,
	combout => \Y~155_combout\);

-- Location: MLABCELL_X44_Y36_N2
\stage[5][45]~161\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][45]~161_combout\ = ( \stage[3][45]~121_combout\ & ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & (\stage[3][53]~122_combout\)) # (\B[4]~input_o\ & ((\fill~0_combout\))) ) ) ) # ( !\stage[3][45]~121_combout\ & ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & 
-- (\stage[3][53]~122_combout\)) # (\B[4]~input_o\ & ((\fill~0_combout\))) ) ) ) # ( \stage[3][45]~121_combout\ & ( !\B[3]~input_o\ & ( (!\B[4]~input_o\) # (\stage[3][61]~123_combout\) ) ) ) # ( !\stage[3][45]~121_combout\ & ( !\B[3]~input_o\ & ( 
-- (\B[4]~input_o\ & \stage[3][61]~123_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_stage[3][53]~122_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][61]~123_combout\,
	datae => \ALT_INV_stage[3][45]~121_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[5][45]~161_combout\);

-- Location: MLABCELL_X44_Y36_N18
\Y~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = ( \stage[3][58]~91_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)) # (\stage[3][50]~90_combout\))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) ) # ( !\stage[3][58]~91_combout\ & ( \Y~0_combout\ & ( 
-- (!\B[4]~input_o\ & (\stage[3][50]~90_combout\ & ((!\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000001100110101111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][50]~90_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_stage[3][58]~91_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~15_combout\);

-- Location: MLABCELL_X44_Y36_N24
\stage[5][13]~162\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][13]~162_combout\ = ( \stage[3][37]~120_combout\ & ( \B[3]~input_o\ & ( (\stage[3][21]~127_combout\) # (\B[4]~input_o\) ) ) ) # ( !\stage[3][37]~120_combout\ & ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & \stage[3][21]~127_combout\) ) ) ) # ( 
-- \stage[3][37]~120_combout\ & ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & (\stage[3][13]~126_combout\)) # (\B[4]~input_o\ & ((\stage[3][29]~128_combout\))) ) ) ) # ( !\stage[3][37]~120_combout\ & ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & 
-- (\stage[3][13]~126_combout\)) # (\B[4]~input_o\ & ((\stage[3][29]~128_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_stage[3][13]~126_combout\,
	datac => \ALT_INV_stage[3][21]~127_combout\,
	datad => \ALT_INV_stage[3][29]~128_combout\,
	datae => \ALT_INV_stage[3][37]~120_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[5][13]~162_combout\);

-- Location: LABCELL_X43_Y36_N8
\Y~151\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~151_combout\ = ( !\shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\A[13]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][13]~162_combout\))))) # (\Y~15_combout\) ) ) # ( \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & (\A[13]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][45]~161_combout\))))) # (\Y~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001011111111001000101111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_stage[5][45]~161_combout\,
	datad => \ALT_INV_Y~15_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_stage[5][13]~162_combout\,
	combout => \Y~151_combout\);

-- Location: MLABCELL_X44_Y41_N22
\Y~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = ( \stage[3][57]~64_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\) # (\stage[3][49]~59_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][57]~64_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & 
-- (((\stage[3][49]~59_combout\ & !\B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][49]~59_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_stage[3][57]~64_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~16_combout\);

-- Location: LABCELL_X43_Y41_N18
\stage[5][46]~163\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][46]~163_combout\ = ( \stage[3][46]~131_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][62]~133_combout\)) # (\B[3]~input_o\ & ((\fill~0_combout\))) ) ) ) # ( !\stage[3][46]~131_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\stage[3][62]~133_combout\)) # (\B[3]~input_o\ & ((\fill~0_combout\))) ) ) ) # ( \stage[3][46]~131_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\) # (\stage[3][54]~132_combout\) ) ) ) # ( !\stage[3][46]~131_combout\ & ( !\B[4]~input_o\ & ( 
-- (\stage[3][54]~132_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][62]~133_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[3][54]~132_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][46]~131_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][46]~163_combout\);

-- Location: MLABCELL_X44_Y41_N4
\stage[5][14]~164\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][14]~164_combout\ = ( \stage[3][38]~130_combout\ & ( \B[4]~input_o\ & ( (\B[3]~input_o\) # (\stage[3][30]~138_combout\) ) ) ) # ( !\stage[3][38]~130_combout\ & ( \B[4]~input_o\ & ( (\stage[3][30]~138_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \stage[3][38]~130_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][14]~136_combout\)) # (\B[3]~input_o\ & ((\stage[3][22]~137_combout\))) ) ) ) # ( !\stage[3][38]~130_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\stage[3][14]~136_combout\)) # (\B[3]~input_o\ & ((\stage[3][22]~137_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][30]~138_combout\,
	datab => \ALT_INV_stage[3][14]~136_combout\,
	datac => \ALT_INV_stage[3][22]~137_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][38]~130_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][14]~164_combout\);

-- Location: LABCELL_X45_Y41_N12
\Y~147\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~147_combout\ = ( !\shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & ((\A[14]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\stage[5][14]~164_combout\))))) # (\Y~16_combout\) ) ) # ( \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ 
-- & (!\ShiftFN[0]~input_o\ & ((\A[14]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\stage[5][46]~163_combout\))))) # (\Y~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111111001100110011111110111011001111111011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_stage[5][46]~163_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	datag => \ALT_INV_stage[5][14]~164_combout\,
	combout => \Y~147_combout\);

-- Location: MLABCELL_X46_Y37_N36
\stage[5][47]~165\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][47]~165_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( !\stage[3][63]~143_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][55]~142_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][47]~141_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111111001100110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][63]~143_combout\,
	datac => \ALT_INV_stage[3][55]~142_combout\,
	datad => \ALT_INV_stage[3][47]~141_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][47]~165_combout\);

-- Location: MLABCELL_X46_Y41_N2
\Y~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = ( \stage[3][56]~19_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\) # (\stage[3][48]~14_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][56]~19_combout\ & ( \Y~0_combout\ & ( (!\B[4]~input_o\ & 
-- (((\stage[3][48]~14_combout\ & !\B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][48]~14_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_stage[3][56]~19_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~17_combout\);

-- Location: MLABCELL_X46_Y37_N20
\stage[5][15]~166\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][15]~166_combout\ = ( \B[3]~input_o\ & ( \stage[3][39]~140_combout\ & ( (\stage[3][23]~147_combout\) # (\B[4]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \stage[3][39]~140_combout\ & ( (!\B[4]~input_o\ & ((\stage[3][15]~146_combout\))) # 
-- (\B[4]~input_o\ & (\stage[3][31]~148_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\stage[3][39]~140_combout\ & ( (!\B[4]~input_o\ & \stage[3][23]~147_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\stage[3][39]~140_combout\ & ( (!\B[4]~input_o\ & 
-- ((\stage[3][15]~146_combout\))) # (\B[4]~input_o\ & (\stage[3][31]~148_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_stage[3][31]~148_combout\,
	datac => \ALT_INV_stage[3][23]~147_combout\,
	datad => \ALT_INV_stage[3][15]~146_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_stage[3][39]~140_combout\,
	combout => \stage[5][15]~166_combout\);

-- Location: LABCELL_X45_Y41_N8
\Y~143\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~143_combout\ = ( !\shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & ((\A[15]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\stage[5][15]~166_combout\))))) # (\Y~17_combout\) ) ) # ( \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ 
-- & (!\ShiftFN[0]~input_o\ & ((\A[15]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\stage[5][47]~165_combout\))))) # (\Y~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111111111000000111111111110001011111111111000101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_stage[5][47]~165_combout\,
	datad => \ALT_INV_Y~17_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	datag => \ALT_INV_stage[5][15]~166_combout\,
	combout => \Y~143_combout\);

-- Location: LABCELL_X47_Y38_N10
\Y~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = ( \shamt[5]~0_combout\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~19_combout\);

-- Location: MLABCELL_X46_Y41_N0
\Y~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = ( \stage[3][56]~19_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\) # (\stage[3][48]~14_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][56]~19_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ 
-- & (((\stage[3][48]~14_combout\ & !\B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110101000001010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][48]~14_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][56]~19_combout\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~20_combout\);

-- Location: MLABCELL_X46_Y37_N24
\stage[5][16]~167\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][16]~167_combout\ = ( \stage[3][24]~40_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][32]~4_combout\)) # (\B[3]~input_o\ & ((\stage[3][40]~9_combout\))) ) ) ) # ( !\stage[3][24]~40_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\stage[3][32]~4_combout\)) # (\B[3]~input_o\ & ((\stage[3][40]~9_combout\))) ) ) ) # ( \stage[3][24]~40_combout\ & ( !\B[4]~input_o\ & ( (\stage[3][16]~35_combout\) # (\B[3]~input_o\) ) ) ) # ( !\stage[3][24]~40_combout\ & ( !\B[4]~input_o\ & ( 
-- (!\B[3]~input_o\ & \stage[3][16]~35_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_stage[3][16]~35_combout\,
	datac => \ALT_INV_stage[3][32]~4_combout\,
	datad => \ALT_INV_stage[3][40]~9_combout\,
	datae => \ALT_INV_stage[3][24]~40_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][16]~167_combout\);

-- Location: LABCELL_X45_Y41_N4
\Y~139\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~139_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\A[16]~input_o\)))) # (\ShiftFN[0]~input_o\ & (!\shamt[5]~0_combout\ & ((\stage[5][47]~165_combout\))))) # (\Y~20_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\shamt[5]~0_combout\ 
-- & (\stage[5][16]~167_combout\))) # (\Y~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001111110011001110110011101100111011111110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_Y~20_combout\,
	datac => \ALT_INV_stage[5][16]~167_combout\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_stage[5][47]~165_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~139_combout\);

-- Location: MLABCELL_X44_Y40_N6
\stage[5][17]~168\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][17]~168_combout\ = ( \B[4]~input_o\ & ( \stage[3][17]~80_combout\ & ( (!\B[3]~input_o\ & ((\stage[3][33]~49_combout\))) # (\B[3]~input_o\ & (\stage[3][41]~54_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][17]~80_combout\ & ( 
-- (!\B[3]~input_o\) # (\stage[3][25]~85_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][17]~80_combout\ & ( (!\B[3]~input_o\ & ((\stage[3][33]~49_combout\))) # (\B[3]~input_o\ & (\stage[3][41]~54_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\stage[3][17]~80_combout\ & ( (\B[3]~input_o\ & \stage[3][25]~85_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][41]~54_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][33]~49_combout\,
	datad => \ALT_INV_stage[3][25]~85_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][17]~80_combout\,
	combout => \stage[5][17]~168_combout\);

-- Location: MLABCELL_X44_Y41_N20
\Y~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = ( \stage[3][57]~64_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\) # (\stage[3][49]~59_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][57]~64_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ 
-- & (((\stage[3][49]~59_combout\ & !\B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110101000001010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][49]~59_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][57]~64_combout\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~21_combout\);

-- Location: LABCELL_X45_Y41_N20
\Y~135\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~135_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\A[17]~input_o\)))) # (\ShiftFN[0]~input_o\ & (!\shamt[5]~0_combout\ & (\stage[5][46]~163_combout\)))) # (\Y~21_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( (((!\shamt[5]~0_combout\ 
-- & (\stage[5][17]~168_combout\))) # (\Y~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111000010101111111111110010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_stage[5][46]~163_combout\,
	datac => \ALT_INV_stage[5][17]~168_combout\,
	datad => \ALT_INV_Y~21_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~135_combout\);

-- Location: MLABCELL_X42_Y37_N24
\stage[5][18]~169\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][18]~169_combout\ = ( \stage[3][34]~88_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\) # (\stage[3][42]~89_combout\) ) ) ) # ( !\stage[3][34]~88_combout\ & ( \B[4]~input_o\ & ( (\stage[3][42]~89_combout\ & \B[3]~input_o\) ) ) ) # ( 
-- \stage[3][34]~88_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\stage[3][18]~95_combout\))) # (\B[3]~input_o\ & (\stage[3][26]~96_combout\)) ) ) ) # ( !\stage[3][34]~88_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\stage[3][18]~95_combout\))) # (\B[3]~input_o\ & (\stage[3][26]~96_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][26]~96_combout\,
	datab => \ALT_INV_stage[3][42]~89_combout\,
	datac => \ALT_INV_stage[3][18]~95_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][34]~88_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][18]~169_combout\);

-- Location: MLABCELL_X44_Y36_N16
\Y~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = ( \stage[3][58]~91_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)) # (\stage[3][50]~90_combout\))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) ) # ( !\stage[3][58]~91_combout\ & ( \Y~19_combout\ & ( 
-- (!\B[4]~input_o\ & (\stage[3][50]~90_combout\ & ((!\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011000000110101001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][50]~90_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][58]~91_combout\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~22_combout\);

-- Location: LABCELL_X43_Y36_N4
\Y~131\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~131_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (\A[18]~input_o\)) # (\ShiftFN[0]~input_o\ & (((!\shamt[5]~0_combout\ & \stage[5][45]~161_combout\))))) # (\Y~22_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( ((((!\shamt[5]~0_combout\ & 
-- \stage[5][18]~169_combout\)) # (\Y~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101000001011100000011000000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_stage[5][18]~169_combout\,
	datad => \ALT_INV_stage[5][45]~161_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y~22_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~131_combout\);

-- Location: LABCELL_X45_Y39_N38
\Y~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = ( \stage[3][59]~102_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ & (((\stage[3][51]~101_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][59]~102_combout\ & ( \Y~19_combout\ & ( 
-- (!\B[4]~input_o\ & (((!\B[3]~input_o\ & \stage[3][51]~101_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101110001010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_stage[3][51]~101_combout\,
	datae => \ALT_INV_stage[3][59]~102_combout\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~23_combout\);

-- Location: MLABCELL_X49_Y37_N26
\stage[5][19]~170\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][19]~170_combout\ = ( \stage[3][27]~107_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\stage[3][35]~99_combout\))) # (\B[3]~input_o\ & (\stage[3][43]~100_combout\)) ) ) ) # ( !\stage[3][27]~107_combout\ & ( \B[4]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\stage[3][35]~99_combout\))) # (\B[3]~input_o\ & (\stage[3][43]~100_combout\)) ) ) ) # ( \stage[3][27]~107_combout\ & ( !\B[4]~input_o\ & ( (\B[3]~input_o\) # (\stage[3][19]~106_combout\) ) ) ) # ( !\stage[3][27]~107_combout\ & ( 
-- !\B[4]~input_o\ & ( (\stage[3][19]~106_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][19]~106_combout\,
	datab => \ALT_INV_stage[3][43]~100_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][35]~99_combout\,
	datae => \ALT_INV_stage[3][27]~107_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][19]~170_combout\);

-- Location: MLABCELL_X46_Y39_N24
\Y~127\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~127_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\A[19]~input_o\)))) # (\ShiftFN[0]~input_o\ & (\stage[5][44]~159_combout\ & (!\shamt[5]~0_combout\)))) # (\Y~23_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- (((\stage[5][19]~170_combout\ & (!\shamt[5]~0_combout\))) # (\Y~23_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011100110011001111110011001111110111111100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][44]~159_combout\,
	datab => \ALT_INV_Y~23_combout\,
	datac => \ALT_INV_stage[5][19]~170_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~127_combout\);

-- Location: LABCELL_X45_Y39_N32
\Y~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = ( \stage[3][52]~112_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\stage[3][60]~113_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\stage[3][52]~112_combout\ & ( \Y~19_combout\ & ( 
-- (!\B[4]~input_o\ & (((\stage[3][60]~113_combout\ & \B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001101011111010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][60]~113_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][52]~112_combout\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~24_combout\);

-- Location: LABCELL_X45_Y39_N8
\stage[5][20]~171\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][20]~171_combout\ = ( \B[4]~input_o\ & ( \stage[3][28]~118_combout\ & ( (!\B[3]~input_o\ & (\stage[3][36]~110_combout\)) # (\B[3]~input_o\ & ((\stage[3][44]~111_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][28]~118_combout\ & ( 
-- (\B[3]~input_o\) # (\stage[3][20]~117_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][28]~118_combout\ & ( (!\B[3]~input_o\ & (\stage[3][36]~110_combout\)) # (\B[3]~input_o\ & ((\stage[3][44]~111_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\stage[3][28]~118_combout\ & ( (\stage[3][20]~117_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][36]~110_combout\,
	datab => \ALT_INV_stage[3][20]~117_combout\,
	datac => \ALT_INV_stage[3][44]~111_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][28]~118_combout\,
	combout => \stage[5][20]~171_combout\);

-- Location: MLABCELL_X49_Y37_N20
\Y~123\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~123_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\A[20]~input_o\)))) # (\ShiftFN[0]~input_o\ & (!\shamt[5]~0_combout\ & ((\stage[5][43]~157_combout\))))) # (\Y~24_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\shamt[5]~0_combout\ 
-- & (\stage[5][20]~171_combout\))) # (\Y~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001111110011001110110011101100111011111110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_Y~24_combout\,
	datac => \ALT_INV_stage[5][20]~171_combout\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_stage[5][43]~157_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~123_combout\);

-- Location: MLABCELL_X44_Y36_N32
\Y~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = ( \stage[3][53]~122_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\stage[3][61]~123_combout\))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) ) # ( !\stage[3][53]~122_combout\ & ( \Y~19_combout\ & ( 
-- (!\B[4]~input_o\ & (\stage[3][61]~123_combout\ & ((\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][61]~123_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_stage[3][53]~122_combout\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~25_combout\);

-- Location: MLABCELL_X44_Y36_N10
\stage[5][21]~172\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][21]~172_combout\ = ( \B[4]~input_o\ & ( \stage[3][29]~128_combout\ & ( (!\B[3]~input_o\ & (\stage[3][37]~120_combout\)) # (\B[3]~input_o\ & ((\stage[3][45]~121_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][29]~128_combout\ & ( 
-- (\B[3]~input_o\) # (\stage[3][21]~127_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][29]~128_combout\ & ( (!\B[3]~input_o\ & (\stage[3][37]~120_combout\)) # (\B[3]~input_o\ & ((\stage[3][45]~121_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\stage[3][29]~128_combout\ & ( (\stage[3][21]~127_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][37]~120_combout\,
	datab => \ALT_INV_stage[3][21]~127_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][45]~121_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][29]~128_combout\,
	combout => \stage[5][21]~172_combout\);

-- Location: LABCELL_X43_Y36_N0
\Y~119\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~119_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\A[21]~input_o\)))) # (\ShiftFN[0]~input_o\ & (\stage[5][42]~155_combout\ & (!\shamt[5]~0_combout\)))) # (\Y~25_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- (((\stage[5][21]~172_combout\ & (!\shamt[5]~0_combout\))) # (\Y~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011100110011001111110011001111110111111100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][42]~155_combout\,
	datab => \ALT_INV_Y~25_combout\,
	datac => \ALT_INV_stage[5][21]~172_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~119_combout\);

-- Location: LABCELL_X43_Y41_N0
\stage[5][22]~173\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][22]~173_combout\ = ( \stage[3][46]~131_combout\ & ( \B[4]~input_o\ & ( (\stage[3][38]~130_combout\) # (\B[3]~input_o\) ) ) ) # ( !\stage[3][46]~131_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & \stage[3][38]~130_combout\) ) ) ) # ( 
-- \stage[3][46]~131_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][22]~137_combout\)) # (\B[3]~input_o\ & ((\stage[3][30]~138_combout\))) ) ) ) # ( !\stage[3][46]~131_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\stage[3][22]~137_combout\)) # (\B[3]~input_o\ & ((\stage[3][30]~138_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_stage[3][38]~130_combout\,
	datac => \ALT_INV_stage[3][22]~137_combout\,
	datad => \ALT_INV_stage[3][30]~138_combout\,
	datae => \ALT_INV_stage[3][46]~131_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][22]~173_combout\);

-- Location: LABCELL_X43_Y41_N14
\Y~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = ( \stage[3][62]~133_combout\ & ( \Y~19_combout\ & ( (!\B[4]~input_o\ & (((\stage[3][54]~132_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) ) # ( !\stage[3][62]~133_combout\ & ( \Y~19_combout\ & ( 
-- (!\B[4]~input_o\ & (!\B[3]~input_o\ & ((\stage[3][54]~132_combout\)))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010001100110101111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[3][54]~132_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_stage[3][62]~133_combout\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~26_combout\);

-- Location: LABCELL_X43_Y41_N20
\Y~115\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~115_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\A[22]~input_o\)))) # (\ShiftFN[0]~input_o\ & (\stage[5][41]~153_combout\ & ((!\shamt[5]~0_combout\))))) # (\Y~26_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- ((((\stage[5][22]~173_combout\ & !\shamt[5]~0_combout\)) # (\Y~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011010100110000000011110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][41]~153_combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_stage[5][22]~173_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y~26_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~115_combout\);

-- Location: LABCELL_X45_Y40_N0
\Y~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = ( !\shamt[5]~0_combout\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~18_combout\);

-- Location: MLABCELL_X46_Y41_N14
\Y~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = ( \A[23]~input_o\ & ( \Y~19_combout\ & ( (((\stage[3][55]~142_combout\ & \stage[5][55]~42_combout\)) # (\stage[5][55]~152_combout\)) # (\Equal2~0_combout\) ) ) ) # ( !\A[23]~input_o\ & ( \Y~19_combout\ & ( ((\stage[3][55]~142_combout\ & 
-- \stage[5][55]~42_combout\)) # (\stage[5][55]~152_combout\) ) ) ) # ( \A[23]~input_o\ & ( !\Y~19_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111010111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][55]~142_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_stage[5][55]~152_combout\,
	datad => \ALT_INV_stage[5][55]~42_combout\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~27_combout\);

-- Location: MLABCELL_X46_Y37_N28
\stage[5][23]~174\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][23]~174_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][47]~141_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][39]~140_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][31]~148_combout\ ) ) ) # 
-- ( !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][23]~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][23]~147_combout\,
	datab => \ALT_INV_stage[3][39]~140_combout\,
	datac => \ALT_INV_stage[3][47]~141_combout\,
	datad => \ALT_INV_stage[3][31]~148_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][23]~174_combout\);

-- Location: MLABCELL_X46_Y41_N26
\Y~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = ( \stage[5][40]~150_combout\ & ( (((\Y~18_combout\ & \stage[5][23]~174_combout\)) # (\Y~27_combout\)) # (\Y~0_combout\) ) ) # ( !\stage[5][40]~150_combout\ & ( ((\Y~18_combout\ & \stage[5][23]~174_combout\)) # (\Y~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~18_combout\,
	datac => \ALT_INV_Y~27_combout\,
	datad => \ALT_INV_stage[5][23]~174_combout\,
	dataf => \ALT_INV_stage[5][40]~150_combout\,
	combout => \Y~28_combout\);

-- Location: MLABCELL_X46_Y37_N14
\stage[5][24]~175\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][24]~175_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][48]~14_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][40]~9_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][32]~4_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][24]~40_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][32]~4_combout\,
	datab => \ALT_INV_stage[3][40]~9_combout\,
	datac => \ALT_INV_stage[3][24]~40_combout\,
	datad => \ALT_INV_stage[3][48]~14_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][24]~175_combout\);

-- Location: MLABCELL_X46_Y41_N6
\Y~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = ( \A[24]~input_o\ & ( \Y~19_combout\ & ( ((!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][56]~19_combout\)))) # (\Equal2~0_combout\) ) ) ) # ( !\A[24]~input_o\ & ( \Y~19_combout\ & ( 
-- (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][56]~19_combout\))) ) ) ) # ( \A[24]~input_o\ & ( !\Y~19_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101010000010111110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_stage[5][55]~42_combout\,
	datad => \ALT_INV_stage[3][56]~19_combout\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~29_combout\);

-- Location: MLABCELL_X44_Y41_N30
\Y~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = ( \Y~29_combout\ ) # ( !\Y~29_combout\ & ( (!\Y~0_combout\ & (\Y~18_combout\ & ((\stage[5][24]~175_combout\)))) # (\Y~0_combout\ & (((\Y~18_combout\ & \stage[5][24]~175_combout\)) # (\stage[5][39]~144_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~18_combout\,
	datac => \ALT_INV_stage[5][39]~144_combout\,
	datad => \ALT_INV_stage[5][24]~175_combout\,
	dataf => \ALT_INV_Y~29_combout\,
	combout => \Y~30_combout\);

-- Location: MLABCELL_X44_Y40_N10
\stage[5][25]~176\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][25]~176_combout\ = ( \B[4]~input_o\ & ( \stage[3][41]~54_combout\ & ( (!\B[3]~input_o\) # (\stage[3][49]~59_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][41]~54_combout\ & ( (!\B[3]~input_o\ & ((\stage[3][25]~85_combout\))) # (\B[3]~input_o\ 
-- & (\stage[3][33]~49_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][41]~54_combout\ & ( (\stage[3][49]~59_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\stage[3][41]~54_combout\ & ( (!\B[3]~input_o\ & ((\stage[3][25]~85_combout\))) # 
-- (\B[3]~input_o\ & (\stage[3][33]~49_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][49]~59_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][33]~49_combout\,
	datad => \ALT_INV_stage[3][25]~85_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][41]~54_combout\,
	combout => \stage[5][25]~176_combout\);

-- Location: MLABCELL_X44_Y41_N10
\Y~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = ( \A[25]~input_o\ & ( \Y~19_combout\ & ( ((!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][57]~64_combout\)))) # (\Equal2~0_combout\) ) ) ) # ( !\A[25]~input_o\ & ( \Y~19_combout\ & ( 
-- (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][57]~64_combout\))) ) ) ) # ( \A[25]~input_o\ & ( !\Y~19_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101010011010100110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][57]~64_combout\,
	datac => \ALT_INV_stage[5][55]~42_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~31_combout\);

-- Location: MLABCELL_X44_Y41_N28
\Y~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = ( \Y~31_combout\ ) # ( !\Y~31_combout\ & ( (!\Y~0_combout\ & (\Y~18_combout\ & ((\stage[5][25]~176_combout\)))) # (\Y~0_combout\ & (((\Y~18_combout\ & \stage[5][25]~176_combout\)) # (\stage[5][38]~134_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_Y~18_combout\,
	datac => \ALT_INV_stage[5][38]~134_combout\,
	datad => \ALT_INV_stage[5][25]~176_combout\,
	dataf => \ALT_INV_Y~31_combout\,
	combout => \Y~32_combout\);

-- Location: MLABCELL_X42_Y37_N30
\stage[5][26]~177\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][26]~177_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][50]~90_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \stage[3][42]~89_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][34]~88_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \stage[3][26]~96_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][34]~88_combout\,
	datab => \ALT_INV_stage[3][50]~90_combout\,
	datac => \ALT_INV_stage[3][42]~89_combout\,
	datad => \ALT_INV_stage[3][26]~96_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][26]~177_combout\);

-- Location: MLABCELL_X44_Y36_N28
\Y~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = ( \A[26]~input_o\ & ( \Y~19_combout\ & ( ((!\stage[5][55]~42_combout\ & ((\fill~0_combout\))) # (\stage[5][55]~42_combout\ & (\stage[3][58]~91_combout\))) # (\Equal2~0_combout\) ) ) ) # ( !\A[26]~input_o\ & ( \Y~19_combout\ & ( 
-- (!\stage[5][55]~42_combout\ & ((\fill~0_combout\))) # (\stage[5][55]~42_combout\ & (\stage[3][58]~91_combout\)) ) ) ) # ( \A[26]~input_o\ & ( !\Y~19_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000101101011110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][55]~42_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_stage[3][58]~91_combout\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~33_combout\);

-- Location: MLABCELL_X44_Y36_N12
\Y~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = ( \Y~0_combout\ & ( (((\stage[5][26]~177_combout\ & \Y~18_combout\)) # (\Y~33_combout\)) # (\stage[5][37]~124_combout\) ) ) # ( !\Y~0_combout\ & ( ((\stage[5][26]~177_combout\ & \Y~18_combout\)) # (\Y~33_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][26]~177_combout\,
	datab => \ALT_INV_stage[5][37]~124_combout\,
	datac => \ALT_INV_Y~33_combout\,
	datad => \ALT_INV_Y~18_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~34_combout\);

-- Location: LABCELL_X45_Y39_N28
\Y~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = ( \A[27]~input_o\ & ( \Y~19_combout\ & ( ((!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][59]~102_combout\)))) # (\Equal2~0_combout\) ) ) ) # ( !\A[27]~input_o\ & ( \Y~19_combout\ & ( 
-- (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][59]~102_combout\))) ) ) ) # ( \A[27]~input_o\ & ( !\Y~19_combout\ & ( \Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101010011010100110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[3][59]~102_combout\,
	datac => \ALT_INV_stage[5][55]~42_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_Y~19_combout\,
	combout => \Y~35_combout\);

-- Location: MLABCELL_X49_Y37_N30
\stage[5][27]~178\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][27]~178_combout\ = ( \stage[3][27]~107_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\stage[3][43]~100_combout\))) # (\B[3]~input_o\ & (\stage[3][51]~101_combout\)) ) ) ) # ( !\stage[3][27]~107_combout\ & ( \B[4]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\stage[3][43]~100_combout\))) # (\B[3]~input_o\ & (\stage[3][51]~101_combout\)) ) ) ) # ( \stage[3][27]~107_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\) # (\stage[3][35]~99_combout\) ) ) ) # ( !\stage[3][27]~107_combout\ & ( 
-- !\B[4]~input_o\ & ( (\B[3]~input_o\ & \stage[3][35]~99_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][51]~101_combout\,
	datab => \ALT_INV_stage[3][43]~100_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][35]~99_combout\,
	datae => \ALT_INV_stage[3][27]~107_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][27]~178_combout\);

-- Location: LABCELL_X45_Y40_N36
\Y~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = ( \stage[5][27]~178_combout\ & ( (((\Y~0_combout\ & \stage[5][36]~114_combout\)) # (\Y~35_combout\)) # (\Y~18_combout\) ) ) # ( !\stage[5][27]~178_combout\ & ( ((\Y~0_combout\ & \stage[5][36]~114_combout\)) # (\Y~35_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_stage[5][36]~114_combout\,
	datac => \ALT_INV_Y~18_combout\,
	datad => \ALT_INV_Y~35_combout\,
	dataf => \ALT_INV_stage[5][27]~178_combout\,
	combout => \Y~36_combout\);

-- Location: LABCELL_X45_Y39_N14
\stage[5][28]~179\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][28]~179_combout\ = ( \B[4]~input_o\ & ( \stage[3][28]~118_combout\ & ( (!\B[3]~input_o\ & (\stage[3][44]~111_combout\)) # (\B[3]~input_o\ & ((\stage[3][52]~112_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \stage[3][28]~118_combout\ & ( 
-- (!\B[3]~input_o\) # (\stage[3][36]~110_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\stage[3][28]~118_combout\ & ( (!\B[3]~input_o\ & (\stage[3][44]~111_combout\)) # (\B[3]~input_o\ & ((\stage[3][52]~112_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\stage[3][28]~118_combout\ & ( (\B[3]~input_o\ & \stage[3][36]~110_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][44]~111_combout\,
	datab => \ALT_INV_stage[3][52]~112_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[3][36]~110_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][28]~118_combout\,
	combout => \stage[5][28]~179_combout\);

-- Location: MLABCELL_X46_Y39_N0
\Y~111\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~111_combout\ = ( !\shamt[5]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\A[28]~input_o\)) # (\ShiftFN[0]~input_o\ & (((\stage[5][35]~103_combout\)))))) # (\ShiftFN[1]~input_o\ & ((((\stage[5][28]~179_combout\))))) ) ) # ( 
-- \shamt[5]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\A[28]~input_o\))) # (\ShiftFN[1]~input_o\ & ((((\stage[5][60]~109_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100000000001000100000111100100111111111110010001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_stage[5][60]~109_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_stage[5][28]~179_combout\,
	datag => \ALT_INV_stage[5][35]~103_combout\,
	combout => \Y~111_combout\);

-- Location: MLABCELL_X44_Y36_N38
\stage[5][29]~180\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][29]~180_combout\ = ( \stage[3][45]~121_combout\ & ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & ((\stage[3][37]~120_combout\))) # (\B[4]~input_o\ & (\stage[3][53]~122_combout\)) ) ) ) # ( !\stage[3][45]~121_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[4]~input_o\ & ((\stage[3][37]~120_combout\))) # (\B[4]~input_o\ & (\stage[3][53]~122_combout\)) ) ) ) # ( \stage[3][45]~121_combout\ & ( !\B[3]~input_o\ & ( (\stage[3][29]~128_combout\) # (\B[4]~input_o\) ) ) ) # ( !\stage[3][45]~121_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[4]~input_o\ & \stage[3][29]~128_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_stage[3][53]~122_combout\,
	datac => \ALT_INV_stage[3][29]~128_combout\,
	datad => \ALT_INV_stage[3][37]~120_combout\,
	datae => \ALT_INV_stage[3][45]~121_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[5][29]~180_combout\);

-- Location: MLABCELL_X42_Y37_N20
\Y~107\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~107_combout\ = ( !\shamt[5]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\A[29]~input_o\)) # (\ShiftFN[0]~input_o\ & (((\stage[5][34]~92_combout\)))))) # (\ShiftFN[1]~input_o\ & ((((\stage[5][29]~180_combout\))))) ) ) # ( 
-- \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\A[29]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][61]~98_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100111001000100010001000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_stage[5][61]~98_combout\,
	datad => \ALT_INV_stage[5][29]~180_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_stage[5][34]~92_combout\,
	combout => \Y~107_combout\);

-- Location: LABCELL_X43_Y41_N24
\stage[5][30]~181\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][30]~181_combout\ = ( \stage[3][54]~132_combout\ & ( \B[4]~input_o\ & ( (\stage[3][46]~131_combout\) # (\B[3]~input_o\) ) ) ) # ( !\stage[3][54]~132_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & \stage[3][46]~131_combout\) ) ) ) # ( 
-- \stage[3][54]~132_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\stage[3][30]~138_combout\))) # (\B[3]~input_o\ & (\stage[3][38]~130_combout\)) ) ) ) # ( !\stage[3][54]~132_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\stage[3][30]~138_combout\))) # (\B[3]~input_o\ & (\stage[3][38]~130_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_stage[3][38]~130_combout\,
	datac => \ALT_INV_stage[3][46]~131_combout\,
	datad => \ALT_INV_stage[3][30]~138_combout\,
	datae => \ALT_INV_stage[3][54]~132_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][30]~181_combout\);

-- Location: MLABCELL_X44_Y40_N0
\Y~103\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~103_combout\ = ( !\shamt[5]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\A[30]~input_o\)) # (\ShiftFN[0]~input_o\ & (((\stage[5][33]~65_combout\)))))) # (\ShiftFN[1]~input_o\ & ((((\stage[5][30]~181_combout\))))) ) ) # ( 
-- \shamt[5]~0_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\A[30]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[5][62]~87_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100111001000100010001000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_stage[5][62]~87_combout\,
	datad => \ALT_INV_stage[5][30]~181_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_stage[5][33]~65_combout\,
	combout => \Y~103_combout\);

-- Location: MLABCELL_X46_Y37_N18
\stage[5][31]~182\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][31]~182_combout\ = ( \B[3]~input_o\ & ( \stage[3][55]~142_combout\ & ( (\stage[3][39]~140_combout\) # (\B[4]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \stage[3][55]~142_combout\ & ( (!\B[4]~input_o\ & (\stage[3][31]~148_combout\)) # 
-- (\B[4]~input_o\ & ((\stage[3][47]~141_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\stage[3][55]~142_combout\ & ( (!\B[4]~input_o\ & \stage[3][39]~140_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\stage[3][55]~142_combout\ & ( (!\B[4]~input_o\ & 
-- (\stage[3][31]~148_combout\)) # (\B[4]~input_o\ & ((\stage[3][47]~141_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_stage[3][39]~140_combout\,
	datac => \ALT_INV_stage[3][31]~148_combout\,
	datad => \ALT_INV_stage[3][47]~141_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_stage[3][55]~142_combout\,
	combout => \stage[5][31]~182_combout\);

-- Location: LABCELL_X47_Y37_N8
\Y~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\shamt[5]~0_combout\ & ((\stage[5][31]~182_combout\))) # (\shamt[5]~0_combout\ & (\stage[5][63]~44_combout\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( 
-- (!\shamt[5]~0_combout\ & ((\stage[5][31]~182_combout\))) # (\shamt[5]~0_combout\ & (\stage[5][63]~44_combout\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (\stage[5][32]~20_combout\ & !\shamt[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][63]~44_combout\,
	datab => \ALT_INV_stage[5][31]~182_combout\,
	datac => \ALT_INV_stage[5][32]~20_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y~37_combout\);

-- Location: MLABCELL_X46_Y38_N30
\Y~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = ( \A[31]~input_o\ & ( (\Equal2~0_combout\) # (\Y~37_combout\) ) ) # ( !\A[31]~input_o\ & ( \Y~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Y~38_combout\);

-- Location: LABCELL_X47_Y37_N34
\Y~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = ( \Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \stage[5][63]~44_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \fill~0_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][31]~182_combout\ 
-- ) ) ) # ( !\Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][32]~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][63]~44_combout\,
	datab => \ALT_INV_stage[5][31]~182_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[5][32]~20_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~39_combout\);

-- Location: LABCELL_X47_Y38_N16
\Y~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & (\Y~39_combout\)) # (\Equal2~0_combout\ & ((\A[32]~input_o\)))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\Y~39_combout\))) # 
-- (\Equal2~0_combout\ & (((\A[32]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Y~39_combout\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~40_combout\);

-- Location: MLABCELL_X44_Y40_N32
\Y~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = ( \Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \stage[5][62]~87_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \fill~0_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][30]~181_combout\ 
-- ) ) ) # ( !\Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][33]~65_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][62]~87_combout\,
	datab => \ALT_INV_stage[5][30]~181_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[5][33]~65_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~41_combout\);

-- Location: LABCELL_X43_Y44_N0
\Y~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~41_combout\))) # (\Equal2~0_combout\ & (\A[33]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~41_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[33]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~41_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~42_combout\);

-- Location: MLABCELL_X42_Y37_N32
\Y~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = ( \stage[5][34]~92_combout\ & ( \shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][61]~98_combout\))) ) ) ) # ( !\stage[5][34]~92_combout\ & ( \shamt[5]~0_combout\ & ( 
-- (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][61]~98_combout\))) ) ) ) # ( \stage[5][34]~92_combout\ & ( !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\) # (\stage[5][29]~180_combout\) ) ) ) # ( !\stage[5][34]~92_combout\ & 
-- ( !\shamt[5]~0_combout\ & ( (\stage[5][29]~180_combout\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[5][29]~180_combout\,
	datac => \ALT_INV_stage[5][61]~98_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_stage[5][34]~92_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~43_combout\);

-- Location: LABCELL_X47_Y38_N12
\Y~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = ( \Equal2~0_combout\ & ( ((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[34]~input_o\) ) ) # ( !\Equal2~0_combout\ & ( (!\ExtWord~input_o\ & (\Y~43_combout\)) # (\ExtWord~input_o\ & ((\Y~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_Y~43_combout\,
	datad => \ALT_INV_Y~37_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~44_combout\);

-- Location: MLABCELL_X46_Y39_N22
\Y~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = ( \Equal0~0_combout\ & ( \stage[5][35]~103_combout\ & ( (!\shamt[5]~0_combout\ & (\stage[5][28]~179_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][60]~109_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( \stage[5][35]~103_combout\ & ( 
-- (!\shamt[5]~0_combout\) # (\fill~0_combout\) ) ) ) # ( \Equal0~0_combout\ & ( !\stage[5][35]~103_combout\ & ( (!\shamt[5]~0_combout\ & (\stage[5][28]~179_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][60]~109_combout\))) ) ) ) # ( !\Equal0~0_combout\ & 
-- ( !\stage[5][35]~103_combout\ & ( (\fill~0_combout\ & \shamt[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[5][28]~179_combout\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_stage[5][60]~109_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_stage[5][35]~103_combout\,
	combout => \Y~45_combout\);

-- Location: LABCELL_X43_Y40_N22
\Y~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~45_combout\))) # (\Equal2~0_combout\ & (\A[35]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~45_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[35]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~45_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~46_combout\);

-- Location: MLABCELL_X46_Y41_N36
\stage[5][59]~183\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][59]~183_combout\ = ( \stage[3][59]~102_combout\ & ( (\stage[5][55]~42_combout\) # (\fill~0_combout\) ) ) # ( !\stage[3][59]~102_combout\ & ( (\fill~0_combout\ & !\stage[5][55]~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[5][55]~42_combout\,
	dataf => \ALT_INV_stage[3][59]~102_combout\,
	combout => \stage[5][59]~183_combout\);

-- Location: LABCELL_X45_Y40_N26
\Y~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = ( \stage[5][36]~114_combout\ & ( \stage[5][27]~178_combout\ & ( (!\shamt[5]~0_combout\) # ((!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][59]~183_combout\)))) ) ) ) # ( !\stage[5][36]~114_combout\ & ( 
-- \stage[5][27]~178_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\ & (\shamt[5]~0_combout\))) # (\Equal0~0_combout\ & (((!\shamt[5]~0_combout\) # (\stage[5][59]~183_combout\)))) ) ) ) # ( \stage[5][36]~114_combout\ & ( !\stage[5][27]~178_combout\ & ( 
-- (!\Equal0~0_combout\ & (((!\shamt[5]~0_combout\)) # (\fill~0_combout\))) # (\Equal0~0_combout\ & (((\shamt[5]~0_combout\ & \stage[5][59]~183_combout\)))) ) ) ) # ( !\stage[5][36]~114_combout\ & ( !\stage[5][27]~178_combout\ & ( (\shamt[5]~0_combout\ & 
-- ((!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][59]~183_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_stage[5][59]~183_combout\,
	datae => \ALT_INV_stage[5][36]~114_combout\,
	dataf => \ALT_INV_stage[5][27]~178_combout\,
	combout => \Y~47_combout\);

-- Location: LABCELL_X45_Y40_N4
\Y~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~47_combout\))) # (\Equal2~0_combout\ & (\A[36]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~47_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[36]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~47_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~48_combout\);

-- Location: MLABCELL_X44_Y36_N14
\stage[5][58]~184\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][58]~184_combout\ = ( \stage[5][55]~42_combout\ & ( \stage[3][58]~91_combout\ ) ) # ( !\stage[5][55]~42_combout\ & ( \fill~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][58]~91_combout\,
	dataf => \ALT_INV_stage[5][55]~42_combout\,
	combout => \stage[5][58]~184_combout\);

-- Location: LABCELL_X45_Y40_N30
\Y~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = ( \stage[5][37]~124_combout\ & ( \shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][58]~184_combout\))) ) ) ) # ( !\stage[5][37]~124_combout\ & ( \shamt[5]~0_combout\ & ( 
-- (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][58]~184_combout\))) ) ) ) # ( \stage[5][37]~124_combout\ & ( !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\) # (\stage[5][26]~177_combout\) ) ) ) # ( 
-- !\stage[5][37]~124_combout\ & ( !\shamt[5]~0_combout\ & ( (\Equal0~0_combout\ & \stage[5][26]~177_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[5][58]~184_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_stage[5][26]~177_combout\,
	datae => \ALT_INV_stage[5][37]~124_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~49_combout\);

-- Location: LABCELL_X45_Y40_N10
\Y~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~49_combout\))) # (\Equal2~0_combout\ & (\A[37]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~49_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[37]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~49_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~50_combout\);

-- Location: MLABCELL_X44_Y41_N34
\stage[5][57]~185\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][57]~185_combout\ = ( \fill~0_combout\ & ( (!\stage[5][55]~42_combout\) # (\stage[3][57]~64_combout\) ) ) # ( !\fill~0_combout\ & ( (\stage[3][57]~64_combout\ & \stage[5][55]~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_stage[3][57]~64_combout\,
	datad => \ALT_INV_stage[5][55]~42_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[5][57]~185_combout\);

-- Location: MLABCELL_X44_Y41_N12
\Y~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = ( \stage[5][25]~176_combout\ & ( \fill~0_combout\ & ( (!\Equal0~0_combout\ & (((\shamt[5]~0_combout\)) # (\stage[5][38]~134_combout\))) # (\Equal0~0_combout\ & (((!\shamt[5]~0_combout\) # (\stage[5][57]~185_combout\)))) ) ) ) # ( 
-- !\stage[5][25]~176_combout\ & ( \fill~0_combout\ & ( (!\Equal0~0_combout\ & (((\shamt[5]~0_combout\)) # (\stage[5][38]~134_combout\))) # (\Equal0~0_combout\ & (((\stage[5][57]~185_combout\ & \shamt[5]~0_combout\)))) ) ) ) # ( \stage[5][25]~176_combout\ & 
-- ( !\fill~0_combout\ & ( (!\Equal0~0_combout\ & (\stage[5][38]~134_combout\ & ((!\shamt[5]~0_combout\)))) # (\Equal0~0_combout\ & (((!\shamt[5]~0_combout\) # (\stage[5][57]~185_combout\)))) ) ) ) # ( !\stage[5][25]~176_combout\ & ( !\fill~0_combout\ & ( 
-- (!\Equal0~0_combout\ & (\stage[5][38]~134_combout\ & ((!\shamt[5]~0_combout\)))) # (\Equal0~0_combout\ & (((\stage[5][57]~185_combout\ & \shamt[5]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][38]~134_combout\,
	datab => \ALT_INV_stage[5][57]~185_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_stage[5][25]~176_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \Y~51_combout\);

-- Location: MLABCELL_X44_Y41_N0
\Y~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~51_combout\))) # (\Equal2~0_combout\ & (\A[38]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~51_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[38]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~51_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~52_combout\);

-- Location: MLABCELL_X46_Y41_N10
\stage[5][56]~186\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][56]~186_combout\ = (!\stage[5][55]~42_combout\ & (\fill~0_combout\)) # (\stage[5][55]~42_combout\ & ((\stage[3][56]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[5][55]~42_combout\,
	datad => \ALT_INV_stage[3][56]~19_combout\,
	combout => \stage[5][56]~186_combout\);

-- Location: MLABCELL_X46_Y38_N32
\Y~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = ( \shamt[5]~0_combout\ & ( \fill~0_combout\ & ( (!\Equal0~0_combout\) # (\stage[5][56]~186_combout\) ) ) ) # ( !\shamt[5]~0_combout\ & ( \fill~0_combout\ & ( (!\Equal0~0_combout\ & (\stage[5][39]~144_combout\)) # (\Equal0~0_combout\ & 
-- ((\stage[5][24]~175_combout\))) ) ) ) # ( \shamt[5]~0_combout\ & ( !\fill~0_combout\ & ( (\stage[5][56]~186_combout\ & \Equal0~0_combout\) ) ) ) # ( !\shamt[5]~0_combout\ & ( !\fill~0_combout\ & ( (!\Equal0~0_combout\ & (\stage[5][39]~144_combout\)) # 
-- (\Equal0~0_combout\ & ((\stage[5][24]~175_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][39]~144_combout\,
	datab => \ALT_INV_stage[5][56]~186_combout\,
	datac => \ALT_INV_stage[5][24]~175_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \Y~53_combout\);

-- Location: MLABCELL_X46_Y38_N2
\Y~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = ( \Y~53_combout\ & ( (!\ExtWord~input_o\ & (((!\Equal2~0_combout\)) # (\A[39]~input_o\))) # (\ExtWord~input_o\ & (((\A[39]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) ) # ( !\Y~53_combout\ & ( (!\A[39]~input_o\ & 
-- (\ExtWord~input_o\ & (\Y~37_combout\))) # (\A[39]~input_o\ & (((\ExtWord~input_o\ & \Y~37_combout\)) # (\Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111001111010101111100111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~53_combout\,
	combout => \Y~54_combout\);

-- Location: MLABCELL_X46_Y41_N24
\stage[5][55]~187\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][55]~187_combout\ = ( !\stage[5][55]~152_combout\ & ( (!\stage[3][55]~142_combout\) # (!\stage[5][55]~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_stage[3][55]~142_combout\,
	datad => \ALT_INV_stage[5][55]~42_combout\,
	dataf => \ALT_INV_stage[5][55]~152_combout\,
	combout => \stage[5][55]~187_combout\);

-- Location: MLABCELL_X46_Y41_N32
\Y~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = ( \fill~0_combout\ & ( \stage[5][55]~187_combout\ & ( (!\shamt[5]~0_combout\ & ((!\Equal0~0_combout\ & (\stage[5][40]~150_combout\)) # (\Equal0~0_combout\ & ((\stage[5][23]~174_combout\))))) # (\shamt[5]~0_combout\ & 
-- (!\Equal0~0_combout\)) ) ) ) # ( !\fill~0_combout\ & ( \stage[5][55]~187_combout\ & ( (!\shamt[5]~0_combout\ & ((!\Equal0~0_combout\ & (\stage[5][40]~150_combout\)) # (\Equal0~0_combout\ & ((\stage[5][23]~174_combout\))))) ) ) ) # ( \fill~0_combout\ & ( 
-- !\stage[5][55]~187_combout\ & ( ((!\Equal0~0_combout\ & (\stage[5][40]~150_combout\)) # (\Equal0~0_combout\ & ((\stage[5][23]~174_combout\)))) # (\shamt[5]~0_combout\) ) ) ) # ( !\fill~0_combout\ & ( !\stage[5][55]~187_combout\ & ( (!\shamt[5]~0_combout\ 
-- & ((!\Equal0~0_combout\ & (\stage[5][40]~150_combout\)) # (\Equal0~0_combout\ & ((\stage[5][23]~174_combout\))))) # (\shamt[5]~0_combout\ & (\Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100111011010111010111111100001000001010100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_stage[5][40]~150_combout\,
	datad => \ALT_INV_stage[5][23]~174_combout\,
	datae => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_stage[5][55]~187_combout\,
	combout => \Y~55_combout\);

-- Location: MLABCELL_X46_Y38_N24
\Y~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~55_combout\))) # (\Equal2~0_combout\ & (\A[40]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~55_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[40]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~55_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~56_combout\);

-- Location: LABCELL_X43_Y41_N8
\stage[5][54]~188\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][54]~188_combout\ = ( \B[4]~input_o\ & ( \fill~0_combout\ ) ) # ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\stage[3][54]~132_combout\))) # (\B[3]~input_o\ & (\stage[3][62]~133_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[3][62]~133_combout\,
	datad => \ALT_INV_stage[3][54]~132_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][54]~188_combout\);

-- Location: LABCELL_X43_Y41_N34
\Y~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = ( \fill~0_combout\ & ( \stage[5][41]~153_combout\ & ( (!\Equal0~0_combout\) # ((!\shamt[5]~0_combout\ & (\stage[5][22]~173_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][54]~188_combout\)))) ) ) ) # ( !\fill~0_combout\ & ( 
-- \stage[5][41]~153_combout\ & ( (!\Equal0~0_combout\ & (((!\shamt[5]~0_combout\)))) # (\Equal0~0_combout\ & ((!\shamt[5]~0_combout\ & (\stage[5][22]~173_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][54]~188_combout\))))) ) ) ) # ( \fill~0_combout\ & ( 
-- !\stage[5][41]~153_combout\ & ( (!\Equal0~0_combout\ & (((\shamt[5]~0_combout\)))) # (\Equal0~0_combout\ & ((!\shamt[5]~0_combout\ & (\stage[5][22]~173_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][54]~188_combout\))))) ) ) ) # ( !\fill~0_combout\ & ( 
-- !\stage[5][41]~153_combout\ & ( (\Equal0~0_combout\ & ((!\shamt[5]~0_combout\ & (\stage[5][22]~173_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][54]~188_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][22]~173_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_stage[5][54]~188_combout\,
	datae => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_stage[5][41]~153_combout\,
	combout => \Y~57_combout\);

-- Location: LABCELL_X43_Y40_N26
\Y~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~57_combout\))) # (\Equal2~0_combout\ & (\A[41]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~57_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[41]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~57_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~58_combout\);

-- Location: LABCELL_X43_Y36_N20
\stage[5][53]~189\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][53]~189_combout\ = ( \fill~0_combout\ & ( ((!\B[3]~input_o\ & (\stage[3][53]~122_combout\)) # (\B[3]~input_o\ & ((\stage[3][61]~123_combout\)))) # (\B[4]~input_o\) ) ) # ( !\fill~0_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & 
-- (\stage[3][53]~122_combout\)) # (\B[3]~input_o\ & ((\stage[3][61]~123_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][53]~122_combout\,
	datad => \ALT_INV_stage[3][61]~123_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[5][53]~189_combout\);

-- Location: LABCELL_X43_Y36_N26
\Y~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = ( \Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \stage[5][53]~189_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \fill~0_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][21]~172_combout\ 
-- ) ) ) # ( !\Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][42]~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][53]~189_combout\,
	datab => \ALT_INV_stage[5][21]~172_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[5][42]~155_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~59_combout\);

-- Location: LABCELL_X43_Y40_N28
\Y~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~59_combout\))) # (\Equal2~0_combout\ & (\A[42]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~59_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[42]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~59_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~60_combout\);

-- Location: LABCELL_X45_Y39_N16
\stage[5][52]~190\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][52]~190_combout\ = ( \stage[3][60]~113_combout\ & ( (!\B[4]~input_o\ & (((\stage[3][52]~112_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) # ( !\stage[3][60]~113_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\ & 
-- \stage[3][52]~112_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][52]~112_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_stage[3][60]~113_combout\,
	combout => \stage[5][52]~190_combout\);

-- Location: MLABCELL_X49_Y37_N12
\Y~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = ( \shamt[5]~0_combout\ & ( \stage[5][43]~157_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][52]~190_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( \stage[5][43]~157_combout\ & ( 
-- (!\Equal0~0_combout\) # (\stage[5][20]~171_combout\) ) ) ) # ( \shamt[5]~0_combout\ & ( !\stage[5][43]~157_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][52]~190_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( 
-- !\stage[5][43]~157_combout\ & ( (\Equal0~0_combout\ & \stage[5][20]~171_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[5][20]~171_combout\,
	datad => \ALT_INV_stage[5][52]~190_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_stage[5][43]~157_combout\,
	combout => \Y~61_combout\);

-- Location: LABCELL_X43_Y40_N16
\Y~62\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = ( \Y~61_combout\ & ( (!\Equal2~0_combout\ & ((!\ExtWord~input_o\) # ((\Y~37_combout\)))) # (\Equal2~0_combout\ & (((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[43]~input_o\))) ) ) # ( !\Y~61_combout\ & ( (!\Equal2~0_combout\ & 
-- (\ExtWord~input_o\ & (\Y~37_combout\))) # (\Equal2~0_combout\ & (((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[43]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011110001011110111111000101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_Y~61_combout\,
	combout => \Y~62_combout\);

-- Location: LABCELL_X45_Y39_N18
\stage[5][51]~191\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][51]~191_combout\ = ( \stage[3][59]~102_combout\ & ( (!\B[4]~input_o\ & (((\stage[3][51]~101_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) # ( !\stage[3][59]~102_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\ & 
-- \stage[3][51]~101_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_stage[3][51]~101_combout\,
	dataf => \ALT_INV_stage[3][59]~102_combout\,
	combout => \stage[5][51]~191_combout\);

-- Location: MLABCELL_X46_Y39_N6
\Y~63\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = ( \Equal0~0_combout\ & ( \stage[5][19]~170_combout\ & ( (!\shamt[5]~0_combout\) # (\stage[5][51]~191_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \stage[5][19]~170_combout\ & ( (!\shamt[5]~0_combout\ & (\stage[5][44]~159_combout\)) # 
-- (\shamt[5]~0_combout\ & ((\fill~0_combout\))) ) ) ) # ( \Equal0~0_combout\ & ( !\stage[5][19]~170_combout\ & ( (\shamt[5]~0_combout\ & \stage[5][51]~191_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( !\stage[5][19]~170_combout\ & ( (!\shamt[5]~0_combout\ & 
-- (\stage[5][44]~159_combout\)) # (\shamt[5]~0_combout\ & ((\fill~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_stage[5][44]~159_combout\,
	datac => \ALT_INV_stage[5][51]~191_combout\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_stage[5][19]~170_combout\,
	combout => \Y~63_combout\);

-- Location: LABCELL_X47_Y38_N18
\Y~64\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = ( \Y~63_combout\ & ( (!\ExtWord~input_o\ & ((!\Equal2~0_combout\) # ((\A[44]~input_o\)))) # (\ExtWord~input_o\ & (((\Equal2~0_combout\ & \A[44]~input_o\)) # (\Y~37_combout\))) ) ) # ( !\Y~63_combout\ & ( (!\ExtWord~input_o\ & 
-- (\Equal2~0_combout\ & ((\A[44]~input_o\)))) # (\ExtWord~input_o\ & (((\Equal2~0_combout\ & \A[44]~input_o\)) # (\Y~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011110001101101111111000110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_Y~63_combout\,
	combout => \Y~64_combout\);

-- Location: LABCELL_X43_Y36_N22
\stage[5][50]~192\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][50]~192_combout\ = ( \stage[3][58]~91_combout\ & ( (!\B[4]~input_o\ & (((\stage[3][50]~90_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) ) # ( !\stage[3][58]~91_combout\ & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & 
-- ((\stage[3][50]~90_combout\)))) # (\B[4]~input_o\ & (((\fill~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][50]~90_combout\,
	dataf => \ALT_INV_stage[3][58]~91_combout\,
	combout => \stage[5][50]~192_combout\);

-- Location: LABCELL_X43_Y36_N30
\Y~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = ( \Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \stage[5][50]~192_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \fill~0_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][18]~169_combout\ 
-- ) ) ) # ( !\Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][45]~161_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][45]~161_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[5][50]~192_combout\,
	datad => \ALT_INV_stage[5][18]~169_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~65_combout\);

-- Location: LABCELL_X43_Y44_N4
\Y~66\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~65_combout\))) # (\Equal2~0_combout\ & (\A[45]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~65_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[45]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100110111111101110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Y~65_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~66_combout\);

-- Location: LABCELL_X43_Y41_N10
\stage[5][49]~193\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][49]~193_combout\ = ( \B[4]~input_o\ & ( \fill~0_combout\ ) ) # ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\stage[3][49]~59_combout\)) # (\B[3]~input_o\ & ((\stage[3][57]~64_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[3][49]~59_combout\,
	datad => \ALT_INV_stage[3][57]~64_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \stage[5][49]~193_combout\);

-- Location: MLABCELL_X46_Y39_N30
\Y~67\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = ( \Equal0~0_combout\ & ( \stage[5][17]~168_combout\ & ( (!\shamt[5]~0_combout\) # (\stage[5][49]~193_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \stage[5][17]~168_combout\ & ( (!\shamt[5]~0_combout\ & (\stage[5][46]~163_combout\)) # 
-- (\shamt[5]~0_combout\ & ((\fill~0_combout\))) ) ) ) # ( \Equal0~0_combout\ & ( !\stage[5][17]~168_combout\ & ( (\stage[5][49]~193_combout\ & \shamt[5]~0_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( !\stage[5][17]~168_combout\ & ( (!\shamt[5]~0_combout\ & 
-- (\stage[5][46]~163_combout\)) # (\shamt[5]~0_combout\ & ((\fill~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][49]~193_combout\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_stage[5][46]~163_combout\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_stage[5][17]~168_combout\,
	combout => \Y~67_combout\);

-- Location: LABCELL_X43_Y44_N10
\Y~68\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = ( \Equal2~0_combout\ & ( ((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[46]~input_o\) ) ) # ( !\Equal2~0_combout\ & ( (!\ExtWord~input_o\ & ((\Y~67_combout\))) # (\ExtWord~input_o\ & (\Y~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Y~67_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~68_combout\);

-- Location: MLABCELL_X46_Y41_N8
\stage[5][48]~194\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[5][48]~194_combout\ = ( \stage[3][48]~14_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\stage[3][56]~19_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) ) # ( !\stage[3][48]~14_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & 
-- \stage[3][56]~19_combout\)))) # (\B[4]~input_o\ & (\fill~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111000101111101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_stage[3][56]~19_combout\,
	dataf => \ALT_INV_stage[3][48]~14_combout\,
	combout => \stage[5][48]~194_combout\);

-- Location: LABCELL_X45_Y41_N28
\Y~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = ( \shamt[5]~0_combout\ & ( \stage[5][48]~194_combout\ & ( (\Equal0~0_combout\) # (\fill~0_combout\) ) ) ) # ( !\shamt[5]~0_combout\ & ( \stage[5][48]~194_combout\ & ( (!\Equal0~0_combout\ & ((\stage[5][47]~165_combout\))) # 
-- (\Equal0~0_combout\ & (\stage[5][16]~167_combout\)) ) ) ) # ( \shamt[5]~0_combout\ & ( !\stage[5][48]~194_combout\ & ( (\fill~0_combout\ & !\Equal0~0_combout\) ) ) ) # ( !\shamt[5]~0_combout\ & ( !\stage[5][48]~194_combout\ & ( (!\Equal0~0_combout\ & 
-- ((\stage[5][47]~165_combout\))) # (\Equal0~0_combout\ & (\stage[5][16]~167_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[5][16]~167_combout\,
	datac => \ALT_INV_stage[5][47]~165_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_stage[5][48]~194_combout\,
	combout => \Y~69_combout\);

-- Location: LABCELL_X45_Y41_N16
\Y~70\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = ( \Y~69_combout\ & ( (!\ExtWord~input_o\ & (((!\Equal2~0_combout\)) # (\A[47]~input_o\))) # (\ExtWord~input_o\ & (((\A[47]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) ) # ( !\Y~69_combout\ & ( (!\ExtWord~input_o\ & 
-- (\A[47]~input_o\ & (\Equal2~0_combout\))) # (\ExtWord~input_o\ & (((\A[47]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011110100011111101111010001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Y~37_combout\,
	dataf => \ALT_INV_Y~69_combout\,
	combout => \Y~70_combout\);

-- Location: LABCELL_X45_Y41_N34
\Y~71\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = ( \shamt[5]~0_combout\ & ( \stage[5][48]~194_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][47]~165_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( \stage[5][48]~194_combout\ & ( 
-- (!\Equal0~0_combout\) # (\stage[5][15]~166_combout\) ) ) ) # ( \shamt[5]~0_combout\ & ( !\stage[5][48]~194_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][47]~165_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( 
-- !\stage[5][48]~194_combout\ & ( (\stage[5][15]~166_combout\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[5][15]~166_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_stage[5][47]~165_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_stage[5][48]~194_combout\,
	combout => \Y~71_combout\);

-- Location: LABCELL_X45_Y41_N2
\Y~72\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~71_combout\))) # (\Equal2~0_combout\ & (\A[48]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\Y~71_combout\)))) # 
-- (\Equal2~0_combout\ & (((\A[48]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000110011000010100011001101011111011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_Y~71_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~72_combout\);

-- Location: LABCELL_X45_Y41_N38
\Y~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = ( \shamt[5]~0_combout\ & ( \fill~0_combout\ & ( (!\Equal0~0_combout\) # (\stage[5][46]~163_combout\) ) ) ) # ( !\shamt[5]~0_combout\ & ( \fill~0_combout\ & ( (!\Equal0~0_combout\ & (\stage[5][49]~193_combout\)) # (\Equal0~0_combout\ & 
-- ((\stage[5][14]~164_combout\))) ) ) ) # ( \shamt[5]~0_combout\ & ( !\fill~0_combout\ & ( (\Equal0~0_combout\ & \stage[5][46]~163_combout\) ) ) ) # ( !\shamt[5]~0_combout\ & ( !\fill~0_combout\ & ( (!\Equal0~0_combout\ & (\stage[5][49]~193_combout\)) # 
-- (\Equal0~0_combout\ & ((\stage[5][14]~164_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_stage[5][46]~163_combout\,
	datac => \ALT_INV_stage[5][49]~193_combout\,
	datad => \ALT_INV_stage[5][14]~164_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \Y~73_combout\);

-- Location: LABCELL_X45_Y41_N24
\Y~74\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = ( \Y~73_combout\ & ( (!\ExtWord~input_o\ & (((!\Equal2~0_combout\)) # (\A[49]~input_o\))) # (\ExtWord~input_o\ & (((\A[49]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) ) # ( !\Y~73_combout\ & ( (!\ExtWord~input_o\ & 
-- (\A[49]~input_o\ & (\Equal2~0_combout\))) # (\ExtWord~input_o\ & (((\A[49]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011110100011111101111010001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[49]~input_o\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Y~37_combout\,
	dataf => \ALT_INV_Y~73_combout\,
	combout => \Y~74_combout\);

-- Location: LABCELL_X43_Y36_N34
\Y~75\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = ( \stage[5][50]~192_combout\ & ( \shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][45]~161_combout\))) ) ) ) # ( !\stage[5][50]~192_combout\ & ( \shamt[5]~0_combout\ & ( 
-- (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][45]~161_combout\))) ) ) ) # ( \stage[5][50]~192_combout\ & ( !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\) # (\stage[5][13]~162_combout\) ) ) ) # ( 
-- !\stage[5][50]~192_combout\ & ( !\shamt[5]~0_combout\ & ( (\Equal0~0_combout\ & \stage[5][13]~162_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_stage[5][13]~162_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[5][45]~161_combout\,
	datae => \ALT_INV_stage[5][50]~192_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~75_combout\);

-- Location: LABCELL_X43_Y44_N14
\Y~76\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = ( \Y~75_combout\ & ( (!\ExtWord~input_o\ & (((!\Equal2~0_combout\)) # (\A[50]~input_o\))) # (\ExtWord~input_o\ & (((\A[50]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) ) # ( !\Y~75_combout\ & ( (!\A[50]~input_o\ & 
-- (\ExtWord~input_o\ & (\Y~37_combout\))) # (\A[50]~input_o\ & (((\ExtWord~input_o\ & \Y~37_combout\)) # (\Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111001111010101111100111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~75_combout\,
	combout => \Y~76_combout\);

-- Location: MLABCELL_X46_Y39_N14
\Y~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = ( \Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \stage[5][44]~159_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \fill~0_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][12]~160_combout\ 
-- ) ) ) # ( !\Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][51]~191_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][12]~160_combout\,
	datab => \ALT_INV_stage[5][44]~159_combout\,
	datac => \ALT_INV_stage[5][51]~191_combout\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~77_combout\);

-- Location: LABCELL_X47_Y38_N36
\Y~78\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = ( \Y~77_combout\ & ( (!\ExtWord~input_o\ & (((!\Equal2~0_combout\)) # (\A[51]~input_o\))) # (\ExtWord~input_o\ & (((\A[51]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) ) # ( !\Y~77_combout\ & ( (!\ExtWord~input_o\ & 
-- (\A[51]~input_o\ & ((\Equal2~0_combout\)))) # (\ExtWord~input_o\ & (((\A[51]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011110101111001101111010111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[51]~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~77_combout\,
	combout => \Y~78_combout\);

-- Location: MLABCELL_X49_Y37_N18
\Y~79\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = ( \stage[5][11]~158_combout\ & ( \stage[5][43]~157_combout\ & ( ((!\shamt[5]~0_combout\ & ((\stage[5][52]~190_combout\))) # (\shamt[5]~0_combout\ & (\fill~0_combout\))) # (\Equal0~0_combout\) ) ) ) # ( !\stage[5][11]~158_combout\ & ( 
-- \stage[5][43]~157_combout\ & ( (!\shamt[5]~0_combout\ & (((\stage[5][52]~190_combout\ & !\Equal0~0_combout\)))) # (\shamt[5]~0_combout\ & (((\Equal0~0_combout\)) # (\fill~0_combout\))) ) ) ) # ( \stage[5][11]~158_combout\ & ( !\stage[5][43]~157_combout\ & 
-- ( (!\shamt[5]~0_combout\ & (((\Equal0~0_combout\) # (\stage[5][52]~190_combout\)))) # (\shamt[5]~0_combout\ & (\fill~0_combout\ & ((!\Equal0~0_combout\)))) ) ) ) # ( !\stage[5][11]~158_combout\ & ( !\stage[5][43]~157_combout\ & ( (!\Equal0~0_combout\ & 
-- ((!\shamt[5]~0_combout\ & ((\stage[5][52]~190_combout\))) # (\shamt[5]~0_combout\ & (\fill~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[5][52]~190_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_stage[5][11]~158_combout\,
	dataf => \ALT_INV_stage[5][43]~157_combout\,
	combout => \Y~79_combout\);

-- Location: LABCELL_X43_Y40_N18
\Y~80\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & (\Y~79_combout\)) # (\Equal2~0_combout\ & ((\A[52]~input_o\)))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\Y~79_combout\))) # 
-- (\Equal2~0_combout\ & (((\A[52]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~79_combout\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~80_combout\);

-- Location: LABCELL_X43_Y36_N18
\Y~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = ( \Equal0~0_combout\ & ( \stage[5][42]~155_combout\ & ( (\stage[5][10]~156_combout\) # (\shamt[5]~0_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \stage[5][42]~155_combout\ & ( (!\shamt[5]~0_combout\ & (\stage[5][53]~189_combout\)) # 
-- (\shamt[5]~0_combout\ & ((\fill~0_combout\))) ) ) ) # ( \Equal0~0_combout\ & ( !\stage[5][42]~155_combout\ & ( (!\shamt[5]~0_combout\ & \stage[5][10]~156_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( !\stage[5][42]~155_combout\ & ( (!\shamt[5]~0_combout\ & 
-- (\stage[5][53]~189_combout\)) # (\shamt[5]~0_combout\ & ((\fill~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][53]~189_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_stage[5][10]~156_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_stage[5][42]~155_combout\,
	combout => \Y~81_combout\);

-- Location: LABCELL_X43_Y44_N38
\Y~82\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = ( \Equal2~0_combout\ & ( ((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[53]~input_o\) ) ) # ( !\Equal2~0_combout\ & ( (!\ExtWord~input_o\ & ((\Y~81_combout\))) # (\ExtWord~input_o\ & (\Y~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Y~81_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~82_combout\);

-- Location: LABCELL_X43_Y41_N36
\Y~83\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = ( \stage[5][9]~154_combout\ & ( \shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & ((\fill~0_combout\))) # (\Equal0~0_combout\ & (\stage[5][41]~153_combout\)) ) ) ) # ( !\stage[5][9]~154_combout\ & ( \shamt[5]~0_combout\ & ( 
-- (!\Equal0~0_combout\ & ((\fill~0_combout\))) # (\Equal0~0_combout\ & (\stage[5][41]~153_combout\)) ) ) ) # ( \stage[5][9]~154_combout\ & ( !\shamt[5]~0_combout\ & ( (\stage[5][54]~188_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\stage[5][9]~154_combout\ & 
-- ( !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & \stage[5][54]~188_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][41]~153_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_stage[5][54]~188_combout\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_stage[5][9]~154_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~83_combout\);

-- Location: LABCELL_X43_Y44_N22
\Y~84\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = ( \Equal2~0_combout\ & ( ((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[54]~input_o\) ) ) # ( !\Equal2~0_combout\ & ( (!\ExtWord~input_o\ & ((\Y~83_combout\))) # (\ExtWord~input_o\ & (\Y~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Y~83_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~84_combout\);

-- Location: MLABCELL_X46_Y41_N18
\Y~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = ( \fill~0_combout\ & ( \stage[5][55]~187_combout\ & ( (!\shamt[5]~0_combout\ & (\Equal0~0_combout\ & (\stage[5][8]~151_combout\))) # (\shamt[5]~0_combout\ & ((!\Equal0~0_combout\) # ((\stage[5][40]~150_combout\)))) ) ) ) # ( 
-- !\fill~0_combout\ & ( \stage[5][55]~187_combout\ & ( (\Equal0~0_combout\ & ((!\shamt[5]~0_combout\ & (\stage[5][8]~151_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][40]~150_combout\))))) ) ) ) # ( \fill~0_combout\ & ( !\stage[5][55]~187_combout\ & ( 
-- (!\Equal0~0_combout\) # ((!\shamt[5]~0_combout\ & (\stage[5][8]~151_combout\)) # (\shamt[5]~0_combout\ & ((\stage[5][40]~150_combout\)))) ) ) ) # ( !\fill~0_combout\ & ( !\stage[5][55]~187_combout\ & ( (!\shamt[5]~0_combout\ & ((!\Equal0~0_combout\) # 
-- ((\stage[5][8]~151_combout\)))) # (\shamt[5]~0_combout\ & (\Equal0~0_combout\ & ((\stage[5][40]~150_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010011011110011101101111100000010000100110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_stage[5][8]~151_combout\,
	datad => \ALT_INV_stage[5][40]~150_combout\,
	datae => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_stage[5][55]~187_combout\,
	combout => \Y~85_combout\);

-- Location: LABCELL_X43_Y44_N26
\Y~86\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = ( \Equal2~0_combout\ & ( ((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[55]~input_o\) ) ) # ( !\Equal2~0_combout\ & ( (!\ExtWord~input_o\ & ((\Y~85_combout\))) # (\ExtWord~input_o\ & (\Y~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Y~85_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~86_combout\);

-- Location: MLABCELL_X46_Y38_N18
\Y~87\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = ( \shamt[5]~0_combout\ & ( \stage[5][56]~186_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][39]~144_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( \stage[5][56]~186_combout\ & ( 
-- (!\Equal0~0_combout\) # (\stage[5][7]~149_combout\) ) ) ) # ( \shamt[5]~0_combout\ & ( !\stage[5][56]~186_combout\ & ( (!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][39]~144_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( 
-- !\stage[5][56]~186_combout\ & ( (\Equal0~0_combout\ & \stage[5][7]~149_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_stage[5][7]~149_combout\,
	datad => \ALT_INV_stage[5][39]~144_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_stage[5][56]~186_combout\,
	combout => \Y~87_combout\);

-- Location: MLABCELL_X46_Y38_N14
\Y~88\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~87_combout\))) # (\Equal2~0_combout\ & (\A[56]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~87_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[56]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~87_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~88_combout\);

-- Location: MLABCELL_X44_Y41_N16
\Y~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = ( \Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \stage[5][38]~134_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \fill~0_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][6]~139_combout\ 
-- ) ) ) # ( !\Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][57]~185_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][38]~134_combout\,
	datab => \ALT_INV_stage[5][57]~185_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[5][6]~139_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~89_combout\);

-- Location: LABCELL_X43_Y44_N28
\Y~90\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~89_combout\))) # (\Equal2~0_combout\ & (\A[57]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~89_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[57]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[57]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~89_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~90_combout\);

-- Location: LABCELL_X45_Y40_N34
\Y~91\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = ( \stage[5][37]~124_combout\ & ( \shamt[5]~0_combout\ & ( (\Equal0~0_combout\) # (\fill~0_combout\) ) ) ) # ( !\stage[5][37]~124_combout\ & ( \shamt[5]~0_combout\ & ( (\fill~0_combout\ & !\Equal0~0_combout\) ) ) ) # ( 
-- \stage[5][37]~124_combout\ & ( !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & (\stage[5][58]~184_combout\)) # (\Equal0~0_combout\ & ((\stage[5][5]~129_combout\))) ) ) ) # ( !\stage[5][37]~124_combout\ & ( !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & 
-- (\stage[5][58]~184_combout\)) # (\Equal0~0_combout\ & ((\stage[5][5]~129_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[5][58]~184_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_stage[5][5]~129_combout\,
	datae => \ALT_INV_stage[5][37]~124_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~91_combout\);

-- Location: LABCELL_X45_Y40_N14
\Y~92\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~91_combout\))) # (\Equal2~0_combout\ & (\A[58]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~91_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[58]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[58]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~91_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~92_combout\);

-- Location: LABCELL_X45_Y40_N18
\Y~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = ( \fill~0_combout\ & ( \shamt[5]~0_combout\ & ( (!\Equal0~0_combout\) # (\stage[5][36]~114_combout\) ) ) ) # ( !\fill~0_combout\ & ( \shamt[5]~0_combout\ & ( (\Equal0~0_combout\ & \stage[5][36]~114_combout\) ) ) ) # ( \fill~0_combout\ & ( 
-- !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & (\stage[5][59]~183_combout\)) # (\Equal0~0_combout\ & ((\stage[5][4]~119_combout\))) ) ) ) # ( !\fill~0_combout\ & ( !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & (\stage[5][59]~183_combout\)) # 
-- (\Equal0~0_combout\ & ((\stage[5][4]~119_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][59]~183_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_stage[5][36]~114_combout\,
	datad => \ALT_INV_stage[5][4]~119_combout\,
	datae => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~93_combout\);

-- Location: LABCELL_X43_Y40_N2
\Y~94\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = ( \Y~37_combout\ & ( ((!\Equal2~0_combout\ & ((\Y~93_combout\))) # (\Equal2~0_combout\ & (\A[59]~input_o\))) # (\ExtWord~input_o\) ) ) # ( !\Y~37_combout\ & ( (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \Y~93_combout\)))) # 
-- (\Equal2~0_combout\ & (\A[59]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~93_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~37_combout\,
	combout => \Y~94_combout\);

-- Location: MLABCELL_X46_Y39_N18
\Y~95\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~95_combout\ = ( \Equal0~0_combout\ & ( \stage[5][35]~103_combout\ & ( (\stage[5][3]~108_combout\) # (\shamt[5]~0_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \stage[5][35]~103_combout\ & ( (!\shamt[5]~0_combout\ & ((\stage[5][60]~109_combout\))) # 
-- (\shamt[5]~0_combout\ & (\fill~0_combout\)) ) ) ) # ( \Equal0~0_combout\ & ( !\stage[5][35]~103_combout\ & ( (!\shamt[5]~0_combout\ & \stage[5][3]~108_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( !\stage[5][35]~103_combout\ & ( (!\shamt[5]~0_combout\ & 
-- ((\stage[5][60]~109_combout\))) # (\shamt[5]~0_combout\ & (\fill~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_stage[5][3]~108_combout\,
	datad => \ALT_INV_stage[5][60]~109_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_stage[5][35]~103_combout\,
	combout => \Y~95_combout\);

-- Location: LABCELL_X47_Y38_N22
\Y~96\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~96_combout\ = ( \Equal2~0_combout\ & ( ((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[60]~input_o\) ) ) # ( !\Equal2~0_combout\ & ( (!\ExtWord~input_o\ & (\Y~95_combout\)) # (\ExtWord~input_o\ & ((\Y~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_Y~95_combout\,
	datad => \ALT_INV_Y~37_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~96_combout\);

-- Location: MLABCELL_X42_Y37_N16
\Y~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~97_combout\ = ( \stage[5][2]~97_combout\ & ( \stage[5][61]~98_combout\ & ( (!\shamt[5]~0_combout\) # ((!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][34]~92_combout\)))) ) ) ) # ( !\stage[5][2]~97_combout\ & ( 
-- \stage[5][61]~98_combout\ & ( (!\Equal0~0_combout\ & (((!\shamt[5]~0_combout\)) # (\fill~0_combout\))) # (\Equal0~0_combout\ & (((\stage[5][34]~92_combout\ & \shamt[5]~0_combout\)))) ) ) ) # ( \stage[5][2]~97_combout\ & ( !\stage[5][61]~98_combout\ & ( 
-- (!\Equal0~0_combout\ & (\fill~0_combout\ & ((\shamt[5]~0_combout\)))) # (\Equal0~0_combout\ & (((!\shamt[5]~0_combout\) # (\stage[5][34]~92_combout\)))) ) ) ) # ( !\stage[5][2]~97_combout\ & ( !\stage[5][61]~98_combout\ & ( (\shamt[5]~0_combout\ & 
-- ((!\Equal0~0_combout\ & (\fill~0_combout\)) # (\Equal0~0_combout\ & ((\stage[5][34]~92_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_stage[5][34]~92_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_stage[5][2]~97_combout\,
	dataf => \ALT_INV_stage[5][61]~98_combout\,
	combout => \Y~97_combout\);

-- Location: LABCELL_X43_Y44_N34
\Y~98\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~98_combout\ = ( \Equal2~0_combout\ & ( ((\ExtWord~input_o\ & \Y~37_combout\)) # (\A[61]~input_o\) ) ) # ( !\Equal2~0_combout\ & ( (!\ExtWord~input_o\ & ((\Y~97_combout\))) # (\ExtWord~input_o\ & (\Y~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Y~97_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~98_combout\);

-- Location: MLABCELL_X44_Y40_N36
\Y~99\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~99_combout\ = ( \fill~0_combout\ & ( \shamt[5]~0_combout\ & ( (!\Equal0~0_combout\) # (\stage[5][33]~65_combout\) ) ) ) # ( !\fill~0_combout\ & ( \shamt[5]~0_combout\ & ( (\Equal0~0_combout\ & \stage[5][33]~65_combout\) ) ) ) # ( \fill~0_combout\ & ( 
-- !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & ((\stage[5][62]~87_combout\))) # (\Equal0~0_combout\ & (\stage[5][1]~86_combout\)) ) ) ) # ( !\fill~0_combout\ & ( !\shamt[5]~0_combout\ & ( (!\Equal0~0_combout\ & ((\stage[5][62]~87_combout\))) # 
-- (\Equal0~0_combout\ & (\stage[5][1]~86_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_stage[5][1]~86_combout\,
	datac => \ALT_INV_stage[5][62]~87_combout\,
	datad => \ALT_INV_stage[5][33]~65_combout\,
	datae => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~99_combout\);

-- Location: LABCELL_X43_Y44_N18
\Y~100\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~100_combout\ = ( \Y~99_combout\ & ( (!\ExtWord~input_o\ & (((!\Equal2~0_combout\)) # (\A[62]~input_o\))) # (\ExtWord~input_o\ & (((\A[62]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) ) # ( !\Y~99_combout\ & ( (!\A[62]~input_o\ & 
-- (\ExtWord~input_o\ & (\Y~37_combout\))) # (\A[62]~input_o\ & (((\ExtWord~input_o\ & \Y~37_combout\)) # (\Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111001111010101111100111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~37_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~99_combout\,
	combout => \Y~100_combout\);

-- Location: LABCELL_X47_Y37_N38
\Y~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~101_combout\ = ( \Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \stage[5][32]~20_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \shamt[5]~0_combout\ & ( \fill~0_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][0]~41_combout\ ) 
-- ) ) # ( !\Equal0~0_combout\ & ( !\shamt[5]~0_combout\ & ( \stage[5][63]~44_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[5][63]~44_combout\,
	datab => \ALT_INV_stage[5][0]~41_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[5][32]~20_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y~101_combout\);

-- Location: LABCELL_X47_Y37_N18
\Y~102\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~102_combout\ = ( \Y~101_combout\ & ( (!\ExtWord~input_o\ & (((!\Equal2~0_combout\) # (\A[63]~input_o\)))) # (\ExtWord~input_o\ & (((\A[63]~input_o\ & \Equal2~0_combout\)) # (\Y~37_combout\))) ) ) # ( !\Y~101_combout\ & ( (!\Y~37_combout\ & 
-- (((\A[63]~input_o\ & \Equal2~0_combout\)))) # (\Y~37_combout\ & (((\A[63]~input_o\ & \Equal2~0_combout\)) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111111011101000111111101110100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~37_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Y~101_combout\,
	combout => \Y~102_combout\);

-- Location: IOIBUF_X9_Y0_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X45_Y0_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X25_Y56_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X18_Y0_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X23_Y56_N94
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X45_Y0_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X37_Y0_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X35_Y0_N32
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X15_Y0_N63
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X5_Y56_N1
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X22_Y0_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X5_Y0_N32
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X11_Y0_N32
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X14_Y56_N94
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X5_Y0_N94
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X9_Y0_N63
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X22_Y0_N32
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X18_Y0_N32
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X22_Y0_N63
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X13_Y0_N94
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X28_Y56_N63
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X43_Y0_N32
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X55_Y0_N63
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X37_Y0_N32
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X59_Y7_N63
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X9_Y0_N32
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X5_Y56_N94
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X39_Y0_N1
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X3_Y56_N94
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X43_Y0_N94
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X14_Y56_N32
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X21_Y56_N63
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X3_Y56_N32
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X30_Y0_N63
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X19_Y56_N1
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X23_Y56_N63
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X59_Y6_N1
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


