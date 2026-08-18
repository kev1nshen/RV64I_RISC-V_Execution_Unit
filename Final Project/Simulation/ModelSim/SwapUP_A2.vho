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

-- DATE "04/07/2026 21:26:42"

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
-- B[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \srl64[1][18]~32_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \srl64[1][16]~31_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \srl64[1][20]~33_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \srl64[1][22]~34_combout\ : std_logic;
SIGNAL \srl64[3][16]~35_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \srl64[1][14]~29_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \srl64[1][8]~26_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \srl64[1][12]~28_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \srl64[1][10]~27_combout\ : std_logic;
SIGNAL \srl64[3][8]~30_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \srl64[1][24]~36_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \srl64[1][26]~37_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \srl64[1][28]~38_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \srl64[1][30]~39_combout\ : std_logic;
SIGNAL \srl64[3][24]~40_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \srl64[1][2]~22_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \srl64[1][6]~24_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \srl64[1][4]~23_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \srl64[1][0]~21_combout\ : std_logic;
SIGNAL \srl64[3][0]~25_combout\ : std_logic;
SIGNAL \srl64[5][0]~41_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Y_sra[31]~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \sll64[6][1]~1_combout\ : std_logic;
SIGNAL \sll64[4][0]~0_combout\ : std_logic;
SIGNAL \sll64[6][1]~2_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \srl64[1][40]~10_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \srl64[1][44]~12_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \srl64[1][42]~11_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \srl64[1][46]~13_combout\ : std_logic;
SIGNAL \srl64[3][40]~14_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \srl64[1][34]~16_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \srl64[1][32]~15_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \srl64[1][36]~17_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \srl64[1][38]~18_combout\ : std_logic;
SIGNAL \srl64[3][32]~19_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \srl64[1][56]~0_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \srl64[1][62]~3_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \srl64[1][60]~1_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \srl64[1][58]~2_combout\ : std_logic;
SIGNAL \srl64[3][56]~4_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \srl64[1][54]~8_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \srl64[1][50]~6_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \srl64[1][52]~7_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \srl64[1][48]~5_combout\ : std_logic;
SIGNAL \srl64[3][48]~9_combout\ : std_logic;
SIGNAL \srl64[5][32]~20_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \srl64[1][43]~74_combout\ : std_logic;
SIGNAL \srl64[1][41]~73_combout\ : std_logic;
SIGNAL \srl64[1][47]~76_combout\ : std_logic;
SIGNAL \srl64[1][45]~75_combout\ : std_logic;
SIGNAL \srl64[3][41]~77_combout\ : std_logic;
SIGNAL \srl64[1][33]~78_combout\ : std_logic;
SIGNAL \srl64[1][35]~79_combout\ : std_logic;
SIGNAL \srl64[1][37]~80_combout\ : std_logic;
SIGNAL \srl64[1][39]~81_combout\ : std_logic;
SIGNAL \srl64[3][33]~82_combout\ : std_logic;
SIGNAL \srl64[4][33]~83_combout\ : std_logic;
SIGNAL \srl64[1][5]~44_combout\ : std_logic;
SIGNAL \srl64[1][3]~43_combout\ : std_logic;
SIGNAL \srl64[1][7]~45_combout\ : std_logic;
SIGNAL \srl64[1][1]~42_combout\ : std_logic;
SIGNAL \srl64[3][1]~46_combout\ : std_logic;
SIGNAL \srl64[1][29]~59_combout\ : std_logic;
SIGNAL \srl64[1][27]~58_combout\ : std_logic;
SIGNAL \srl64[1][25]~57_combout\ : std_logic;
SIGNAL \srl64[1][31]~60_combout\ : std_logic;
SIGNAL \srl64[3][25]~61_combout\ : std_logic;
SIGNAL \srl64[1][9]~47_combout\ : std_logic;
SIGNAL \srl64[1][13]~49_combout\ : std_logic;
SIGNAL \srl64[1][11]~48_combout\ : std_logic;
SIGNAL \srl64[1][15]~50_combout\ : std_logic;
SIGNAL \srl64[3][9]~51_combout\ : std_logic;
SIGNAL \srl64[1][19]~53_combout\ : std_logic;
SIGNAL \srl64[1][23]~55_combout\ : std_logic;
SIGNAL \srl64[1][21]~54_combout\ : std_logic;
SIGNAL \srl64[1][17]~52_combout\ : std_logic;
SIGNAL \srl64[3][17]~56_combout\ : std_logic;
SIGNAL \srl64[5][1]~62_combout\ : std_logic;
SIGNAL \srl64[1][61]~63_combout\ : std_logic;
SIGNAL \srl64[2][61]~64_combout\ : std_logic;
SIGNAL \srl64[1][59]~65_combout\ : std_logic;
SIGNAL \srl64[1][57]~66_combout\ : std_logic;
SIGNAL \srl64[3][57]~67_combout\ : std_logic;
SIGNAL \srl64[1][55]~71_combout\ : std_logic;
SIGNAL \srl64[1][51]~69_combout\ : std_logic;
SIGNAL \srl64[1][49]~68_combout\ : std_logic;
SIGNAL \srl64[1][53]~70_combout\ : std_logic;
SIGNAL \srl64[3][49]~72_combout\ : std_logic;
SIGNAL \Y_srl[1]~12_combout\ : std_logic;
SIGNAL \sra64[0][63]~0_combout\ : std_logic;
SIGNAL \sra64[3][57]~1_combout\ : std_logic;
SIGNAL \sra64[4][49]~2_combout\ : std_logic;
SIGNAL \Y_sra[1]~1_combout\ : std_logic;
SIGNAL \sll64[6][1]~3_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \srl64[3][50]~90_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~10_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \srl64[3][42]~87_combout\ : std_logic;
SIGNAL \srl64[3][34]~88_combout\ : std_logic;
SIGNAL \srl64[4][34]~89_combout\ : std_logic;
SIGNAL \sll64[2][2]~5_combout\ : std_logic;
SIGNAL \sll64[4][2]~4_combout\ : std_logic;
SIGNAL \sll64[4][2]~6_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \Mux61~7_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \srl64[3][10]~84_combout\ : std_logic;
SIGNAL \srl64[3][18]~85_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \srl64[3][26]~86_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~8_combout\ : std_logic;
SIGNAL \srl64[3][51]~97_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Mux60~4_combout\ : std_logic;
SIGNAL \sll64[2][3]~7_combout\ : std_logic;
SIGNAL \sll64[4][3]~8_combout\ : std_logic;
SIGNAL \srl64[3][35]~95_combout\ : std_logic;
SIGNAL \srl64[3][43]~94_combout\ : std_logic;
SIGNAL \srl64[4][35]~96_combout\ : std_logic;
SIGNAL \Mux60~5_combout\ : std_logic;
SIGNAL \srl64[3][19]~92_combout\ : std_logic;
SIGNAL \srl64[3][11]~91_combout\ : std_logic;
SIGNAL \srl64[3][27]~93_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Mux60~6_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \srl64[3][20]~99_combout\ : std_logic;
SIGNAL \srl64[3][12]~98_combout\ : std_logic;
SIGNAL \srl64[3][28]~100_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \sll64[2][0]~9_combout\ : std_logic;
SIGNAL \sll64[2][4]~10_combout\ : std_logic;
SIGNAL \sll64[4][4]~11_combout\ : std_logic;
SIGNAL \srl64[3][44]~101_combout\ : std_logic;
SIGNAL \srl64[3][36]~102_combout\ : std_logic;
SIGNAL \srl64[4][36]~103_combout\ : std_logic;
SIGNAL \srl64[2][60]~105_combout\ : std_logic;
SIGNAL \srl64[3][52]~104_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \Mux59~4_combout\ : std_logic;
SIGNAL \Mux61~9_combout\ : std_logic;
SIGNAL \sra64[3][61]~3_combout\ : std_logic;
SIGNAL \srl64[2][61]~112_combout\ : std_logic;
SIGNAL \srl64[3][53]~113_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \srl64[3][37]~110_combout\ : std_logic;
SIGNAL \srl64[3][45]~109_combout\ : std_logic;
SIGNAL \srl64[4][37]~111_combout\ : std_logic;
SIGNAL \sll64[2][5]~13_combout\ : std_logic;
SIGNAL \sll64[2][1]~12_combout\ : std_logic;
SIGNAL \sll64[4][5]~14_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \srl64[3][21]~107_combout\ : std_logic;
SIGNAL \srl64[3][29]~108_combout\ : std_logic;
SIGNAL \srl64[3][13]~106_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \srl64[3][30]~116_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \srl64[3][14]~114_combout\ : std_logic;
SIGNAL \srl64[3][22]~115_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \sll64[2][6]~15_combout\ : std_logic;
SIGNAL \sll64[4][6]~16_combout\ : std_logic;
SIGNAL \srl64[3][46]~117_combout\ : std_logic;
SIGNAL \srl64[3][38]~118_combout\ : std_logic;
SIGNAL \srl64[4][38]~119_combout\ : std_logic;
SIGNAL \srl64[3][54]~120_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \sll64[2][7]~17_combout\ : std_logic;
SIGNAL \sll64[4][7]~18_combout\ : std_logic;
SIGNAL \srl64[3][39]~125_combout\ : std_logic;
SIGNAL \srl64[3][47]~124_combout\ : std_logic;
SIGNAL \srl64[4][39]~126_combout\ : std_logic;
SIGNAL \srl64[3][55]~127_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \srl64[3][15]~121_combout\ : std_logic;
SIGNAL \srl64[3][23]~122_combout\ : std_logic;
SIGNAL \srl64[3][31]~123_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \srl64[4][40]~128_combout\ : std_logic;
SIGNAL \sll64[2][8]~19_combout\ : std_logic;
SIGNAL \sll64[4][8]~20_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \sll64[2][9]~21_combout\ : std_logic;
SIGNAL \sll64[4][9]~22_combout\ : std_logic;
SIGNAL \srl64[4][41]~129_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \sll64[2][10]~23_combout\ : std_logic;
SIGNAL \sll64[4][10]~24_combout\ : std_logic;
SIGNAL \srl64[3][58]~131_combout\ : std_logic;
SIGNAL \sra64[3][58]~4_combout\ : std_logic;
SIGNAL \sra64[4][58]~5_combout\ : std_logic;
SIGNAL \srl64[4][42]~130_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \srl64[4][43]~132_combout\ : std_logic;
SIGNAL \sll64[2][11]~25_combout\ : std_logic;
SIGNAL \sll64[4][11]~26_combout\ : std_logic;
SIGNAL \sra64[4][59]~6_combout\ : std_logic;
SIGNAL \srl64[3][59]~133_combout\ : std_logic;
SIGNAL \srl64[3][59]~134_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \sra64[4][59]~7_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \sll64[2][12]~27_combout\ : std_logic;
SIGNAL \sll64[4][12]~28_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~5_combout\ : std_logic;
SIGNAL \sra64[4][61]~8_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \srl64[4][45]~135_combout\ : std_logic;
SIGNAL \sll64[2][13]~29_combout\ : std_logic;
SIGNAL \sll64[4][13]~30_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \sll64[2][14]~31_combout\ : std_logic;
SIGNAL \sll64[4][14]~32_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~5_combout\ : std_logic;
SIGNAL \sll64[2][15]~33_combout\ : std_logic;
SIGNAL \sll64[4][15]~34_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \srl64[4][63]~136_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux48~5_combout\ : std_logic;
SIGNAL \srl64[4][48]~137_combout\ : std_logic;
SIGNAL \srl64[5][16]~138_combout\ : std_logic;
SIGNAL \Y_srl[16]~0_combout\ : std_logic;
SIGNAL \Y_sra[16]~2_combout\ : std_logic;
SIGNAL \sll64[2][16]~36_combout\ : std_logic;
SIGNAL \sll64[4][16]~37_combout\ : std_logic;
SIGNAL \shamt[5]~0_combout\ : std_logic;
SIGNAL \sll64[4][0]~35_combout\ : std_logic;
SIGNAL \sll64[6][16]~38_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \sll64[4][1]~39_combout\ : std_logic;
SIGNAL \sll64[2][17]~40_combout\ : std_logic;
SIGNAL \sll64[4][17]~41_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux46~7_combout\ : std_logic;
SIGNAL \Mux46~8_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \sra64[6][49]~9_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Y_sra[31]~3_combout\ : std_logic;
SIGNAL \Mux46~6_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux46~9_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \sra64[6][50]~10_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \sll64[2][18]~42_combout\ : std_logic;
SIGNAL \sll64[4][18]~43_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Mux45~5_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \sra64[4][51]~11_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \sra64[6][51]~12_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \sll64[2][19]~44_combout\ : std_logic;
SIGNAL \sll64[4][19]~45_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux44~5_combout\ : std_logic;
SIGNAL \sll64[2][20]~46_combout\ : std_logic;
SIGNAL \sll64[4][20]~47_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \sra64[4][52]~13_combout\ : std_logic;
SIGNAL \sra64[6][52]~14_combout\ : std_logic;
SIGNAL \srl64[6][52]~139_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \sll64[2][21]~48_combout\ : std_logic;
SIGNAL \sll64[4][21]~49_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \sra64[6][53]~15_combout\ : std_logic;
SIGNAL \srl64[6][53]~140_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \sll64[2][22]~50_combout\ : std_logic;
SIGNAL \sll64[4][22]~51_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \sra64[3][62]~16_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \srl64[6][54]~141_combout\ : std_logic;
SIGNAL \sra64[6][54]~17_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux41~5_combout\ : std_logic;
SIGNAL \sll64[2][23]~52_combout\ : std_logic;
SIGNAL \sll64[4][23]~53_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \srl64[4][55]~142_combout\ : std_logic;
SIGNAL \srl64[6][55]~143_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~5_combout\ : std_logic;
SIGNAL \sll64[2][24]~54_combout\ : std_logic;
SIGNAL \sll64[4][24]~55_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \sra64[6][57]~18_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~5_combout\ : std_logic;
SIGNAL \Mux38~6_combout\ : std_logic;
SIGNAL \sll64[2][25]~56_combout\ : std_logic;
SIGNAL \sll64[4][25]~57_combout\ : std_logic;
SIGNAL \Mux38~7_combout\ : std_logic;
SIGNAL \Mux38~8_combout\ : std_logic;
SIGNAL \sra64[6][58]~19_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \sll64[2][26]~58_combout\ : std_logic;
SIGNAL \sll64[4][26]~59_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \sll64[2][27]~60_combout\ : std_logic;
SIGNAL \sll64[4][27]~61_combout\ : std_logic;
SIGNAL \Mux36~6_combout\ : std_logic;
SIGNAL \sra64[6][59]~20_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Mux36~7_combout\ : std_logic;
SIGNAL \srl64[4][44]~144_combout\ : std_logic;
SIGNAL \sra64[6][49]~21_combout\ : std_logic;
SIGNAL \sra64[6][60]~22_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \sll64[2][28]~62_combout\ : std_logic;
SIGNAL \sll64[4][28]~63_combout\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \Mux35~6_combout\ : std_logic;
SIGNAL \sll64[2][29]~64_combout\ : std_logic;
SIGNAL \sll64[4][29]~65_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \srl64[6][61]~145_combout\ : std_logic;
SIGNAL \sra64[6][61]~23_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \sll64[2][30]~66_combout\ : std_logic;
SIGNAL \sll64[4][30]~67_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \sra64[4][62]~24_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \srl64[4][46]~146_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Y_sra[31]~4_combout\ : std_logic;
SIGNAL \srl64[4][47]~147_combout\ : std_logic;
SIGNAL \srl64[4][31]~148_combout\ : std_logic;
SIGNAL \Y_sra[31]~5_combout\ : std_logic;
SIGNAL \sll64[2][31]~68_combout\ : std_logic;
SIGNAL \sll64[4][31]~69_combout\ : std_logic;
SIGNAL \Y_sll[31]~0_combout\ : std_logic;
SIGNAL \Y_srl[31]~8_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Y_srl[63]~1_combout\ : std_logic;
SIGNAL \Y_srl[32]~2_combout\ : std_logic;
SIGNAL \Y_sra[32]~6_combout\ : std_logic;
SIGNAL \A_left[32]~0_combout\ : std_logic;
SIGNAL \sll64[2][32]~70_combout\ : std_logic;
SIGNAL \sll64[4][32]~71_combout\ : std_logic;
SIGNAL \Y_sll[32]~1_combout\ : std_logic;
SIGNAL \Y_sll[32]~2_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~11_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \A_left[33]~1_combout\ : std_logic;
SIGNAL \sll64[2][33]~72_combout\ : std_logic;
SIGNAL \sll64[4][33]~73_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \A_left[34]~2_combout\ : std_logic;
SIGNAL \sll64[2][34]~74_combout\ : std_logic;
SIGNAL \sll64[4][34]~75_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \A_left[35]~3_combout\ : std_logic;
SIGNAL \sll64[2][35]~76_combout\ : std_logic;
SIGNAL \sll64[4][35]~77_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \A_left[36]~4_combout\ : std_logic;
SIGNAL \sll64[2][36]~78_combout\ : std_logic;
SIGNAL \sll64[4][36]~79_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \A_left[37]~5_combout\ : std_logic;
SIGNAL \sll64[2][37]~80_combout\ : std_logic;
SIGNAL \sll64[4][37]~81_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \A_left[38]~6_combout\ : std_logic;
SIGNAL \sll64[2][38]~82_combout\ : std_logic;
SIGNAL \sll64[4][38]~83_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \A_left[39]~7_combout\ : std_logic;
SIGNAL \sll64[2][39]~84_combout\ : std_logic;
SIGNAL \sll64[4][39]~85_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~10_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Y_srl[31]~3_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \A_left[40]~8_combout\ : std_logic;
SIGNAL \sll64[2][40]~86_combout\ : std_logic;
SIGNAL \sll64[4][40]~87_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Y_srl[63]~4_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \A_left[41]~9_combout\ : std_logic;
SIGNAL \sll64[2][41]~88_combout\ : std_logic;
SIGNAL \sll64[4][41]~89_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \A_left[42]~10_combout\ : std_logic;
SIGNAL \sll64[2][42]~90_combout\ : std_logic;
SIGNAL \sll64[4][42]~91_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \A_left[43]~11_combout\ : std_logic;
SIGNAL \sll64[2][43]~92_combout\ : std_logic;
SIGNAL \sll64[4][43]~93_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \A_left[44]~12_combout\ : std_logic;
SIGNAL \sll64[2][44]~94_combout\ : std_logic;
SIGNAL \sll64[4][44]~95_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \A_left[45]~13_combout\ : std_logic;
SIGNAL \sll64[2][45]~96_combout\ : std_logic;
SIGNAL \sll64[4][45]~97_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \A_left[46]~14_combout\ : std_logic;
SIGNAL \sll64[2][46]~98_combout\ : std_logic;
SIGNAL \sll64[4][46]~99_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \A_left[47]~15_combout\ : std_logic;
SIGNAL \sll64[2][47]~100_combout\ : std_logic;
SIGNAL \sll64[4][47]~101_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Y_sra[48]~7_combout\ : std_logic;
SIGNAL \A_left[48]~16_combout\ : std_logic;
SIGNAL \sll64[2][48]~102_combout\ : std_logic;
SIGNAL \sll64[4][48]~103_combout\ : std_logic;
SIGNAL \sll64[6][48]~104_combout\ : std_logic;
SIGNAL \Y_sll[48]~3_combout\ : std_logic;
SIGNAL \Y_srl[48]~5_combout\ : std_logic;
SIGNAL \Y_srl[48]~6_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \srl64[6][49]~149_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \A_left[49]~17_combout\ : std_logic;
SIGNAL \sll64[2][49]~105_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \srl64[6][50]~150_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \A_left[50]~18_combout\ : std_logic;
SIGNAL \sll64[2][50]~106_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \srl64[6][51]~151_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \A_left[51]~19_combout\ : std_logic;
SIGNAL \sll64[2][51]~107_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \A_left[52]~20_combout\ : std_logic;
SIGNAL \sll64[2][52]~108_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \A_left[53]~21_combout\ : std_logic;
SIGNAL \sll64[2][53]~109_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \A_left[54]~22_combout\ : std_logic;
SIGNAL \sll64[2][54]~110_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \srl64[6][56]~152_combout\ : std_logic;
SIGNAL \sra64[6][55]~25_combout\ : std_logic;
SIGNAL \sra64[6][55]~26_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \A_left[55]~23_combout\ : std_logic;
SIGNAL \sll64[2][55]~111_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \A_left[56]~24_combout\ : std_logic;
SIGNAL \sll64[2][56]~112_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \A_left[57]~25_combout\ : std_logic;
SIGNAL \sll64[2][57]~113_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \A_left[58]~26_combout\ : std_logic;
SIGNAL \sll64[2][58]~114_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \srl64[6][58]~153_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \A_left[59]~27_combout\ : std_logic;
SIGNAL \sll64[2][59]~115_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \srl64[6][59]~154_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \srl64[6][60]~155_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \A_left[60]~28_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \A_left[61]~29_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Y_sra[62]~8_combout\ : std_logic;
SIGNAL \sll64[2][62]~116_combout\ : std_logic;
SIGNAL \sll64[4][62]~117_combout\ : std_logic;
SIGNAL \sll64[6][62]~118_combout\ : std_logic;
SIGNAL \Y_sll[62]~4_combout\ : std_logic;
SIGNAL \Y_srl[62]~7_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \sll64[2][63]~119_combout\ : std_logic;
SIGNAL \sll64[4][63]~120_combout\ : std_logic;
SIGNAL \Y_sll[63]~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sll64[4][63]~120_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][63]~119_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[62]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[62]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[62]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][62]~118_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][62]~117_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][62]~116_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[61]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[60]~28_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][60]~155_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][59]~115_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[59]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][59]~154_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][58]~114_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[58]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][58]~153_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][57]~113_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[57]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][56]~112_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[56]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][55]~111_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[55]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][55]~26_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][55]~25_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][56]~152_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][54]~110_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[54]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][53]~109_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[53]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][52]~108_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[52]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][51]~107_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[51]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][51]~151_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][50]~106_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[50]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][50]~150_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][49]~105_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[49]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][49]~149_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[48]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[48]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[48]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[48]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][48]~104_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][48]~103_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][48]~102_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[48]~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][47]~101_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][47]~100_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[47]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][46]~99_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][46]~98_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[46]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][45]~97_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][45]~96_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[45]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][44]~95_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][44]~94_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[44]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][43]~93_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][43]~92_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[43]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][42]~91_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][42]~90_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[42]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][41]~89_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][41]~88_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[41]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][40]~87_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][40]~86_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[40]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[63]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][39]~85_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][39]~84_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[39]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[31]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][38]~83_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][38]~82_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[38]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][37]~81_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][37]~80_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[37]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][36]~79_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][36]~78_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[36]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][35]~77_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][35]~76_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[35]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][34]~75_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][34]~74_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[34]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~5_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][33]~73_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][33]~72_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[33]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[32]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[32]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[63]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[32]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[32]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][32]~71_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][32]~70_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[32]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[31]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[31]~4_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][31]~148_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][47]~147_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][31]~69_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][31]~68_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][30]~67_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][30]~66_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][46]~146_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[4][62]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][29]~65_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][29]~64_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][61]~23_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][61]~145_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~5_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][28]~63_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][28]~62_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~4_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][44]~144_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][60]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][49]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~6_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][27]~61_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][27]~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~3_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][59]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][26]~59_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][26]~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][58]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~7_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][25]~57_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][25]~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][57]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][24]~55_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][24]~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][23]~53_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][23]~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][55]~143_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][55]~142_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][22]~51_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][22]~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][54]~17_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][62]~16_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][54]~141_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][21]~49_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][21]~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][53]~15_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][53]~140_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][20]~47_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][20]~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][52]~14_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[4][52]~13_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[6][52]~139_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][19]~45_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][19]~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][51]~12_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[4][51]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][18]~43_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][18]~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][50]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][17]~41_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][17]~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][1]~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[31]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][49]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[16]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[16]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][16]~138_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][48]~137_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][16]~38_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][16]~37_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][16]~36_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][0]~35_combout\ : std_logic;
SIGNAL \ALT_INV_shamt[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][63]~136_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][15]~34_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][15]~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][14]~32_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][14]~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[4][61]~8_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][45]~135_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][13]~30_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][13]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~3_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[4][59]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][12]~28_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][12]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][59]~134_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][59]~133_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[4][59]~6_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][43]~132_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][11]~26_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][11]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[4][58]~5_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][58]~4_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][58]~131_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][42]~130_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][10]~24_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][10]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][41]~129_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][9]~22_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][9]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][40]~128_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][8]~20_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][8]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][55]~127_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][39]~126_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][39]~125_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][47]~124_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][7]~18_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][7]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][31]~123_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][23]~122_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][15]~121_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][54]~120_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][38]~119_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][38]~118_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][46]~117_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][6]~16_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][6]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][30]~116_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][22]~115_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][14]~114_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~2_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][61]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~9_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][53]~113_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][61]~112_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][37]~111_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][37]~110_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][45]~109_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][5]~14_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][5]~13_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][1]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][29]~108_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][21]~107_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][13]~106_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][60]~105_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][52]~104_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][36]~103_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][36]~102_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][44]~101_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][4]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][4]~10_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][0]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][28]~100_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][20]~99_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][12]~98_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][51]~97_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][35]~96_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][35]~95_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][43]~94_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][3]~8_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][3]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][27]~93_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][19]~92_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][11]~91_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~5_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][50]~90_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][34]~89_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][34]~88_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][42]~87_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][2]~5_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][26]~86_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][18]~85_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][10]~84_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[4][49]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][57]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[0][63]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][33]~83_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][33]~82_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][39]~81_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][37]~80_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][35]~79_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][33]~78_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][41]~77_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][47]~76_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][45]~75_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][43]~74_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][41]~73_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][49]~72_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][55]~71_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][53]~70_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][51]~69_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][49]~68_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][57]~67_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][57]~66_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][59]~65_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][61]~64_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][61]~63_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][1]~62_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][25]~61_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][31]~60_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][29]~59_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][27]~58_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][25]~57_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][17]~56_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][23]~55_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][21]~54_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][19]~53_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][17]~52_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][9]~51_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][15]~50_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][13]~49_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][11]~48_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][9]~47_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][1]~46_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][7]~45_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][5]~44_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][3]~43_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][1]~42_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][0]~41_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][24]~40_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][30]~39_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][28]~38_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][26]~37_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][24]~36_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][16]~35_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][22]~34_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][20]~33_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][18]~32_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][16]~31_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][8]~30_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][14]~29_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][12]~28_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][10]~27_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][8]~26_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][0]~25_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][6]~24_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][4]~23_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][2]~22_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][0]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][32]~20_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][32]~19_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][38]~18_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][36]~17_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][34]~16_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][32]~15_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][40]~14_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][46]~13_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][44]~12_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][42]~11_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][40]~10_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][48]~9_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][54]~8_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][52]~7_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][50]~6_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][48]~5_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][56]~4_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][62]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][58]~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][60]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][56]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[1]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[31]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[63]~5_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_sll64[4][63]~120_combout\ <= NOT \sll64[4][63]~120_combout\;
\ALT_INV_sll64[2][63]~119_combout\ <= NOT \sll64[2][63]~119_combout\;
\ALT_INV_Y_sra[62]~8_combout\ <= NOT \Y_sra[62]~8_combout\;
\ALT_INV_Y_srl[62]~7_combout\ <= NOT \Y_srl[62]~7_combout\;
\ALT_INV_Y_sll[62]~4_combout\ <= NOT \Y_sll[62]~4_combout\;
\ALT_INV_sll64[6][62]~118_combout\ <= NOT \sll64[6][62]~118_combout\;
\ALT_INV_sll64[4][62]~117_combout\ <= NOT \sll64[4][62]~117_combout\;
\ALT_INV_sll64[2][62]~116_combout\ <= NOT \sll64[2][62]~116_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_A_left[61]~29_combout\ <= NOT \A_left[61]~29_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_A_left[60]~28_combout\ <= NOT \A_left[60]~28_combout\;
\ALT_INV_srl64[6][60]~155_combout\ <= NOT \srl64[6][60]~155_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_sll64[2][59]~115_combout\ <= NOT \sll64[2][59]~115_combout\;
\ALT_INV_A_left[59]~27_combout\ <= NOT \A_left[59]~27_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_srl64[6][59]~154_combout\ <= NOT \srl64[6][59]~154_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_sll64[2][58]~114_combout\ <= NOT \sll64[2][58]~114_combout\;
\ALT_INV_A_left[58]~26_combout\ <= NOT \A_left[58]~26_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_srl64[6][58]~153_combout\ <= NOT \srl64[6][58]~153_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_sll64[2][57]~113_combout\ <= NOT \sll64[2][57]~113_combout\;
\ALT_INV_A_left[57]~25_combout\ <= NOT \A_left[57]~25_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_sll64[2][56]~112_combout\ <= NOT \sll64[2][56]~112_combout\;
\ALT_INV_A_left[56]~24_combout\ <= NOT \A_left[56]~24_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_sll64[2][55]~111_combout\ <= NOT \sll64[2][55]~111_combout\;
\ALT_INV_A_left[55]~23_combout\ <= NOT \A_left[55]~23_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_sra64[6][55]~26_combout\ <= NOT \sra64[6][55]~26_combout\;
\ALT_INV_sra64[6][55]~25_combout\ <= NOT \sra64[6][55]~25_combout\;
\ALT_INV_srl64[6][56]~152_combout\ <= NOT \srl64[6][56]~152_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_sll64[2][54]~110_combout\ <= NOT \sll64[2][54]~110_combout\;
\ALT_INV_A_left[54]~22_combout\ <= NOT \A_left[54]~22_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_sll64[2][53]~109_combout\ <= NOT \sll64[2][53]~109_combout\;
\ALT_INV_A_left[53]~21_combout\ <= NOT \A_left[53]~21_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_sll64[2][52]~108_combout\ <= NOT \sll64[2][52]~108_combout\;
\ALT_INV_A_left[52]~20_combout\ <= NOT \A_left[52]~20_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_sll64[2][51]~107_combout\ <= NOT \sll64[2][51]~107_combout\;
\ALT_INV_A_left[51]~19_combout\ <= NOT \A_left[51]~19_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_srl64[6][51]~151_combout\ <= NOT \srl64[6][51]~151_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_sll64[2][50]~106_combout\ <= NOT \sll64[2][50]~106_combout\;
\ALT_INV_A_left[50]~18_combout\ <= NOT \A_left[50]~18_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_srl64[6][50]~150_combout\ <= NOT \srl64[6][50]~150_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_sll64[2][49]~105_combout\ <= NOT \sll64[2][49]~105_combout\;
\ALT_INV_A_left[49]~17_combout\ <= NOT \A_left[49]~17_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_srl64[6][49]~149_combout\ <= NOT \srl64[6][49]~149_combout\;
\ALT_INV_Y_sra[48]~7_combout\ <= NOT \Y_sra[48]~7_combout\;
\ALT_INV_Y_srl[48]~6_combout\ <= NOT \Y_srl[48]~6_combout\;
\ALT_INV_Y_srl[48]~5_combout\ <= NOT \Y_srl[48]~5_combout\;
\ALT_INV_Y_sll[48]~3_combout\ <= NOT \Y_sll[48]~3_combout\;
\ALT_INV_sll64[6][48]~104_combout\ <= NOT \sll64[6][48]~104_combout\;
\ALT_INV_sll64[4][48]~103_combout\ <= NOT \sll64[4][48]~103_combout\;
\ALT_INV_sll64[2][48]~102_combout\ <= NOT \sll64[2][48]~102_combout\;
\ALT_INV_A_left[48]~16_combout\ <= NOT \A_left[48]~16_combout\;
\ALT_INV_Mux16~3_combout\ <= NOT \Mux16~3_combout\;
\ALT_INV_sll64[4][47]~101_combout\ <= NOT \sll64[4][47]~101_combout\;
\ALT_INV_sll64[2][47]~100_combout\ <= NOT \sll64[2][47]~100_combout\;
\ALT_INV_A_left[47]~15_combout\ <= NOT \A_left[47]~15_combout\;
\ALT_INV_Mux16~2_combout\ <= NOT \Mux16~2_combout\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux17~3_combout\ <= NOT \Mux17~3_combout\;
\ALT_INV_sll64[4][46]~99_combout\ <= NOT \sll64[4][46]~99_combout\;
\ALT_INV_sll64[2][46]~98_combout\ <= NOT \sll64[2][46]~98_combout\;
\ALT_INV_A_left[46]~14_combout\ <= NOT \A_left[46]~14_combout\;
\ALT_INV_Mux17~2_combout\ <= NOT \Mux17~2_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~3_combout\ <= NOT \Mux18~3_combout\;
\ALT_INV_sll64[4][45]~97_combout\ <= NOT \sll64[4][45]~97_combout\;
\ALT_INV_sll64[2][45]~96_combout\ <= NOT \sll64[2][45]~96_combout\;
\ALT_INV_A_left[45]~13_combout\ <= NOT \A_left[45]~13_combout\;
\ALT_INV_Mux18~2_combout\ <= NOT \Mux18~2_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux19~3_combout\ <= NOT \Mux19~3_combout\;
\ALT_INV_sll64[4][44]~95_combout\ <= NOT \sll64[4][44]~95_combout\;
\ALT_INV_sll64[2][44]~94_combout\ <= NOT \sll64[2][44]~94_combout\;
\ALT_INV_A_left[44]~12_combout\ <= NOT \A_left[44]~12_combout\;
\ALT_INV_Mux19~2_combout\ <= NOT \Mux19~2_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~3_combout\ <= NOT \Mux20~3_combout\;
\ALT_INV_sll64[4][43]~93_combout\ <= NOT \sll64[4][43]~93_combout\;
\ALT_INV_sll64[2][43]~92_combout\ <= NOT \sll64[2][43]~92_combout\;
\ALT_INV_A_left[43]~11_combout\ <= NOT \A_left[43]~11_combout\;
\ALT_INV_Mux20~2_combout\ <= NOT \Mux20~2_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~3_combout\ <= NOT \Mux21~3_combout\;
\ALT_INV_sll64[4][42]~91_combout\ <= NOT \sll64[4][42]~91_combout\;
\ALT_INV_sll64[2][42]~90_combout\ <= NOT \sll64[2][42]~90_combout\;
\ALT_INV_A_left[42]~10_combout\ <= NOT \A_left[42]~10_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~3_combout\ <= NOT \Mux22~3_combout\;
\ALT_INV_sll64[4][41]~89_combout\ <= NOT \sll64[4][41]~89_combout\;
\ALT_INV_sll64[2][41]~88_combout\ <= NOT \sll64[2][41]~88_combout\;
\ALT_INV_A_left[41]~9_combout\ <= NOT \A_left[41]~9_combout\;
\ALT_INV_Mux22~2_combout\ <= NOT \Mux22~2_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~3_combout\ <= NOT \Mux23~3_combout\;
\ALT_INV_sll64[4][40]~87_combout\ <= NOT \sll64[4][40]~87_combout\;
\ALT_INV_sll64[2][40]~86_combout\ <= NOT \sll64[2][40]~86_combout\;
\ALT_INV_A_left[40]~8_combout\ <= NOT \A_left[40]~8_combout\;
\ALT_INV_Mux23~2_combout\ <= NOT \Mux23~2_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Y_srl[63]~4_combout\ <= NOT \Y_srl[63]~4_combout\;
\ALT_INV_Mux24~3_combout\ <= NOT \Mux24~3_combout\;
\ALT_INV_sll64[4][39]~85_combout\ <= NOT \sll64[4][39]~85_combout\;
\ALT_INV_sll64[2][39]~84_combout\ <= NOT \sll64[2][39]~84_combout\;
\ALT_INV_A_left[39]~7_combout\ <= NOT \A_left[39]~7_combout\;
\ALT_INV_Mux24~2_combout\ <= NOT \Mux24~2_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\ALT_INV_Mux30~10_combout\ <= NOT \Mux30~10_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Y_srl[31]~3_combout\ <= NOT \Y_srl[31]~3_combout\;
\ALT_INV_Mux25~3_combout\ <= NOT \Mux25~3_combout\;
\ALT_INV_sll64[4][38]~83_combout\ <= NOT \sll64[4][38]~83_combout\;
\ALT_INV_sll64[2][38]~82_combout\ <= NOT \sll64[2][38]~82_combout\;
\ALT_INV_A_left[38]~6_combout\ <= NOT \A_left[38]~6_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux26~3_combout\ <= NOT \Mux26~3_combout\;
\ALT_INV_sll64[4][37]~81_combout\ <= NOT \sll64[4][37]~81_combout\;
\ALT_INV_sll64[2][37]~80_combout\ <= NOT \sll64[2][37]~80_combout\;
\ALT_INV_A_left[37]~5_combout\ <= NOT \A_left[37]~5_combout\;
\ALT_INV_Mux26~2_combout\ <= NOT \Mux26~2_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~3_combout\ <= NOT \Mux27~3_combout\;
\ALT_INV_sll64[4][36]~79_combout\ <= NOT \sll64[4][36]~79_combout\;
\ALT_INV_sll64[2][36]~78_combout\ <= NOT \sll64[2][36]~78_combout\;
\ALT_INV_A_left[36]~4_combout\ <= NOT \A_left[36]~4_combout\;
\ALT_INV_Mux27~2_combout\ <= NOT \Mux27~2_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux28~3_combout\ <= NOT \Mux28~3_combout\;
\ALT_INV_sll64[4][35]~77_combout\ <= NOT \sll64[4][35]~77_combout\;
\ALT_INV_sll64[2][35]~76_combout\ <= NOT \sll64[2][35]~76_combout\;
\ALT_INV_A_left[35]~3_combout\ <= NOT \A_left[35]~3_combout\;
\ALT_INV_Mux28~2_combout\ <= NOT \Mux28~2_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux29~4_combout\ <= NOT \Mux29~4_combout\;
\ALT_INV_sll64[4][34]~75_combout\ <= NOT \sll64[4][34]~75_combout\;
\ALT_INV_sll64[2][34]~74_combout\ <= NOT \sll64[2][34]~74_combout\;
\ALT_INV_A_left[34]~2_combout\ <= NOT \A_left[34]~2_combout\;
\ALT_INV_Mux29~3_combout\ <= NOT \Mux29~3_combout\;
\ALT_INV_Mux29~2_combout\ <= NOT \Mux29~2_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\ALT_INV_Mux30~8_combout\ <= NOT \Mux30~8_combout\;
\ALT_INV_Mux30~7_combout\ <= NOT \Mux30~7_combout\;
\ALT_INV_Mux30~6_combout\ <= NOT \Mux30~6_combout\;
\ALT_INV_Mux30~5_combout\ <= NOT \Mux30~5_combout\;
\ALT_INV_sll64[4][33]~73_combout\ <= NOT \sll64[4][33]~73_combout\;
\ALT_INV_sll64[2][33]~72_combout\ <= NOT \sll64[2][33]~72_combout\;
\ALT_INV_A_left[33]~1_combout\ <= NOT \A_left[33]~1_combout\;
\ALT_INV_Mux30~4_combout\ <= NOT \Mux30~4_combout\;
\ALT_INV_Mux30~3_combout\ <= NOT \Mux30~3_combout\;
\ALT_INV_Mux30~2_combout\ <= NOT \Mux30~2_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Y_sra[32]~6_combout\ <= NOT \Y_sra[32]~6_combout\;
\ALT_INV_Y_srl[32]~2_combout\ <= NOT \Y_srl[32]~2_combout\;
\ALT_INV_Y_srl[63]~1_combout\ <= NOT \Y_srl[63]~1_combout\;
\ALT_INV_Y_sll[32]~2_combout\ <= NOT \Y_sll[32]~2_combout\;
\ALT_INV_Y_sll[32]~1_combout\ <= NOT \Y_sll[32]~1_combout\;
\ALT_INV_sll64[4][32]~71_combout\ <= NOT \sll64[4][32]~71_combout\;
\ALT_INV_sll64[2][32]~70_combout\ <= NOT \sll64[2][32]~70_combout\;
\ALT_INV_A_left[32]~0_combout\ <= NOT \A_left[32]~0_combout\;
\ALT_INV_Y_sra[31]~5_combout\ <= NOT \Y_sra[31]~5_combout\;
\ALT_INV_Y_sra[31]~4_combout\ <= NOT \Y_sra[31]~4_combout\;
\ALT_INV_srl64[4][31]~148_combout\ <= NOT \srl64[4][31]~148_combout\;
\ALT_INV_srl64[4][47]~147_combout\ <= NOT \srl64[4][47]~147_combout\;
\ALT_INV_Y_sll[31]~0_combout\ <= NOT \Y_sll[31]~0_combout\;
\ALT_INV_sll64[4][31]~69_combout\ <= NOT \sll64[4][31]~69_combout\;
\ALT_INV_sll64[2][31]~68_combout\ <= NOT \sll64[2][31]~68_combout\;
\ALT_INV_Mux33~1_combout\ <= NOT \Mux33~1_combout\;
\ALT_INV_sll64[4][30]~67_combout\ <= NOT \sll64[4][30]~67_combout\;
\ALT_INV_sll64[2][30]~66_combout\ <= NOT \sll64[2][30]~66_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\ALT_INV_srl64[4][46]~146_combout\ <= NOT \srl64[4][46]~146_combout\;
\ALT_INV_sra64[4][62]~24_combout\ <= NOT \sra64[4][62]~24_combout\;
\ALT_INV_Mux34~4_combout\ <= NOT \Mux34~4_combout\;
\ALT_INV_sll64[4][29]~65_combout\ <= NOT \sll64[4][29]~65_combout\;
\ALT_INV_sll64[2][29]~64_combout\ <= NOT \sll64[2][29]~64_combout\;
\ALT_INV_Mux34~3_combout\ <= NOT \Mux34~3_combout\;
\ALT_INV_Mux34~2_combout\ <= NOT \Mux34~2_combout\;
\ALT_INV_Mux34~1_combout\ <= NOT \Mux34~1_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_sra64[6][61]~23_combout\ <= NOT \sra64[6][61]~23_combout\;
\ALT_INV_srl64[6][61]~145_combout\ <= NOT \srl64[6][61]~145_combout\;
\ALT_INV_Mux35~5_combout\ <= NOT \Mux35~5_combout\;
\ALT_INV_sll64[4][28]~63_combout\ <= NOT \sll64[4][28]~63_combout\;
\ALT_INV_sll64[2][28]~62_combout\ <= NOT \sll64[2][28]~62_combout\;
\ALT_INV_Mux35~4_combout\ <= NOT \Mux35~4_combout\;
\ALT_INV_srl64[4][44]~144_combout\ <= NOT \srl64[4][44]~144_combout\;
\ALT_INV_Mux35~3_combout\ <= NOT \Mux35~3_combout\;
\ALT_INV_Mux35~2_combout\ <= NOT \Mux35~2_combout\;
\ALT_INV_Mux35~1_combout\ <= NOT \Mux35~1_combout\;
\ALT_INV_sra64[6][60]~22_combout\ <= NOT \sra64[6][60]~22_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_sra64[6][49]~21_combout\ <= NOT \sra64[6][49]~21_combout\;
\ALT_INV_Mux36~6_combout\ <= NOT \Mux36~6_combout\;
\ALT_INV_sll64[4][27]~61_combout\ <= NOT \sll64[4][27]~61_combout\;
\ALT_INV_sll64[2][27]~60_combout\ <= NOT \sll64[2][27]~60_combout\;
\ALT_INV_Mux36~5_combout\ <= NOT \Mux36~5_combout\;
\ALT_INV_Mux36~4_combout\ <= NOT \Mux36~4_combout\;
\ALT_INV_Mux36~3_combout\ <= NOT \Mux36~3_combout\;
\ALT_INV_sra64[6][59]~20_combout\ <= NOT \sra64[6][59]~20_combout\;
\ALT_INV_Mux37~3_combout\ <= NOT \Mux37~3_combout\;
\ALT_INV_sll64[4][26]~59_combout\ <= NOT \sll64[4][26]~59_combout\;
\ALT_INV_sll64[2][26]~58_combout\ <= NOT \sll64[2][26]~58_combout\;
\ALT_INV_Mux37~2_combout\ <= NOT \Mux37~2_combout\;
\ALT_INV_Mux37~1_combout\ <= NOT \Mux37~1_combout\;
\ALT_INV_Mux37~0_combout\ <= NOT \Mux37~0_combout\;
\ALT_INV_sra64[6][58]~19_combout\ <= NOT \sra64[6][58]~19_combout\;
\ALT_INV_Mux38~7_combout\ <= NOT \Mux38~7_combout\;
\ALT_INV_sll64[4][25]~57_combout\ <= NOT \sll64[4][25]~57_combout\;
\ALT_INV_sll64[2][25]~56_combout\ <= NOT \sll64[2][25]~56_combout\;
\ALT_INV_Mux38~6_combout\ <= NOT \Mux38~6_combout\;
\ALT_INV_Mux38~5_combout\ <= NOT \Mux38~5_combout\;
\ALT_INV_Mux38~4_combout\ <= NOT \Mux38~4_combout\;
\ALT_INV_Mux38~3_combout\ <= NOT \Mux38~3_combout\;
\ALT_INV_Mux38~2_combout\ <= NOT \Mux38~2_combout\;
\ALT_INV_Mux38~1_combout\ <= NOT \Mux38~1_combout\;
\ALT_INV_sra64[6][57]~18_combout\ <= NOT \sra64[6][57]~18_combout\;
\ALT_INV_Mux39~2_combout\ <= NOT \Mux39~2_combout\;
\ALT_INV_sll64[4][24]~55_combout\ <= NOT \sll64[4][24]~55_combout\;
\ALT_INV_sll64[2][24]~54_combout\ <= NOT \sll64[2][24]~54_combout\;
\ALT_INV_Mux39~1_combout\ <= NOT \Mux39~1_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\ALT_INV_Mux40~4_combout\ <= NOT \Mux40~4_combout\;
\ALT_INV_sll64[4][23]~53_combout\ <= NOT \sll64[4][23]~53_combout\;
\ALT_INV_sll64[2][23]~52_combout\ <= NOT \sll64[2][23]~52_combout\;
\ALT_INV_Mux40~3_combout\ <= NOT \Mux40~3_combout\;
\ALT_INV_Mux40~2_combout\ <= NOT \Mux40~2_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_srl64[6][55]~143_combout\ <= NOT \srl64[6][55]~143_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\ALT_INV_srl64[4][55]~142_combout\ <= NOT \srl64[4][55]~142_combout\;
\ALT_INV_Mux41~4_combout\ <= NOT \Mux41~4_combout\;
\ALT_INV_sll64[4][22]~51_combout\ <= NOT \sll64[4][22]~51_combout\;
\ALT_INV_sll64[2][22]~50_combout\ <= NOT \sll64[2][22]~50_combout\;
\ALT_INV_Mux41~3_combout\ <= NOT \Mux41~3_combout\;
\ALT_INV_Mux41~2_combout\ <= NOT \Mux41~2_combout\;
\ALT_INV_Mux41~1_combout\ <= NOT \Mux41~1_combout\;
\ALT_INV_sra64[6][54]~17_combout\ <= NOT \sra64[6][54]~17_combout\;
\ALT_INV_sra64[3][62]~16_combout\ <= NOT \sra64[3][62]~16_combout\;
\ALT_INV_srl64[6][54]~141_combout\ <= NOT \srl64[6][54]~141_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux42~4_combout\ <= NOT \Mux42~4_combout\;
\ALT_INV_sll64[4][21]~49_combout\ <= NOT \sll64[4][21]~49_combout\;
\ALT_INV_sll64[2][21]~48_combout\ <= NOT \sll64[2][21]~48_combout\;
\ALT_INV_Mux42~3_combout\ <= NOT \Mux42~3_combout\;
\ALT_INV_Mux42~2_combout\ <= NOT \Mux42~2_combout\;
\ALT_INV_Mux42~1_combout\ <= NOT \Mux42~1_combout\;
\ALT_INV_sra64[6][53]~15_combout\ <= NOT \sra64[6][53]~15_combout\;
\ALT_INV_srl64[6][53]~140_combout\ <= NOT \srl64[6][53]~140_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_Mux43~4_combout\ <= NOT \Mux43~4_combout\;
\ALT_INV_sll64[4][20]~47_combout\ <= NOT \sll64[4][20]~47_combout\;
\ALT_INV_sll64[2][20]~46_combout\ <= NOT \sll64[2][20]~46_combout\;
\ALT_INV_Mux43~3_combout\ <= NOT \Mux43~3_combout\;
\ALT_INV_Mux43~2_combout\ <= NOT \Mux43~2_combout\;
\ALT_INV_Mux43~1_combout\ <= NOT \Mux43~1_combout\;
\ALT_INV_sra64[6][52]~14_combout\ <= NOT \sra64[6][52]~14_combout\;
\ALT_INV_sra64[4][52]~13_combout\ <= NOT \sra64[4][52]~13_combout\;
\ALT_INV_srl64[6][52]~139_combout\ <= NOT \srl64[6][52]~139_combout\;
\ALT_INV_Mux43~0_combout\ <= NOT \Mux43~0_combout\;
\ALT_INV_Mux44~4_combout\ <= NOT \Mux44~4_combout\;
\ALT_INV_sll64[4][19]~45_combout\ <= NOT \sll64[4][19]~45_combout\;
\ALT_INV_sll64[2][19]~44_combout\ <= NOT \sll64[2][19]~44_combout\;
\ALT_INV_Mux44~3_combout\ <= NOT \Mux44~3_combout\;
\ALT_INV_Mux44~2_combout\ <= NOT \Mux44~2_combout\;
\ALT_INV_Mux44~1_combout\ <= NOT \Mux44~1_combout\;
\ALT_INV_Mux44~0_combout\ <= NOT \Mux44~0_combout\;
\ALT_INV_sra64[6][51]~12_combout\ <= NOT \sra64[6][51]~12_combout\;
\ALT_INV_sra64[4][51]~11_combout\ <= NOT \sra64[4][51]~11_combout\;
\ALT_INV_Mux45~4_combout\ <= NOT \Mux45~4_combout\;
\ALT_INV_sll64[4][18]~43_combout\ <= NOT \sll64[4][18]~43_combout\;
\ALT_INV_sll64[2][18]~42_combout\ <= NOT \sll64[2][18]~42_combout\;
\ALT_INV_Mux45~3_combout\ <= NOT \Mux45~3_combout\;
\ALT_INV_Mux45~2_combout\ <= NOT \Mux45~2_combout\;
\ALT_INV_Mux45~1_combout\ <= NOT \Mux45~1_combout\;
\ALT_INV_Mux45~0_combout\ <= NOT \Mux45~0_combout\;
\ALT_INV_sra64[6][50]~10_combout\ <= NOT \sra64[6][50]~10_combout\;
\ALT_INV_Mux46~8_combout\ <= NOT \Mux46~8_combout\;
\ALT_INV_Mux46~7_combout\ <= NOT \Mux46~7_combout\;
\ALT_INV_Mux36~2_combout\ <= NOT \Mux36~2_combout\;
\ALT_INV_sll64[4][17]~41_combout\ <= NOT \sll64[4][17]~41_combout\;
\ALT_INV_sll64[2][17]~40_combout\ <= NOT \sll64[2][17]~40_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_sll64[4][1]~39_combout\ <= NOT \sll64[4][1]~39_combout\;
\ALT_INV_Mux46~6_combout\ <= NOT \Mux46~6_combout\;
\ALT_INV_Y_sra[31]~3_combout\ <= NOT \Y_sra[31]~3_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\ALT_INV_Mux46~5_combout\ <= NOT \Mux46~5_combout\;
\ALT_INV_Mux46~4_combout\ <= NOT \Mux46~4_combout\;
\ALT_INV_Mux46~3_combout\ <= NOT \Mux46~3_combout\;
\ALT_INV_Mux46~2_combout\ <= NOT \Mux46~2_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\ALT_INV_Mux46~1_combout\ <= NOT \Mux46~1_combout\;
\ALT_INV_Mux46~0_combout\ <= NOT \Mux46~0_combout\;
\ALT_INV_sra64[6][49]~9_combout\ <= NOT \sra64[6][49]~9_combout\;
\ALT_INV_Y_sra[16]~2_combout\ <= NOT \Y_sra[16]~2_combout\;
\ALT_INV_Y_srl[16]~0_combout\ <= NOT \Y_srl[16]~0_combout\;
\ALT_INV_srl64[5][16]~138_combout\ <= NOT \srl64[5][16]~138_combout\;
\ALT_INV_srl64[4][48]~137_combout\ <= NOT \srl64[4][48]~137_combout\;
\ALT_INV_sll64[6][16]~38_combout\ <= NOT \sll64[6][16]~38_combout\;
\ALT_INV_sll64[4][16]~37_combout\ <= NOT \sll64[4][16]~37_combout\;
\ALT_INV_sll64[2][16]~36_combout\ <= NOT \sll64[2][16]~36_combout\;
\ALT_INV_sll64[4][0]~35_combout\ <= NOT \sll64[4][0]~35_combout\;
\ALT_INV_shamt[5]~0_combout\ <= NOT \shamt[5]~0_combout\;
\ALT_INV_Mux48~4_combout\ <= NOT \Mux48~4_combout\;
\ALT_INV_Mux48~3_combout\ <= NOT \Mux48~3_combout\;
\ALT_INV_srl64[4][63]~136_combout\ <= NOT \srl64[4][63]~136_combout\;
\ALT_INV_Mux48~2_combout\ <= NOT \Mux48~2_combout\;
\ALT_INV_sll64[4][15]~34_combout\ <= NOT \sll64[4][15]~34_combout\;
\ALT_INV_sll64[2][15]~33_combout\ <= NOT \sll64[2][15]~33_combout\;
\ALT_INV_Mux48~1_combout\ <= NOT \Mux48~1_combout\;
\ALT_INV_Mux48~0_combout\ <= NOT \Mux48~0_combout\;
\ALT_INV_Mux49~4_combout\ <= NOT \Mux49~4_combout\;
\ALT_INV_Mux49~3_combout\ <= NOT \Mux49~3_combout\;
\ALT_INV_Mux49~2_combout\ <= NOT \Mux49~2_combout\;
\ALT_INV_sll64[4][14]~32_combout\ <= NOT \sll64[4][14]~32_combout\;
\ALT_INV_sll64[2][14]~31_combout\ <= NOT \sll64[2][14]~31_combout\;
\ALT_INV_Mux49~1_combout\ <= NOT \Mux49~1_combout\;
\ALT_INV_Mux49~0_combout\ <= NOT \Mux49~0_combout\;
\ALT_INV_Mux50~2_combout\ <= NOT \Mux50~2_combout\;
\ALT_INV_Mux50~1_combout\ <= NOT \Mux50~1_combout\;
\ALT_INV_sra64[4][61]~8_combout\ <= NOT \sra64[4][61]~8_combout\;
\ALT_INV_srl64[4][45]~135_combout\ <= NOT \srl64[4][45]~135_combout\;
\ALT_INV_sll64[4][13]~30_combout\ <= NOT \sll64[4][13]~30_combout\;
\ALT_INV_sll64[2][13]~29_combout\ <= NOT \sll64[2][13]~29_combout\;
\ALT_INV_Mux50~0_combout\ <= NOT \Mux50~0_combout\;
\ALT_INV_Mux51~4_combout\ <= NOT \Mux51~4_combout\;
\ALT_INV_Mux51~3_combout\ <= NOT \Mux51~3_combout\;
\ALT_INV_sra64[4][59]~7_combout\ <= NOT \sra64[4][59]~7_combout\;
\ALT_INV_Mux51~2_combout\ <= NOT \Mux51~2_combout\;
\ALT_INV_sll64[4][12]~28_combout\ <= NOT \sll64[4][12]~28_combout\;
\ALT_INV_sll64[2][12]~27_combout\ <= NOT \sll64[2][12]~27_combout\;
\ALT_INV_Mux51~1_combout\ <= NOT \Mux51~1_combout\;
\ALT_INV_Mux51~0_combout\ <= NOT \Mux51~0_combout\;
\ALT_INV_Mux52~2_combout\ <= NOT \Mux52~2_combout\;
\ALT_INV_Mux52~1_combout\ <= NOT \Mux52~1_combout\;
\ALT_INV_srl64[3][59]~134_combout\ <= NOT \srl64[3][59]~134_combout\;
\ALT_INV_srl64[3][59]~133_combout\ <= NOT \srl64[3][59]~133_combout\;
\ALT_INV_sra64[4][59]~6_combout\ <= NOT \sra64[4][59]~6_combout\;
\ALT_INV_srl64[4][43]~132_combout\ <= NOT \srl64[4][43]~132_combout\;
\ALT_INV_sll64[4][11]~26_combout\ <= NOT \sll64[4][11]~26_combout\;
\ALT_INV_sll64[2][11]~25_combout\ <= NOT \sll64[2][11]~25_combout\;
\ALT_INV_Mux52~0_combout\ <= NOT \Mux52~0_combout\;
\ALT_INV_Mux53~2_combout\ <= NOT \Mux53~2_combout\;
\ALT_INV_Mux53~1_combout\ <= NOT \Mux53~1_combout\;
\ALT_INV_Mux53~0_combout\ <= NOT \Mux53~0_combout\;
\ALT_INV_sra64[4][58]~5_combout\ <= NOT \sra64[4][58]~5_combout\;
\ALT_INV_sra64[3][58]~4_combout\ <= NOT \sra64[3][58]~4_combout\;
\ALT_INV_srl64[3][58]~131_combout\ <= NOT \srl64[3][58]~131_combout\;
\ALT_INV_srl64[4][42]~130_combout\ <= NOT \srl64[4][42]~130_combout\;
\ALT_INV_sll64[4][10]~24_combout\ <= NOT \sll64[4][10]~24_combout\;
\ALT_INV_sll64[2][10]~23_combout\ <= NOT \sll64[2][10]~23_combout\;
\ALT_INV_Mux54~2_combout\ <= NOT \Mux54~2_combout\;
\ALT_INV_Mux54~1_combout\ <= NOT \Mux54~1_combout\;
\ALT_INV_srl64[4][41]~129_combout\ <= NOT \srl64[4][41]~129_combout\;
\ALT_INV_sll64[4][9]~22_combout\ <= NOT \sll64[4][9]~22_combout\;
\ALT_INV_sll64[2][9]~21_combout\ <= NOT \sll64[2][9]~21_combout\;
\ALT_INV_Mux54~0_combout\ <= NOT \Mux54~0_combout\;
\ALT_INV_Mux55~2_combout\ <= NOT \Mux55~2_combout\;
\ALT_INV_Mux55~1_combout\ <= NOT \Mux55~1_combout\;
\ALT_INV_srl64[4][40]~128_combout\ <= NOT \srl64[4][40]~128_combout\;
\ALT_INV_sll64[4][8]~20_combout\ <= NOT \sll64[4][8]~20_combout\;
\ALT_INV_sll64[2][8]~19_combout\ <= NOT \sll64[2][8]~19_combout\;
\ALT_INV_Mux55~0_combout\ <= NOT \Mux55~0_combout\;
\ALT_INV_Mux56~3_combout\ <= NOT \Mux56~3_combout\;
\ALT_INV_Mux56~2_combout\ <= NOT \Mux56~2_combout\;
\ALT_INV_srl64[3][55]~127_combout\ <= NOT \srl64[3][55]~127_combout\;
\ALT_INV_srl64[4][39]~126_combout\ <= NOT \srl64[4][39]~126_combout\;
\ALT_INV_srl64[3][39]~125_combout\ <= NOT \srl64[3][39]~125_combout\;
\ALT_INV_srl64[3][47]~124_combout\ <= NOT \srl64[3][47]~124_combout\;
\ALT_INV_sll64[4][7]~18_combout\ <= NOT \sll64[4][7]~18_combout\;
\ALT_INV_sll64[2][7]~17_combout\ <= NOT \sll64[2][7]~17_combout\;
\ALT_INV_Mux56~1_combout\ <= NOT \Mux56~1_combout\;
\ALT_INV_srl64[3][31]~123_combout\ <= NOT \srl64[3][31]~123_combout\;
\ALT_INV_srl64[3][23]~122_combout\ <= NOT \srl64[3][23]~122_combout\;
\ALT_INV_srl64[3][15]~121_combout\ <= NOT \srl64[3][15]~121_combout\;
\ALT_INV_Mux56~0_combout\ <= NOT \Mux56~0_combout\;
\ALT_INV_Mux57~3_combout\ <= NOT \Mux57~3_combout\;
\ALT_INV_Mux57~2_combout\ <= NOT \Mux57~2_combout\;
\ALT_INV_srl64[3][54]~120_combout\ <= NOT \srl64[3][54]~120_combout\;
\ALT_INV_srl64[4][38]~119_combout\ <= NOT \srl64[4][38]~119_combout\;
\ALT_INV_srl64[3][38]~118_combout\ <= NOT \srl64[3][38]~118_combout\;
\ALT_INV_srl64[3][46]~117_combout\ <= NOT \srl64[3][46]~117_combout\;
\ALT_INV_sll64[4][6]~16_combout\ <= NOT \sll64[4][6]~16_combout\;
\ALT_INV_sll64[2][6]~15_combout\ <= NOT \sll64[2][6]~15_combout\;
\ALT_INV_Mux57~1_combout\ <= NOT \Mux57~1_combout\;
\ALT_INV_srl64[3][30]~116_combout\ <= NOT \srl64[3][30]~116_combout\;
\ALT_INV_srl64[3][22]~115_combout\ <= NOT \srl64[3][22]~115_combout\;
\ALT_INV_srl64[3][14]~114_combout\ <= NOT \srl64[3][14]~114_combout\;
\ALT_INV_Mux57~0_combout\ <= NOT \Mux57~0_combout\;
\ALT_INV_Mux58~3_combout\ <= NOT \Mux58~3_combout\;
\ALT_INV_Mux58~2_combout\ <= NOT \Mux58~2_combout\;
\ALT_INV_sra64[3][61]~3_combout\ <= NOT \sra64[3][61]~3_combout\;
\ALT_INV_Mux61~9_combout\ <= NOT \Mux61~9_combout\;
\ALT_INV_srl64[3][53]~113_combout\ <= NOT \srl64[3][53]~113_combout\;
\ALT_INV_srl64[2][61]~112_combout\ <= NOT \srl64[2][61]~112_combout\;
\ALT_INV_srl64[4][37]~111_combout\ <= NOT \srl64[4][37]~111_combout\;
\ALT_INV_srl64[3][37]~110_combout\ <= NOT \srl64[3][37]~110_combout\;
\ALT_INV_srl64[3][45]~109_combout\ <= NOT \srl64[3][45]~109_combout\;
\ALT_INV_sll64[4][5]~14_combout\ <= NOT \sll64[4][5]~14_combout\;
\ALT_INV_sll64[2][5]~13_combout\ <= NOT \sll64[2][5]~13_combout\;
\ALT_INV_sll64[2][1]~12_combout\ <= NOT \sll64[2][1]~12_combout\;
\ALT_INV_Mux58~1_combout\ <= NOT \Mux58~1_combout\;
\ALT_INV_srl64[3][29]~108_combout\ <= NOT \srl64[3][29]~108_combout\;
\ALT_INV_srl64[3][21]~107_combout\ <= NOT \srl64[3][21]~107_combout\;
\ALT_INV_srl64[3][13]~106_combout\ <= NOT \srl64[3][13]~106_combout\;
\ALT_INV_Mux58~0_combout\ <= NOT \Mux58~0_combout\;
\ALT_INV_Mux59~3_combout\ <= NOT \Mux59~3_combout\;
\ALT_INV_Mux59~2_combout\ <= NOT \Mux59~2_combout\;
\ALT_INV_srl64[2][60]~105_combout\ <= NOT \srl64[2][60]~105_combout\;
\ALT_INV_srl64[3][52]~104_combout\ <= NOT \srl64[3][52]~104_combout\;
\ALT_INV_srl64[4][36]~103_combout\ <= NOT \srl64[4][36]~103_combout\;
\ALT_INV_srl64[3][36]~102_combout\ <= NOT \srl64[3][36]~102_combout\;
\ALT_INV_srl64[3][44]~101_combout\ <= NOT \srl64[3][44]~101_combout\;
\ALT_INV_sll64[4][4]~11_combout\ <= NOT \sll64[4][4]~11_combout\;
\ALT_INV_sll64[2][4]~10_combout\ <= NOT \sll64[2][4]~10_combout\;
\ALT_INV_sll64[2][0]~9_combout\ <= NOT \sll64[2][0]~9_combout\;
\ALT_INV_Mux59~1_combout\ <= NOT \Mux59~1_combout\;
\ALT_INV_srl64[3][28]~100_combout\ <= NOT \srl64[3][28]~100_combout\;
\ALT_INV_srl64[3][20]~99_combout\ <= NOT \srl64[3][20]~99_combout\;
\ALT_INV_srl64[3][12]~98_combout\ <= NOT \srl64[3][12]~98_combout\;
\ALT_INV_Mux59~0_combout\ <= NOT \Mux59~0_combout\;
\ALT_INV_Mux60~5_combout\ <= NOT \Mux60~5_combout\;
\ALT_INV_Mux60~4_combout\ <= NOT \Mux60~4_combout\;
\ALT_INV_Mux60~3_combout\ <= NOT \Mux60~3_combout\;
\ALT_INV_Mux60~2_combout\ <= NOT \Mux60~2_combout\;
\ALT_INV_srl64[3][51]~97_combout\ <= NOT \srl64[3][51]~97_combout\;
\ALT_INV_srl64[4][35]~96_combout\ <= NOT \srl64[4][35]~96_combout\;
\ALT_INV_srl64[3][35]~95_combout\ <= NOT \srl64[3][35]~95_combout\;
\ALT_INV_srl64[3][43]~94_combout\ <= NOT \srl64[3][43]~94_combout\;
\ALT_INV_sll64[4][3]~8_combout\ <= NOT \sll64[4][3]~8_combout\;
\ALT_INV_sll64[2][3]~7_combout\ <= NOT \sll64[2][3]~7_combout\;
\ALT_INV_Mux60~1_combout\ <= NOT \Mux60~1_combout\;
\ALT_INV_srl64[3][27]~93_combout\ <= NOT \srl64[3][27]~93_combout\;
\ALT_INV_srl64[3][19]~92_combout\ <= NOT \srl64[3][19]~92_combout\;
\ALT_INV_srl64[3][11]~91_combout\ <= NOT \srl64[3][11]~91_combout\;
\ALT_INV_Mux60~0_combout\ <= NOT \Mux60~0_combout\;
\ALT_INV_Mux61~7_combout\ <= NOT \Mux61~7_combout\;
\ALT_INV_Mux61~6_combout\ <= NOT \Mux61~6_combout\;
\ALT_INV_Mux61~5_combout\ <= NOT \Mux61~5_combout\;
\ALT_INV_srl64[3][50]~90_combout\ <= NOT \srl64[3][50]~90_combout\;
\ALT_INV_srl64[4][34]~89_combout\ <= NOT \srl64[4][34]~89_combout\;
\ALT_INV_srl64[3][34]~88_combout\ <= NOT \srl64[3][34]~88_combout\;
\ALT_INV_srl64[3][42]~87_combout\ <= NOT \srl64[3][42]~87_combout\;
\ALT_INV_sll64[4][2]~6_combout\ <= NOT \sll64[4][2]~6_combout\;
\ALT_INV_sll64[2][2]~5_combout\ <= NOT \sll64[2][2]~5_combout\;
\ALT_INV_sll64[4][2]~4_combout\ <= NOT \sll64[4][2]~4_combout\;
\ALT_INV_Mux61~4_combout\ <= NOT \Mux61~4_combout\;
\ALT_INV_Mux61~3_combout\ <= NOT \Mux61~3_combout\;
\ALT_INV_Mux61~2_combout\ <= NOT \Mux61~2_combout\;
\ALT_INV_srl64[3][26]~86_combout\ <= NOT \srl64[3][26]~86_combout\;
\ALT_INV_srl64[3][18]~85_combout\ <= NOT \srl64[3][18]~85_combout\;
\ALT_INV_srl64[3][10]~84_combout\ <= NOT \srl64[3][10]~84_combout\;
\ALT_INV_Mux61~1_combout\ <= NOT \Mux61~1_combout\;
\ALT_INV_Mux61~0_combout\ <= NOT \Mux61~0_combout\;
\ALT_INV_Y_sra[1]~1_combout\ <= NOT \Y_sra[1]~1_combout\;
\ALT_INV_sra64[4][49]~2_combout\ <= NOT \sra64[4][49]~2_combout\;
\ALT_INV_sra64[3][57]~1_combout\ <= NOT \sra64[3][57]~1_combout\;
\ALT_INV_sra64[0][63]~0_combout\ <= NOT \sra64[0][63]~0_combout\;
\ALT_INV_srl64[4][33]~83_combout\ <= NOT \srl64[4][33]~83_combout\;
\ALT_INV_srl64[3][33]~82_combout\ <= NOT \srl64[3][33]~82_combout\;
\ALT_INV_srl64[1][39]~81_combout\ <= NOT \srl64[1][39]~81_combout\;
\ALT_INV_srl64[1][37]~80_combout\ <= NOT \srl64[1][37]~80_combout\;
\ALT_INV_srl64[1][35]~79_combout\ <= NOT \srl64[1][35]~79_combout\;
\ALT_INV_srl64[1][33]~78_combout\ <= NOT \srl64[1][33]~78_combout\;
\ALT_INV_srl64[3][41]~77_combout\ <= NOT \srl64[3][41]~77_combout\;
\ALT_INV_srl64[1][47]~76_combout\ <= NOT \srl64[1][47]~76_combout\;
\ALT_INV_srl64[1][45]~75_combout\ <= NOT \srl64[1][45]~75_combout\;
\ALT_INV_srl64[1][43]~74_combout\ <= NOT \srl64[1][43]~74_combout\;
\ALT_INV_srl64[1][41]~73_combout\ <= NOT \srl64[1][41]~73_combout\;
\ALT_INV_srl64[3][49]~72_combout\ <= NOT \srl64[3][49]~72_combout\;
\ALT_INV_srl64[1][55]~71_combout\ <= NOT \srl64[1][55]~71_combout\;
\ALT_INV_srl64[1][53]~70_combout\ <= NOT \srl64[1][53]~70_combout\;
\ALT_INV_srl64[1][51]~69_combout\ <= NOT \srl64[1][51]~69_combout\;
\ALT_INV_srl64[1][49]~68_combout\ <= NOT \srl64[1][49]~68_combout\;
\ALT_INV_srl64[3][57]~67_combout\ <= NOT \srl64[3][57]~67_combout\;
\ALT_INV_srl64[1][57]~66_combout\ <= NOT \srl64[1][57]~66_combout\;
\ALT_INV_srl64[1][59]~65_combout\ <= NOT \srl64[1][59]~65_combout\;
\ALT_INV_srl64[2][61]~64_combout\ <= NOT \srl64[2][61]~64_combout\;
\ALT_INV_srl64[1][61]~63_combout\ <= NOT \srl64[1][61]~63_combout\;
\ALT_INV_srl64[5][1]~62_combout\ <= NOT \srl64[5][1]~62_combout\;
\ALT_INV_srl64[3][25]~61_combout\ <= NOT \srl64[3][25]~61_combout\;
\ALT_INV_srl64[1][31]~60_combout\ <= NOT \srl64[1][31]~60_combout\;
\ALT_INV_srl64[1][29]~59_combout\ <= NOT \srl64[1][29]~59_combout\;
\ALT_INV_srl64[1][27]~58_combout\ <= NOT \srl64[1][27]~58_combout\;
\ALT_INV_srl64[1][25]~57_combout\ <= NOT \srl64[1][25]~57_combout\;
\ALT_INV_srl64[3][17]~56_combout\ <= NOT \srl64[3][17]~56_combout\;
\ALT_INV_srl64[1][23]~55_combout\ <= NOT \srl64[1][23]~55_combout\;
\ALT_INV_srl64[1][21]~54_combout\ <= NOT \srl64[1][21]~54_combout\;
\ALT_INV_srl64[1][19]~53_combout\ <= NOT \srl64[1][19]~53_combout\;
\ALT_INV_srl64[1][17]~52_combout\ <= NOT \srl64[1][17]~52_combout\;
\ALT_INV_srl64[3][9]~51_combout\ <= NOT \srl64[3][9]~51_combout\;
\ALT_INV_srl64[1][15]~50_combout\ <= NOT \srl64[1][15]~50_combout\;
\ALT_INV_srl64[1][13]~49_combout\ <= NOT \srl64[1][13]~49_combout\;
\ALT_INV_srl64[1][11]~48_combout\ <= NOT \srl64[1][11]~48_combout\;
\ALT_INV_srl64[1][9]~47_combout\ <= NOT \srl64[1][9]~47_combout\;
\ALT_INV_srl64[3][1]~46_combout\ <= NOT \srl64[3][1]~46_combout\;
\ALT_INV_srl64[1][7]~45_combout\ <= NOT \srl64[1][7]~45_combout\;
\ALT_INV_srl64[1][5]~44_combout\ <= NOT \srl64[1][5]~44_combout\;
\ALT_INV_srl64[1][3]~43_combout\ <= NOT \srl64[1][3]~43_combout\;
\ALT_INV_srl64[1][1]~42_combout\ <= NOT \srl64[1][1]~42_combout\;
\ALT_INV_sll64[6][1]~3_combout\ <= NOT \sll64[6][1]~3_combout\;
\ALT_INV_Mux63~0_combout\ <= NOT \Mux63~0_combout\;
\ALT_INV_sll64[6][1]~2_combout\ <= NOT \sll64[6][1]~2_combout\;
\ALT_INV_sll64[6][1]~1_combout\ <= NOT \sll64[6][1]~1_combout\;
\ALT_INV_sll64[4][0]~0_combout\ <= NOT \sll64[4][0]~0_combout\;
\ALT_INV_srl64[5][0]~41_combout\ <= NOT \srl64[5][0]~41_combout\;
\ALT_INV_srl64[3][24]~40_combout\ <= NOT \srl64[3][24]~40_combout\;
\ALT_INV_srl64[1][30]~39_combout\ <= NOT \srl64[1][30]~39_combout\;
\ALT_INV_srl64[1][28]~38_combout\ <= NOT \srl64[1][28]~38_combout\;
\ALT_INV_srl64[1][26]~37_combout\ <= NOT \srl64[1][26]~37_combout\;
\ALT_INV_srl64[1][24]~36_combout\ <= NOT \srl64[1][24]~36_combout\;
\ALT_INV_srl64[3][16]~35_combout\ <= NOT \srl64[3][16]~35_combout\;
\ALT_INV_srl64[1][22]~34_combout\ <= NOT \srl64[1][22]~34_combout\;
\ALT_INV_srl64[1][20]~33_combout\ <= NOT \srl64[1][20]~33_combout\;
\ALT_INV_srl64[1][18]~32_combout\ <= NOT \srl64[1][18]~32_combout\;
\ALT_INV_srl64[1][16]~31_combout\ <= NOT \srl64[1][16]~31_combout\;
\ALT_INV_srl64[3][8]~30_combout\ <= NOT \srl64[3][8]~30_combout\;
\ALT_INV_srl64[1][14]~29_combout\ <= NOT \srl64[1][14]~29_combout\;
\ALT_INV_srl64[1][12]~28_combout\ <= NOT \srl64[1][12]~28_combout\;
\ALT_INV_srl64[1][10]~27_combout\ <= NOT \srl64[1][10]~27_combout\;
\ALT_INV_srl64[1][8]~26_combout\ <= NOT \srl64[1][8]~26_combout\;
\ALT_INV_srl64[3][0]~25_combout\ <= NOT \srl64[3][0]~25_combout\;
\ALT_INV_srl64[1][6]~24_combout\ <= NOT \srl64[1][6]~24_combout\;
\ALT_INV_srl64[1][4]~23_combout\ <= NOT \srl64[1][4]~23_combout\;
\ALT_INV_srl64[1][2]~22_combout\ <= NOT \srl64[1][2]~22_combout\;
\ALT_INV_srl64[1][0]~21_combout\ <= NOT \srl64[1][0]~21_combout\;
\ALT_INV_Y_sra[31]~0_combout\ <= NOT \Y_sra[31]~0_combout\;
\ALT_INV_srl64[5][32]~20_combout\ <= NOT \srl64[5][32]~20_combout\;
\ALT_INV_srl64[3][32]~19_combout\ <= NOT \srl64[3][32]~19_combout\;
\ALT_INV_srl64[1][38]~18_combout\ <= NOT \srl64[1][38]~18_combout\;
\ALT_INV_srl64[1][36]~17_combout\ <= NOT \srl64[1][36]~17_combout\;
\ALT_INV_srl64[1][34]~16_combout\ <= NOT \srl64[1][34]~16_combout\;
\ALT_INV_srl64[1][32]~15_combout\ <= NOT \srl64[1][32]~15_combout\;
\ALT_INV_srl64[3][40]~14_combout\ <= NOT \srl64[3][40]~14_combout\;
\ALT_INV_srl64[1][46]~13_combout\ <= NOT \srl64[1][46]~13_combout\;
\ALT_INV_srl64[1][44]~12_combout\ <= NOT \srl64[1][44]~12_combout\;
\ALT_INV_srl64[1][42]~11_combout\ <= NOT \srl64[1][42]~11_combout\;
\ALT_INV_srl64[1][40]~10_combout\ <= NOT \srl64[1][40]~10_combout\;
\ALT_INV_srl64[3][48]~9_combout\ <= NOT \srl64[3][48]~9_combout\;
\ALT_INV_srl64[1][54]~8_combout\ <= NOT \srl64[1][54]~8_combout\;
\ALT_INV_srl64[1][52]~7_combout\ <= NOT \srl64[1][52]~7_combout\;
\ALT_INV_srl64[1][50]~6_combout\ <= NOT \srl64[1][50]~6_combout\;
\ALT_INV_srl64[1][48]~5_combout\ <= NOT \srl64[1][48]~5_combout\;
\ALT_INV_srl64[3][56]~4_combout\ <= NOT \srl64[3][56]~4_combout\;
\ALT_INV_srl64[1][62]~3_combout\ <= NOT \srl64[1][62]~3_combout\;
\ALT_INV_srl64[1][58]~2_combout\ <= NOT \srl64[1][58]~2_combout\;
\ALT_INV_srl64[1][60]~1_combout\ <= NOT \srl64[1][60]~1_combout\;
\ALT_INV_srl64[1][56]~0_combout\ <= NOT \srl64[1][56]~0_combout\;
\ALT_INV_Y_srl[1]~12_combout\ <= NOT \Y_srl[1]~12_combout\;
\ALT_INV_Mux61~10_combout\ <= NOT \Mux61~10_combout\;
\ALT_INV_Mux33~3_combout\ <= NOT \Mux33~3_combout\;
\ALT_INV_Y_srl[31]~8_combout\ <= NOT \Y_srl[31]~8_combout\;
\ALT_INV_Mux30~11_combout\ <= NOT \Mux30~11_combout\;
\ALT_INV_Mux7~3_combout\ <= NOT \Mux7~3_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_Mux3~4_combout\ <= NOT \Mux3~4_combout\;
\ALT_INV_Y_sll[63]~5_combout\ <= NOT \Y_sll[63]~5_combout\;

-- Location: IOOBUF_X51_Y56_N67
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X49_Y56_N2
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~0_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X46_Y56_N98
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~8_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X38_Y56_N98
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~6_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y22_N2
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~4_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X59_Y28_N98
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~4_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~4_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X48_Y56_N5
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~4_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X36_Y56_N98
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~3_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X35_Y56_N67
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~3_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~3_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X38_Y56_N36
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~3_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X59_Y51_N98
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~5_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X59_Y28_N67
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~3_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X59_Y18_N2
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~5_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X40_Y56_N33
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~5_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X35_Y56_N98
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X53_Y56_N67
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~9_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X59_Y19_N2
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~5_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X59_Y18_N98
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~5_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~5_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X59_Y48_N67
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~5_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X59_Y26_N5
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~5_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X59_Y22_N98
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~5_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~3_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~8_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~4_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~7_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~6_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X59_Y30_N36
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~5_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X59_Y15_N5
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~2_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X59_Y51_N67
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X35_Y56_N2
\Y[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X48_Y56_N33
\Y[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~9_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X59_Y19_N36
\Y[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~5_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\Y[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~4_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\Y[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X36_Y56_N36
\Y[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~4_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X36_Y56_N67
\Y[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X40_Y56_N5
\Y[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\Y[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~4_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X48_Y56_N67
\Y[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~4_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\Y[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~4_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\Y[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\Y[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~4_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X59_Y28_N36
\Y[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X59_Y26_N98
\Y[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X59_Y23_N98
\Y[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X40_Y56_N67
\Y[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X53_Y56_N98
\Y[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~3_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
\Y[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\Y[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X28_Y56_N36
\Y[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\Y[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X59_Y16_N36
\Y[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~3_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X59_Y21_N5
\Y[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~3_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X59_Y46_N2
\Y[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\Y[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\Y[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X59_Y21_N33
\Y[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\Y[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~3_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\Y[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X51_Y56_N36
\Y[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X35_Y56_N36
\Y[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

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

-- Location: IOIBUF_X59_Y36_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X59_Y25_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X45_Y37_N26
\srl64[1][18]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][18]~32_combout\ = ( \A[19]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[18]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \srl64[1][18]~32_combout\);

-- Location: IOIBUF_X28_Y56_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: MLABCELL_X42_Y36_N34
\srl64[1][16]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][16]~31_combout\ = ( \A[17]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[16]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[17]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000001010100010101000001000000010000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	combout => \srl64[1][16]~31_combout\);

-- Location: IOIBUF_X59_Y21_N94
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X59_Y33_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X45_Y37_N24
\srl64[1][20]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][20]~33_combout\ = ( \A[21]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[20]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \srl64[1][20]~33_combout\);

-- Location: IOIBUF_X59_Y34_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X59_Y18_N32
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: MLABCELL_X44_Y37_N30
\srl64[1][22]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][22]~34_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[23]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (\A[22]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][22]~34_combout\);

-- Location: LABCELL_X43_Y39_N32
\srl64[3][16]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][16]~35_combout\ = ( \B[2]~input_o\ & ( \srl64[1][22]~34_combout\ & ( (\srl64[1][20]~33_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][22]~34_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][16]~31_combout\))) # (\B[1]~input_o\ & 
-- (\srl64[1][18]~32_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][22]~34_combout\ & ( (!\B[1]~input_o\ & \srl64[1][20]~33_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][22]~34_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][16]~31_combout\))) # 
-- (\B[1]~input_o\ & (\srl64[1][18]~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][18]~32_combout\,
	datac => \ALT_INV_srl64[1][16]~31_combout\,
	datad => \ALT_INV_srl64[1][20]~33_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][22]~34_combout\,
	combout => \srl64[3][16]~35_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y33_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X59_Y30_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X42_Y36_N30
\srl64[1][14]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][14]~29_combout\ = ( \A[14]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[15]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (\A[15]~input_o\ & (\B[0]~input_o\ & !\ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100110000000000000011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	combout => \srl64[1][14]~29_combout\);

-- Location: IOIBUF_X59_Y48_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X44_Y56_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X42_Y40_N8
\srl64[1][8]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][8]~26_combout\ = ( \A[9]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[8]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \srl64[1][8]~26_combout\);

-- Location: IOIBUF_X46_Y56_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X44_Y39_N8
\srl64[1][12]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][12]~28_combout\ = ( \A[13]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[12]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \srl64[1][12]~28_combout\);

-- Location: IOIBUF_X44_Y56_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X44_Y39_N10
\srl64[1][10]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][10]~27_combout\ = ( \A[11]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[10]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \srl64[1][10]~27_combout\);

-- Location: LABCELL_X43_Y39_N10
\srl64[3][8]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][8]~30_combout\ = ( \srl64[1][12]~28_combout\ & ( \srl64[1][10]~27_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\) # (\srl64[1][8]~26_combout\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][14]~29_combout\))) ) ) ) # ( 
-- !\srl64[1][12]~28_combout\ & ( \srl64[1][10]~27_combout\ & ( (!\B[1]~input_o\ & (((\srl64[1][8]~26_combout\ & !\B[2]~input_o\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][14]~29_combout\))) ) ) ) # ( \srl64[1][12]~28_combout\ & ( 
-- !\srl64[1][10]~27_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\) # (\srl64[1][8]~26_combout\)))) # (\B[1]~input_o\ & (\srl64[1][14]~29_combout\ & ((\B[2]~input_o\)))) ) ) ) # ( !\srl64[1][12]~28_combout\ & ( !\srl64[1][10]~27_combout\ & ( 
-- (!\B[1]~input_o\ & (((\srl64[1][8]~26_combout\ & !\B[2]~input_o\)))) # (\B[1]~input_o\ & (\srl64[1][14]~29_combout\ & ((\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][14]~29_combout\,
	datac => \ALT_INV_srl64[1][8]~26_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[1][12]~28_combout\,
	dataf => \ALT_INV_srl64[1][10]~27_combout\,
	combout => \srl64[3][8]~30_combout\);

-- Location: IOIBUF_X44_Y56_N63
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X59_Y51_N32
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: MLABCELL_X44_Y37_N32
\srl64[1][24]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][24]~36_combout\ = ( \A[25]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[24]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (\A[24]~input_o\ & !\ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \srl64[1][24]~36_combout\);

-- Location: IOIBUF_X59_Y37_N32
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X59_Y19_N63
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X40_Y37_N30
\srl64[1][26]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][26]~37_combout\ = ( \A[27]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[26]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[27]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[26]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \srl64[1][26]~37_combout\);

-- Location: IOIBUF_X59_Y37_N1
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y49_N94
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X40_Y37_N28
\srl64[1][28]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][28]~38_combout\ = ( \A[28]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[29]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (!\ExtWord~input_o\ & (\B[0]~input_o\ & \A[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \srl64[1][28]~38_combout\);

-- Location: IOIBUF_X59_Y31_N94
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y36_N94
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: MLABCELL_X42_Y37_N24
\srl64[1][30]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][30]~39_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[30]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \srl64[1][30]~39_combout\);

-- Location: MLABCELL_X39_Y37_N10
\srl64[3][24]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][24]~40_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][30]~39_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][26]~37_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][28]~38_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][24]~36_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][24]~36_combout\,
	datab => \ALT_INV_srl64[1][26]~37_combout\,
	datac => \ALT_INV_srl64[1][28]~38_combout\,
	datad => \ALT_INV_srl64[1][30]~39_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][24]~40_combout\);

-- Location: IOIBUF_X59_Y49_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y46_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X43_Y37_N8
\srl64[1][2]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][2]~22_combout\ = ( \A[2]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[3]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \srl64[1][2]~22_combout\);

-- Location: IOIBUF_X59_Y33_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X42_Y40_N10
\srl64[1][6]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][6]~24_combout\ = ( \A[7]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[6]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[7]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \srl64[1][6]~24_combout\);

-- Location: IOIBUF_X59_Y39_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X43_Y39_N0
\srl64[1][4]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][4]~23_combout\ = ( \A[4]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[5]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \srl64[1][4]~23_combout\);

-- Location: IOIBUF_X59_Y36_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X44_Y56_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X43_Y39_N2
\srl64[1][0]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][0]~21_combout\ = ( \A[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \srl64[1][0]~21_combout\);

-- Location: LABCELL_X43_Y39_N6
\srl64[3][0]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][0]~25_combout\ = ( \srl64[1][4]~23_combout\ & ( \srl64[1][0]~21_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\srl64[1][2]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[1][6]~24_combout\)))) ) ) ) # ( !\srl64[1][4]~23_combout\ & ( 
-- \srl64[1][0]~21_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][2]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[1][6]~24_combout\))))) ) ) ) # ( \srl64[1][4]~23_combout\ & ( !\srl64[1][0]~21_combout\ 
-- & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][2]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[1][6]~24_combout\))))) ) ) ) # ( !\srl64[1][4]~23_combout\ & ( !\srl64[1][0]~21_combout\ & ( (\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & (\srl64[1][2]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[1][6]~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][2]~22_combout\,
	datac => \ALT_INV_srl64[1][6]~24_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[1][4]~23_combout\,
	dataf => \ALT_INV_srl64[1][0]~21_combout\,
	combout => \srl64[3][0]~25_combout\);

-- Location: MLABCELL_X42_Y39_N0
\srl64[5][0]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][0]~41_combout\ = ( \srl64[3][24]~40_combout\ & ( \srl64[3][0]~25_combout\ & ( (!\B[3]~input_o\ & (((!\B[4]~input_o\)) # (\srl64[3][16]~35_combout\))) # (\B[3]~input_o\ & (((\srl64[3][8]~30_combout\) # (\B[4]~input_o\)))) ) ) ) # ( 
-- !\srl64[3][24]~40_combout\ & ( \srl64[3][0]~25_combout\ & ( (!\B[3]~input_o\ & (((!\B[4]~input_o\)) # (\srl64[3][16]~35_combout\))) # (\B[3]~input_o\ & (((!\B[4]~input_o\ & \srl64[3][8]~30_combout\)))) ) ) ) # ( \srl64[3][24]~40_combout\ & ( 
-- !\srl64[3][0]~25_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][16]~35_combout\ & (\B[4]~input_o\))) # (\B[3]~input_o\ & (((\srl64[3][8]~30_combout\) # (\B[4]~input_o\)))) ) ) ) # ( !\srl64[3][24]~40_combout\ & ( !\srl64[3][0]~25_combout\ & ( (!\B[3]~input_o\ 
-- & (\srl64[3][16]~35_combout\ & (\B[4]~input_o\))) # (\B[3]~input_o\ & (((!\B[4]~input_o\ & \srl64[3][8]~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][16]~35_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_srl64[3][8]~30_combout\,
	datae => \ALT_INV_srl64[3][24]~40_combout\,
	dataf => \ALT_INV_srl64[3][0]~25_combout\,
	combout => \srl64[5][0]~41_combout\);

-- Location: IOIBUF_X31_Y56_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X35_Y39_N26
\Y_sra[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[31]~0_combout\ = (!\ExtWord~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \Y_sra[31]~0_combout\);

-- Location: IOIBUF_X59_Y34_N63
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X35_Y39_N28
\sll64[6][1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][1]~1_combout\ = ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & \ExtWord~input_o\) ) ) # ( !\B[5]~input_o\ & ( !\B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \sll64[6][1]~1_combout\);

-- Location: MLABCELL_X42_Y38_N24
\sll64[4][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][0]~0_combout\ = ( !\B[1]~input_o\ & ( (!\B[3]~input_o\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \sll64[4][0]~0_combout\);

-- Location: MLABCELL_X42_Y38_N10
\sll64[6][1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][1]~2_combout\ = ( \sll64[4][0]~0_combout\ & ( \sll64[6][1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	dataf => \ALT_INV_sll64[4][0]~0_combout\,
	combout => \sll64[6][1]~2_combout\);

-- Location: MLABCELL_X42_Y38_N34
\Mux63~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = ( \sll64[6][1]~2_combout\ & ( (!\ShiftFN[1]~input_o\ & (\A[0]~input_o\ & ((!\B[0]~input_o\) # (!\ShiftFN[0]~input_o\)))) ) ) # ( !\sll64[6][1]~2_combout\ & ( (!\ShiftFN[1]~input_o\ & (\A[0]~input_o\ & !\ShiftFN[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000010000000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_sll64[6][1]~2_combout\,
	combout => \Mux63~0_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: MLABCELL_X42_Y40_N0
\srl64[1][40]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][40]~10_combout\ = ( \A[8]~input_o\ & ( \A[41]~input_o\ & ( (!\ExtWord~input_o\ & (((\B[0]~input_o\)) # (\A[40]~input_o\))) # (\ExtWord~input_o\ & (((!\B[0]~input_o\) # (\A[9]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( \A[41]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (((\B[0]~input_o\)) # (\A[40]~input_o\))) # (\ExtWord~input_o\ & (((\B[0]~input_o\ & \A[9]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\A[41]~input_o\ & ( (!\ExtWord~input_o\ & (\A[40]~input_o\ & (!\B[0]~input_o\))) # 
-- (\ExtWord~input_o\ & (((!\B[0]~input_o\) # (\A[9]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[41]~input_o\ & ( (!\ExtWord~input_o\ & (\A[40]~input_o\ & (!\B[0]~input_o\))) # (\ExtWord~input_o\ & (((\B[0]~input_o\ & \A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \srl64[1][40]~10_combout\);

-- Location: IOIBUF_X59_Y23_N63
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: MLABCELL_X44_Y39_N4
\srl64[1][44]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][44]~12_combout\ = ( \A[45]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[13]~input_o\) ) ) ) # ( !\A[45]~input_o\ & ( \B[0]~input_o\ & ( (\A[13]~input_o\ & \ExtWord~input_o\) ) ) ) # ( \A[45]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (\A[44]~input_o\)) # (\ExtWord~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[45]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[44]~input_o\)) # (\ExtWord~input_o\ & ((\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][44]~12_combout\);

-- Location: IOIBUF_X49_Y56_N94
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: MLABCELL_X44_Y39_N2
\srl64[1][42]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][42]~11_combout\ = ( \A[11]~input_o\ & ( \B[0]~input_o\ & ( (\ExtWord~input_o\) # (\A[43]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( \B[0]~input_o\ & ( (\A[43]~input_o\ & !\ExtWord~input_o\) ) ) ) # ( \A[11]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (\A[42]~input_o\)) # (\ExtWord~input_o\ & ((\A[10]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[42]~input_o\)) # (\ExtWord~input_o\ & ((\A[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][42]~11_combout\);

-- Location: IOIBUF_X59_Y28_N1
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X59_Y31_N63
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: MLABCELL_X44_Y35_N0
\srl64[1][46]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][46]~13_combout\ = ( \ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[15]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[47]~input_o\ ) ) ) # ( \ExtWord~input_o\ & ( !\B[0]~input_o\ & ( \A[14]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[46]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][46]~13_combout\);

-- Location: MLABCELL_X39_Y37_N0
\srl64[3][40]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][40]~14_combout\ = ( \srl64[1][46]~13_combout\ & ( \B[1]~input_o\ & ( (\srl64[1][42]~11_combout\) # (\B[2]~input_o\) ) ) ) # ( !\srl64[1][46]~13_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & \srl64[1][42]~11_combout\) ) ) ) # ( 
-- \srl64[1][46]~13_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\srl64[1][40]~10_combout\)) # (\B[2]~input_o\ & ((\srl64[1][44]~12_combout\))) ) ) ) # ( !\srl64[1][46]~13_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\srl64[1][40]~10_combout\)) # (\B[2]~input_o\ & ((\srl64[1][44]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][40]~10_combout\,
	datac => \ALT_INV_srl64[1][44]~12_combout\,
	datad => \ALT_INV_srl64[1][42]~11_combout\,
	datae => \ALT_INV_srl64[1][46]~13_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][40]~14_combout\);

-- Location: IOIBUF_X59_Y37_N94
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X59_Y25_N94
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LABCELL_X43_Y37_N2
\srl64[1][34]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][34]~16_combout\ = ( \A[34]~input_o\ & ( \A[35]~input_o\ & ( (!\ExtWord~input_o\) # ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\)))) ) ) ) # ( !\A[34]~input_o\ & ( \A[35]~input_o\ & ( (!\ExtWord~input_o\ & 
-- (((\B[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))))) ) ) ) # ( \A[34]~input_o\ & ( !\A[35]~input_o\ & ( (!\ExtWord~input_o\ & (((!\B[0]~input_o\)))) # (\ExtWord~input_o\ & 
-- ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))))) ) ) ) # ( !\A[34]~input_o\ & ( !\A[35]~input_o\ & ( (\ExtWord~input_o\ & ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \srl64[1][34]~16_combout\);

-- Location: IOIBUF_X42_Y56_N63
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X46_Y56_N32
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: MLABCELL_X42_Y38_N20
\srl64[1][32]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][32]~15_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[33]~input_o\))) # (\ExtWord~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( (\A[32]~input_o\) # (\ExtWord~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[33]~input_o\))) # (\ExtWord~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[32]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[33]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \srl64[1][32]~15_combout\);

-- Location: IOIBUF_X49_Y56_N63
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X59_Y22_N63
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LABCELL_X43_Y37_N4
\srl64[1][36]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][36]~17_combout\ = ( \A[36]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & (((!\ExtWord~input_o\) # (\A[4]~input_o\)))) # (\B[0]~input_o\ & (((\ExtWord~input_o\)) # (\A[37]~input_o\))) ) ) ) # ( !\A[36]~input_o\ & ( \A[5]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\ExtWord~input_o\ & \A[4]~input_o\)))) # (\B[0]~input_o\ & (((\ExtWord~input_o\)) # (\A[37]~input_o\))) ) ) ) # ( \A[36]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (((!\ExtWord~input_o\) # (\A[4]~input_o\)))) # 
-- (\B[0]~input_o\ & (\A[37]~input_o\ & (!\ExtWord~input_o\))) ) ) ) # ( !\A[36]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (((\ExtWord~input_o\ & \A[4]~input_o\)))) # (\B[0]~input_o\ & (\A[37]~input_o\ & (!\ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \srl64[1][36]~17_combout\);

-- Location: IOIBUF_X59_Y49_N1
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X59_Y51_N1
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: MLABCELL_X42_Y40_N26
\srl64[1][38]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][38]~18_combout\ = ( \A[6]~input_o\ & ( \A[39]~input_o\ & ( (!\B[0]~input_o\ & (((\ExtWord~input_o\) # (\A[38]~input_o\)))) # (\B[0]~input_o\ & (((!\ExtWord~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( !\A[6]~input_o\ & ( \A[39]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\A[38]~input_o\ & !\ExtWord~input_o\)))) # (\B[0]~input_o\ & (((!\ExtWord~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( \A[6]~input_o\ & ( !\A[39]~input_o\ & ( (!\B[0]~input_o\ & (((\ExtWord~input_o\) # (\A[38]~input_o\)))) # 
-- (\B[0]~input_o\ & (\A[7]~input_o\ & ((\ExtWord~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\A[39]~input_o\ & ( (!\B[0]~input_o\ & (((\A[38]~input_o\ & !\ExtWord~input_o\)))) # (\B[0]~input_o\ & (\A[7]~input_o\ & ((\ExtWord~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \srl64[1][38]~18_combout\);

-- Location: MLABCELL_X39_Y37_N6
\srl64[3][32]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][32]~19_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][38]~18_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][34]~16_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][36]~17_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][32]~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][34]~16_combout\,
	datab => \ALT_INV_srl64[1][32]~15_combout\,
	datac => \ALT_INV_srl64[1][36]~17_combout\,
	datad => \ALT_INV_srl64[1][38]~18_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][32]~19_combout\);

-- Location: IOIBUF_X59_Y37_N63
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: MLABCELL_X44_Y37_N22
\srl64[1][56]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][56]~0_combout\ = ( \ExtWord~input_o\ & ( \A[25]~input_o\ & ( (\A[24]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\ExtWord~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & ((\A[56]~input_o\))) # (\B[0]~input_o\ & (\A[57]~input_o\)) ) ) ) # ( 
-- \ExtWord~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & \A[24]~input_o\) ) ) ) # ( !\ExtWord~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((\A[56]~input_o\))) # (\B[0]~input_o\ & (\A[57]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \srl64[1][56]~0_combout\);

-- Location: IOIBUF_X59_Y39_N94
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: MLABCELL_X42_Y37_N0
\srl64[1][62]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][62]~3_combout\ = ( \A[30]~input_o\ & ( \A[31]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[62]~input_o\))) # (\B[0]~input_o\ & (\A[63]~input_o\))) # (\ExtWord~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & 
-- ((!\B[0]~input_o\ & ((\A[62]~input_o\))) # (\B[0]~input_o\ & (\A[63]~input_o\)))) # (\ExtWord~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[30]~input_o\ & ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[62]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[63]~input_o\)))) # (\ExtWord~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[30]~input_o\ & ( !\A[31]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[62]~input_o\))) # (\B[0]~input_o\ & (\A[63]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \srl64[1][62]~3_combout\);

-- Location: IOIBUF_X59_Y25_N32
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X40_Y37_N2
\srl64[1][60]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][60]~1_combout\ = ( \B[0]~input_o\ & ( \A[60]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[61]~input_o\))) # (\ExtWord~input_o\ & (\A[29]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[60]~input_o\ & ( (!\ExtWord~input_o\) # (\A[28]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[60]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[61]~input_o\))) # (\ExtWord~input_o\ & (\A[29]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[60]~input_o\ & ( (\ExtWord~input_o\ & \A[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \srl64[1][60]~1_combout\);

-- Location: IOIBUF_X33_Y56_N1
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X31_Y56_N94
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LABCELL_X40_Y37_N4
\srl64[1][58]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][58]~2_combout\ = ( \A[58]~input_o\ & ( \A[59]~input_o\ & ( (!\ExtWord~input_o\) # ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\))) ) ) ) # ( !\A[58]~input_o\ & ( \A[59]~input_o\ & ( (!\ExtWord~input_o\ & 
-- (\B[0]~input_o\)) # (\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\)))) ) ) ) # ( \A[58]~input_o\ & ( !\A[59]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\)) # (\ExtWord~input_o\ & ((!\B[0]~input_o\ 
-- & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\)))) ) ) ) # ( !\A[58]~input_o\ & ( !\A[59]~input_o\ & ( (\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \srl64[1][58]~2_combout\);

-- Location: LABCELL_X35_Y37_N2
\srl64[3][56]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][56]~4_combout\ = ( \srl64[1][60]~1_combout\ & ( \srl64[1][58]~2_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][56]~0_combout\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # (\srl64[1][62]~3_combout\)))) ) ) ) # ( 
-- !\srl64[1][60]~1_combout\ & ( \srl64[1][58]~2_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][56]~0_combout\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & \srl64[1][62]~3_combout\)))) ) ) ) # ( \srl64[1][60]~1_combout\ & ( 
-- !\srl64[1][58]~2_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][56]~0_combout\ & (!\B[1]~input_o\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # (\srl64[1][62]~3_combout\)))) ) ) ) # ( !\srl64[1][60]~1_combout\ & ( !\srl64[1][58]~2_combout\ & ( (!\B[2]~input_o\ 
-- & (\srl64[1][56]~0_combout\ & (!\B[1]~input_o\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & \srl64[1][62]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][56]~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][62]~3_combout\,
	datae => \ALT_INV_srl64[1][60]~1_combout\,
	dataf => \ALT_INV_srl64[1][58]~2_combout\,
	combout => \srl64[3][56]~4_combout\);

-- Location: IOIBUF_X51_Y56_N94
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X59_Y31_N1
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: MLABCELL_X44_Y37_N24
\srl64[1][54]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][54]~8_combout\ = ( \A[54]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[55]~input_o\))) # (\ExtWord~input_o\ & (\A[23]~input_o\)) ) ) ) # ( !\A[54]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[55]~input_o\))) # 
-- (\ExtWord~input_o\ & (\A[23]~input_o\)) ) ) ) # ( \A[54]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[22]~input_o\) ) ) ) # ( !\A[54]~input_o\ & ( !\B[0]~input_o\ & ( (\A[22]~input_o\ & \ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][54]~8_combout\);

-- Location: IOIBUF_X59_Y21_N63
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X59_Y25_N1
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: MLABCELL_X42_Y36_N6
\srl64[1][50]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][50]~6_combout\ = ( \B[0]~input_o\ & ( \A[19]~input_o\ & ( (\A[51]~input_o\) # (\ExtWord~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\ExtWord~input_o\ & (\A[50]~input_o\)) # (\ExtWord~input_o\ & ((\A[18]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\ExtWord~input_o\ & \A[51]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\ExtWord~input_o\ & (\A[50]~input_o\)) # (\ExtWord~input_o\ & ((\A[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \srl64[1][50]~6_combout\);

-- Location: IOIBUF_X59_Y22_N32
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X45_Y37_N0
\srl64[1][52]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][52]~7_combout\ = ( \A[52]~input_o\ & ( \ExtWord~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ & (\A[21]~input_o\)) ) ) ) # ( !\A[52]~input_o\ & ( \ExtWord~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[21]~input_o\)) ) ) ) # ( \A[52]~input_o\ & ( !\ExtWord~input_o\ & ( (!\B[0]~input_o\) # (\A[53]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( !\ExtWord~input_o\ & ( (\B[0]~input_o\ & \A[53]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \srl64[1][52]~7_combout\);

-- Location: IOIBUF_X59_Y26_N63
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X59_Y48_N32
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: MLABCELL_X42_Y36_N22
\srl64[1][48]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][48]~5_combout\ = ( \A[17]~input_o\ & ( \A[49]~input_o\ & ( ((!\ExtWord~input_o\ & ((\A[48]~input_o\))) # (\ExtWord~input_o\ & (\A[16]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[17]~input_o\ & ( \A[49]~input_o\ & ( (!\ExtWord~input_o\ & 
-- (((\A[48]~input_o\) # (\B[0]~input_o\)))) # (\ExtWord~input_o\ & (\A[16]~input_o\ & (!\B[0]~input_o\))) ) ) ) # ( \A[17]~input_o\ & ( !\A[49]~input_o\ & ( (!\ExtWord~input_o\ & (((!\B[0]~input_o\ & \A[48]~input_o\)))) # (\ExtWord~input_o\ & 
-- (((\B[0]~input_o\)) # (\A[16]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[49]~input_o\ & ( (!\B[0]~input_o\ & ((!\ExtWord~input_o\ & ((\A[48]~input_o\))) # (\ExtWord~input_o\ & (\A[16]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \srl64[1][48]~5_combout\);

-- Location: LABCELL_X35_Y37_N26
\srl64[3][48]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][48]~9_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][54]~8_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][50]~6_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][52]~7_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][48]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][54]~8_combout\,
	datab => \ALT_INV_srl64[1][50]~6_combout\,
	datac => \ALT_INV_srl64[1][52]~7_combout\,
	datad => \ALT_INV_srl64[1][48]~5_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][48]~9_combout\);

-- Location: LABCELL_X35_Y39_N20
\srl64[5][32]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][32]~20_combout\ = ( \B[4]~input_o\ & ( \srl64[3][48]~9_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][56]~4_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \srl64[3][48]~9_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][32]~19_combout\))) # (\B[3]~input_o\ & 
-- (\srl64[3][40]~14_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\srl64[3][48]~9_combout\ & ( (\B[3]~input_o\ & \srl64[3][56]~4_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\srl64[3][48]~9_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][32]~19_combout\))) # 
-- (\B[3]~input_o\ & (\srl64[3][40]~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][40]~14_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][32]~19_combout\,
	datad => \ALT_INV_srl64[3][56]~4_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[3][48]~9_combout\,
	combout => \srl64[5][32]~20_combout\);

-- Location: MLABCELL_X42_Y38_N8
\Mux63~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = ( \srl64[5][32]~20_combout\ & ( ((\ShiftFN[1]~input_o\ & ((!\Y_sra[31]~0_combout\) # (\srl64[5][0]~41_combout\)))) # (\Mux63~0_combout\) ) ) # ( !\srl64[5][32]~20_combout\ & ( ((\srl64[5][0]~41_combout\ & (\Y_sra[31]~0_combout\ & 
-- \ShiftFN[1]~input_o\))) # (\Mux63~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100001101111111110000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[5][0]~41_combout\,
	datab => \ALT_INV_Y_sra[31]~0_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux63~0_combout\,
	dataf => \ALT_INV_srl64[5][32]~20_combout\,
	combout => \Mux63~1_combout\);

-- Location: MLABCELL_X44_Y39_N16
\srl64[1][43]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][43]~74_combout\ = ( \A[43]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[44]~input_o\))) # (\ExtWord~input_o\ & (\A[12]~input_o\)) ) ) ) # ( !\A[43]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[44]~input_o\))) # 
-- (\ExtWord~input_o\ & (\A[12]~input_o\)) ) ) ) # ( \A[43]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[11]~input_o\) ) ) ) # ( !\A[43]~input_o\ & ( !\B[0]~input_o\ & ( (\ExtWord~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][43]~74_combout\);

-- Location: MLABCELL_X42_Y40_N34
\srl64[1][41]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][41]~73_combout\ = ( \ExtWord~input_o\ & ( \A[42]~input_o\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\))) ) ) ) # ( !\ExtWord~input_o\ & ( \A[42]~input_o\ & ( (\B[0]~input_o\) # (\A[41]~input_o\) ) ) ) # ( 
-- \ExtWord~input_o\ & ( !\A[42]~input_o\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\))) ) ) ) # ( !\ExtWord~input_o\ & ( !\A[42]~input_o\ & ( (\A[41]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => \srl64[1][41]~73_combout\);

-- Location: MLABCELL_X44_Y35_N30
\srl64[1][47]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][47]~76_combout\ = ( \A[16]~input_o\ & ( \B[0]~input_o\ & ( (\ExtWord~input_o\) # (\A[48]~input_o\) ) ) ) # ( !\A[16]~input_o\ & ( \B[0]~input_o\ & ( (\A[48]~input_o\ & !\ExtWord~input_o\) ) ) ) # ( \A[16]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & ((\A[47]~input_o\))) # (\ExtWord~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\A[16]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[47]~input_o\))) # (\ExtWord~input_o\ & (\A[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[48]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][47]~76_combout\);

-- Location: MLABCELL_X44_Y39_N22
\srl64[1][45]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][45]~75_combout\ = ( \ExtWord~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\ExtWord~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[45]~input_o\)) # (\B[0]~input_o\ & ((\A[46]~input_o\))) ) ) ) # ( 
-- \ExtWord~input_o\ & ( !\A[13]~input_o\ & ( (\B[0]~input_o\ & \A[14]~input_o\) ) ) ) # ( !\ExtWord~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[45]~input_o\)) # (\B[0]~input_o\ & ((\A[46]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \srl64[1][45]~75_combout\);

-- Location: LABCELL_X43_Y40_N6
\srl64[3][41]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][41]~77_combout\ = ( \srl64[1][45]~75_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & (\srl64[1][43]~74_combout\)) # (\B[2]~input_o\ & ((\srl64[1][47]~76_combout\))) ) ) ) # ( !\srl64[1][45]~75_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ 
-- & (\srl64[1][43]~74_combout\)) # (\B[2]~input_o\ & ((\srl64[1][47]~76_combout\))) ) ) ) # ( \srl64[1][45]~75_combout\ & ( !\B[1]~input_o\ & ( (\B[2]~input_o\) # (\srl64[1][41]~73_combout\) ) ) ) # ( !\srl64[1][45]~75_combout\ & ( !\B[1]~input_o\ & ( 
-- (\srl64[1][41]~73_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][43]~74_combout\,
	datab => \ALT_INV_srl64[1][41]~73_combout\,
	datac => \ALT_INV_srl64[1][47]~76_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[1][45]~75_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][41]~77_combout\);

-- Location: MLABCELL_X42_Y38_N36
\srl64[1][33]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][33]~78_combout\ = ( \A[33]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & (((!\ExtWord~input_o\)) # (\A[1]~input_o\))) # (\B[0]~input_o\ & (((\ExtWord~input_o\) # (\A[34]~input_o\)))) ) ) ) # ( !\A[33]~input_o\ & ( \A[2]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[1]~input_o\ & ((\ExtWord~input_o\)))) # (\B[0]~input_o\ & (((\ExtWord~input_o\) # (\A[34]~input_o\)))) ) ) ) # ( \A[33]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (((!\ExtWord~input_o\)) # (\A[1]~input_o\))) # 
-- (\B[0]~input_o\ & (((\A[34]~input_o\ & !\ExtWord~input_o\)))) ) ) ) # ( !\A[33]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\ & ((\ExtWord~input_o\)))) # (\B[0]~input_o\ & (((\A[34]~input_o\ & !\ExtWord~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[33]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \srl64[1][33]~78_combout\);

-- Location: LABCELL_X43_Y37_N34
\srl64[1][35]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][35]~79_combout\ = ( \A[3]~input_o\ & ( \A[35]~input_o\ & ( (!\B[0]~input_o\) # ((!\ExtWord~input_o\ & (\A[36]~input_o\)) # (\ExtWord~input_o\ & ((\A[4]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( \A[35]~input_o\ & ( (!\ExtWord~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[36]~input_o\))) # (\ExtWord~input_o\ & (((\A[4]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[3]~input_o\ & ( !\A[35]~input_o\ & ( (!\ExtWord~input_o\ & (\A[36]~input_o\ & ((\B[0]~input_o\)))) # (\ExtWord~input_o\ & 
-- (((!\B[0]~input_o\) # (\A[4]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( !\A[35]~input_o\ & ( (\B[0]~input_o\ & ((!\ExtWord~input_o\ & (\A[36]~input_o\)) # (\ExtWord~input_o\ & ((\A[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \srl64[1][35]~79_combout\);

-- Location: LABCELL_X43_Y37_N18
\srl64[1][37]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][37]~80_combout\ = ( \A[6]~input_o\ & ( \A[38]~input_o\ & ( ((!\ExtWord~input_o\ & (\A[37]~input_o\)) # (\ExtWord~input_o\ & ((\A[5]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \A[38]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\ExtWord~input_o\ & (\A[37]~input_o\)) # (\ExtWord~input_o\ & ((\A[5]~input_o\))))) # (\B[0]~input_o\ & (((!\ExtWord~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[38]~input_o\ & ( (!\B[0]~input_o\ & ((!\ExtWord~input_o\ & (\A[37]~input_o\)) # 
-- (\ExtWord~input_o\ & ((\A[5]~input_o\))))) # (\B[0]~input_o\ & (((\ExtWord~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\A[38]~input_o\ & ( (!\B[0]~input_o\ & ((!\ExtWord~input_o\ & (\A[37]~input_o\)) # (\ExtWord~input_o\ & ((\A[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \srl64[1][37]~80_combout\);

-- Location: MLABCELL_X42_Y40_N16
\srl64[1][39]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][39]~81_combout\ = ( \ExtWord~input_o\ & ( \A[39]~input_o\ & ( (!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( !\ExtWord~input_o\ & ( \A[39]~input_o\ & ( (!\B[0]~input_o\) # (\A[40]~input_o\) ) ) ) # ( 
-- \ExtWord~input_o\ & ( !\A[39]~input_o\ & ( (!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( !\ExtWord~input_o\ & ( !\A[39]~input_o\ & ( (\A[40]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \srl64[1][39]~81_combout\);

-- Location: MLABCELL_X44_Y40_N10
\srl64[3][33]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][33]~82_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][39]~81_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][35]~79_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][37]~80_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][33]~78_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][33]~78_combout\,
	datab => \ALT_INV_srl64[1][35]~79_combout\,
	datac => \ALT_INV_srl64[1][37]~80_combout\,
	datad => \ALT_INV_srl64[1][39]~81_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][33]~82_combout\);

-- Location: LABCELL_X43_Y38_N10
\srl64[4][33]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][33]~83_combout\ = ( \srl64[3][33]~82_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][41]~77_combout\) ) ) # ( !\srl64[3][33]~82_combout\ & ( (\B[3]~input_o\ & \srl64[3][41]~77_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][41]~77_combout\,
	dataf => \ALT_INV_srl64[3][33]~82_combout\,
	combout => \srl64[4][33]~83_combout\);

-- Location: LABCELL_X45_Y40_N4
\srl64[1][5]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][5]~44_combout\ = ( \A[5]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[6]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (!\ExtWord~input_o\ & (\B[0]~input_o\ & \A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \srl64[1][5]~44_combout\);

-- Location: LABCELL_X45_Y40_N6
\srl64[1][3]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][3]~43_combout\ = ( \A[3]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[4]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (!\ExtWord~input_o\ & (\B[0]~input_o\ & \A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \srl64[1][3]~43_combout\);

-- Location: LABCELL_X45_Y40_N8
\srl64[1][7]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][7]~45_combout\ = ( \A[7]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[8]~input_o\))) ) ) # ( !\A[7]~input_o\ & ( (!\ExtWord~input_o\ & (\B[0]~input_o\ & \A[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \srl64[1][7]~45_combout\);

-- Location: LABCELL_X45_Y40_N2
\srl64[1][1]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][1]~42_combout\ = ( \A[2]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[1]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \srl64[1][1]~42_combout\);

-- Location: LABCELL_X45_Y40_N14
\srl64[3][1]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][1]~46_combout\ = ( \srl64[1][7]~45_combout\ & ( \srl64[1][1]~42_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\srl64[1][3]~43_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][5]~44_combout\))) ) ) ) # ( 
-- !\srl64[1][7]~45_combout\ & ( \srl64[1][1]~42_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\srl64[1][3]~43_combout\)))) # (\B[2]~input_o\ & (\srl64[1][5]~44_combout\ & ((!\B[1]~input_o\)))) ) ) ) # ( \srl64[1][7]~45_combout\ & ( 
-- !\srl64[1][1]~42_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][3]~43_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][5]~44_combout\))) ) ) ) # ( !\srl64[1][7]~45_combout\ & ( !\srl64[1][1]~42_combout\ & ( (!\B[2]~input_o\ 
-- & (((\srl64[1][3]~43_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & (\srl64[1][5]~44_combout\ & ((!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][5]~44_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][3]~43_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][7]~45_combout\,
	dataf => \ALT_INV_srl64[1][1]~42_combout\,
	combout => \srl64[3][1]~46_combout\);

-- Location: MLABCELL_X42_Y37_N30
\srl64[1][29]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][29]~59_combout\ = (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	combout => \srl64[1][29]~59_combout\);

-- Location: LABCELL_X40_Y37_N12
\srl64[1][27]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][27]~58_combout\ = ( \A[28]~input_o\ & ( (!\ExtWord~input_o\ & ((\B[0]~input_o\) # (\A[27]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (!\ExtWord~input_o\ & (\A[27]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \srl64[1][27]~58_combout\);

-- Location: MLABCELL_X44_Y37_N18
\srl64[1][25]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][25]~57_combout\ = ( \A[25]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[26]~input_o\))) ) ) # ( !\A[25]~input_o\ & ( (\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[26]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \srl64[1][25]~57_combout\);

-- Location: MLABCELL_X42_Y37_N28
\srl64[1][31]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][31]~60_combout\ = ( \A[31]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # ((\A[32]~input_o\)))) # (\ExtWord~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\))) ) ) # ( !\A[31]~input_o\ & ( (\B[0]~input_o\ & ((!\ExtWord~input_o\ & 
-- ((\A[32]~input_o\))) # (\ExtWord~input_o\ & (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001110001001101010111000100110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \srl64[1][31]~60_combout\);

-- Location: MLABCELL_X44_Y40_N4
\srl64[3][25]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][25]~61_combout\ = ( \B[2]~input_o\ & ( \srl64[1][31]~60_combout\ & ( (\B[1]~input_o\) # (\srl64[1][29]~59_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][31]~60_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][25]~57_combout\))) # (\B[1]~input_o\ & 
-- (\srl64[1][27]~58_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][31]~60_combout\ & ( (\srl64[1][29]~59_combout\ & !\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][31]~60_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][25]~57_combout\))) # 
-- (\B[1]~input_o\ & (\srl64[1][27]~58_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][29]~59_combout\,
	datab => \ALT_INV_srl64[1][27]~58_combout\,
	datac => \ALT_INV_srl64[1][25]~57_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][31]~60_combout\,
	combout => \srl64[3][25]~61_combout\);

-- Location: LABCELL_X45_Y40_N10
\srl64[1][9]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][9]~47_combout\ = ( \A[9]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[10]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (!\ExtWord~input_o\ & (\B[0]~input_o\ & \A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \srl64[1][9]~47_combout\);

-- Location: MLABCELL_X44_Y39_N12
\srl64[1][13]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][13]~49_combout\ = ( \A[13]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[14]~input_o\))) ) ) # ( !\A[13]~input_o\ & ( (\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \srl64[1][13]~49_combout\);

-- Location: LABCELL_X45_Y40_N0
\srl64[1][11]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][11]~48_combout\ = ( \A[11]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[12]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (!\ExtWord~input_o\ & (\B[0]~input_o\ & \A[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \srl64[1][11]~48_combout\);

-- Location: MLABCELL_X44_Y35_N26
\srl64[1][15]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][15]~50_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[16]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][15]~50_combout\);

-- Location: LABCELL_X45_Y40_N38
\srl64[3][9]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][9]~51_combout\ = ( \srl64[1][11]~48_combout\ & ( \srl64[1][15]~50_combout\ & ( ((!\B[2]~input_o\ & (\srl64[1][9]~47_combout\)) # (\B[2]~input_o\ & ((\srl64[1][13]~49_combout\)))) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][11]~48_combout\ & ( 
-- \srl64[1][15]~50_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][9]~47_combout\)) # (\B[2]~input_o\ & ((\srl64[1][13]~49_combout\))))) # (\B[1]~input_o\ & (\B[2]~input_o\)) ) ) ) # ( \srl64[1][11]~48_combout\ & ( !\srl64[1][15]~50_combout\ 
-- & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][9]~47_combout\)) # (\B[2]~input_o\ & ((\srl64[1][13]~49_combout\))))) # (\B[1]~input_o\ & (!\B[2]~input_o\)) ) ) ) # ( !\srl64[1][11]~48_combout\ & ( !\srl64[1][15]~50_combout\ & ( (!\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & (\srl64[1][9]~47_combout\)) # (\B[2]~input_o\ & ((\srl64[1][13]~49_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][9]~47_combout\,
	datad => \ALT_INV_srl64[1][13]~49_combout\,
	datae => \ALT_INV_srl64[1][11]~48_combout\,
	dataf => \ALT_INV_srl64[1][15]~50_combout\,
	combout => \srl64[3][9]~51_combout\);

-- Location: LABCELL_X45_Y37_N10
\srl64[1][19]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][19]~53_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[20]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (\A[19]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][19]~53_combout\);

-- Location: MLABCELL_X44_Y37_N34
\srl64[1][23]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][23]~55_combout\ = ( \A[24]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[23]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[24]~input_o\ & ( (!\B[0]~input_o\ & (\A[23]~input_o\ & !\ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \srl64[1][23]~55_combout\);

-- Location: MLABCELL_X44_Y37_N28
\srl64[1][21]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][21]~54_combout\ = ( \B[0]~input_o\ & ( (\A[22]~input_o\ & !\ExtWord~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][21]~54_combout\);

-- Location: LABCELL_X45_Y37_N8
\srl64[1][17]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][17]~52_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[18]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][17]~52_combout\);

-- Location: MLABCELL_X44_Y40_N0
\srl64[3][17]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][17]~56_combout\ = ( \B[2]~input_o\ & ( \srl64[1][17]~52_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][21]~54_combout\))) # (\B[1]~input_o\ & (\srl64[1][23]~55_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][17]~52_combout\ & ( (!\B[1]~input_o\) 
-- # (\srl64[1][19]~53_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][17]~52_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][21]~54_combout\))) # (\B[1]~input_o\ & (\srl64[1][23]~55_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][17]~52_combout\ & ( 
-- (\srl64[1][19]~53_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][19]~53_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][23]~55_combout\,
	datad => \ALT_INV_srl64[1][21]~54_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][17]~52_combout\,
	combout => \srl64[3][17]~56_combout\);

-- Location: LABCELL_X43_Y38_N26
\srl64[5][1]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][1]~62_combout\ = ( \B[3]~input_o\ & ( \srl64[3][17]~56_combout\ & ( (!\B[4]~input_o\ & ((\srl64[3][9]~51_combout\))) # (\B[4]~input_o\ & (\srl64[3][25]~61_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \srl64[3][17]~56_combout\ & ( (\B[4]~input_o\) # 
-- (\srl64[3][1]~46_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\srl64[3][17]~56_combout\ & ( (!\B[4]~input_o\ & ((\srl64[3][9]~51_combout\))) # (\B[4]~input_o\ & (\srl64[3][25]~61_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\srl64[3][17]~56_combout\ & ( 
-- (\srl64[3][1]~46_combout\ & !\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][1]~46_combout\,
	datab => \ALT_INV_srl64[3][25]~61_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_srl64[3][9]~51_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][17]~56_combout\,
	combout => \srl64[5][1]~62_combout\);

-- Location: MLABCELL_X42_Y37_N12
\srl64[1][61]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][61]~63_combout\ = ( \A[29]~input_o\ & ( \A[62]~input_o\ & ( (!\ExtWord~input_o\ & (((\B[0]~input_o\) # (\A[61]~input_o\)))) # (\ExtWord~input_o\ & (((!\B[0]~input_o\)) # (\A[30]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( \A[62]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (((\B[0]~input_o\) # (\A[61]~input_o\)))) # (\ExtWord~input_o\ & (\A[30]~input_o\ & ((\B[0]~input_o\)))) ) ) ) # ( \A[29]~input_o\ & ( !\A[62]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[61]~input_o\ & !\B[0]~input_o\)))) # 
-- (\ExtWord~input_o\ & (((!\B[0]~input_o\)) # (\A[30]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\A[62]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[61]~input_o\ & !\B[0]~input_o\)))) # (\ExtWord~input_o\ & (\A[30]~input_o\ & ((\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \srl64[1][61]~63_combout\);

-- Location: MLABCELL_X42_Y37_N36
\srl64[2][61]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][61]~64_combout\ = ( \A[63]~input_o\ & ( (\B[1]~input_o\ & (!\B[0]~input_o\ & ((!\ExtWord~input_o\) # (\A[31]~input_o\)))) ) ) # ( !\A[63]~input_o\ & ( (\ExtWord~input_o\ & (\B[1]~input_o\ & (\A[31]~input_o\ & !\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000100011000000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \srl64[2][61]~64_combout\);

-- Location: LABCELL_X40_Y37_N18
\srl64[1][59]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][59]~65_combout\ = ( \B[0]~input_o\ & ( \A[60]~input_o\ & ( (!\ExtWord~input_o\) # (\A[28]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[60]~input_o\ & ( (!\ExtWord~input_o\ & (\A[59]~input_o\)) # (\ExtWord~input_o\ & ((\A[27]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[60]~input_o\ & ( (\ExtWord~input_o\ & \A[28]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[60]~input_o\ & ( (!\ExtWord~input_o\ & (\A[59]~input_o\)) # (\ExtWord~input_o\ & ((\A[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \srl64[1][59]~65_combout\);

-- Location: LABCELL_X40_Y37_N20
\srl64[1][57]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][57]~66_combout\ = ( \A[58]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & (((\ExtWord~input_o\)) # (\A[57]~input_o\))) # (\B[0]~input_o\ & (((!\ExtWord~input_o\) # (\A[26]~input_o\)))) ) ) ) # ( !\A[58]~input_o\ & ( \A[25]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\ExtWord~input_o\)) # (\A[57]~input_o\))) # (\B[0]~input_o\ & (((\ExtWord~input_o\ & \A[26]~input_o\)))) ) ) ) # ( \A[58]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (\A[57]~input_o\ & (!\ExtWord~input_o\))) # 
-- (\B[0]~input_o\ & (((!\ExtWord~input_o\) # (\A[26]~input_o\)))) ) ) ) # ( !\A[58]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (\A[57]~input_o\ & (!\ExtWord~input_o\))) # (\B[0]~input_o\ & (((\ExtWord~input_o\ & \A[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[57]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \srl64[1][57]~66_combout\);

-- Location: MLABCELL_X39_Y40_N2
\srl64[3][57]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][57]~67_combout\ = ( \B[1]~input_o\ & ( \srl64[1][57]~66_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][59]~65_combout\))) # (\B[2]~input_o\ & (\srl64[2][61]~64_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][57]~66_combout\ & ( 
-- ((!\B[2]~input_o\) # (\srl64[2][61]~64_combout\)) # (\srl64[1][61]~63_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][57]~66_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][59]~65_combout\))) # (\B[2]~input_o\ & (\srl64[2][61]~64_combout\)) ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\srl64[1][57]~66_combout\ & ( (\B[2]~input_o\ & ((\srl64[2][61]~64_combout\) # (\srl64[1][61]~63_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000000111111001111110111111101110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][61]~63_combout\,
	datab => \ALT_INV_srl64[2][61]~64_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][59]~65_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][57]~66_combout\,
	combout => \srl64[3][57]~67_combout\);

-- Location: MLABCELL_X44_Y37_N0
\srl64[1][55]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][55]~71_combout\ = ( \ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[24]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[56]~input_o\ ) ) ) # ( \ExtWord~input_o\ & ( !\B[0]~input_o\ & ( \A[23]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[55]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][55]~71_combout\);

-- Location: LABCELL_X45_Y37_N32
\srl64[1][51]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][51]~69_combout\ = ( \A[20]~input_o\ & ( \B[0]~input_o\ & ( (\ExtWord~input_o\) # (\A[52]~input_o\) ) ) ) # ( !\A[20]~input_o\ & ( \B[0]~input_o\ & ( (\A[52]~input_o\ & !\ExtWord~input_o\) ) ) ) # ( \A[20]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & ((\A[51]~input_o\))) # (\ExtWord~input_o\ & (\A[19]~input_o\)) ) ) ) # ( !\A[20]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[51]~input_o\))) # (\ExtWord~input_o\ & (\A[19]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][51]~69_combout\);

-- Location: MLABCELL_X42_Y36_N16
\srl64[1][49]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][49]~68_combout\ = ( \A[50]~input_o\ & ( \A[49]~input_o\ & ( (!\ExtWord~input_o\) # ((!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\))) ) ) ) # ( !\A[50]~input_o\ & ( \A[49]~input_o\ & ( (!\ExtWord~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)))) ) ) ) # ( \A[50]~input_o\ & ( !\A[49]~input_o\ & ( (!\ExtWord~input_o\ & (((\B[0]~input_o\)))) # (\ExtWord~input_o\ & 
-- ((!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)))) ) ) ) # ( !\A[50]~input_o\ & ( !\A[49]~input_o\ & ( (\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[50]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \srl64[1][49]~68_combout\);

-- Location: LABCELL_X47_Y36_N20
\srl64[1][53]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][53]~70_combout\ = ( \A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[54]~input_o\))) # (\ExtWord~input_o\ & (\A[22]~input_o\)) ) ) ) # ( !\A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[54]~input_o\))) # 
-- (\ExtWord~input_o\ & (\A[22]~input_o\)) ) ) ) # ( \A[21]~input_o\ & ( !\B[0]~input_o\ & ( (\ExtWord~input_o\) # (\A[53]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( !\B[0]~input_o\ & ( (\A[53]~input_o\ & !\ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][53]~70_combout\);

-- Location: LABCELL_X43_Y40_N0
\srl64[3][49]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][49]~72_combout\ = ( \B[2]~input_o\ & ( \srl64[1][53]~70_combout\ & ( (!\B[1]~input_o\) # (\srl64[1][55]~71_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][53]~70_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][49]~68_combout\))) # (\B[1]~input_o\ 
-- & (\srl64[1][51]~69_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][53]~70_combout\ & ( (\B[1]~input_o\ & \srl64[1][55]~71_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][53]~70_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][49]~68_combout\))) # 
-- (\B[1]~input_o\ & (\srl64[1][51]~69_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][55]~71_combout\,
	datac => \ALT_INV_srl64[1][51]~69_combout\,
	datad => \ALT_INV_srl64[1][49]~68_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][53]~70_combout\,
	combout => \srl64[3][49]~72_combout\);

-- Location: LABCELL_X43_Y38_N0
\Y_srl[1]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[1]~12_combout\ = ( !\B[3]~input_o\ & ( (!\Y_sra[31]~0_combout\ & (((!\B[4]~input_o\ & (\srl64[4][33]~83_combout\)) # (\B[4]~input_o\ & ((\srl64[3][49]~72_combout\)))))) # (\Y_sra[31]~0_combout\ & (((\srl64[5][1]~62_combout\)))) ) ) # ( 
-- \B[3]~input_o\ & ( (!\Y_sra[31]~0_combout\ & (((!\B[4]~input_o\ & (\srl64[4][33]~83_combout\)) # (\B[4]~input_o\ & ((\srl64[3][57]~67_combout\)))))) # (\Y_sra[31]~0_combout\ & (((\srl64[5][1]~62_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001111010101010000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[4][33]~83_combout\,
	datab => \ALT_INV_srl64[5][1]~62_combout\,
	datac => \ALT_INV_srl64[3][57]~67_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Y_sra[31]~0_combout\,
	datag => \ALT_INV_srl64[3][49]~72_combout\,
	combout => \Y_srl[1]~12_combout\);

-- Location: MLABCELL_X37_Y39_N26
\sra64[0][63]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[0][63]~0_combout\ = ( \A[63]~input_o\ & ( (!\ExtWord~input_o\) # (\A[31]~input_o\) ) ) # ( !\A[63]~input_o\ & ( (\ExtWord~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \sra64[0][63]~0_combout\);

-- Location: MLABCELL_X39_Y40_N6
\sra64[3][57]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][57]~1_combout\ = ( \B[1]~input_o\ & ( \srl64[1][57]~66_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][59]~65_combout\))) # (\B[2]~input_o\ & (\sra64[0][63]~0_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][57]~66_combout\ & ( (!\B[2]~input_o\) # 
-- (\srl64[1][61]~63_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][57]~66_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][59]~65_combout\))) # (\B[2]~input_o\ & (\sra64[0][63]~0_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][57]~66_combout\ & ( 
-- (\srl64[1][61]~63_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][61]~63_combout\,
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][59]~65_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][57]~66_combout\,
	combout => \sra64[3][57]~1_combout\);

-- Location: LABCELL_X43_Y38_N14
\sra64[4][49]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[4][49]~2_combout\ = ( \srl64[3][49]~72_combout\ & ( (!\B[3]~input_o\) # (\sra64[3][57]~1_combout\) ) ) # ( !\srl64[3][49]~72_combout\ & ( (\sra64[3][57]~1_combout\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sra64[3][57]~1_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][49]~72_combout\,
	combout => \sra64[4][49]~2_combout\);

-- Location: LABCELL_X43_Y38_N18
\Y_sra[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[1]~1_combout\ = ( \B[4]~input_o\ & ( (!\Y_sra[31]~0_combout\ & (\sra64[4][49]~2_combout\)) # (\Y_sra[31]~0_combout\ & ((\srl64[5][1]~62_combout\))) ) ) # ( !\B[4]~input_o\ & ( (!\Y_sra[31]~0_combout\ & (\srl64[4][33]~83_combout\)) # 
-- (\Y_sra[31]~0_combout\ & ((\srl64[5][1]~62_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[4][49]~2_combout\,
	datab => \ALT_INV_srl64[4][33]~83_combout\,
	datac => \ALT_INV_Y_sra[31]~0_combout\,
	datad => \ALT_INV_srl64[5][1]~62_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_sra[1]~1_combout\);

-- Location: MLABCELL_X42_Y38_N32
\sll64[6][1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][1]~3_combout\ = ( \sll64[6][1]~2_combout\ & ( (!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_sll64[6][1]~2_combout\,
	combout => \sll64[6][1]~3_combout\);

-- Location: MLABCELL_X42_Y38_N0
\Mux62~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Y_sra[1]~1_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Y_srl[1]~12_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( 
-- \sll64[6][1]~3_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \A[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_Y_srl[1]~12_combout\,
	datac => \ALT_INV_Y_sra[1]~1_combout\,
	datad => \ALT_INV_sll64[6][1]~3_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: MLABCELL_X42_Y38_N6
\Mux61~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\ShiftFN[1]~input_o\ & \Y_sra[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Y_sra[31]~0_combout\,
	combout => \Mux61~3_combout\);

-- Location: LABCELL_X35_Y37_N28
\srl64[3][50]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][50]~90_combout\ = ( \srl64[1][52]~7_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\) # (\srl64[1][56]~0_combout\) ) ) ) # ( !\srl64[1][52]~7_combout\ & ( \B[1]~input_o\ & ( (\B[2]~input_o\ & \srl64[1][56]~0_combout\) ) ) ) # ( 
-- \srl64[1][52]~7_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\srl64[1][50]~6_combout\)) # (\B[2]~input_o\ & ((\srl64[1][54]~8_combout\))) ) ) ) # ( !\srl64[1][52]~7_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\srl64[1][50]~6_combout\)) # 
-- (\B[2]~input_o\ & ((\srl64[1][54]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][50]~6_combout\,
	datac => \ALT_INV_srl64[1][54]~8_combout\,
	datad => \ALT_INV_srl64[1][56]~0_combout\,
	datae => \ALT_INV_srl64[1][52]~7_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][50]~90_combout\);

-- Location: LABCELL_X38_Y37_N32
\Mux61~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = ( \sra64[0][63]~0_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][62]~3_combout\))) # (\B[1]~input_o\ & (\ShiftFN[0]~input_o\)) ) ) # ( !\sra64[0][63]~0_combout\ & ( (!\B[1]~input_o\ & \srl64[1][62]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][62]~3_combout\,
	dataf => \ALT_INV_sra64[0][63]~0_combout\,
	combout => \Mux61~5_combout\);

-- Location: LABCELL_X38_Y37_N24
\Mux61~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~10_combout\ = ( !\B[1]~input_o\ & ( (!\B[3]~input_o\ & ((((\srl64[3][50]~90_combout\))))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][58]~2_combout\)) # (\B[2]~input_o\ & (((\Mux61~5_combout\)))))) ) ) # ( \B[1]~input_o\ & ( (!\B[3]~input_o\ 
-- & ((((\srl64[3][50]~90_combout\))))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][60]~1_combout\)) # (\B[2]~input_o\ & (((\Mux61~5_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][60]~1_combout\,
	datad => \ALT_INV_srl64[3][50]~90_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_Mux61~5_combout\,
	datag => \ALT_INV_srl64[1][58]~2_combout\,
	combout => \Mux61~10_combout\);

-- Location: MLABCELL_X42_Y38_N28
\Mux61~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( !\Y_sra[31]~0_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( !\Y_sra[31]~0_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( 
-- !\sll64[6][1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_Y_sra[31]~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux61~4_combout\);

-- Location: MLABCELL_X39_Y37_N16
\srl64[3][42]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][42]~87_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][48]~5_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][44]~12_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][46]~13_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][42]~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][44]~12_combout\,
	datab => \ALT_INV_srl64[1][42]~11_combout\,
	datac => \ALT_INV_srl64[1][46]~13_combout\,
	datad => \ALT_INV_srl64[1][48]~5_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][42]~87_combout\);

-- Location: MLABCELL_X39_Y37_N22
\srl64[3][34]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][34]~88_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][40]~10_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][36]~17_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][38]~18_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][34]~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][34]~16_combout\,
	datab => \ALT_INV_srl64[1][40]~10_combout\,
	datac => \ALT_INV_srl64[1][36]~17_combout\,
	datad => \ALT_INV_srl64[1][38]~18_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][34]~88_combout\);

-- Location: LABCELL_X38_Y37_N34
\srl64[4][34]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][34]~89_combout\ = ( \srl64[3][34]~88_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][42]~87_combout\) ) ) # ( !\srl64[3][34]~88_combout\ & ( (\srl64[3][42]~87_combout\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][42]~87_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][34]~88_combout\,
	combout => \srl64[4][34]~89_combout\);

-- Location: LABCELL_X43_Y37_N22
\sll64[2][2]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][2]~5_combout\ = ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[0]~input_o\))) # (\B[0]~input_o\ & (((\A[1]~input_o\ & !\B[1]~input_o\)))) ) ) # ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & ((\B[1]~input_o\)))) # 
-- (\B[0]~input_o\ & (((\A[1]~input_o\ & !\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110100010011001111010001001100111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \sll64[2][2]~5_combout\);

-- Location: LABCELL_X38_Y39_N4
\sll64[4][2]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][2]~4_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \sll64[4][2]~4_combout\);

-- Location: MLABCELL_X39_Y38_N0
\sll64[4][2]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][2]~6_combout\ = ( \sll64[4][2]~4_combout\ & ( \sll64[2][2]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sll64[2][2]~5_combout\,
	dataf => \ALT_INV_sll64[4][2]~4_combout\,
	combout => \sll64[4][2]~6_combout\);

-- Location: LABCELL_X38_Y37_N36
\Mux61~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = ( \B[4]~input_o\ & ( (!\Mux61~4_combout\ & ((\sll64[4][2]~6_combout\))) # (\Mux61~4_combout\ & (\Mux61~10_combout\)) ) ) # ( !\B[4]~input_o\ & ( (!\Mux61~4_combout\ & ((\sll64[4][2]~6_combout\))) # (\Mux61~4_combout\ & 
-- (\srl64[4][34]~89_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~10_combout\,
	datab => \ALT_INV_Mux61~4_combout\,
	datac => \ALT_INV_srl64[4][34]~89_combout\,
	datad => \ALT_INV_sll64[4][2]~6_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux61~6_combout\);

-- Location: MLABCELL_X42_Y38_N4
\Mux61~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~7_combout\ = ( \sll64[6][1]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (!\Y_sra[31]~0_combout\)) ) ) # ( !\sll64[6][1]~1_combout\ & ( (\ShiftFN[1]~input_o\ & !\Y_sra[31]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100111011100100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Y_sra[31]~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \Mux61~7_combout\);

-- Location: LABCELL_X40_Y36_N22
\Mux61~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: LABCELL_X43_Y39_N22
\srl64[3][10]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][10]~84_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][16]~31_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][12]~28_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][14]~29_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][10]~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][16]~31_combout\,
	datab => \ALT_INV_srl64[1][14]~29_combout\,
	datac => \ALT_INV_srl64[1][10]~27_combout\,
	datad => \ALT_INV_srl64[1][12]~28_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][10]~84_combout\);

-- Location: LABCELL_X45_Y37_N18
\srl64[3][18]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][18]~85_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][24]~36_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][20]~33_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][22]~34_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][18]~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][18]~32_combout\,
	datab => \ALT_INV_srl64[1][24]~36_combout\,
	datac => \ALT_INV_srl64[1][22]~34_combout\,
	datad => \ALT_INV_srl64[1][20]~33_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][18]~85_combout\);

-- Location: LABCELL_X43_Y39_N16
\Mux61~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = ( \srl64[1][4]~23_combout\ & ( \srl64[1][8]~26_combout\ & ( ((!\B[2]~input_o\ & (\srl64[1][2]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[1][6]~24_combout\)))) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][4]~23_combout\ & ( 
-- \srl64[1][8]~26_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][2]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[1][6]~24_combout\))))) # (\B[1]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( \srl64[1][4]~23_combout\ & ( !\srl64[1][8]~26_combout\ 
-- & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][2]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[1][6]~24_combout\))))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\srl64[1][4]~23_combout\ & ( !\srl64[1][8]~26_combout\ & ( (!\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & (\srl64[1][2]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[1][6]~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][2]~22_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][6]~24_combout\,
	datae => \ALT_INV_srl64[1][4]~23_combout\,
	dataf => \ALT_INV_srl64[1][8]~26_combout\,
	combout => \Mux61~1_combout\);

-- Location: MLABCELL_X39_Y37_N34
\srl64[3][26]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][26]~86_combout\ = ( \srl64[1][28]~38_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\) # (\srl64[1][32]~15_combout\) ) ) ) # ( !\srl64[1][28]~38_combout\ & ( \B[1]~input_o\ & ( (\B[2]~input_o\ & \srl64[1][32]~15_combout\) ) ) ) # ( 
-- \srl64[1][28]~38_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\srl64[1][26]~37_combout\)) # (\B[2]~input_o\ & ((\srl64[1][30]~39_combout\))) ) ) ) # ( !\srl64[1][28]~38_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\srl64[1][26]~37_combout\)) # (\B[2]~input_o\ & ((\srl64[1][30]~39_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][26]~37_combout\,
	datac => \ALT_INV_srl64[1][32]~15_combout\,
	datad => \ALT_INV_srl64[1][30]~39_combout\,
	datae => \ALT_INV_srl64[1][28]~38_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][26]~86_combout\);

-- Location: LABCELL_X38_Y37_N10
\Mux61~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = ( \Mux61~1_combout\ & ( \srl64[3][26]~86_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\srl64[3][10]~84_combout\))) # (\B[4]~input_o\ & (((\B[3]~input_o\) # (\srl64[3][18]~85_combout\)))) ) ) ) # ( !\Mux61~1_combout\ & ( 
-- \srl64[3][26]~86_combout\ & ( (!\B[4]~input_o\ & (\srl64[3][10]~84_combout\ & ((\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\) # (\srl64[3][18]~85_combout\)))) ) ) ) # ( \Mux61~1_combout\ & ( !\srl64[3][26]~86_combout\ & ( (!\B[4]~input_o\ & 
-- (((!\B[3]~input_o\)) # (\srl64[3][10]~84_combout\))) # (\B[4]~input_o\ & (((\srl64[3][18]~85_combout\ & !\B[3]~input_o\)))) ) ) ) # ( !\Mux61~1_combout\ & ( !\srl64[3][26]~86_combout\ & ( (!\B[4]~input_o\ & (\srl64[3][10]~84_combout\ & 
-- ((\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\srl64[3][18]~85_combout\ & !\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][10]~84_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_srl64[3][18]~85_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_Mux61~1_combout\,
	dataf => \ALT_INV_srl64[3][26]~86_combout\,
	combout => \Mux61~2_combout\);

-- Location: LABCELL_X38_Y37_N2
\Mux61~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~8_combout\ = ( \Mux61~0_combout\ & ( \Mux61~2_combout\ & ( (((\Mux61~6_combout\ & \Mux61~7_combout\)) # (\Mux61~3_combout\)) # (\A[2]~input_o\) ) ) ) # ( !\Mux61~0_combout\ & ( \Mux61~2_combout\ & ( ((\Mux61~6_combout\ & \Mux61~7_combout\)) # 
-- (\Mux61~3_combout\) ) ) ) # ( \Mux61~0_combout\ & ( !\Mux61~2_combout\ & ( ((\Mux61~6_combout\ & \Mux61~7_combout\)) # (\A[2]~input_o\) ) ) ) # ( !\Mux61~0_combout\ & ( !\Mux61~2_combout\ & ( (\Mux61~6_combout\ & \Mux61~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101111100110011001111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_Mux61~3_combout\,
	datac => \ALT_INV_Mux61~6_combout\,
	datad => \ALT_INV_Mux61~7_combout\,
	datae => \ALT_INV_Mux61~0_combout\,
	dataf => \ALT_INV_Mux61~2_combout\,
	combout => \Mux61~8_combout\);

-- Location: LABCELL_X43_Y40_N36
\srl64[3][51]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][51]~97_combout\ = ( \B[1]~input_o\ & ( \srl64[1][53]~70_combout\ & ( (!\B[2]~input_o\) # (\srl64[1][57]~66_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][53]~70_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][51]~69_combout\)) # (\B[2]~input_o\ & 
-- ((\srl64[1][55]~71_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][53]~70_combout\ & ( (\B[2]~input_o\ & \srl64[1][57]~66_combout\) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][53]~70_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][51]~69_combout\)) # 
-- (\B[2]~input_o\ & ((\srl64[1][55]~71_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][51]~69_combout\,
	datab => \ALT_INV_srl64[1][55]~71_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][57]~66_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][53]~70_combout\,
	combout => \srl64[3][51]~97_combout\);

-- Location: MLABCELL_X39_Y40_N28
\Mux60~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = ( \B[0]~input_o\ & ( (\B[2]~input_o\ & (\ShiftFN[0]~input_o\ & \sra64[0][63]~0_combout\)) ) ) # ( !\B[0]~input_o\ & ( (\B[2]~input_o\ & (\sra64[0][63]~0_combout\ & ((!\B[1]~input_o\) # (\ShiftFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000100010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux60~3_combout\);

-- Location: MLABCELL_X39_Y40_N30
\Mux60~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\srl64[1][59]~65_combout\)) # (\B[1]~input_o\ & ((\srl64[1][61]~63_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][59]~65_combout\,
	datad => \ALT_INV_srl64[1][61]~63_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux60~2_combout\);

-- Location: LABCELL_X38_Y40_N10
\Mux60~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~4_combout\ = (!\B[3]~input_o\ & (!\srl64[3][51]~97_combout\)) # (\B[3]~input_o\ & (((!\Mux60~3_combout\ & !\Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010001000101110001000100010111000100010001011100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][51]~97_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux60~3_combout\,
	datad => \ALT_INV_Mux60~2_combout\,
	combout => \Mux60~4_combout\);

-- Location: LABCELL_X43_Y37_N26
\sll64[2][3]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][3]~7_combout\ = ( \A[3]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[0]~input_o\))) ) ) ) # ( \A[3]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][3]~7_combout\);

-- Location: MLABCELL_X37_Y40_N22
\sll64[4][3]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][3]~8_combout\ = ( \sll64[2][3]~7_combout\ & ( \sll64[4][2]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sll64[4][2]~4_combout\,
	dataf => \ALT_INV_sll64[2][3]~7_combout\,
	combout => \sll64[4][3]~8_combout\);

-- Location: LABCELL_X43_Y40_N14
\srl64[3][35]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][35]~95_combout\ = ( \B[2]~input_o\ & ( \srl64[1][35]~79_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][39]~81_combout\)) # (\B[1]~input_o\ & ((\srl64[1][41]~73_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][35]~79_combout\ & ( (!\B[1]~input_o\) 
-- # (\srl64[1][37]~80_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][35]~79_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][39]~81_combout\)) # (\B[1]~input_o\ & ((\srl64[1][41]~73_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][35]~79_combout\ & ( 
-- (\srl64[1][37]~80_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][37]~80_combout\,
	datab => \ALT_INV_srl64[1][39]~81_combout\,
	datac => \ALT_INV_srl64[1][41]~73_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][35]~79_combout\,
	combout => \srl64[3][35]~95_combout\);

-- Location: LABCELL_X43_Y40_N28
\srl64[3][43]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][43]~94_combout\ = ( \srl64[1][45]~75_combout\ & ( \srl64[1][49]~68_combout\ & ( ((!\B[2]~input_o\ & (\srl64[1][43]~74_combout\)) # (\B[2]~input_o\ & ((\srl64[1][47]~76_combout\)))) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][45]~75_combout\ & ( 
-- \srl64[1][49]~68_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][43]~74_combout\ & ((!\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\) # (\srl64[1][47]~76_combout\)))) ) ) ) # ( \srl64[1][45]~75_combout\ & ( !\srl64[1][49]~68_combout\ & ( 
-- (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][43]~74_combout\))) # (\B[2]~input_o\ & (((\srl64[1][47]~76_combout\ & !\B[1]~input_o\)))) ) ) ) # ( !\srl64[1][45]~75_combout\ & ( !\srl64[1][49]~68_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & 
-- (\srl64[1][43]~74_combout\)) # (\B[2]~input_o\ & ((\srl64[1][47]~76_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][43]~74_combout\,
	datab => \ALT_INV_srl64[1][47]~76_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][45]~75_combout\,
	dataf => \ALT_INV_srl64[1][49]~68_combout\,
	combout => \srl64[3][43]~94_combout\);

-- Location: LABCELL_X38_Y40_N6
\srl64[4][35]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][35]~96_combout\ = ( \srl64[3][43]~94_combout\ & ( (\srl64[3][35]~95_combout\) # (\B[3]~input_o\) ) ) # ( !\srl64[3][43]~94_combout\ & ( (!\B[3]~input_o\ & \srl64[3][35]~95_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][35]~95_combout\,
	dataf => \ALT_INV_srl64[3][43]~94_combout\,
	combout => \srl64[4][35]~96_combout\);

-- Location: LABCELL_X38_Y40_N4
\Mux60~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~5_combout\ = ( \srl64[4][35]~96_combout\ & ( (!\Mux61~4_combout\ & (((\sll64[4][3]~8_combout\)))) # (\Mux61~4_combout\ & ((!\B[4]~input_o\) # ((!\Mux60~4_combout\)))) ) ) # ( !\srl64[4][35]~96_combout\ & ( (!\Mux61~4_combout\ & 
-- (((\sll64[4][3]~8_combout\)))) # (\Mux61~4_combout\ & (\B[4]~input_o\ & (!\Mux60~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000001110111111100000111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Mux60~4_combout\,
	datac => \ALT_INV_Mux61~4_combout\,
	datad => \ALT_INV_sll64[4][3]~8_combout\,
	dataf => \ALT_INV_srl64[4][35]~96_combout\,
	combout => \Mux60~5_combout\);

-- Location: MLABCELL_X44_Y40_N32
\srl64[3][19]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][19]~92_combout\ = ( \B[2]~input_o\ & ( \srl64[1][19]~53_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][23]~55_combout\)) # (\B[1]~input_o\ & ((\srl64[1][25]~57_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][19]~53_combout\ & ( (!\B[1]~input_o\) 
-- # (\srl64[1][21]~54_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][19]~53_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][23]~55_combout\)) # (\B[1]~input_o\ & ((\srl64[1][25]~57_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][19]~53_combout\ & ( 
-- (\B[1]~input_o\ & \srl64[1][21]~54_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][23]~55_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][25]~57_combout\,
	datad => \ALT_INV_srl64[1][21]~54_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][19]~53_combout\,
	combout => \srl64[3][19]~92_combout\);

-- Location: LABCELL_X45_Y40_N24
\srl64[3][11]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][11]~91_combout\ = ( \srl64[1][11]~48_combout\ & ( \srl64[1][15]~50_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\srl64[1][13]~49_combout\)) # (\B[2]~input_o\ & ((\srl64[1][17]~52_combout\)))) ) ) ) # ( !\srl64[1][11]~48_combout\ & ( 
-- \srl64[1][15]~50_combout\ & ( (!\B[1]~input_o\ & (\B[2]~input_o\)) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][13]~49_combout\)) # (\B[2]~input_o\ & ((\srl64[1][17]~52_combout\))))) ) ) ) # ( \srl64[1][11]~48_combout\ & ( !\srl64[1][15]~50_combout\ 
-- & ( (!\B[1]~input_o\ & (!\B[2]~input_o\)) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][13]~49_combout\)) # (\B[2]~input_o\ & ((\srl64[1][17]~52_combout\))))) ) ) ) # ( !\srl64[1][11]~48_combout\ & ( !\srl64[1][15]~50_combout\ & ( (\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & (\srl64[1][13]~49_combout\)) # (\B[2]~input_o\ & ((\srl64[1][17]~52_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][13]~49_combout\,
	datad => \ALT_INV_srl64[1][17]~52_combout\,
	datae => \ALT_INV_srl64[1][11]~48_combout\,
	dataf => \ALT_INV_srl64[1][15]~50_combout\,
	combout => \srl64[3][11]~91_combout\);

-- Location: MLABCELL_X44_Y40_N18
\srl64[3][27]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][27]~93_combout\ = ( \B[2]~input_o\ & ( \srl64[1][29]~59_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][31]~60_combout\)) # (\B[1]~input_o\ & ((\srl64[1][33]~78_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][29]~59_combout\ & ( (\B[1]~input_o\) 
-- # (\srl64[1][27]~58_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][29]~59_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][31]~60_combout\)) # (\B[1]~input_o\ & ((\srl64[1][33]~78_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][29]~59_combout\ & ( 
-- (\srl64[1][27]~58_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][31]~60_combout\,
	datab => \ALT_INV_srl64[1][27]~58_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][33]~78_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][29]~59_combout\,
	combout => \srl64[3][27]~93_combout\);

-- Location: LABCELL_X45_Y40_N20
\Mux60~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = ( \srl64[1][7]~45_combout\ & ( \srl64[1][9]~47_combout\ & ( ((!\B[1]~input_o\ & ((\srl64[1][3]~43_combout\))) # (\B[1]~input_o\ & (\srl64[1][5]~44_combout\))) # (\B[2]~input_o\) ) ) ) # ( !\srl64[1][7]~45_combout\ & ( 
-- \srl64[1][9]~47_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\srl64[1][3]~43_combout\))) # (\B[1]~input_o\ & (\srl64[1][5]~44_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \srl64[1][7]~45_combout\ & ( !\srl64[1][9]~47_combout\ 
-- & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\srl64[1][3]~43_combout\))) # (\B[1]~input_o\ & (\srl64[1][5]~44_combout\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\srl64[1][7]~45_combout\ & ( !\srl64[1][9]~47_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\B[1]~input_o\ & ((\srl64[1][3]~43_combout\))) # (\B[1]~input_o\ & (\srl64[1][5]~44_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][5]~44_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][3]~43_combout\,
	datae => \ALT_INV_srl64[1][7]~45_combout\,
	dataf => \ALT_INV_srl64[1][9]~47_combout\,
	combout => \Mux60~0_combout\);

-- Location: LABCELL_X38_Y40_N20
\Mux60~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = ( \B[4]~input_o\ & ( \B[3]~input_o\ & ( \srl64[3][27]~93_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[3]~input_o\ & ( \srl64[3][11]~91_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[3]~input_o\ & ( \srl64[3][19]~92_combout\ ) ) ) # ( 
-- !\B[4]~input_o\ & ( !\B[3]~input_o\ & ( \Mux60~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][19]~92_combout\,
	datab => \ALT_INV_srl64[3][11]~91_combout\,
	datac => \ALT_INV_srl64[3][27]~93_combout\,
	datad => \ALT_INV_Mux60~0_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux60~1_combout\);

-- Location: LABCELL_X38_Y40_N34
\Mux60~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~6_combout\ = ( \Mux61~0_combout\ & ( \Mux61~7_combout\ & ( (((\Mux61~3_combout\ & \Mux60~1_combout\)) # (\A[3]~input_o\)) # (\Mux60~5_combout\) ) ) ) # ( !\Mux61~0_combout\ & ( \Mux61~7_combout\ & ( ((\Mux61~3_combout\ & \Mux60~1_combout\)) # 
-- (\Mux60~5_combout\) ) ) ) # ( \Mux61~0_combout\ & ( !\Mux61~7_combout\ & ( ((\Mux61~3_combout\ & \Mux60~1_combout\)) # (\A[3]~input_o\) ) ) ) # ( !\Mux61~0_combout\ & ( !\Mux61~7_combout\ & ( (\Mux61~3_combout\ & \Mux60~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011111101010101011101110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~5_combout\,
	datab => \ALT_INV_Mux61~3_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_Mux60~1_combout\,
	datae => \ALT_INV_Mux61~0_combout\,
	dataf => \ALT_INV_Mux61~7_combout\,
	combout => \Mux60~6_combout\);

-- Location: LABCELL_X43_Y39_N26
\Mux59~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = ( \srl64[1][4]~23_combout\ & ( \srl64[1][10]~27_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][8]~26_combout\))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\srl64[1][6]~24_combout\)))) ) ) ) # ( 
-- !\srl64[1][4]~23_combout\ & ( \srl64[1][10]~27_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][8]~26_combout\ & ((\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\srl64[1][6]~24_combout\)))) ) ) ) # ( \srl64[1][4]~23_combout\ & ( 
-- !\srl64[1][10]~27_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][8]~26_combout\))) # (\B[1]~input_o\ & (((\srl64[1][6]~24_combout\ & !\B[2]~input_o\)))) ) ) ) # ( !\srl64[1][4]~23_combout\ & ( !\srl64[1][10]~27_combout\ & ( 
-- (!\B[1]~input_o\ & (\srl64[1][8]~26_combout\ & ((\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\srl64[1][6]~24_combout\ & !\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][8]~26_combout\,
	datac => \ALT_INV_srl64[1][6]~24_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[1][4]~23_combout\,
	dataf => \ALT_INV_srl64[1][10]~27_combout\,
	combout => \Mux59~0_combout\);

-- Location: LABCELL_X45_Y37_N20
\srl64[3][20]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][20]~99_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][26]~37_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][22]~34_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][24]~36_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][20]~33_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][20]~33_combout\,
	datab => \ALT_INV_srl64[1][24]~36_combout\,
	datac => \ALT_INV_srl64[1][26]~37_combout\,
	datad => \ALT_INV_srl64[1][22]~34_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][20]~99_combout\);

-- Location: LABCELL_X43_Y39_N30
\srl64[3][12]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][12]~98_combout\ = ( \B[2]~input_o\ & ( \srl64[1][16]~31_combout\ & ( (!\B[1]~input_o\) # (\srl64[1][18]~32_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][16]~31_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][12]~28_combout\)) # (\B[1]~input_o\ & 
-- ((\srl64[1][14]~29_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][16]~31_combout\ & ( (\srl64[1][18]~32_combout\ & \B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][16]~31_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][12]~28_combout\)) # 
-- (\B[1]~input_o\ & ((\srl64[1][14]~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][12]~28_combout\,
	datab => \ALT_INV_srl64[1][18]~32_combout\,
	datac => \ALT_INV_srl64[1][14]~29_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][16]~31_combout\,
	combout => \srl64[3][12]~98_combout\);

-- Location: MLABCELL_X39_Y37_N26
\srl64[3][28]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][28]~100_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][34]~16_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][30]~39_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][32]~15_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][28]~38_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][34]~16_combout\,
	datab => \ALT_INV_srl64[1][32]~15_combout\,
	datac => \ALT_INV_srl64[1][28]~38_combout\,
	datad => \ALT_INV_srl64[1][30]~39_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][28]~100_combout\);

-- Location: MLABCELL_X37_Y39_N10
\Mux59~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = ( \B[4]~input_o\ & ( \srl64[3][28]~100_combout\ & ( (\srl64[3][20]~99_combout\) # (\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \srl64[3][28]~100_combout\ & ( (!\B[3]~input_o\ & (\Mux59~0_combout\)) # (\B[3]~input_o\ & 
-- ((\srl64[3][12]~98_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\srl64[3][28]~100_combout\ & ( (!\B[3]~input_o\ & \srl64[3][20]~99_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\srl64[3][28]~100_combout\ & ( (!\B[3]~input_o\ & (\Mux59~0_combout\)) # 
-- (\B[3]~input_o\ & ((\srl64[3][12]~98_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux59~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][20]~99_combout\,
	datad => \ALT_INV_srl64[3][12]~98_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[3][28]~100_combout\,
	combout => \Mux59~1_combout\);

-- Location: LABCELL_X43_Y37_N20
\sll64[2][0]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][0]~9_combout\ = ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][0]~9_combout\);

-- Location: LABCELL_X43_Y37_N28
\sll64[2][4]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][4]~10_combout\ = ( \A[3]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & (((\A[4]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & (((!\B[0]~input_o\ & \A[4]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( \A[3]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (((\A[4]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[1]~input_o\ & 
-- (\B[0]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[4]~input_o\)))) # (\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \sll64[2][4]~10_combout\);

-- Location: MLABCELL_X37_Y36_N22
\sll64[4][4]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][4]~11_combout\ = ( \sll64[2][4]~10_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][0]~9_combout\) ) ) ) # ( !\sll64[2][4]~10_combout\ & ( !\B[3]~input_o\ & ( (\sll64[2][0]~9_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][0]~9_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][4]~10_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][4]~11_combout\);

-- Location: LABCELL_X35_Y37_N14
\srl64[3][44]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][44]~101_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][50]~6_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][46]~13_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][48]~5_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][44]~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][46]~13_combout\,
	datab => \ALT_INV_srl64[1][50]~6_combout\,
	datac => \ALT_INV_srl64[1][44]~12_combout\,
	datad => \ALT_INV_srl64[1][48]~5_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][44]~101_combout\);

-- Location: MLABCELL_X39_Y37_N30
\srl64[3][36]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][36]~102_combout\ = ( \srl64[1][36]~17_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & ((\srl64[1][38]~18_combout\))) # (\B[2]~input_o\ & (\srl64[1][42]~11_combout\)) ) ) ) # ( !\srl64[1][36]~17_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ 
-- & ((\srl64[1][38]~18_combout\))) # (\B[2]~input_o\ & (\srl64[1][42]~11_combout\)) ) ) ) # ( \srl64[1][36]~17_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\) # (\srl64[1][40]~10_combout\) ) ) ) # ( !\srl64[1][36]~17_combout\ & ( !\B[1]~input_o\ & ( 
-- (\B[2]~input_o\ & \srl64[1][40]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][40]~10_combout\,
	datac => \ALT_INV_srl64[1][42]~11_combout\,
	datad => \ALT_INV_srl64[1][38]~18_combout\,
	datae => \ALT_INV_srl64[1][36]~17_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][36]~102_combout\);

-- Location: MLABCELL_X37_Y38_N22
\srl64[4][36]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][36]~103_combout\ = ( \srl64[3][36]~102_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][44]~101_combout\) ) ) # ( !\srl64[3][36]~102_combout\ & ( (\B[3]~input_o\ & \srl64[3][44]~101_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][44]~101_combout\,
	dataf => \ALT_INV_srl64[3][36]~102_combout\,
	combout => \srl64[4][36]~103_combout\);

-- Location: LABCELL_X35_Y37_N22
\srl64[2][60]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][60]~105_combout\ = ( \srl64[1][60]~1_combout\ & ( (!\B[1]~input_o\) # (\srl64[1][62]~3_combout\) ) ) # ( !\srl64[1][60]~1_combout\ & ( (\srl64[1][62]~3_combout\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][62]~3_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][60]~1_combout\,
	combout => \srl64[2][60]~105_combout\);

-- Location: LABCELL_X35_Y37_N38
\srl64[3][52]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][52]~104_combout\ = ( \srl64[1][52]~7_combout\ & ( \srl64[1][58]~2_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\srl64[1][54]~8_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][56]~0_combout\))) ) ) ) # ( 
-- !\srl64[1][52]~7_combout\ & ( \srl64[1][58]~2_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\ & \srl64[1][54]~8_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][56]~0_combout\))) ) ) ) # ( \srl64[1][52]~7_combout\ & ( 
-- !\srl64[1][58]~2_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\srl64[1][54]~8_combout\)))) # (\B[2]~input_o\ & (\srl64[1][56]~0_combout\ & (!\B[1]~input_o\))) ) ) ) # ( !\srl64[1][52]~7_combout\ & ( !\srl64[1][58]~2_combout\ & ( (!\B[2]~input_o\ 
-- & (((\B[1]~input_o\ & \srl64[1][54]~8_combout\)))) # (\B[2]~input_o\ & (\srl64[1][56]~0_combout\ & (!\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][56]~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][54]~8_combout\,
	datae => \ALT_INV_srl64[1][52]~7_combout\,
	dataf => \ALT_INV_srl64[1][58]~2_combout\,
	combout => \srl64[3][52]~104_combout\);

-- Location: MLABCELL_X37_Y38_N6
\Mux59~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = ( \sra64[0][63]~0_combout\ & ( \srl64[3][52]~104_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & ((\srl64[2][60]~105_combout\))) # (\B[2]~input_o\ & (\ShiftFN[0]~input_o\))) ) ) ) # ( !\sra64[0][63]~0_combout\ & ( 
-- \srl64[3][52]~104_combout\ & ( (!\B[3]~input_o\) # ((\srl64[2][60]~105_combout\ & !\B[2]~input_o\)) ) ) ) # ( \sra64[0][63]~0_combout\ & ( !\srl64[3][52]~104_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[2][60]~105_combout\))) # 
-- (\B[2]~input_o\ & (\ShiftFN[0]~input_o\)))) ) ) ) # ( !\sra64[0][63]~0_combout\ & ( !\srl64[3][52]~104_combout\ & ( (\B[3]~input_o\ & (\srl64[2][60]~105_combout\ & !\B[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010001000110101111101010101010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_srl64[2][60]~105_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_srl64[3][52]~104_combout\,
	combout => \Mux59~2_combout\);

-- Location: MLABCELL_X37_Y36_N24
\Mux59~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = ( \Mux59~2_combout\ & ( (!\Mux61~4_combout\ & (((\sll64[4][4]~11_combout\)))) # (\Mux61~4_combout\ & (((\srl64[4][36]~103_combout\)) # (\B[4]~input_o\))) ) ) # ( !\Mux59~2_combout\ & ( (!\Mux61~4_combout\ & 
-- (((\sll64[4][4]~11_combout\)))) # (\Mux61~4_combout\ & (!\B[4]~input_o\ & ((\srl64[4][36]~103_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111010001100000011101000110101001111110011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_sll64[4][4]~11_combout\,
	datac => \ALT_INV_Mux61~4_combout\,
	datad => \ALT_INV_srl64[4][36]~103_combout\,
	dataf => \ALT_INV_Mux59~2_combout\,
	combout => \Mux59~3_combout\);

-- Location: LABCELL_X40_Y36_N26
\Mux59~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~4_combout\ = ( \Mux61~3_combout\ & ( \Mux59~3_combout\ & ( (((\Mux61~0_combout\ & \A[4]~input_o\)) # (\Mux61~7_combout\)) # (\Mux59~1_combout\) ) ) ) # ( !\Mux61~3_combout\ & ( \Mux59~3_combout\ & ( ((\Mux61~0_combout\ & \A[4]~input_o\)) # 
-- (\Mux61~7_combout\) ) ) ) # ( \Mux61~3_combout\ & ( !\Mux59~3_combout\ & ( ((\Mux61~0_combout\ & \A[4]~input_o\)) # (\Mux59~1_combout\) ) ) ) # ( !\Mux61~3_combout\ & ( !\Mux59~3_combout\ & ( (\Mux61~0_combout\ & \A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101111100110011001111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux59~1_combout\,
	datab => \ALT_INV_Mux61~7_combout\,
	datac => \ALT_INV_Mux61~0_combout\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_Mux61~3_combout\,
	dataf => \ALT_INV_Mux59~3_combout\,
	combout => \Mux59~4_combout\);

-- Location: LABCELL_X38_Y38_N22
\Mux61~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~9_combout\ = ( !\B[2]~input_o\ & ( !\B[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux61~9_combout\);

-- Location: MLABCELL_X39_Y40_N18
\sra64[3][61]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][61]~3_combout\ = ( \Mux61~9_combout\ & ( \srl64[1][61]~63_combout\ ) ) # ( !\Mux61~9_combout\ & ( \sra64[0][63]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_srl64[1][61]~63_combout\,
	dataf => \ALT_INV_Mux61~9_combout\,
	combout => \sra64[3][61]~3_combout\);

-- Location: MLABCELL_X39_Y40_N34
\srl64[2][61]~112\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][61]~112_combout\ = (!\srl64[2][61]~64_combout\ & ((!\srl64[1][61]~63_combout\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010101010100010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[2][61]~64_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][61]~63_combout\,
	combout => \srl64[2][61]~112_combout\);

-- Location: LABCELL_X43_Y40_N10
\srl64[3][53]~113\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][53]~113_combout\ = ( \B[2]~input_o\ & ( \srl64[1][53]~70_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][57]~66_combout\))) # (\B[1]~input_o\ & (\srl64[1][59]~65_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][53]~70_combout\ & ( 
-- (!\B[1]~input_o\) # (\srl64[1][55]~71_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][53]~70_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][57]~66_combout\))) # (\B[1]~input_o\ & (\srl64[1][59]~65_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\srl64[1][53]~70_combout\ & ( (\B[1]~input_o\ & \srl64[1][55]~71_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][59]~65_combout\,
	datac => \ALT_INV_srl64[1][55]~71_combout\,
	datad => \ALT_INV_srl64[1][57]~66_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][53]~70_combout\,
	combout => \srl64[3][53]~113_combout\);

-- Location: LABCELL_X35_Y38_N0
\Mux58~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = ( \ShiftFN[0]~input_o\ & ( \srl64[3][53]~113_combout\ & ( (!\B[3]~input_o\) # (\sra64[3][61]~3_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \srl64[3][53]~113_combout\ & ( (!\B[3]~input_o\) # ((!\srl64[2][61]~112_combout\ & 
-- !\B[2]~input_o\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\srl64[3][53]~113_combout\ & ( (\sra64[3][61]~3_combout\ & \B[3]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\srl64[3][53]~113_combout\ & ( (\B[3]~input_o\ & (!\srl64[2][61]~112_combout\ & 
-- !\B[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000100010001000111111100110011001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[3][61]~3_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[2][61]~112_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_srl64[3][53]~113_combout\,
	combout => \Mux58~2_combout\);

-- Location: LABCELL_X43_Y40_N24
\srl64[3][37]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][37]~110_combout\ = ( \srl64[1][43]~74_combout\ & ( \srl64[1][39]~81_combout\ & ( ((!\B[2]~input_o\ & (\srl64[1][37]~80_combout\)) # (\B[2]~input_o\ & ((\srl64[1][41]~73_combout\)))) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][43]~74_combout\ & ( 
-- \srl64[1][39]~81_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][37]~80_combout\))) # (\B[2]~input_o\ & (((\srl64[1][41]~73_combout\ & !\B[1]~input_o\)))) ) ) ) # ( \srl64[1][43]~74_combout\ & ( !\srl64[1][39]~81_combout\ & ( 
-- (!\B[2]~input_o\ & (\srl64[1][37]~80_combout\ & ((!\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\) # (\srl64[1][41]~73_combout\)))) ) ) ) # ( !\srl64[1][43]~74_combout\ & ( !\srl64[1][39]~81_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & 
-- (\srl64[1][37]~80_combout\)) # (\B[2]~input_o\ & ((\srl64[1][41]~73_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][37]~80_combout\,
	datab => \ALT_INV_srl64[1][41]~73_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][43]~74_combout\,
	dataf => \ALT_INV_srl64[1][39]~81_combout\,
	combout => \srl64[3][37]~110_combout\);

-- Location: LABCELL_X43_Y40_N22
\srl64[3][45]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][45]~109_combout\ = ( \B[1]~input_o\ & ( \srl64[1][49]~68_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][47]~76_combout\)) # (\B[2]~input_o\ & ((\srl64[1][51]~69_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][49]~68_combout\ & ( 
-- (\srl64[1][45]~75_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][49]~68_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][47]~76_combout\)) # (\B[2]~input_o\ & ((\srl64[1][51]~69_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\srl64[1][49]~68_combout\ & ( (!\B[2]~input_o\ & \srl64[1][45]~75_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][47]~76_combout\,
	datac => \ALT_INV_srl64[1][45]~75_combout\,
	datad => \ALT_INV_srl64[1][51]~69_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][49]~68_combout\,
	combout => \srl64[3][45]~109_combout\);

-- Location: LABCELL_X43_Y36_N26
\srl64[4][37]~111\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][37]~111_combout\ = ( \srl64[3][45]~109_combout\ & ( (\srl64[3][37]~110_combout\) # (\B[3]~input_o\) ) ) # ( !\srl64[3][45]~109_combout\ & ( (!\B[3]~input_o\ & \srl64[3][37]~110_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][37]~110_combout\,
	dataf => \ALT_INV_srl64[3][45]~109_combout\,
	combout => \srl64[4][37]~111_combout\);

-- Location: LABCELL_X43_Y37_N12
\sll64[2][5]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][5]~13_combout\ = ( \A[3]~input_o\ & ( \A[2]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[3]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)))) # 
-- (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \sll64[2][5]~13_combout\);

-- Location: LABCELL_X43_Y37_N10
\sll64[2][1]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][1]~12_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][1]~12_combout\);

-- Location: MLABCELL_X44_Y36_N20
\sll64[4][5]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][5]~14_combout\ = ( \B[2]~input_o\ & ( \sll64[2][1]~12_combout\ & ( !\B[3]~input_o\ ) ) ) # ( !\B[2]~input_o\ & ( \sll64[2][1]~12_combout\ & ( (!\B[3]~input_o\ & \sll64[2][5]~13_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\sll64[2][1]~12_combout\ & 
-- ( (!\B[3]~input_o\ & \sll64[2][5]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000000100010001000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[2][5]~13_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_sll64[2][1]~12_combout\,
	combout => \sll64[4][5]~14_combout\);

-- Location: MLABCELL_X44_Y36_N4
\Mux58~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = ( \sll64[4][5]~14_combout\ & ( (!\Mux61~4_combout\) # ((!\B[4]~input_o\ & ((\srl64[4][37]~111_combout\))) # (\B[4]~input_o\ & (\Mux58~2_combout\))) ) ) # ( !\sll64[4][5]~14_combout\ & ( (\Mux61~4_combout\ & ((!\B[4]~input_o\ & 
-- ((\srl64[4][37]~111_combout\))) # (\B[4]~input_o\ & (\Mux58~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~4_combout\,
	datab => \ALT_INV_Mux58~2_combout\,
	datac => \ALT_INV_srl64[4][37]~111_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][5]~14_combout\,
	combout => \Mux58~3_combout\);

-- Location: MLABCELL_X44_Y40_N22
\srl64[3][21]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][21]~107_combout\ = ( \B[2]~input_o\ & ( \srl64[1][27]~58_combout\ & ( (\srl64[1][25]~57_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][27]~58_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][21]~54_combout\))) # (\B[1]~input_o\ 
-- & (\srl64[1][23]~55_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][27]~58_combout\ & ( (!\B[1]~input_o\ & \srl64[1][25]~57_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][27]~58_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][21]~54_combout\))) # 
-- (\B[1]~input_o\ & (\srl64[1][23]~55_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][23]~55_combout\,
	datab => \ALT_INV_srl64[1][21]~54_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][25]~57_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][27]~58_combout\,
	combout => \srl64[3][21]~107_combout\);

-- Location: MLABCELL_X44_Y40_N26
\srl64[3][29]~108\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][29]~108_combout\ = ( \B[2]~input_o\ & ( \srl64[1][29]~59_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][33]~78_combout\))) # (\B[1]~input_o\ & (\srl64[1][35]~79_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][29]~59_combout\ & ( 
-- (!\B[1]~input_o\) # (\srl64[1][31]~60_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][29]~59_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][33]~78_combout\))) # (\B[1]~input_o\ & (\srl64[1][35]~79_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\srl64[1][29]~59_combout\ & ( (\srl64[1][31]~60_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][31]~60_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][35]~79_combout\,
	datad => \ALT_INV_srl64[1][33]~78_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][29]~59_combout\,
	combout => \srl64[3][29]~108_combout\);

-- Location: LABCELL_X45_Y40_N34
\srl64[3][13]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][13]~106_combout\ = ( \srl64[1][19]~53_combout\ & ( \srl64[1][15]~50_combout\ & ( ((!\B[2]~input_o\ & ((\srl64[1][13]~49_combout\))) # (\B[2]~input_o\ & (\srl64[1][17]~52_combout\))) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][19]~53_combout\ & ( 
-- \srl64[1][15]~50_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][13]~49_combout\))) # (\B[2]~input_o\ & (\srl64[1][17]~52_combout\)))) # (\B[1]~input_o\ & (!\B[2]~input_o\)) ) ) ) # ( \srl64[1][19]~53_combout\ & ( 
-- !\srl64[1][15]~50_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][13]~49_combout\))) # (\B[2]~input_o\ & (\srl64[1][17]~52_combout\)))) # (\B[1]~input_o\ & (\B[2]~input_o\)) ) ) ) # ( !\srl64[1][19]~53_combout\ & ( 
-- !\srl64[1][15]~50_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][13]~49_combout\))) # (\B[2]~input_o\ & (\srl64[1][17]~52_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][17]~52_combout\,
	datad => \ALT_INV_srl64[1][13]~49_combout\,
	datae => \ALT_INV_srl64[1][19]~53_combout\,
	dataf => \ALT_INV_srl64[1][15]~50_combout\,
	combout => \srl64[3][13]~106_combout\);

-- Location: LABCELL_X45_Y40_N28
\Mux58~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = ( \srl64[1][11]~48_combout\ & ( \B[1]~input_o\ & ( (\srl64[1][7]~45_combout\) # (\B[2]~input_o\) ) ) ) # ( !\srl64[1][11]~48_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & \srl64[1][7]~45_combout\) ) ) ) # ( 
-- \srl64[1][11]~48_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\srl64[1][5]~44_combout\)) # (\B[2]~input_o\ & ((\srl64[1][9]~47_combout\))) ) ) ) # ( !\srl64[1][11]~48_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\srl64[1][5]~44_combout\)) 
-- # (\B[2]~input_o\ & ((\srl64[1][9]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][5]~44_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][7]~45_combout\,
	datad => \ALT_INV_srl64[1][9]~47_combout\,
	datae => \ALT_INV_srl64[1][11]~48_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LABCELL_X43_Y36_N0
\Mux58~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = ( \Mux58~0_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & (\srl64[3][21]~107_combout\)) # (\B[3]~input_o\ & ((\srl64[3][29]~108_combout\))) ) ) ) # ( !\Mux58~0_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\srl64[3][21]~107_combout\)) # (\B[3]~input_o\ & ((\srl64[3][29]~108_combout\))) ) ) ) # ( \Mux58~0_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\) # (\srl64[3][13]~106_combout\) ) ) ) # ( !\Mux58~0_combout\ & ( !\B[4]~input_o\ & ( 
-- (\srl64[3][13]~106_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][21]~107_combout\,
	datab => \ALT_INV_srl64[3][29]~108_combout\,
	datac => \ALT_INV_srl64[3][13]~106_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_Mux58~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux58~1_combout\);

-- Location: LABCELL_X40_Y36_N28
\Mux58~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = ( \Mux61~0_combout\ & ( \A[5]~input_o\ ) ) # ( !\Mux61~0_combout\ & ( \A[5]~input_o\ & ( (!\Mux58~3_combout\ & (\Mux61~3_combout\ & (\Mux58~1_combout\))) # (\Mux58~3_combout\ & (((\Mux61~3_combout\ & \Mux58~1_combout\)) # 
-- (\Mux61~7_combout\))) ) ) ) # ( \Mux61~0_combout\ & ( !\A[5]~input_o\ & ( (!\Mux58~3_combout\ & (\Mux61~3_combout\ & (\Mux58~1_combout\))) # (\Mux58~3_combout\ & (((\Mux61~3_combout\ & \Mux58~1_combout\)) # (\Mux61~7_combout\))) ) ) ) # ( 
-- !\Mux61~0_combout\ & ( !\A[5]~input_o\ & ( (!\Mux58~3_combout\ & (\Mux61~3_combout\ & (\Mux58~1_combout\))) # (\Mux58~3_combout\ & (((\Mux61~3_combout\ & \Mux58~1_combout\)) # (\Mux61~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux58~3_combout\,
	datab => \ALT_INV_Mux61~3_combout\,
	datac => \ALT_INV_Mux58~1_combout\,
	datad => \ALT_INV_Mux61~7_combout\,
	datae => \ALT_INV_Mux61~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Mux58~4_combout\);

-- Location: MLABCELL_X39_Y37_N14
\srl64[3][30]~116\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][30]~116_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][36]~17_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][32]~15_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][34]~16_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][30]~39_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][34]~16_combout\,
	datab => \ALT_INV_srl64[1][32]~15_combout\,
	datac => \ALT_INV_srl64[1][36]~17_combout\,
	datad => \ALT_INV_srl64[1][30]~39_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][30]~116_combout\);

-- Location: LABCELL_X43_Y39_N14
\Mux57~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = ( \srl64[1][12]~28_combout\ & ( \srl64[1][10]~27_combout\ & ( ((!\B[1]~input_o\ & ((\srl64[1][6]~24_combout\))) # (\B[1]~input_o\ & (\srl64[1][8]~26_combout\))) # (\B[2]~input_o\) ) ) ) # ( !\srl64[1][12]~28_combout\ & ( 
-- \srl64[1][10]~27_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\) # (\srl64[1][6]~24_combout\)))) # (\B[1]~input_o\ & (\srl64[1][8]~26_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( \srl64[1][12]~28_combout\ & ( !\srl64[1][10]~27_combout\ & ( 
-- (!\B[1]~input_o\ & (((\srl64[1][6]~24_combout\ & !\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # (\srl64[1][8]~26_combout\))) ) ) ) # ( !\srl64[1][12]~28_combout\ & ( !\srl64[1][10]~27_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\srl64[1][6]~24_combout\))) # (\B[1]~input_o\ & (\srl64[1][8]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][8]~26_combout\,
	datac => \ALT_INV_srl64[1][6]~24_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[1][12]~28_combout\,
	dataf => \ALT_INV_srl64[1][10]~27_combout\,
	combout => \Mux57~0_combout\);

-- Location: LABCELL_X43_Y39_N36
\srl64[3][14]~114\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][14]~114_combout\ = ( \srl64[1][20]~33_combout\ & ( \srl64[1][16]~31_combout\ & ( ((!\B[2]~input_o\ & ((\srl64[1][14]~29_combout\))) # (\B[2]~input_o\ & (\srl64[1][18]~32_combout\))) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][20]~33_combout\ & ( 
-- \srl64[1][16]~31_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][14]~29_combout\))) # (\B[2]~input_o\ & (\srl64[1][18]~32_combout\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( \srl64[1][20]~33_combout\ & ( 
-- !\srl64[1][16]~31_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][14]~29_combout\))) # (\B[2]~input_o\ & (\srl64[1][18]~32_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( !\srl64[1][20]~33_combout\ & ( 
-- !\srl64[1][16]~31_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][14]~29_combout\))) # (\B[2]~input_o\ & (\srl64[1][18]~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][18]~32_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][14]~29_combout\,
	datae => \ALT_INV_srl64[1][20]~33_combout\,
	dataf => \ALT_INV_srl64[1][16]~31_combout\,
	combout => \srl64[3][14]~114_combout\);

-- Location: LABCELL_X45_Y37_N6
\srl64[3][22]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][22]~115_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][28]~38_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][24]~36_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][26]~37_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][22]~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][26]~37_combout\,
	datab => \ALT_INV_srl64[1][24]~36_combout\,
	datac => \ALT_INV_srl64[1][22]~34_combout\,
	datad => \ALT_INV_srl64[1][28]~38_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][22]~115_combout\);

-- Location: MLABCELL_X39_Y34_N22
\Mux57~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = ( \srl64[3][14]~114_combout\ & ( \srl64[3][22]~115_combout\ & ( (!\B[4]~input_o\ & (((\Mux57~0_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\srl64[3][30]~116_combout\))) ) ) ) # ( 
-- !\srl64[3][14]~114_combout\ & ( \srl64[3][22]~115_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\ & \Mux57~0_combout\)))) # (\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\srl64[3][30]~116_combout\))) ) ) ) # ( \srl64[3][14]~114_combout\ & ( 
-- !\srl64[3][22]~115_combout\ & ( (!\B[4]~input_o\ & (((\Mux57~0_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (\srl64[3][30]~116_combout\ & (\B[3]~input_o\))) ) ) ) # ( !\srl64[3][14]~114_combout\ & ( !\srl64[3][22]~115_combout\ & ( (!\B[4]~input_o\ 
-- & (((!\B[3]~input_o\ & \Mux57~0_combout\)))) # (\B[4]~input_o\ & (\srl64[3][30]~116_combout\ & (\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_srl64[3][30]~116_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_Mux57~0_combout\,
	datae => \ALT_INV_srl64[3][14]~114_combout\,
	dataf => \ALT_INV_srl64[3][22]~115_combout\,
	combout => \Mux57~1_combout\);

-- Location: LABCELL_X43_Y37_N36
\sll64[2][6]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][6]~15_combout\ = ( \A[3]~input_o\ & ( \B[0]~input_o\ & ( (\A[5]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[5]~input_o\) ) ) ) # ( \A[3]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A[6]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\A[3]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[6]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][6]~15_combout\);

-- Location: MLABCELL_X42_Y34_N20
\sll64[4][6]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][6]~16_combout\ = ( \B[2]~input_o\ & ( (\sll64[2][2]~5_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \sll64[2][6]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][2]~5_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[2][6]~15_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sll64[4][6]~16_combout\);

-- Location: LABCELL_X35_Y37_N4
\srl64[3][46]~117\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][46]~117_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][52]~7_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][48]~5_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][50]~6_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][46]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][46]~13_combout\,
	datab => \ALT_INV_srl64[1][50]~6_combout\,
	datac => \ALT_INV_srl64[1][48]~5_combout\,
	datad => \ALT_INV_srl64[1][52]~7_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][46]~117_combout\);

-- Location: MLABCELL_X39_Y37_N36
\srl64[3][38]~118\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][38]~118_combout\ = ( \srl64[1][44]~12_combout\ & ( \B[1]~input_o\ & ( (\srl64[1][40]~10_combout\) # (\B[2]~input_o\) ) ) ) # ( !\srl64[1][44]~12_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & \srl64[1][40]~10_combout\) ) ) ) # ( 
-- \srl64[1][44]~12_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\srl64[1][38]~18_combout\)) # (\B[2]~input_o\ & ((\srl64[1][42]~11_combout\))) ) ) ) # ( !\srl64[1][44]~12_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\srl64[1][38]~18_combout\)) # (\B[2]~input_o\ & ((\srl64[1][42]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][40]~10_combout\,
	datac => \ALT_INV_srl64[1][38]~18_combout\,
	datad => \ALT_INV_srl64[1][42]~11_combout\,
	datae => \ALT_INV_srl64[1][44]~12_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][38]~118_combout\);

-- Location: MLABCELL_X39_Y34_N24
\srl64[4][38]~119\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][38]~119_combout\ = ( \srl64[3][38]~118_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][46]~117_combout\) ) ) # ( !\srl64[3][38]~118_combout\ & ( (\srl64[3][46]~117_combout\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][46]~117_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][38]~118_combout\,
	combout => \srl64[4][38]~119_combout\);

-- Location: LABCELL_X35_Y37_N10
\srl64[3][54]~120\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][54]~120_combout\ = ( \B[2]~input_o\ & ( \srl64[1][58]~2_combout\ & ( (!\B[1]~input_o\) # (\srl64[1][60]~1_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][58]~2_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][54]~8_combout\))) # (\B[1]~input_o\ & 
-- (\srl64[1][56]~0_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][58]~2_combout\ & ( (\srl64[1][60]~1_combout\ & \B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][58]~2_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][54]~8_combout\))) # 
-- (\B[1]~input_o\ & (\srl64[1][56]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][60]~1_combout\,
	datab => \ALT_INV_srl64[1][56]~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][54]~8_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][58]~2_combout\,
	combout => \srl64[3][54]~120_combout\);

-- Location: LABCELL_X38_Y38_N26
\Mux57~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = ( \srl64[1][62]~3_combout\ & ( \srl64[3][54]~120_combout\ & ( (!\B[3]~input_o\) # (((\sra64[0][63]~0_combout\ & \ShiftFN[0]~input_o\)) # (\Mux61~9_combout\)) ) ) ) # ( !\srl64[1][62]~3_combout\ & ( \srl64[3][54]~120_combout\ & ( 
-- (!\B[3]~input_o\) # ((!\Mux61~9_combout\ & (\sra64[0][63]~0_combout\ & \ShiftFN[0]~input_o\))) ) ) ) # ( \srl64[1][62]~3_combout\ & ( !\srl64[3][54]~120_combout\ & ( (\B[3]~input_o\ & (((\sra64[0][63]~0_combout\ & \ShiftFN[0]~input_o\)) # 
-- (\Mux61~9_combout\))) ) ) ) # ( !\srl64[1][62]~3_combout\ & ( !\srl64[3][54]~120_combout\ & ( (\B[3]~input_o\ & (!\Mux61~9_combout\ & (\sra64[0][63]~0_combout\ & \ShiftFN[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000100010001010110101010101011101011101110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Mux61~9_combout\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_srl64[1][62]~3_combout\,
	dataf => \ALT_INV_srl64[3][54]~120_combout\,
	combout => \Mux57~2_combout\);

-- Location: MLABCELL_X39_Y34_N28
\Mux57~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = ( \Mux57~2_combout\ & ( (!\Mux61~4_combout\ & (\sll64[4][6]~16_combout\)) # (\Mux61~4_combout\ & (((\srl64[4][38]~119_combout\) # (\B[4]~input_o\)))) ) ) # ( !\Mux57~2_combout\ & ( (!\Mux61~4_combout\ & (\sll64[4][6]~16_combout\)) # 
-- (\Mux61~4_combout\ & (((!\B[4]~input_o\ & \srl64[4][38]~119_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001100010101010000110001010101001111110101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][6]~16_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_srl64[4][38]~119_combout\,
	datad => \ALT_INV_Mux61~4_combout\,
	dataf => \ALT_INV_Mux57~2_combout\,
	combout => \Mux57~3_combout\);

-- Location: MLABCELL_X39_Y34_N14
\Mux57~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = ( \Mux61~7_combout\ & ( \Mux57~3_combout\ ) ) # ( !\Mux61~7_combout\ & ( \Mux57~3_combout\ & ( (!\Mux61~3_combout\ & (\A[6]~input_o\ & ((\Mux61~0_combout\)))) # (\Mux61~3_combout\ & (((\A[6]~input_o\ & \Mux61~0_combout\)) # 
-- (\Mux57~1_combout\))) ) ) ) # ( \Mux61~7_combout\ & ( !\Mux57~3_combout\ & ( (!\Mux61~3_combout\ & (\A[6]~input_o\ & ((\Mux61~0_combout\)))) # (\Mux61~3_combout\ & (((\A[6]~input_o\ & \Mux61~0_combout\)) # (\Mux57~1_combout\))) ) ) ) # ( 
-- !\Mux61~7_combout\ & ( !\Mux57~3_combout\ & ( (!\Mux61~3_combout\ & (\A[6]~input_o\ & ((\Mux61~0_combout\)))) # (\Mux61~3_combout\ & (((\A[6]~input_o\ & \Mux61~0_combout\)) # (\Mux57~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~3_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_Mux57~1_combout\,
	datad => \ALT_INV_Mux61~0_combout\,
	datae => \ALT_INV_Mux61~7_combout\,
	dataf => \ALT_INV_Mux57~3_combout\,
	combout => \Mux57~4_combout\);

-- Location: MLABCELL_X42_Y40_N20
\sll64[2][7]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][7]~17_combout\ = ( \A[6]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\A[6]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[4]~input_o\))) ) ) ) # ( \A[6]~input_o\ & ( !\B[1]~input_o\ & ( (\A[7]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][7]~17_combout\);

-- Location: MLABCELL_X39_Y36_N22
\sll64[4][7]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][7]~18_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][7]~17_combout\)) # (\B[2]~input_o\ & ((\sll64[2][3]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][7]~17_combout\,
	datad => \ALT_INV_sll64[2][3]~7_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][7]~18_combout\);

-- Location: LABCELL_X43_Y40_N16
\srl64[3][39]~125\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][39]~125_combout\ = ( \srl64[1][45]~75_combout\ & ( \srl64[1][39]~81_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\srl64[1][41]~73_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][43]~74_combout\))) ) ) ) # ( 
-- !\srl64[1][45]~75_combout\ & ( \srl64[1][39]~81_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\srl64[1][41]~73_combout\)))) # (\B[2]~input_o\ & (\srl64[1][43]~74_combout\ & ((!\B[1]~input_o\)))) ) ) ) # ( \srl64[1][45]~75_combout\ & ( 
-- !\srl64[1][39]~81_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][41]~73_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][43]~74_combout\))) ) ) ) # ( !\srl64[1][45]~75_combout\ & ( !\srl64[1][39]~81_combout\ & ( 
-- (!\B[2]~input_o\ & (((\srl64[1][41]~73_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & (\srl64[1][43]~74_combout\ & ((!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][43]~74_combout\,
	datab => \ALT_INV_srl64[1][41]~73_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][45]~75_combout\,
	dataf => \ALT_INV_srl64[1][39]~81_combout\,
	combout => \srl64[3][39]~125_combout\);

-- Location: LABCELL_X43_Y40_N34
\srl64[3][47]~124\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][47]~124_combout\ = ( \B[2]~input_o\ & ( \srl64[1][53]~70_combout\ & ( (\srl64[1][51]~69_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][53]~70_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][47]~76_combout\))) # (\B[1]~input_o\ 
-- & (\srl64[1][49]~68_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][53]~70_combout\ & ( (!\B[1]~input_o\ & \srl64[1][51]~69_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][53]~70_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][47]~76_combout\))) # 
-- (\B[1]~input_o\ & (\srl64[1][49]~68_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][49]~68_combout\,
	datac => \ALT_INV_srl64[1][47]~76_combout\,
	datad => \ALT_INV_srl64[1][51]~69_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][53]~70_combout\,
	combout => \srl64[3][47]~124_combout\);

-- Location: LABCELL_X40_Y40_N28
\srl64[4][39]~126\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][39]~126_combout\ = ( \B[3]~input_o\ & ( \srl64[3][47]~124_combout\ ) ) # ( !\B[3]~input_o\ & ( \srl64[3][39]~125_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[3][39]~125_combout\,
	datad => \ALT_INV_srl64[3][47]~124_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[4][39]~126_combout\);

-- Location: MLABCELL_X39_Y40_N22
\srl64[3][55]~127\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][55]~127_combout\ = ( \B[1]~input_o\ & ( \srl64[1][57]~66_combout\ & ( (!\B[2]~input_o\) # (\srl64[1][61]~63_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][57]~66_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][55]~71_combout\)) # (\B[2]~input_o\ & 
-- ((\srl64[1][59]~65_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][57]~66_combout\ & ( (\srl64[1][61]~63_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][57]~66_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][55]~71_combout\)) # 
-- (\B[2]~input_o\ & ((\srl64[1][59]~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][61]~63_combout\,
	datab => \ALT_INV_srl64[1][55]~71_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][59]~65_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][57]~66_combout\,
	combout => \srl64[3][55]~127_combout\);

-- Location: LABCELL_X40_Y36_N34
\Mux56~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = ( \B[3]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \sra64[0][63]~0_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \srl64[3][55]~127_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (\Mux61~9_combout\ & 
-- (!\B[0]~input_o\ & \sra64[0][63]~0_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \srl64[3][55]~127_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000011000001010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][55]~127_combout\,
	datab => \ALT_INV_Mux61~9_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux56~2_combout\);

-- Location: LABCELL_X40_Y36_N18
\Mux56~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = ( \Mux61~4_combout\ & ( (!\B[4]~input_o\ & (\srl64[4][39]~126_combout\)) # (\B[4]~input_o\ & ((\Mux56~2_combout\))) ) ) # ( !\Mux61~4_combout\ & ( \sll64[4][7]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_sll64[4][7]~18_combout\,
	datac => \ALT_INV_srl64[4][39]~126_combout\,
	datad => \ALT_INV_Mux56~2_combout\,
	dataf => \ALT_INV_Mux61~4_combout\,
	combout => \Mux56~3_combout\);

-- Location: MLABCELL_X44_Y40_N28
\srl64[3][15]~121\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][15]~121_combout\ = ( \B[2]~input_o\ & ( \srl64[1][17]~52_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][19]~53_combout\)) # (\B[1]~input_o\ & ((\srl64[1][21]~54_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][17]~52_combout\ & ( 
-- (\srl64[1][15]~50_combout\) # (\B[1]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][17]~52_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][19]~53_combout\)) # (\B[1]~input_o\ & ((\srl64[1][21]~54_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\srl64[1][17]~52_combout\ & ( (!\B[1]~input_o\ & \srl64[1][15]~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][19]~53_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][15]~50_combout\,
	datad => \ALT_INV_srl64[1][21]~54_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][17]~52_combout\,
	combout => \srl64[3][15]~121_combout\);

-- Location: MLABCELL_X44_Y40_N14
\srl64[3][23]~122\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][23]~122_combout\ = ( \B[2]~input_o\ & ( \srl64[1][23]~55_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][27]~58_combout\)) # (\B[1]~input_o\ & ((\srl64[1][29]~59_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][23]~55_combout\ & ( 
-- (!\B[1]~input_o\) # (\srl64[1][25]~57_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][23]~55_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][27]~58_combout\)) # (\B[1]~input_o\ & ((\srl64[1][29]~59_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\srl64[1][23]~55_combout\ & ( (\srl64[1][25]~57_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][25]~57_combout\,
	datab => \ALT_INV_srl64[1][27]~58_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][29]~59_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][23]~55_combout\,
	combout => \srl64[3][23]~122_combout\);

-- Location: MLABCELL_X44_Y40_N36
\srl64[3][31]~123\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][31]~123_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][37]~80_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \srl64[1][33]~78_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][35]~79_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \srl64[1][31]~60_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][31]~60_combout\,
	datab => \ALT_INV_srl64[1][35]~79_combout\,
	datac => \ALT_INV_srl64[1][33]~78_combout\,
	datad => \ALT_INV_srl64[1][37]~80_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[3][31]~123_combout\);

-- Location: LABCELL_X45_Y40_N16
\Mux56~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = ( \srl64[1][11]~48_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & ((\srl64[1][9]~47_combout\))) # (\B[2]~input_o\ & (\srl64[1][13]~49_combout\)) ) ) ) # ( !\srl64[1][11]~48_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\srl64[1][9]~47_combout\))) # (\B[2]~input_o\ & (\srl64[1][13]~49_combout\)) ) ) ) # ( \srl64[1][11]~48_combout\ & ( !\B[1]~input_o\ & ( (\B[2]~input_o\) # (\srl64[1][7]~45_combout\) ) ) ) # ( !\srl64[1][11]~48_combout\ & ( !\B[1]~input_o\ & ( 
-- (\srl64[1][7]~45_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][7]~45_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][13]~49_combout\,
	datad => \ALT_INV_srl64[1][9]~47_combout\,
	datae => \ALT_INV_srl64[1][11]~48_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LABCELL_X40_Y40_N6
\Mux56~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = ( \B[4]~input_o\ & ( \Mux56~0_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][23]~122_combout\)) # (\B[3]~input_o\ & ((\srl64[3][31]~123_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \Mux56~0_combout\ & ( (!\B[3]~input_o\) # 
-- (\srl64[3][15]~121_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Mux56~0_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][23]~122_combout\)) # (\B[3]~input_o\ & ((\srl64[3][31]~123_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( !\Mux56~0_combout\ & ( 
-- (\srl64[3][15]~121_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][15]~121_combout\,
	datab => \ALT_INV_srl64[3][23]~122_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][31]~123_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Mux56~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: LABCELL_X40_Y36_N2
\Mux56~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = ( \Mux56~1_combout\ & ( \Mux61~7_combout\ & ( (((\Mux61~0_combout\ & \A[7]~input_o\)) # (\Mux61~3_combout\)) # (\Mux56~3_combout\) ) ) ) # ( !\Mux56~1_combout\ & ( \Mux61~7_combout\ & ( ((\Mux61~0_combout\ & \A[7]~input_o\)) # 
-- (\Mux56~3_combout\) ) ) ) # ( \Mux56~1_combout\ & ( !\Mux61~7_combout\ & ( ((\Mux61~0_combout\ & \A[7]~input_o\)) # (\Mux61~3_combout\) ) ) ) # ( !\Mux56~1_combout\ & ( !\Mux61~7_combout\ & ( (\Mux61~0_combout\ & \A[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011111101010101011101110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux56~3_combout\,
	datab => \ALT_INV_Mux61~0_combout\,
	datac => \ALT_INV_Mux61~3_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_Mux56~1_combout\,
	dataf => \ALT_INV_Mux61~7_combout\,
	combout => \Mux56~4_combout\);

-- Location: MLABCELL_X42_Y39_N26
\Mux55~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = ( \srl64[3][32]~19_combout\ & ( \srl64[3][16]~35_combout\ & ( ((!\B[4]~input_o\ & (\srl64[3][8]~30_combout\)) # (\B[4]~input_o\ & ((\srl64[3][24]~40_combout\)))) # (\B[3]~input_o\) ) ) ) # ( !\srl64[3][32]~19_combout\ & ( 
-- \srl64[3][16]~35_combout\ & ( (!\B[4]~input_o\ & (((\srl64[3][8]~30_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & (!\B[3]~input_o\ & ((\srl64[3][24]~40_combout\)))) ) ) ) # ( \srl64[3][32]~19_combout\ & ( !\srl64[3][16]~35_combout\ & ( 
-- (!\B[4]~input_o\ & (!\B[3]~input_o\ & (\srl64[3][8]~30_combout\))) # (\B[4]~input_o\ & (((\srl64[3][24]~40_combout\)) # (\B[3]~input_o\))) ) ) ) # ( !\srl64[3][32]~19_combout\ & ( !\srl64[3][16]~35_combout\ & ( (!\B[3]~input_o\ & ((!\B[4]~input_o\ & 
-- (\srl64[3][8]~30_combout\)) # (\B[4]~input_o\ & ((\srl64[3][24]~40_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][8]~30_combout\,
	datad => \ALT_INV_srl64[3][24]~40_combout\,
	datae => \ALT_INV_srl64[3][32]~19_combout\,
	dataf => \ALT_INV_srl64[3][16]~35_combout\,
	combout => \Mux55~0_combout\);

-- Location: MLABCELL_X37_Y36_N10
\Mux55~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = ( \srl64[3][56]~4_combout\ & ( (!\B[3]~input_o\) # ((\ShiftFN[0]~input_o\ & \sra64[0][63]~0_combout\)) ) ) # ( !\srl64[3][56]~4_combout\ & ( (\B[3]~input_o\ & (\ShiftFN[0]~input_o\ & \sra64[0][63]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_srl64[3][56]~4_combout\,
	combout => \Mux55~1_combout\);

-- Location: LABCELL_X35_Y39_N34
\srl64[4][40]~128\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][40]~128_combout\ = ( \B[3]~input_o\ & ( \srl64[3][48]~9_combout\ ) ) # ( !\B[3]~input_o\ & ( \srl64[3][40]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[3][48]~9_combout\,
	datad => \ALT_INV_srl64[3][40]~14_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[4][40]~128_combout\);

-- Location: MLABCELL_X42_Y40_N6
\sll64[2][8]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][8]~19_combout\ = ( \A[6]~input_o\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[8]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[5]~input_o\))) ) ) ) # ( !\A[6]~input_o\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\ 
-- & (((\A[8]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[5]~input_o\))) ) ) ) # ( \A[6]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[8]~input_o\)))) # (\B[0]~input_o\ & (\A[5]~input_o\ & 
-- ((\B[1]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & (((\A[8]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[5]~input_o\ & ((\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \sll64[2][8]~19_combout\);

-- Location: MLABCELL_X37_Y36_N8
\sll64[4][8]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][8]~20_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \sll64[2][4]~10_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\sll64[2][8]~19_combout\)) # (\B[3]~input_o\ & ((\sll64[2][0]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][8]~19_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[2][0]~9_combout\,
	datad => \ALT_INV_sll64[2][4]~10_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sll64[4][8]~20_combout\);

-- Location: MLABCELL_X42_Y39_N30
\Mux55~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = ( \B[4]~input_o\ & ( (!\Mux61~4_combout\ & ((\sll64[4][8]~20_combout\))) # (\Mux61~4_combout\ & (\Mux55~1_combout\)) ) ) # ( !\B[4]~input_o\ & ( (!\Mux61~4_combout\ & ((\sll64[4][8]~20_combout\))) # (\Mux61~4_combout\ & 
-- (\srl64[4][40]~128_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux55~1_combout\,
	datab => \ALT_INV_Mux61~4_combout\,
	datac => \ALT_INV_srl64[4][40]~128_combout\,
	datad => \ALT_INV_sll64[4][8]~20_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux55~2_combout\);

-- Location: LABCELL_X40_Y36_N6
\Mux55~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = ( \Mux61~0_combout\ & ( \A[8]~input_o\ ) ) # ( !\Mux61~0_combout\ & ( \A[8]~input_o\ & ( (!\Mux55~0_combout\ & (\Mux61~7_combout\ & ((\Mux55~2_combout\)))) # (\Mux55~0_combout\ & (((\Mux61~7_combout\ & \Mux55~2_combout\)) # 
-- (\Mux61~3_combout\))) ) ) ) # ( \Mux61~0_combout\ & ( !\A[8]~input_o\ & ( (!\Mux55~0_combout\ & (\Mux61~7_combout\ & ((\Mux55~2_combout\)))) # (\Mux55~0_combout\ & (((\Mux61~7_combout\ & \Mux55~2_combout\)) # (\Mux61~3_combout\))) ) ) ) # ( 
-- !\Mux61~0_combout\ & ( !\A[8]~input_o\ & ( (!\Mux55~0_combout\ & (\Mux61~7_combout\ & ((\Mux55~2_combout\)))) # (\Mux55~0_combout\ & (((\Mux61~7_combout\ & \Mux55~2_combout\)) # (\Mux61~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux55~0_combout\,
	datab => \ALT_INV_Mux61~7_combout\,
	datac => \ALT_INV_Mux61~3_combout\,
	datad => \ALT_INV_Mux55~2_combout\,
	datae => \ALT_INV_Mux61~0_combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Mux55~3_combout\);

-- Location: LABCELL_X43_Y38_N22
\Mux54~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = ( \B[3]~input_o\ & ( \srl64[3][17]~56_combout\ & ( (!\B[4]~input_o\) # (\srl64[3][33]~82_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \srl64[3][17]~56_combout\ & ( (!\B[4]~input_o\ & ((\srl64[3][9]~51_combout\))) # (\B[4]~input_o\ & 
-- (\srl64[3][25]~61_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\srl64[3][17]~56_combout\ & ( (\srl64[3][33]~82_combout\ & \B[4]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\srl64[3][17]~56_combout\ & ( (!\B[4]~input_o\ & ((\srl64[3][9]~51_combout\))) # 
-- (\B[4]~input_o\ & (\srl64[3][25]~61_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][33]~82_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_srl64[3][25]~61_combout\,
	datad => \ALT_INV_srl64[3][9]~51_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][17]~56_combout\,
	combout => \Mux54~0_combout\);

-- Location: MLABCELL_X42_Y40_N28
\sll64[2][9]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][9]~21_combout\ = ( \A[6]~input_o\ & ( \A[7]~input_o\ & ( ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))))) # 
-- (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \sll64[2][9]~21_combout\);

-- Location: LABCELL_X40_Y38_N26
\sll64[4][9]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][9]~22_combout\ = ( \sll64[2][5]~13_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)) # (\sll64[2][9]~21_combout\))) # (\B[3]~input_o\ & (((!\B[2]~input_o\ & \sll64[2][1]~12_combout\)))) ) ) # ( !\sll64[2][5]~13_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\B[3]~input_o\ & (\sll64[2][9]~21_combout\)) # (\B[3]~input_o\ & ((\sll64[2][1]~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000101010011110100010101001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[2][9]~21_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][1]~12_combout\,
	dataf => \ALT_INV_sll64[2][5]~13_combout\,
	combout => \sll64[4][9]~22_combout\);

-- Location: LABCELL_X43_Y38_N4
\srl64[4][41]~129\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][41]~129_combout\ = ( \srl64[3][41]~77_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][49]~72_combout\) ) ) # ( !\srl64[3][41]~77_combout\ & ( (\B[3]~input_o\ & \srl64[3][49]~72_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][49]~72_combout\,
	dataf => \ALT_INV_srl64[3][41]~77_combout\,
	combout => \srl64[4][41]~129_combout\);

-- Location: LABCELL_X43_Y38_N8
\Mux54~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[3]~input_o\ & ((\sra64[3][57]~1_combout\))) # (\B[3]~input_o\ & (\sra64[0][63]~0_combout\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\B[3]~input_o\ & \srl64[3][57]~67_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_sra64[3][57]~1_combout\,
	datad => \ALT_INV_srl64[3][57]~67_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux54~1_combout\);

-- Location: LABCELL_X43_Y38_N12
\Mux54~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = ( \Mux61~4_combout\ & ( (!\B[4]~input_o\ & (\srl64[4][41]~129_combout\)) # (\B[4]~input_o\ & ((\Mux54~1_combout\))) ) ) # ( !\Mux61~4_combout\ & ( \sll64[4][9]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][9]~22_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_srl64[4][41]~129_combout\,
	datad => \ALT_INV_Mux54~1_combout\,
	dataf => \ALT_INV_Mux61~4_combout\,
	combout => \Mux54~2_combout\);

-- Location: MLABCELL_X39_Y39_N22
\Mux54~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = ( \Mux54~2_combout\ & ( \A[9]~input_o\ & ( (((\Mux61~3_combout\ & \Mux54~0_combout\)) # (\Mux61~0_combout\)) # (\Mux61~7_combout\) ) ) ) # ( !\Mux54~2_combout\ & ( \A[9]~input_o\ & ( ((\Mux61~3_combout\ & \Mux54~0_combout\)) # 
-- (\Mux61~0_combout\) ) ) ) # ( \Mux54~2_combout\ & ( !\A[9]~input_o\ & ( ((\Mux61~3_combout\ & \Mux54~0_combout\)) # (\Mux61~7_combout\) ) ) ) # ( !\Mux54~2_combout\ & ( !\A[9]~input_o\ & ( (\Mux61~3_combout\ & \Mux54~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110101011100000011111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~7_combout\,
	datab => \ALT_INV_Mux61~3_combout\,
	datac => \ALT_INV_Mux54~0_combout\,
	datad => \ALT_INV_Mux61~0_combout\,
	datae => \ALT_INV_Mux54~2_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Mux54~3_combout\);

-- Location: MLABCELL_X42_Y40_N14
\sll64[2][10]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][10]~23_combout\ = ( \A[8]~input_o\ & ( \A[7]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) # 
-- (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \sll64[2][10]~23_combout\);

-- Location: MLABCELL_X42_Y34_N22
\sll64[4][10]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][10]~24_combout\ = ( \sll64[2][6]~15_combout\ & ( (!\B[3]~input_o\ & (((\sll64[2][10]~23_combout\) # (\B[2]~input_o\)))) # (\B[3]~input_o\ & (\sll64[2][2]~5_combout\ & (!\B[2]~input_o\))) ) ) # ( !\sll64[2][6]~15_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\B[3]~input_o\ & ((\sll64[2][10]~23_combout\))) # (\B[3]~input_o\ & (\sll64[2][2]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011100110111000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][2]~5_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][10]~23_combout\,
	dataf => \ALT_INV_sll64[2][6]~15_combout\,
	combout => \sll64[4][10]~24_combout\);

-- Location: LABCELL_X35_Y37_N20
\srl64[3][58]~131\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][58]~131_combout\ = ( \srl64[1][58]~2_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][62]~3_combout\))) # (\B[1]~input_o\ & (((!\B[2]~input_o\ & \srl64[1][60]~1_combout\)))) ) ) # ( !\srl64[1][58]~2_combout\ & ( (!\B[1]~input_o\ 
-- & (\srl64[1][62]~3_combout\ & (\B[2]~input_o\))) # (\B[1]~input_o\ & (((!\B[2]~input_o\ & \srl64[1][60]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001000011010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][62]~3_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][60]~1_combout\,
	dataf => \ALT_INV_srl64[1][58]~2_combout\,
	combout => \srl64[3][58]~131_combout\);

-- Location: LABCELL_X35_Y37_N32
\sra64[3][58]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][58]~4_combout\ = ( \B[2]~input_o\ & ( \srl64[1][58]~2_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][62]~3_combout\)) # (\B[1]~input_o\ & ((\sra64[0][63]~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][58]~2_combout\ & ( (!\B[1]~input_o\) # 
-- (\srl64[1][60]~1_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][58]~2_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][62]~3_combout\)) # (\B[1]~input_o\ & ((\sra64[0][63]~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][58]~2_combout\ & ( 
-- (\B[1]~input_o\ & \srl64[1][60]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][62]~3_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][60]~1_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][58]~2_combout\,
	combout => \sra64[3][58]~4_combout\);

-- Location: MLABCELL_X39_Y38_N4
\sra64[4][58]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[4][58]~5_combout\ = ( \B[3]~input_o\ & ( \sra64[0][63]~0_combout\ ) ) # ( !\B[3]~input_o\ & ( \sra64[3][58]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sra64[3][58]~4_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sra64[4][58]~5_combout\);

-- Location: LABCELL_X38_Y37_N38
\srl64[4][42]~130\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][42]~130_combout\ = ( \B[3]~input_o\ & ( \srl64[3][50]~90_combout\ ) ) # ( !\B[3]~input_o\ & ( \srl64[3][42]~87_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[3][50]~90_combout\,
	datad => \ALT_INV_srl64[3][42]~87_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[4][42]~130_combout\);

-- Location: MLABCELL_X37_Y37_N20
\Mux53~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = ( \sra64[4][58]~5_combout\ & ( \srl64[4][42]~130_combout\ & ( (!\B[4]~input_o\) # (((\srl64[3][58]~131_combout\ & !\B[3]~input_o\)) # (\ShiftFN[0]~input_o\)) ) ) ) # ( !\sra64[4][58]~5_combout\ & ( \srl64[4][42]~130_combout\ & ( 
-- (!\B[4]~input_o\) # ((\srl64[3][58]~131_combout\ & (!\ShiftFN[0]~input_o\ & !\B[3]~input_o\))) ) ) ) # ( \sra64[4][58]~5_combout\ & ( !\srl64[4][42]~130_combout\ & ( (\B[4]~input_o\ & (((\srl64[3][58]~131_combout\ & !\B[3]~input_o\)) # 
-- (\ShiftFN[0]~input_o\))) ) ) ) # ( !\sra64[4][58]~5_combout\ & ( !\srl64[4][42]~130_combout\ & ( (\B[4]~input_o\ & (\srl64[3][58]~131_combout\ & (!\ShiftFN[0]~input_o\ & !\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000101010000010110111010101010101011111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_srl64[3][58]~131_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sra64[4][58]~5_combout\,
	dataf => \ALT_INV_srl64[4][42]~130_combout\,
	combout => \Mux53~0_combout\);

-- Location: LABCELL_X38_Y37_N4
\Mux53~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = ( \B[3]~input_o\ & ( \srl64[3][10]~84_combout\ & ( (!\B[4]~input_o\ & ((\srl64[3][18]~85_combout\))) # (\B[4]~input_o\ & (\srl64[3][34]~88_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \srl64[3][10]~84_combout\ & ( (!\B[4]~input_o\) # 
-- (\srl64[3][26]~86_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\srl64[3][10]~84_combout\ & ( (!\B[4]~input_o\ & ((\srl64[3][18]~85_combout\))) # (\B[4]~input_o\ & (\srl64[3][34]~88_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\srl64[3][10]~84_combout\ & ( 
-- (\srl64[3][26]~86_combout\ & \B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][34]~88_combout\,
	datab => \ALT_INV_srl64[3][18]~85_combout\,
	datac => \ALT_INV_srl64[3][26]~86_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][10]~84_combout\,
	combout => \Mux53~1_combout\);

-- Location: MLABCELL_X37_Y37_N24
\Mux53~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = ( \Mux53~1_combout\ & ( ((\Mux61~0_combout\ & \A[10]~input_o\)) # (\Mux61~3_combout\) ) ) # ( !\Mux53~1_combout\ & ( (\Mux61~0_combout\ & \A[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux61~3_combout\,
	datac => \ALT_INV_Mux61~0_combout\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_Mux53~1_combout\,
	combout => \Mux53~2_combout\);

-- Location: MLABCELL_X37_Y37_N28
\Mux53~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = ( \Mux53~2_combout\ ) # ( !\Mux53~2_combout\ & ( (\Mux61~7_combout\ & ((!\Mux61~4_combout\ & (\sll64[4][10]~24_combout\)) # (\Mux61~4_combout\ & ((\Mux53~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~4_combout\,
	datab => \ALT_INV_sll64[4][10]~24_combout\,
	datac => \ALT_INV_Mux53~0_combout\,
	datad => \ALT_INV_Mux61~7_combout\,
	dataf => \ALT_INV_Mux53~2_combout\,
	combout => \Mux53~3_combout\);

-- Location: LABCELL_X38_Y40_N8
\srl64[4][43]~132\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][43]~132_combout\ = ( \srl64[3][43]~94_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][51]~97_combout\) ) ) # ( !\srl64[3][43]~94_combout\ & ( (\srl64[3][51]~97_combout\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][51]~97_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][43]~94_combout\,
	combout => \srl64[4][43]~132_combout\);

-- Location: MLABCELL_X42_Y40_N38
\sll64[2][11]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][11]~25_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (\A[10]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ 
-- & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][11]~25_combout\);

-- Location: MLABCELL_X39_Y36_N20
\sll64[4][11]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][11]~26_combout\ = ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \sll64[2][3]~7_combout\) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][11]~25_combout\))) # (\B[2]~input_o\ & (\sll64[2][7]~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][7]~17_combout\,
	datac => \ALT_INV_sll64[2][3]~7_combout\,
	datad => \ALT_INV_sll64[2][11]~25_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][11]~26_combout\);

-- Location: MLABCELL_X39_Y40_N26
\sra64[4][59]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[4][59]~6_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \sra64[0][63]~0_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \sra64[0][63]~0_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\srl64[1][61]~63_combout\)) # (\B[3]~input_o\ & ((\sra64[0][63]~0_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\srl64[1][59]~65_combout\))) # (\B[3]~input_o\ & (\sra64[0][63]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100110101001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][61]~63_combout\,
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[1][59]~65_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sra64[4][59]~6_combout\);

-- Location: MLABCELL_X42_Y37_N22
\srl64[3][59]~133\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][59]~133_combout\ = ( \B[2]~input_o\ & ( \A[63]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & ((!\ExtWord~input_o\) # (\A[31]~input_o\)))) ) ) ) # ( \B[2]~input_o\ & ( !\A[63]~input_o\ & ( (\A[31]~input_o\ & (!\B[1]~input_o\ & 
-- (!\B[0]~input_o\ & \ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000001100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \srl64[3][59]~133_combout\);

-- Location: MLABCELL_X37_Y40_N6
\srl64[3][59]~134\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][59]~134_combout\ = ( \srl64[1][61]~63_combout\ & ( (!\srl64[3][59]~133_combout\ & (((!\B[1]~input_o\ & !\srl64[1][59]~65_combout\)) # (\B[2]~input_o\))) ) ) # ( !\srl64[1][61]~63_combout\ & ( (!\srl64[3][59]~133_combout\ & 
-- (((!\srl64[1][59]~65_combout\) # (\B[1]~input_o\)) # (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110000111100000111000011010000010100001101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[3][59]~133_combout\,
	datad => \ALT_INV_srl64[1][59]~65_combout\,
	dataf => \ALT_INV_srl64[1][61]~63_combout\,
	combout => \srl64[3][59]~134_combout\);

-- Location: MLABCELL_X37_Y40_N28
\Mux52~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = ( \srl64[3][59]~134_combout\ & ( (\sra64[4][59]~6_combout\ & \ShiftFN[0]~input_o\) ) ) # ( !\srl64[3][59]~134_combout\ & ( (!\ShiftFN[0]~input_o\ & ((!\B[3]~input_o\))) # (\ShiftFN[0]~input_o\ & (\sra64[4][59]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101111101010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[4][59]~6_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][59]~134_combout\,
	combout => \Mux52~1_combout\);

-- Location: LABCELL_X38_Y40_N0
\Mux52~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = ( \Mux52~1_combout\ & ( (!\Mux61~4_combout\ & (((\sll64[4][11]~26_combout\)))) # (\Mux61~4_combout\ & (((\B[4]~input_o\)) # (\srl64[4][43]~132_combout\))) ) ) # ( !\Mux52~1_combout\ & ( (!\Mux61~4_combout\ & 
-- (((\sll64[4][11]~26_combout\)))) # (\Mux61~4_combout\ & (\srl64[4][43]~132_combout\ & ((!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010000001100110101000000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[4][43]~132_combout\,
	datab => \ALT_INV_sll64[4][11]~26_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Mux61~4_combout\,
	dataf => \ALT_INV_Mux52~1_combout\,
	combout => \Mux52~2_combout\);

-- Location: LABCELL_X38_Y40_N38
\Mux52~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = ( \B[4]~input_o\ & ( \B[3]~input_o\ & ( \srl64[3][35]~95_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[3]~input_o\ & ( \srl64[3][19]~92_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[3]~input_o\ & ( \srl64[3][27]~93_combout\ ) ) ) # ( 
-- !\B[4]~input_o\ & ( !\B[3]~input_o\ & ( \srl64[3][11]~91_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][27]~93_combout\,
	datab => \ALT_INV_srl64[3][11]~91_combout\,
	datac => \ALT_INV_srl64[3][35]~95_combout\,
	datad => \ALT_INV_srl64[3][19]~92_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: LABCELL_X38_Y40_N24
\Mux52~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = ( \Mux61~0_combout\ & ( \Mux61~7_combout\ & ( (((\Mux52~0_combout\ & \Mux61~3_combout\)) # (\A[11]~input_o\)) # (\Mux52~2_combout\) ) ) ) # ( !\Mux61~0_combout\ & ( \Mux61~7_combout\ & ( ((\Mux52~0_combout\ & \Mux61~3_combout\)) # 
-- (\Mux52~2_combout\) ) ) ) # ( \Mux61~0_combout\ & ( !\Mux61~7_combout\ & ( ((\Mux52~0_combout\ & \Mux61~3_combout\)) # (\A[11]~input_o\) ) ) ) # ( !\Mux61~0_combout\ & ( !\Mux61~7_combout\ & ( (\Mux52~0_combout\ & \Mux61~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110011111101010101010111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux52~2_combout\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_Mux52~0_combout\,
	datad => \ALT_INV_Mux61~3_combout\,
	datae => \ALT_INV_Mux61~0_combout\,
	dataf => \ALT_INV_Mux61~7_combout\,
	combout => \Mux52~3_combout\);

-- Location: MLABCELL_X39_Y39_N4
\Mux51~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = ( \A[12]~input_o\ & ( \Mux61~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux61~0_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LABCELL_X38_Y39_N6
\sra64[4][59]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[4][59]~7_combout\ = ( \ExtWord~input_o\ & ( (\A[31]~input_o\ & ((\B[2]~input_o\) # (\B[3]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( (\A[63]~input_o\ & ((\B[2]~input_o\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sra64[4][59]~7_combout\);

-- Location: LABCELL_X38_Y39_N28
\Mux51~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = ( \sll64[4][2]~4_combout\ & ( \srl64[1][60]~1_combout\ & ( ((!\B[1]~input_o\) # ((\sra64[4][59]~7_combout\ & \ShiftFN[0]~input_o\))) # (\srl64[1][62]~3_combout\) ) ) ) # ( !\sll64[4][2]~4_combout\ & ( \srl64[1][60]~1_combout\ & ( 
-- (\sra64[4][59]~7_combout\ & \ShiftFN[0]~input_o\) ) ) ) # ( \sll64[4][2]~4_combout\ & ( !\srl64[1][60]~1_combout\ & ( (!\sra64[4][59]~7_combout\ & (\srl64[1][62]~3_combout\ & (\B[1]~input_o\))) # (\sra64[4][59]~7_combout\ & (((\srl64[1][62]~3_combout\ & 
-- \B[1]~input_o\)) # (\ShiftFN[0]~input_o\))) ) ) ) # ( !\sll64[4][2]~4_combout\ & ( !\srl64[1][60]~1_combout\ & ( (\sra64[4][59]~7_combout\ & \ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000110101011100000000010101011111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[4][59]~7_combout\,
	datab => \ALT_INV_srl64[1][62]~3_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_sll64[4][2]~4_combout\,
	dataf => \ALT_INV_srl64[1][60]~1_combout\,
	combout => \Mux51~3_combout\);

-- Location: MLABCELL_X39_Y39_N14
\Mux51~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = ( \Mux61~4_combout\ & ( \Mux51~3_combout\ & ( ((!\B[3]~input_o\ & ((\srl64[3][44]~101_combout\))) # (\B[3]~input_o\ & (\srl64[3][52]~104_combout\))) # (\B[4]~input_o\) ) ) ) # ( \Mux61~4_combout\ & ( !\Mux51~3_combout\ & ( 
-- (!\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\srl64[3][44]~101_combout\))) # (\B[3]~input_o\ & (\srl64[3][52]~104_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000100010000000000000000000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][52]~104_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_srl64[3][44]~101_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_Mux61~4_combout\,
	dataf => \ALT_INV_Mux51~3_combout\,
	combout => \Mux51~4_combout\);

-- Location: MLABCELL_X37_Y39_N32
\Mux51~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = ( \srl64[3][20]~99_combout\ & ( \srl64[3][28]~100_combout\ & ( (!\B[4]~input_o\ & (((\srl64[3][12]~98_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & ((!\B[3]~input_o\) # ((\srl64[3][36]~102_combout\)))) ) ) ) # ( 
-- !\srl64[3][20]~99_combout\ & ( \srl64[3][28]~100_combout\ & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & (\srl64[3][12]~98_combout\))) # (\B[4]~input_o\ & ((!\B[3]~input_o\) # ((\srl64[3][36]~102_combout\)))) ) ) ) # ( \srl64[3][20]~99_combout\ & ( 
-- !\srl64[3][28]~100_combout\ & ( (!\B[4]~input_o\ & (((\srl64[3][12]~98_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & (\B[3]~input_o\ & ((\srl64[3][36]~102_combout\)))) ) ) ) # ( !\srl64[3][20]~99_combout\ & ( !\srl64[3][28]~100_combout\ & ( 
-- (!\B[4]~input_o\ & (!\B[3]~input_o\ & (\srl64[3][12]~98_combout\))) # (\B[4]~input_o\ & (\B[3]~input_o\ & ((\srl64[3][36]~102_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][12]~98_combout\,
	datad => \ALT_INV_srl64[3][36]~102_combout\,
	datae => \ALT_INV_srl64[3][20]~99_combout\,
	dataf => \ALT_INV_srl64[3][28]~100_combout\,
	combout => \Mux51~1_combout\);

-- Location: MLABCELL_X44_Y39_N26
\sll64[2][12]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][12]~27_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ 
-- & (\A[9]~input_o\)) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (\A[12]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][12]~27_combout\);

-- Location: MLABCELL_X37_Y36_N14
\sll64[4][12]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][12]~28_combout\ = ( \sll64[2][4]~10_combout\ & ( \sll64[2][8]~19_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)) # (\sll64[2][12]~27_combout\))) # (\B[3]~input_o\ & (((!\B[2]~input_o\) # (\sll64[2][0]~9_combout\)))) ) ) ) # ( 
-- !\sll64[2][4]~10_combout\ & ( \sll64[2][8]~19_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)) # (\sll64[2][12]~27_combout\))) # (\B[3]~input_o\ & (((\B[2]~input_o\ & \sll64[2][0]~9_combout\)))) ) ) ) # ( \sll64[2][4]~10_combout\ & ( 
-- !\sll64[2][8]~19_combout\ & ( (!\B[3]~input_o\ & (\sll64[2][12]~27_combout\ & (!\B[2]~input_o\))) # (\B[3]~input_o\ & (((!\B[2]~input_o\) # (\sll64[2][0]~9_combout\)))) ) ) ) # ( !\sll64[2][4]~10_combout\ & ( !\sll64[2][8]~19_combout\ & ( (!\B[3]~input_o\ 
-- & (\sll64[2][12]~27_combout\ & (!\B[2]~input_o\))) # (\B[3]~input_o\ & (((\B[2]~input_o\ & \sll64[2][0]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][12]~27_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][0]~9_combout\,
	datae => \ALT_INV_sll64[2][4]~10_combout\,
	dataf => \ALT_INV_sll64[2][8]~19_combout\,
	combout => \sll64[4][12]~28_combout\);

-- Location: MLABCELL_X39_Y39_N10
\Mux51~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\sll64[4][12]~28_combout\ & !\Mux61~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][12]~28_combout\,
	datac => \ALT_INV_Mux61~4_combout\,
	combout => \Mux51~2_combout\);

-- Location: MLABCELL_X39_Y39_N38
\Mux51~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~5_combout\ = ( \Mux61~7_combout\ & ( \Mux51~2_combout\ ) ) # ( !\Mux61~7_combout\ & ( \Mux51~2_combout\ & ( ((\Mux61~3_combout\ & \Mux51~1_combout\)) # (\Mux51~0_combout\) ) ) ) # ( \Mux61~7_combout\ & ( !\Mux51~2_combout\ & ( (((\Mux61~3_combout\ 
-- & \Mux51~1_combout\)) # (\Mux51~4_combout\)) # (\Mux51~0_combout\) ) ) ) # ( !\Mux61~7_combout\ & ( !\Mux51~2_combout\ & ( ((\Mux61~3_combout\ & \Mux51~1_combout\)) # (\Mux51~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010111110111111101010101011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux51~0_combout\,
	datab => \ALT_INV_Mux61~3_combout\,
	datac => \ALT_INV_Mux51~4_combout\,
	datad => \ALT_INV_Mux51~1_combout\,
	datae => \ALT_INV_Mux61~7_combout\,
	dataf => \ALT_INV_Mux51~2_combout\,
	combout => \Mux51~5_combout\);

-- Location: MLABCELL_X39_Y40_N8
\sra64[4][61]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[4][61]~8_combout\ = ( \B[3]~input_o\ & ( \sra64[0][63]~0_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\Mux61~9_combout\ & ((\sra64[0][63]~0_combout\))) # (\Mux61~9_combout\ & (\srl64[1][61]~63_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][61]~63_combout\,
	datac => \ALT_INV_Mux61~9_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sra64[4][61]~8_combout\);

-- Location: LABCELL_X38_Y38_N28
\Mux50~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = ( \sra64[4][61]~8_combout\ & ( ((\sll64[4][2]~4_combout\ & !\srl64[2][61]~112_combout\)) # (\ShiftFN[0]~input_o\) ) ) # ( !\sra64[4][61]~8_combout\ & ( (!\ShiftFN[0]~input_o\ & (\sll64[4][2]~4_combout\ & !\srl64[2][61]~112_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_sll64[4][2]~4_combout\,
	datad => \ALT_INV_srl64[2][61]~112_combout\,
	dataf => \ALT_INV_sra64[4][61]~8_combout\,
	combout => \Mux50~1_combout\);

-- Location: MLABCELL_X39_Y35_N24
\srl64[4][45]~135\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][45]~135_combout\ = ( \srl64[3][53]~113_combout\ & ( (\srl64[3][45]~109_combout\) # (\B[3]~input_o\) ) ) # ( !\srl64[3][53]~113_combout\ & ( (!\B[3]~input_o\ & \srl64[3][45]~109_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][45]~109_combout\,
	dataf => \ALT_INV_srl64[3][53]~113_combout\,
	combout => \srl64[4][45]~135_combout\);

-- Location: MLABCELL_X44_Y39_N28
\sll64[2][13]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][13]~29_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (\A[12]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][13]~29_combout\);

-- Location: MLABCELL_X44_Y36_N10
\sll64[4][13]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][13]~30_combout\ = ( \sll64[2][9]~21_combout\ & ( \sll64[2][1]~12_combout\ & ( ((!\B[3]~input_o\ & (\sll64[2][13]~29_combout\)) # (\B[3]~input_o\ & ((\sll64[2][5]~13_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\sll64[2][9]~21_combout\ & ( 
-- \sll64[2][1]~12_combout\ & ( (!\B[3]~input_o\ & (\sll64[2][13]~29_combout\ & ((!\B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\) # (\sll64[2][5]~13_combout\)))) ) ) ) # ( \sll64[2][9]~21_combout\ & ( !\sll64[2][1]~12_combout\ & ( (!\B[3]~input_o\ 
-- & (((\B[2]~input_o\)) # (\sll64[2][13]~29_combout\))) # (\B[3]~input_o\ & (((\sll64[2][5]~13_combout\ & !\B[2]~input_o\)))) ) ) ) # ( !\sll64[2][9]~21_combout\ & ( !\sll64[2][1]~12_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\sll64[2][13]~29_combout\)) # (\B[3]~input_o\ & ((\sll64[2][5]~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[2][13]~29_combout\,
	datac => \ALT_INV_sll64[2][5]~13_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][9]~21_combout\,
	dataf => \ALT_INV_sll64[2][1]~12_combout\,
	combout => \sll64[4][13]~30_combout\);

-- Location: LABCELL_X43_Y36_N34
\Mux50~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = ( \B[4]~input_o\ & ( (!\Mux61~4_combout\ & ((\sll64[4][13]~30_combout\))) # (\Mux61~4_combout\ & (\Mux50~1_combout\)) ) ) # ( !\B[4]~input_o\ & ( (!\Mux61~4_combout\ & ((\sll64[4][13]~30_combout\))) # (\Mux61~4_combout\ & 
-- (\srl64[4][45]~135_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux50~1_combout\,
	datab => \ALT_INV_srl64[4][45]~135_combout\,
	datac => \ALT_INV_sll64[4][13]~30_combout\,
	datad => \ALT_INV_Mux61~4_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux50~2_combout\);

-- Location: LABCELL_X43_Y36_N28
\Mux50~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = ( \srl64[3][29]~108_combout\ & ( \srl64[3][21]~107_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\) # (\srl64[3][13]~106_combout\)))) # (\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\srl64[3][37]~110_combout\))) ) ) ) # ( 
-- !\srl64[3][29]~108_combout\ & ( \srl64[3][21]~107_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\) # (\srl64[3][13]~106_combout\)))) # (\B[4]~input_o\ & (\srl64[3][37]~110_combout\ & ((\B[3]~input_o\)))) ) ) ) # ( \srl64[3][29]~108_combout\ & ( 
-- !\srl64[3][21]~107_combout\ & ( (!\B[4]~input_o\ & (((\srl64[3][13]~106_combout\ & !\B[3]~input_o\)))) # (\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\srl64[3][37]~110_combout\))) ) ) ) # ( !\srl64[3][29]~108_combout\ & ( !\srl64[3][21]~107_combout\ & ( 
-- (!\B[4]~input_o\ & (((\srl64[3][13]~106_combout\ & !\B[3]~input_o\)))) # (\B[4]~input_o\ & (\srl64[3][37]~110_combout\ & ((\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][37]~110_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_srl64[3][13]~106_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_srl64[3][29]~108_combout\,
	dataf => \ALT_INV_srl64[3][21]~107_combout\,
	combout => \Mux50~0_combout\);

-- Location: LABCELL_X43_Y36_N36
\Mux50~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = ( \Mux61~0_combout\ & ( \Mux50~0_combout\ & ( (((\Mux61~7_combout\ & \Mux50~2_combout\)) # (\Mux61~3_combout\)) # (\A[13]~input_o\) ) ) ) # ( !\Mux61~0_combout\ & ( \Mux50~0_combout\ & ( ((\Mux61~7_combout\ & \Mux50~2_combout\)) # 
-- (\Mux61~3_combout\) ) ) ) # ( \Mux61~0_combout\ & ( !\Mux50~0_combout\ & ( ((\Mux61~7_combout\ & \Mux50~2_combout\)) # (\A[13]~input_o\) ) ) ) # ( !\Mux61~0_combout\ & ( !\Mux50~0_combout\ & ( (\Mux61~7_combout\ & \Mux50~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010111011100001111001111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_Mux61~7_combout\,
	datac => \ALT_INV_Mux61~3_combout\,
	datad => \ALT_INV_Mux50~2_combout\,
	datae => \ALT_INV_Mux61~0_combout\,
	dataf => \ALT_INV_Mux50~0_combout\,
	combout => \Mux50~3_combout\);

-- Location: MLABCELL_X39_Y34_N0
\Mux49~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = ( \srl64[3][14]~114_combout\ & ( \srl64[3][22]~115_combout\ & ( (!\B[4]~input_o\) # ((!\B[3]~input_o\ & ((\srl64[3][30]~116_combout\))) # (\B[3]~input_o\ & (\srl64[3][38]~118_combout\))) ) ) ) # ( !\srl64[3][14]~114_combout\ & ( 
-- \srl64[3][22]~115_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\srl64[3][30]~116_combout\))) # (\B[3]~input_o\ & (\srl64[3][38]~118_combout\)))) ) ) ) # ( \srl64[3][14]~114_combout\ & ( 
-- !\srl64[3][22]~115_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\srl64[3][30]~116_combout\))) # (\B[3]~input_o\ & (\srl64[3][38]~118_combout\)))) ) ) ) # ( !\srl64[3][14]~114_combout\ & ( 
-- !\srl64[3][22]~115_combout\ & ( (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\srl64[3][30]~116_combout\))) # (\B[3]~input_o\ & (\srl64[3][38]~118_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][38]~118_combout\,
	datab => \ALT_INV_srl64[3][30]~116_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_srl64[3][14]~114_combout\,
	dataf => \ALT_INV_srl64[3][22]~115_combout\,
	combout => \Mux49~1_combout\);

-- Location: MLABCELL_X39_Y34_N36
\Mux49~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ( \Mux61~0_combout\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_Mux61~0_combout\,
	combout => \Mux49~0_combout\);

-- Location: LABCELL_X38_Y38_N12
\Mux49~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = ( \B[1]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \sra64[0][63]~0_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][62]~3_combout\))) # (\B[2]~input_o\ & 
-- (\sra64[0][63]~0_combout\)))) # (\B[3]~input_o\ & (\sra64[0][63]~0_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\B[3]~input_o\ & (\srl64[1][62]~3_combout\ & !\B[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000011011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_srl64[1][62]~3_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux49~3_combout\);

-- Location: MLABCELL_X39_Y34_N6
\Mux49~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = ( \Mux61~4_combout\ & ( \Mux49~3_combout\ & ( ((!\B[3]~input_o\ & ((\srl64[3][46]~117_combout\))) # (\B[3]~input_o\ & (\srl64[3][54]~120_combout\))) # (\B[4]~input_o\) ) ) ) # ( \Mux61~4_combout\ & ( !\Mux49~3_combout\ & ( 
-- (!\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\srl64[3][46]~117_combout\))) # (\B[3]~input_o\ & (\srl64[3][54]~120_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001100010000000000000000000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][54]~120_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][46]~117_combout\,
	datae => \ALT_INV_Mux61~4_combout\,
	dataf => \ALT_INV_Mux49~3_combout\,
	combout => \Mux49~4_combout\);

-- Location: MLABCELL_X44_Y39_N32
\sll64[2][14]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][14]~31_combout\ = ( \A[11]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[13]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( \B[0]~input_o\ & ( (\A[13]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[11]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][14]~31_combout\);

-- Location: MLABCELL_X42_Y34_N24
\sll64[4][14]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][14]~32_combout\ = ( \sll64[2][14]~31_combout\ & ( \sll64[2][6]~15_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\sll64[2][10]~23_combout\))) # (\B[3]~input_o\ & (\sll64[2][2]~5_combout\))) ) ) ) # ( !\sll64[2][14]~31_combout\ & ( 
-- \sll64[2][6]~15_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\sll64[2][10]~23_combout\))) # (\B[3]~input_o\ & (\sll64[2][2]~5_combout\)))) ) ) ) # ( \sll64[2][14]~31_combout\ & ( !\sll64[2][6]~15_combout\ 
-- & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\sll64[2][10]~23_combout\))) # (\B[3]~input_o\ & (\sll64[2][2]~5_combout\)))) ) ) ) # ( !\sll64[2][14]~31_combout\ & ( !\sll64[2][6]~15_combout\ & ( (\B[2]~input_o\ & 
-- ((!\B[3]~input_o\ & ((\sll64[2][10]~23_combout\))) # (\B[3]~input_o\ & (\sll64[2][2]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][2]~5_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][10]~23_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][14]~31_combout\,
	dataf => \ALT_INV_sll64[2][6]~15_combout\,
	combout => \sll64[4][14]~32_combout\);

-- Location: MLABCELL_X39_Y34_N38
\Mux49~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (!\Mux61~4_combout\ & \sll64[4][14]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux61~4_combout\,
	datac => \ALT_INV_sll64[4][14]~32_combout\,
	combout => \Mux49~2_combout\);

-- Location: MLABCELL_X39_Y34_N10
\Mux49~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~5_combout\ = ( \Mux61~7_combout\ & ( \Mux49~2_combout\ ) ) # ( !\Mux61~7_combout\ & ( \Mux49~2_combout\ & ( ((\Mux49~1_combout\ & \Mux61~3_combout\)) # (\Mux49~0_combout\) ) ) ) # ( \Mux61~7_combout\ & ( !\Mux49~2_combout\ & ( (((\Mux49~1_combout\ 
-- & \Mux61~3_combout\)) # (\Mux49~4_combout\)) # (\Mux49~0_combout\) ) ) ) # ( !\Mux61~7_combout\ & ( !\Mux49~2_combout\ & ( ((\Mux49~1_combout\ & \Mux61~3_combout\)) # (\Mux49~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001111110111111100110011011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux49~1_combout\,
	datab => \ALT_INV_Mux49~0_combout\,
	datac => \ALT_INV_Mux49~4_combout\,
	datad => \ALT_INV_Mux61~3_combout\,
	datae => \ALT_INV_Mux61~7_combout\,
	dataf => \ALT_INV_Mux49~2_combout\,
	combout => \Mux49~5_combout\);

-- Location: MLABCELL_X44_Y39_N36
\sll64[2][15]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][15]~33_combout\ = ( \A[15]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[12]~input_o\))) ) ) ) # ( \A[15]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[13]~input_o\) ) ) ) # ( !\A[15]~input_o\ & ( !\B[0]~input_o\ & ( (\A[13]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][15]~33_combout\);

-- Location: MLABCELL_X39_Y36_N24
\sll64[4][15]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][15]~34_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \sll64[2][3]~7_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \sll64[2][7]~17_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \sll64[2][11]~25_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \sll64[2][15]~33_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][11]~25_combout\,
	datab => \ALT_INV_sll64[2][15]~33_combout\,
	datac => \ALT_INV_sll64[2][3]~7_combout\,
	datad => \ALT_INV_sll64[2][7]~17_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][15]~34_combout\);

-- Location: MLABCELL_X39_Y35_N30
\Mux48~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = ( \sll64[4][15]~34_combout\ & ( !\Mux61~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux61~4_combout\,
	dataf => \ALT_INV_sll64[4][15]~34_combout\,
	combout => \Mux48~2_combout\);

-- Location: MLABCELL_X39_Y35_N26
\srl64[4][63]~136\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][63]~136_combout\ = ( \B[1]~input_o\ ) # ( !\B[1]~input_o\ & ( ((\B[0]~input_o\) # (\B[2]~input_o\)) # (\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[4][63]~136_combout\);

-- Location: LABCELL_X40_Y39_N4
\Mux48~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = ( \srl64[4][63]~136_combout\ & ( (\sra64[0][63]~0_combout\ & (\ShiftFN[0]~input_o\ & \B[4]~input_o\)) ) ) # ( !\srl64[4][63]~136_combout\ & ( (\sra64[0][63]~0_combout\ & \B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[4][63]~136_combout\,
	combout => \Mux48~3_combout\);

-- Location: LABCELL_X40_Y39_N10
\Mux48~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = ( \srl64[3][55]~127_combout\ & ( \Mux61~4_combout\ & ( ((!\B[4]~input_o\ & ((\B[3]~input_o\) # (\srl64[3][47]~124_combout\)))) # (\Mux48~3_combout\) ) ) ) # ( !\srl64[3][55]~127_combout\ & ( \Mux61~4_combout\ & ( 
-- ((\srl64[3][47]~124_combout\ & (!\B[3]~input_o\ & !\B[4]~input_o\))) # (\Mux48~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110101010101010111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux48~3_combout\,
	datab => \ALT_INV_srl64[3][47]~124_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_srl64[3][55]~127_combout\,
	dataf => \ALT_INV_Mux61~4_combout\,
	combout => \Mux48~4_combout\);

-- Location: LABCELL_X40_Y39_N6
\Mux48~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( \Mux61~0_combout\ & ( \A[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_Mux61~0_combout\,
	combout => \Mux48~0_combout\);

-- Location: LABCELL_X40_Y40_N34
\Mux48~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = ( \B[4]~input_o\ & ( \srl64[3][31]~123_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][39]~125_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \srl64[3][31]~123_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][15]~121_combout\)) # (\B[3]~input_o\ & 
-- ((\srl64[3][23]~122_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\srl64[3][31]~123_combout\ & ( (\B[3]~input_o\ & \srl64[3][39]~125_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\srl64[3][31]~123_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][15]~121_combout\)) # 
-- (\B[3]~input_o\ & ((\srl64[3][23]~122_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][15]~121_combout\,
	datab => \ALT_INV_srl64[3][23]~122_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][39]~125_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[3][31]~123_combout\,
	combout => \Mux48~1_combout\);

-- Location: LABCELL_X40_Y39_N34
\Mux48~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~5_combout\ = ( \Mux48~1_combout\ & ( \Mux61~7_combout\ & ( (((\Mux61~3_combout\) # (\Mux48~0_combout\)) # (\Mux48~4_combout\)) # (\Mux48~2_combout\) ) ) ) # ( !\Mux48~1_combout\ & ( \Mux61~7_combout\ & ( ((\Mux48~0_combout\) # (\Mux48~4_combout\)) 
-- # (\Mux48~2_combout\) ) ) ) # ( \Mux48~1_combout\ & ( !\Mux61~7_combout\ & ( (\Mux61~3_combout\) # (\Mux48~0_combout\) ) ) ) # ( !\Mux48~1_combout\ & ( !\Mux61~7_combout\ & ( \Mux48~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011111111111101111111011111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux48~2_combout\,
	datab => \ALT_INV_Mux48~4_combout\,
	datac => \ALT_INV_Mux48~0_combout\,
	datad => \ALT_INV_Mux61~3_combout\,
	datae => \ALT_INV_Mux48~1_combout\,
	dataf => \ALT_INV_Mux61~7_combout\,
	combout => \Mux48~5_combout\);

-- Location: LABCELL_X35_Y39_N36
\srl64[4][48]~137\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][48]~137_combout\ = ( \srl64[3][48]~9_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][56]~4_combout\) ) ) # ( !\srl64[3][48]~9_combout\ & ( (\B[3]~input_o\ & \srl64[3][56]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][56]~4_combout\,
	dataf => \ALT_INV_srl64[3][48]~9_combout\,
	combout => \srl64[4][48]~137_combout\);

-- Location: MLABCELL_X42_Y39_N12
\srl64[5][16]~138\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][16]~138_combout\ = ( \srl64[3][32]~19_combout\ & ( \srl64[3][16]~35_combout\ & ( (!\B[3]~input_o\) # ((!\B[4]~input_o\ & ((\srl64[3][24]~40_combout\))) # (\B[4]~input_o\ & (\srl64[3][40]~14_combout\))) ) ) ) # ( !\srl64[3][32]~19_combout\ & ( 
-- \srl64[3][16]~35_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\srl64[3][24]~40_combout\)))) # (\B[4]~input_o\ & (\srl64[3][40]~14_combout\ & ((\B[3]~input_o\)))) ) ) ) # ( \srl64[3][32]~19_combout\ & ( !\srl64[3][16]~35_combout\ & ( 
-- (!\B[4]~input_o\ & (((\srl64[3][24]~40_combout\ & \B[3]~input_o\)))) # (\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\srl64[3][40]~14_combout\))) ) ) ) # ( !\srl64[3][32]~19_combout\ & ( !\srl64[3][16]~35_combout\ & ( (\B[3]~input_o\ & ((!\B[4]~input_o\ & 
-- ((\srl64[3][24]~40_combout\))) # (\B[4]~input_o\ & (\srl64[3][40]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_srl64[3][40]~14_combout\,
	datac => \ALT_INV_srl64[3][24]~40_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_srl64[3][32]~19_combout\,
	dataf => \ALT_INV_srl64[3][16]~35_combout\,
	combout => \srl64[5][16]~138_combout\);

-- Location: LABCELL_X35_Y39_N38
\Y_srl[16]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[16]~0_combout\ = ( \srl64[5][16]~138_combout\ & ( ((!\B[4]~input_o\ & \srl64[4][48]~137_combout\)) # (\Y_sra[31]~0_combout\) ) ) # ( !\srl64[5][16]~138_combout\ & ( (!\B[4]~input_o\ & (!\Y_sra[31]~0_combout\ & \srl64[4][48]~137_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Y_sra[31]~0_combout\,
	datad => \ALT_INV_srl64[4][48]~137_combout\,
	dataf => \ALT_INV_srl64[5][16]~138_combout\,
	combout => \Y_srl[16]~0_combout\);

-- Location: LABCELL_X35_Y39_N2
\Y_sra[16]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[16]~2_combout\ = ( \Y_sra[31]~0_combout\ & ( \sra64[0][63]~0_combout\ & ( \srl64[5][16]~138_combout\ ) ) ) # ( !\Y_sra[31]~0_combout\ & ( \sra64[0][63]~0_combout\ & ( (\srl64[4][48]~137_combout\) # (\B[4]~input_o\) ) ) ) # ( \Y_sra[31]~0_combout\ & 
-- ( !\sra64[0][63]~0_combout\ & ( \srl64[5][16]~138_combout\ ) ) ) # ( !\Y_sra[31]~0_combout\ & ( !\sra64[0][63]~0_combout\ & ( (!\B[4]~input_o\ & \srl64[4][48]~137_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001100110011001101011111010111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_srl64[5][16]~138_combout\,
	datac => \ALT_INV_srl64[4][48]~137_combout\,
	datae => \ALT_INV_Y_sra[31]~0_combout\,
	dataf => \ALT_INV_sra64[0][63]~0_combout\,
	combout => \Y_sra[16]~2_combout\);

-- Location: MLABCELL_X42_Y36_N2
\sll64[2][16]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][16]~36_combout\ = ( \B[1]~input_o\ & ( \A[15]~input_o\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[15]~input_o\ & ( (\B[0]~input_o\) # (\A[16]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[15]~input_o\ & ( (\A[16]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \sll64[2][16]~36_combout\);

-- Location: MLABCELL_X37_Y36_N36
\sll64[4][16]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][16]~37_combout\ = ( \sll64[2][4]~10_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][8]~19_combout\) ) ) ) # ( !\sll64[2][4]~10_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][8]~19_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][4]~10_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][16]~36_combout\)) # (\B[2]~input_o\ & ((\sll64[2][12]~27_combout\))) ) ) ) # ( !\sll64[2][4]~10_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][16]~36_combout\)) 
-- # (\B[2]~input_o\ & ((\sll64[2][12]~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][16]~36_combout\,
	datab => \ALT_INV_sll64[2][8]~19_combout\,
	datac => \ALT_INV_sll64[2][12]~27_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][4]~10_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][16]~37_combout\);

-- Location: LABCELL_X35_Y39_N24
\shamt[5]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \shamt[5]~0_combout\ = (!\ExtWord~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \shamt[5]~0_combout\);

-- Location: MLABCELL_X39_Y35_N28
\sll64[4][0]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][0]~35_combout\ = ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ & !\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[4][0]~35_combout\);

-- Location: MLABCELL_X39_Y35_N32
\sll64[6][16]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][16]~38_combout\ = ( \sll64[4][0]~35_combout\ & ( (!\shamt[5]~0_combout\ & ((\sll64[4][16]~37_combout\) # (\B[4]~input_o\))) ) ) # ( !\sll64[4][0]~35_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][16]~37_combout\ & !\shamt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_sll64[4][16]~37_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_sll64[4][0]~35_combout\,
	combout => \sll64[6][16]~38_combout\);

-- Location: LABCELL_X35_Y39_N4
\Mux47~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( \sll64[6][16]~38_combout\ & ( \A[16]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ShiftFN[0]~input_o\ & (\Y_srl[16]~0_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_sra[16]~2_combout\)))) ) ) ) # ( !\sll64[6][16]~38_combout\ & ( 
-- \A[16]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)) # (\Y_srl[16]~0_combout\))) # (\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\ & \Y_sra[16]~2_combout\)))) ) ) ) # ( \sll64[6][16]~38_combout\ & ( !\A[16]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\Y_srl[16]~0_combout\ & (\ShiftFN[1]~input_o\))) # (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\) # (\Y_sra[16]~2_combout\)))) ) ) ) # ( !\sll64[6][16]~38_combout\ & ( !\A[16]~input_o\ & ( (\ShiftFN[1]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Y_srl[16]~0_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_sra[16]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[16]~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Y_sra[16]~2_combout\,
	datae => \ALT_INV_sll64[6][16]~38_combout\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: MLABCELL_X42_Y38_N12
\sll64[4][1]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][1]~39_combout\ = ( \B[0]~input_o\ & ( \sll64[4][0]~0_combout\ & ( \A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \sll64[4][0]~0_combout\ & ( \A[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_sll64[4][0]~0_combout\,
	combout => \sll64[4][1]~39_combout\);

-- Location: MLABCELL_X42_Y36_N26
\sll64[2][17]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][17]~40_combout\ = ( \B[1]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[16]~input_o\ & ( (\A[17]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & \A[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \sll64[2][17]~40_combout\);

-- Location: MLABCELL_X44_Y36_N34
\sll64[4][17]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][17]~41_combout\ = ( \sll64[2][13]~29_combout\ & ( \sll64[2][17]~40_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & ((\sll64[2][9]~21_combout\))) # (\B[2]~input_o\ & (\sll64[2][5]~13_combout\))) ) ) ) # ( !\sll64[2][13]~29_combout\ & ( 
-- \sll64[2][17]~40_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][9]~21_combout\))) # (\B[2]~input_o\ & (\sll64[2][5]~13_combout\)))) ) ) ) # ( \sll64[2][13]~29_combout\ & ( 
-- !\sll64[2][17]~40_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][9]~21_combout\))) # (\B[2]~input_o\ & (\sll64[2][5]~13_combout\)))) ) ) ) # ( !\sll64[2][13]~29_combout\ & ( 
-- !\sll64[2][17]~40_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][9]~21_combout\))) # (\B[2]~input_o\ & (\sll64[2][5]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[2][5]~13_combout\,
	datac => \ALT_INV_sll64[2][9]~21_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][13]~29_combout\,
	dataf => \ALT_INV_sll64[2][17]~40_combout\,
	combout => \sll64[4][17]~41_combout\);

-- Location: MLABCELL_X44_Y36_N38
\Mux36~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = ( \shamt[5]~0_combout\ & ( (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\B[4]~input_o\))) ) ) # ( !\shamt[5]~0_combout\ & ( (!\B[4]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Mux36~2_combout\);

-- Location: LABCELL_X40_Y34_N6
\Mux46~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~7_combout\ = ( \ShiftFN[0]~input_o\ & ( ((!\ShiftFN[1]~input_o\ & \shamt[5]~0_combout\)) # (\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux46~7_combout\);

-- Location: MLABCELL_X44_Y38_N4
\Mux46~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~8_combout\ = ( \A[17]~input_o\ & ( (!\Mux46~7_combout\ & ((!\Mux36~2_combout\) # (\sll64[4][17]~41_combout\))) ) ) # ( !\A[17]~input_o\ & ( (\sll64[4][17]~41_combout\ & (\Mux36~2_combout\ & !\Mux46~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][17]~41_combout\,
	datac => \ALT_INV_Mux36~2_combout\,
	datad => \ALT_INV_Mux46~7_combout\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Mux46~8_combout\);

-- Location: LABCELL_X38_Y40_N30
\Mux36~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \B[3]~input_o\ & ( \Y_sra[31]~0_combout\ ) ) # ( !\B[3]~input_o\ & ( (\Y_sra[31]~0_combout\ & \B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[31]~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LABCELL_X43_Y38_N28
\Mux46~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = ( \B[4]~input_o\ & ( \A[63]~input_o\ ) ) # ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & ((\srl64[3][49]~72_combout\))) # (\B[3]~input_o\ & (\sra64[3][57]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sra64[3][57]~1_combout\,
	datac => \ALT_INV_srl64[3][49]~72_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux46~1_combout\);

-- Location: LABCELL_X35_Y38_N28
\Mux46~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = ( \ExtWord~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux46~3_combout\);

-- Location: LABCELL_X35_Y38_N24
\Mux46~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = ( !\ExtWord~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((!\B[4]~input_o\) # (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux46~2_combout\);

-- Location: LABCELL_X40_Y38_N36
\Mux46~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = ( \srl64[3][57]~67_combout\ & ( \srl64[3][49]~72_combout\ & ( ((\sll64[6][1]~1_combout\ & \Mux46~3_combout\)) # (\Mux46~2_combout\) ) ) ) # ( !\srl64[3][57]~67_combout\ & ( \srl64[3][49]~72_combout\ & ( (!\B[3]~input_o\ & 
-- (((\sll64[6][1]~1_combout\ & \Mux46~3_combout\)) # (\Mux46~2_combout\))) ) ) ) # ( \srl64[3][57]~67_combout\ & ( !\srl64[3][49]~72_combout\ & ( (\B[3]~input_o\ & (((\sll64[6][1]~1_combout\ & \Mux46~3_combout\)) # (\Mux46~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101010100000010101010100000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[6][1]~1_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux46~2_combout\,
	datae => \ALT_INV_srl64[3][57]~67_combout\,
	dataf => \ALT_INV_srl64[3][49]~72_combout\,
	combout => \Mux46~4_combout\);

-- Location: MLABCELL_X44_Y38_N2
\Mux46~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \ExtWord~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux46~0_combout\);

-- Location: LABCELL_X40_Y38_N10
\sra64[6][49]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][49]~9_combout\ = ( \sra64[3][57]~1_combout\ & ( (!\sll64[6][1]~1_combout\ & (((\sra64[0][63]~0_combout\)))) # (\sll64[6][1]~1_combout\ & (((\srl64[3][49]~72_combout\)) # (\B[3]~input_o\))) ) ) # ( !\sra64[3][57]~1_combout\ & ( 
-- (!\sll64[6][1]~1_combout\ & (((\sra64[0][63]~0_combout\)))) # (\sll64[6][1]~1_combout\ & (!\B[3]~input_o\ & (\srl64[3][49]~72_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100010000011110010001000001111011101110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[3][49]~72_combout\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_sll64[6][1]~1_combout\,
	dataf => \ALT_INV_sra64[3][57]~1_combout\,
	combout => \sra64[6][49]~9_combout\);

-- Location: LABCELL_X40_Y38_N14
\Mux38~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( !\ExtWord~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X40_Y38_N12
\Mux46~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = ( \Mux38~0_combout\ & ( (!\Mux46~1_combout\ & (!\Mux46~4_combout\ & ((!\Mux46~0_combout\) # (!\sra64[6][49]~9_combout\)))) ) ) # ( !\Mux38~0_combout\ & ( (!\Mux46~4_combout\ & ((!\Mux46~0_combout\) # (!\sra64[6][49]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux46~1_combout\,
	datab => \ALT_INV_Mux46~4_combout\,
	datac => \ALT_INV_Mux46~0_combout\,
	datad => \ALT_INV_sra64[6][49]~9_combout\,
	dataf => \ALT_INV_Mux38~0_combout\,
	combout => \Mux46~5_combout\);

-- Location: LABCELL_X38_Y40_N28
\Y_sra[31]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[31]~3_combout\ = ( \Y_sra[31]~0_combout\ & ( !\B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Y_sra[31]~0_combout\,
	combout => \Y_sra[31]~3_combout\);

-- Location: LABCELL_X43_Y38_N34
\Mux46~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~6_combout\ = ( \Y_sra[31]~3_combout\ & ( \srl64[3][17]~56_combout\ & ( (!\Mux36~0_combout\) # (\srl64[3][25]~61_combout\) ) ) ) # ( !\Y_sra[31]~3_combout\ & ( \srl64[3][17]~56_combout\ & ( (!\Mux36~0_combout\ & ((!\Mux46~5_combout\))) # 
-- (\Mux36~0_combout\ & (\srl64[4][33]~83_combout\)) ) ) ) # ( \Y_sra[31]~3_combout\ & ( !\srl64[3][17]~56_combout\ & ( (\Mux36~0_combout\ & \srl64[3][25]~61_combout\) ) ) ) # ( !\Y_sra[31]~3_combout\ & ( !\srl64[3][17]~56_combout\ & ( (!\Mux36~0_combout\ & 
-- ((!\Mux46~5_combout\))) # (\Mux36~0_combout\ & (\srl64[4][33]~83_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000101000100010001000110101111000001011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~0_combout\,
	datab => \ALT_INV_srl64[3][25]~61_combout\,
	datac => \ALT_INV_srl64[4][33]~83_combout\,
	datad => \ALT_INV_Mux46~5_combout\,
	datae => \ALT_INV_Y_sra[31]~3_combout\,
	dataf => \ALT_INV_srl64[3][17]~56_combout\,
	combout => \Mux46~6_combout\);

-- Location: LABCELL_X40_Y34_N22
\Mux36~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = ( \ShiftFN[0]~input_o\ & ( (\B[4]~input_o\ & ((!\shamt[5]~0_combout\) # (\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux36~1_combout\);

-- Location: MLABCELL_X44_Y38_N28
\Mux46~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~9_combout\ = ( \Mux36~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux46~8_combout\)) # (\sll64[4][1]~39_combout\))) # (\ShiftFN[1]~input_o\ & (((\Mux46~6_combout\)))) ) ) # ( !\Mux36~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux46~8_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Mux46~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][1]~39_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux46~8_combout\,
	datad => \ALT_INV_Mux46~6_combout\,
	dataf => \ALT_INV_Mux36~1_combout\,
	combout => \Mux46~9_combout\);

-- Location: LABCELL_X40_Y38_N38
\Mux45~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = ( \srl64[3][58]~131_combout\ & ( \srl64[3][50]~90_combout\ & ( ((\sll64[6][1]~1_combout\ & \Mux46~3_combout\)) # (\Mux46~2_combout\) ) ) ) # ( !\srl64[3][58]~131_combout\ & ( \srl64[3][50]~90_combout\ & ( (!\B[3]~input_o\ & 
-- (((\sll64[6][1]~1_combout\ & \Mux46~3_combout\)) # (\Mux46~2_combout\))) ) ) ) # ( \srl64[3][58]~131_combout\ & ( !\srl64[3][50]~90_combout\ & ( (\B[3]~input_o\ & (((\sll64[6][1]~1_combout\ & \Mux46~3_combout\)) # (\Mux46~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010001010100001010001010100000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[6][1]~1_combout\,
	datac => \ALT_INV_Mux46~2_combout\,
	datad => \ALT_INV_Mux46~3_combout\,
	datae => \ALT_INV_srl64[3][58]~131_combout\,
	dataf => \ALT_INV_srl64[3][50]~90_combout\,
	combout => \Mux45~1_combout\);

-- Location: MLABCELL_X39_Y38_N12
\Mux45~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \srl64[3][50]~90_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\sra64[3][58]~4_combout\))) # (\B[4]~input_o\ & (((\A[63]~input_o\)))) ) ) # ( !\srl64[3][50]~90_combout\ & ( (!\B[4]~input_o\ & (\sra64[3][58]~4_combout\ & 
-- (\B[3]~input_o\))) # (\B[4]~input_o\ & (((\A[63]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111111010000110111111101000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[3][58]~4_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_srl64[3][50]~90_combout\,
	combout => \Mux45~0_combout\);

-- Location: MLABCELL_X39_Y38_N8
\sra64[6][50]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][50]~10_combout\ = ( \sra64[3][58]~4_combout\ & ( (!\sll64[6][1]~1_combout\ & (((\sra64[0][63]~0_combout\)))) # (\sll64[6][1]~1_combout\ & (((\srl64[3][50]~90_combout\)) # (\B[3]~input_o\))) ) ) # ( !\sra64[3][58]~4_combout\ & ( 
-- (!\sll64[6][1]~1_combout\ & (((\sra64[0][63]~0_combout\)))) # (\sll64[6][1]~1_combout\ & (!\B[3]~input_o\ & (\srl64[3][50]~90_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][1]~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][50]~90_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_sra64[3][58]~4_combout\,
	combout => \sra64[6][50]~10_combout\);

-- Location: MLABCELL_X39_Y38_N6
\Mux45~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = ( \Mux46~0_combout\ & ( (!\Mux45~1_combout\ & (!\sra64[6][50]~10_combout\ & ((!\Mux45~0_combout\) # (!\Mux38~0_combout\)))) ) ) # ( !\Mux46~0_combout\ & ( (!\Mux45~1_combout\ & ((!\Mux45~0_combout\) # (!\Mux38~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux45~1_combout\,
	datab => \ALT_INV_Mux45~0_combout\,
	datac => \ALT_INV_Mux38~0_combout\,
	datad => \ALT_INV_sra64[6][50]~10_combout\,
	dataf => \ALT_INV_Mux46~0_combout\,
	combout => \Mux45~2_combout\);

-- Location: LABCELL_X38_Y37_N28
\Mux45~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = ( \Y_sra[31]~3_combout\ & ( \srl64[3][26]~86_combout\ & ( (\Mux36~0_combout\) # (\srl64[3][18]~85_combout\) ) ) ) # ( !\Y_sra[31]~3_combout\ & ( \srl64[3][26]~86_combout\ & ( (!\Mux36~0_combout\ & ((!\Mux45~2_combout\))) # 
-- (\Mux36~0_combout\ & (\srl64[4][34]~89_combout\)) ) ) ) # ( \Y_sra[31]~3_combout\ & ( !\srl64[3][26]~86_combout\ & ( (\srl64[3][18]~85_combout\ & !\Mux36~0_combout\) ) ) ) # ( !\Y_sra[31]~3_combout\ & ( !\srl64[3][26]~86_combout\ & ( (!\Mux36~0_combout\ & 
-- ((!\Mux45~2_combout\))) # (\Mux36~0_combout\ & (\srl64[4][34]~89_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101001100000011000011110101000001010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[4][34]~89_combout\,
	datab => \ALT_INV_srl64[3][18]~85_combout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Mux45~2_combout\,
	datae => \ALT_INV_Y_sra[31]~3_combout\,
	dataf => \ALT_INV_srl64[3][26]~86_combout\,
	combout => \Mux45~3_combout\);

-- Location: MLABCELL_X42_Y36_N10
\sll64[2][18]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][18]~42_combout\ = ( \B[1]~input_o\ & ( \A[15]~input_o\ & ( (\B[0]~input_o\) # (\A[16]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[15]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[15]~input_o\ & ( (\A[16]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \sll64[2][18]~42_combout\);

-- Location: MLABCELL_X42_Y34_N30
\sll64[4][18]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][18]~43_combout\ = ( \sll64[2][18]~42_combout\ & ( \sll64[2][6]~15_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][10]~23_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][14]~31_combout\))) ) ) ) # ( 
-- !\sll64[2][18]~42_combout\ & ( \sll64[2][6]~15_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\ & \sll64[2][10]~23_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][14]~31_combout\))) ) ) ) # ( \sll64[2][18]~42_combout\ & ( 
-- !\sll64[2][6]~15_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][10]~23_combout\)))) # (\B[2]~input_o\ & (\sll64[2][14]~31_combout\ & (!\B[3]~input_o\))) ) ) ) # ( !\sll64[2][18]~42_combout\ & ( !\sll64[2][6]~15_combout\ & ( 
-- (!\B[2]~input_o\ & (((\B[3]~input_o\ & \sll64[2][10]~23_combout\)))) # (\B[2]~input_o\ & (\sll64[2][14]~31_combout\ & (!\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][14]~31_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][10]~23_combout\,
	datae => \ALT_INV_sll64[2][18]~42_combout\,
	dataf => \ALT_INV_sll64[2][6]~15_combout\,
	combout => \sll64[4][18]~43_combout\);

-- Location: MLABCELL_X42_Y35_N0
\Mux45~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = ( \Mux36~2_combout\ & ( (\sll64[4][18]~43_combout\ & !\Mux46~7_combout\) ) ) # ( !\Mux36~2_combout\ & ( (!\Mux46~7_combout\ & \A[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sll64[4][18]~43_combout\,
	datac => \ALT_INV_Mux46~7_combout\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_Mux36~2_combout\,
	combout => \Mux45~4_combout\);

-- Location: MLABCELL_X42_Y35_N26
\Mux45~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~5_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux45~3_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( ((\sll64[4][2]~6_combout\ & \Mux36~1_combout\)) # (\Mux45~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~6_combout\,
	datab => \ALT_INV_Mux45~3_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \ALT_INV_Mux45~4_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux45~5_combout\);

-- Location: MLABCELL_X37_Y40_N0
\Mux44~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = ( \srl64[3][51]~97_combout\ & ( \Mux46~2_combout\ & ( (!\B[3]~input_o\) # (!\srl64[3][59]~134_combout\) ) ) ) # ( !\srl64[3][51]~97_combout\ & ( \Mux46~2_combout\ & ( (\B[3]~input_o\ & !\srl64[3][59]~134_combout\) ) ) ) # ( 
-- \srl64[3][51]~97_combout\ & ( !\Mux46~2_combout\ & ( (\Mux46~3_combout\ & (\sll64[6][1]~1_combout\ & ((!\B[3]~input_o\) # (!\srl64[3][59]~134_combout\)))) ) ) ) # ( !\srl64[3][51]~97_combout\ & ( !\Mux46~2_combout\ & ( (\B[3]~input_o\ & (\Mux46~3_combout\ 
-- & (\sll64[6][1]~1_combout\ & !\srl64[3][59]~134_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000110000001001010101000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Mux46~3_combout\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_srl64[3][59]~134_combout\,
	datae => \ALT_INV_srl64[3][51]~97_combout\,
	dataf => \ALT_INV_Mux46~2_combout\,
	combout => \Mux44~1_combout\);

-- Location: MLABCELL_X37_Y40_N4
\sra64[4][51]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[4][51]~11_combout\ = ( \srl64[1][61]~63_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][59]~65_combout\)) # (\B[1]~input_o\))) # (\B[2]~input_o\ & (((\sra64[0][63]~0_combout\)))) ) ) # ( !\srl64[1][61]~63_combout\ & ( (!\B[2]~input_o\ & 
-- (!\B[1]~input_o\ & (\srl64[1][59]~65_combout\))) # (\B[2]~input_o\ & (((\sra64[0][63]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][59]~65_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_srl64[1][61]~63_combout\,
	combout => \sra64[4][51]~11_combout\);

-- Location: MLABCELL_X37_Y40_N36
\Mux44~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \A[63]~input_o\ & ( ((!\B[3]~input_o\ & (\srl64[3][51]~97_combout\)) # (\B[3]~input_o\ & ((\sra64[4][51]~11_combout\)))) # (\B[4]~input_o\) ) ) # ( !\A[63]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & 
-- (\srl64[3][51]~97_combout\)) # (\B[3]~input_o\ & ((\sra64[4][51]~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000101111011111110010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[3][51]~97_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_sra64[4][51]~11_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: MLABCELL_X37_Y40_N14
\sra64[6][51]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][51]~12_combout\ = ( \sll64[6][1]~1_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][51]~97_combout\))) # (\B[3]~input_o\ & (\sra64[4][51]~11_combout\)) ) ) # ( !\sll64[6][1]~1_combout\ & ( \sra64[0][63]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[4][51]~11_combout\,
	datab => \ALT_INV_srl64[3][51]~97_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \sra64[6][51]~12_combout\);

-- Location: MLABCELL_X37_Y40_N20
\Mux44~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = ( \Mux38~0_combout\ & ( (!\Mux44~1_combout\ & (!\Mux44~0_combout\ & ((!\Mux46~0_combout\) # (!\sra64[6][51]~12_combout\)))) ) ) # ( !\Mux38~0_combout\ & ( (!\Mux44~1_combout\ & ((!\Mux46~0_combout\) # (!\sra64[6][51]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~1_combout\,
	datab => \ALT_INV_Mux44~0_combout\,
	datac => \ALT_INV_Mux46~0_combout\,
	datad => \ALT_INV_sra64[6][51]~12_combout\,
	dataf => \ALT_INV_Mux38~0_combout\,
	combout => \Mux44~2_combout\);

-- Location: LABCELL_X38_Y40_N14
\Mux44~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = ( \Mux36~0_combout\ & ( \Mux44~2_combout\ & ( (!\Y_sra[31]~3_combout\ & ((\srl64[4][35]~96_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][27]~93_combout\)) ) ) ) # ( !\Mux36~0_combout\ & ( \Mux44~2_combout\ & ( 
-- (\Y_sra[31]~3_combout\ & \srl64[3][19]~92_combout\) ) ) ) # ( \Mux36~0_combout\ & ( !\Mux44~2_combout\ & ( (!\Y_sra[31]~3_combout\ & ((\srl64[4][35]~96_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][27]~93_combout\)) ) ) ) # ( !\Mux36~0_combout\ & ( 
-- !\Mux44~2_combout\ & ( (!\Y_sra[31]~3_combout\) # (\srl64[3][19]~92_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111001101010011010100000000000011110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][27]~93_combout\,
	datab => \ALT_INV_srl64[4][35]~96_combout\,
	datac => \ALT_INV_Y_sra[31]~3_combout\,
	datad => \ALT_INV_srl64[3][19]~92_combout\,
	datae => \ALT_INV_Mux36~0_combout\,
	dataf => \ALT_INV_Mux44~2_combout\,
	combout => \Mux44~3_combout\);

-- Location: MLABCELL_X42_Y36_N12
\sll64[2][19]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][19]~44_combout\ = ( \B[1]~input_o\ & ( \A[16]~input_o\ & ( (\A[17]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\ & (\A[19]~input_o\)) # (\B[0]~input_o\ & ((\A[18]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & \A[17]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & (\A[19]~input_o\)) # (\B[0]~input_o\ & ((\A[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \sll64[2][19]~44_combout\);

-- Location: MLABCELL_X39_Y36_N8
\sll64[4][19]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][19]~45_combout\ = ( \sll64[2][15]~33_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][11]~25_combout\)) # (\B[2]~input_o\ & ((\sll64[2][7]~17_combout\))) ) ) ) # ( !\sll64[2][15]~33_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\sll64[2][11]~25_combout\)) # (\B[2]~input_o\ & ((\sll64[2][7]~17_combout\))) ) ) ) # ( \sll64[2][15]~33_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][19]~44_combout\) ) ) ) # ( !\sll64[2][15]~33_combout\ & ( !\B[3]~input_o\ & ( 
-- (\sll64[2][19]~44_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][19]~44_combout\,
	datab => \ALT_INV_sll64[2][11]~25_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][7]~17_combout\,
	datae => \ALT_INV_sll64[2][15]~33_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][19]~45_combout\);

-- Location: LABCELL_X38_Y36_N2
\Mux44~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = ( !\Mux46~7_combout\ & ( (!\Mux36~2_combout\ & ((\A[19]~input_o\))) # (\Mux36~2_combout\ & (\sll64[4][19]~45_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sll64[4][19]~45_combout\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_Mux36~2_combout\,
	dataf => \ALT_INV_Mux46~7_combout\,
	combout => \Mux44~4_combout\);

-- Location: LABCELL_X38_Y36_N24
\Mux44~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~5_combout\ = ( \Mux44~4_combout\ & ( (!\ShiftFN[1]~input_o\) # (\Mux44~3_combout\) ) ) # ( !\Mux44~4_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux36~1_combout\ & (\sll64[4][3]~8_combout\))) # (\ShiftFN[1]~input_o\ & (((\Mux44~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~1_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_sll64[4][3]~8_combout\,
	datad => \ALT_INV_Mux44~3_combout\,
	dataf => \ALT_INV_Mux44~4_combout\,
	combout => \Mux44~5_combout\);

-- Location: LABCELL_X45_Y37_N28
\sll64[2][20]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][20]~46_combout\ = ( \A[20]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) ) # ( !\A[20]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ 
-- & (\A[17]~input_o\)) ) ) ) # ( \A[20]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[19]~input_o\) ) ) ) # ( !\A[20]~input_o\ & ( !\B[1]~input_o\ & ( (\A[19]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][20]~46_combout\);

-- Location: MLABCELL_X37_Y36_N2
\sll64[4][20]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][20]~47_combout\ = ( \sll64[2][16]~36_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][12]~27_combout\)) # (\B[2]~input_o\ & ((\sll64[2][8]~19_combout\))) ) ) ) # ( !\sll64[2][16]~36_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\sll64[2][12]~27_combout\)) # (\B[2]~input_o\ & ((\sll64[2][8]~19_combout\))) ) ) ) # ( \sll64[2][16]~36_combout\ & ( !\B[3]~input_o\ & ( (\sll64[2][20]~46_combout\) # (\B[2]~input_o\) ) ) ) # ( !\sll64[2][16]~36_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \sll64[2][20]~46_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][12]~27_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][8]~19_combout\,
	datad => \ALT_INV_sll64[2][20]~46_combout\,
	datae => \ALT_INV_sll64[2][16]~36_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][20]~47_combout\);

-- Location: MLABCELL_X37_Y36_N4
\Mux43~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = ( \Mux36~2_combout\ & ( \sll64[4][20]~47_combout\ & ( !\Mux46~7_combout\ ) ) ) # ( !\Mux36~2_combout\ & ( \sll64[4][20]~47_combout\ & ( (!\Mux46~7_combout\ & \A[20]~input_o\) ) ) ) # ( !\Mux36~2_combout\ & ( !\sll64[4][20]~47_combout\ 
-- & ( (!\Mux46~7_combout\ & \A[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux46~7_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_Mux36~2_combout\,
	dataf => \ALT_INV_sll64[4][20]~47_combout\,
	combout => \Mux43~4_combout\);

-- Location: LABCELL_X38_Y38_N18
\sra64[4][52]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[4][52]~13_combout\ = ( \srl64[1][60]~1_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\srl64[1][62]~3_combout\))) # (\B[2]~input_o\ & (((\sra64[0][63]~0_combout\)))) ) ) # ( !\srl64[1][60]~1_combout\ & ( (!\B[2]~input_o\ & 
-- (\srl64[1][62]~3_combout\ & ((\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\sra64[0][63]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001111110011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][62]~3_combout\,
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][60]~1_combout\,
	combout => \sra64[4][52]~13_combout\);

-- Location: LABCELL_X35_Y38_N12
\sra64[6][52]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][52]~14_combout\ = ( \sra64[4][52]~13_combout\ & ( (!\sll64[6][1]~1_combout\ & (((\sra64[0][63]~0_combout\)))) # (\sll64[6][1]~1_combout\ & (((\srl64[3][52]~104_combout\)) # (\B[3]~input_o\))) ) ) # ( !\sra64[4][52]~13_combout\ & ( 
-- (!\sll64[6][1]~1_combout\ & (((\sra64[0][63]~0_combout\)))) # (\sll64[6][1]~1_combout\ & (!\B[3]~input_o\ & ((\srl64[3][52]~104_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][1]~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_srl64[3][52]~104_combout\,
	dataf => \ALT_INV_sra64[4][52]~13_combout\,
	combout => \sra64[6][52]~14_combout\);

-- Location: LABCELL_X35_Y38_N14
\srl64[6][52]~139\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][52]~139_combout\ = ( \srl64[2][60]~105_combout\ & ( (\sll64[6][1]~1_combout\ & ((!\B[3]~input_o\ & ((\srl64[3][52]~104_combout\))) # (\B[3]~input_o\ & (!\B[2]~input_o\)))) ) ) # ( !\srl64[2][60]~105_combout\ & ( (\sll64[6][1]~1_combout\ & 
-- (!\B[3]~input_o\ & \srl64[3][52]~104_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000010000010101000001000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][1]~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[3][52]~104_combout\,
	dataf => \ALT_INV_srl64[2][60]~105_combout\,
	combout => \srl64[6][52]~139_combout\);

-- Location: LABCELL_X35_Y38_N36
\Mux43~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = ( \srl64[3][52]~104_combout\ & ( \sra64[4][52]~13_combout\ & ( (\Mux38~0_combout\ & ((!\B[4]~input_o\) # (\A[63]~input_o\))) ) ) ) # ( !\srl64[3][52]~104_combout\ & ( \sra64[4][52]~13_combout\ & ( (\Mux38~0_combout\ & ((!\B[4]~input_o\ 
-- & (\B[3]~input_o\)) # (\B[4]~input_o\ & ((\A[63]~input_o\))))) ) ) ) # ( \srl64[3][52]~104_combout\ & ( !\sra64[4][52]~13_combout\ & ( (\Mux38~0_combout\ & ((!\B[4]~input_o\ & (!\B[3]~input_o\)) # (\B[4]~input_o\ & ((\A[63]~input_o\))))) ) ) ) # ( 
-- !\srl64[3][52]~104_combout\ & ( !\sra64[4][52]~13_combout\ & ( (\B[4]~input_o\ & (\Mux38~0_combout\ & \A[63]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000010000000110100000010000001110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux38~0_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_srl64[3][52]~104_combout\,
	dataf => \ALT_INV_sra64[4][52]~13_combout\,
	combout => \Mux43~1_combout\);

-- Location: LABCELL_X35_Y38_N30
\Mux43~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( \Mux46~2_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][52]~104_combout\)) # (\B[3]~input_o\ & (((!\B[2]~input_o\ & \srl64[2][60]~105_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][52]~104_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[2][60]~105_combout\,
	dataf => \ALT_INV_Mux46~2_combout\,
	combout => \Mux43~0_combout\);

-- Location: LABCELL_X35_Y38_N20
\Mux43~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = ( !\Mux43~1_combout\ & ( !\Mux43~0_combout\ & ( (!\sra64[6][52]~14_combout\ & ((!\Mux46~3_combout\) # ((!\srl64[6][52]~139_combout\)))) # (\sra64[6][52]~14_combout\ & (!\Mux46~0_combout\ & ((!\Mux46~3_combout\) # 
-- (!\srl64[6][52]~139_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[6][52]~14_combout\,
	datab => \ALT_INV_Mux46~3_combout\,
	datac => \ALT_INV_Mux46~0_combout\,
	datad => \ALT_INV_srl64[6][52]~139_combout\,
	datae => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_Mux43~0_combout\,
	combout => \Mux43~2_combout\);

-- Location: MLABCELL_X37_Y39_N38
\Mux43~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = ( \srl64[4][36]~103_combout\ & ( \srl64[3][28]~100_combout\ & ( ((!\Y_sra[31]~3_combout\ & (!\Mux43~2_combout\)) # (\Y_sra[31]~3_combout\ & ((\srl64[3][20]~99_combout\)))) # (\Mux36~0_combout\) ) ) ) # ( !\srl64[4][36]~103_combout\ & ( 
-- \srl64[3][28]~100_combout\ & ( (!\Y_sra[31]~3_combout\ & (!\Mux43~2_combout\ & ((!\Mux36~0_combout\)))) # (\Y_sra[31]~3_combout\ & (((\Mux36~0_combout\) # (\srl64[3][20]~99_combout\)))) ) ) ) # ( \srl64[4][36]~103_combout\ & ( !\srl64[3][28]~100_combout\ 
-- & ( (!\Y_sra[31]~3_combout\ & ((!\Mux43~2_combout\) # ((\Mux36~0_combout\)))) # (\Y_sra[31]~3_combout\ & (((\srl64[3][20]~99_combout\ & !\Mux36~0_combout\)))) ) ) ) # ( !\srl64[4][36]~103_combout\ & ( !\srl64[3][28]~100_combout\ & ( (!\Mux36~0_combout\ & 
-- ((!\Y_sra[31]~3_combout\ & (!\Mux43~2_combout\)) # (\Y_sra[31]~3_combout\ & ((\srl64[3][20]~99_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101100000000100010111100110010001011001100111000101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~2_combout\,
	datab => \ALT_INV_Y_sra[31]~3_combout\,
	datac => \ALT_INV_srl64[3][20]~99_combout\,
	datad => \ALT_INV_Mux36~0_combout\,
	datae => \ALT_INV_srl64[4][36]~103_combout\,
	dataf => \ALT_INV_srl64[3][28]~100_combout\,
	combout => \Mux43~3_combout\);

-- Location: MLABCELL_X37_Y39_N22
\Mux43~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = ( \Mux43~3_combout\ & ( (((\sll64[4][4]~11_combout\ & \Mux36~1_combout\)) # (\ShiftFN[1]~input_o\)) # (\Mux43~4_combout\) ) ) # ( !\Mux43~3_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\sll64[4][4]~11_combout\ & \Mux36~1_combout\)) # 
-- (\Mux43~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000000000111110000000000011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][4]~11_combout\,
	datab => \ALT_INV_Mux36~1_combout\,
	datac => \ALT_INV_Mux43~4_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux43~3_combout\,
	combout => \Mux43~5_combout\);

-- Location: LABCELL_X45_Y37_N14
\sll64[2][21]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][21]~48_combout\ = ( \A[20]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[19]~input_o\)) # (\B[0]~input_o\ & ((\A[18]~input_o\))) ) ) ) # ( !\A[20]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[19]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[18]~input_o\))) ) ) ) # ( \A[20]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[21]~input_o\) ) ) ) # ( !\A[20]~input_o\ & ( !\B[1]~input_o\ & ( (\A[21]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][21]~48_combout\);

-- Location: MLABCELL_X44_Y36_N2
\sll64[4][21]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][21]~49_combout\ = ( \sll64[2][21]~48_combout\ & ( \sll64[2][17]~40_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & ((\sll64[2][13]~29_combout\))) # (\B[2]~input_o\ & (\sll64[2][9]~21_combout\))) ) ) ) # ( !\sll64[2][21]~48_combout\ & ( 
-- \sll64[2][17]~40_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][13]~29_combout\))) # (\B[2]~input_o\ & (\sll64[2][9]~21_combout\)))) ) ) ) # ( \sll64[2][21]~48_combout\ & ( 
-- !\sll64[2][17]~40_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][13]~29_combout\))) # (\B[2]~input_o\ & (\sll64[2][9]~21_combout\)))) ) ) ) # ( !\sll64[2][21]~48_combout\ & ( 
-- !\sll64[2][17]~40_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][13]~29_combout\))) # (\B[2]~input_o\ & (\sll64[2][9]~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[2][9]~21_combout\,
	datac => \ALT_INV_sll64[2][13]~29_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][21]~48_combout\,
	dataf => \ALT_INV_sll64[2][17]~40_combout\,
	combout => \sll64[4][21]~49_combout\);

-- Location: MLABCELL_X44_Y36_N24
\Mux42~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = ( \A[21]~input_o\ & ( \sll64[4][21]~49_combout\ & ( !\Mux46~7_combout\ ) ) ) # ( !\A[21]~input_o\ & ( \sll64[4][21]~49_combout\ & ( (\Mux36~2_combout\ & !\Mux46~7_combout\) ) ) ) # ( \A[21]~input_o\ & ( !\sll64[4][21]~49_combout\ & ( 
-- (!\Mux36~2_combout\ & !\Mux46~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000001010101000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~2_combout\,
	datad => \ALT_INV_Mux46~7_combout\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_sll64[4][21]~49_combout\,
	combout => \Mux42~4_combout\);

-- Location: LABCELL_X35_Y38_N38
\Mux42~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = ( \srl64[3][53]~113_combout\ & ( \sra64[3][61]~3_combout\ & ( (\Mux38~0_combout\ & ((!\B[4]~input_o\) # (\A[63]~input_o\))) ) ) ) # ( !\srl64[3][53]~113_combout\ & ( \sra64[3][61]~3_combout\ & ( (\Mux38~0_combout\ & ((!\B[4]~input_o\ & 
-- (\B[3]~input_o\)) # (\B[4]~input_o\ & ((\A[63]~input_o\))))) ) ) ) # ( \srl64[3][53]~113_combout\ & ( !\sra64[3][61]~3_combout\ & ( (\Mux38~0_combout\ & ((!\B[4]~input_o\ & (!\B[3]~input_o\)) # (\B[4]~input_o\ & ((\A[63]~input_o\))))) ) ) ) # ( 
-- !\srl64[3][53]~113_combout\ & ( !\sra64[3][61]~3_combout\ & ( (\B[4]~input_o\ & (\A[63]~input_o\ & \Mux38~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001000110100000000001001110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_Mux38~0_combout\,
	datae => \ALT_INV_srl64[3][53]~113_combout\,
	dataf => \ALT_INV_sra64[3][61]~3_combout\,
	combout => \Mux42~1_combout\);

-- Location: LABCELL_X35_Y38_N6
\Mux42~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( \Mux46~2_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][53]~113_combout\)) # (\B[3]~input_o\ & (((!\B[2]~input_o\ & !\srl64[2][61]~112_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110100010001000111010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][53]~113_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[2][61]~112_combout\,
	dataf => \ALT_INV_Mux46~2_combout\,
	combout => \Mux42~0_combout\);

-- Location: LABCELL_X35_Y38_N4
\sra64[6][53]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][53]~15_combout\ = ( \sll64[6][1]~1_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][53]~113_combout\)) # (\B[3]~input_o\ & ((\sra64[3][61]~3_combout\))) ) ) # ( !\sll64[6][1]~1_combout\ & ( \sra64[0][63]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][53]~113_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_sra64[3][61]~3_combout\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \sra64[6][53]~15_combout\);

-- Location: LABCELL_X35_Y38_N8
\srl64[6][53]~140\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][53]~140_combout\ = ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[6][1]~1_combout\ & !\srl64[2][61]~112_combout\)) ) ) # ( !\B[3]~input_o\ & ( (\srl64[3][53]~113_combout\ & \sll64[6][1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][53]~113_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_srl64[2][61]~112_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[6][53]~140_combout\);

-- Location: LABCELL_X35_Y38_N32
\Mux42~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = ( \sra64[6][53]~15_combout\ & ( \srl64[6][53]~140_combout\ & ( (!\Mux42~1_combout\ & (!\Mux42~0_combout\ & (!\Mux46~0_combout\ & !\Mux46~3_combout\))) ) ) ) # ( !\sra64[6][53]~15_combout\ & ( \srl64[6][53]~140_combout\ & ( 
-- (!\Mux42~1_combout\ & (!\Mux42~0_combout\ & !\Mux46~3_combout\)) ) ) ) # ( \sra64[6][53]~15_combout\ & ( !\srl64[6][53]~140_combout\ & ( (!\Mux42~1_combout\ & (!\Mux42~0_combout\ & !\Mux46~0_combout\)) ) ) ) # ( !\sra64[6][53]~15_combout\ & ( 
-- !\srl64[6][53]~140_combout\ & ( (!\Mux42~1_combout\ & !\Mux42~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100000001000000010001000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux42~1_combout\,
	datab => \ALT_INV_Mux42~0_combout\,
	datac => \ALT_INV_Mux46~0_combout\,
	datad => \ALT_INV_Mux46~3_combout\,
	datae => \ALT_INV_sra64[6][53]~15_combout\,
	dataf => \ALT_INV_srl64[6][53]~140_combout\,
	combout => \Mux42~2_combout\);

-- Location: LABCELL_X43_Y36_N22
\Mux42~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = ( \srl64[3][29]~108_combout\ & ( \srl64[3][21]~107_combout\ & ( ((!\Mux36~0_combout\ & ((!\Mux42~2_combout\))) # (\Mux36~0_combout\ & (\srl64[4][37]~111_combout\))) # (\Y_sra[31]~3_combout\) ) ) ) # ( !\srl64[3][29]~108_combout\ & ( 
-- \srl64[3][21]~107_combout\ & ( (!\Y_sra[31]~3_combout\ & ((!\Mux36~0_combout\ & ((!\Mux42~2_combout\))) # (\Mux36~0_combout\ & (\srl64[4][37]~111_combout\)))) # (\Y_sra[31]~3_combout\ & (((!\Mux36~0_combout\)))) ) ) ) # ( \srl64[3][29]~108_combout\ & ( 
-- !\srl64[3][21]~107_combout\ & ( (!\Y_sra[31]~3_combout\ & ((!\Mux36~0_combout\ & ((!\Mux42~2_combout\))) # (\Mux36~0_combout\ & (\srl64[4][37]~111_combout\)))) # (\Y_sra[31]~3_combout\ & (((\Mux36~0_combout\)))) ) ) ) # ( !\srl64[3][29]~108_combout\ & ( 
-- !\srl64[3][21]~107_combout\ & ( (!\Y_sra[31]~3_combout\ & ((!\Mux36~0_combout\ & ((!\Mux42~2_combout\))) # (\Mux36~0_combout\ & (\srl64[4][37]~111_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000100010101000000111011111110101001000101111010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[31]~3_combout\,
	datab => \ALT_INV_srl64[4][37]~111_combout\,
	datac => \ALT_INV_Mux42~2_combout\,
	datad => \ALT_INV_Mux36~0_combout\,
	datae => \ALT_INV_srl64[3][29]~108_combout\,
	dataf => \ALT_INV_srl64[3][21]~107_combout\,
	combout => \Mux42~3_combout\);

-- Location: MLABCELL_X44_Y36_N36
\Mux42~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = ( \Mux36~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux42~4_combout\)) # (\sll64[4][5]~14_combout\))) # (\ShiftFN[1]~input_o\ & (((\Mux42~3_combout\)))) ) ) # ( !\Mux36~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux42~4_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Mux42~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_sll64[4][5]~14_combout\,
	datac => \ALT_INV_Mux42~4_combout\,
	datad => \ALT_INV_Mux42~3_combout\,
	dataf => \ALT_INV_Mux36~1_combout\,
	combout => \Mux42~5_combout\);

-- Location: MLABCELL_X39_Y35_N18
\sll64[2][22]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][22]~50_combout\ = ( \A[21]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ & (\A[19]~input_o\)) ) ) ) # ( !\A[21]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ 
-- & (\A[19]~input_o\)) ) ) ) # ( \A[21]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[22]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( !\B[1]~input_o\ & ( (\A[22]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][22]~50_combout\);

-- Location: MLABCELL_X42_Y34_N34
\sll64[4][22]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][22]~51_combout\ = ( \sll64[2][18]~42_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][14]~31_combout\)) # (\B[2]~input_o\ & ((\sll64[2][10]~23_combout\))) ) ) ) # ( !\sll64[2][18]~42_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ 
-- & (\sll64[2][14]~31_combout\)) # (\B[2]~input_o\ & ((\sll64[2][10]~23_combout\))) ) ) ) # ( \sll64[2][18]~42_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][22]~50_combout\) ) ) ) # ( !\sll64[2][18]~42_combout\ & ( !\B[3]~input_o\ & ( 
-- (\sll64[2][22]~50_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][14]~31_combout\,
	datab => \ALT_INV_sll64[2][22]~50_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][10]~23_combout\,
	datae => \ALT_INV_sll64[2][18]~42_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][22]~51_combout\);

-- Location: LABCELL_X40_Y34_N30
\Mux41~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = ( \A[22]~input_o\ & ( (!\Mux46~7_combout\ & ((!\Mux36~2_combout\) # (\sll64[4][22]~51_combout\))) ) ) # ( !\A[22]~input_o\ & ( (\Mux36~2_combout\ & (!\Mux46~7_combout\ & \sll64[4][22]~51_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux36~2_combout\,
	datac => \ALT_INV_Mux46~7_combout\,
	datad => \ALT_INV_sll64[4][22]~51_combout\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Mux41~4_combout\);

-- Location: LABCELL_X38_Y38_N16
\sra64[3][62]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][62]~16_combout\ = (!\Mux61~9_combout\ & ((\sra64[0][63]~0_combout\))) # (\Mux61~9_combout\ & (\srl64[1][62]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][62]~3_combout\,
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_Mux61~9_combout\,
	combout => \sra64[3][62]~16_combout\);

-- Location: LABCELL_X38_Y38_N8
\Mux41~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = ( \B[3]~input_o\ & ( \Mux38~0_combout\ & ( (!\B[4]~input_o\ & ((\sra64[3][62]~16_combout\))) # (\B[4]~input_o\ & (\A[63]~input_o\)) ) ) ) # ( !\B[3]~input_o\ & ( \Mux38~0_combout\ & ( (!\B[4]~input_o\ & (\srl64[3][54]~120_combout\)) # 
-- (\B[4]~input_o\ & ((\A[63]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000111010001110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][54]~120_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_sra64[3][62]~16_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Mux38~0_combout\,
	combout => \Mux41~1_combout\);

-- Location: LABCELL_X38_Y38_N2
\Mux41~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \Mux46~2_combout\ & ( (!\B[3]~input_o\ & (((\srl64[3][54]~120_combout\)))) # (\B[3]~input_o\ & (\srl64[1][62]~3_combout\ & ((\Mux61~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[1][62]~3_combout\,
	datac => \ALT_INV_srl64[3][54]~120_combout\,
	datad => \ALT_INV_Mux61~9_combout\,
	dataf => \ALT_INV_Mux46~2_combout\,
	combout => \Mux41~0_combout\);

-- Location: LABCELL_X38_Y38_N6
\srl64[6][54]~141\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][54]~141_combout\ = ( \srl64[3][54]~120_combout\ & ( (\sll64[6][1]~1_combout\ & ((!\B[3]~input_o\) # ((\srl64[1][62]~3_combout\ & \Mux61~9_combout\)))) ) ) # ( !\srl64[3][54]~120_combout\ & ( (\B[3]~input_o\ & (\sll64[6][1]~1_combout\ & 
-- (\srl64[1][62]~3_combout\ & \Mux61~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100100010001000110010001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[6][1]~1_combout\,
	datac => \ALT_INV_srl64[1][62]~3_combout\,
	datad => \ALT_INV_Mux61~9_combout\,
	dataf => \ALT_INV_srl64[3][54]~120_combout\,
	combout => \srl64[6][54]~141_combout\);

-- Location: LABCELL_X38_Y38_N4
\sra64[6][54]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][54]~17_combout\ = ( \sra64[3][62]~16_combout\ & ( (!\sll64[6][1]~1_combout\ & (((\sra64[0][63]~0_combout\)))) # (\sll64[6][1]~1_combout\ & (((\srl64[3][54]~120_combout\)) # (\B[3]~input_o\))) ) ) # ( !\sra64[3][62]~16_combout\ & ( 
-- (!\sll64[6][1]~1_combout\ & (((\sra64[0][63]~0_combout\)))) # (\sll64[6][1]~1_combout\ & (!\B[3]~input_o\ & (\srl64[3][54]~120_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[6][1]~1_combout\,
	datac => \ALT_INV_srl64[3][54]~120_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_sra64[3][62]~16_combout\,
	combout => \sra64[6][54]~17_combout\);

-- Location: LABCELL_X38_Y38_N34
\Mux41~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = ( \Mux46~3_combout\ & ( \sra64[6][54]~17_combout\ & ( (!\Mux41~1_combout\ & (!\Mux41~0_combout\ & (!\srl64[6][54]~141_combout\ & !\Mux46~0_combout\))) ) ) ) # ( !\Mux46~3_combout\ & ( \sra64[6][54]~17_combout\ & ( (!\Mux41~1_combout\ & 
-- (!\Mux41~0_combout\ & !\Mux46~0_combout\)) ) ) ) # ( \Mux46~3_combout\ & ( !\sra64[6][54]~17_combout\ & ( (!\Mux41~1_combout\ & (!\Mux41~0_combout\ & !\srl64[6][54]~141_combout\)) ) ) ) # ( !\Mux46~3_combout\ & ( !\sra64[6][54]~17_combout\ & ( 
-- (!\Mux41~1_combout\ & !\Mux41~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100000001000000010001000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux41~1_combout\,
	datab => \ALT_INV_Mux41~0_combout\,
	datac => \ALT_INV_srl64[6][54]~141_combout\,
	datad => \ALT_INV_Mux46~0_combout\,
	datae => \ALT_INV_Mux46~3_combout\,
	dataf => \ALT_INV_sra64[6][54]~17_combout\,
	combout => \Mux41~2_combout\);

-- Location: MLABCELL_X39_Y34_N34
\Mux41~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = ( \Mux41~2_combout\ & ( \srl64[3][22]~115_combout\ & ( (!\Mux36~0_combout\ & (((\Y_sra[31]~3_combout\)))) # (\Mux36~0_combout\ & ((!\Y_sra[31]~3_combout\ & ((\srl64[4][38]~119_combout\))) # (\Y_sra[31]~3_combout\ & 
-- (\srl64[3][30]~116_combout\)))) ) ) ) # ( !\Mux41~2_combout\ & ( \srl64[3][22]~115_combout\ & ( (!\Mux36~0_combout\) # ((!\Y_sra[31]~3_combout\ & ((\srl64[4][38]~119_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][30]~116_combout\))) ) ) ) # ( 
-- \Mux41~2_combout\ & ( !\srl64[3][22]~115_combout\ & ( (\Mux36~0_combout\ & ((!\Y_sra[31]~3_combout\ & ((\srl64[4][38]~119_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][30]~116_combout\)))) ) ) ) # ( !\Mux41~2_combout\ & ( !\srl64[3][22]~115_combout\ & 
-- ( (!\Mux36~0_combout\ & (((!\Y_sra[31]~3_combout\)))) # (\Mux36~0_combout\ & ((!\Y_sra[31]~3_combout\ & ((\srl64[4][38]~119_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][30]~116_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100010001000001010001000110101111101110110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~0_combout\,
	datab => \ALT_INV_srl64[3][30]~116_combout\,
	datac => \ALT_INV_srl64[4][38]~119_combout\,
	datad => \ALT_INV_Y_sra[31]~3_combout\,
	datae => \ALT_INV_Mux41~2_combout\,
	dataf => \ALT_INV_srl64[3][22]~115_combout\,
	combout => \Mux41~3_combout\);

-- Location: LABCELL_X40_Y34_N14
\Mux41~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~5_combout\ = ( \sll64[4][6]~16_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux36~1_combout\)) # (\Mux41~4_combout\))) # (\ShiftFN[1]~input_o\ & (((\Mux41~3_combout\)))) ) ) # ( !\sll64[4][6]~16_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\Mux41~4_combout\)) # (\ShiftFN[1]~input_o\ & ((\Mux41~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux41~4_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \ALT_INV_Mux41~3_combout\,
	dataf => \ALT_INV_sll64[4][6]~16_combout\,
	combout => \Mux41~5_combout\);

-- Location: MLABCELL_X39_Y35_N22
\sll64[2][23]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][23]~52_combout\ = ( \A[23]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[21]~input_o\)) # (\B[0]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[21]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[20]~input_o\))) ) ) ) # ( \A[23]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[22]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( !\B[1]~input_o\ & ( (\A[22]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][23]~52_combout\);

-- Location: MLABCELL_X39_Y36_N14
\sll64[4][23]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][23]~53_combout\ = ( \sll64[2][11]~25_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][15]~33_combout\) # (\B[2]~input_o\) ) ) ) # ( !\sll64[2][11]~25_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \sll64[2][15]~33_combout\) ) ) ) # ( 
-- \sll64[2][11]~25_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][23]~52_combout\))) # (\B[2]~input_o\ & (\sll64[2][19]~44_combout\)) ) ) ) # ( !\sll64[2][11]~25_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][23]~52_combout\))) # (\B[2]~input_o\ & (\sll64[2][19]~44_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][19]~44_combout\,
	datac => \ALT_INV_sll64[2][15]~33_combout\,
	datad => \ALT_INV_sll64[2][23]~52_combout\,
	datae => \ALT_INV_sll64[2][11]~25_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][23]~53_combout\);

-- Location: MLABCELL_X44_Y37_N4
\Mux40~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = ( !\Mux46~7_combout\ & ( (!\Mux36~2_combout\ & ((\A[23]~input_o\))) # (\Mux36~2_combout\ & (\sll64[4][23]~53_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux36~2_combout\,
	datac => \ALT_INV_sll64[4][23]~53_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_Mux46~7_combout\,
	combout => \Mux40~4_combout\);

-- Location: LABCELL_X38_Y38_N36
\srl64[4][55]~142\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][55]~142_combout\ = ( !\B[0]~input_o\ & ( (\sra64[0][63]~0_combout\ & (\Mux61~9_combout\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][63]~0_combout\,
	datab => \ALT_INV_Mux61~9_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[4][55]~142_combout\);

-- Location: LABCELL_X40_Y40_N2
\srl64[6][55]~143\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][55]~143_combout\ = ( \B[3]~input_o\ & ( (\sll64[6][1]~1_combout\ & \srl64[4][55]~142_combout\) ) ) # ( !\B[3]~input_o\ & ( (\sll64[6][1]~1_combout\ & ((\srl64[4][55]~142_combout\) # (\srl64[3][55]~127_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][55]~127_combout\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_srl64[4][55]~142_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[6][55]~143_combout\);

-- Location: LABCELL_X40_Y40_N18
\Mux40~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \Mux46~2_combout\ & ( ((\srl64[3][55]~127_combout\ & !\B[3]~input_o\)) # (\srl64[4][55]~142_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][55]~127_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[4][55]~142_combout\,
	dataf => \ALT_INV_Mux46~2_combout\,
	combout => \Mux40~0_combout\);

-- Location: LABCELL_X40_Y40_N16
\Mux40~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( \sra64[0][63]~0_combout\ & ( ((\B[4]~input_o\) # (\B[3]~input_o\)) # (\srl64[3][55]~127_combout\) ) ) # ( !\sra64[0][63]~0_combout\ & ( (\srl64[3][55]~127_combout\ & (!\B[3]~input_o\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][55]~127_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sra64[0][63]~0_combout\,
	combout => \Mux40~1_combout\);

-- Location: LABCELL_X40_Y40_N30
\Mux40~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ( \Mux40~1_combout\ & ( (!\ShiftFN[0]~input_o\ & (!\Mux40~0_combout\ & ((!\Mux46~3_combout\) # (!\srl64[6][55]~143_combout\)))) ) ) # ( !\Mux40~1_combout\ & ( (!\Mux40~0_combout\ & ((!\Mux46~3_combout\) # 
-- (!\srl64[6][55]~143_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux46~3_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_srl64[6][55]~143_combout\,
	datad => \ALT_INV_Mux40~0_combout\,
	dataf => \ALT_INV_Mux40~1_combout\,
	combout => \Mux40~2_combout\);

-- Location: LABCELL_X40_Y40_N24
\Mux40~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = ( \Mux36~0_combout\ & ( \srl64[4][39]~126_combout\ & ( (!\Y_sra[31]~3_combout\) # (\srl64[3][31]~123_combout\) ) ) ) # ( !\Mux36~0_combout\ & ( \srl64[4][39]~126_combout\ & ( (!\Y_sra[31]~3_combout\ & ((!\Mux40~2_combout\))) # 
-- (\Y_sra[31]~3_combout\ & (\srl64[3][23]~122_combout\)) ) ) ) # ( \Mux36~0_combout\ & ( !\srl64[4][39]~126_combout\ & ( (\srl64[3][31]~123_combout\ & \Y_sra[31]~3_combout\) ) ) ) # ( !\Mux36~0_combout\ & ( !\srl64[4][39]~126_combout\ & ( 
-- (!\Y_sra[31]~3_combout\ & ((!\Mux40~2_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][23]~122_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011000001010000010111110011000000111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][31]~123_combout\,
	datab => \ALT_INV_srl64[3][23]~122_combout\,
	datac => \ALT_INV_Y_sra[31]~3_combout\,
	datad => \ALT_INV_Mux40~2_combout\,
	datae => \ALT_INV_Mux36~0_combout\,
	dataf => \ALT_INV_srl64[4][39]~126_combout\,
	combout => \Mux40~3_combout\);

-- Location: LABCELL_X40_Y36_N20
\Mux40~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~5_combout\ = ( \Mux36~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\sll64[4][7]~18_combout\)) # (\Mux40~4_combout\))) # (\ShiftFN[1]~input_o\ & (((\Mux40~3_combout\)))) ) ) # ( !\Mux36~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux40~4_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Mux40~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux40~4_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux40~3_combout\,
	datad => \ALT_INV_sll64[4][7]~18_combout\,
	dataf => \ALT_INV_Mux36~1_combout\,
	combout => \Mux40~5_combout\);

-- Location: MLABCELL_X44_Y37_N10
\sll64[2][24]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][24]~54_combout\ = ( \A[21]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[22]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( \B[1]~input_o\ & ( (\A[22]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[21]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[24]~input_o\)) # (\B[0]~input_o\ & ((\A[23]~input_o\))) ) ) ) # ( !\A[21]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[24]~input_o\)) # (\B[0]~input_o\ & ((\A[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][24]~54_combout\);

-- Location: LABCELL_X40_Y35_N0
\sll64[4][24]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][24]~55_combout\ = ( \sll64[2][16]~36_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][12]~27_combout\) ) ) ) # ( !\sll64[2][16]~36_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][12]~27_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][16]~36_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][24]~54_combout\))) # (\B[2]~input_o\ & (\sll64[2][20]~46_combout\)) ) ) ) # ( !\sll64[2][16]~36_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][24]~54_combout\))) # (\B[2]~input_o\ & (\sll64[2][20]~46_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][20]~46_combout\,
	datab => \ALT_INV_sll64[2][24]~54_combout\,
	datac => \ALT_INV_sll64[2][12]~27_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][16]~36_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][24]~55_combout\);

-- Location: MLABCELL_X42_Y39_N22
\Mux39~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = ( \A[24]~input_o\ & ( (!\Mux46~7_combout\ & ((!\Mux36~2_combout\) # (\sll64[4][24]~55_combout\))) ) ) # ( !\A[24]~input_o\ & ( (\sll64[4][24]~55_combout\ & (\Mux36~2_combout\ & !\Mux46~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][24]~55_combout\,
	datac => \ALT_INV_Mux36~2_combout\,
	datad => \ALT_INV_Mux46~7_combout\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \Mux39~2_combout\);

-- Location: LABCELL_X38_Y37_N12
\Mux39~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \srl64[3][56]~4_combout\ & ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (!\B[3]~input_o\ & (\Y_sra[31]~0_combout\))) # (\ShiftFN[0]~input_o\ & (((\sra64[0][63]~0_combout\)))) ) ) ) # ( !\srl64[3][56]~4_combout\ & ( \B[4]~input_o\ & 
-- ( (\sra64[0][63]~0_combout\ & \ShiftFN[0]~input_o\) ) ) ) # ( \srl64[3][56]~4_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\) # ((\sra64[0][63]~0_combout\ & \ShiftFN[0]~input_o\)) ) ) ) # ( !\srl64[3][56]~4_combout\ & ( !\B[4]~input_o\ & ( 
-- (\B[3]~input_o\ & (\sra64[0][63]~0_combout\ & \ShiftFN[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101101010101010111100000000000011110010001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Y_sra[31]~0_combout\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_srl64[3][56]~4_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: MLABCELL_X42_Y39_N16
\Mux39~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = ( \srl64[3][32]~19_combout\ & ( \srl64[4][40]~128_combout\ & ( ((!\Y_sra[31]~3_combout\ & ((\Mux39~0_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][24]~40_combout\))) # (\Mux36~0_combout\) ) ) ) # ( !\srl64[3][32]~19_combout\ & ( 
-- \srl64[4][40]~128_combout\ & ( (!\Y_sra[31]~3_combout\ & (((\Mux36~0_combout\) # (\Mux39~0_combout\)))) # (\Y_sra[31]~3_combout\ & (\srl64[3][24]~40_combout\ & ((!\Mux36~0_combout\)))) ) ) ) # ( \srl64[3][32]~19_combout\ & ( !\srl64[4][40]~128_combout\ & 
-- ( (!\Y_sra[31]~3_combout\ & (((\Mux39~0_combout\ & !\Mux36~0_combout\)))) # (\Y_sra[31]~3_combout\ & (((\Mux36~0_combout\)) # (\srl64[3][24]~40_combout\))) ) ) ) # ( !\srl64[3][32]~19_combout\ & ( !\srl64[4][40]~128_combout\ & ( (!\Mux36~0_combout\ & 
-- ((!\Y_sra[31]~3_combout\ & ((\Mux39~0_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][24]~40_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][24]~40_combout\,
	datab => \ALT_INV_Y_sra[31]~3_combout\,
	datac => \ALT_INV_Mux39~0_combout\,
	datad => \ALT_INV_Mux36~0_combout\,
	datae => \ALT_INV_srl64[3][32]~19_combout\,
	dataf => \ALT_INV_srl64[4][40]~128_combout\,
	combout => \Mux39~1_combout\);

-- Location: MLABCELL_X42_Y39_N6
\Mux39~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = ( \sll64[4][8]~20_combout\ & ( \Mux39~1_combout\ & ( ((\Mux36~1_combout\) # (\Mux39~2_combout\)) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\sll64[4][8]~20_combout\ & ( \Mux39~1_combout\ & ( (\Mux39~2_combout\) # (\ShiftFN[1]~input_o\) ) ) ) 
-- # ( \sll64[4][8]~20_combout\ & ( !\Mux39~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Mux36~1_combout\) # (\Mux39~2_combout\))) ) ) ) # ( !\sll64[4][8]~20_combout\ & ( !\Mux39~1_combout\ & ( (!\ShiftFN[1]~input_o\ & \Mux39~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011001100110000111111001111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux39~2_combout\,
	datad => \ALT_INV_Mux36~1_combout\,
	datae => \ALT_INV_sll64[4][8]~20_combout\,
	dataf => \ALT_INV_Mux39~1_combout\,
	combout => \Mux39~3_combout\);

-- Location: LABCELL_X40_Y38_N24
\sra64[6][57]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][57]~18_combout\ = ( \sra64[3][57]~1_combout\ & ( ((!\B[3]~input_o\ & \sll64[6][1]~1_combout\)) # (\sra64[0][63]~0_combout\) ) ) # ( !\sra64[3][57]~1_combout\ & ( (\sra64[0][63]~0_combout\ & ((!\sll64[6][1]~1_combout\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_sra64[3][57]~1_combout\,
	combout => \sra64[6][57]~18_combout\);

-- Location: LABCELL_X35_Y38_N26
\Mux38~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & (!\ExtWord~input_o\ & \A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	combout => \Mux38~3_combout\);

-- Location: LABCELL_X40_Y38_N4
\Mux38~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = ( \srl64[3][57]~67_combout\ & ( !\Mux38~3_combout\ & ( ((!\Mux46~2_combout\ & ((!\sll64[6][1]~1_combout\) # (!\Mux46~3_combout\)))) # (\B[3]~input_o\) ) ) ) # ( !\srl64[3][57]~67_combout\ & ( !\Mux38~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[6][1]~1_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux46~2_combout\,
	datae => \ALT_INV_srl64[3][57]~67_combout\,
	dataf => \ALT_INV_Mux38~3_combout\,
	combout => \Mux38~4_combout\);

-- Location: MLABCELL_X37_Y39_N6
\Mux38~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = ( !\ExtWord~input_o\ & ( (!\B[4]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux38~1_combout\);

-- Location: LABCELL_X40_Y38_N20
\Mux38~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = ( \Mux38~1_combout\ & ( (!\B[3]~input_o\ & (\sra64[3][57]~1_combout\)) # (\B[3]~input_o\ & ((\sra64[0][63]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sra64[3][57]~1_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_Mux38~1_combout\,
	combout => \Mux38~2_combout\);

-- Location: LABCELL_X40_Y38_N22
\Mux38~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~5_combout\ = ( \Mux46~0_combout\ & ( (!\sra64[6][57]~18_combout\ & (\Mux38~4_combout\ & !\Mux38~2_combout\)) ) ) # ( !\Mux46~0_combout\ & ( (\Mux38~4_combout\ & !\Mux38~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[6][57]~18_combout\,
	datac => \ALT_INV_Mux38~4_combout\,
	datad => \ALT_INV_Mux38~2_combout\,
	dataf => \ALT_INV_Mux46~0_combout\,
	combout => \Mux38~5_combout\);

-- Location: LABCELL_X43_Y38_N38
\Mux38~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~6_combout\ = ( \srl64[4][41]~129_combout\ & ( \srl64[3][25]~61_combout\ & ( (!\Mux36~0_combout\ & (((!\Mux38~5_combout\)) # (\Y_sra[31]~3_combout\))) # (\Mux36~0_combout\ & ((!\Y_sra[31]~3_combout\) # ((\srl64[3][33]~82_combout\)))) ) ) ) # ( 
-- !\srl64[4][41]~129_combout\ & ( \srl64[3][25]~61_combout\ & ( (!\Mux36~0_combout\ & (((!\Mux38~5_combout\)) # (\Y_sra[31]~3_combout\))) # (\Mux36~0_combout\ & (\Y_sra[31]~3_combout\ & ((\srl64[3][33]~82_combout\)))) ) ) ) # ( \srl64[4][41]~129_combout\ & 
-- ( !\srl64[3][25]~61_combout\ & ( (!\Mux36~0_combout\ & (!\Y_sra[31]~3_combout\ & (!\Mux38~5_combout\))) # (\Mux36~0_combout\ & ((!\Y_sra[31]~3_combout\) # ((\srl64[3][33]~82_combout\)))) ) ) ) # ( !\srl64[4][41]~129_combout\ & ( !\srl64[3][25]~61_combout\ 
-- & ( (!\Mux36~0_combout\ & (!\Y_sra[31]~3_combout\ & (!\Mux38~5_combout\))) # (\Mux36~0_combout\ & (\Y_sra[31]~3_combout\ & ((\srl64[3][33]~82_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010010001110001001101010110100010101100111110011011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~0_combout\,
	datab => \ALT_INV_Y_sra[31]~3_combout\,
	datac => \ALT_INV_Mux38~5_combout\,
	datad => \ALT_INV_srl64[3][33]~82_combout\,
	datae => \ALT_INV_srl64[4][41]~129_combout\,
	dataf => \ALT_INV_srl64[3][25]~61_combout\,
	combout => \Mux38~6_combout\);

-- Location: MLABCELL_X44_Y37_N14
\sll64[2][25]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][25]~56_combout\ = ( \A[23]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[22]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[22]~input_o\) ) ) ) # ( \A[23]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((\A[25]~input_o\))) # (\B[0]~input_o\ & (\A[24]~input_o\)) ) ) ) # ( !\A[23]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[25]~input_o\))) # (\B[0]~input_o\ & (\A[24]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][25]~56_combout\);

-- Location: LABCELL_X45_Y36_N20
\sll64[4][25]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][25]~57_combout\ = ( \B[3]~input_o\ & ( \sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\ & ((\sll64[2][17]~40_combout\))) # (\B[2]~input_o\ & (\sll64[2][13]~29_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][21]~48_combout\ & ( 
-- (\sll64[2][25]~56_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\ & ((\sll64[2][17]~40_combout\))) # (\B[2]~input_o\ & (\sll64[2][13]~29_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\ & \sll64[2][25]~56_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][13]~29_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][17]~40_combout\,
	datad => \ALT_INV_sll64[2][25]~56_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][21]~48_combout\,
	combout => \sll64[4][25]~57_combout\);

-- Location: MLABCELL_X44_Y38_N34
\Mux38~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~7_combout\ = ( \Mux36~2_combout\ & ( (\sll64[4][25]~57_combout\ & !\Mux46~7_combout\) ) ) # ( !\Mux36~2_combout\ & ( (\A[25]~input_o\ & !\Mux46~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sll64[4][25]~57_combout\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_Mux46~7_combout\,
	dataf => \ALT_INV_Mux36~2_combout\,
	combout => \Mux38~7_combout\);

-- Location: MLABCELL_X44_Y38_N0
\Mux38~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~8_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux38~6_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( ((\sll64[4][9]~22_combout\ & \Mux36~1_combout\)) # (\Mux38~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][9]~22_combout\,
	datab => \ALT_INV_Mux38~6_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \ALT_INV_Mux38~7_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux38~8_combout\);

-- Location: MLABCELL_X39_Y38_N14
\sra64[6][58]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][58]~19_combout\ = ( \sll64[6][1]~1_combout\ & ( (!\B[3]~input_o\ & (\sra64[3][58]~4_combout\)) # (\B[3]~input_o\ & ((\sra64[0][63]~0_combout\))) ) ) # ( !\sll64[6][1]~1_combout\ & ( \sra64[0][63]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[3][58]~4_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \sra64[6][58]~19_combout\);

-- Location: LABCELL_X40_Y38_N6
\Mux37~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \srl64[3][58]~131_combout\ & ( !\Mux38~3_combout\ & ( ((!\Mux46~2_combout\ & ((!\sll64[6][1]~1_combout\) # (!\Mux46~3_combout\)))) # (\B[3]~input_o\) ) ) ) # ( !\srl64[3][58]~131_combout\ & ( !\Mux38~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101011101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[6][1]~1_combout\,
	datac => \ALT_INV_Mux46~2_combout\,
	datad => \ALT_INV_Mux46~3_combout\,
	datae => \ALT_INV_srl64[3][58]~131_combout\,
	dataf => \ALT_INV_Mux38~3_combout\,
	combout => \Mux37~0_combout\);

-- Location: MLABCELL_X39_Y38_N2
\Mux37~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = ( \Mux37~0_combout\ & ( (!\Mux46~0_combout\ & (((!\Mux38~1_combout\) # (!\sra64[4][58]~5_combout\)))) # (\Mux46~0_combout\ & (!\sra64[6][58]~19_combout\ & ((!\Mux38~1_combout\) # (!\sra64[4][58]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111000001110111011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux46~0_combout\,
	datab => \ALT_INV_sra64[6][58]~19_combout\,
	datac => \ALT_INV_Mux38~1_combout\,
	datad => \ALT_INV_sra64[4][58]~5_combout\,
	dataf => \ALT_INV_Mux37~0_combout\,
	combout => \Mux37~1_combout\);

-- Location: LABCELL_X38_Y37_N18
\Mux37~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = ( \Y_sra[31]~3_combout\ & ( \srl64[3][26]~86_combout\ & ( (!\Mux36~0_combout\) # (\srl64[3][34]~88_combout\) ) ) ) # ( !\Y_sra[31]~3_combout\ & ( \srl64[3][26]~86_combout\ & ( (!\Mux36~0_combout\ & ((!\Mux37~1_combout\))) # 
-- (\Mux36~0_combout\ & (\srl64[4][42]~130_combout\)) ) ) ) # ( \Y_sra[31]~3_combout\ & ( !\srl64[3][26]~86_combout\ & ( (\Mux36~0_combout\ & \srl64[3][34]~88_combout\) ) ) ) # ( !\Y_sra[31]~3_combout\ & ( !\srl64[3][26]~86_combout\ & ( (!\Mux36~0_combout\ & 
-- ((!\Mux37~1_combout\))) # (\Mux36~0_combout\ & (\srl64[4][42]~130_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101000000000000111111000101110001011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[4][42]~130_combout\,
	datab => \ALT_INV_Mux37~1_combout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_srl64[3][34]~88_combout\,
	datae => \ALT_INV_Y_sra[31]~3_combout\,
	dataf => \ALT_INV_srl64[3][26]~86_combout\,
	combout => \Mux37~2_combout\);

-- Location: MLABCELL_X44_Y37_N36
\sll64[2][26]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][26]~58_combout\ = ( \A[23]~input_o\ & ( \A[25]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[26]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\A[26]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[24]~input_o\ & (!\B[0]~input_o\))) ) ) ) # ( \A[23]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[26]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # 
-- (\A[24]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[26]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \sll64[2][26]~58_combout\);

-- Location: MLABCELL_X42_Y34_N36
\sll64[4][26]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][26]~59_combout\ = ( \sll64[2][18]~42_combout\ & ( \sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & (((\sll64[2][26]~58_combout\)) # (\B[2]~input_o\))) # (\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\sll64[2][14]~31_combout\)))) ) ) ) # ( 
-- !\sll64[2][18]~42_combout\ & ( \sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & (((\sll64[2][26]~58_combout\)) # (\B[2]~input_o\))) # (\B[3]~input_o\ & (\B[2]~input_o\ & (\sll64[2][14]~31_combout\))) ) ) ) # ( \sll64[2][18]~42_combout\ & ( 
-- !\sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\sll64[2][26]~58_combout\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\sll64[2][14]~31_combout\)))) ) ) ) # ( !\sll64[2][18]~42_combout\ & ( !\sll64[2][22]~50_combout\ & ( 
-- (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\sll64[2][26]~58_combout\)))) # (\B[3]~input_o\ & (\B[2]~input_o\ & (\sll64[2][14]~31_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][14]~31_combout\,
	datad => \ALT_INV_sll64[2][26]~58_combout\,
	datae => \ALT_INV_sll64[2][18]~42_combout\,
	dataf => \ALT_INV_sll64[2][22]~50_combout\,
	combout => \sll64[4][26]~59_combout\);

-- Location: MLABCELL_X37_Y37_N26
\Mux37~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = ( \A[26]~input_o\ & ( (!\Mux46~7_combout\ & ((!\Mux36~2_combout\) # (\sll64[4][26]~59_combout\))) ) ) # ( !\A[26]~input_o\ & ( (\sll64[4][26]~59_combout\ & (!\Mux46~7_combout\ & \Mux36~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][26]~59_combout\,
	datac => \ALT_INV_Mux46~7_combout\,
	datad => \ALT_INV_Mux36~2_combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \Mux37~3_combout\);

-- Location: MLABCELL_X37_Y37_N12
\Mux37~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = ( \Mux36~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux37~3_combout\) # (\sll64[4][10]~24_combout\)))) # (\ShiftFN[1]~input_o\ & (\Mux37~2_combout\)) ) ) # ( !\Mux36~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Mux37~3_combout\))) # 
-- (\ShiftFN[1]~input_o\ & (\Mux37~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux37~2_combout\,
	datab => \ALT_INV_sll64[4][10]~24_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux37~3_combout\,
	dataf => \ALT_INV_Mux36~1_combout\,
	combout => \Mux37~4_combout\);

-- Location: LABCELL_X40_Y37_N24
\sll64[2][27]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][27]~60_combout\ = ( \B[0]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\ & ((\A[26]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[25]~input_o\ & ( (\A[27]~input_o\) # (\B[1]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & ((\A[26]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & \A[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \sll64[2][27]~60_combout\);

-- Location: MLABCELL_X39_Y36_N36
\sll64[4][27]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][27]~61_combout\ = ( \sll64[2][27]~60_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][19]~44_combout\)) # (\B[2]~input_o\ & ((\sll64[2][15]~33_combout\))) ) ) ) # ( !\sll64[2][27]~60_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ 
-- & (\sll64[2][19]~44_combout\)) # (\B[2]~input_o\ & ((\sll64[2][15]~33_combout\))) ) ) ) # ( \sll64[2][27]~60_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][23]~52_combout\) ) ) ) # ( !\sll64[2][27]~60_combout\ & ( !\B[3]~input_o\ & ( 
-- (\sll64[2][23]~52_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][23]~52_combout\,
	datab => \ALT_INV_sll64[2][19]~44_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][15]~33_combout\,
	datae => \ALT_INV_sll64[2][27]~60_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][27]~61_combout\);

-- Location: LABCELL_X38_Y36_N8
\Mux36~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~6_combout\ = ( \A[27]~input_o\ & ( (!\Mux46~7_combout\ & ((!\Mux36~2_combout\) # (\sll64[4][27]~61_combout\))) ) ) # ( !\A[27]~input_o\ & ( (\sll64[4][27]~61_combout\ & (!\Mux46~7_combout\ & \Mux36~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][27]~61_combout\,
	datac => \ALT_INV_Mux46~7_combout\,
	datad => \ALT_INV_Mux36~2_combout\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \Mux36~6_combout\);

-- Location: MLABCELL_X37_Y37_N30
\sra64[6][59]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][59]~20_combout\ = ( \sra64[4][59]~6_combout\ & ( (\sra64[0][63]~0_combout\) # (\sll64[6][1]~1_combout\) ) ) # ( !\sra64[4][59]~6_combout\ & ( (!\sll64[6][1]~1_combout\ & \sra64[0][63]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_sra64[4][59]~6_combout\,
	combout => \sra64[6][59]~20_combout\);

-- Location: MLABCELL_X37_Y40_N26
\Mux36~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = ( \Mux46~3_combout\ & ( \Mux46~2_combout\ & ( (!\Mux38~3_combout\ & ((\srl64[3][59]~134_combout\) # (\B[3]~input_o\))) ) ) ) # ( !\Mux46~3_combout\ & ( \Mux46~2_combout\ & ( (!\Mux38~3_combout\ & ((\srl64[3][59]~134_combout\) # 
-- (\B[3]~input_o\))) ) ) ) # ( \Mux46~3_combout\ & ( !\Mux46~2_combout\ & ( (!\Mux38~3_combout\ & (((!\sll64[6][1]~1_combout\) # (\srl64[3][59]~134_combout\)) # (\B[3]~input_o\))) ) ) ) # ( !\Mux46~3_combout\ & ( !\Mux46~2_combout\ & ( !\Mux38~3_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux38~3_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][59]~134_combout\,
	datad => \ALT_INV_sll64[6][1]~1_combout\,
	datae => \ALT_INV_Mux46~3_combout\,
	dataf => \ALT_INV_Mux46~2_combout\,
	combout => \Mux36~3_combout\);

-- Location: MLABCELL_X37_Y40_N30
\Mux36~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = ( \Mux46~0_combout\ & ( (!\sra64[6][59]~20_combout\ & (\Mux36~3_combout\ & ((!\sra64[4][59]~6_combout\) # (!\Mux38~1_combout\)))) ) ) # ( !\Mux46~0_combout\ & ( (\Mux36~3_combout\ & ((!\sra64[4][59]~6_combout\) # (!\Mux38~1_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[4][59]~6_combout\,
	datab => \ALT_INV_sra64[6][59]~20_combout\,
	datac => \ALT_INV_Mux38~1_combout\,
	datad => \ALT_INV_Mux36~3_combout\,
	dataf => \ALT_INV_Mux46~0_combout\,
	combout => \Mux36~4_combout\);

-- Location: LABCELL_X38_Y40_N18
\Mux36~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = ( \srl64[4][43]~132_combout\ & ( \Y_sra[31]~3_combout\ & ( (!\Mux36~0_combout\ & ((\srl64[3][27]~93_combout\))) # (\Mux36~0_combout\ & (\srl64[3][35]~95_combout\)) ) ) ) # ( !\srl64[4][43]~132_combout\ & ( \Y_sra[31]~3_combout\ & ( 
-- (!\Mux36~0_combout\ & ((\srl64[3][27]~93_combout\))) # (\Mux36~0_combout\ & (\srl64[3][35]~95_combout\)) ) ) ) # ( \srl64[4][43]~132_combout\ & ( !\Y_sra[31]~3_combout\ & ( (!\Mux36~4_combout\) # (\Mux36~0_combout\) ) ) ) # ( !\srl64[4][43]~132_combout\ & 
-- ( !\Y_sra[31]~3_combout\ & ( (!\Mux36~4_combout\ & !\Mux36~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101011111010111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~4_combout\,
	datab => \ALT_INV_srl64[3][35]~95_combout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_srl64[3][27]~93_combout\,
	datae => \ALT_INV_srl64[4][43]~132_combout\,
	dataf => \ALT_INV_Y_sra[31]~3_combout\,
	combout => \Mux36~5_combout\);

-- Location: LABCELL_X38_Y36_N26
\Mux36~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~7_combout\ = ( \Mux36~5_combout\ & ( (((\Mux36~1_combout\ & \sll64[4][11]~26_combout\)) # (\Mux36~6_combout\)) # (\ShiftFN[1]~input_o\) ) ) # ( !\Mux36~5_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux36~1_combout\ & \sll64[4][11]~26_combout\)) # 
-- (\Mux36~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001100000001001100110000110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~1_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_sll64[4][11]~26_combout\,
	datad => \ALT_INV_Mux36~6_combout\,
	dataf => \ALT_INV_Mux36~5_combout\,
	combout => \Mux36~7_combout\);

-- Location: MLABCELL_X37_Y39_N30
\srl64[4][44]~144\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][44]~144_combout\ = ( \srl64[3][44]~101_combout\ & ( (!\B[3]~input_o\) # (\srl64[3][52]~104_combout\) ) ) # ( !\srl64[3][44]~101_combout\ & ( (\B[3]~input_o\ & \srl64[3][52]~104_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][52]~104_combout\,
	dataf => \ALT_INV_srl64[3][44]~101_combout\,
	combout => \srl64[4][44]~144_combout\);

-- Location: MLABCELL_X37_Y39_N28
\sra64[6][49]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][49]~21_combout\ = ( \A[63]~input_o\ & ( (!\B[4]~input_o\ & (!\ExtWord~input_o\ & (\B[5]~input_o\))) # (\B[4]~input_o\ & ((!\ExtWord~input_o\) # ((\A[31]~input_o\)))) ) ) # ( !\A[63]~input_o\ & ( (\B[4]~input_o\ & (\ExtWord~input_o\ & 
-- \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \sra64[6][49]~21_combout\);

-- Location: LABCELL_X38_Y39_N16
\sra64[6][60]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][60]~22_combout\ = ( \sra64[4][59]~7_combout\ & ( \sll64[6][1]~1_combout\ ) ) # ( !\sra64[4][59]~7_combout\ & ( \sll64[6][1]~1_combout\ & ( (\sll64[4][2]~4_combout\ & ((!\B[1]~input_o\ & ((\srl64[1][60]~1_combout\))) # (\B[1]~input_o\ & 
-- (\srl64[1][62]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~4_combout\,
	datab => \ALT_INV_srl64[1][62]~3_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][60]~1_combout\,
	datae => \ALT_INV_sra64[4][59]~7_combout\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \sra64[6][60]~22_combout\);

-- Location: LABCELL_X38_Y39_N2
\Mux35~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = ( \Mux46~2_combout\ & ( !\Mux38~3_combout\ & ( (!\sll64[4][2]~4_combout\) # ((!\B[1]~input_o\ & ((!\srl64[1][60]~1_combout\))) # (\B[1]~input_o\ & (!\srl64[1][62]~3_combout\))) ) ) ) # ( !\Mux46~2_combout\ & ( !\Mux38~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][62]~3_combout\,
	datac => \ALT_INV_srl64[1][60]~1_combout\,
	datad => \ALT_INV_sll64[4][2]~4_combout\,
	datae => \ALT_INV_Mux46~2_combout\,
	dataf => \ALT_INV_Mux38~3_combout\,
	combout => \Mux35~2_combout\);

-- Location: LABCELL_X38_Y39_N12
\Mux35~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \sll64[6][1]~1_combout\ & ( \B[1]~input_o\ & ( (\sll64[4][2]~4_combout\ & (\srl64[1][62]~3_combout\ & \Mux46~3_combout\)) ) ) ) # ( \sll64[6][1]~1_combout\ & ( !\B[1]~input_o\ & ( (\sll64[4][2]~4_combout\ & (\Mux46~3_combout\ & 
-- \srl64[1][60]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~4_combout\,
	datab => \ALT_INV_srl64[1][62]~3_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_srl64[1][60]~1_combout\,
	datae => \ALT_INV_sll64[6][1]~1_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LABCELL_X38_Y39_N18
\Mux35~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = ( \sra64[4][59]~7_combout\ & ( \Mux38~1_combout\ ) ) # ( !\sra64[4][59]~7_combout\ & ( \Mux38~1_combout\ & ( (\sll64[4][2]~4_combout\ & ((!\B[1]~input_o\ & ((\srl64[1][60]~1_combout\))) # (\B[1]~input_o\ & (\srl64[1][62]~3_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~4_combout\,
	datab => \ALT_INV_srl64[1][62]~3_combout\,
	datac => \ALT_INV_srl64[1][60]~1_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_sra64[4][59]~7_combout\,
	dataf => \ALT_INV_Mux38~1_combout\,
	combout => \Mux35~1_combout\);

-- Location: LABCELL_X38_Y39_N26
\Mux35~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = ( !\Mux35~0_combout\ & ( !\Mux35~1_combout\ & ( (\Mux35~2_combout\ & ((!\Mux46~0_combout\) # ((!\sra64[6][49]~21_combout\ & !\sra64[6][60]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[6][49]~21_combout\,
	datab => \ALT_INV_sra64[6][60]~22_combout\,
	datac => \ALT_INV_Mux35~2_combout\,
	datad => \ALT_INV_Mux46~0_combout\,
	datae => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_Mux35~1_combout\,
	combout => \Mux35~3_combout\);

-- Location: MLABCELL_X39_Y39_N0
\Mux35~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = ( \Mux36~0_combout\ & ( \Mux35~3_combout\ & ( (!\Y_sra[31]~3_combout\ & ((\srl64[4][44]~144_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][36]~102_combout\)) ) ) ) # ( !\Mux36~0_combout\ & ( \Mux35~3_combout\ & ( 
-- (\Y_sra[31]~3_combout\ & \srl64[3][28]~100_combout\) ) ) ) # ( \Mux36~0_combout\ & ( !\Mux35~3_combout\ & ( (!\Y_sra[31]~3_combout\ & ((\srl64[4][44]~144_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][36]~102_combout\)) ) ) ) # ( !\Mux36~0_combout\ & ( 
-- !\Mux35~3_combout\ & ( (!\Y_sra[31]~3_combout\) # (\srl64[3][28]~100_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111000110110001101100000000010101010001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[31]~3_combout\,
	datab => \ALT_INV_srl64[3][36]~102_combout\,
	datac => \ALT_INV_srl64[4][44]~144_combout\,
	datad => \ALT_INV_srl64[3][28]~100_combout\,
	datae => \ALT_INV_Mux36~0_combout\,
	dataf => \ALT_INV_Mux35~3_combout\,
	combout => \Mux35~4_combout\);

-- Location: LABCELL_X40_Y37_N10
\sll64[2][28]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][28]~62_combout\ = ( \B[0]~input_o\ & ( \A[25]~input_o\ & ( (\A[27]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & \A[27]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \sll64[2][28]~62_combout\);

-- Location: LABCELL_X40_Y35_N6
\sll64[4][28]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][28]~63_combout\ = ( \sll64[2][28]~62_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][20]~46_combout\)) # (\B[2]~input_o\ & ((\sll64[2][16]~36_combout\))) ) ) ) # ( !\sll64[2][28]~62_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ 
-- & (\sll64[2][20]~46_combout\)) # (\B[2]~input_o\ & ((\sll64[2][16]~36_combout\))) ) ) ) # ( \sll64[2][28]~62_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][24]~54_combout\) ) ) ) # ( !\sll64[2][28]~62_combout\ & ( !\B[3]~input_o\ & ( 
-- (\sll64[2][24]~54_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][20]~46_combout\,
	datab => \ALT_INV_sll64[2][24]~54_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][16]~36_combout\,
	datae => \ALT_INV_sll64[2][28]~62_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][28]~63_combout\);

-- Location: MLABCELL_X39_Y39_N26
\Mux35~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~5_combout\ = ( \A[28]~input_o\ & ( (!\Mux46~7_combout\ & ((!\Mux36~2_combout\) # (\sll64[4][28]~63_combout\))) ) ) # ( !\A[28]~input_o\ & ( (\sll64[4][28]~63_combout\ & (\Mux36~2_combout\ & !\Mux46~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sll64[4][28]~63_combout\,
	datac => \ALT_INV_Mux36~2_combout\,
	datad => \ALT_INV_Mux46~7_combout\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Mux35~5_combout\);

-- Location: MLABCELL_X39_Y39_N8
\Mux35~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~6_combout\ = ( \Mux35~5_combout\ & ( (!\ShiftFN[1]~input_o\) # (\Mux35~4_combout\) ) ) # ( !\Mux35~5_combout\ & ( (!\ShiftFN[1]~input_o\ & (\sll64[4][12]~28_combout\ & ((\Mux36~1_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Mux35~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][12]~28_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux35~4_combout\,
	datad => \ALT_INV_Mux36~1_combout\,
	dataf => \ALT_INV_Mux35~5_combout\,
	combout => \Mux35~6_combout\);

-- Location: LABCELL_X40_Y37_N32
\sll64[2][29]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][29]~64_combout\ = ( \B[0]~input_o\ & ( \A[28]~input_o\ & ( (!\B[1]~input_o\) # (\A[26]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[28]~input_o\ & ( (!\B[1]~input_o\ & (\A[29]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[28]~input_o\ & ( (\B[1]~input_o\ & \A[26]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[1]~input_o\ & (\A[29]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \sll64[2][29]~64_combout\);

-- Location: LABCELL_X45_Y36_N26
\sll64[4][29]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][29]~65_combout\ = ( \B[3]~input_o\ & ( \sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\) # (\sll64[2][17]~40_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\ & ((\sll64[2][29]~64_combout\))) # (\B[2]~input_o\ 
-- & (\sll64[2][25]~56_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][21]~48_combout\ & ( (\sll64[2][17]~40_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\ & ((\sll64[2][29]~64_combout\))) # 
-- (\B[2]~input_o\ & (\sll64[2][25]~56_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][17]~40_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][25]~56_combout\,
	datad => \ALT_INV_sll64[2][29]~64_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][21]~48_combout\,
	combout => \sll64[4][29]~65_combout\);

-- Location: LABCELL_X43_Y36_N8
\Mux34~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = ( \A[29]~input_o\ & ( (!\Mux46~7_combout\ & ((!\Mux36~2_combout\) # (\sll64[4][29]~65_combout\))) ) ) # ( !\A[29]~input_o\ & ( (\sll64[4][29]~65_combout\ & (\Mux36~2_combout\ & !\Mux46~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sll64[4][29]~65_combout\,
	datac => \ALT_INV_Mux36~2_combout\,
	datad => \ALT_INV_Mux46~7_combout\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \Mux34~4_combout\);

-- Location: MLABCELL_X39_Y40_N32
\srl64[6][61]~145\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][61]~145_combout\ = ( \sll64[6][1]~1_combout\ & ( (\sll64[4][2]~4_combout\ & (((!\B[1]~input_o\ & \srl64[1][61]~63_combout\)) # (\srl64[2][61]~64_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000011010000010100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[2][61]~64_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_sll64[4][2]~4_combout\,
	datad => \ALT_INV_srl64[1][61]~63_combout\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \srl64[6][61]~145_combout\);

-- Location: MLABCELL_X39_Y40_N16
\sra64[6][61]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][61]~23_combout\ = ( \B[3]~input_o\ & ( \sra64[0][63]~0_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\Mux61~9_combout\ & (\sra64[0][63]~0_combout\)) # (\Mux61~9_combout\ & ((!\sll64[6][1]~1_combout\ & (\sra64[0][63]~0_combout\)) # 
-- (\sll64[6][1]~1_combout\ & ((\srl64[1][61]~63_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110111001100100011011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~9_combout\,
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_srl64[1][61]~63_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sra64[6][61]~23_combout\);

-- Location: MLABCELL_X39_Y40_N10
\Mux34~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \sll64[4][2]~4_combout\ & ( (\Mux46~2_combout\ & (((\srl64[1][61]~63_combout\ & !\B[1]~input_o\)) # (\srl64[2][61]~64_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000011110000010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][61]~63_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Mux46~2_combout\,
	datad => \ALT_INV_srl64[2][61]~64_combout\,
	dataf => \ALT_INV_sll64[4][2]~4_combout\,
	combout => \Mux34~0_combout\);

-- Location: LABCELL_X40_Y38_N30
\Mux34~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = ( \B[3]~input_o\ & ( !\Mux38~3_combout\ & ( (!\sra64[0][63]~0_combout\) # (!\Mux38~1_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\Mux38~3_combout\ & ( (!\Mux38~1_combout\) # ((!\Mux61~9_combout\ & (!\sra64[0][63]~0_combout\)) # 
-- (\Mux61~9_combout\ & ((!\srl64[1][61]~63_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111000111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~9_combout\,
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_Mux38~1_combout\,
	datad => \ALT_INV_srl64[1][61]~63_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Mux38~3_combout\,
	combout => \Mux34~1_combout\);

-- Location: MLABCELL_X39_Y40_N12
\Mux34~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = ( \Mux46~0_combout\ & ( \Mux34~1_combout\ & ( (!\sra64[6][61]~23_combout\ & (!\Mux34~0_combout\ & ((!\srl64[6][61]~145_combout\) # (!\Mux46~3_combout\)))) ) ) ) # ( !\Mux46~0_combout\ & ( \Mux34~1_combout\ & ( (!\Mux34~0_combout\ & 
-- ((!\srl64[6][61]~145_combout\) # (!\Mux46~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[6][61]~145_combout\,
	datab => \ALT_INV_sra64[6][61]~23_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux34~0_combout\,
	datae => \ALT_INV_Mux46~0_combout\,
	dataf => \ALT_INV_Mux34~1_combout\,
	combout => \Mux34~2_combout\);

-- Location: LABCELL_X43_Y36_N6
\Mux34~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = ( \srl64[3][29]~108_combout\ & ( \Mux36~0_combout\ & ( (!\Y_sra[31]~3_combout\ & ((\srl64[4][45]~135_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][37]~110_combout\)) ) ) ) # ( !\srl64[3][29]~108_combout\ & ( \Mux36~0_combout\ & ( 
-- (!\Y_sra[31]~3_combout\ & ((\srl64[4][45]~135_combout\))) # (\Y_sra[31]~3_combout\ & (\srl64[3][37]~110_combout\)) ) ) ) # ( \srl64[3][29]~108_combout\ & ( !\Mux36~0_combout\ & ( (!\Mux34~2_combout\) # (\Y_sra[31]~3_combout\) ) ) ) # ( 
-- !\srl64[3][29]~108_combout\ & ( !\Mux36~0_combout\ & ( (!\Mux34~2_combout\ & !\Y_sra[31]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100001111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][37]~110_combout\,
	datab => \ALT_INV_srl64[4][45]~135_combout\,
	datac => \ALT_INV_Mux34~2_combout\,
	datad => \ALT_INV_Y_sra[31]~3_combout\,
	datae => \ALT_INV_srl64[3][29]~108_combout\,
	dataf => \ALT_INV_Mux36~0_combout\,
	combout => \Mux34~3_combout\);

-- Location: LABCELL_X43_Y36_N24
\Mux34~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = ( \Mux34~3_combout\ & ( (((\Mux36~1_combout\ & \sll64[4][13]~30_combout\)) # (\Mux34~4_combout\)) # (\ShiftFN[1]~input_o\) ) ) # ( !\Mux34~3_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux36~1_combout\ & \sll64[4][13]~30_combout\)) # 
-- (\Mux34~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011110000000100001111000000011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~1_combout\,
	datab => \ALT_INV_sll64[4][13]~30_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux34~4_combout\,
	dataf => \ALT_INV_Mux34~3_combout\,
	combout => \Mux34~5_combout\);

-- Location: LABCELL_X40_Y37_N36
\sll64[2][30]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][30]~66_combout\ = ( \A[30]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[29]~input_o\))) # (\B[1]~input_o\ & (\A[27]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( \A[28]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\B[0]~input_o\ & ((\A[29]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[27]~input_o\)))) ) ) ) # ( \A[30]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[29]~input_o\)))) # (\B[1]~input_o\ & (\B[0]~input_o\ & 
-- (\A[27]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( !\A[28]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[29]~input_o\))) # (\B[1]~input_o\ & (\A[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \sll64[2][30]~66_combout\);

-- Location: MLABCELL_X42_Y34_N2
\sll64[4][30]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][30]~67_combout\ = ( \sll64[2][18]~42_combout\ & ( \sll64[2][22]~50_combout\ & ( ((!\B[2]~input_o\ & ((\sll64[2][30]~66_combout\))) # (\B[2]~input_o\ & (\sll64[2][26]~58_combout\))) # (\B[3]~input_o\) ) ) ) # ( !\sll64[2][18]~42_combout\ & ( 
-- \sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][30]~66_combout\))) # (\B[2]~input_o\ & (\sll64[2][26]~58_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\)) ) ) ) # ( \sll64[2][18]~42_combout\ & ( 
-- !\sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][30]~66_combout\))) # (\B[2]~input_o\ & (\sll64[2][26]~58_combout\)))) # (\B[3]~input_o\ & (\B[2]~input_o\)) ) ) ) # ( !\sll64[2][18]~42_combout\ & ( 
-- !\sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][30]~66_combout\))) # (\B[2]~input_o\ & (\sll64[2][26]~58_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][26]~58_combout\,
	datad => \ALT_INV_sll64[2][30]~66_combout\,
	datae => \ALT_INV_sll64[2][18]~42_combout\,
	dataf => \ALT_INV_sll64[2][22]~50_combout\,
	combout => \sll64[4][30]~67_combout\);

-- Location: LABCELL_X40_Y34_N18
\Mux33~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = ( \Mux36~2_combout\ & ( (\sll64[4][30]~67_combout\ & !\Mux46~7_combout\) ) ) # ( !\Mux36~2_combout\ & ( (!\Mux46~7_combout\ & \A[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sll64[4][30]~67_combout\,
	datac => \ALT_INV_Mux46~7_combout\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_Mux36~2_combout\,
	combout => \Mux33~1_combout\);

-- Location: LABCELL_X38_Y38_N38
\sra64[4][62]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[4][62]~24_combout\ = ( \srl64[1][62]~3_combout\ & ( ((\Mux61~9_combout\ & !\B[3]~input_o\)) # (\sra64[0][63]~0_combout\) ) ) # ( !\srl64[1][62]~3_combout\ & ( (\sra64[0][63]~0_combout\ & ((!\Mux61~9_combout\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001010101010001000101010101110111010101010111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][63]~0_combout\,
	datab => \ALT_INV_Mux61~9_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[1][62]~3_combout\,
	combout => \sra64[4][62]~24_combout\);

-- Location: LABCELL_X38_Y37_N20
\Mux33~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = ( !\ShiftFN[0]~input_o\ & ( ((\srl64[1][62]~3_combout\ & (\sll64[4][0]~0_combout\ & ((!\B[4]~input_o\) # (\Y_sra[31]~0_combout\))))) ) ) # ( \ShiftFN[0]~input_o\ & ( (((!\B[4]~input_o\ & ((\sra64[4][62]~24_combout\))) # (\B[4]~input_o\ 
-- & (\sra64[0][63]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000011110000111100000000000000110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][63]~0_combout\,
	datab => \ALT_INV_Y_sra[31]~0_combout\,
	datac => \ALT_INV_sra64[4][62]~24_combout\,
	datad => \ALT_INV_sll64[4][0]~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	datag => \ALT_INV_srl64[1][62]~3_combout\,
	combout => \Mux33~3_combout\);

-- Location: MLABCELL_X39_Y34_N26
\srl64[4][46]~146\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][46]~146_combout\ = ( \srl64[3][54]~120_combout\ & ( (\B[3]~input_o\) # (\srl64[3][46]~117_combout\) ) ) # ( !\srl64[3][54]~120_combout\ & ( (\srl64[3][46]~117_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][46]~117_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][54]~120_combout\,
	combout => \srl64[4][46]~146_combout\);

-- Location: MLABCELL_X39_Y34_N16
\Mux33~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \srl64[4][46]~146_combout\ & ( \srl64[3][38]~118_combout\ & ( ((!\Y_sra[31]~3_combout\ & (\Mux33~3_combout\)) # (\Y_sra[31]~3_combout\ & ((\srl64[3][30]~116_combout\)))) # (\Mux36~0_combout\) ) ) ) # ( !\srl64[4][46]~146_combout\ & ( 
-- \srl64[3][38]~118_combout\ & ( (!\Mux36~0_combout\ & ((!\Y_sra[31]~3_combout\ & (\Mux33~3_combout\)) # (\Y_sra[31]~3_combout\ & ((\srl64[3][30]~116_combout\))))) # (\Mux36~0_combout\ & (((\Y_sra[31]~3_combout\)))) ) ) ) # ( \srl64[4][46]~146_combout\ & ( 
-- !\srl64[3][38]~118_combout\ & ( (!\Mux36~0_combout\ & ((!\Y_sra[31]~3_combout\ & (\Mux33~3_combout\)) # (\Y_sra[31]~3_combout\ & ((\srl64[3][30]~116_combout\))))) # (\Mux36~0_combout\ & (((!\Y_sra[31]~3_combout\)))) ) ) ) # ( !\srl64[4][46]~146_combout\ & 
-- ( !\srl64[3][38]~118_combout\ & ( (!\Mux36~0_combout\ & ((!\Y_sra[31]~3_combout\ & (\Mux33~3_combout\)) # (\Y_sra[31]~3_combout\ & ((\srl64[3][30]~116_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~3_combout\,
	datab => \ALT_INV_srl64[3][30]~116_combout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Y_sra[31]~3_combout\,
	datae => \ALT_INV_srl64[4][46]~146_combout\,
	dataf => \ALT_INV_srl64[3][38]~118_combout\,
	combout => \Mux33~0_combout\);

-- Location: LABCELL_X40_Y34_N4
\Mux33~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = ( \Mux33~0_combout\ & ( (((\sll64[4][14]~32_combout\ & \Mux36~1_combout\)) # (\Mux33~1_combout\)) # (\ShiftFN[1]~input_o\) ) ) # ( !\Mux33~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\sll64[4][14]~32_combout\ & \Mux36~1_combout\)) # 
-- (\Mux33~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000101010000010100010101001011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_sll64[4][14]~32_combout\,
	datac => \ALT_INV_Mux33~1_combout\,
	datad => \ALT_INV_Mux36~1_combout\,
	dataf => \ALT_INV_Mux33~0_combout\,
	combout => \Mux33~2_combout\);

-- Location: MLABCELL_X37_Y39_N14
\Y_sra[31]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[31]~4_combout\ = ( \A[63]~input_o\ & ( (!\ExtWord~input_o\ & (\B[5]~input_o\)) # (\ExtWord~input_o\ & ((\A[31]~input_o\))) ) ) # ( !\A[63]~input_o\ & ( (\ExtWord~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Y_sra[31]~4_combout\);

-- Location: LABCELL_X40_Y39_N18
\srl64[4][47]~147\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][47]~147_combout\ = ( \B[3]~input_o\ & ( \srl64[3][55]~127_combout\ ) ) # ( !\B[3]~input_o\ & ( \srl64[3][47]~124_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[3][55]~127_combout\,
	datad => \ALT_INV_srl64[3][47]~124_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[4][47]~147_combout\);

-- Location: LABCELL_X40_Y40_N8
\srl64[4][31]~148\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][31]~148_combout\ = ( \B[3]~input_o\ & ( \srl64[3][39]~125_combout\ ) ) # ( !\B[3]~input_o\ & ( \srl64[3][31]~123_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[3][31]~123_combout\,
	datad => \ALT_INV_srl64[3][39]~125_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[4][31]~148_combout\);

-- Location: LABCELL_X40_Y39_N2
\Y_sra[31]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[31]~5_combout\ = ( \srl64[4][31]~148_combout\ & ( (!\Y_sra[31]~4_combout\ & ((!\Y_sra[31]~0_combout\) # ((\B[4]~input_o\ & !\srl64[4][47]~147_combout\)))) ) ) # ( !\srl64[4][31]~148_combout\ & ( (!\Y_sra[31]~4_combout\ & ((!\B[4]~input_o\) # 
-- ((!\Y_sra[31]~0_combout\) # (!\srl64[4][47]~147_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011010000110000001101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Y_sra[31]~0_combout\,
	datac => \ALT_INV_Y_sra[31]~4_combout\,
	datad => \ALT_INV_srl64[4][47]~147_combout\,
	dataf => \ALT_INV_srl64[4][31]~148_combout\,
	combout => \Y_sra[31]~5_combout\);

-- Location: LABCELL_X47_Y36_N26
\sll64[2][31]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][31]~68_combout\ = ( \A[28]~input_o\ & ( \A[30]~input_o\ & ( ((!\B[1]~input_o\ & (\A[31]~input_o\)) # (\B[1]~input_o\ & ((\A[29]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( \A[30]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[31]~input_o\)) # (\B[1]~input_o\ & ((\A[29]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[28]~input_o\ & ( !\A[30]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[31]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[29]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[28]~input_o\ & ( !\A[30]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[31]~input_o\)) # (\B[1]~input_o\ & ((\A[29]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \sll64[2][31]~68_combout\);

-- Location: MLABCELL_X39_Y36_N2
\sll64[4][31]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][31]~69_combout\ = ( \sll64[2][27]~60_combout\ & ( \sll64[2][23]~52_combout\ & ( (!\B[2]~input_o\ & (((\sll64[2][31]~68_combout\) # (\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\sll64[2][19]~44_combout\))) ) ) ) # ( 
-- !\sll64[2][27]~60_combout\ & ( \sll64[2][23]~52_combout\ & ( (!\B[2]~input_o\ & (((\sll64[2][31]~68_combout\) # (\B[3]~input_o\)))) # (\B[2]~input_o\ & (\sll64[2][19]~44_combout\ & (\B[3]~input_o\))) ) ) ) # ( \sll64[2][27]~60_combout\ & ( 
-- !\sll64[2][23]~52_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\ & \sll64[2][31]~68_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\sll64[2][19]~44_combout\))) ) ) ) # ( !\sll64[2][27]~60_combout\ & ( !\sll64[2][23]~52_combout\ & ( 
-- (!\B[2]~input_o\ & (((!\B[3]~input_o\ & \sll64[2][31]~68_combout\)))) # (\B[2]~input_o\ & (\sll64[2][19]~44_combout\ & (\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][19]~44_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][31]~68_combout\,
	datae => \ALT_INV_sll64[2][27]~60_combout\,
	dataf => \ALT_INV_sll64[2][23]~52_combout\,
	combout => \sll64[4][31]~69_combout\);

-- Location: MLABCELL_X39_Y35_N6
\Y_sll[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[31]~0_combout\ = ( \sll64[4][15]~34_combout\ & ( (!\shamt[5]~0_combout\ & ((\sll64[4][31]~69_combout\) # (\B[4]~input_o\))) ) ) # ( !\sll64[4][15]~34_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][31]~69_combout\ & !\shamt[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_sll64[4][31]~69_combout\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_sll64[4][15]~34_combout\,
	combout => \Y_sll[31]~0_combout\);

-- Location: LABCELL_X40_Y39_N20
\Y_srl[31]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[31]~8_combout\ = ( !\B[4]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[5]~input_o\ & (((\srl64[4][31]~148_combout\)))) # (\B[5]~input_o\ & (!\srl64[4][63]~136_combout\ & (\sra64[0][63]~0_combout\))))) # (\ExtWord~input_o\ & 
-- (((!\srl64[4][63]~136_combout\ & (\sra64[0][63]~0_combout\))))) ) ) # ( \B[4]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[5]~input_o\ & (\srl64[4][47]~147_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001110000000010000000100010001000111110000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_srl64[4][47]~147_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[4][31]~148_combout\,
	datag => \ALT_INV_srl64[4][63]~136_combout\,
	combout => \Y_srl[31]~8_combout\);

-- Location: LABCELL_X40_Y39_N26
\Mux32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \Y_sll[31]~0_combout\ & ( \Y_srl[31]~8_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\A[31]~input_o\))) # (\ShiftFN[1]~input_o\ & (((!\Y_sra[31]~5_combout\) # (!\ShiftFN[0]~input_o\)))) ) ) ) # ( 
-- !\Y_sll[31]~0_combout\ & ( \Y_srl[31]~8_combout\ & ( (!\ShiftFN[1]~input_o\ & (\A[31]~input_o\ & ((!\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((!\Y_sra[31]~5_combout\) # (!\ShiftFN[0]~input_o\)))) ) ) ) # ( \Y_sll[31]~0_combout\ & ( 
-- !\Y_srl[31]~8_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\A[31]~input_o\))) # (\ShiftFN[1]~input_o\ & (((!\Y_sra[31]~5_combout\ & \ShiftFN[0]~input_o\)))) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Y_srl[31]~8_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & (\A[31]~input_o\ & ((!\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((!\Y_sra[31]~5_combout\ & \ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010000001000101111101001110111010100000111011111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_Y_sra[31]~5_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Y_srl[31]~8_combout\,
	combout => \Mux32~0_combout\);

-- Location: MLABCELL_X39_Y38_N20
\Y_srl[63]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[63]~1_combout\ = (\sll64[6][1]~1_combout\ & !\srl64[4][63]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_srl64[4][63]~136_combout\,
	combout => \Y_srl[63]~1_combout\);

-- Location: MLABCELL_X39_Y38_N22
\Y_srl[32]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[32]~2_combout\ = ( \Y_srl[63]~1_combout\ & ( (!\ExtWord~input_o\ & (!\B[5]~input_o\ & (\srl64[5][32]~20_combout\))) # (\ExtWord~input_o\ & (((\A[31]~input_o\)))) ) ) # ( !\Y_srl[63]~1_combout\ & ( (!\B[5]~input_o\ & (!\ExtWord~input_o\ & 
-- \srl64[5][32]~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000001110110000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_srl64[5][32]~20_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_Y_srl[63]~1_combout\,
	combout => \Y_srl[32]~2_combout\);

-- Location: MLABCELL_X42_Y38_N16
\Y_sra[32]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[32]~6_combout\ = ( !\Y_sra[31]~4_combout\ & ( (!\Y_sra[31]~0_combout\) # (!\srl64[5][32]~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y_sra[31]~0_combout\,
	datac => \ALT_INV_srl64[5][32]~20_combout\,
	dataf => \ALT_INV_Y_sra[31]~4_combout\,
	combout => \Y_sra[32]~6_combout\);

-- Location: MLABCELL_X39_Y38_N16
\A_left[32]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[32]~0_combout\ = ( !\ExtWord~input_o\ & ( \A[32]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \A_left[32]~0_combout\);

-- Location: LABCELL_X47_Y36_N8
\sll64[2][32]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][32]~70_combout\ = ( \A[29]~input_o\ & ( \B[1]~input_o\ & ( (\A[30]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[30]~input_o\) ) ) ) # ( \A[29]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A_left[32]~0_combout\)) # (\B[0]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A_left[32]~0_combout\)) # (\B[0]~input_o\ & ((\A[31]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A_left[32]~0_combout\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sll64[2][32]~70_combout\);

-- Location: LABCELL_X40_Y35_N10
\sll64[4][32]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][32]~71_combout\ = ( \sll64[2][28]~62_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][24]~54_combout\)) # (\B[2]~input_o\ & ((\sll64[2][20]~46_combout\))) ) ) ) # ( !\sll64[2][28]~62_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ 
-- & (\sll64[2][24]~54_combout\)) # (\B[2]~input_o\ & ((\sll64[2][20]~46_combout\))) ) ) ) # ( \sll64[2][28]~62_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][32]~70_combout\) ) ) ) # ( !\sll64[2][28]~62_combout\ & ( !\B[3]~input_o\ & ( 
-- (\sll64[2][32]~70_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][32]~70_combout\,
	datab => \ALT_INV_sll64[2][24]~54_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][20]~46_combout\,
	datae => \ALT_INV_sll64[2][28]~62_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][32]~71_combout\);

-- Location: MLABCELL_X39_Y35_N8
\Y_sll[32]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[32]~1_combout\ = ( \B[5]~input_o\ & ( \sll64[4][31]~69_combout\ & ( (!\B[4]~input_o\ & (((\ExtWord~input_o\) # (\sll64[4][0]~35_combout\)))) # (\B[4]~input_o\ & (\sll64[4][15]~34_combout\ & ((\ExtWord~input_o\)))) ) ) ) # ( !\B[5]~input_o\ & ( 
-- \sll64[4][31]~69_combout\ & ( (\ExtWord~input_o\ & ((!\B[4]~input_o\) # (\sll64[4][15]~34_combout\))) ) ) ) # ( \B[5]~input_o\ & ( !\sll64[4][31]~69_combout\ & ( (!\B[4]~input_o\ & (((\sll64[4][0]~35_combout\ & !\ExtWord~input_o\)))) # (\B[4]~input_o\ & 
-- (\sll64[4][15]~34_combout\ & ((\ExtWord~input_o\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\sll64[4][31]~69_combout\ & ( (\sll64[4][15]~34_combout\ & (\B[4]~input_o\ & \ExtWord~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000011000001000100000000110111010000110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][15]~34_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_sll64[4][0]~35_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_sll64[4][31]~69_combout\,
	combout => \Y_sll[32]~1_combout\);

-- Location: MLABCELL_X39_Y35_N34
\Y_sll[32]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[32]~2_combout\ = ( \Y_sra[31]~0_combout\ & ( (!\Y_sll[32]~1_combout\ & ((!\B[4]~input_o\ & ((!\sll64[4][32]~71_combout\))) # (\B[4]~input_o\ & (!\sll64[4][16]~37_combout\)))) ) ) # ( !\Y_sra[31]~0_combout\ & ( !\Y_sll[32]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011100010000000001110001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][16]~37_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_sll64[4][32]~71_combout\,
	datad => \ALT_INV_Y_sll[32]~1_combout\,
	dataf => \ALT_INV_Y_sra[31]~0_combout\,
	combout => \Y_sll[32]~2_combout\);

-- Location: MLABCELL_X39_Y38_N26
\Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \A[32]~input_o\ & ( \Y_sll[32]~2_combout\ & ( (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)) # (\Y_srl[32]~2_combout\))) # (\ShiftFN[0]~input_o\ & (((!\Y_sra[32]~6_combout\ & \ShiftFN[1]~input_o\)))) ) ) ) # ( !\A[32]~input_o\ & 
-- ( \Y_sll[32]~2_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Y_srl[32]~2_combout\)) # (\ShiftFN[0]~input_o\ & ((!\Y_sra[32]~6_combout\))))) ) ) ) # ( \A[32]~input_o\ & ( !\Y_sll[32]~2_combout\ & ( (!\ShiftFN[1]~input_o\) # 
-- ((!\ShiftFN[0]~input_o\ & (\Y_srl[32]~2_combout\)) # (\ShiftFN[0]~input_o\ & ((!\Y_sra[32]~6_combout\)))) ) ) ) # ( !\A[32]~input_o\ & ( !\Y_sll[32]~2_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Y_srl[32]~2_combout\ & ((\ShiftFN[1]~input_o\)))) # 
-- (\ShiftFN[0]~input_o\ & (((!\Y_sra[32]~6_combout\) # (!\ShiftFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011100111111110101110000000000010111001111000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[32]~2_combout\,
	datab => \ALT_INV_Y_sra[32]~6_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_Y_sll[32]~2_combout\,
	combout => \Mux31~0_combout\);

-- Location: LABCELL_X38_Y38_N20
\Mux30~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( !\ExtWord~input_o\ & ( (\ShiftFN[0]~input_o\ & (\B[4]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X37_Y39_N4
\Mux30~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( !\ExtWord~input_o\ & ( (\B[4]~input_o\ & (!\ShiftFN[0]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux30~1_combout\);

-- Location: MLABCELL_X37_Y39_N0
\Mux30~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~11_combout\ = ( !\ShiftFN[0]~input_o\ & ( ((!\ExtWord~input_o\) # (((!\A[31]~input_o\) # (\srl64[4][63]~136_combout\)) # (\B[4]~input_o\))) ) ) # ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & ((!\A[63]~input_o\) # ((!\B[5]~input_o\)))) # 
-- (\ExtWord~input_o\ & ((((!\A[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111001111111110111100100011111111111111111111101111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_srl64[4][63]~136_combout\,
	datag => \ALT_INV_B[4]~input_o\,
	combout => \Mux30~11_combout\);

-- Location: LABCELL_X40_Y38_N8
\Mux30~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = ( \Mux30~11_combout\ & ( (!\Mux30~1_combout\) # ((!\B[3]~input_o\ & (!\srl64[3][49]~72_combout\)) # (\B[3]~input_o\ & ((!\srl64[3][57]~67_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110110001111111111011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[3][49]~72_combout\,
	datac => \ALT_INV_srl64[3][57]~67_combout\,
	datad => \ALT_INV_Mux30~1_combout\,
	dataf => \ALT_INV_Mux30~11_combout\,
	combout => \Mux30~3_combout\);

-- Location: MLABCELL_X37_Y39_N24
\Mux29~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\ExtWord~input_o\ & (!\B[5]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LABCELL_X43_Y38_N16
\Mux30~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = ( \Mux29~0_combout\ & ( (!\srl64[4][33]~83_combout\ & (\Mux30~3_combout\ & ((!\sra64[4][49]~2_combout\) # (!\Mux30~0_combout\)))) ) ) # ( !\Mux29~0_combout\ & ( (\Mux30~3_combout\ & ((!\sra64[4][49]~2_combout\) # (!\Mux30~0_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[4][49]~2_combout\,
	datab => \ALT_INV_srl64[4][33]~83_combout\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_Mux30~3_combout\,
	dataf => \ALT_INV_Mux29~0_combout\,
	combout => \Mux30~4_combout\);

-- Location: LABCELL_X40_Y34_N28
\Mux30~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = ( !\ShiftFN[1]~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux30~8_combout\);

-- Location: MLABCELL_X37_Y39_N20
\Mux30~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = ( \ExtWord~input_o\ & ( \B[4]~input_o\ ) ) # ( !\ExtWord~input_o\ & ( !\B[4]~input_o\ $ (!\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux30~5_combout\);

-- Location: MLABCELL_X44_Y38_N30
\A_left[33]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[33]~1_combout\ = ( \A[33]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \A_left[33]~1_combout\);

-- Location: LABCELL_X47_Y36_N14
\sll64[2][33]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][33]~72_combout\ = ( \A[31]~input_o\ & ( \A_left[32]~0_combout\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A_left[33]~1_combout\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[30]~input_o\)))) ) ) ) # ( !\A[31]~input_o\ & ( 
-- \A_left[32]~0_combout\ & ( (!\B[0]~input_o\ & (\A_left[33]~1_combout\ & (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[30]~input_o\)))) ) ) ) # ( \A[31]~input_o\ & ( !\A_left[32]~0_combout\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # 
-- (\A_left[33]~1_combout\))) # (\B[0]~input_o\ & (((\B[1]~input_o\ & \A[30]~input_o\)))) ) ) ) # ( !\A[31]~input_o\ & ( !\A_left[32]~0_combout\ & ( (!\B[0]~input_o\ & (\A_left[33]~1_combout\ & (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\ & 
-- \A[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A_left[33]~1_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A_left[32]~0_combout\,
	combout => \sll64[2][33]~72_combout\);

-- Location: LABCELL_X45_Y36_N30
\sll64[4][33]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][33]~73_combout\ = ( \B[3]~input_o\ & ( \sll64[2][21]~48_combout\ & ( (\sll64[2][25]~56_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][33]~72_combout\)) # (\B[2]~input_o\ & 
-- ((\sll64[2][29]~64_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\ & \sll64[2][25]~56_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][21]~48_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][33]~72_combout\)) # 
-- (\B[2]~input_o\ & ((\sll64[2][29]~64_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][33]~72_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][25]~56_combout\,
	datad => \ALT_INV_sll64[2][29]~64_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][21]~48_combout\,
	combout => \sll64[4][33]~73_combout\);

-- Location: MLABCELL_X44_Y38_N6
\Mux30~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = ( \sll64[4][33]~73_combout\ & ( (!\Mux30~5_combout\ & (((!\B[4]~input_o\)))) # (\Mux30~5_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][1]~39_combout\))) # (\B[4]~input_o\ & (\sll64[4][17]~41_combout\)))) ) ) # ( !\sll64[4][33]~73_combout\ 
-- & ( (\Mux30~5_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][1]~39_combout\))) # (\B[4]~input_o\ & (\sll64[4][17]~41_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000000010011000111000001111100011100000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][17]~41_combout\,
	datab => \ALT_INV_Mux30~5_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_sll64[4][1]~39_combout\,
	dataf => \ALT_INV_sll64[4][33]~73_combout\,
	combout => \Mux30~6_combout\);

-- Location: LABCELL_X40_Y34_N12
\Mux30~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	combout => \Mux30~7_combout\);

-- Location: MLABCELL_X44_Y38_N36
\Mux30~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = ( \Mux30~7_combout\ & ( \A[33]~input_o\ & ( (!\Mux30~8_combout\) # (\Y_sll[31]~0_combout\) ) ) ) # ( !\Mux30~7_combout\ & ( \A[33]~input_o\ & ( (!\Mux30~8_combout\ & (!\Mux30~4_combout\)) # (\Mux30~8_combout\ & ((\Mux30~6_combout\))) ) 
-- ) ) # ( \Mux30~7_combout\ & ( !\A[33]~input_o\ & ( (\Mux30~8_combout\ & \Y_sll[31]~0_combout\) ) ) ) # ( !\Mux30~7_combout\ & ( !\A[33]~input_o\ & ( (!\Mux30~8_combout\ & (!\Mux30~4_combout\)) # (\Mux30~8_combout\ & ((\Mux30~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010111011000000110000001110001000101110111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~4_combout\,
	datab => \ALT_INV_Mux30~8_combout\,
	datac => \ALT_INV_Y_sll[31]~0_combout\,
	datad => \ALT_INV_Mux30~6_combout\,
	datae => \ALT_INV_Mux30~7_combout\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \Mux30~9_combout\);

-- Location: MLABCELL_X39_Y38_N28
\Mux29~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \srl64[3][58]~131_combout\ & ( (\Mux30~1_combout\ & ((\B[3]~input_o\) # (\srl64[3][50]~90_combout\))) ) ) # ( !\srl64[3][58]~131_combout\ & ( (\srl64[3][50]~90_combout\ & (!\B[3]~input_o\ & \Mux30~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][50]~90_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux30~1_combout\,
	dataf => \ALT_INV_srl64[3][58]~131_combout\,
	combout => \Mux29~1_combout\);

-- Location: MLABCELL_X39_Y38_N30
\Mux29~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux30~0_combout\ & ((!\B[3]~input_o\ & (\srl64[3][50]~90_combout\)) # (\B[3]~input_o\ & ((\sra64[3][58]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011100000000010001110000000001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][50]~90_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sra64[3][58]~4_combout\,
	datad => \ALT_INV_Mux30~0_combout\,
	combout => \Mux29~2_combout\);

-- Location: MLABCELL_X37_Y38_N8
\Mux29~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = ( !\Mux29~2_combout\ & ( (\Mux30~11_combout\ & (!\Mux29~1_combout\ & ((!\Mux29~0_combout\) # (!\srl64[4][34]~89_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000000001100100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_Mux30~11_combout\,
	datac => \ALT_INV_srl64[4][34]~89_combout\,
	datad => \ALT_INV_Mux29~1_combout\,
	dataf => \ALT_INV_Mux29~2_combout\,
	combout => \Mux29~3_combout\);

-- Location: MLABCELL_X44_Y36_N30
\A_left[34]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[34]~2_combout\ = ( !\ExtWord~input_o\ & ( \A[34]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \A_left[34]~2_combout\);

-- Location: LABCELL_X47_Y36_N36
\sll64[2][34]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][34]~74_combout\ = ( \A[31]~input_o\ & ( \A_left[32]~0_combout\ & ( ((!\B[0]~input_o\ & (\A_left[34]~2_combout\)) # (\B[0]~input_o\ & ((\A_left[33]~1_combout\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[31]~input_o\ & ( \A_left[32]~0_combout\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A_left[34]~2_combout\))) # (\B[0]~input_o\ & (((\A_left[33]~1_combout\ & !\B[1]~input_o\)))) ) ) ) # ( \A[31]~input_o\ & ( !\A_left[32]~0_combout\ & ( (!\B[0]~input_o\ & (\A_left[34]~2_combout\ & 
-- ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A_left[33]~1_combout\)))) ) ) ) # ( !\A[31]~input_o\ & ( !\A_left[32]~0_combout\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A_left[34]~2_combout\)) # (\B[0]~input_o\ & 
-- ((\A_left[33]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[34]~2_combout\,
	datab => \ALT_INV_A_left[33]~1_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A_left[32]~0_combout\,
	combout => \sll64[2][34]~74_combout\);

-- Location: MLABCELL_X42_Y34_N6
\sll64[4][34]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][34]~75_combout\ = ( \sll64[2][34]~74_combout\ & ( \sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\sll64[2][30]~66_combout\)))) # (\B[3]~input_o\ & (((\sll64[2][26]~58_combout\)) # (\B[2]~input_o\))) ) ) ) # ( 
-- !\sll64[2][34]~74_combout\ & ( \sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\sll64[2][30]~66_combout\)))) # (\B[3]~input_o\ & (((\sll64[2][26]~58_combout\)) # (\B[2]~input_o\))) ) ) ) # ( \sll64[2][34]~74_combout\ & ( 
-- !\sll64[2][22]~50_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\sll64[2][30]~66_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\sll64[2][26]~58_combout\))) ) ) ) # ( !\sll64[2][34]~74_combout\ & ( !\sll64[2][22]~50_combout\ & ( 
-- (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\sll64[2][30]~66_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\sll64[2][26]~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][26]~58_combout\,
	datad => \ALT_INV_sll64[2][30]~66_combout\,
	datae => \ALT_INV_sll64[2][34]~74_combout\,
	dataf => \ALT_INV_sll64[2][22]~50_combout\,
	combout => \sll64[4][34]~75_combout\);

-- Location: MLABCELL_X42_Y35_N2
\Mux29~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = ( \B[4]~input_o\ & ( (\sll64[4][18]~43_combout\ & \Mux30~5_combout\) ) ) # ( !\B[4]~input_o\ & ( (!\Mux30~5_combout\ & ((\sll64[4][34]~75_combout\))) # (\Mux30~5_combout\ & (\sll64[4][2]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~6_combout\,
	datab => \ALT_INV_sll64[4][18]~43_combout\,
	datac => \ALT_INV_sll64[4][34]~75_combout\,
	datad => \ALT_INV_Mux30~5_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: MLABCELL_X42_Y35_N28
\Mux29~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = ( \Y_sll[31]~0_combout\ & ( \Mux29~4_combout\ & ( ((!\Mux30~7_combout\ & (!\Mux29~3_combout\)) # (\Mux30~7_combout\ & ((\A[34]~input_o\)))) # (\Mux30~8_combout\) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( \Mux29~4_combout\ & ( 
-- (!\Mux30~8_combout\ & ((!\Mux30~7_combout\ & (!\Mux29~3_combout\)) # (\Mux30~7_combout\ & ((\A[34]~input_o\))))) # (\Mux30~8_combout\ & (!\Mux30~7_combout\)) ) ) ) # ( \Y_sll[31]~0_combout\ & ( !\Mux29~4_combout\ & ( (!\Mux30~8_combout\ & 
-- ((!\Mux30~7_combout\ & (!\Mux29~3_combout\)) # (\Mux30~7_combout\ & ((\A[34]~input_o\))))) # (\Mux30~8_combout\ & (\Mux30~7_combout\)) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Mux29~4_combout\ & ( (!\Mux30~8_combout\ & ((!\Mux30~7_combout\ & 
-- (!\Mux29~3_combout\)) # (\Mux30~7_combout\ & ((\A[34]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100010100100011011001111000100111001101101010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~8_combout\,
	datab => \ALT_INV_Mux30~7_combout\,
	datac => \ALT_INV_Mux29~3_combout\,
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Mux29~4_combout\,
	combout => \Mux29~5_combout\);

-- Location: MLABCELL_X37_Y40_N12
\Mux28~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \B[3]~input_o\ & ( (\sra64[4][51]~11_combout\ & \Mux30~0_combout\) ) ) # ( !\B[3]~input_o\ & ( (\srl64[3][51]~97_combout\ & \Mux30~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[4][51]~11_combout\,
	datab => \ALT_INV_srl64[3][51]~97_combout\,
	datad => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: MLABCELL_X37_Y40_N10
\Mux28~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \srl64[3][59]~134_combout\ & ( (\Mux30~1_combout\ & (!\B[3]~input_o\ & \srl64[3][51]~97_combout\)) ) ) # ( !\srl64[3][59]~134_combout\ & ( (\Mux30~1_combout\ & ((\srl64[3][51]~97_combout\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][51]~97_combout\,
	dataf => \ALT_INV_srl64[3][59]~134_combout\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X37_Y38_N10
\Mux28~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( !\Mux28~0_combout\ & ( (\Mux30~11_combout\ & (!\Mux28~1_combout\ & ((!\Mux29~0_combout\) # (!\srl64[4][35]~96_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000000001100100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_Mux30~11_combout\,
	datac => \ALT_INV_srl64[4][35]~96_combout\,
	datad => \ALT_INV_Mux28~1_combout\,
	dataf => \ALT_INV_Mux28~0_combout\,
	combout => \Mux28~2_combout\);

-- Location: LABCELL_X47_Y36_N2
\A_left[35]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[35]~3_combout\ = ( \A[35]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \A_left[35]~3_combout\);

-- Location: LABCELL_X47_Y36_N4
\sll64[2][35]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][35]~76_combout\ = ( \A_left[33]~1_combout\ & ( \A_left[35]~3_combout\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A_left[34]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[32]~0_combout\)))) ) ) ) # ( !\A_left[33]~1_combout\ & ( 
-- \A_left[35]~3_combout\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[34]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[32]~0_combout\))))) ) ) ) # ( \A_left[33]~1_combout\ & ( !\A_left[35]~3_combout\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[34]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[32]~0_combout\))))) ) ) ) # ( !\A_left[33]~1_combout\ & ( !\A_left[35]~3_combout\ & ( (\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A_left[34]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[32]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[34]~2_combout\,
	datab => \ALT_INV_A_left[32]~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[33]~1_combout\,
	dataf => \ALT_INV_A_left[35]~3_combout\,
	combout => \sll64[2][35]~76_combout\);

-- Location: MLABCELL_X39_Y36_N4
\sll64[4][35]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][35]~77_combout\ = ( \sll64[2][27]~60_combout\ & ( \sll64[2][23]~52_combout\ & ( ((!\B[2]~input_o\ & (\sll64[2][35]~76_combout\)) # (\B[2]~input_o\ & ((\sll64[2][31]~68_combout\)))) # (\B[3]~input_o\) ) ) ) # ( !\sll64[2][27]~60_combout\ & ( 
-- \sll64[2][23]~52_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][35]~76_combout\ & ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\) # (\sll64[2][31]~68_combout\)))) ) ) ) # ( \sll64[2][27]~60_combout\ & ( !\sll64[2][23]~52_combout\ & ( 
-- (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][35]~76_combout\))) # (\B[2]~input_o\ & (((\sll64[2][31]~68_combout\ & !\B[3]~input_o\)))) ) ) ) # ( !\sll64[2][27]~60_combout\ & ( !\sll64[2][23]~52_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & 
-- (\sll64[2][35]~76_combout\)) # (\B[2]~input_o\ & ((\sll64[2][31]~68_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][35]~76_combout\,
	datac => \ALT_INV_sll64[2][31]~68_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][27]~60_combout\,
	dataf => \ALT_INV_sll64[2][23]~52_combout\,
	combout => \sll64[4][35]~77_combout\);

-- Location: LABCELL_X38_Y36_N0
\Mux28~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = ( \sll64[4][35]~77_combout\ & ( (!\B[4]~input_o\ & (((!\Mux30~5_combout\)) # (\sll64[4][3]~8_combout\))) # (\B[4]~input_o\ & (((\sll64[4][19]~45_combout\ & \Mux30~5_combout\)))) ) ) # ( !\sll64[4][35]~77_combout\ & ( (\Mux30~5_combout\ 
-- & ((!\B[4]~input_o\ & (\sll64[4][3]~8_combout\)) # (\B[4]~input_o\ & ((\sll64[4][19]~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001111110000010100111111000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][3]~8_combout\,
	datab => \ALT_INV_sll64[4][19]~45_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Mux30~5_combout\,
	dataf => \ALT_INV_sll64[4][35]~77_combout\,
	combout => \Mux28~3_combout\);

-- Location: LABCELL_X38_Y36_N32
\Mux28~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = ( \Mux28~3_combout\ & ( \Mux30~8_combout\ & ( (!\Mux30~7_combout\) # (\Y_sll[31]~0_combout\) ) ) ) # ( !\Mux28~3_combout\ & ( \Mux30~8_combout\ & ( (\Y_sll[31]~0_combout\ & \Mux30~7_combout\) ) ) ) # ( \Mux28~3_combout\ & ( 
-- !\Mux30~8_combout\ & ( (!\Mux30~7_combout\ & (!\Mux28~2_combout\)) # (\Mux30~7_combout\ & ((\A[35]~input_o\))) ) ) ) # ( !\Mux28~3_combout\ & ( !\Mux30~8_combout\ & ( (!\Mux30~7_combout\ & (!\Mux28~2_combout\)) # (\Mux30~7_combout\ & ((\A[35]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001111110000001100111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sll[31]~0_combout\,
	datab => \ALT_INV_Mux28~2_combout\,
	datac => \ALT_INV_Mux30~7_combout\,
	datad => \ALT_INV_A[35]~input_o\,
	datae => \ALT_INV_Mux28~3_combout\,
	dataf => \ALT_INV_Mux30~8_combout\,
	combout => \Mux28~4_combout\);

-- Location: LABCELL_X47_Y36_N28
\A_left[36]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[36]~4_combout\ = (!\ExtWord~input_o\ & \A[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	combout => \A_left[36]~4_combout\);

-- Location: LABCELL_X47_Y36_N34
\sll64[2][36]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][36]~78_combout\ = ( \A_left[33]~1_combout\ & ( \A_left[36]~4_combout\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A_left[35]~3_combout\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A_left[34]~2_combout\))) ) ) ) # ( !\A_left[33]~1_combout\ 
-- & ( \A_left[36]~4_combout\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A_left[35]~3_combout\)))) # (\B[1]~input_o\ & (\A_left[34]~2_combout\ & ((!\B[0]~input_o\)))) ) ) ) # ( \A_left[33]~1_combout\ & ( !\A_left[36]~4_combout\ & ( (!\B[1]~input_o\ & 
-- (((\A_left[35]~3_combout\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A_left[34]~2_combout\))) ) ) ) # ( !\A_left[33]~1_combout\ & ( !\A_left[36]~4_combout\ & ( (!\B[1]~input_o\ & (((\A_left[35]~3_combout\ & \B[0]~input_o\)))) # 
-- (\B[1]~input_o\ & (\A_left[34]~2_combout\ & ((!\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[34]~2_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[35]~3_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A_left[33]~1_combout\,
	dataf => \ALT_INV_A_left[36]~4_combout\,
	combout => \sll64[2][36]~78_combout\);

-- Location: LABCELL_X40_Y35_N34
\sll64[4][36]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][36]~79_combout\ = ( \sll64[2][28]~62_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\sll64[2][32]~70_combout\))) # (\B[3]~input_o\ & (\sll64[2][24]~54_combout\)) ) ) ) # ( !\sll64[2][28]~62_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ 
-- & ((\sll64[2][32]~70_combout\))) # (\B[3]~input_o\ & (\sll64[2][24]~54_combout\)) ) ) ) # ( \sll64[2][28]~62_combout\ & ( !\B[2]~input_o\ & ( (\sll64[2][36]~78_combout\) # (\B[3]~input_o\) ) ) ) # ( !\sll64[2][28]~62_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & \sll64[2][36]~78_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][24]~54_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[2][36]~78_combout\,
	datad => \ALT_INV_sll64[2][32]~70_combout\,
	datae => \ALT_INV_sll64[2][28]~62_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sll64[4][36]~79_combout\);

-- Location: MLABCELL_X37_Y36_N26
\Mux27~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = ( \sll64[4][20]~47_combout\ & ( (!\B[4]~input_o\ & ((!\Mux30~5_combout\ & ((\sll64[4][36]~79_combout\))) # (\Mux30~5_combout\ & (\sll64[4][4]~11_combout\)))) # (\B[4]~input_o\ & (((\Mux30~5_combout\)))) ) ) # ( 
-- !\sll64[4][20]~47_combout\ & ( (!\B[4]~input_o\ & ((!\Mux30~5_combout\ & ((\sll64[4][36]~79_combout\))) # (\Mux30~5_combout\ & (\sll64[4][4]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001000000111101001110000011110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_sll64[4][4]~11_combout\,
	datac => \ALT_INV_Mux30~5_combout\,
	datad => \ALT_INV_sll64[4][36]~79_combout\,
	dataf => \ALT_INV_sll64[4][20]~47_combout\,
	combout => \Mux27~3_combout\);

-- Location: MLABCELL_X37_Y38_N12
\Mux27~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \sra64[4][52]~13_combout\ & ( (\Mux30~0_combout\ & ((\B[3]~input_o\) # (\srl64[3][52]~104_combout\))) ) ) # ( !\sra64[4][52]~13_combout\ & ( (\srl64[3][52]~104_combout\ & (!\B[3]~input_o\ & \Mux30~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][52]~104_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_sra64[4][52]~13_combout\,
	combout => \Mux27~1_combout\);

-- Location: MLABCELL_X37_Y38_N20
\Mux27~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \srl64[3][52]~104_combout\ & ( (\Mux30~1_combout\ & ((!\B[3]~input_o\) # ((\srl64[2][60]~105_combout\ & !\B[2]~input_o\)))) ) ) # ( !\srl64[3][52]~104_combout\ & ( (\B[3]~input_o\ & (\srl64[2][60]~105_combout\ & (\Mux30~1_combout\ & 
-- !\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000001011000010100000101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[2][60]~105_combout\,
	datac => \ALT_INV_Mux30~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[3][52]~104_combout\,
	combout => \Mux27~0_combout\);

-- Location: MLABCELL_X37_Y38_N38
\Mux27~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( !\Mux27~0_combout\ & ( (\Mux30~11_combout\ & (!\Mux27~1_combout\ & ((!\Mux29~0_combout\) # (!\srl64[4][36]~103_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_srl64[4][36]~103_combout\,
	datac => \ALT_INV_Mux30~11_combout\,
	datad => \ALT_INV_Mux27~1_combout\,
	dataf => \ALT_INV_Mux27~0_combout\,
	combout => \Mux27~2_combout\);

-- Location: MLABCELL_X37_Y38_N0
\Mux27~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = ( \Mux30~8_combout\ & ( \Y_sll[31]~0_combout\ & ( (\Mux30~7_combout\) # (\Mux27~3_combout\) ) ) ) # ( !\Mux30~8_combout\ & ( \Y_sll[31]~0_combout\ & ( (!\Mux30~7_combout\ & ((!\Mux27~2_combout\))) # (\Mux30~7_combout\ & 
-- (\A[36]~input_o\)) ) ) ) # ( \Mux30~8_combout\ & ( !\Y_sll[31]~0_combout\ & ( (\Mux27~3_combout\ & !\Mux30~7_combout\) ) ) ) # ( !\Mux30~8_combout\ & ( !\Y_sll[31]~0_combout\ & ( (!\Mux30~7_combout\ & ((!\Mux27~2_combout\))) # (\Mux30~7_combout\ & 
-- (\A[36]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011010100000101000011110011000000110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~3_combout\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_Mux30~7_combout\,
	datad => \ALT_INV_Mux27~2_combout\,
	datae => \ALT_INV_Mux30~8_combout\,
	dataf => \ALT_INV_Y_sll[31]~0_combout\,
	combout => \Mux27~4_combout\);

-- Location: MLABCELL_X37_Y38_N26
\Mux26~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \Mux30~1_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][53]~113_combout\)) # (\B[3]~input_o\ & (((!\srl64[2][61]~112_combout\ & !\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110010001000100111001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[3][53]~113_combout\,
	datac => \ALT_INV_srl64[2][61]~112_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_Mux30~1_combout\,
	combout => \Mux26~0_combout\);

-- Location: MLABCELL_X37_Y38_N24
\Mux26~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \sra64[3][61]~3_combout\ & ( (\Mux30~0_combout\ & ((\srl64[3][53]~113_combout\) # (\B[3]~input_o\))) ) ) # ( !\sra64[3][61]~3_combout\ & ( (!\B[3]~input_o\ & (\srl64[3][53]~113_combout\ & \Mux30~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[3][53]~113_combout\,
	datad => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_sra64[3][61]~3_combout\,
	combout => \Mux26~1_combout\);

-- Location: MLABCELL_X37_Y38_N28
\Mux26~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( !\Mux26~1_combout\ & ( (\Mux30~11_combout\ & (!\Mux26~0_combout\ & ((!\Mux29~0_combout\) # (!\srl64[4][37]~111_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000000001100100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_Mux30~11_combout\,
	datac => \ALT_INV_srl64[4][37]~111_combout\,
	datad => \ALT_INV_Mux26~0_combout\,
	dataf => \ALT_INV_Mux26~1_combout\,
	combout => \Mux26~2_combout\);

-- Location: LABCELL_X47_Y36_N30
\A_left[37]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[37]~5_combout\ = (!\ExtWord~input_o\ & \A[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	combout => \A_left[37]~5_combout\);

-- Location: LABCELL_X47_Y36_N18
\sll64[2][37]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][37]~80_combout\ = ( \A_left[37]~5_combout\ & ( \A_left[36]~4_combout\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A_left[35]~3_combout\))) # (\B[0]~input_o\ & (\A_left[34]~2_combout\))) ) ) ) # ( !\A_left[37]~5_combout\ & ( 
-- \A_left[36]~4_combout\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A_left[35]~3_combout\))) # (\B[0]~input_o\ & (\A_left[34]~2_combout\)))) ) ) ) # ( \A_left[37]~5_combout\ & ( !\A_left[36]~4_combout\ & ( 
-- (!\B[1]~input_o\ & (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A_left[35]~3_combout\))) # (\B[0]~input_o\ & (\A_left[34]~2_combout\)))) ) ) ) # ( !\A_left[37]~5_combout\ & ( !\A_left[36]~4_combout\ & ( (\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & ((\A_left[35]~3_combout\))) # (\B[0]~input_o\ & (\A_left[34]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[34]~2_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[35]~3_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A_left[37]~5_combout\,
	dataf => \ALT_INV_A_left[36]~4_combout\,
	combout => \sll64[2][37]~80_combout\);

-- Location: LABCELL_X45_Y36_N32
\sll64[4][37]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][37]~81_combout\ = ( \B[3]~input_o\ & ( \sll64[2][33]~72_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][29]~64_combout\)) # (\B[2]~input_o\ & ((\sll64[2][25]~56_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][33]~72_combout\ & ( (\B[2]~input_o\) 
-- # (\sll64[2][37]~80_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][33]~72_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][29]~64_combout\)) # (\B[2]~input_o\ & ((\sll64[2][25]~56_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][33]~72_combout\ & ( 
-- (\sll64[2][37]~80_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][37]~80_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][29]~64_combout\,
	datad => \ALT_INV_sll64[2][25]~56_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][33]~72_combout\,
	combout => \sll64[4][37]~81_combout\);

-- Location: MLABCELL_X44_Y36_N14
\Mux26~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = ( \sll64[4][37]~81_combout\ & ( (!\B[4]~input_o\ & (((!\Mux30~5_combout\)) # (\sll64[4][5]~14_combout\))) # (\B[4]~input_o\ & (((\sll64[4][21]~49_combout\ & \Mux30~5_combout\)))) ) ) # ( !\sll64[4][37]~81_combout\ & ( 
-- (\Mux30~5_combout\ & ((!\B[4]~input_o\ & (\sll64[4][5]~14_combout\)) # (\B[4]~input_o\ & ((\sll64[4][21]~49_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011111001100010001111100110001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][5]~14_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_sll64[4][21]~49_combout\,
	datad => \ALT_INV_Mux30~5_combout\,
	dataf => \ALT_INV_sll64[4][37]~81_combout\,
	combout => \Mux26~3_combout\);

-- Location: MLABCELL_X37_Y38_N34
\Mux26~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = ( \A[37]~input_o\ & ( \Mux30~7_combout\ & ( (!\Mux30~8_combout\) # (\Y_sll[31]~0_combout\) ) ) ) # ( !\A[37]~input_o\ & ( \Mux30~7_combout\ & ( (\Mux30~8_combout\ & \Y_sll[31]~0_combout\) ) ) ) # ( \A[37]~input_o\ & ( 
-- !\Mux30~7_combout\ & ( (!\Mux30~8_combout\ & (!\Mux26~2_combout\)) # (\Mux30~8_combout\ & ((\Mux26~3_combout\))) ) ) ) # ( !\A[37]~input_o\ & ( !\Mux30~7_combout\ & ( (!\Mux30~8_combout\ & (!\Mux26~2_combout\)) # (\Mux30~8_combout\ & 
-- ((\Mux26~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011011101100010001101110100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~8_combout\,
	datab => \ALT_INV_Mux26~2_combout\,
	datac => \ALT_INV_Y_sll[31]~0_combout\,
	datad => \ALT_INV_Mux26~3_combout\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_Mux30~7_combout\,
	combout => \Mux26~4_combout\);

-- Location: LABCELL_X38_Y38_N0
\Mux25~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \srl64[3][54]~120_combout\ & ( (\Mux30~1_combout\ & ((!\B[3]~input_o\) # ((\srl64[1][62]~3_combout\ & \Mux61~9_combout\)))) ) ) # ( !\srl64[3][54]~120_combout\ & ( (\B[3]~input_o\ & (\srl64[1][62]~3_combout\ & (\Mux30~1_combout\ & 
-- \Mux61~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100001010000010110000101000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[1][62]~3_combout\,
	datac => \ALT_INV_Mux30~1_combout\,
	datad => \ALT_INV_Mux61~9_combout\,
	dataf => \ALT_INV_srl64[3][54]~120_combout\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X38_Y38_N30
\Mux25~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \srl64[3][54]~120_combout\ & ( (\Mux30~0_combout\ & ((!\B[3]~input_o\) # (\sra64[3][62]~16_combout\))) ) ) # ( !\srl64[3][54]~120_combout\ & ( (\sra64[3][62]~16_combout\ & (\Mux30~0_combout\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sra64[3][62]~16_combout\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][54]~120_combout\,
	combout => \Mux25~1_combout\);

-- Location: MLABCELL_X37_Y38_N30
\Mux25~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \srl64[4][38]~119_combout\ & ( (!\Mux29~0_combout\ & (\Mux30~11_combout\ & (!\Mux25~0_combout\ & !\Mux25~1_combout\))) ) ) # ( !\srl64[4][38]~119_combout\ & ( (\Mux30~11_combout\ & (!\Mux25~0_combout\ & !\Mux25~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_Mux30~11_combout\,
	datac => \ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_srl64[4][38]~119_combout\,
	combout => \Mux25~2_combout\);

-- Location: LABCELL_X45_Y35_N2
\A_left[38]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[38]~6_combout\ = ( \A[38]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \A_left[38]~6_combout\);

-- Location: LABCELL_X45_Y35_N6
\sll64[2][38]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][38]~82_combout\ = ( \B[1]~input_o\ & ( \A_left[35]~3_combout\ & ( (\B[0]~input_o\) # (\A_left[36]~4_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[35]~3_combout\ & ( (!\B[0]~input_o\ & ((\A_left[38]~6_combout\))) # (\B[0]~input_o\ & 
-- (\A_left[37]~5_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[35]~3_combout\ & ( (\A_left[36]~4_combout\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[35]~3_combout\ & ( (!\B[0]~input_o\ & ((\A_left[38]~6_combout\))) # (\B[0]~input_o\ & 
-- (\A_left[37]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[36]~4_combout\,
	datab => \ALT_INV_A_left[37]~5_combout\,
	datac => \ALT_INV_A_left[38]~6_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[35]~3_combout\,
	combout => \sll64[2][38]~82_combout\);

-- Location: MLABCELL_X42_Y34_N8
\sll64[4][38]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][38]~83_combout\ = ( \sll64[2][34]~74_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][30]~66_combout\))) # (\B[2]~input_o\ & (\sll64[2][26]~58_combout\)) ) ) ) # ( !\sll64[2][34]~74_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ 
-- & ((\sll64[2][30]~66_combout\))) # (\B[2]~input_o\ & (\sll64[2][26]~58_combout\)) ) ) ) # ( \sll64[2][34]~74_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][38]~82_combout\) ) ) ) # ( !\sll64[2][34]~74_combout\ & ( !\B[3]~input_o\ & ( 
-- (\sll64[2][38]~82_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][38]~82_combout\,
	datab => \ALT_INV_sll64[2][26]~58_combout\,
	datac => \ALT_INV_sll64[2][30]~66_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][34]~74_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][38]~83_combout\);

-- Location: MLABCELL_X39_Y34_N30
\Mux25~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = ( \sll64[4][22]~51_combout\ & ( (!\B[4]~input_o\ & ((!\Mux30~5_combout\ & ((\sll64[4][38]~83_combout\))) # (\Mux30~5_combout\ & (\sll64[4][6]~16_combout\)))) # (\B[4]~input_o\ & (((\Mux30~5_combout\)))) ) ) # ( 
-- !\sll64[4][22]~51_combout\ & ( (!\B[4]~input_o\ & ((!\Mux30~5_combout\ & ((\sll64[4][38]~83_combout\))) # (\Mux30~5_combout\ & (\sll64[4][6]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000111110001110000011111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][6]~16_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Mux30~5_combout\,
	datad => \ALT_INV_sll64[4][38]~83_combout\,
	dataf => \ALT_INV_sll64[4][22]~51_combout\,
	combout => \Mux25~3_combout\);

-- Location: MLABCELL_X37_Y38_N18
\Mux25~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = ( \A[38]~input_o\ & ( \Mux25~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux25~2_combout\) # (\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (((!\Mux30~8_combout\)) # (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[38]~input_o\ & ( 
-- \Mux25~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux25~2_combout\) # (\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\ & ((\Mux30~8_combout\)))) ) ) ) # ( \A[38]~input_o\ & ( !\Mux25~3_combout\ & ( (!\Mux30~7_combout\ & 
-- (((!\Mux25~2_combout\ & !\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (((!\Mux30~8_combout\)) # (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[38]~input_o\ & ( !\Mux25~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux25~2_combout\ & !\Mux30~8_combout\)))) # 
-- (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\ & ((\Mux30~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000010001111101010001000110100000101110111111010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~7_combout\,
	datab => \ALT_INV_Y_sll[31]~0_combout\,
	datac => \ALT_INV_Mux25~2_combout\,
	datad => \ALT_INV_Mux30~8_combout\,
	datae => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: LABCELL_X45_Y35_N0
\A_left[39]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[39]~7_combout\ = (!\ExtWord~input_o\ & \A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	combout => \A_left[39]~7_combout\);

-- Location: LABCELL_X45_Y35_N28
\sll64[2][39]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][39]~84_combout\ = ( \B[1]~input_o\ & ( \A_left[36]~4_combout\ & ( (\B[0]~input_o\) # (\A_left[37]~5_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[36]~4_combout\ & ( (!\B[0]~input_o\ & (\A_left[39]~7_combout\)) # (\B[0]~input_o\ & 
-- ((\A_left[38]~6_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[36]~4_combout\ & ( (\A_left[37]~5_combout\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[36]~4_combout\ & ( (!\B[0]~input_o\ & (\A_left[39]~7_combout\)) # (\B[0]~input_o\ & 
-- ((\A_left[38]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[39]~7_combout\,
	datab => \ALT_INV_A_left[37]~5_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_left[38]~6_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[36]~4_combout\,
	combout => \sll64[2][39]~84_combout\);

-- Location: MLABCELL_X39_Y36_N30
\sll64[4][39]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][39]~85_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \sll64[2][27]~60_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \sll64[2][31]~68_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \sll64[2][35]~76_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \sll64[2][39]~84_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][39]~84_combout\,
	datab => \ALT_INV_sll64[2][27]~60_combout\,
	datac => \ALT_INV_sll64[2][35]~76_combout\,
	datad => \ALT_INV_sll64[2][31]~68_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][39]~85_combout\);

-- Location: LABCELL_X40_Y36_N16
\Mux24~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = ( \sll64[4][23]~53_combout\ & ( (!\B[4]~input_o\ & ((!\Mux30~5_combout\ & ((\sll64[4][39]~85_combout\))) # (\Mux30~5_combout\ & (\sll64[4][7]~18_combout\)))) # (\B[4]~input_o\ & (((\Mux30~5_combout\)))) ) ) # ( 
-- !\sll64[4][23]~53_combout\ & ( (!\B[4]~input_o\ & ((!\Mux30~5_combout\ & ((\sll64[4][39]~85_combout\))) # (\Mux30~5_combout\ & (\sll64[4][7]~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000001010011101110000101001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_sll64[4][7]~18_combout\,
	datac => \ALT_INV_sll64[4][39]~85_combout\,
	datad => \ALT_INV_Mux30~5_combout\,
	dataf => \ALT_INV_sll64[4][23]~53_combout\,
	combout => \Mux24~3_combout\);

-- Location: LABCELL_X35_Y38_N10
\Mux30~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( \ExtWord~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux30~2_combout\);

-- Location: MLABCELL_X37_Y38_N14
\Mux30~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~10_combout\ = ( \sll64[6][1]~1_combout\ & ( (\sra64[0][63]~0_combout\ & (!\srl64[4][63]~136_combout\ & \Mux30~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sra64[0][63]~0_combout\,
	datac => \ALT_INV_srl64[4][63]~136_combout\,
	datad => \ALT_INV_Mux30~2_combout\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \Mux30~10_combout\);

-- Location: LABCELL_X40_Y40_N14
\Mux24~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( !\Mux30~10_combout\ & ( (!\Mux30~1_combout\) # ((!\srl64[4][55]~142_combout\ & ((!\srl64[3][55]~127_combout\) # (\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111110000111110111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][55]~127_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux30~1_combout\,
	datad => \ALT_INV_srl64[4][55]~142_combout\,
	dataf => \ALT_INV_Mux30~10_combout\,
	combout => \Mux24~1_combout\);

-- Location: LABCELL_X40_Y34_N2
\Y_srl[31]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[31]~3_combout\ = ( !\B[5]~input_o\ & ( (!\ExtWord~input_o\ & \B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y_srl[31]~3_combout\);

-- Location: LABCELL_X40_Y40_N12
\Mux24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \Y_srl[31]~3_combout\ & ( (!\Y_sra[31]~4_combout\ & ((!\B[3]~input_o\ & (!\srl64[3][55]~127_combout\)) # (\B[3]~input_o\ & ((!\sra64[0][63]~0_combout\))))) ) ) # ( !\Y_srl[31]~3_combout\ & ( !\Y_sra[31]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010111000000000001011100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][55]~127_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_Y_sra[31]~4_combout\,
	dataf => \ALT_INV_Y_srl[31]~3_combout\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X40_Y40_N10
\Mux24~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \srl64[4][39]~126_combout\ & ( (!\Mux29~0_combout\ & (\Mux24~1_combout\ & ((!\ShiftFN[0]~input_o\) # (\Mux24~0_combout\)))) ) ) # ( !\srl64[4][39]~126_combout\ & ( (\Mux24~1_combout\ & ((!\ShiftFN[0]~input_o\) # (\Mux24~0_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100100000001000100010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_Mux24~1_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_srl64[4][39]~126_combout\,
	combout => \Mux24~2_combout\);

-- Location: LABCELL_X40_Y36_N8
\Mux24~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = ( \A[39]~input_o\ & ( \Mux24~2_combout\ & ( (!\Mux30~7_combout\ & (((\Mux30~8_combout\ & \Mux24~3_combout\)))) # (\Mux30~7_combout\ & (((!\Mux30~8_combout\)) # (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[39]~input_o\ & ( \Mux24~2_combout\ 
-- & ( (\Mux30~8_combout\ & ((!\Mux30~7_combout\ & ((\Mux24~3_combout\))) # (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\)))) ) ) ) # ( \A[39]~input_o\ & ( !\Mux24~2_combout\ & ( (!\Mux30~8_combout\) # ((!\Mux30~7_combout\ & ((\Mux24~3_combout\))) # 
-- (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[39]~input_o\ & ( !\Mux24~2_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux30~8_combout\) # (\Mux24~3_combout\)))) # (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\ & (\Mux30~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000110101011111100011111101100000001000010110101000101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~7_combout\,
	datab => \ALT_INV_Y_sll[31]~0_combout\,
	datac => \ALT_INV_Mux30~8_combout\,
	datad => \ALT_INV_Mux24~3_combout\,
	datae => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_Mux24~2_combout\,
	combout => \Mux24~4_combout\);

-- Location: MLABCELL_X42_Y39_N28
\A_left[40]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[40]~8_combout\ = ( \A[40]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[40]~input_o\,
	combout => \A_left[40]~8_combout\);

-- Location: LABCELL_X45_Y35_N14
\sll64[2][40]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][40]~86_combout\ = ( \B[1]~input_o\ & ( \A_left[38]~6_combout\ & ( (!\B[0]~input_o\) # (\A_left[37]~5_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[38]~6_combout\ & ( (!\B[0]~input_o\ & ((\A_left[40]~8_combout\))) # (\B[0]~input_o\ & 
-- (\A_left[39]~7_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[38]~6_combout\ & ( (\A_left[37]~5_combout\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[38]~6_combout\ & ( (!\B[0]~input_o\ & ((\A_left[40]~8_combout\))) # (\B[0]~input_o\ & 
-- (\A_left[39]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[39]~7_combout\,
	datab => \ALT_INV_A_left[37]~5_combout\,
	datac => \ALT_INV_A_left[40]~8_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[38]~6_combout\,
	combout => \sll64[2][40]~86_combout\);

-- Location: LABCELL_X40_Y35_N18
\sll64[4][40]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][40]~87_combout\ = ( \sll64[2][28]~62_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][32]~70_combout\) ) ) ) # ( !\sll64[2][28]~62_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][32]~70_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][28]~62_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][40]~86_combout\))) # (\B[2]~input_o\ & (\sll64[2][36]~78_combout\)) ) ) ) # ( !\sll64[2][28]~62_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][40]~86_combout\))) # (\B[2]~input_o\ & (\sll64[2][36]~78_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][32]~70_combout\,
	datab => \ALT_INV_sll64[2][36]~78_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][40]~86_combout\,
	datae => \ALT_INV_sll64[2][28]~62_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][40]~87_combout\);

-- Location: MLABCELL_X42_Y39_N20
\Mux23~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = ( \B[4]~input_o\ & ( (\sll64[4][24]~55_combout\ & \Mux30~5_combout\) ) ) # ( !\B[4]~input_o\ & ( (!\Mux30~5_combout\ & (\sll64[4][40]~87_combout\)) # (\Mux30~5_combout\ & ((\sll64[4][8]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][24]~55_combout\,
	datab => \ALT_INV_sll64[4][40]~87_combout\,
	datac => \ALT_INV_Mux30~5_combout\,
	datad => \ALT_INV_sll64[4][8]~20_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux23~3_combout\);

-- Location: LABCELL_X35_Y39_N8
\Mux23~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \A[31]~input_o\ & ( \A[63]~input_o\ & ( (((\B[4]~input_o\ & \B[3]~input_o\)) # (\B[5]~input_o\)) # (\ExtWord~input_o\) ) ) ) # ( !\A[31]~input_o\ & ( \A[63]~input_o\ & ( (!\ExtWord~input_o\ & (((\B[4]~input_o\ & \B[3]~input_o\)) # 
-- (\B[5]~input_o\))) ) ) ) # ( \A[31]~input_o\ & ( !\A[63]~input_o\ & ( \ExtWord~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100100010001010100111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LABCELL_X35_Y39_N30
\Mux23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & \srl64[3][48]~9_combout\) ) ) # ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & ((\srl64[3][40]~14_combout\))) # (\B[4]~input_o\ & (\srl64[3][56]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_srl64[3][56]~4_combout\,
	datac => \ALT_INV_srl64[3][48]~9_combout\,
	datad => \ALT_INV_srl64[3][40]~14_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: MLABCELL_X39_Y38_N18
\Y_srl[63]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[63]~4_combout\ = (\sll64[6][1]~1_combout\ & (!\srl64[4][63]~136_combout\ & \sra64[0][63]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][1]~1_combout\,
	datab => \ALT_INV_srl64[4][63]~136_combout\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	combout => \Y_srl[63]~4_combout\);

-- Location: LABCELL_X35_Y39_N14
\Mux23~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \ShiftFN[0]~input_o\ & ( \Y_srl[63]~4_combout\ & ( ((!\B[5]~input_o\ & (\Mux23~0_combout\ & !\ExtWord~input_o\))) # (\Mux23~1_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Y_srl[63]~4_combout\ & ( ((!\B[5]~input_o\ & 
-- \Mux23~0_combout\)) # (\ExtWord~input_o\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Y_srl[63]~4_combout\ & ( ((!\B[5]~input_o\ & (\Mux23~0_combout\ & !\ExtWord~input_o\))) # (\Mux23~1_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Y_srl[63]~4_combout\ & ( 
-- (!\B[5]~input_o\ & (\Mux23~0_combout\ & !\ExtWord~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000010111010101010100001100111111110101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux23~1_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Y_srl[63]~4_combout\,
	combout => \Mux23~2_combout\);

-- Location: MLABCELL_X42_Y39_N8
\Mux23~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = ( \Y_sll[31]~0_combout\ & ( \Mux30~7_combout\ & ( (\A[40]~input_o\) # (\Mux30~8_combout\) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( \Mux30~7_combout\ & ( (!\Mux30~8_combout\ & \A[40]~input_o\) ) ) ) # ( \Y_sll[31]~0_combout\ & ( 
-- !\Mux30~7_combout\ & ( (!\Mux30~8_combout\ & ((\Mux23~2_combout\))) # (\Mux30~8_combout\ & (\Mux23~3_combout\)) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Mux30~7_combout\ & ( (!\Mux30~8_combout\ & ((\Mux23~2_combout\))) # (\Mux30~8_combout\ & 
-- (\Mux23~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~8_combout\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_Mux23~3_combout\,
	datad => \ALT_INV_Mux23~2_combout\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Mux30~7_combout\,
	combout => \Mux23~4_combout\);

-- Location: LABCELL_X40_Y38_N34
\Mux22~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( !\Mux30~10_combout\ & ( (!\srl64[3][57]~67_combout\) # ((!\Mux30~1_combout\) # (\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111111110101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][57]~67_combout\,
	datac => \ALT_INV_Mux30~1_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Mux30~10_combout\,
	combout => \Mux22~1_combout\);

-- Location: LABCELL_X43_Y38_N30
\Mux22~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \Y_srl[31]~3_combout\ & ( (!\Y_sra[31]~4_combout\ & ((!\B[3]~input_o\ & (!\sra64[3][57]~1_combout\)) # (\B[3]~input_o\ & ((!\sra64[0][63]~0_combout\))))) ) ) # ( !\Y_srl[31]~3_combout\ & ( !\Y_sra[31]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011010000100000001101000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sra64[3][57]~1_combout\,
	datac => \ALT_INV_Y_sra[31]~4_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_Y_srl[31]~3_combout\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X43_Y38_N6
\Mux22~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (\Mux22~1_combout\ & (\Mux22~0_combout\ & ((!\Mux29~0_combout\) # (!\srl64[4][41]~129_combout\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Mux22~1_combout\ & ((!\Mux29~0_combout\) # 
-- (!\srl64[4][41]~129_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000010001000100000001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux22~1_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_srl64[4][41]~129_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LABCELL_X47_Y39_N2
\A_left[41]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[41]~9_combout\ = ( \A[41]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \A_left[41]~9_combout\);

-- Location: LABCELL_X45_Y35_N16
\sll64[2][41]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][41]~88_combout\ = ( \B[1]~input_o\ & ( \A_left[38]~6_combout\ & ( (\B[0]~input_o\) # (\A_left[39]~7_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[38]~6_combout\ & ( (!\B[0]~input_o\ & (\A_left[41]~9_combout\)) # (\B[0]~input_o\ & 
-- ((\A_left[40]~8_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[38]~6_combout\ & ( (\A_left[39]~7_combout\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[38]~6_combout\ & ( (!\B[0]~input_o\ & (\A_left[41]~9_combout\)) # (\B[0]~input_o\ & 
-- ((\A_left[40]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[39]~7_combout\,
	datab => \ALT_INV_A_left[41]~9_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_left[40]~8_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[38]~6_combout\,
	combout => \sll64[2][41]~88_combout\);

-- Location: LABCELL_X45_Y36_N36
\sll64[4][41]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][41]~89_combout\ = ( \B[3]~input_o\ & ( \sll64[2][33]~72_combout\ & ( (!\B[2]~input_o\) # (\sll64[2][29]~64_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][33]~72_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][41]~88_combout\)) # (\B[2]~input_o\ & 
-- ((\sll64[2][37]~80_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][33]~72_combout\ & ( (\B[2]~input_o\ & \sll64[2][29]~64_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][33]~72_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][41]~88_combout\)) # 
-- (\B[2]~input_o\ & ((\sll64[2][37]~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][41]~88_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][29]~64_combout\,
	datad => \ALT_INV_sll64[2][37]~80_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][33]~72_combout\,
	combout => \sll64[4][41]~89_combout\);

-- Location: MLABCELL_X44_Y38_N32
\Mux22~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = ( \sll64[4][41]~89_combout\ & ( (!\Mux30~5_combout\ & (((!\B[4]~input_o\)))) # (\Mux30~5_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][9]~22_combout\))) # (\B[4]~input_o\ & (\sll64[4][25]~57_combout\)))) ) ) # ( !\sll64[4][41]~89_combout\ 
-- & ( (\Mux30~5_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][9]~22_combout\))) # (\B[4]~input_o\ & (\sll64[4][25]~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111000100011010111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~5_combout\,
	datab => \ALT_INV_sll64[4][25]~57_combout\,
	datac => \ALT_INV_sll64[4][9]~22_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][41]~89_combout\,
	combout => \Mux22~3_combout\);

-- Location: MLABCELL_X44_Y38_N22
\Mux22~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = ( \Mux22~2_combout\ & ( \Mux22~3_combout\ & ( (!\Mux30~8_combout\ & (\A[41]~input_o\ & ((\Mux30~7_combout\)))) # (\Mux30~8_combout\ & (((!\Mux30~7_combout\) # (\Y_sll[31]~0_combout\)))) ) ) ) # ( !\Mux22~2_combout\ & ( 
-- \Mux22~3_combout\ & ( (!\Mux30~7_combout\) # ((!\Mux30~8_combout\ & (\A[41]~input_o\)) # (\Mux30~8_combout\ & ((\Y_sll[31]~0_combout\)))) ) ) ) # ( \Mux22~2_combout\ & ( !\Mux22~3_combout\ & ( (\Mux30~7_combout\ & ((!\Mux30~8_combout\ & (\A[41]~input_o\)) 
-- # (\Mux30~8_combout\ & ((\Y_sll[31]~0_combout\))))) ) ) ) # ( !\Mux22~2_combout\ & ( !\Mux22~3_combout\ & ( (!\Mux30~8_combout\ & (((!\Mux30~7_combout\)) # (\A[41]~input_o\))) # (\Mux30~8_combout\ & (((\Y_sll[31]~0_combout\ & \Mux30~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000111000000000100011111111111010001110011001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_Mux30~8_combout\,
	datac => \ALT_INV_Y_sll[31]~0_combout\,
	datad => \ALT_INV_Mux30~7_combout\,
	datae => \ALT_INV_Mux22~2_combout\,
	dataf => \ALT_INV_Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: MLABCELL_X42_Y37_N26
\A_left[42]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[42]~10_combout\ = ( \A[42]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => \A_left[42]~10_combout\);

-- Location: LABCELL_X45_Y35_N22
\sll64[2][42]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][42]~90_combout\ = ( \B[1]~input_o\ & ( \A_left[42]~10_combout\ & ( (!\B[0]~input_o\ & ((\A_left[40]~8_combout\))) # (\B[0]~input_o\ & (\A_left[39]~7_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[42]~10_combout\ & ( (!\B[0]~input_o\) # 
-- (\A_left[41]~9_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[42]~10_combout\ & ( (!\B[0]~input_o\ & ((\A_left[40]~8_combout\))) # (\B[0]~input_o\ & (\A_left[39]~7_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[42]~10_combout\ & ( 
-- (\A_left[41]~9_combout\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[39]~7_combout\,
	datab => \ALT_INV_A_left[41]~9_combout\,
	datac => \ALT_INV_A_left[40]~8_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[42]~10_combout\,
	combout => \sll64[2][42]~90_combout\);

-- Location: MLABCELL_X42_Y34_N12
\sll64[4][42]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][42]~91_combout\ = ( \sll64[2][34]~74_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][30]~66_combout\) ) ) ) # ( !\sll64[2][34]~74_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][30]~66_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][34]~74_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][42]~90_combout\))) # (\B[2]~input_o\ & (\sll64[2][38]~82_combout\)) ) ) ) # ( !\sll64[2][34]~74_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][42]~90_combout\))) # (\B[2]~input_o\ & (\sll64[2][38]~82_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][38]~82_combout\,
	datab => \ALT_INV_sll64[2][42]~90_combout\,
	datac => \ALT_INV_sll64[2][30]~66_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][34]~74_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][42]~91_combout\);

-- Location: MLABCELL_X37_Y37_N4
\Mux21~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = ( \sll64[4][42]~91_combout\ & ( (!\Mux30~5_combout\ & (((!\B[4]~input_o\)))) # (\Mux30~5_combout\ & ((!\B[4]~input_o\ & (\sll64[4][10]~24_combout\)) # (\B[4]~input_o\ & ((\sll64[4][26]~59_combout\))))) ) ) # ( 
-- !\sll64[4][42]~91_combout\ & ( (\Mux30~5_combout\ & ((!\B[4]~input_o\ & (\sll64[4][10]~24_combout\)) # (\B[4]~input_o\ & ((\sll64[4][26]~59_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011000001011011101100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~5_combout\,
	datab => \ALT_INV_sll64[4][10]~24_combout\,
	datac => \ALT_INV_sll64[4][26]~59_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][42]~91_combout\,
	combout => \Mux21~3_combout\);

-- Location: MLABCELL_X37_Y37_N16
\Mux21~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \Mux30~1_combout\ & ( (!\Mux30~10_combout\ & ((!\srl64[3][58]~131_combout\) # (\B[3]~input_o\))) ) ) # ( !\Mux30~1_combout\ & ( !\Mux30~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux30~10_combout\,
	datad => \ALT_INV_srl64[3][58]~131_combout\,
	dataf => \ALT_INV_Mux30~1_combout\,
	combout => \Mux21~1_combout\);

-- Location: MLABCELL_X37_Y37_N18
\Mux21~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \sra64[3][58]~4_combout\ & ( (!\Y_sra[31]~4_combout\ & ((!\Y_srl[31]~3_combout\) # ((\B[3]~input_o\ & !\sra64[0][63]~0_combout\)))) ) ) # ( !\sra64[3][58]~4_combout\ & ( (!\Y_sra[31]~4_combout\ & ((!\B[3]~input_o\) # 
-- ((!\sra64[0][63]~0_combout\) # (!\Y_srl[31]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010101010001000001010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[31]~4_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sra64[0][63]~0_combout\,
	datad => \ALT_INV_Y_srl[31]~3_combout\,
	dataf => \ALT_INV_sra64[3][58]~4_combout\,
	combout => \Mux21~0_combout\);

-- Location: MLABCELL_X37_Y37_N2
\Mux21~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \srl64[4][42]~130_combout\ & ( (\Mux21~1_combout\ & (!\Mux29~0_combout\ & ((!\ShiftFN[0]~input_o\) # (\Mux21~0_combout\)))) ) ) # ( !\srl64[4][42]~130_combout\ & ( (\Mux21~1_combout\ & ((!\ShiftFN[0]~input_o\) # (\Mux21~0_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100100011000000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Mux21~1_combout\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_Mux29~0_combout\,
	dataf => \ALT_INV_srl64[4][42]~130_combout\,
	combout => \Mux21~2_combout\);

-- Location: MLABCELL_X37_Y37_N10
\Mux21~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = ( \Mux30~7_combout\ & ( \Mux30~8_combout\ & ( \Y_sll[31]~0_combout\ ) ) ) # ( !\Mux30~7_combout\ & ( \Mux30~8_combout\ & ( \Mux21~3_combout\ ) ) ) # ( \Mux30~7_combout\ & ( !\Mux30~8_combout\ & ( \A[42]~input_o\ ) ) ) # ( 
-- !\Mux30~7_combout\ & ( !\Mux30~8_combout\ & ( !\Mux21~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~3_combout\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_Mux21~2_combout\,
	datad => \ALT_INV_Y_sll[31]~0_combout\,
	datae => \ALT_INV_Mux30~7_combout\,
	dataf => \ALT_INV_Mux30~8_combout\,
	combout => \Mux21~4_combout\);

-- Location: MLABCELL_X44_Y39_N14
\A_left[43]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[43]~11_combout\ = (!\ExtWord~input_o\ & \A[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[43]~input_o\,
	combout => \A_left[43]~11_combout\);

-- Location: LABCELL_X45_Y35_N24
\sll64[2][43]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][43]~92_combout\ = ( \B[1]~input_o\ & ( \A_left[43]~11_combout\ & ( (!\B[0]~input_o\ & (\A_left[41]~9_combout\)) # (\B[0]~input_o\ & ((\A_left[40]~8_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[43]~11_combout\ & ( (!\B[0]~input_o\) # 
-- (\A_left[42]~10_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[43]~11_combout\ & ( (!\B[0]~input_o\ & (\A_left[41]~9_combout\)) # (\B[0]~input_o\ & ((\A_left[40]~8_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[43]~11_combout\ & ( 
-- (\A_left[42]~10_combout\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[41]~9_combout\,
	datab => \ALT_INV_A_left[42]~10_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_left[40]~8_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[43]~11_combout\,
	combout => \sll64[2][43]~92_combout\);

-- Location: MLABCELL_X39_Y36_N34
\sll64[4][43]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][43]~93_combout\ = ( \B[2]~input_o\ & ( \sll64[2][43]~92_combout\ & ( (!\B[3]~input_o\ & (\sll64[2][39]~84_combout\)) # (\B[3]~input_o\ & ((\sll64[2][31]~68_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \sll64[2][43]~92_combout\ & ( (!\B[3]~input_o\) 
-- # (\sll64[2][35]~76_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\sll64[2][43]~92_combout\ & ( (!\B[3]~input_o\ & (\sll64[2][39]~84_combout\)) # (\B[3]~input_o\ & ((\sll64[2][31]~68_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\sll64[2][43]~92_combout\ & ( 
-- (\B[3]~input_o\ & \sll64[2][35]~76_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][39]~84_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[2][35]~76_combout\,
	datad => \ALT_INV_sll64[2][31]~68_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_sll64[2][43]~92_combout\,
	combout => \sll64[4][43]~93_combout\);

-- Location: LABCELL_X38_Y36_N10
\Mux20~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = ( \sll64[4][43]~93_combout\ & ( (!\Mux30~5_combout\ & (((!\B[4]~input_o\)))) # (\Mux30~5_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][11]~26_combout\))) # (\B[4]~input_o\ & (\sll64[4][27]~61_combout\)))) ) ) # ( 
-- !\sll64[4][43]~93_combout\ & ( (\Mux30~5_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][11]~26_combout\))) # (\B[4]~input_o\ & (\sll64[4][27]~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010111110011000001011111001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][27]~61_combout\,
	datab => \ALT_INV_sll64[4][11]~26_combout\,
	datac => \ALT_INV_Mux30~5_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][43]~93_combout\,
	combout => \Mux20~3_combout\);

-- Location: MLABCELL_X37_Y37_N0
\Mux20~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \sra64[4][59]~6_combout\ & ( (\ShiftFN[0]~input_o\ & ((\Y_sra[31]~4_combout\) # (\Y_srl[31]~3_combout\))) ) ) # ( !\sra64[4][59]~6_combout\ & ( (\ShiftFN[0]~input_o\ & \Y_sra[31]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y_srl[31]~3_combout\,
	datad => \ALT_INV_Y_sra[31]~4_combout\,
	dataf => \ALT_INV_sra64[4][59]~6_combout\,
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X37_Y40_N8
\Mux20~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \srl64[3][59]~134_combout\ & ( !\Mux30~10_combout\ ) ) # ( !\srl64[3][59]~134_combout\ & ( (!\Mux30~10_combout\ & ((!\Mux30~1_combout\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux30~10_combout\,
	dataf => \ALT_INV_srl64[3][59]~134_combout\,
	combout => \Mux20~1_combout\);

-- Location: LABCELL_X38_Y40_N2
\Mux20~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \Mux20~1_combout\ & ( (!\Mux20~0_combout\ & ((!\srl64[4][43]~132_combout\) # (!\Mux29~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[4][43]~132_combout\,
	datac => \ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_Mux29~0_combout\,
	dataf => \ALT_INV_Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X38_Y36_N18
\Mux20~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ( \A[43]~input_o\ & ( \Mux30~8_combout\ & ( (!\Mux30~7_combout\ & (\Mux20~3_combout\)) # (\Mux30~7_combout\ & ((\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[43]~input_o\ & ( \Mux30~8_combout\ & ( (!\Mux30~7_combout\ & (\Mux20~3_combout\)) # 
-- (\Mux30~7_combout\ & ((\Y_sll[31]~0_combout\))) ) ) ) # ( \A[43]~input_o\ & ( !\Mux30~8_combout\ & ( (!\Mux20~2_combout\) # (\Mux30~7_combout\) ) ) ) # ( !\A[43]~input_o\ & ( !\Mux30~8_combout\ & ( (!\Mux30~7_combout\ & !\Mux20~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111101011111010100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~7_combout\,
	datab => \ALT_INV_Mux20~3_combout\,
	datac => \ALT_INV_Mux20~2_combout\,
	datad => \ALT_INV_Y_sll[31]~0_combout\,
	datae => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_Mux30~8_combout\,
	combout => \Mux20~4_combout\);

-- Location: LABCELL_X38_Y39_N10
\Mux19~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \srl64[2][60]~105_combout\ & ( (!\Y_sra[31]~4_combout\ & ((!\Y_srl[31]~3_combout\) # ((!\sll64[4][2]~4_combout\ & !\sra64[4][59]~7_combout\)))) ) ) # ( !\srl64[2][60]~105_combout\ & ( (!\Y_sra[31]~4_combout\ & 
-- ((!\Y_srl[31]~3_combout\) # (!\sra64[4][59]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001000110000001100100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~4_combout\,
	datab => \ALT_INV_Y_sra[31]~4_combout\,
	datac => \ALT_INV_Y_srl[31]~3_combout\,
	datad => \ALT_INV_sra64[4][59]~7_combout\,
	dataf => \ALT_INV_srl64[2][60]~105_combout\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X38_Y39_N32
\Mux19~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \Mux30~1_combout\ & ( (!\Mux30~10_combout\ & ((!\sll64[4][2]~4_combout\) # (!\srl64[2][60]~105_combout\))) ) ) # ( !\Mux30~1_combout\ & ( !\Mux30~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~4_combout\,
	datac => \ALT_INV_srl64[2][60]~105_combout\,
	datad => \ALT_INV_Mux30~10_combout\,
	dataf => \ALT_INV_Mux30~1_combout\,
	combout => \Mux19~1_combout\);

-- Location: LABCELL_X38_Y39_N38
\Mux19~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \Mux19~1_combout\ & ( (!\srl64[4][44]~144_combout\ & ((!\ShiftFN[0]~input_o\) # ((\Mux19~0_combout\)))) # (\srl64[4][44]~144_combout\ & (!\Mux29~0_combout\ & ((!\ShiftFN[0]~input_o\) # (\Mux19~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111100010101100111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[4][44]~144_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Mux19~0_combout\,
	datad => \ALT_INV_Mux29~0_combout\,
	dataf => \ALT_INV_Mux19~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: MLABCELL_X44_Y35_N24
\A_left[44]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[44]~12_combout\ = (!\ExtWord~input_o\ & \A[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	combout => \A_left[44]~12_combout\);

-- Location: LABCELL_X45_Y35_N8
\sll64[2][44]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][44]~94_combout\ = ( \B[1]~input_o\ & ( \A_left[44]~12_combout\ & ( (!\B[0]~input_o\ & ((\A_left[42]~10_combout\))) # (\B[0]~input_o\ & (\A_left[41]~9_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[44]~12_combout\ & ( (!\B[0]~input_o\) # 
-- (\A_left[43]~11_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[44]~12_combout\ & ( (!\B[0]~input_o\ & ((\A_left[42]~10_combout\))) # (\B[0]~input_o\ & (\A_left[41]~9_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[44]~12_combout\ & ( (\B[0]~input_o\ & 
-- \A_left[43]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[41]~9_combout\,
	datab => \ALT_INV_A_left[42]~10_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_left[43]~11_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[44]~12_combout\,
	combout => \sll64[2][44]~94_combout\);

-- Location: LABCELL_X40_Y35_N22
\sll64[4][44]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][44]~95_combout\ = ( \sll64[2][36]~78_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][32]~70_combout\) ) ) ) # ( !\sll64[2][36]~78_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][32]~70_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][36]~78_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][44]~94_combout\)) # (\B[2]~input_o\ & ((\sll64[2][40]~86_combout\))) ) ) ) # ( !\sll64[2][36]~78_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\sll64[2][44]~94_combout\)) # (\B[2]~input_o\ & ((\sll64[2][40]~86_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][32]~70_combout\,
	datab => \ALT_INV_sll64[2][44]~94_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][40]~86_combout\,
	datae => \ALT_INV_sll64[2][36]~78_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][44]~95_combout\);

-- Location: MLABCELL_X39_Y39_N24
\Mux19~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = ( \B[4]~input_o\ & ( (\sll64[4][28]~63_combout\ & \Mux30~5_combout\) ) ) # ( !\B[4]~input_o\ & ( (!\Mux30~5_combout\ & ((\sll64[4][44]~95_combout\))) # (\Mux30~5_combout\ & (\sll64[4][12]~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][12]~28_combout\,
	datab => \ALT_INV_sll64[4][28]~63_combout\,
	datac => \ALT_INV_Mux30~5_combout\,
	datad => \ALT_INV_sll64[4][44]~95_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux19~3_combout\);

-- Location: MLABCELL_X39_Y39_N30
\Mux19~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = ( \A[44]~input_o\ & ( \Mux19~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux19~2_combout\) # (\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (((!\Mux30~8_combout\)) # (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[44]~input_o\ & ( 
-- \Mux19~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux19~2_combout\) # (\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\ & ((\Mux30~8_combout\)))) ) ) ) # ( \A[44]~input_o\ & ( !\Mux19~3_combout\ & ( (!\Mux30~7_combout\ & 
-- (((!\Mux19~2_combout\ & !\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (((!\Mux30~8_combout\)) # (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[44]~input_o\ & ( !\Mux19~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux19~2_combout\ & !\Mux30~8_combout\)))) # 
-- (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\ & ((\Mux30~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000010001111101010001000110100000101110111111010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~7_combout\,
	datab => \ALT_INV_Y_sll[31]~0_combout\,
	datac => \ALT_INV_Mux19~2_combout\,
	datad => \ALT_INV_Mux30~8_combout\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: LABCELL_X38_Y39_N8
\Mux18~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \Mux30~1_combout\ & ( (!\Mux30~10_combout\ & ((!\sll64[4][2]~4_combout\) # (\srl64[2][61]~112_combout\))) ) ) # ( !\Mux30~1_combout\ & ( !\Mux30~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~4_combout\,
	datac => \ALT_INV_Mux30~10_combout\,
	datad => \ALT_INV_srl64[2][61]~112_combout\,
	dataf => \ALT_INV_Mux30~1_combout\,
	combout => \Mux18~1_combout\);

-- Location: LABCELL_X38_Y39_N36
\Mux18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \Y_srl[31]~3_combout\ & ( (\ShiftFN[0]~input_o\ & ((\Y_sra[31]~4_combout\) # (\sra64[4][61]~8_combout\))) ) ) # ( !\Y_srl[31]~3_combout\ & ( (\ShiftFN[0]~input_o\ & \Y_sra[31]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_sra64[4][61]~8_combout\,
	datad => \ALT_INV_Y_sra[31]~4_combout\,
	dataf => \ALT_INV_Y_srl[31]~3_combout\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X43_Y36_N32
\Mux18~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( !\Mux18~0_combout\ & ( (\Mux18~1_combout\ & ((!\srl64[4][45]~135_combout\) # (!\Mux29~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[4][45]~135_combout\,
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_Mux18~1_combout\,
	dataf => \ALT_INV_Mux18~0_combout\,
	combout => \Mux18~2_combout\);

-- Location: MLABCELL_X44_Y35_N32
\A_left[45]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[45]~13_combout\ = (!\ExtWord~input_o\ & \A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	combout => \A_left[45]~13_combout\);

-- Location: LABCELL_X45_Y35_N32
\sll64[2][45]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][45]~96_combout\ = ( \B[1]~input_o\ & ( \A_left[45]~13_combout\ & ( (!\B[0]~input_o\ & ((\A_left[43]~11_combout\))) # (\B[0]~input_o\ & (\A_left[42]~10_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[45]~13_combout\ & ( (!\B[0]~input_o\) # 
-- (\A_left[44]~12_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[45]~13_combout\ & ( (!\B[0]~input_o\ & ((\A_left[43]~11_combout\))) # (\B[0]~input_o\ & (\A_left[42]~10_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[45]~13_combout\ & ( 
-- (\A_left[44]~12_combout\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[44]~12_combout\,
	datab => \ALT_INV_A_left[42]~10_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_left[43]~11_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[45]~13_combout\,
	combout => \sll64[2][45]~96_combout\);

-- Location: LABCELL_X45_Y36_N0
\sll64[4][45]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][45]~97_combout\ = ( \sll64[2][45]~96_combout\ & ( \sll64[2][33]~72_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][37]~80_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][41]~88_combout\))) ) ) ) # ( 
-- !\sll64[2][45]~96_combout\ & ( \sll64[2][33]~72_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\ & \sll64[2][37]~80_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][41]~88_combout\))) ) ) ) # ( \sll64[2][45]~96_combout\ & ( 
-- !\sll64[2][33]~72_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][37]~80_combout\)))) # (\B[2]~input_o\ & (\sll64[2][41]~88_combout\ & (!\B[3]~input_o\))) ) ) ) # ( !\sll64[2][45]~96_combout\ & ( !\sll64[2][33]~72_combout\ & ( 
-- (!\B[2]~input_o\ & (((\B[3]~input_o\ & \sll64[2][37]~80_combout\)))) # (\B[2]~input_o\ & (\sll64[2][41]~88_combout\ & (!\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][41]~88_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][37]~80_combout\,
	datae => \ALT_INV_sll64[2][45]~96_combout\,
	dataf => \ALT_INV_sll64[2][33]~72_combout\,
	combout => \sll64[4][45]~97_combout\);

-- Location: LABCELL_X43_Y36_N10
\Mux18~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = ( \B[4]~input_o\ & ( (\sll64[4][29]~65_combout\ & \Mux30~5_combout\) ) ) # ( !\B[4]~input_o\ & ( (!\Mux30~5_combout\ & (\sll64[4][45]~97_combout\)) # (\Mux30~5_combout\ & ((\sll64[4][13]~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][45]~97_combout\,
	datab => \ALT_INV_sll64[4][29]~65_combout\,
	datac => \ALT_INV_sll64[4][13]~30_combout\,
	datad => \ALT_INV_Mux30~5_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LABCELL_X43_Y36_N14
\Mux18~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = ( \Y_sll[31]~0_combout\ & ( \Mux18~3_combout\ & ( ((!\Mux30~7_combout\ & (!\Mux18~2_combout\)) # (\Mux30~7_combout\ & ((\A[45]~input_o\)))) # (\Mux30~8_combout\) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( \Mux18~3_combout\ & ( 
-- (!\Mux30~8_combout\ & ((!\Mux30~7_combout\ & (!\Mux18~2_combout\)) # (\Mux30~7_combout\ & ((\A[45]~input_o\))))) # (\Mux30~8_combout\ & (((!\Mux30~7_combout\)))) ) ) ) # ( \Y_sll[31]~0_combout\ & ( !\Mux18~3_combout\ & ( (!\Mux30~8_combout\ & 
-- ((!\Mux30~7_combout\ & (!\Mux18~2_combout\)) # (\Mux30~7_combout\ & ((\A[45]~input_o\))))) # (\Mux30~8_combout\ & (((\Mux30~7_combout\)))) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Mux18~3_combout\ & ( (!\Mux30~8_combout\ & ((!\Mux30~7_combout\ & 
-- (!\Mux18~2_combout\)) # (\Mux30~7_combout\ & ((\A[45]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001100100010000011111110111011000011001011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~2_combout\,
	datab => \ALT_INV_Mux30~8_combout\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_Mux30~7_combout\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: MLABCELL_X37_Y38_N36
\Mux17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \Mux30~1_combout\ & ( (\srl64[1][62]~3_combout\ & \sll64[4][0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[1][62]~3_combout\,
	datad => \ALT_INV_sll64[4][0]~0_combout\,
	dataf => \ALT_INV_Mux30~1_combout\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X40_Y34_N16
\Mux17~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \ShiftFN[0]~input_o\ & ( ((\sra64[4][62]~24_combout\ & \Y_srl[31]~3_combout\)) # (\Y_sra[31]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[4][62]~24_combout\,
	datac => \ALT_INV_Y_sra[31]~4_combout\,
	datad => \ALT_INV_Y_srl[31]~3_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LABCELL_X40_Y34_N0
\Mux17~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( !\Mux17~1_combout\ & ( (!\Mux17~0_combout\ & (!\Mux30~10_combout\ & ((!\Mux29~0_combout\) # (!\srl64[4][46]~146_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_Mux29~0_combout\,
	datac => \ALT_INV_srl64[4][46]~146_combout\,
	datad => \ALT_INV_Mux30~10_combout\,
	dataf => \ALT_INV_Mux17~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: MLABCELL_X44_Y35_N34
\A_left[46]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[46]~14_combout\ = (!\ExtWord~input_o\ & \A[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	combout => \A_left[46]~14_combout\);

-- Location: LABCELL_X45_Y35_N38
\sll64[2][46]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][46]~98_combout\ = ( \B[1]~input_o\ & ( \A_left[44]~12_combout\ & ( (!\B[0]~input_o\) # (\A_left[43]~11_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[44]~12_combout\ & ( (!\B[0]~input_o\ & ((\A_left[46]~14_combout\))) # (\B[0]~input_o\ & 
-- (\A_left[45]~13_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[44]~12_combout\ & ( (\A_left[43]~11_combout\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[44]~12_combout\ & ( (!\B[0]~input_o\ & ((\A_left[46]~14_combout\))) # (\B[0]~input_o\ & 
-- (\A_left[45]~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[45]~13_combout\,
	datab => \ALT_INV_A_left[43]~11_combout\,
	datac => \ALT_INV_A_left[46]~14_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[44]~12_combout\,
	combout => \sll64[2][46]~98_combout\);

-- Location: MLABCELL_X42_Y34_N18
\sll64[4][46]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][46]~99_combout\ = ( \sll64[2][34]~74_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][38]~82_combout\) ) ) ) # ( !\sll64[2][34]~74_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][38]~82_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][34]~74_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][46]~98_combout\))) # (\B[2]~input_o\ & (\sll64[2][42]~90_combout\)) ) ) ) # ( !\sll64[2][34]~74_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][46]~98_combout\))) # (\B[2]~input_o\ & (\sll64[2][42]~90_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][38]~82_combout\,
	datab => \ALT_INV_sll64[2][42]~90_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][46]~98_combout\,
	datae => \ALT_INV_sll64[2][34]~74_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][46]~99_combout\);

-- Location: LABCELL_X40_Y34_N20
\Mux17~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = ( \sll64[4][30]~67_combout\ & ( (!\B[4]~input_o\ & ((!\Mux30~5_combout\ & (\sll64[4][46]~99_combout\)) # (\Mux30~5_combout\ & ((\sll64[4][14]~32_combout\))))) # (\B[4]~input_o\ & (((\Mux30~5_combout\)))) ) ) # ( 
-- !\sll64[4][30]~67_combout\ & ( (!\B[4]~input_o\ & ((!\Mux30~5_combout\ & (\sll64[4][46]~99_combout\)) # (\Mux30~5_combout\ & ((\sll64[4][14]~32_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001000000010101000100101001011110010010100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_sll64[4][46]~99_combout\,
	datac => \ALT_INV_Mux30~5_combout\,
	datad => \ALT_INV_sll64[4][14]~32_combout\,
	dataf => \ALT_INV_sll64[4][30]~67_combout\,
	combout => \Mux17~3_combout\);

-- Location: LABCELL_X40_Y34_N26
\Mux17~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = ( \A[46]~input_o\ & ( \Mux17~3_combout\ & ( (!\Mux30~8_combout\ & (((!\Mux17~2_combout\)) # (\Mux30~7_combout\))) # (\Mux30~8_combout\ & ((!\Mux30~7_combout\) # ((\Y_sll[31]~0_combout\)))) ) ) ) # ( !\A[46]~input_o\ & ( 
-- \Mux17~3_combout\ & ( (!\Mux30~8_combout\ & (!\Mux30~7_combout\ & ((!\Mux17~2_combout\)))) # (\Mux30~8_combout\ & ((!\Mux30~7_combout\) # ((\Y_sll[31]~0_combout\)))) ) ) ) # ( \A[46]~input_o\ & ( !\Mux17~3_combout\ & ( (!\Mux30~8_combout\ & 
-- (((!\Mux17~2_combout\)) # (\Mux30~7_combout\))) # (\Mux30~8_combout\ & (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[46]~input_o\ & ( !\Mux17~3_combout\ & ( (!\Mux30~8_combout\ & (!\Mux30~7_combout\ & ((!\Mux17~2_combout\)))) # 
-- (\Mux30~8_combout\ & (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100100000001101010110010001111001101010001011110111101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~8_combout\,
	datab => \ALT_INV_Mux30~7_combout\,
	datac => \ALT_INV_Y_sll[31]~0_combout\,
	datad => \ALT_INV_Mux17~2_combout\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LABCELL_X35_Y39_N32
\Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \B[5]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[63]~input_o\))) # (\ExtWord~input_o\ & (\A[31]~input_o\)) ) ) # ( !\B[5]~input_o\ & ( (!\ExtWord~input_o\ & (\B[4]~input_o\ & ((\A[63]~input_o\)))) # (\ExtWord~input_o\ & 
-- (((\A[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X40_Y39_N16
\Mux16~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \Mux30~1_combout\ & ( (!\ShiftFN[0]~input_o\ & (((!\srl64[4][63]~136_combout\ & \sra64[0][63]~0_combout\)))) # (\ShiftFN[0]~input_o\ & (((!\srl64[4][63]~136_combout\ & \sra64[0][63]~0_combout\)) # (\Mux16~0_combout\))) ) ) # ( 
-- !\Mux30~1_combout\ & ( (\ShiftFN[0]~input_o\ & \Mux16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111100010001000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Mux16~0_combout\,
	datac => \ALT_INV_srl64[4][63]~136_combout\,
	datad => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_Mux30~1_combout\,
	combout => \Mux16~1_combout\);

-- Location: LABCELL_X40_Y39_N28
\Mux16~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = ( \srl64[3][47]~124_combout\ & ( !\Mux16~1_combout\ & ( (!\Mux30~10_combout\ & ((!\Mux29~0_combout\) # ((!\srl64[3][55]~127_combout\ & \B[3]~input_o\)))) ) ) ) # ( !\srl64[3][47]~124_combout\ & ( !\Mux16~1_combout\ & ( 
-- (!\Mux30~10_combout\ & ((!\srl64[3][55]~127_combout\) # ((!\Mux29~0_combout\) # (!\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101000001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~10_combout\,
	datab => \ALT_INV_srl64[3][55]~127_combout\,
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_srl64[3][47]~124_combout\,
	dataf => \ALT_INV_Mux16~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: MLABCELL_X44_Y35_N38
\A_left[47]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[47]~15_combout\ = ( \A[47]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \A_left[47]~15_combout\);

-- Location: MLABCELL_X44_Y35_N20
\sll64[2][47]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][47]~100_combout\ = ( \A_left[46]~14_combout\ & ( \A_left[45]~13_combout\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A_left[47]~15_combout\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A_left[44]~12_combout\))) ) ) ) # ( 
-- !\A_left[46]~14_combout\ & ( \A_left[45]~13_combout\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A_left[47]~15_combout\)))) # (\B[0]~input_o\ & (\A_left[44]~12_combout\ & ((\B[1]~input_o\)))) ) ) ) # ( \A_left[46]~14_combout\ & ( 
-- !\A_left[45]~13_combout\ & ( (!\B[0]~input_o\ & (((\A_left[47]~15_combout\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A_left[44]~12_combout\))) ) ) ) # ( !\A_left[46]~14_combout\ & ( !\A_left[45]~13_combout\ & ( (!\B[0]~input_o\ & 
-- (((\A_left[47]~15_combout\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A_left[44]~12_combout\ & ((\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[44]~12_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_left[47]~15_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[46]~14_combout\,
	dataf => \ALT_INV_A_left[45]~13_combout\,
	combout => \sll64[2][47]~100_combout\);

-- Location: LABCELL_X38_Y35_N22
\sll64[4][47]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][47]~101_combout\ = ( \sll64[2][39]~84_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][35]~76_combout\) ) ) ) # ( !\sll64[2][39]~84_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \sll64[2][35]~76_combout\) ) ) ) # ( 
-- \sll64[2][39]~84_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][47]~100_combout\)) # (\B[2]~input_o\ & ((\sll64[2][43]~92_combout\))) ) ) ) # ( !\sll64[2][39]~84_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\sll64[2][47]~100_combout\)) # (\B[2]~input_o\ & ((\sll64[2][43]~92_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][47]~100_combout\,
	datab => \ALT_INV_sll64[2][43]~92_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][35]~76_combout\,
	datae => \ALT_INV_sll64[2][39]~84_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][47]~101_combout\);

-- Location: MLABCELL_X39_Y35_N12
\Mux16~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = ( \sll64[4][15]~34_combout\ & ( (!\B[4]~input_o\ & (((\sll64[4][47]~101_combout\) # (\Mux30~5_combout\)))) # (\B[4]~input_o\ & (\sll64[4][31]~69_combout\ & (\Mux30~5_combout\))) ) ) # ( !\sll64[4][15]~34_combout\ & ( (!\B[4]~input_o\ & 
-- (((!\Mux30~5_combout\ & \sll64[4][47]~101_combout\)))) # (\B[4]~input_o\ & (\sll64[4][31]~69_combout\ & (\Mux30~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000000011100000100001101110011010000110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][31]~69_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Mux30~5_combout\,
	datad => \ALT_INV_sll64[4][47]~101_combout\,
	dataf => \ALT_INV_sll64[4][15]~34_combout\,
	combout => \Mux16~3_combout\);

-- Location: MLABCELL_X42_Y35_N32
\Mux16~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = ( \A[47]~input_o\ & ( \Mux16~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux16~2_combout\) # (\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (((!\Mux30~8_combout\)) # (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[47]~input_o\ & ( 
-- \Mux16~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux16~2_combout\) # (\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\ & (\Mux30~8_combout\))) ) ) ) # ( \A[47]~input_o\ & ( !\Mux16~3_combout\ & ( (!\Mux30~7_combout\ & 
-- (((!\Mux30~8_combout\ & !\Mux16~2_combout\)))) # (\Mux30~7_combout\ & (((!\Mux30~8_combout\)) # (\Y_sll[31]~0_combout\))) ) ) ) # ( !\A[47]~input_o\ & ( !\Mux16~3_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux30~8_combout\ & !\Mux16~2_combout\)))) # 
-- (\Mux30~7_combout\ & (\Y_sll[31]~0_combout\ & (\Mux30~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100000001111100010011000111001101000011011111110100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sll[31]~0_combout\,
	datab => \ALT_INV_Mux30~7_combout\,
	datac => \ALT_INV_Mux30~8_combout\,
	datad => \ALT_INV_Mux16~2_combout\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: LABCELL_X35_Y39_N16
\Y_sra[48]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[48]~7_combout\ = ( \srl64[3][56]~4_combout\ & ( !\Mux16~0_combout\ & ( (!\Y_sra[31]~0_combout\) # (((!\srl64[3][48]~9_combout\ & !\B[3]~input_o\)) # (\B[4]~input_o\)) ) ) ) # ( !\srl64[3][56]~4_combout\ & ( !\Mux16~0_combout\ & ( 
-- (!\srl64[3][48]~9_combout\) # ((!\Y_sra[31]~0_combout\) # ((\B[3]~input_o\) # (\B[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111111011111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][48]~9_combout\,
	datab => \ALT_INV_Y_sra[31]~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_srl64[3][56]~4_combout\,
	dataf => \ALT_INV_Mux16~0_combout\,
	combout => \Y_sra[48]~7_combout\);

-- Location: MLABCELL_X44_Y35_N36
\A_left[48]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[48]~16_combout\ = ( \A[48]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \A_left[48]~16_combout\);

-- Location: MLABCELL_X44_Y35_N6
\sll64[2][48]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][48]~102_combout\ = ( \A_left[45]~13_combout\ & ( \B[0]~input_o\ & ( (\A_left[47]~15_combout\) # (\B[1]~input_o\) ) ) ) # ( !\A_left[45]~13_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A_left[47]~15_combout\) ) ) ) # ( 
-- \A_left[45]~13_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[48]~16_combout\))) # (\B[1]~input_o\ & (\A_left[46]~14_combout\)) ) ) ) # ( !\A_left[45]~13_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[48]~16_combout\))) # 
-- (\B[1]~input_o\ & (\A_left[46]~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[46]~14_combout\,
	datab => \ALT_INV_A_left[48]~16_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[47]~15_combout\,
	datae => \ALT_INV_A_left[45]~13_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][48]~102_combout\);

-- Location: LABCELL_X40_Y35_N24
\sll64[4][48]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][48]~103_combout\ = ( \sll64[2][48]~102_combout\ & ( \sll64[2][44]~94_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\sll64[2][40]~86_combout\)) # (\B[2]~input_o\ & ((\sll64[2][36]~78_combout\)))) ) ) ) # ( !\sll64[2][48]~102_combout\ & ( 
-- \sll64[2][44]~94_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\)) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\sll64[2][40]~86_combout\)) # (\B[2]~input_o\ & ((\sll64[2][36]~78_combout\))))) ) ) ) # ( \sll64[2][48]~102_combout\ & ( 
-- !\sll64[2][44]~94_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\)) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\sll64[2][40]~86_combout\)) # (\B[2]~input_o\ & ((\sll64[2][36]~78_combout\))))) ) ) ) # ( !\sll64[2][48]~102_combout\ & ( 
-- !\sll64[2][44]~94_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\sll64[2][40]~86_combout\)) # (\B[2]~input_o\ & ((\sll64[2][36]~78_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][40]~86_combout\,
	datad => \ALT_INV_sll64[2][36]~78_combout\,
	datae => \ALT_INV_sll64[2][48]~102_combout\,
	dataf => \ALT_INV_sll64[2][44]~94_combout\,
	combout => \sll64[4][48]~103_combout\);

-- Location: MLABCELL_X39_Y35_N36
\sll64[6][48]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][48]~104_combout\ = ( \shamt[5]~0_combout\ & ( \sll64[4][32]~71_combout\ & ( (!\B[4]~input_o\ & ((\sll64[4][16]~37_combout\))) # (\B[4]~input_o\ & (\sll64[4][0]~35_combout\)) ) ) ) # ( !\shamt[5]~0_combout\ & ( \sll64[4][32]~71_combout\ & ( 
-- (\sll64[4][48]~103_combout\) # (\B[4]~input_o\) ) ) ) # ( \shamt[5]~0_combout\ & ( !\sll64[4][32]~71_combout\ & ( (!\B[4]~input_o\ & ((\sll64[4][16]~37_combout\))) # (\B[4]~input_o\ & (\sll64[4][0]~35_combout\)) ) ) ) # ( !\shamt[5]~0_combout\ & ( 
-- !\sll64[4][32]~71_combout\ & ( (!\B[4]~input_o\ & \sll64[4][48]~103_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][0]~35_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_sll64[4][16]~37_combout\,
	datad => \ALT_INV_sll64[4][48]~103_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_sll64[4][32]~71_combout\,
	combout => \sll64[6][48]~104_combout\);

-- Location: MLABCELL_X39_Y35_N14
\Y_sll[48]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[48]~3_combout\ = ( \sll64[4][15]~34_combout\ & ( (!\ExtWord~input_o\ & (((\sll64[6][48]~104_combout\)))) # (\ExtWord~input_o\ & (((\B[4]~input_o\)) # (\sll64[4][31]~69_combout\))) ) ) # ( !\sll64[4][15]~34_combout\ & ( (!\ExtWord~input_o\ & 
-- (((\sll64[6][48]~104_combout\)))) # (\ExtWord~input_o\ & (\sll64[4][31]~69_combout\ & (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][31]~69_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_sll64[6][48]~104_combout\,
	dataf => \ALT_INV_sll64[4][15]~34_combout\,
	combout => \Y_sll[48]~3_combout\);

-- Location: LABCELL_X40_Y39_N0
\Y_srl[48]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[48]~5_combout\ = ( !\srl64[4][63]~136_combout\ & ( (\ExtWord~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_srl64[4][63]~136_combout\,
	combout => \Y_srl[48]~5_combout\);

-- Location: LABCELL_X40_Y39_N14
\Y_srl[48]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[48]~6_combout\ = ( \Y_srl[48]~5_combout\ & ( \srl64[3][48]~9_combout\ & ( \sll64[6][1]~1_combout\ ) ) ) # ( !\Y_srl[48]~5_combout\ & ( \srl64[3][48]~9_combout\ & ( (!\ExtWord~input_o\ & (\sll64[6][1]~1_combout\ & ((!\B[3]~input_o\) # 
-- (\srl64[3][56]~4_combout\)))) ) ) ) # ( \Y_srl[48]~5_combout\ & ( !\srl64[3][48]~9_combout\ & ( \sll64[6][1]~1_combout\ ) ) ) # ( !\Y_srl[48]~5_combout\ & ( !\srl64[3][48]~9_combout\ & ( (!\ExtWord~input_o\ & (\B[3]~input_o\ & (\srl64[3][56]~4_combout\ & 
-- \sll64[6][1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000001111111100000000100010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][56]~4_combout\,
	datad => \ALT_INV_sll64[6][1]~1_combout\,
	datae => \ALT_INV_Y_srl[48]~5_combout\,
	dataf => \ALT_INV_srl64[3][48]~9_combout\,
	combout => \Y_srl[48]~6_combout\);

-- Location: LABCELL_X40_Y39_N38
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \A[48]~input_o\ & ( \Y_srl[48]~6_combout\ & ( (!\ShiftFN[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & ((\Y_sll[48]~3_combout\))) # (\ShiftFN[1]~input_o\ & (!\Y_sra[48]~7_combout\))) ) ) ) # ( !\A[48]~input_o\ & ( \Y_srl[48]~6_combout\ & 
-- ( (!\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\Y_sll[48]~3_combout\))) # (\ShiftFN[1]~input_o\ & (!\Y_sra[48]~7_combout\)))) ) ) ) # ( \A[48]~input_o\ & ( !\Y_srl[48]~6_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\Y_sll[48]~3_combout\))) # (\ShiftFN[1]~input_o\ & (!\Y_sra[48]~7_combout\)))) ) ) ) # ( !\A[48]~input_o\ & ( !\Y_srl[48]~6_combout\ & ( 
-- (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\Y_sll[48]~3_combout\))) # (\ShiftFN[1]~input_o\ & (!\Y_sra[48]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000100101011110100010000000101111011101010111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Y_sra[48]~7_combout\,
	datac => \ALT_INV_Y_sll[48]~3_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_Y_srl[48]~6_combout\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X40_Y38_N32
\srl64[6][49]~149\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][49]~149_combout\ = ( \srl64[3][49]~72_combout\ & ( (\sll64[6][1]~1_combout\ & ((!\B[3]~input_o\) # (\srl64[3][57]~67_combout\))) ) ) # ( !\srl64[3][49]~72_combout\ & ( (\srl64[3][57]~67_combout\ & (\sll64[6][1]~1_combout\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][57]~67_combout\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][49]~72_combout\,
	combout => \srl64[6][49]~149_combout\);

-- Location: LABCELL_X40_Y38_N16
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \sra64[6][49]~9_combout\ & ( \srl64[6][49]~149_combout\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\))) ) ) ) # ( !\sra64[6][49]~9_combout\ & ( 
-- \srl64[6][49]~149_combout\ & ( (!\ShiftFN[0]~input_o\ & ((!\ExtWord~input_o\) # ((\Y_srl[63]~4_combout\)))) # (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & (\A[31]~input_o\))) ) ) ) # ( \sra64[6][49]~9_combout\ & ( !\srl64[6][49]~149_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & ((\Y_srl[63]~4_combout\)))) # (\ShiftFN[0]~input_o\ & ((!\ExtWord~input_o\) # ((\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][49]~9_combout\ & ( !\srl64[6][49]~149_combout\ & ( (\ExtWord~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_Y_srl[63]~4_combout\,
	datae => \ALT_INV_sra64[6][49]~9_combout\,
	dataf => \ALT_INV_srl64[6][49]~149_combout\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X42_Y36_N36
\A_left[49]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[49]~17_combout\ = ( \A[49]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \A_left[49]~17_combout\);

-- Location: MLABCELL_X44_Y35_N8
\sll64[2][49]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][49]~105_combout\ = ( \A_left[48]~16_combout\ & ( \A_left[49]~17_combout\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A_left[47]~15_combout\))) # (\B[0]~input_o\ & (\A_left[46]~14_combout\))) ) ) ) # ( !\A_left[48]~16_combout\ & ( 
-- \A_left[49]~17_combout\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A_left[47]~15_combout\)))) # (\B[0]~input_o\ & (\A_left[46]~14_combout\ & ((\B[1]~input_o\)))) ) ) ) # ( \A_left[48]~16_combout\ & ( !\A_left[49]~17_combout\ & ( (!\B[0]~input_o\ & 
-- (((\A_left[47]~15_combout\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A_left[46]~14_combout\))) ) ) ) # ( !\A_left[48]~16_combout\ & ( !\A_left[49]~17_combout\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A_left[47]~15_combout\))) # 
-- (\B[0]~input_o\ & (\A_left[46]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[46]~14_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_left[47]~15_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[48]~16_combout\,
	dataf => \ALT_INV_A_left[49]~17_combout\,
	combout => \sll64[2][49]~105_combout\);

-- Location: LABCELL_X45_Y36_N6
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \sll64[2][45]~96_combout\ & ( \sll64[2][37]~80_combout\ & ( ((!\B[3]~input_o\ & ((\sll64[2][49]~105_combout\))) # (\B[3]~input_o\ & (\sll64[2][41]~88_combout\))) # (\B[2]~input_o\) ) ) ) # ( !\sll64[2][45]~96_combout\ & ( 
-- \sll64[2][37]~80_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\sll64[2][49]~105_combout\))) # (\B[3]~input_o\ & (\sll64[2][41]~88_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( \sll64[2][45]~96_combout\ & ( 
-- !\sll64[2][37]~80_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\sll64[2][49]~105_combout\))) # (\B[3]~input_o\ & (\sll64[2][41]~88_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( !\sll64[2][45]~96_combout\ & ( 
-- !\sll64[2][37]~80_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\sll64[2][49]~105_combout\))) # (\B[3]~input_o\ & (\sll64[2][41]~88_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][41]~88_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][49]~105_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][45]~96_combout\,
	dataf => \ALT_INV_sll64[2][37]~80_combout\,
	combout => \Mux14~1_combout\);

-- Location: MLABCELL_X44_Y38_N26
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \shamt[5]~0_combout\ & ( \sll64[4][33]~73_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][17]~41_combout\)) # (\B[4]~input_o\ & ((\sll64[4][1]~39_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( \sll64[4][33]~73_combout\ & ( 
-- (\Mux14~1_combout\) # (\B[4]~input_o\) ) ) ) # ( \shamt[5]~0_combout\ & ( !\sll64[4][33]~73_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][17]~41_combout\)) # (\B[4]~input_o\ & ((\sll64[4][1]~39_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( 
-- !\sll64[4][33]~73_combout\ & ( (!\B[4]~input_o\ & \Mux14~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][17]~41_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Mux14~1_combout\,
	datad => \ALT_INV_sll64[4][1]~39_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_sll64[4][33]~73_combout\,
	combout => \Mux14~2_combout\);

-- Location: MLABCELL_X44_Y38_N8
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \Mux30~7_combout\ & ( \A[49]~input_o\ & ( (!\Mux30~8_combout\) # (\Y_sll[31]~0_combout\) ) ) ) # ( !\Mux30~7_combout\ & ( \A[49]~input_o\ & ( (!\Mux30~8_combout\ & (\Mux14~0_combout\)) # (\Mux30~8_combout\ & ((\Mux14~2_combout\))) ) 
-- ) ) # ( \Mux30~7_combout\ & ( !\A[49]~input_o\ & ( (\Mux30~8_combout\ & \Y_sll[31]~0_combout\) ) ) ) # ( !\Mux30~7_combout\ & ( !\A[49]~input_o\ & ( (!\Mux30~8_combout\ & (\Mux14~0_combout\)) # (\Mux30~8_combout\ & ((\Mux14~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~0_combout\,
	datab => \ALT_INV_Mux30~8_combout\,
	datac => \ALT_INV_Y_sll[31]~0_combout\,
	datad => \ALT_INV_Mux14~2_combout\,
	datae => \ALT_INV_Mux30~7_combout\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: MLABCELL_X39_Y38_N10
\srl64[6][50]~150\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][50]~150_combout\ = ( \srl64[3][58]~131_combout\ & ( (\sll64[6][1]~1_combout\ & ((\srl64[3][50]~90_combout\) # (\B[3]~input_o\))) ) ) # ( !\srl64[3][58]~131_combout\ & ( (\sll64[6][1]~1_combout\ & (!\B[3]~input_o\ & \srl64[3][50]~90_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][1]~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][50]~90_combout\,
	dataf => \ALT_INV_srl64[3][58]~131_combout\,
	combout => \srl64[6][50]~150_combout\);

-- Location: MLABCELL_X39_Y38_N34
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \sra64[6][50]~10_combout\ & ( \srl64[6][50]~150_combout\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][50]~10_combout\ & ( 
-- \srl64[6][50]~150_combout\ & ( (!\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\)) # (\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (((\A[31]~input_o\ & \ExtWord~input_o\)))) ) ) ) # ( \sra64[6][50]~10_combout\ & ( !\srl64[6][50]~150_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\ & ((\ExtWord~input_o\)))) # (\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\) # (\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][50]~10_combout\ & ( !\srl64[6][50]~150_combout\ & ( (\ExtWord~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[63]~4_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_sra64[6][50]~10_combout\,
	dataf => \ALT_INV_srl64[6][50]~150_combout\,
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X42_Y36_N38
\A_left[50]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[50]~18_combout\ = (!\ExtWord~input_o\ & \A[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[50]~input_o\,
	combout => \A_left[50]~18_combout\);

-- Location: MLABCELL_X44_Y35_N12
\sll64[2][50]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][50]~106_combout\ = ( \A_left[48]~16_combout\ & ( \A_left[47]~15_combout\ & ( ((!\B[0]~input_o\ & ((\A_left[50]~18_combout\))) # (\B[0]~input_o\ & (\A_left[49]~17_combout\))) # (\B[1]~input_o\) ) ) ) # ( !\A_left[48]~16_combout\ & ( 
-- \A_left[47]~15_combout\ & ( (!\B[0]~input_o\ & (((\A_left[50]~18_combout\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A_left[49]~17_combout\))) ) ) ) # ( \A_left[48]~16_combout\ & ( !\A_left[47]~15_combout\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\) # (\A_left[50]~18_combout\)))) # (\B[0]~input_o\ & (\A_left[49]~17_combout\ & ((!\B[1]~input_o\)))) ) ) ) # ( !\A_left[48]~16_combout\ & ( !\A_left[47]~15_combout\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A_left[50]~18_combout\))) 
-- # (\B[0]~input_o\ & (\A_left[49]~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[49]~17_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_left[50]~18_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[48]~16_combout\,
	dataf => \ALT_INV_A_left[47]~15_combout\,
	combout => \sll64[2][50]~106_combout\);

-- Location: MLABCELL_X42_Y35_N38
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \B[3]~input_o\ & ( \sll64[2][42]~90_combout\ & ( (!\B[2]~input_o\) # (\sll64[2][38]~82_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][42]~90_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][50]~106_combout\)) # (\B[2]~input_o\ & 
-- ((\sll64[2][46]~98_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][42]~90_combout\ & ( (\sll64[2][38]~82_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][42]~90_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][50]~106_combout\)) # 
-- (\B[2]~input_o\ & ((\sll64[2][46]~98_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][50]~106_combout\,
	datab => \ALT_INV_sll64[2][46]~98_combout\,
	datac => \ALT_INV_sll64[2][38]~82_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][42]~90_combout\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X42_Y35_N20
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \sll64[4][18]~43_combout\ & ( \Mux13~1_combout\ & ( (!\B[4]~input_o\) # ((!\shamt[5]~0_combout\ & ((\sll64[4][34]~75_combout\))) # (\shamt[5]~0_combout\ & (\sll64[4][2]~6_combout\))) ) ) ) # ( !\sll64[4][18]~43_combout\ & ( 
-- \Mux13~1_combout\ & ( (!\B[4]~input_o\ & (((!\shamt[5]~0_combout\)))) # (\B[4]~input_o\ & ((!\shamt[5]~0_combout\ & ((\sll64[4][34]~75_combout\))) # (\shamt[5]~0_combout\ & (\sll64[4][2]~6_combout\)))) ) ) ) # ( \sll64[4][18]~43_combout\ & ( 
-- !\Mux13~1_combout\ & ( (!\B[4]~input_o\ & (((\shamt[5]~0_combout\)))) # (\B[4]~input_o\ & ((!\shamt[5]~0_combout\ & ((\sll64[4][34]~75_combout\))) # (\shamt[5]~0_combout\ & (\sll64[4][2]~6_combout\)))) ) ) ) # ( !\sll64[4][18]~43_combout\ & ( 
-- !\Mux13~1_combout\ & ( (\B[4]~input_o\ & ((!\shamt[5]~0_combout\ & ((\sll64[4][34]~75_combout\))) # (\shamt[5]~0_combout\ & (\sll64[4][2]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~6_combout\,
	datab => \ALT_INV_sll64[4][34]~75_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	datae => \ALT_INV_sll64[4][18]~43_combout\,
	dataf => \ALT_INV_Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X42_Y35_N6
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \Y_sll[31]~0_combout\ & ( \Mux13~2_combout\ & ( ((!\Mux30~7_combout\ & ((\Mux13~0_combout\))) # (\Mux30~7_combout\ & (\A[50]~input_o\))) # (\Mux30~8_combout\) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( \Mux13~2_combout\ & ( 
-- (!\Mux30~8_combout\ & ((!\Mux30~7_combout\ & ((\Mux13~0_combout\))) # (\Mux30~7_combout\ & (\A[50]~input_o\)))) # (\Mux30~8_combout\ & (!\Mux30~7_combout\)) ) ) ) # ( \Y_sll[31]~0_combout\ & ( !\Mux13~2_combout\ & ( (!\Mux30~8_combout\ & 
-- ((!\Mux30~7_combout\ & ((\Mux13~0_combout\))) # (\Mux30~7_combout\ & (\A[50]~input_o\)))) # (\Mux30~8_combout\ & (\Mux30~7_combout\)) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Mux13~2_combout\ & ( (!\Mux30~8_combout\ & ((!\Mux30~7_combout\ & 
-- ((\Mux13~0_combout\))) # (\Mux30~7_combout\ & (\A[50]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~8_combout\,
	datab => \ALT_INV_Mux30~7_combout\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_Mux13~0_combout\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: MLABCELL_X37_Y40_N38
\srl64[6][51]~151\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][51]~151_combout\ = ( \sll64[6][1]~1_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][51]~97_combout\))) # (\B[3]~input_o\ & (!\srl64[3][59]~134_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][59]~134_combout\,
	datad => \ALT_INV_srl64[3][51]~97_combout\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \srl64[6][51]~151_combout\);

-- Location: MLABCELL_X37_Y40_N34
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \sra64[6][51]~12_combout\ & ( \srl64[6][51]~151_combout\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][51]~12_combout\ & ( 
-- \srl64[6][51]~151_combout\ & ( (!\ExtWord~input_o\ & (((!\ShiftFN[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) ) # ( \sra64[6][51]~12_combout\ & ( 
-- !\srl64[6][51]~151_combout\ & ( (!\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) ) # ( !\sra64[6][51]~12_combout\ & ( 
-- !\srl64[6][51]~151_combout\ & ( (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[63]~4_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_sra64[6][51]~12_combout\,
	dataf => \ALT_INV_srl64[6][51]~151_combout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X45_Y37_N36
\A_left[51]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[51]~19_combout\ = (!\ExtWord~input_o\ & \A[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	combout => \A_left[51]~19_combout\);

-- Location: MLABCELL_X44_Y35_N18
\sll64[2][51]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][51]~107_combout\ = ( \A_left[48]~16_combout\ & ( \A_left[50]~18_combout\ & ( ((!\B[1]~input_o\ & ((\A_left[51]~19_combout\))) # (\B[1]~input_o\ & (\A_left[49]~17_combout\))) # (\B[0]~input_o\) ) ) ) # ( !\A_left[48]~16_combout\ & ( 
-- \A_left[50]~18_combout\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A_left[51]~19_combout\))) # (\B[1]~input_o\ & (\A_left[49]~17_combout\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A_left[48]~16_combout\ & ( !\A_left[50]~18_combout\ & ( 
-- (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A_left[51]~19_combout\))) # (\B[1]~input_o\ & (\A_left[49]~17_combout\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A_left[48]~16_combout\ & ( !\A_left[50]~18_combout\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & ((\A_left[51]~19_combout\))) # (\B[1]~input_o\ & (\A_left[49]~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[49]~17_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[51]~19_combout\,
	datae => \ALT_INV_A_left[48]~16_combout\,
	dataf => \ALT_INV_A_left[50]~18_combout\,
	combout => \sll64[2][51]~107_combout\);

-- Location: LABCELL_X38_Y35_N24
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \sll64[2][51]~107_combout\ & ( \sll64[2][43]~92_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & (\sll64[2][47]~100_combout\)) # (\B[3]~input_o\ & ((\sll64[2][39]~84_combout\)))) ) ) ) # ( !\sll64[2][51]~107_combout\ & ( 
-- \sll64[2][43]~92_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & (\sll64[2][47]~100_combout\))) # (\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\sll64[2][39]~84_combout\)))) ) ) ) # ( \sll64[2][51]~107_combout\ & ( !\sll64[2][43]~92_combout\ & ( 
-- (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\sll64[2][47]~100_combout\)))) # (\B[3]~input_o\ & (\B[2]~input_o\ & ((\sll64[2][39]~84_combout\)))) ) ) ) # ( !\sll64[2][51]~107_combout\ & ( !\sll64[2][43]~92_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\sll64[2][47]~100_combout\)) # (\B[3]~input_o\ & ((\sll64[2][39]~84_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][47]~100_combout\,
	datad => \ALT_INV_sll64[2][39]~84_combout\,
	datae => \ALT_INV_sll64[2][51]~107_combout\,
	dataf => \ALT_INV_sll64[2][43]~92_combout\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X38_Y36_N20
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \B[4]~input_o\ & ( \shamt[5]~0_combout\ & ( \sll64[4][3]~8_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \shamt[5]~0_combout\ & ( \sll64[4][19]~45_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\shamt[5]~0_combout\ & ( \sll64[4][35]~77_combout\ ) ) 
-- ) # ( !\B[4]~input_o\ & ( !\shamt[5]~0_combout\ & ( \Mux12~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][3]~8_combout\,
	datab => \ALT_INV_sll64[4][19]~45_combout\,
	datac => \ALT_INV_Mux12~1_combout\,
	datad => \ALT_INV_sll64[4][35]~77_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X38_Y36_N6
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \Y_sll[31]~0_combout\ & ( \Mux12~2_combout\ & ( ((!\Mux30~7_combout\ & ((\Mux12~0_combout\))) # (\Mux30~7_combout\ & (\A[51]~input_o\))) # (\Mux30~8_combout\) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( \Mux12~2_combout\ & ( 
-- (!\Mux30~7_combout\ & (((\Mux30~8_combout\) # (\Mux12~0_combout\)))) # (\Mux30~7_combout\ & (\A[51]~input_o\ & ((!\Mux30~8_combout\)))) ) ) ) # ( \Y_sll[31]~0_combout\ & ( !\Mux12~2_combout\ & ( (!\Mux30~7_combout\ & (((\Mux12~0_combout\ & 
-- !\Mux30~8_combout\)))) # (\Mux30~7_combout\ & (((\Mux30~8_combout\)) # (\A[51]~input_o\))) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Mux12~2_combout\ & ( (!\Mux30~8_combout\ & ((!\Mux30~7_combout\ & ((\Mux12~0_combout\))) # (\Mux30~7_combout\ & 
-- (\A[51]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~7_combout\,
	datab => \ALT_INV_A[51]~input_o\,
	datac => \ALT_INV_Mux12~0_combout\,
	datad => \ALT_INV_Mux30~8_combout\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LABCELL_X45_Y37_N38
\A_left[52]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[52]~20_combout\ = (!\ExtWord~input_o\ & \A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	combout => \A_left[52]~20_combout\);

-- Location: LABCELL_X43_Y35_N2
\sll64[2][52]~108\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][52]~108_combout\ = ( \A_left[50]~18_combout\ & ( \A_left[49]~17_combout\ & ( ((!\B[0]~input_o\ & (\A_left[52]~20_combout\)) # (\B[0]~input_o\ & ((\A_left[51]~19_combout\)))) # (\B[1]~input_o\) ) ) ) # ( !\A_left[50]~18_combout\ & ( 
-- \A_left[49]~17_combout\ & ( (!\B[0]~input_o\ & (\A_left[52]~20_combout\ & (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((\A_left[51]~19_combout\) # (\B[1]~input_o\)))) ) ) ) # ( \A_left[50]~18_combout\ & ( !\A_left[49]~17_combout\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)) # (\A_left[52]~20_combout\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A_left[51]~19_combout\)))) ) ) ) # ( !\A_left[50]~18_combout\ & ( !\A_left[49]~17_combout\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A_left[52]~20_combout\)) # 
-- (\B[0]~input_o\ & ((\A_left[51]~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A_left[52]~20_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[51]~19_combout\,
	datae => \ALT_INV_A_left[50]~18_combout\,
	dataf => \ALT_INV_A_left[49]~17_combout\,
	combout => \sll64[2][52]~108_combout\);

-- Location: LABCELL_X40_Y35_N30
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \sll64[2][48]~102_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][44]~94_combout\))) # (\B[2]~input_o\ & (\sll64[2][40]~86_combout\)) ) ) ) # ( !\sll64[2][48]~102_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][44]~94_combout\))) # (\B[2]~input_o\ & (\sll64[2][40]~86_combout\)) ) ) ) # ( \sll64[2][48]~102_combout\ & ( !\B[3]~input_o\ & ( (\sll64[2][52]~108_combout\) # (\B[2]~input_o\) ) ) ) # ( !\sll64[2][48]~102_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \sll64[2][52]~108_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][40]~86_combout\,
	datab => \ALT_INV_sll64[2][44]~94_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][52]~108_combout\,
	datae => \ALT_INV_sll64[2][48]~102_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X37_Y36_N28
\Mux11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \B[4]~input_o\ & ( \sll64[4][20]~47_combout\ & ( (!\shamt[5]~0_combout\ & (\sll64[4][36]~79_combout\)) # (\shamt[5]~0_combout\ & ((\sll64[4][4]~11_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \sll64[4][20]~47_combout\ & ( 
-- (\shamt[5]~0_combout\) # (\Mux11~1_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\sll64[4][20]~47_combout\ & ( (!\shamt[5]~0_combout\ & (\sll64[4][36]~79_combout\)) # (\shamt[5]~0_combout\ & ((\sll64[4][4]~11_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\sll64[4][20]~47_combout\ & ( (\Mux11~1_combout\ & !\shamt[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~1_combout\,
	datab => \ALT_INV_sll64[4][36]~79_combout\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_sll64[4][4]~11_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][20]~47_combout\,
	combout => \Mux11~2_combout\);

-- Location: LABCELL_X35_Y38_N16
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \sra64[6][52]~14_combout\ & ( \srl64[6][52]~139_combout\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\))) ) ) ) # ( !\sra64[6][52]~14_combout\ & ( 
-- \srl64[6][52]~139_combout\ & ( (!\ExtWord~input_o\ & (((!\ShiftFN[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))) ) ) ) # ( \sra64[6][52]~14_combout\ & ( 
-- !\srl64[6][52]~139_combout\ & ( (!\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][52]~14_combout\ & ( 
-- !\srl64[6][52]~139_combout\ & ( (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y_srl[63]~4_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_sra64[6][52]~14_combout\,
	dataf => \ALT_INV_srl64[6][52]~139_combout\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X37_Y36_N34
\Mux11~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \Y_sll[31]~0_combout\ & ( \Mux30~7_combout\ & ( (\A[52]~input_o\) # (\Mux30~8_combout\) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( \Mux30~7_combout\ & ( (!\Mux30~8_combout\ & \A[52]~input_o\) ) ) ) # ( \Y_sll[31]~0_combout\ & ( 
-- !\Mux30~7_combout\ & ( (!\Mux30~8_combout\ & ((\Mux11~0_combout\))) # (\Mux30~8_combout\ & (\Mux11~2_combout\)) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Mux30~7_combout\ & ( (!\Mux30~8_combout\ & ((\Mux11~0_combout\))) # (\Mux30~8_combout\ & 
-- (\Mux11~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~2_combout\,
	datab => \ALT_INV_Mux30~8_combout\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_Mux11~0_combout\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Mux30~7_combout\,
	combout => \Mux11~3_combout\);

-- Location: LABCELL_X47_Y36_N0
\A_left[53]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[53]~21_combout\ = (!\ExtWord~input_o\ & \A[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	combout => \A_left[53]~21_combout\);

-- Location: LABCELL_X43_Y35_N26
\sll64[2][53]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][53]~109_combout\ = ( \A_left[50]~18_combout\ & ( \A_left[52]~20_combout\ & ( ((!\B[1]~input_o\ & (\A_left[53]~21_combout\)) # (\B[1]~input_o\ & ((\A_left[51]~19_combout\)))) # (\B[0]~input_o\) ) ) ) # ( !\A_left[50]~18_combout\ & ( 
-- \A_left[52]~20_combout\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[53]~21_combout\)) # (\B[1]~input_o\ & ((\A_left[51]~19_combout\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A_left[50]~18_combout\ & ( !\A_left[52]~20_combout\ & ( 
-- (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[53]~21_combout\)) # (\B[1]~input_o\ & ((\A_left[51]~19_combout\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A_left[50]~18_combout\ & ( !\A_left[52]~20_combout\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A_left[53]~21_combout\)) # (\B[1]~input_o\ & ((\A_left[51]~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A_left[53]~21_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[51]~19_combout\,
	datae => \ALT_INV_A_left[50]~18_combout\,
	dataf => \ALT_INV_A_left[52]~20_combout\,
	combout => \sll64[2][53]~109_combout\);

-- Location: LABCELL_X45_Y36_N10
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \sll64[2][45]~96_combout\ & ( \sll64[2][49]~105_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\sll64[2][53]~109_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\sll64[2][41]~88_combout\))) ) ) ) # ( 
-- !\sll64[2][45]~96_combout\ & ( \sll64[2][49]~105_combout\ & ( (!\B[2]~input_o\ & (((\sll64[2][53]~109_combout\ & !\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\sll64[2][41]~88_combout\))) ) ) ) # ( \sll64[2][45]~96_combout\ & ( 
-- !\sll64[2][49]~105_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\sll64[2][53]~109_combout\)))) # (\B[2]~input_o\ & (\sll64[2][41]~88_combout\ & ((\B[3]~input_o\)))) ) ) ) # ( !\sll64[2][45]~96_combout\ & ( !\sll64[2][49]~105_combout\ & ( 
-- (!\B[2]~input_o\ & (((\sll64[2][53]~109_combout\ & !\B[3]~input_o\)))) # (\B[2]~input_o\ & (\sll64[2][41]~88_combout\ & ((\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][41]~88_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][53]~109_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][45]~96_combout\,
	dataf => \ALT_INV_sll64[2][49]~105_combout\,
	combout => \Mux10~1_combout\);

-- Location: MLABCELL_X44_Y36_N18
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \shamt[5]~0_combout\ & ( \Mux10~1_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][21]~49_combout\)) # (\B[4]~input_o\ & ((\sll64[4][5]~14_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( \Mux10~1_combout\ & ( (!\B[4]~input_o\) # 
-- (\sll64[4][37]~81_combout\) ) ) ) # ( \shamt[5]~0_combout\ & ( !\Mux10~1_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][21]~49_combout\)) # (\B[4]~input_o\ & ((\sll64[4][5]~14_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( !\Mux10~1_combout\ & ( 
-- (\sll64[4][37]~81_combout\ & \B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][37]~81_combout\,
	datab => \ALT_INV_sll64[4][21]~49_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_sll64[4][5]~14_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X35_Y38_N18
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \sra64[6][53]~15_combout\ & ( \srl64[6][53]~140_combout\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\))) ) ) ) # ( !\sra64[6][53]~15_combout\ & ( 
-- \srl64[6][53]~140_combout\ & ( (!\ExtWord~input_o\ & (((!\ShiftFN[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))) ) ) ) # ( \sra64[6][53]~15_combout\ & ( 
-- !\srl64[6][53]~140_combout\ & ( (!\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][53]~15_combout\ & ( 
-- !\srl64[6][53]~140_combout\ & ( (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Y_srl[63]~4_combout\,
	datae => \ALT_INV_sra64[6][53]~15_combout\,
	dataf => \ALT_INV_srl64[6][53]~140_combout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X38_Y36_N28
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \Y_sll[31]~0_combout\ & ( \A[53]~input_o\ & ( ((!\Mux30~8_combout\ & ((\Mux10~0_combout\))) # (\Mux30~8_combout\ & (\Mux10~2_combout\))) # (\Mux30~7_combout\) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( \A[53]~input_o\ & ( 
-- (!\Mux30~7_combout\ & ((!\Mux30~8_combout\ & ((\Mux10~0_combout\))) # (\Mux30~8_combout\ & (\Mux10~2_combout\)))) # (\Mux30~7_combout\ & (((!\Mux30~8_combout\)))) ) ) ) # ( \Y_sll[31]~0_combout\ & ( !\A[53]~input_o\ & ( (!\Mux30~7_combout\ & 
-- ((!\Mux30~8_combout\ & ((\Mux10~0_combout\))) # (\Mux30~8_combout\ & (\Mux10~2_combout\)))) # (\Mux30~7_combout\ & (((\Mux30~8_combout\)))) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\A[53]~input_o\ & ( (!\Mux30~7_combout\ & ((!\Mux30~8_combout\ & 
-- ((\Mux10~0_combout\))) # (\Mux30~8_combout\ & (\Mux10~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~7_combout\,
	datab => \ALT_INV_Mux10~2_combout\,
	datac => \ALT_INV_Mux30~8_combout\,
	datad => \ALT_INV_Mux10~0_combout\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: MLABCELL_X39_Y38_N32
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \sra64[6][54]~17_combout\ & ( \srl64[6][54]~141_combout\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][54]~17_combout\ & ( 
-- \srl64[6][54]~141_combout\ & ( (!\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\)) # (\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\ & \A[31]~input_o\)))) ) ) ) # ( \sra64[6][54]~17_combout\ & ( !\srl64[6][54]~141_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\ & (\ExtWord~input_o\))) # (\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\) # (\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][54]~17_combout\ & ( !\srl64[6][54]~141_combout\ & ( (\ExtWord~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[63]~4_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_sra64[6][54]~17_combout\,
	dataf => \ALT_INV_srl64[6][54]~141_combout\,
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X42_Y35_N24
\A_left[54]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[54]~22_combout\ = ( \A[54]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \A_left[54]~22_combout\);

-- Location: LABCELL_X43_Y35_N10
\sll64[2][54]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][54]~110_combout\ = ( \B[1]~input_o\ & ( \A_left[54]~22_combout\ & ( (!\B[0]~input_o\ & (\A_left[52]~20_combout\)) # (\B[0]~input_o\ & ((\A_left[51]~19_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( \A_left[54]~22_combout\ & ( (!\B[0]~input_o\) # 
-- (\A_left[53]~21_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\A_left[54]~22_combout\ & ( (!\B[0]~input_o\ & (\A_left[52]~20_combout\)) # (\B[0]~input_o\ & ((\A_left[51]~19_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A_left[54]~22_combout\ & ( (\B[0]~input_o\ & 
-- \A_left[53]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A_left[52]~20_combout\,
	datac => \ALT_INV_A_left[53]~21_combout\,
	datad => \ALT_INV_A_left[51]~19_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A_left[54]~22_combout\,
	combout => \sll64[2][54]~110_combout\);

-- Location: MLABCELL_X42_Y35_N8
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \B[3]~input_o\ & ( \sll64[2][50]~106_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][46]~98_combout\)) # (\B[2]~input_o\ & ((\sll64[2][42]~90_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][50]~106_combout\ & ( 
-- (\sll64[2][54]~110_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][50]~106_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][46]~98_combout\)) # (\B[2]~input_o\ & ((\sll64[2][42]~90_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\sll64[2][50]~106_combout\ & ( (!\B[2]~input_o\ & \sll64[2][54]~110_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][46]~98_combout\,
	datac => \ALT_INV_sll64[2][42]~90_combout\,
	datad => \ALT_INV_sll64[2][54]~110_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][50]~106_combout\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X40_Y34_N10
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \shamt[5]~0_combout\ & ( \sll64[4][38]~83_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][22]~51_combout\)) # (\B[4]~input_o\ & ((\sll64[4][6]~16_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( \sll64[4][38]~83_combout\ & ( 
-- (\Mux9~1_combout\) # (\B[4]~input_o\) ) ) ) # ( \shamt[5]~0_combout\ & ( !\sll64[4][38]~83_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][22]~51_combout\)) # (\B[4]~input_o\ & ((\sll64[4][6]~16_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( 
-- !\sll64[4][38]~83_combout\ & ( (!\B[4]~input_o\ & \Mux9~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_sll64[4][22]~51_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_sll64[4][6]~16_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_sll64[4][38]~83_combout\,
	combout => \Mux9~2_combout\);

-- Location: LABCELL_X40_Y34_N32
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \Mux30~7_combout\ & ( \Y_sll[31]~0_combout\ & ( (\A[54]~input_o\) # (\Mux30~8_combout\) ) ) ) # ( !\Mux30~7_combout\ & ( \Y_sll[31]~0_combout\ & ( (!\Mux30~8_combout\ & (\Mux9~0_combout\)) # (\Mux30~8_combout\ & ((\Mux9~2_combout\))) 
-- ) ) ) # ( \Mux30~7_combout\ & ( !\Y_sll[31]~0_combout\ & ( (!\Mux30~8_combout\ & \A[54]~input_o\) ) ) ) # ( !\Mux30~7_combout\ & ( !\Y_sll[31]~0_combout\ & ( (!\Mux30~8_combout\ & (\Mux9~0_combout\)) # (\Mux30~8_combout\ & ((\Mux9~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~8_combout\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_Mux9~0_combout\,
	datad => \ALT_INV_Mux9~2_combout\,
	datae => \ALT_INV_Mux30~7_combout\,
	dataf => \ALT_INV_Y_sll[31]~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X37_Y39_N12
\srl64[6][56]~152\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][56]~152_combout\ = ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[6][56]~152_combout\);

-- Location: MLABCELL_X37_Y39_N18
\sra64[6][55]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][55]~25_combout\ = ( \A[31]~input_o\ & ( \A[63]~input_o\ & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\)))) ) ) ) # ( !\A[31]~input_o\ & ( \A[63]~input_o\ & ( ((!\B[4]~input_o\ & (!\B[3]~input_o\ & 
-- !\B[5]~input_o\))) # (\ExtWord~input_o\) ) ) ) # ( \A[31]~input_o\ & ( !\A[63]~input_o\ & ( (!\ExtWord~input_o\) # ((!\B[4]~input_o\ & !\B[3]~input_o\)) ) ) ) # ( !\A[31]~input_o\ & ( !\A[63]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111011001110110010110011001100111010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \sra64[6][55]~25_combout\);

-- Location: LABCELL_X40_Y40_N0
\sra64[6][55]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][55]~26_combout\ = ( \sra64[6][55]~25_combout\ & ( (!\srl64[3][55]~127_combout\) # (!\srl64[6][56]~152_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][55]~127_combout\,
	datab => \ALT_INV_srl64[6][56]~152_combout\,
	dataf => \ALT_INV_sra64[6][55]~25_combout\,
	combout => \sra64[6][55]~26_combout\);

-- Location: LABCELL_X40_Y40_N38
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \srl64[6][55]~143_combout\ & ( (!\ExtWord~input_o\ & ((!\sra64[6][55]~26_combout\))) # (\ExtWord~input_o\ & (\A[31]~input_o\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \srl64[6][55]~143_combout\ & ( 
-- (!\ExtWord~input_o\) # (\Y_srl[63]~4_combout\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\srl64[6][55]~143_combout\ & ( (!\ExtWord~input_o\ & ((!\sra64[6][55]~26_combout\))) # (\ExtWord~input_o\ & (\A[31]~input_o\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- !\srl64[6][55]~143_combout\ & ( (\Y_srl[63]~4_combout\ & \ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111100000101010111111111001100111111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_Y_srl[63]~4_combout\,
	datac => \ALT_INV_sra64[6][55]~26_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_srl64[6][55]~143_combout\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X44_Y37_N16
\A_left[55]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[55]~23_combout\ = (!\ExtWord~input_o\ & \A[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	combout => \A_left[55]~23_combout\);

-- Location: LABCELL_X43_Y35_N14
\sll64[2][55]~111\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][55]~111_combout\ = ( \A_left[55]~23_combout\ & ( \A_left[53]~21_combout\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A_left[54]~22_combout\)) # (\B[1]~input_o\ & ((\A_left[52]~20_combout\)))) ) ) ) # ( !\A_left[55]~23_combout\ & ( 
-- \A_left[53]~21_combout\ & ( (!\B[1]~input_o\ & (\A_left[54]~22_combout\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A_left[52]~20_combout\)))) ) ) ) # ( \A_left[55]~23_combout\ & ( !\A_left[53]~21_combout\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A_left[54]~22_combout\))) # (\B[1]~input_o\ & (((\A_left[52]~20_combout\ & \B[0]~input_o\)))) ) ) ) # ( !\A_left[55]~23_combout\ & ( !\A_left[53]~21_combout\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[54]~22_combout\)) # 
-- (\B[1]~input_o\ & ((\A_left[52]~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[54]~22_combout\,
	datab => \ALT_INV_A_left[52]~20_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A_left[55]~23_combout\,
	dataf => \ALT_INV_A_left[53]~21_combout\,
	combout => \sll64[2][55]~111_combout\);

-- Location: LABCELL_X38_Y35_N30
\Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \sll64[2][51]~107_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\sll64[2][47]~100_combout\)) # (\B[2]~input_o\ & ((\sll64[2][43]~92_combout\))) ) ) ) # ( !\sll64[2][51]~107_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\sll64[2][47]~100_combout\)) # (\B[2]~input_o\ & ((\sll64[2][43]~92_combout\))) ) ) ) # ( \sll64[2][51]~107_combout\ & ( !\B[3]~input_o\ & ( (\sll64[2][55]~111_combout\) # (\B[2]~input_o\) ) ) ) # ( !\sll64[2][51]~107_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \sll64[2][55]~111_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][47]~100_combout\,
	datab => \ALT_INV_sll64[2][43]~92_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][55]~111_combout\,
	datae => \ALT_INV_sll64[2][51]~107_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X40_Y36_N14
\Mux8~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \shamt[5]~0_combout\ & ( \sll64[4][39]~85_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][23]~53_combout\)) # (\B[4]~input_o\ & ((\sll64[4][7]~18_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( \sll64[4][39]~85_combout\ & ( 
-- (\Mux8~1_combout\) # (\B[4]~input_o\) ) ) ) # ( \shamt[5]~0_combout\ & ( !\sll64[4][39]~85_combout\ & ( (!\B[4]~input_o\ & (\sll64[4][23]~53_combout\)) # (\B[4]~input_o\ & ((\sll64[4][7]~18_combout\))) ) ) ) # ( !\shamt[5]~0_combout\ & ( 
-- !\sll64[4][39]~85_combout\ & ( (!\B[4]~input_o\ & \Mux8~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_sll64[4][23]~53_combout\,
	datac => \ALT_INV_sll64[4][7]~18_combout\,
	datad => \ALT_INV_Mux8~1_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_sll64[4][39]~85_combout\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X40_Y36_N38
\Mux8~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \Mux30~7_combout\ & ( \Y_sll[31]~0_combout\ & ( (\Mux30~8_combout\) # (\A[55]~input_o\) ) ) ) # ( !\Mux30~7_combout\ & ( \Y_sll[31]~0_combout\ & ( (!\Mux30~8_combout\ & (\Mux8~0_combout\)) # (\Mux30~8_combout\ & ((\Mux8~2_combout\))) 
-- ) ) ) # ( \Mux30~7_combout\ & ( !\Y_sll[31]~0_combout\ & ( (\A[55]~input_o\ & !\Mux30~8_combout\) ) ) ) # ( !\Mux30~7_combout\ & ( !\Y_sll[31]~0_combout\ & ( (!\Mux30~8_combout\ & (\Mux8~0_combout\)) # (\Mux30~8_combout\ & ((\Mux8~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_Mux8~2_combout\,
	datad => \ALT_INV_Mux30~8_combout\,
	datae => \ALT_INV_Mux30~7_combout\,
	dataf => \ALT_INV_Y_sll[31]~0_combout\,
	combout => \Mux8~3_combout\);

-- Location: LABCELL_X40_Y40_N20
\Mux7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( !\ExtWord~input_o\ & ( (!\sra64[6][55]~25_combout\ & ((((\srl64[3][56]~4_combout\ & \srl64[6][56]~152_combout\)) # (\ShiftFN[0]~input_o\)))) # (\sra64[6][55]~25_combout\ & (((\srl64[3][56]~4_combout\ & 
-- ((\srl64[6][56]~152_combout\)))))) ) ) # ( \ExtWord~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & (((\A[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000010101010001100110000111100001111101011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[6][55]~25_combout\,
	datab => \ALT_INV_Y_srl[63]~4_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_srl64[6][56]~152_combout\,
	datag => \ALT_INV_srl64[3][56]~4_combout\,
	combout => \Mux7~3_combout\);

-- Location: MLABCELL_X44_Y37_N6
\A_left[56]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[56]~24_combout\ = ( \A[56]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \A_left[56]~24_combout\);

-- Location: LABCELL_X43_Y35_N16
\sll64[2][56]~112\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][56]~112_combout\ = ( \A_left[55]~23_combout\ & ( \A_left[53]~21_combout\ & ( ((!\B[1]~input_o\ & ((\A_left[56]~24_combout\))) # (\B[1]~input_o\ & (\A_left[54]~22_combout\))) # (\B[0]~input_o\) ) ) ) # ( !\A_left[55]~23_combout\ & ( 
-- \A_left[53]~21_combout\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A_left[56]~24_combout\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A_left[54]~22_combout\))) ) ) ) # ( \A_left[55]~23_combout\ & ( !\A_left[53]~21_combout\ & ( (!\B[1]~input_o\ & 
-- (((\A_left[56]~24_combout\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A_left[54]~22_combout\ & (!\B[0]~input_o\))) ) ) ) # ( !\A_left[55]~23_combout\ & ( !\A_left[53]~21_combout\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A_left[56]~24_combout\))) # 
-- (\B[1]~input_o\ & (\A_left[54]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[54]~22_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_left[56]~24_combout\,
	datae => \ALT_INV_A_left[55]~23_combout\,
	dataf => \ALT_INV_A_left[53]~21_combout\,
	combout => \sll64[2][56]~112_combout\);

-- Location: LABCELL_X40_Y35_N12
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \sll64[2][48]~102_combout\ & ( \sll64[2][56]~112_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & (\sll64[2][52]~108_combout\)) # (\B[3]~input_o\ & ((\sll64[2][44]~94_combout\)))) ) ) ) # ( !\sll64[2][48]~102_combout\ & ( 
-- \sll64[2][56]~112_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\sll64[2][52]~108_combout\)))) # (\B[3]~input_o\ & (\B[2]~input_o\ & ((\sll64[2][44]~94_combout\)))) ) ) ) # ( \sll64[2][48]~102_combout\ & ( !\sll64[2][56]~112_combout\ & ( 
-- (!\B[3]~input_o\ & (\B[2]~input_o\ & (\sll64[2][52]~108_combout\))) # (\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\sll64[2][44]~94_combout\)))) ) ) ) # ( !\sll64[2][48]~102_combout\ & ( !\sll64[2][56]~112_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\sll64[2][52]~108_combout\)) # (\B[3]~input_o\ & ((\sll64[2][44]~94_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][52]~108_combout\,
	datad => \ALT_INV_sll64[2][44]~94_combout\,
	datae => \ALT_INV_sll64[2][48]~102_combout\,
	dataf => \ALT_INV_sll64[2][56]~112_combout\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X42_Y39_N34
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Mux7~0_combout\ & ( \B[4]~input_o\ & ( (!\shamt[5]~0_combout\ & (\sll64[4][40]~87_combout\)) # (\shamt[5]~0_combout\ & ((\sll64[4][8]~20_combout\))) ) ) ) # ( !\Mux7~0_combout\ & ( \B[4]~input_o\ & ( (!\shamt[5]~0_combout\ & 
-- (\sll64[4][40]~87_combout\)) # (\shamt[5]~0_combout\ & ((\sll64[4][8]~20_combout\))) ) ) ) # ( \Mux7~0_combout\ & ( !\B[4]~input_o\ & ( (!\shamt[5]~0_combout\) # (\sll64[4][24]~55_combout\) ) ) ) # ( !\Mux7~0_combout\ & ( !\B[4]~input_o\ & ( 
-- (\sll64[4][24]~55_combout\ & \shamt[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][24]~55_combout\,
	datab => \ALT_INV_sll64[4][40]~87_combout\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_sll64[4][8]~20_combout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X42_Y39_N38
\Mux7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \Mux30~8_combout\ & ( \Mux30~7_combout\ & ( \Y_sll[31]~0_combout\ ) ) ) # ( !\Mux30~8_combout\ & ( \Mux30~7_combout\ & ( \A[56]~input_o\ ) ) ) # ( \Mux30~8_combout\ & ( !\Mux30~7_combout\ & ( \Mux7~1_combout\ ) ) ) # ( 
-- !\Mux30~8_combout\ & ( !\Mux30~7_combout\ & ( \Mux7~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_Mux7~3_combout\,
	datac => \ALT_INV_Mux7~1_combout\,
	datad => \ALT_INV_Y_sll[31]~0_combout\,
	datae => \ALT_INV_Mux30~8_combout\,
	dataf => \ALT_INV_Mux30~7_combout\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X40_Y38_N0
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( !\ShiftFN[0]~input_o\ & ( ((!\ExtWord~input_o\ & (((\srl64[3][57]~67_combout\ & \srl64[6][56]~152_combout\)))) # (\ExtWord~input_o\ & (\Y_srl[63]~4_combout\))) ) ) # ( \ShiftFN[0]~input_o\ & ( ((!\ExtWord~input_o\ & 
-- (((\sra64[6][57]~18_combout\)))) # (\ExtWord~input_o\ & (\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011000011110101010100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_Y_srl[63]~4_combout\,
	datac => \ALT_INV_sra64[6][57]~18_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_srl64[6][56]~152_combout\,
	datag => \ALT_INV_srl64[3][57]~67_combout\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X37_Y37_N6
\A_left[57]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[57]~25_combout\ = ( !\ExtWord~input_o\ & ( \A[57]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \A_left[57]~25_combout\);

-- Location: LABCELL_X43_Y35_N22
\sll64[2][57]~113\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][57]~113_combout\ = ( \A_left[55]~23_combout\ & ( \A_left[56]~24_combout\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A_left[57]~25_combout\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A_left[54]~22_combout\))) ) ) ) # ( 
-- !\A_left[55]~23_combout\ & ( \A_left[56]~24_combout\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A_left[57]~25_combout\)))) # (\B[1]~input_o\ & (\A_left[54]~22_combout\ & ((\B[0]~input_o\)))) ) ) ) # ( \A_left[55]~23_combout\ & ( 
-- !\A_left[56]~24_combout\ & ( (!\B[1]~input_o\ & (((\A_left[57]~25_combout\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A_left[54]~22_combout\))) ) ) ) # ( !\A_left[55]~23_combout\ & ( !\A_left[56]~24_combout\ & ( (!\B[1]~input_o\ & 
-- (((\A_left[57]~25_combout\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A_left[54]~22_combout\ & ((\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[54]~22_combout\,
	datab => \ALT_INV_A_left[57]~25_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A_left[55]~23_combout\,
	dataf => \ALT_INV_A_left[56]~24_combout\,
	combout => \sll64[2][57]~113_combout\);

-- Location: LABCELL_X45_Y36_N12
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \sll64[2][45]~96_combout\ & ( \sll64[2][49]~105_combout\ & ( ((!\B[2]~input_o\ & (\sll64[2][57]~113_combout\)) # (\B[2]~input_o\ & ((\sll64[2][53]~109_combout\)))) # (\B[3]~input_o\) ) ) ) # ( !\sll64[2][45]~96_combout\ & ( 
-- \sll64[2][49]~105_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][57]~113_combout\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\ & \sll64[2][53]~109_combout\)))) ) ) ) # ( \sll64[2][45]~96_combout\ & ( !\sll64[2][49]~105_combout\ & ( 
-- (!\B[2]~input_o\ & (\sll64[2][57]~113_combout\ & (!\B[3]~input_o\))) # (\B[2]~input_o\ & (((\sll64[2][53]~109_combout\) # (\B[3]~input_o\)))) ) ) ) # ( !\sll64[2][45]~96_combout\ & ( !\sll64[2][49]~105_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & 
-- (\sll64[2][57]~113_combout\)) # (\B[2]~input_o\ & ((\sll64[2][53]~109_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][57]~113_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][53]~109_combout\,
	datae => \ALT_INV_sll64[2][45]~96_combout\,
	dataf => \ALT_INV_sll64[2][49]~105_combout\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X44_Y38_N14
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \sll64[4][25]~57_combout\ & ( \sll64[4][41]~89_combout\ & ( (!\B[4]~input_o\ & (((\shamt[5]~0_combout\)) # (\Mux6~0_combout\))) # (\B[4]~input_o\ & (((!\shamt[5]~0_combout\) # (\sll64[4][9]~22_combout\)))) ) ) ) # ( 
-- !\sll64[4][25]~57_combout\ & ( \sll64[4][41]~89_combout\ & ( (!\B[4]~input_o\ & (\Mux6~0_combout\ & (!\shamt[5]~0_combout\))) # (\B[4]~input_o\ & (((!\shamt[5]~0_combout\) # (\sll64[4][9]~22_combout\)))) ) ) ) # ( \sll64[4][25]~57_combout\ & ( 
-- !\sll64[4][41]~89_combout\ & ( (!\B[4]~input_o\ & (((\shamt[5]~0_combout\)) # (\Mux6~0_combout\))) # (\B[4]~input_o\ & (((\shamt[5]~0_combout\ & \sll64[4][9]~22_combout\)))) ) ) ) # ( !\sll64[4][25]~57_combout\ & ( !\sll64[4][41]~89_combout\ & ( 
-- (!\B[4]~input_o\ & (\Mux6~0_combout\ & (!\shamt[5]~0_combout\))) # (\B[4]~input_o\ & (((\shamt[5]~0_combout\ & \sll64[4][9]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_sll64[4][9]~22_combout\,
	datae => \ALT_INV_sll64[4][25]~57_combout\,
	dataf => \ALT_INV_sll64[4][41]~89_combout\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X44_Y38_N18
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \Mux30~7_combout\ & ( \Mux6~1_combout\ & ( (!\Mux30~8_combout\ & (\A[57]~input_o\)) # (\Mux30~8_combout\ & ((\Y_sll[31]~0_combout\))) ) ) ) # ( !\Mux30~7_combout\ & ( \Mux6~1_combout\ & ( (\Mux30~8_combout\) # (\Mux6~3_combout\) ) ) ) 
-- # ( \Mux30~7_combout\ & ( !\Mux6~1_combout\ & ( (!\Mux30~8_combout\ & (\A[57]~input_o\)) # (\Mux30~8_combout\ & ((\Y_sll[31]~0_combout\))) ) ) ) # ( !\Mux30~7_combout\ & ( !\Mux6~1_combout\ & ( (\Mux6~3_combout\ & !\Mux30~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~3_combout\,
	datab => \ALT_INV_Mux30~8_combout\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_Y_sll[31]~0_combout\,
	datae => \ALT_INV_Mux30~7_combout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: MLABCELL_X37_Y37_N14
\A_left[58]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[58]~26_combout\ = ( !\ExtWord~input_o\ & ( \A[58]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \A_left[58]~26_combout\);

-- Location: LABCELL_X43_Y35_N6
\sll64[2][58]~114\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][58]~114_combout\ = ( \A_left[55]~23_combout\ & ( \A_left[56]~24_combout\ & ( ((!\B[0]~input_o\ & ((\A_left[58]~26_combout\))) # (\B[0]~input_o\ & (\A_left[57]~25_combout\))) # (\B[1]~input_o\) ) ) ) # ( !\A_left[55]~23_combout\ & ( 
-- \A_left[56]~24_combout\ & ( (!\B[0]~input_o\ & (((\A_left[58]~26_combout\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A_left[57]~25_combout\ & (!\B[1]~input_o\))) ) ) ) # ( \A_left[55]~23_combout\ & ( !\A_left[56]~24_combout\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\ & \A_left[58]~26_combout\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A_left[57]~25_combout\))) ) ) ) # ( !\A_left[55]~23_combout\ & ( !\A_left[56]~24_combout\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A_left[58]~26_combout\))) 
-- # (\B[0]~input_o\ & (\A_left[57]~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A_left[57]~25_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[58]~26_combout\,
	datae => \ALT_INV_A_left[55]~23_combout\,
	dataf => \ALT_INV_A_left[56]~24_combout\,
	combout => \sll64[2][58]~114_combout\);

-- Location: MLABCELL_X42_Y35_N12
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \B[3]~input_o\ & ( \sll64[2][54]~110_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][50]~106_combout\)) # (\B[2]~input_o\ & ((\sll64[2][46]~98_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][54]~110_combout\ & ( (\B[2]~input_o\) # 
-- (\sll64[2][58]~114_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][54]~110_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][50]~106_combout\)) # (\B[2]~input_o\ & ((\sll64[2][46]~98_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][54]~110_combout\ & ( 
-- (\sll64[2][58]~114_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][50]~106_combout\,
	datab => \ALT_INV_sll64[2][58]~114_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][46]~98_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][54]~110_combout\,
	combout => \Mux5~1_combout\);

-- Location: MLABCELL_X37_Y37_N34
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \B[4]~input_o\ & ( \sll64[4][42]~91_combout\ & ( (!\shamt[5]~0_combout\) # (\sll64[4][10]~24_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \sll64[4][42]~91_combout\ & ( (!\shamt[5]~0_combout\ & (\Mux5~1_combout\)) # (\shamt[5]~0_combout\ & 
-- ((\sll64[4][26]~59_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\sll64[4][42]~91_combout\ & ( (\sll64[4][10]~24_combout\ & \shamt[5]~0_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\sll64[4][42]~91_combout\ & ( (!\shamt[5]~0_combout\ & (\Mux5~1_combout\)) # 
-- (\shamt[5]~0_combout\ & ((\sll64[4][26]~59_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~1_combout\,
	datab => \ALT_INV_sll64[4][10]~24_combout\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_sll64[4][26]~59_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][42]~91_combout\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X35_Y37_N18
\srl64[6][58]~153\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][58]~153_combout\ = ( \B[2]~input_o\ & ( \srl64[1][58]~2_combout\ & ( (\srl64[1][62]~3_combout\ & (!\B[1]~input_o\ & \srl64[6][56]~152_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][58]~2_combout\ & ( (\srl64[6][56]~152_combout\ & 
-- ((!\B[1]~input_o\) # (\srl64[1][60]~1_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][58]~2_combout\ & ( (\srl64[1][62]~3_combout\ & (!\B[1]~input_o\ & \srl64[6][56]~152_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][58]~2_combout\ & ( 
-- (\B[1]~input_o\ & (\srl64[1][60]~1_combout\ & \srl64[6][56]~152_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000100010000000000110011110000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][62]~3_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][60]~1_combout\,
	datad => \ALT_INV_srl64[6][56]~152_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][58]~2_combout\,
	combout => \srl64[6][58]~153_combout\);

-- Location: LABCELL_X40_Y38_N18
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \sra64[6][58]~19_combout\ & ( \srl64[6][58]~153_combout\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][58]~19_combout\ & ( 
-- \srl64[6][58]~153_combout\ & ( (!\ShiftFN[0]~input_o\ & ((!\ExtWord~input_o\) # ((\Y_srl[63]~4_combout\)))) # (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & ((\A[31]~input_o\)))) ) ) ) # ( \sra64[6][58]~19_combout\ & ( !\srl64[6][58]~153_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & (\Y_srl[63]~4_combout\))) # (\ShiftFN[0]~input_o\ & ((!\ExtWord~input_o\) # ((\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][58]~19_combout\ & ( !\srl64[6][58]~153_combout\ & ( (\ExtWord~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y_srl[63]~4_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_sra64[6][58]~19_combout\,
	dataf => \ALT_INV_srl64[6][58]~153_combout\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X37_Y37_N36
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \A[58]~input_o\ & ( \Mux5~0_combout\ & ( (!\Mux30~8_combout\) # ((!\Mux30~7_combout\ & (\Mux5~2_combout\)) # (\Mux30~7_combout\ & ((\Y_sll[31]~0_combout\)))) ) ) ) # ( !\A[58]~input_o\ & ( \Mux5~0_combout\ & ( (!\Mux30~8_combout\ & 
-- (((!\Mux30~7_combout\)))) # (\Mux30~8_combout\ & ((!\Mux30~7_combout\ & (\Mux5~2_combout\)) # (\Mux30~7_combout\ & ((\Y_sll[31]~0_combout\))))) ) ) ) # ( \A[58]~input_o\ & ( !\Mux5~0_combout\ & ( (!\Mux30~8_combout\ & (((\Mux30~7_combout\)))) # 
-- (\Mux30~8_combout\ & ((!\Mux30~7_combout\ & (\Mux5~2_combout\)) # (\Mux30~7_combout\ & ((\Y_sll[31]~0_combout\))))) ) ) ) # ( !\A[58]~input_o\ & ( !\Mux5~0_combout\ & ( (\Mux30~8_combout\ & ((!\Mux30~7_combout\ & (\Mux5~2_combout\)) # (\Mux30~7_combout\ & 
-- ((\Y_sll[31]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~8_combout\,
	datab => \ALT_INV_Mux5~2_combout\,
	datac => \ALT_INV_Y_sll[31]~0_combout\,
	datad => \ALT_INV_Mux30~7_combout\,
	datae => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X40_Y37_N14
\A_left[59]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[59]~27_combout\ = ( \A[59]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \A_left[59]~27_combout\);

-- Location: LABCELL_X43_Y35_N28
\sll64[2][59]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][59]~115_combout\ = ( \A_left[59]~27_combout\ & ( \A_left[56]~24_combout\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A_left[57]~25_combout\))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A_left[58]~26_combout\)))) ) ) ) # ( 
-- !\A_left[59]~27_combout\ & ( \A_left[56]~24_combout\ & ( (!\B[0]~input_o\ & (\A_left[57]~25_combout\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A_left[58]~26_combout\)))) ) ) ) # ( \A_left[59]~27_combout\ & ( 
-- !\A_left[56]~24_combout\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A_left[57]~25_combout\))) # (\B[0]~input_o\ & (((\A_left[58]~26_combout\ & !\B[1]~input_o\)))) ) ) ) # ( !\A_left[59]~27_combout\ & ( !\A_left[56]~24_combout\ & ( (!\B[0]~input_o\ & 
-- (\A_left[57]~25_combout\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A_left[58]~26_combout\ & !\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A_left[57]~25_combout\,
	datac => \ALT_INV_A_left[58]~26_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[59]~27_combout\,
	dataf => \ALT_INV_A_left[56]~24_combout\,
	combout => \sll64[2][59]~115_combout\);

-- Location: LABCELL_X38_Y35_N32
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \sll64[2][51]~107_combout\ & ( \sll64[2][55]~111_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][59]~115_combout\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][47]~100_combout\)))) ) ) ) # ( 
-- !\sll64[2][51]~107_combout\ & ( \sll64[2][55]~111_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][59]~115_combout\ & ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][47]~100_combout\)))) ) ) ) # ( \sll64[2][51]~107_combout\ & ( 
-- !\sll64[2][55]~111_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][59]~115_combout\))) # (\B[2]~input_o\ & (((\sll64[2][47]~100_combout\ & \B[3]~input_o\)))) ) ) ) # ( !\sll64[2][51]~107_combout\ & ( !\sll64[2][55]~111_combout\ & ( 
-- (!\B[2]~input_o\ & (\sll64[2][59]~115_combout\ & ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((\sll64[2][47]~100_combout\ & \B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][59]~115_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][47]~100_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][51]~107_combout\,
	dataf => \ALT_INV_sll64[2][55]~111_combout\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X38_Y36_N14
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \B[4]~input_o\ & ( \sll64[4][43]~93_combout\ & ( (!\shamt[5]~0_combout\) # (\sll64[4][11]~26_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \sll64[4][43]~93_combout\ & ( (!\shamt[5]~0_combout\ & (\Mux4~1_combout\)) # (\shamt[5]~0_combout\ & 
-- ((\sll64[4][27]~61_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\sll64[4][43]~93_combout\ & ( (\shamt[5]~0_combout\ & \sll64[4][11]~26_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\sll64[4][43]~93_combout\ & ( (!\shamt[5]~0_combout\ & (\Mux4~1_combout\)) # 
-- (\shamt[5]~0_combout\ & ((\sll64[4][27]~61_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_sll64[4][11]~26_combout\,
	datac => \ALT_INV_Mux4~1_combout\,
	datad => \ALT_INV_sll64[4][27]~61_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][43]~93_combout\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X37_Y40_N18
\srl64[6][59]~154\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][59]~154_combout\ = ( \srl64[3][59]~133_combout\ & ( \srl64[6][56]~152_combout\ ) ) # ( !\srl64[3][59]~133_combout\ & ( \srl64[6][56]~152_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\srl64[1][59]~65_combout\)) # (\B[1]~input_o\ & 
-- ((\srl64[1][61]~63_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][59]~65_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][61]~63_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[3][59]~133_combout\,
	dataf => \ALT_INV_srl64[6][56]~152_combout\,
	combout => \srl64[6][59]~154_combout\);

-- Location: MLABCELL_X37_Y40_N32
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \sra64[6][59]~20_combout\ & ( \srl64[6][59]~154_combout\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\)))) ) ) ) # ( !\sra64[6][59]~20_combout\ & ( 
-- \srl64[6][59]~154_combout\ & ( (!\ExtWord~input_o\ & (((!\ShiftFN[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) ) # ( \sra64[6][59]~20_combout\ & ( 
-- !\srl64[6][59]~154_combout\ & ( (!\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\)))) # (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) ) # ( !\sra64[6][59]~20_combout\ & ( 
-- !\srl64[6][59]~154_combout\ & ( (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Y_srl[63]~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[63]~4_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_sra64[6][59]~20_combout\,
	dataf => \ALT_INV_srl64[6][59]~154_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X38_Y36_N38
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \Y_sll[31]~0_combout\ & ( \Mux4~0_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux30~8_combout\) # (\Mux4~2_combout\)))) # (\Mux30~7_combout\ & (((\Mux30~8_combout\)) # (\A[59]~input_o\))) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( 
-- \Mux4~0_combout\ & ( (!\Mux30~7_combout\ & (((!\Mux30~8_combout\) # (\Mux4~2_combout\)))) # (\Mux30~7_combout\ & (\A[59]~input_o\ & ((!\Mux30~8_combout\)))) ) ) ) # ( \Y_sll[31]~0_combout\ & ( !\Mux4~0_combout\ & ( (!\Mux30~7_combout\ & 
-- (((\Mux4~2_combout\ & \Mux30~8_combout\)))) # (\Mux30~7_combout\ & (((\Mux30~8_combout\)) # (\A[59]~input_o\))) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Mux4~0_combout\ & ( (!\Mux30~7_combout\ & (((\Mux4~2_combout\ & \Mux30~8_combout\)))) # 
-- (\Mux30~7_combout\ & (\A[59]~input_o\ & ((!\Mux30~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~7_combout\,
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_Mux4~2_combout\,
	datad => \ALT_INV_Mux30~8_combout\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~3_combout\);

-- Location: LABCELL_X38_Y39_N34
\srl64[6][60]~155\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[6][60]~155_combout\ = ( \B[1]~input_o\ & ( (\sll64[4][2]~4_combout\ & (\srl64[1][62]~3_combout\ & \sll64[6][1]~1_combout\)) ) ) # ( !\B[1]~input_o\ & ( (\sll64[4][2]~4_combout\ & (\srl64[1][60]~1_combout\ & \sll64[6][1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][2]~4_combout\,
	datab => \ALT_INV_srl64[1][62]~3_combout\,
	datac => \ALT_INV_srl64[1][60]~1_combout\,
	datad => \ALT_INV_sll64[6][1]~1_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[6][60]~155_combout\);

-- Location: LABCELL_X38_Y39_N20
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( !\ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (((\srl64[6][60]~155_combout\)))) # (\ExtWord~input_o\ & ((((\Y_srl[63]~4_combout\))))) ) ) # ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & ((((\sra64[6][60]~22_combout\)) # 
-- (\sra64[6][49]~21_combout\)))) # (\ExtWord~input_o\ & (\A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000110111011101101011111010111110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_sra64[6][49]~21_combout\,
	datad => \ALT_INV_sra64[6][60]~22_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Y_srl[63]~4_combout\,
	datag => \ALT_INV_srl64[6][60]~155_combout\,
	combout => \Mux3~4_combout\);

-- Location: MLABCELL_X39_Y39_N6
\A_left[60]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[60]~28_combout\ = ( \A[60]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \A_left[60]~28_combout\);

-- Location: LABCELL_X43_Y35_N34
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \A_left[60]~28_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[59]~27_combout\)) # (\B[1]~input_o\ & ((\A_left[57]~25_combout\))) ) ) ) # ( !\A_left[60]~28_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A_left[59]~27_combout\)) # (\B[1]~input_o\ & ((\A_left[57]~25_combout\))) ) ) ) # ( \A_left[60]~28_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A_left[58]~26_combout\) ) ) ) # ( !\A_left[60]~28_combout\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ 
-- & \A_left[58]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[59]~27_combout\,
	datab => \ALT_INV_A_left[57]~25_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[58]~26_combout\,
	datae => \ALT_INV_A_left[60]~28_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X40_Y35_N36
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \sll64[2][48]~102_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\sll64[2][56]~112_combout\) ) ) ) # ( !\sll64[2][48]~102_combout\ & ( \B[2]~input_o\ & ( (\sll64[2][56]~112_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \sll64[2][48]~102_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Mux3~0_combout\))) # (\B[3]~input_o\ & (\sll64[2][52]~108_combout\)) ) ) ) # ( !\sll64[2][48]~102_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Mux3~0_combout\))) # 
-- (\B[3]~input_o\ & (\sll64[2][52]~108_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][52]~108_combout\,
	datab => \ALT_INV_sll64[2][56]~112_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][48]~102_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X39_Y39_N32
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \sll64[4][44]~95_combout\ & ( \Mux3~1_combout\ & ( (!\shamt[5]~0_combout\) # ((!\B[4]~input_o\ & ((\sll64[4][28]~63_combout\))) # (\B[4]~input_o\ & (\sll64[4][12]~28_combout\))) ) ) ) # ( !\sll64[4][44]~95_combout\ & ( 
-- \Mux3~1_combout\ & ( (!\shamt[5]~0_combout\ & (((!\B[4]~input_o\)))) # (\shamt[5]~0_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][28]~63_combout\))) # (\B[4]~input_o\ & (\sll64[4][12]~28_combout\)))) ) ) ) # ( \sll64[4][44]~95_combout\ & ( !\Mux3~1_combout\ 
-- & ( (!\shamt[5]~0_combout\ & (((\B[4]~input_o\)))) # (\shamt[5]~0_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][28]~63_combout\))) # (\B[4]~input_o\ & (\sll64[4][12]~28_combout\)))) ) ) ) # ( !\sll64[4][44]~95_combout\ & ( !\Mux3~1_combout\ & ( 
-- (\shamt[5]~0_combout\ & ((!\B[4]~input_o\ & ((\sll64[4][28]~63_combout\))) # (\B[4]~input_o\ & (\sll64[4][12]~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][12]~28_combout\,
	datab => \ALT_INV_sll64[4][28]~63_combout\,
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_sll64[4][44]~95_combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X39_Y39_N16
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \Mux30~8_combout\ & ( \Mux3~2_combout\ & ( (!\Mux30~7_combout\) # (\Y_sll[31]~0_combout\) ) ) ) # ( !\Mux30~8_combout\ & ( \Mux3~2_combout\ & ( (!\Mux30~7_combout\ & (\Mux3~4_combout\)) # (\Mux30~7_combout\ & ((\A[60]~input_o\))) ) ) 
-- ) # ( \Mux30~8_combout\ & ( !\Mux3~2_combout\ & ( (\Y_sll[31]~0_combout\ & \Mux30~7_combout\) ) ) ) # ( !\Mux30~8_combout\ & ( !\Mux3~2_combout\ & ( (!\Mux30~7_combout\ & (\Mux3~4_combout\)) # (\Mux30~7_combout\ & ((\A[60]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~4_combout\,
	datab => \ALT_INV_Y_sll[31]~0_combout\,
	datac => \ALT_INV_Mux30~7_combout\,
	datad => \ALT_INV_A[60]~input_o\,
	datae => \ALT_INV_Mux30~8_combout\,
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: MLABCELL_X39_Y40_N38
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \A[31]~input_o\ & ( \Y_srl[63]~4_combout\ & ( ((!\ShiftFN[0]~input_o\ & (\srl64[6][61]~145_combout\)) # (\ShiftFN[0]~input_o\ & ((\sra64[6][61]~23_combout\)))) # (\ExtWord~input_o\) ) ) ) # ( !\A[31]~input_o\ & ( \Y_srl[63]~4_combout\ 
-- & ( (!\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)) # (\srl64[6][61]~145_combout\))) # (\ShiftFN[0]~input_o\ & (((\sra64[6][61]~23_combout\ & !\ExtWord~input_o\)))) ) ) ) # ( \A[31]~input_o\ & ( !\Y_srl[63]~4_combout\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\srl64[6][61]~145_combout\ & ((!\ExtWord~input_o\)))) # (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\) # (\sra64[6][61]~23_combout\)))) ) ) ) # ( !\A[31]~input_o\ & ( !\Y_srl[63]~4_combout\ & ( (!\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- (\srl64[6][61]~145_combout\)) # (\ShiftFN[0]~input_o\ & ((\sra64[6][61]~23_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[6][61]~145_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_sra64[6][61]~23_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_Y_srl[63]~4_combout\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X42_Y37_N38
\A_left[61]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[61]~29_combout\ = ( \A[61]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \A_left[61]~29_combout\);

-- Location: LABCELL_X43_Y35_N38
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \A_left[60]~28_combout\ & ( \A_left[58]~26_combout\ & ( ((!\B[1]~input_o\ & ((\A_left[61]~29_combout\))) # (\B[1]~input_o\ & (\A_left[59]~27_combout\))) # (\B[0]~input_o\) ) ) ) # ( !\A_left[60]~28_combout\ & ( \A_left[58]~26_combout\ 
-- & ( (!\B[1]~input_o\ & (((\A_left[61]~29_combout\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A_left[59]~27_combout\))) ) ) ) # ( \A_left[60]~28_combout\ & ( !\A_left[58]~26_combout\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # 
-- (\A_left[61]~29_combout\)))) # (\B[1]~input_o\ & (\A_left[59]~27_combout\ & ((!\B[0]~input_o\)))) ) ) ) # ( !\A_left[60]~28_combout\ & ( !\A_left[58]~26_combout\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A_left[61]~29_combout\))) # (\B[1]~input_o\ & 
-- (\A_left[59]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[59]~27_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[61]~29_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A_left[60]~28_combout\,
	dataf => \ALT_INV_A_left[58]~26_combout\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X45_Y36_N16
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \B[3]~input_o\ & ( \sll64[2][49]~105_combout\ & ( (\sll64[2][53]~109_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][49]~105_combout\ & ( (!\B[2]~input_o\ & (\Mux2~1_combout\)) # (\B[2]~input_o\ & 
-- ((\sll64[2][57]~113_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][49]~105_combout\ & ( (!\B[2]~input_o\ & \sll64[2][53]~109_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][49]~105_combout\ & ( (!\B[2]~input_o\ & (\Mux2~1_combout\)) # 
-- (\B[2]~input_o\ & ((\sll64[2][57]~113_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000001100110001000111010001110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~1_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][57]~113_combout\,
	datad => \ALT_INV_sll64[2][53]~109_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][49]~105_combout\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X43_Y36_N16
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \sll64[4][29]~65_combout\ & ( \sll64[4][13]~30_combout\ & ( ((!\B[4]~input_o\ & (\Mux2~2_combout\)) # (\B[4]~input_o\ & ((\sll64[4][45]~97_combout\)))) # (\shamt[5]~0_combout\) ) ) ) # ( !\sll64[4][29]~65_combout\ & ( 
-- \sll64[4][13]~30_combout\ & ( (!\shamt[5]~0_combout\ & ((!\B[4]~input_o\ & (\Mux2~2_combout\)) # (\B[4]~input_o\ & ((\sll64[4][45]~97_combout\))))) # (\shamt[5]~0_combout\ & (((\B[4]~input_o\)))) ) ) ) # ( \sll64[4][29]~65_combout\ & ( 
-- !\sll64[4][13]~30_combout\ & ( (!\shamt[5]~0_combout\ & ((!\B[4]~input_o\ & (\Mux2~2_combout\)) # (\B[4]~input_o\ & ((\sll64[4][45]~97_combout\))))) # (\shamt[5]~0_combout\ & (((!\B[4]~input_o\)))) ) ) ) # ( !\sll64[4][29]~65_combout\ & ( 
-- !\sll64[4][13]~30_combout\ & ( (!\shamt[5]~0_combout\ & ((!\B[4]~input_o\ & (\Mux2~2_combout\)) # (\B[4]~input_o\ & ((\sll64[4][45]~97_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[5]~0_combout\,
	datab => \ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_sll64[4][45]~97_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_sll64[4][29]~65_combout\,
	dataf => \ALT_INV_sll64[4][13]~30_combout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X37_Y36_N18
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \Y_sll[31]~0_combout\ & ( \Mux30~7_combout\ & ( (\A[61]~input_o\) # (\Mux30~8_combout\) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( \Mux30~7_combout\ & ( (!\Mux30~8_combout\ & \A[61]~input_o\) ) ) ) # ( \Y_sll[31]~0_combout\ & ( 
-- !\Mux30~7_combout\ & ( (!\Mux30~8_combout\ & (\Mux2~0_combout\)) # (\Mux30~8_combout\ & ((\Mux2~3_combout\))) ) ) ) # ( !\Y_sll[31]~0_combout\ & ( !\Mux30~7_combout\ & ( (!\Mux30~8_combout\ & (\Mux2~0_combout\)) # (\Mux30~8_combout\ & 
-- ((\Mux2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_Mux30~8_combout\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_Y_sll[31]~0_combout\,
	dataf => \ALT_INV_Mux30~7_combout\,
	combout => \Mux2~4_combout\);

-- Location: MLABCELL_X42_Y37_N10
\Y_sra[62]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[62]~8_combout\ = ( \A[63]~input_o\ & ( (!\ExtWord~input_o\ & (((!\sll64[6][1]~1_combout\) # (\sra64[4][62]~24_combout\)))) # (\ExtWord~input_o\ & (\A[31]~input_o\)) ) ) # ( !\A[63]~input_o\ & ( (!\ExtWord~input_o\ & (((\sra64[4][62]~24_combout\ & 
-- \sll64[6][1]~1_combout\)))) # (\ExtWord~input_o\ & (\A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111011101000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_sra64[4][62]~24_combout\,
	datad => \ALT_INV_sll64[6][1]~1_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Y_sra[62]~8_combout\);

-- Location: MLABCELL_X42_Y37_N6
\sll64[2][62]~116\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][62]~116_combout\ = ( \A_left[60]~28_combout\ & ( \A[62]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A_left[61]~29_combout\)) # (\B[1]~input_o\ & ((\A_left[59]~27_combout\)))) ) ) ) # ( !\A_left[60]~28_combout\ & ( \A[62]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[61]~29_combout\)) # (\B[1]~input_o\ & ((\A_left[59]~27_combout\))))) ) ) ) # ( \A_left[60]~28_combout\ & ( !\A[62]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[61]~29_combout\)) # (\B[1]~input_o\ & ((\A_left[59]~27_combout\))))) ) ) ) # ( !\A_left[60]~28_combout\ & ( !\A[62]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A_left[61]~29_combout\)) # (\B[1]~input_o\ & ((\A_left[59]~27_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[61]~29_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[59]~27_combout\,
	datae => \ALT_INV_A_left[60]~28_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \sll64[2][62]~116_combout\);

-- Location: MLABCELL_X42_Y35_N18
\sll64[4][62]~117\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][62]~117_combout\ = ( \B[3]~input_o\ & ( \sll64[2][54]~110_combout\ & ( (!\B[2]~input_o\) # (\sll64[2][50]~106_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][54]~110_combout\ & ( (!\B[2]~input_o\ & ((\sll64[2][62]~116_combout\))) # 
-- (\B[2]~input_o\ & (\sll64[2][58]~114_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][54]~110_combout\ & ( (\sll64[2][50]~106_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][54]~110_combout\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][62]~116_combout\))) # (\B[2]~input_o\ & (\sll64[2][58]~114_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][50]~106_combout\,
	datab => \ALT_INV_sll64[2][58]~114_combout\,
	datac => \ALT_INV_sll64[2][62]~116_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][54]~110_combout\,
	combout => \sll64[4][62]~117_combout\);

-- Location: LABCELL_X40_Y34_N38
\sll64[6][62]~118\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][62]~118_combout\ = ( \shamt[5]~0_combout\ & ( \sll64[4][30]~67_combout\ & ( (!\B[4]~input_o\) # (\sll64[4][14]~32_combout\) ) ) ) # ( !\shamt[5]~0_combout\ & ( \sll64[4][30]~67_combout\ & ( (!\B[4]~input_o\ & ((\sll64[4][62]~117_combout\))) # 
-- (\B[4]~input_o\ & (\sll64[4][46]~99_combout\)) ) ) ) # ( \shamt[5]~0_combout\ & ( !\sll64[4][30]~67_combout\ & ( (\B[4]~input_o\ & \sll64[4][14]~32_combout\) ) ) ) # ( !\shamt[5]~0_combout\ & ( !\sll64[4][30]~67_combout\ & ( (!\B[4]~input_o\ & 
-- ((\sll64[4][62]~117_combout\))) # (\B[4]~input_o\ & (\sll64[4][46]~99_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_sll64[4][14]~32_combout\,
	datac => \ALT_INV_sll64[4][46]~99_combout\,
	datad => \ALT_INV_sll64[4][62]~117_combout\,
	datae => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_sll64[4][30]~67_combout\,
	combout => \sll64[6][62]~118_combout\);

-- Location: MLABCELL_X39_Y35_N4
\Y_sll[62]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[62]~4_combout\ = ( \ExtWord~input_o\ & ( (!\B[4]~input_o\ & ((\sll64[4][31]~69_combout\))) # (\B[4]~input_o\ & (\sll64[4][15]~34_combout\)) ) ) # ( !\ExtWord~input_o\ & ( \sll64[6][62]~118_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][15]~34_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_sll64[6][62]~118_combout\,
	datad => \ALT_INV_sll64[4][31]~69_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y_sll[62]~4_combout\);

-- Location: MLABCELL_X42_Y37_N8
\Y_srl[62]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[62]~7_combout\ = ( \sll64[6][1]~2_combout\ & ( (!\ExtWord~input_o\ & (((\srl64[1][62]~3_combout\)))) # (\ExtWord~input_o\ & (\A[31]~input_o\ & ((!\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011101000011000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_srl64[1][62]~3_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_sll64[6][1]~2_combout\,
	combout => \Y_srl[62]~7_combout\);

-- Location: MLABCELL_X42_Y37_N34
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Y_srl[62]~7_combout\ & ( \A[62]~input_o\ & ( (!\ShiftFN[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & ((\Y_sll[62]~4_combout\))) # (\ShiftFN[1]~input_o\ & (\Y_sra[62]~8_combout\))) ) ) ) # ( !\Y_srl[62]~7_combout\ & ( \A[62]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Y_sll[62]~4_combout\)))) # (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\Y_sra[62]~8_combout\))) ) ) ) # ( \Y_srl[62]~7_combout\ & ( !\A[62]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & ((\Y_sll[62]~4_combout\)))) # (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Y_sra[62]~8_combout\)))) ) ) ) # ( !\Y_srl[62]~7_combout\ & ( !\A[62]~input_o\ & ( (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & 
-- ((\Y_sll[62]~4_combout\))) # (\ShiftFN[1]~input_o\ & (\Y_sra[62]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y_sra[62]~8_combout\,
	datad => \ALT_INV_Y_sll[62]~4_combout\,
	datae => \ALT_INV_Y_srl[62]~7_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X42_Y37_N18
\sll64[2][63]~119\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][63]~119_combout\ = ( \A_left[60]~28_combout\ & ( \A[62]~input_o\ & ( ((!\B[1]~input_o\ & (\A[63]~input_o\)) # (\B[1]~input_o\ & ((\A_left[61]~29_combout\)))) # (\B[0]~input_o\) ) ) ) # ( !\A_left[60]~28_combout\ & ( \A[62]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[63]~input_o\)) # (\B[1]~input_o\ & ((\A_left[61]~29_combout\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A_left[60]~28_combout\ & ( !\A[62]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A[63]~input_o\)) # (\B[1]~input_o\ & ((\A_left[61]~29_combout\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A_left[60]~28_combout\ & ( !\A[62]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[63]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A_left[61]~29_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[61]~29_combout\,
	datae => \ALT_INV_A_left[60]~28_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \sll64[2][63]~119_combout\);

-- Location: LABCELL_X38_Y35_N18
\sll64[4][63]~120\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][63]~120_combout\ = ( \sll64[2][63]~119_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][55]~111_combout\))) # (\B[2]~input_o\ & (\sll64[2][51]~107_combout\)) ) ) ) # ( !\sll64[2][63]~119_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & ((\sll64[2][55]~111_combout\))) # (\B[2]~input_o\ & (\sll64[2][51]~107_combout\)) ) ) ) # ( \sll64[2][63]~119_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][59]~115_combout\) ) ) ) # ( !\sll64[2][63]~119_combout\ & ( 
-- !\B[3]~input_o\ & ( (\sll64[2][59]~115_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][59]~115_combout\,
	datab => \ALT_INV_sll64[2][51]~107_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][55]~111_combout\,
	datae => \ALT_INV_sll64[2][63]~119_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][63]~120_combout\);

-- Location: MLABCELL_X39_Y35_N0
\Y_sll[63]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[63]~5_combout\ = ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & ((!\ExtWord~input_o\ & (((\sll64[4][63]~120_combout\)))) # (\ExtWord~input_o\ & (\sll64[4][31]~69_combout\)))) # (\B[5]~input_o\ & (((\sll64[4][31]~69_combout\)))) ) ) # ( \B[4]~input_o\ & ( 
-- (!\B[5]~input_o\ & ((!\ExtWord~input_o\ & (((\sll64[4][47]~101_combout\)))) # (\ExtWord~input_o\ & (\sll64[4][15]~34_combout\)))) # (\B[5]~input_o\ & (((\sll64[4][15]~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000011100000111000001111000111110001111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_sll64[4][15]~34_combout\,
	datad => \ALT_INV_sll64[4][47]~101_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][63]~120_combout\,
	datag => \ALT_INV_sll64[4][31]~69_combout\,
	combout => \Y_sll[63]~5_combout\);

-- Location: MLABCELL_X39_Y38_N36
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \sra64[0][63]~0_combout\ & ( \Y_srl[63]~1_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\A[63]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Y_sll[63]~5_combout\))) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\sra64[0][63]~0_combout\ & ( 
-- \Y_srl[63]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\A[63]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Y_sll[63]~5_combout\)))) ) ) ) # ( \sra64[0][63]~0_combout\ & ( !\Y_srl[63]~1_combout\ & ( (!\ShiftFN[0]~input_o\ & 
-- (((!\ShiftFN[1]~input_o\ & \A[63]~input_o\)))) # (\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)) # (\Y_sll[63]~5_combout\))) ) ) ) # ( !\sra64[0][63]~0_combout\ & ( !\Y_srl[63]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- ((\A[63]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Y_sll[63]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sll[63]~5_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_sra64[0][63]~0_combout\,
	dataf => \ALT_INV_Y_srl[63]~1_combout\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X59_Y9_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X15_Y0_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X21_Y56_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X13_Y0_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X29_Y0_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X45_Y0_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X23_Y56_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X47_Y0_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X9_Y0_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X59_Y15_N63
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y4_N63
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X3_Y56_N94
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X14_Y56_N32
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X19_Y56_N63
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X41_Y0_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X15_Y0_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X14_Y56_N63
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X19_Y56_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X45_Y0_N94
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X19_Y56_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X37_Y0_N32
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X53_Y56_N32
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X17_Y56_N63
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X55_Y0_N1
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X25_Y0_N94
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X59_Y7_N94
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X9_Y0_N63
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X14_Y56_N1
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X7_Y0_N63
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X25_Y56_N1
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X54_Y0_N63
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X3_Y0_N63
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X3_Y56_N63
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X59_Y4_N94
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X25_Y0_N32
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X55_Y56_N1
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X16_Y0_N32
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X7_Y0_N94
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X22_Y0_N63
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X43_Y0_N63
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X19_Y0_N32
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X18_Y0_N94
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X29_Y0_N32
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X17_Y56_N94
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X10_Y56_N94
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X59_Y13_N63
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
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


