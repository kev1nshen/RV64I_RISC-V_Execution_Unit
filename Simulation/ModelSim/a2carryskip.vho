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

-- DATE "03/21/2026 18:10:18"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	S : BUFFER std_logic_vector(63 DOWNTO 0);
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|cout~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|cout~1_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|cout~1_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|cout~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|cout~1_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|cout~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|cout~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|cout~1_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|cout~1_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|cout~1_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|cout~1_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|cout~1_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|prop[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|tmp~combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|prop[0]~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|prop[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|cout~0_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|prop[0]~0_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|prop[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|tmp~combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|prop[0]~0_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:0:fa_i|s~combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:1:fa_i|s~combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:2:fa_i|s~combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|prop[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|cout~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|ALT_INV_prop[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|ALT_INV_prop[0]~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|ALT_INV_prop[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:12:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:11:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:10:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:9:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:8:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:blk_i|gen_fa:1:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:3:fa_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|ALT_INV_prop[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:15:blk_i|ALT_INV_prop[0]~0_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|ALT_INV_prop[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_blocks:14:blk_i|ALT_INV_prop[0]~0_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|ALT_INV_tmp~combout\ : std_logic;
SIGNAL \gen_blocks:13:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ : std_logic;

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
\gen_blocks:13:blk_i|ALT_INV_prop[3]~1_combout\ <= NOT \gen_blocks:13:blk_i|prop[3]~1_combout\;
\gen_blocks:13:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:12:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:12:blk_i|cout~1_combout\;
\gen_blocks:13:blk_i|ALT_INV_prop[0]~0_combout\ <= NOT \gen_blocks:13:blk_i|prop[0]~0_combout\;
\gen_blocks:12:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:12:blk_i|cout~0_combout\;
\gen_blocks:12:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:12:blk_i|tmp~combout\;
\gen_blocks:12:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:12:blk_i|tmp~0_combout\;
\gen_blocks:12:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:12:blk_i|ALT_INV_prop[3]~0_combout\ <= NOT \gen_blocks:12:blk_i|prop[3]~0_combout\;
\gen_blocks:12:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:11:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:11:blk_i|cout~1_combout\;
\gen_blocks:11:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:11:blk_i|cout~0_combout\;
\gen_blocks:11:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:11:blk_i|tmp~combout\;
\gen_blocks:11:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:11:blk_i|tmp~0_combout\;
\gen_blocks:11:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:11:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:10:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:10:blk_i|cout~1_combout\;
\gen_blocks:10:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:10:blk_i|cout~0_combout\;
\gen_blocks:10:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:10:blk_i|tmp~combout\;
\gen_blocks:10:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:10:blk_i|tmp~0_combout\;
\gen_blocks:10:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:10:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:9:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:9:blk_i|cout~1_combout\;
\gen_blocks:9:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:9:blk_i|cout~0_combout\;
\gen_blocks:9:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:9:blk_i|tmp~combout\;
\gen_blocks:9:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:9:blk_i|tmp~0_combout\;
\gen_blocks:9:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:9:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:8:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:8:blk_i|cout~1_combout\;
\gen_blocks:8:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:8:blk_i|cout~0_combout\;
\gen_blocks:8:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:8:blk_i|tmp~combout\;
\gen_blocks:8:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:8:blk_i|tmp~0_combout\;
\gen_blocks:8:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:8:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:7:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:7:blk_i|cout~1_combout\;
\gen_blocks:7:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:7:blk_i|cout~0_combout\;
\gen_blocks:7:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:7:blk_i|tmp~combout\;
\gen_blocks:7:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:7:blk_i|tmp~0_combout\;
\gen_blocks:7:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:7:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:6:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:6:blk_i|cout~1_combout\;
\gen_blocks:6:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:6:blk_i|cout~0_combout\;
\gen_blocks:6:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:6:blk_i|tmp~combout\;
\gen_blocks:6:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:6:blk_i|tmp~0_combout\;
\gen_blocks:6:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:6:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:5:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:5:blk_i|cout~1_combout\;
\gen_blocks:5:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:5:blk_i|cout~0_combout\;
\gen_blocks:5:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:5:blk_i|tmp~combout\;
\gen_blocks:5:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:5:blk_i|tmp~0_combout\;
\gen_blocks:5:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:5:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:4:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:4:blk_i|cout~1_combout\;
\gen_blocks:4:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:4:blk_i|cout~0_combout\;
\gen_blocks:4:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:4:blk_i|tmp~combout\;
\gen_blocks:4:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:4:blk_i|tmp~0_combout\;
\gen_blocks:4:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:4:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:3:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:3:blk_i|cout~1_combout\;
\gen_blocks:3:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:3:blk_i|cout~0_combout\;
\gen_blocks:3:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:3:blk_i|tmp~combout\;
\gen_blocks:3:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:3:blk_i|tmp~0_combout\;
\gen_blocks:3:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:3:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:2:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:2:blk_i|cout~1_combout\;
\gen_blocks:2:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:2:blk_i|cout~0_combout\;
\gen_blocks:2:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:2:blk_i|tmp~combout\;
\gen_blocks:2:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:2:blk_i|tmp~0_combout\;
\gen_blocks:2:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:2:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:1:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:1:blk_i|cout~1_combout\;
\gen_blocks:1:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:1:blk_i|cout~0_combout\;
\gen_blocks:1:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:1:blk_i|tmp~combout\;
\gen_blocks:1:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:1:blk_i|tmp~0_combout\;
\gen_blocks:1:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:1:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:0:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:0:blk_i|cout~1_combout\;
\gen_blocks:0:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:0:blk_i|cout~0_combout\;
\gen_blocks:0:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:0:blk_i|tmp~0_combout\;
\gen_blocks:0:blk_i|gen_fa:1:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\gen_blocks:15:blk_i|ALT_INV_tmp~0_combout\ <= NOT \gen_blocks:15:blk_i|tmp~0_combout\;
\gen_blocks:15:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:15:blk_i|gen_fa:3:fa_i|ALT_INV_s~combout\ <= NOT \gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\;
\gen_blocks:15:blk_i|ALT_INV_prop[3]~1_combout\ <= NOT \gen_blocks:15:blk_i|prop[3]~1_combout\;
\gen_blocks:15:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:14:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:14:blk_i|cout~1_combout\;
\gen_blocks:15:blk_i|ALT_INV_prop[0]~0_combout\ <= NOT \gen_blocks:15:blk_i|prop[0]~0_combout\;
\gen_blocks:14:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:14:blk_i|cout~0_combout\;
\gen_blocks:14:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:14:blk_i|tmp~combout\;
\gen_blocks:14:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\;
\gen_blocks:14:blk_i|ALT_INV_prop[3]~1_combout\ <= NOT \gen_blocks:14:blk_i|prop[3]~1_combout\;
\gen_blocks:14:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\;
\gen_blocks:13:blk_i|ALT_INV_cout~1_combout\ <= NOT \gen_blocks:13:blk_i|cout~1_combout\;
\gen_blocks:14:blk_i|ALT_INV_prop[0]~0_combout\ <= NOT \gen_blocks:14:blk_i|prop[0]~0_combout\;
\gen_blocks:13:blk_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:13:blk_i|cout~0_combout\;
\gen_blocks:13:blk_i|ALT_INV_tmp~combout\ <= NOT \gen_blocks:13:blk_i|tmp~combout\;
\gen_blocks:13:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\ <= NOT \gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\;

-- Location: IOOBUF_X28_Y56_N36
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X36_Y56_N98
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X38_Y56_N98
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X38_Y56_N2
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X46_Y56_N98
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X40_Y56_N5
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X49_Y56_N2
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X41_Y0_N5
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X39_Y0_N67
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X39_Y0_N98
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X55_Y56_N67
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X53_Y56_N98
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X56_Y56_N64
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X51_Y56_N67
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X53_Y56_N67
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X59_Y49_N98
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X59_Y39_N98
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X59_Y39_N5
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y48_N36
\S[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:8:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\S[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:8:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X59_Y51_N5
\S[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:8:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X59_Y46_N2
\S[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:8:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X59_Y7_N36
\S[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:9:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X55_Y0_N5
\S[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:9:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X59_Y10_N2
\S[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:9:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X59_Y7_N2
\S[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:9:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X59_Y13_N67
\S[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:10:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X59_Y12_N2
\S[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:10:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:10:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X59_Y16_N2
\S[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:10:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X59_Y15_N67
\S[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:11:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X59_Y15_N98
\S[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:11:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X59_Y15_N5
\S[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:11:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X59_Y19_N2
\S[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:11:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X59_Y22_N2
\S[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:12:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X59_Y7_N67
\S[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:12:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\S[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:12:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\S[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:12:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X59_Y34_N98
\S[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:13:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X59_Y36_N67
\S[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:13:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X59_Y36_N36
\S[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:13:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X59_Y37_N98
\S[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:13:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X59_Y34_N36
\S[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:14:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
\S[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:14:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X59_Y31_N36
\S[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:14:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X59_Y23_N36
\S[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:14:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\S[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:15:blk_i|gen_fa:0:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X59_Y26_N67
\S[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:15:blk_i|gen_fa:1:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X59_Y19_N36
\S[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:15:blk_i|gen_fa:2:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X59_Y30_N98
\S[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X59_Y26_N33
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:15:blk_i|cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y30_N36
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X28_Y56_N1
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X33_Y56_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X35_Y52_N20
\gen_blocks:0:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:blk_i|gen_fa:0:fa_i|s~combout\ = ( \A[0]~input_o\ & ( !\Cin~input_o\ $ (\B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( !\Cin~input_o\ $ (!\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \gen_blocks:0:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X33_Y56_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X30_Y56_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X35_Y52_N22
\gen_blocks:0:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:blk_i|gen_fa:1:fa_i|s~combout\ = ( \A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\B[0]~input_o\) # (\Cin~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\Cin~input_o\ & \B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \gen_blocks:0:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: LABCELL_X35_Y52_N26
\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\Cin~input_o\) # (\A[1]~input_o\)) # (\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[1]~input_o\ & \Cin~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \Cin~input_o\)) # (\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\);

-- Location: IOIBUF_X35_Y56_N63
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X35_Y56_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X35_Y52_N28
\gen_blocks:0:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:blk_i|gen_fa:2:fa_i|s~combout\ = ( \A[2]~input_o\ & ( !\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ $ (\B[2]~input_o\) ) ) # ( !\A[2]~input_o\ & ( !\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ $ (!\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:0:blk_i|gen_fa:1:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \gen_blocks:0:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X33_Y56_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X36_Y56_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X35_Y52_N30
\gen_blocks:0:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:blk_i|gen_fa:3:fa_i|s~combout\ = ( \B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & (\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ & \B[2]~input_o\)) # (\A[2]~input_o\ & ((\B[2]~input_o\) # 
-- (\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\))))) ) ) # ( !\B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & ((!\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\) # (!\B[2]~input_o\))) # (\A[2]~input_o\ & 
-- (!\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ & !\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \gen_blocks:0:blk_i|gen_fa:1:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \gen_blocks:0:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X35_Y52_N24
\gen_blocks:0:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:blk_i|tmp~0_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \gen_blocks:0:blk_i|tmp~0_combout\);

-- Location: LABCELL_X35_Y52_N38
\gen_blocks:0:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:blk_i|cout~1_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( (((\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ & !\gen_blocks:0:blk_i|tmp~0_combout\)) # (\A[3]~input_o\)) # (\A[2]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ 
-- & ( ((\A[2]~input_o\ & (\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ & !\gen_blocks:0:blk_i|tmp~0_combout\))) # (\A[3]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & (((\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ & 
-- !\gen_blocks:0:blk_i|tmp~0_combout\)) # (\A[2]~input_o\))) ) ) ) # ( !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( (\A[2]~input_o\ & (\A[3]~input_o\ & (\gen_blocks:0:blk_i|gen_fa:1:fa_i|cout~0_combout\ & !\gen_blocks:0:blk_i|tmp~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000100110001000100110111001100110111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \gen_blocks:0:blk_i|gen_fa:1:fa_i|ALT_INV_cout~0_combout\,
	datad => \gen_blocks:0:blk_i|ALT_INV_tmp~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \gen_blocks:0:blk_i|cout~1_combout\);

-- Location: IOIBUF_X36_Y56_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X35_Y52_N14
\gen_blocks:0:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:blk_i|cout~0_combout\ = ( \B[2]~input_o\ & ( \gen_blocks:0:blk_i|tmp~0_combout\ & ( (!\A[2]~input_o\ & (\Cin~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) ) ) ) # ( !\B[2]~input_o\ & ( \gen_blocks:0:blk_i|tmp~0_combout\ & ( 
-- (\A[2]~input_o\ & (\Cin~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \gen_blocks:0:blk_i|ALT_INV_tmp~0_combout\,
	combout => \gen_blocks:0:blk_i|cout~0_combout\);

-- Location: LABCELL_X35_Y52_N0
\gen_blocks:1:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|gen_fa:0:fa_i|s~combout\ = ( \gen_blocks:0:blk_i|cout~0_combout\ & ( !\B[4]~input_o\ $ (\A[4]~input_o\) ) ) # ( !\gen_blocks:0:blk_i|cout~0_combout\ & ( !\gen_blocks:0:blk_i|cout~1_combout\ $ (!\B[4]~input_o\ $ (\A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:blk_i|ALT_INV_cout~1_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \gen_blocks:0:blk_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:1:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X33_Y56_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X35_Y52_N2
\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \gen_blocks:0:blk_i|cout~0_combout\ & ( (!\B[4]~input_o\ & !\A[4]~input_o\) ) ) # ( !\gen_blocks:0:blk_i|cout~0_combout\ & ( (!\gen_blocks:0:blk_i|cout~1_combout\ & ((!\B[4]~input_o\) # 
-- (!\A[4]~input_o\))) # (\gen_blocks:0:blk_i|cout~1_combout\ & (!\B[4]~input_o\ & !\A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:blk_i|ALT_INV_cout~1_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \gen_blocks:0:blk_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X35_Y56_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X35_Y52_N6
\gen_blocks:1:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|gen_fa:1:fa_i|s~combout\ = ( \A[5]~input_o\ & ( !\B[5]~input_o\ $ (!\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\) ) ) # ( !\A[5]~input_o\ & ( !\B[5]~input_o\ $ (\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \gen_blocks:1:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \gen_blocks:1:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X35_Y56_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X30_Y56_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X35_Y52_N4
\gen_blocks:1:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|gen_fa:2:fa_i|s~combout\ = ( \B[6]~input_o\ & ( !\A[6]~input_o\ $ (((!\B[5]~input_o\ & (\A[5]~input_o\ & !\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\)) # (\B[5]~input_o\ & ((!\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\) # 
-- (\A[5]~input_o\))))) ) ) # ( !\B[6]~input_o\ & ( !\A[6]~input_o\ $ (((!\B[5]~input_o\ & ((!\A[5]~input_o\) # (\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\))) # (\B[5]~input_o\ & (!\A[5]~input_o\ & \gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000011110011110000001111010000111111000011000011111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \gen_blocks:1:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \gen_blocks:1:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: LABCELL_X35_Y52_N10
\gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \A[5]~input_o\ & ( (!\A[6]~input_o\ & (\B[6]~input_o\ & ((!\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[5]~input_o\)))) # (\A[6]~input_o\ & 
-- (((!\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[5]~input_o\)) # (\B[6]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (!\A[6]~input_o\ & (\B[6]~input_o\ & (!\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[5]~input_o\))) # (\A[6]~input_o\ & 
-- (((!\gen_blocks:1:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[5]~input_o\)) # (\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110001000100010111000101110001011101110111000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \gen_blocks:1:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: IOIBUF_X40_Y56_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X35_Y52_N32
\gen_blocks:1:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|gen_fa:3:fa_i|s~combout\ = ( \A[7]~input_o\ & ( !\gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\ $ (\B[7]~input_o\) ) ) # ( !\A[7]~input_o\ & ( !\gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\ $ (!\B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \gen_blocks:1:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X35_Y52_N18
\gen_blocks:1:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|tmp~0_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \gen_blocks:1:blk_i|tmp~0_combout\);

-- Location: LABCELL_X35_Y52_N8
\gen_blocks:1:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|tmp~combout\ = ( \A[7]~input_o\ & ( (\gen_blocks:1:blk_i|tmp~0_combout\ & (!\B[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) ) # ( !\A[7]~input_o\ & ( (\gen_blocks:1:blk_i|tmp~0_combout\ & (\B[7]~input_o\ & (!\A[6]~input_o\ $ 
-- (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \gen_blocks:1:blk_i|ALT_INV_tmp~0_combout\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \gen_blocks:1:blk_i|tmp~combout\);

-- Location: LABCELL_X35_Y52_N16
\gen_blocks:1:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|cout~0_combout\ = ( \gen_blocks:0:blk_i|cout~0_combout\ & ( \gen_blocks:1:blk_i|tmp~combout\ ) ) # ( !\gen_blocks:0:blk_i|cout~0_combout\ & ( (\gen_blocks:1:blk_i|tmp~combout\ & \gen_blocks:0:blk_i|cout~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:blk_i|ALT_INV_tmp~combout\,
	datac => \gen_blocks:0:blk_i|ALT_INV_cout~1_combout\,
	dataf => \gen_blocks:0:blk_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:1:blk_i|cout~0_combout\);

-- Location: LABCELL_X35_Y52_N34
\gen_blocks:1:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:blk_i|cout~1_combout\ = ( \A[7]~input_o\ & ( ((\gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:1:blk_i|tmp~combout\)) # (\B[7]~input_o\) ) ) # ( !\A[7]~input_o\ & ( (\gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\ & 
-- (\B[7]~input_o\ & !\gen_blocks:1:blk_i|tmp~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000001110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \gen_blocks:1:blk_i|ALT_INV_tmp~combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \gen_blocks:1:blk_i|cout~1_combout\);

-- Location: IOIBUF_X37_Y0_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X38_Y56_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X38_Y52_N0
\gen_blocks:2:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|gen_fa:0:fa_i|s~combout\ = ( \B[8]~input_o\ & ( \A[8]~input_o\ & ( (\gen_blocks:1:blk_i|cout~1_combout\) # (\gen_blocks:1:blk_i|cout~0_combout\) ) ) ) # ( !\B[8]~input_o\ & ( \A[8]~input_o\ & ( (!\gen_blocks:1:blk_i|cout~0_combout\ & 
-- !\gen_blocks:1:blk_i|cout~1_combout\) ) ) ) # ( \B[8]~input_o\ & ( !\A[8]~input_o\ & ( (!\gen_blocks:1:blk_i|cout~0_combout\ & !\gen_blocks:1:blk_i|cout~1_combout\) ) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ & ( (\gen_blocks:1:blk_i|cout~1_combout\) # 
-- (\gen_blocks:1:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110000001100000011000000110000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:1:blk_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:1:blk_i|ALT_INV_cout~1_combout\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \gen_blocks:2:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X38_Y56_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X38_Y52_N26
\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( !\B[8]~input_o\ & ( \A[8]~input_o\ & ( (!\gen_blocks:1:blk_i|cout~1_combout\ & !\gen_blocks:1:blk_i|cout~0_combout\) ) ) ) # ( \B[8]~input_o\ & ( !\A[8]~input_o\ & ( 
-- (!\gen_blocks:1:blk_i|cout~1_combout\ & !\gen_blocks:1:blk_i|cout~0_combout\) ) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:blk_i|ALT_INV_cout~1_combout\,
	datac => \gen_blocks:1:blk_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X40_Y56_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X38_Y52_N28
\gen_blocks:2:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|gen_fa:1:fa_i|s~combout\ = ( \gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( \B[9]~input_o\ & ( !\A[9]~input_o\ ) ) ) # ( !\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( \B[9]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( 
-- \gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\B[9]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( !\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\B[9]~input_o\ & ( !\A[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[9]~input_o\,
	datae => \gen_blocks:2:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \gen_blocks:2:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X44_Y56_N1
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X44_Y56_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X42_Y52_N22
\gen_blocks:2:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|gen_fa:2:fa_i|s~combout\ = ( \B[10]~input_o\ & ( !\A[10]~input_o\ $ (((!\B[9]~input_o\ & (!\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[9]~input_o\)) # (\B[9]~input_o\ & ((!\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\) # 
-- (\A[9]~input_o\))))) ) ) # ( !\B[10]~input_o\ & ( !\A[10]~input_o\ $ (((!\B[9]~input_o\ & ((!\A[9]~input_o\) # (\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\))) # (\B[9]~input_o\ & (\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ & 
-- !\A[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110110110010010011011011001010110010010011011011001001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \gen_blocks:2:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \gen_blocks:2:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X42_Y56_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X42_Y52_N20
\gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \B[10]~input_o\ & ( ((!\B[9]~input_o\ & (!\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[9]~input_o\)) # (\B[9]~input_o\ & ((!\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\) # 
-- (\A[9]~input_o\)))) # (\A[10]~input_o\) ) ) # ( !\B[10]~input_o\ & ( (\A[10]~input_o\ & ((!\B[9]~input_o\ & (!\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[9]~input_o\)) # (\B[9]~input_o\ & ((!\gen_blocks:2:blk_i|gen_fa:0:fa_i|cout~0_combout\) # 
-- (\A[9]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001101000001000000110101001111110111110100111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \gen_blocks:2:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: MLABCELL_X42_Y52_N26
\gen_blocks:2:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|gen_fa:3:fa_i|s~combout\ = !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (\gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \gen_blocks:2:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:2:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X38_Y52_N32
\gen_blocks:2:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|tmp~0_combout\ = ( \B[8]~input_o\ & ( \B[9]~input_o\ & ( (!\A[9]~input_o\ & !\A[8]~input_o\) ) ) ) # ( !\B[8]~input_o\ & ( \B[9]~input_o\ & ( (!\A[9]~input_o\ & \A[8]~input_o\) ) ) ) # ( \B[8]~input_o\ & ( !\B[9]~input_o\ & ( 
-- (\A[9]~input_o\ & !\A[8]~input_o\) ) ) ) # ( !\B[8]~input_o\ & ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & \A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110000000000000000110011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \gen_blocks:2:blk_i|tmp~0_combout\);

-- Location: MLABCELL_X42_Y52_N24
\gen_blocks:2:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|tmp~combout\ = ( \B[10]~input_o\ & ( (\gen_blocks:2:blk_i|tmp~0_combout\ & (!\A[10]~input_o\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) ) # ( !\B[10]~input_o\ & ( (\gen_blocks:2:blk_i|tmp~0_combout\ & (\A[10]~input_o\ & 
-- (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \gen_blocks:2:blk_i|ALT_INV_tmp~0_combout\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \gen_blocks:2:blk_i|tmp~combout\);

-- Location: MLABCELL_X42_Y52_N14
\gen_blocks:2:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|cout~1_combout\ = ( \A[11]~input_o\ & ( ((!\gen_blocks:2:blk_i|tmp~combout\ & \gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (!\gen_blocks:2:blk_i|tmp~combout\ & 
-- (\gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\ & \B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:blk_i|ALT_INV_tmp~combout\,
	datac => \gen_blocks:2:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \gen_blocks:2:blk_i|cout~1_combout\);

-- Location: MLABCELL_X42_Y52_N8
\gen_blocks:2:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:blk_i|cout~0_combout\ = ( \A[7]~input_o\ & ( \gen_blocks:2:blk_i|tmp~combout\ & ( (((\gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:1:blk_i|tmp~combout\)) # (\B[7]~input_o\)) # (\gen_blocks:1:blk_i|cout~0_combout\) ) ) ) # 
-- ( !\A[7]~input_o\ & ( \gen_blocks:2:blk_i|tmp~combout\ & ( ((\gen_blocks:1:blk_i|gen_fa:2:fa_i|cout~0_combout\ & (!\gen_blocks:1:blk_i|tmp~combout\ & \B[7]~input_o\))) # (\gen_blocks:1:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101011101010111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:blk_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:1:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:1:blk_i|ALT_INV_tmp~combout\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \gen_blocks:2:blk_i|ALT_INV_tmp~combout\,
	combout => \gen_blocks:2:blk_i|cout~0_combout\);

-- Location: IOIBUF_X42_Y56_N94
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X48_Y56_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X42_Y52_N12
\gen_blocks:3:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|gen_fa:0:fa_i|s~combout\ = ( \B[12]~input_o\ & ( !\A[12]~input_o\ $ (((\gen_blocks:2:blk_i|cout~0_combout\) # (\gen_blocks:2:blk_i|cout~1_combout\))) ) ) # ( !\B[12]~input_o\ & ( !\A[12]~input_o\ $ 
-- (((!\gen_blocks:2:blk_i|cout~1_combout\ & !\gen_blocks:2:blk_i|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:2:blk_i|ALT_INV_cout~1_combout\,
	datac => \gen_blocks:2:blk_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \gen_blocks:3:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: MLABCELL_X42_Y52_N38
\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \B[12]~input_o\ & ( (!\A[12]~input_o\ & (!\gen_blocks:2:blk_i|cout~1_combout\ & !\gen_blocks:2:blk_i|cout~0_combout\)) ) ) # ( !\B[12]~input_o\ & ( (!\A[12]~input_o\) # 
-- ((!\gen_blocks:2:blk_i|cout~1_combout\ & !\gen_blocks:2:blk_i|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datac => \gen_blocks:2:blk_i|ALT_INV_cout~1_combout\,
	datad => \gen_blocks:2:blk_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X44_Y56_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X42_Y56_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X42_Y52_N2
\gen_blocks:3:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|gen_fa:1:fa_i|s~combout\ = ( \A[13]~input_o\ & ( !\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\ $ (!\B[13]~input_o\) ) ) # ( !\A[13]~input_o\ & ( !\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\ $ (\B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_blocks:3:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \gen_blocks:3:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X42_Y56_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X46_Y56_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X42_Y52_N4
\gen_blocks:3:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|gen_fa:2:fa_i|s~combout\ = ( \A[14]~input_o\ & ( !\B[14]~input_o\ $ (((!\A[13]~input_o\ & (\B[13]~input_o\ & !\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\)) # (\A[13]~input_o\ & 
-- ((!\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[13]~input_o\))))) ) ) # ( !\A[14]~input_o\ & ( !\B[14]~input_o\ $ (((!\A[13]~input_o\ & ((!\B[13]~input_o\) # (\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\))) # (\A[13]~input_o\ & 
-- (!\B[13]~input_o\ & \gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110000110110011011000011011010010011110010011001001111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \gen_blocks:3:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X46_Y56_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X42_Y52_N6
\gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \A[14]~input_o\ & ( ((!\A[13]~input_o\ & (!\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[13]~input_o\)) # (\A[13]~input_o\ & ((!\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\) # 
-- (\B[13]~input_o\)))) # (\B[14]~input_o\) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & ((!\A[13]~input_o\ & (!\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[13]~input_o\)) # (\A[13]~input_o\ & 
-- ((!\gen_blocks:3:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110001000100000011000101110011111101110111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \gen_blocks:3:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: IOIBUF_X48_Y56_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X42_Y52_N30
\gen_blocks:3:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|gen_fa:3:fa_i|s~combout\ = ( \A[15]~input_o\ & ( !\B[15]~input_o\ $ (\gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\) ) ) # ( !\A[15]~input_o\ & ( !\B[15]~input_o\ $ (!\gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[15]~input_o\,
	datac => \gen_blocks:3:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \gen_blocks:3:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: MLABCELL_X42_Y52_N36
\gen_blocks:3:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|tmp~0_combout\ = ( \B[12]~input_o\ & ( (!\A[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\A[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \gen_blocks:3:blk_i|tmp~0_combout\);

-- Location: MLABCELL_X42_Y52_N0
\gen_blocks:3:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|tmp~combout\ = ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & (\gen_blocks:3:blk_i|tmp~0_combout\ & (!\B[15]~input_o\ $ (!\A[15]~input_o\)))) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (\gen_blocks:3:blk_i|tmp~0_combout\ & 
-- (!\B[15]~input_o\ $ (!\A[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \gen_blocks:3:blk_i|ALT_INV_tmp~0_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:blk_i|tmp~combout\);

-- Location: MLABCELL_X42_Y52_N34
\gen_blocks:3:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|cout~0_combout\ = ( \gen_blocks:2:blk_i|cout~0_combout\ & ( \gen_blocks:2:blk_i|tmp~combout\ & ( \gen_blocks:3:blk_i|tmp~combout\ ) ) ) # ( !\gen_blocks:2:blk_i|cout~0_combout\ & ( \gen_blocks:2:blk_i|tmp~combout\ & ( (\B[11]~input_o\ 
-- & (\A[11]~input_o\ & \gen_blocks:3:blk_i|tmp~combout\)) ) ) ) # ( \gen_blocks:2:blk_i|cout~0_combout\ & ( !\gen_blocks:2:blk_i|tmp~combout\ & ( \gen_blocks:3:blk_i|tmp~combout\ ) ) ) # ( !\gen_blocks:2:blk_i|cout~0_combout\ & ( 
-- !\gen_blocks:2:blk_i|tmp~combout\ & ( (\gen_blocks:3:blk_i|tmp~combout\ & ((!\B[11]~input_o\ & (\gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\ & \A[11]~input_o\)) # (\B[11]~input_o\ & ((\A[11]~input_o\) # 
-- (\gen_blocks:2:blk_i|gen_fa:2:fa_i|cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000001111111100000000000001010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \gen_blocks:2:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \gen_blocks:3:blk_i|ALT_INV_tmp~combout\,
	datae => \gen_blocks:2:blk_i|ALT_INV_cout~0_combout\,
	dataf => \gen_blocks:2:blk_i|ALT_INV_tmp~combout\,
	combout => \gen_blocks:3:blk_i|cout~0_combout\);

-- Location: MLABCELL_X42_Y52_N28
\gen_blocks:3:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:blk_i|cout~1_combout\ = ( \A[15]~input_o\ & ( ((\gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:3:blk_i|tmp~combout\)) # (\B[15]~input_o\) ) ) # ( !\A[15]~input_o\ & ( (\gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\ & 
-- (\B[15]~input_o\ & !\gen_blocks:3:blk_i|tmp~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000001110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \gen_blocks:3:blk_i|ALT_INV_tmp~combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \gen_blocks:3:blk_i|cout~1_combout\);

-- Location: IOIBUF_X37_Y0_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: MLABCELL_X42_Y4_N20
\gen_blocks:4:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|gen_fa:0:fa_i|s~combout\ = ( \B[16]~input_o\ & ( !\A[16]~input_o\ $ (((\gen_blocks:3:blk_i|cout~1_combout\) # (\gen_blocks:3:blk_i|cout~0_combout\))) ) ) # ( !\B[16]~input_o\ & ( !\A[16]~input_o\ $ 
-- (((!\gen_blocks:3:blk_i|cout~0_combout\ & !\gen_blocks:3:blk_i|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110001000011101111000100010001000011101111000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:blk_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:3:blk_i|ALT_INV_cout~1_combout\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \gen_blocks:4:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X45_Y0_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: MLABCELL_X42_Y4_N22
\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \B[16]~input_o\ & ( (!\gen_blocks:3:blk_i|cout~0_combout\ & (!\gen_blocks:3:blk_i|cout~1_combout\ & !\A[16]~input_o\)) ) ) # ( !\B[16]~input_o\ & ( (!\A[16]~input_o\) # 
-- ((!\gen_blocks:3:blk_i|cout~0_combout\ & !\gen_blocks:3:blk_i|cout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:blk_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:3:blk_i|ALT_INV_cout~1_combout\,
	datac => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: MLABCELL_X42_Y4_N6
\gen_blocks:4:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|gen_fa:1:fa_i|s~combout\ = !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (!\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \gen_blocks:4:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:4:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X41_Y0_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X43_Y0_N94
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X42_Y4_N8
\gen_blocks:4:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|gen_fa:2:fa_i|s~combout\ = ( \A[18]~input_o\ & ( !\B[18]~input_o\ $ (((!\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ((\B[17]~input_o\) # (\A[17]~input_o\))) # (\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\ & 
-- (\A[17]~input_o\ & \B[17]~input_o\)))) ) ) # ( !\A[18]~input_o\ & ( !\B[18]~input_o\ $ (((!\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\ & (!\A[17]~input_o\ & !\B[17]~input_o\)) # (\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\ & 
-- ((!\A[17]~input_o\) # (!\B[17]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110011010010110011001101010100110011001011010011001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \gen_blocks:4:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \gen_blocks:4:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X35_Y0_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: MLABCELL_X42_Y4_N10
\gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \A[17]~input_o\ & ( (!\B[18]~input_o\ & (\A[18]~input_o\ & ((!\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[17]~input_o\)))) # (\B[18]~input_o\ & 
-- ((!\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\) # ((\B[17]~input_o\) # (\A[18]~input_o\)))) ) ) # ( !\A[17]~input_o\ & ( (!\B[18]~input_o\ & (!\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\ & (\A[18]~input_o\ & \B[17]~input_o\))) # 
-- (\B[18]~input_o\ & (((!\gen_blocks:4:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[17]~input_o\)) # (\A[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101001101000001010100110101001101010111110100110101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \gen_blocks:4:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: MLABCELL_X42_Y4_N12
\gen_blocks:4:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|gen_fa:3:fa_i|s~combout\ = ( \A[19]~input_o\ & ( !\B[19]~input_o\ $ (\gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\) ) ) # ( !\A[19]~input_o\ & ( !\B[19]~input_o\ $ (!\gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[19]~input_o\,
	datad => \gen_blocks:4:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \gen_blocks:4:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: MLABCELL_X42_Y4_N4
\gen_blocks:4:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|tmp~0_combout\ = (!\A[17]~input_o\ & (\B[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\)))) # (\A[17]~input_o\ & (!\B[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	combout => \gen_blocks:4:blk_i|tmp~0_combout\);

-- Location: MLABCELL_X42_Y4_N16
\gen_blocks:4:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|tmp~combout\ = ( \A[18]~input_o\ & ( (!\B[18]~input_o\ & (\gen_blocks:4:blk_i|tmp~0_combout\ & (!\A[19]~input_o\ $ (!\B[19]~input_o\)))) ) ) # ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & (\gen_blocks:4:blk_i|tmp~0_combout\ & 
-- (!\A[19]~input_o\ $ (!\B[19]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \gen_blocks:4:blk_i|ALT_INV_tmp~0_combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \gen_blocks:4:blk_i|tmp~combout\);

-- Location: MLABCELL_X42_Y52_N18
\gen_blocks:4:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|cout~0_combout\ = ( \gen_blocks:4:blk_i|tmp~combout\ & ( \gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( ((!\A[15]~input_o\ & (\B[15]~input_o\ & !\gen_blocks:3:blk_i|tmp~combout\)) # (\A[15]~input_o\ & 
-- ((!\gen_blocks:3:blk_i|tmp~combout\) # (\B[15]~input_o\)))) # (\gen_blocks:3:blk_i|cout~0_combout\) ) ) ) # ( \gen_blocks:4:blk_i|tmp~combout\ & ( !\gen_blocks:3:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( ((\A[15]~input_o\ & \B[15]~input_o\)) # 
-- (\gen_blocks:3:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110011011100000000000000000111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \gen_blocks:3:blk_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \gen_blocks:3:blk_i|ALT_INV_tmp~combout\,
	datae => \gen_blocks:4:blk_i|ALT_INV_tmp~combout\,
	dataf => \gen_blocks:3:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:4:blk_i|cout~0_combout\);

-- Location: IOIBUF_X45_Y0_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: MLABCELL_X42_Y4_N18
\gen_blocks:4:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:blk_i|cout~1_combout\ = ( \gen_blocks:4:blk_i|tmp~combout\ & ( (\A[19]~input_o\ & \B[19]~input_o\) ) ) # ( !\gen_blocks:4:blk_i|tmp~combout\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & \gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # 
-- (\A[19]~input_o\ & ((\gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\) # (\B[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datad => \gen_blocks:4:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \gen_blocks:4:blk_i|ALT_INV_tmp~combout\,
	combout => \gen_blocks:4:blk_i|cout~1_combout\);

-- Location: IOIBUF_X41_Y0_N63
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: MLABCELL_X42_Y4_N14
\gen_blocks:5:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|gen_fa:0:fa_i|s~combout\ = ( \B[20]~input_o\ & ( !\A[20]~input_o\ $ (((\gen_blocks:4:blk_i|cout~1_combout\) # (\gen_blocks:4:blk_i|cout~0_combout\))) ) ) # ( !\B[20]~input_o\ & ( !\A[20]~input_o\ $ 
-- (((!\gen_blocks:4:blk_i|cout~0_combout\ & !\gen_blocks:4:blk_i|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000010100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:blk_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \gen_blocks:4:blk_i|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \gen_blocks:5:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X35_Y0_N94
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: MLABCELL_X42_Y4_N2
\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \gen_blocks:4:blk_i|cout~1_combout\ & ( (!\B[20]~input_o\ & !\A[20]~input_o\) ) ) # ( !\gen_blocks:4:blk_i|cout~1_combout\ & ( (!\B[20]~input_o\ & ((!\A[20]~input_o\) # 
-- (!\gen_blocks:4:blk_i|cout~0_combout\))) # (\B[20]~input_o\ & (!\A[20]~input_o\ & !\gen_blocks:4:blk_i|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datad => \gen_blocks:4:blk_i|ALT_INV_cout~0_combout\,
	dataf => \gen_blocks:4:blk_i|ALT_INV_cout~1_combout\,
	combout => \gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X45_Y0_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: MLABCELL_X42_Y4_N26
\gen_blocks:5:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|gen_fa:1:fa_i|s~combout\ = ( \B[21]~input_o\ & ( !\A[21]~input_o\ $ (!\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\) ) ) # ( !\B[21]~input_o\ & ( !\A[21]~input_o\ $ (\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[21]~input_o\,
	datac => \gen_blocks:5:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \gen_blocks:5:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X37_Y0_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X35_Y0_N63
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: MLABCELL_X42_Y4_N30
\gen_blocks:5:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|gen_fa:2:fa_i|s~combout\ = ( \B[21]~input_o\ & ( !\A[22]~input_o\ $ (!\B[22]~input_o\ $ (((!\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[21]~input_o\)))) ) ) # ( !\B[21]~input_o\ & ( !\A[22]~input_o\ $ (!\B[22]~input_o\ $ 
-- (((!\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110010110011010011010011010011001011001101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \gen_blocks:5:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \gen_blocks:5:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X48_Y0_N32
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X59_Y6_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: MLABCELL_X42_Y4_N28
\gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \B[21]~input_o\ & ( (!\A[22]~input_o\ & (\B[22]~input_o\ & ((!\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[21]~input_o\)))) # (\A[22]~input_o\ & 
-- ((!\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\) # ((\B[22]~input_o\) # (\A[21]~input_o\)))) ) ) # ( !\B[21]~input_o\ & ( (!\A[22]~input_o\ & (!\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\ & (\A[21]~input_o\ & \B[22]~input_o\))) # 
-- (\A[22]~input_o\ & (((!\gen_blocks:5:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[21]~input_o\)) # (\B[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001011101000001000101110101000101110111110100010111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \gen_blocks:5:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: MLABCELL_X42_Y4_N34
\gen_blocks:5:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|gen_fa:3:fa_i|s~combout\ = ( \gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( !\B[23]~input_o\ $ (\A[23]~input_o\) ) ) # ( !\gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( !\B[23]~input_o\ $ (!\A[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	dataf => \gen_blocks:5:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:5:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: MLABCELL_X42_Y4_N0
\gen_blocks:5:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|tmp~0_combout\ = ( \B[21]~input_o\ & ( (!\A[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) ) # ( !\B[21]~input_o\ & ( (\A[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \gen_blocks:5:blk_i|tmp~0_combout\);

-- Location: MLABCELL_X42_Y4_N32
\gen_blocks:5:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|tmp~combout\ = ( \gen_blocks:5:blk_i|tmp~0_combout\ & ( (!\B[23]~input_o\ & (\A[23]~input_o\ & (!\A[22]~input_o\ $ (!\B[22]~input_o\)))) # (\B[23]~input_o\ & (!\A[23]~input_o\ & (!\A[22]~input_o\ $ (!\B[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \gen_blocks:5:blk_i|ALT_INV_tmp~0_combout\,
	combout => \gen_blocks:5:blk_i|tmp~combout\);

-- Location: MLABCELL_X42_Y4_N36
\gen_blocks:5:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|cout~0_combout\ = ( \gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( \A[19]~input_o\ & ( (\gen_blocks:5:blk_i|tmp~combout\ & (((!\gen_blocks:4:blk_i|tmp~combout\) # (\B[19]~input_o\)) # (\gen_blocks:4:blk_i|cout~0_combout\))) ) ) 
-- ) # ( !\gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( \A[19]~input_o\ & ( (\gen_blocks:5:blk_i|tmp~combout\ & ((\B[19]~input_o\) # (\gen_blocks:4:blk_i|cout~0_combout\))) ) ) ) # ( \gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( 
-- !\A[19]~input_o\ & ( (\gen_blocks:5:blk_i|tmp~combout\ & (((!\gen_blocks:4:blk_i|tmp~combout\ & \B[19]~input_o\)) # (\gen_blocks:4:blk_i|cout~0_combout\))) ) ) ) # ( !\gen_blocks:4:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( !\A[19]~input_o\ & ( 
-- (\gen_blocks:4:blk_i|cout~0_combout\ & \gen_blocks:5:blk_i|tmp~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000110100000101000011110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:blk_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:4:blk_i|ALT_INV_tmp~combout\,
	datac => \gen_blocks:5:blk_i|ALT_INV_tmp~combout\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \gen_blocks:4:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \gen_blocks:5:blk_i|cout~0_combout\);

-- Location: IOIBUF_X49_Y56_N63
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X51_Y56_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: MLABCELL_X52_Y52_N20
\gen_blocks:5:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:blk_i|cout~1_combout\ = ( \gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( (!\A[23]~input_o\ & (\B[23]~input_o\ & !\gen_blocks:5:blk_i|tmp~combout\)) # (\A[23]~input_o\ & ((!\gen_blocks:5:blk_i|tmp~combout\) # (\B[23]~input_o\))) ) ) # 
-- ( !\gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( (\A[23]~input_o\ & \B[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \gen_blocks:5:blk_i|ALT_INV_tmp~combout\,
	dataf => \gen_blocks:5:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:5:blk_i|cout~1_combout\);

-- Location: MLABCELL_X52_Y52_N22
\gen_blocks:6:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|gen_fa:0:fa_i|s~combout\ = ( \gen_blocks:5:blk_i|cout~1_combout\ & ( !\A[24]~input_o\ $ (\B[24]~input_o\) ) ) # ( !\gen_blocks:5:blk_i|cout~1_combout\ & ( !\gen_blocks:5:blk_i|cout~0_combout\ $ (!\A[24]~input_o\ $ (\B[24]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:5:blk_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \gen_blocks:5:blk_i|ALT_INV_cout~1_combout\,
	combout => \gen_blocks:6:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: MLABCELL_X52_Y52_N26
\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( !\B[24]~input_o\ & ( \gen_blocks:5:blk_i|cout~1_combout\ & ( !\A[24]~input_o\ ) ) ) # ( \B[24]~input_o\ & ( !\gen_blocks:5:blk_i|cout~1_combout\ & ( (!\gen_blocks:5:blk_i|cout~0_combout\ & 
-- !\A[24]~input_o\) ) ) ) # ( !\B[24]~input_o\ & ( !\gen_blocks:5:blk_i|cout~1_combout\ & ( (!\gen_blocks:5:blk_i|cout~0_combout\) # (!\A[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010101000001010000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:5:blk_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_B[24]~input_o\,
	dataf => \gen_blocks:5:blk_i|ALT_INV_cout~1_combout\,
	combout => \gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X51_Y56_N32
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: MLABCELL_X52_Y52_N8
\gen_blocks:6:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|gen_fa:1:fa_i|s~combout\ = ( \A[25]~input_o\ & ( \B[25]~input_o\ & ( !\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\ ) ) ) # ( !\A[25]~input_o\ & ( \B[25]~input_o\ & ( \gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\ ) ) ) # ( 
-- \A[25]~input_o\ & ( !\B[25]~input_o\ & ( \gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\ ) ) ) # ( !\A[25]~input_o\ & ( !\B[25]~input_o\ & ( !\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gen_blocks:6:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \gen_blocks:6:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X55_Y56_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X55_Y56_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: MLABCELL_X52_Y52_N12
\gen_blocks:6:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|gen_fa:2:fa_i|s~combout\ = ( \A[25]~input_o\ & ( \B[26]~input_o\ & ( !\A[26]~input_o\ $ (((!\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[25]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( \B[26]~input_o\ & ( !\A[26]~input_o\ $ 
-- (((!\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[25]~input_o\))) ) ) ) # ( \A[25]~input_o\ & ( !\B[26]~input_o\ & ( !\A[26]~input_o\ $ (((\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\ & !\B[25]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( 
-- !\B[26]~input_o\ & ( !\A[26]~input_o\ $ (((!\B[25]~input_o\) # (\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011110000111111000011110000001111000011110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:6:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \gen_blocks:6:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: MLABCELL_X52_Y52_N38
\gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \B[25]~input_o\ & ( (!\A[26]~input_o\ & (\B[26]~input_o\ & ((!\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[25]~input_o\)))) # (\A[26]~input_o\ & 
-- (((!\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[25]~input_o\)) # (\B[26]~input_o\))) ) ) # ( !\B[25]~input_o\ & ( (!\A[26]~input_o\ & (\B[26]~input_o\ & (\A[25]~input_o\ & !\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\))) # 
-- (\A[26]~input_o\ & (((\A[25]~input_o\ & !\gen_blocks:6:blk_i|gen_fa:0:fa_i|cout~0_combout\)) # (\B[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010001000101110001000101110111000101110111011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \gen_blocks:6:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: IOIBUF_X51_Y56_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X53_Y56_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: MLABCELL_X52_Y52_N0
\gen_blocks:6:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|gen_fa:3:fa_i|s~combout\ = ( \B[27]~input_o\ & ( !\gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\ $ (\A[27]~input_o\) ) ) # ( !\B[27]~input_o\ & ( !\gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\ $ (!\A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:6:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \gen_blocks:6:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: MLABCELL_X52_Y52_N4
\gen_blocks:6:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|tmp~0_combout\ = ( !\A[25]~input_o\ & ( \B[25]~input_o\ & ( !\A[24]~input_o\ $ (!\B[24]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[25]~input_o\ & ( !\A[24]~input_o\ $ (!\B[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000111100001111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \gen_blocks:6:blk_i|tmp~0_combout\);

-- Location: MLABCELL_X52_Y52_N36
\gen_blocks:6:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|tmp~combout\ = ( \A[27]~input_o\ & ( (\gen_blocks:6:blk_i|tmp~0_combout\ & (!\B[27]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\)))) ) ) # ( !\A[27]~input_o\ & ( (\gen_blocks:6:blk_i|tmp~0_combout\ & (\B[27]~input_o\ & 
-- (!\A[26]~input_o\ $ (!\B[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \gen_blocks:6:blk_i|ALT_INV_tmp~0_combout\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \gen_blocks:6:blk_i|tmp~combout\);

-- Location: MLABCELL_X52_Y52_N28
\gen_blocks:6:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|cout~0_combout\ = ( \A[23]~input_o\ & ( \gen_blocks:5:blk_i|cout~0_combout\ & ( \gen_blocks:6:blk_i|tmp~combout\ ) ) ) # ( !\A[23]~input_o\ & ( \gen_blocks:5:blk_i|cout~0_combout\ & ( \gen_blocks:6:blk_i|tmp~combout\ ) ) ) # ( 
-- \A[23]~input_o\ & ( !\gen_blocks:5:blk_i|cout~0_combout\ & ( (\gen_blocks:6:blk_i|tmp~combout\ & (((!\gen_blocks:5:blk_i|tmp~combout\ & \gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\B[23]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( 
-- !\gen_blocks:5:blk_i|cout~0_combout\ & ( (\B[23]~input_o\ & (!\gen_blocks:5:blk_i|tmp~combout\ & (\gen_blocks:5:blk_i|gen_fa:2:fa_i|cout~0_combout\ & \gen_blocks:6:blk_i|tmp~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \gen_blocks:5:blk_i|ALT_INV_tmp~combout\,
	datac => \gen_blocks:5:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datad => \gen_blocks:6:blk_i|ALT_INV_tmp~combout\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \gen_blocks:5:blk_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:6:blk_i|cout~0_combout\);

-- Location: IOIBUF_X56_Y56_N94
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y51_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: MLABCELL_X52_Y52_N2
\gen_blocks:6:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:blk_i|cout~1_combout\ = ( \B[27]~input_o\ & ( ((\gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:6:blk_i|tmp~combout\)) # (\A[27]~input_o\) ) ) # ( !\B[27]~input_o\ & ( (\gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\ & 
-- (\A[27]~input_o\ & !\gen_blocks:6:blk_i|tmp~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000001110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:6:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \gen_blocks:6:blk_i|ALT_INV_tmp~combout\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \gen_blocks:6:blk_i|cout~1_combout\);

-- Location: MLABCELL_X52_Y52_N34
\gen_blocks:7:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|gen_fa:0:fa_i|s~combout\ = ( \gen_blocks:6:blk_i|cout~1_combout\ & ( !\B[28]~input_o\ $ (\A[28]~input_o\) ) ) # ( !\gen_blocks:6:blk_i|cout~1_combout\ & ( !\gen_blocks:6:blk_i|cout~0_combout\ $ (!\B[28]~input_o\ $ (\A[28]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:6:blk_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	dataf => \gen_blocks:6:blk_i|ALT_INV_cout~1_combout\,
	combout => \gen_blocks:7:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y51_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y36_N94
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X52_Y52_N32
\gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \gen_blocks:6:blk_i|cout~1_combout\ & ( (!\B[28]~input_o\ & !\A[28]~input_o\) ) ) # ( !\gen_blocks:6:blk_i|cout~1_combout\ & ( (!\gen_blocks:6:blk_i|cout~0_combout\ & ((!\B[28]~input_o\) # 
-- (!\A[28]~input_o\))) # (\gen_blocks:6:blk_i|cout~0_combout\ & (!\B[28]~input_o\ & !\A[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:6:blk_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	dataf => \gen_blocks:6:blk_i|ALT_INV_cout~1_combout\,
	combout => \gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y48_N22
\gen_blocks:7:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|gen_fa:1:fa_i|s~combout\ = ( \gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[29]~input_o\ $ (!\B[29]~input_o\) ) ) # ( !\gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[29]~input_o\ $ (\B[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	dataf => \gen_blocks:7:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:7:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y49_N32
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y46_N63
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X58_Y48_N26
\gen_blocks:7:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|gen_fa:2:fa_i|s~combout\ = ( \gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[30]~input_o\ $ (!\B[30]~input_o\ $ (((\B[29]~input_o\ & \A[29]~input_o\)))) ) ) # ( !\gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( 
-- !\A[30]~input_o\ $ (!\B[30]~input_o\ $ (((\A[29]~input_o\) # (\B[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \gen_blocks:7:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:7:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y39_N63
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X58_Y48_N24
\gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( (!\A[30]~input_o\ & (\B[30]~input_o\ & (\A[29]~input_o\ & \B[29]~input_o\))) # (\A[30]~input_o\ & (((\A[29]~input_o\ & \B[29]~input_o\)) # 
-- (\B[30]~input_o\))) ) ) # ( !\gen_blocks:7:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( (!\A[30]~input_o\ & (\B[30]~input_o\ & ((\B[29]~input_o\) # (\A[29]~input_o\)))) # (\A[30]~input_o\ & (((\B[29]~input_o\) # (\A[29]~input_o\)) # (\B[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000101110111011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => \gen_blocks:7:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: IOIBUF_X59_Y48_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X58_Y48_N28
\gen_blocks:7:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|gen_fa:3:fa_i|s~combout\ = ( \A[31]~input_o\ & ( !\B[31]~input_o\ $ (\gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\) ) ) # ( !\A[31]~input_o\ & ( !\B[31]~input_o\ $ (!\gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[31]~input_o\,
	datac => \gen_blocks:7:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \gen_blocks:7:blk_i|gen_fa:3:fa_i|s~combout\);

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

-- Location: LABCELL_X58_Y48_N20
\gen_blocks:7:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|tmp~0_combout\ = (!\A[29]~input_o\ & (\B[29]~input_o\ & (!\B[28]~input_o\ $ (!\A[28]~input_o\)))) # (\A[29]~input_o\ & (!\B[29]~input_o\ & (!\B[28]~input_o\ $ (!\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	combout => \gen_blocks:7:blk_i|tmp~0_combout\);

-- Location: LABCELL_X58_Y48_N14
\gen_blocks:7:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|tmp~combout\ = ( \B[31]~input_o\ & ( (\gen_blocks:7:blk_i|tmp~0_combout\ & (!\A[31]~input_o\ & (!\B[30]~input_o\ $ (!\A[30]~input_o\)))) ) ) # ( !\B[31]~input_o\ & ( (\gen_blocks:7:blk_i|tmp~0_combout\ & (\A[31]~input_o\ & 
-- (!\B[30]~input_o\ $ (!\A[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000000100010000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:blk_i|ALT_INV_tmp~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \gen_blocks:7:blk_i|tmp~combout\);

-- Location: MLABCELL_X52_Y52_N18
\gen_blocks:7:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|cout~0_combout\ = ( \gen_blocks:6:blk_i|cout~0_combout\ & ( \A[27]~input_o\ & ( \gen_blocks:7:blk_i|tmp~combout\ ) ) ) # ( !\gen_blocks:6:blk_i|cout~0_combout\ & ( \A[27]~input_o\ & ( (\gen_blocks:7:blk_i|tmp~combout\ & 
-- (((!\gen_blocks:6:blk_i|tmp~combout\ & \gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\B[27]~input_o\))) ) ) ) # ( \gen_blocks:6:blk_i|cout~0_combout\ & ( !\A[27]~input_o\ & ( \gen_blocks:7:blk_i|tmp~combout\ ) ) ) # ( 
-- !\gen_blocks:6:blk_i|cout~0_combout\ & ( !\A[27]~input_o\ & ( (\gen_blocks:7:blk_i|tmp~combout\ & (!\gen_blocks:6:blk_i|tmp~combout\ & (\B[27]~input_o\ & \gen_blocks:6:blk_i|gen_fa:2:fa_i|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100010101010101010100000101010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:blk_i|ALT_INV_tmp~combout\,
	datab => \gen_blocks:6:blk_i|ALT_INV_tmp~combout\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \gen_blocks:6:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datae => \gen_blocks:6:blk_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \gen_blocks:7:blk_i|cout~0_combout\);

-- Location: LABCELL_X58_Y48_N12
\gen_blocks:7:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:blk_i|cout~1_combout\ = ( \B[31]~input_o\ & ( ((\gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:7:blk_i|tmp~combout\)) # (\A[31]~input_o\) ) ) # ( !\B[31]~input_o\ & ( (\A[31]~input_o\ & 
-- (\gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:7:blk_i|tmp~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[31]~input_o\,
	datac => \gen_blocks:7:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datad => \gen_blocks:7:blk_i|ALT_INV_tmp~combout\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \gen_blocks:7:blk_i|cout~1_combout\);

-- Location: IOIBUF_X59_Y49_N1
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LABCELL_X58_Y48_N36
\gen_blocks:8:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|gen_fa:0:fa_i|s~combout\ = ( \B[32]~input_o\ & ( !\A[32]~input_o\ $ (((\gen_blocks:7:blk_i|cout~1_combout\) # (\gen_blocks:7:blk_i|cout~0_combout\))) ) ) # ( !\B[32]~input_o\ & ( !\A[32]~input_o\ $ 
-- (((!\gen_blocks:7:blk_i|cout~0_combout\ & !\gen_blocks:7:blk_i|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101010010101100101011001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \gen_blocks:7:blk_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:7:blk_i|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \gen_blocks:8:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y51_N94
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LABCELL_X58_Y48_N38
\gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \B[32]~input_o\ & ( (!\A[32]~input_o\ & (!\gen_blocks:7:blk_i|cout~0_combout\ & !\gen_blocks:7:blk_i|cout~1_combout\)) ) ) # ( !\B[32]~input_o\ & ( (!\A[32]~input_o\) # 
-- ((!\gen_blocks:7:blk_i|cout~0_combout\ & !\gen_blocks:7:blk_i|cout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010101010111011101010101010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \gen_blocks:7:blk_i|ALT_INV_cout~0_combout\,
	datad => \gen_blocks:7:blk_i|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y48_N2
\gen_blocks:8:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|gen_fa:1:fa_i|s~combout\ = ( \gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[33]~input_o\ $ (!\B[33]~input_o\) ) ) # ( !\gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[33]~input_o\ $ (\B[33]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datab => \ALT_INV_B[33]~input_o\,
	dataf => \gen_blocks:8:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:8:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LABCELL_X58_Y48_N6
\gen_blocks:8:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|gen_fa:2:fa_i|s~combout\ = ( \A[33]~input_o\ & ( !\B[34]~input_o\ $ (!\A[34]~input_o\ $ (((!\gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[33]~input_o\)))) ) ) # ( !\A[33]~input_o\ & ( !\B[34]~input_o\ $ (!\A[34]~input_o\ $ 
-- (((!\gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[33]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111000110001110011100011010011100011000111001110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[34]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \gen_blocks:8:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y48_N63
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LABCELL_X58_Y48_N4
\gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \A[33]~input_o\ & ( (!\B[34]~input_o\ & (\A[34]~input_o\ & ((!\gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[33]~input_o\)))) # (\B[34]~input_o\ & 
-- ((!\gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\) # ((\B[33]~input_o\) # (\A[34]~input_o\)))) ) ) # ( !\A[33]~input_o\ & ( (!\B[34]~input_o\ & (!\gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\ & (\A[34]~input_o\ & \B[33]~input_o\))) # 
-- (\B[34]~input_o\ & (((!\gen_blocks:8:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[33]~input_o\)) # (\A[34]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100101011000000110010101100101011001111110010101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[34]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y48_N10
\gen_blocks:8:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|gen_fa:3:fa_i|s~combout\ = !\B[35]~input_o\ $ (!\A[35]~input_o\ $ (\gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[35]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datad => \gen_blocks:8:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:8:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X58_Y48_N0
\gen_blocks:8:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|tmp~0_combout\ = ( \B[32]~input_o\ & ( (!\A[32]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\))) ) ) # ( !\B[32]~input_o\ & ( (\A[32]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datab => \ALT_INV_B[33]~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \gen_blocks:8:blk_i|tmp~0_combout\);

-- Location: LABCELL_X58_Y48_N8
\gen_blocks:8:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|tmp~combout\ = ( \gen_blocks:8:blk_i|tmp~0_combout\ & ( (!\B[35]~input_o\ & (\A[35]~input_o\ & (!\A[34]~input_o\ $ (!\B[34]~input_o\)))) # (\B[35]~input_o\ & (!\A[35]~input_o\ & (!\A[34]~input_o\ $ (!\B[34]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[35]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	dataf => \gen_blocks:8:blk_i|ALT_INV_tmp~0_combout\,
	combout => \gen_blocks:8:blk_i|tmp~combout\);

-- Location: LABCELL_X58_Y48_N32
\gen_blocks:8:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|cout~0_combout\ = ( \gen_blocks:8:blk_i|tmp~combout\ & ( \A[31]~input_o\ & ( (((!\gen_blocks:7:blk_i|tmp~combout\ & \gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\B[31]~input_o\)) # (\gen_blocks:7:blk_i|cout~0_combout\) ) ) ) 
-- # ( \gen_blocks:8:blk_i|tmp~combout\ & ( !\A[31]~input_o\ & ( ((!\gen_blocks:7:blk_i|tmp~combout\ & (\gen_blocks:7:blk_i|gen_fa:2:fa_i|cout~0_combout\ & \B[31]~input_o\))) # (\gen_blocks:7:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011101100000000000000000011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:blk_i|ALT_INV_tmp~combout\,
	datab => \gen_blocks:7:blk_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:7:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[31]~input_o\,
	datae => \gen_blocks:8:blk_i|ALT_INV_tmp~combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \gen_blocks:8:blk_i|cout~0_combout\);

-- Location: LABCELL_X58_Y48_N30
\gen_blocks:8:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:8:blk_i|cout~1_combout\ = ( \gen_blocks:8:blk_i|tmp~combout\ & ( (\B[35]~input_o\ & \A[35]~input_o\) ) ) # ( !\gen_blocks:8:blk_i|tmp~combout\ & ( (!\B[35]~input_o\ & (\A[35]~input_o\ & \gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # 
-- (\B[35]~input_o\ & ((\gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\) # (\A[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[35]~input_o\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \gen_blocks:8:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \gen_blocks:8:blk_i|ALT_INV_tmp~combout\,
	combout => \gen_blocks:8:blk_i|cout~1_combout\);

-- Location: IOIBUF_X56_Y0_N63
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LABCELL_X58_Y12_N0
\gen_blocks:9:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|gen_fa:0:fa_i|s~combout\ = ( \B[36]~input_o\ & ( !\A[36]~input_o\ $ (((\gen_blocks:8:blk_i|cout~1_combout\) # (\gen_blocks:8:blk_i|cout~0_combout\))) ) ) # ( !\B[36]~input_o\ & ( !\A[36]~input_o\ $ 
-- (((!\gen_blocks:8:blk_i|cout~0_combout\ & !\gen_blocks:8:blk_i|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110001000011101111000100010001000011101111000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:blk_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:8:blk_i|ALT_INV_cout~1_combout\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \gen_blocks:9:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y9_N63
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X59_Y7_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LABCELL_X58_Y12_N2
\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \B[36]~input_o\ & ( (!\gen_blocks:8:blk_i|cout~0_combout\ & (!\gen_blocks:8:blk_i|cout~1_combout\ & !\A[36]~input_o\)) ) ) # ( !\B[36]~input_o\ & ( (!\A[36]~input_o\) # 
-- ((!\gen_blocks:8:blk_i|cout~0_combout\ & !\gen_blocks:8:blk_i|cout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:blk_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:8:blk_i|ALT_INV_cout~1_combout\,
	datac => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y12_N26
\gen_blocks:9:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|gen_fa:1:fa_i|s~combout\ = ( \gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\B[37]~input_o\ $ (!\A[37]~input_o\) ) ) # ( !\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\B[37]~input_o\ $ (\A[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	dataf => \gen_blocks:9:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:9:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y9_N1
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X59_Y12_N63
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LABCELL_X58_Y12_N28
\gen_blocks:9:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|gen_fa:2:fa_i|s~combout\ = ( \B[38]~input_o\ & ( !\A[38]~input_o\ $ (((!\B[37]~input_o\ & (!\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[37]~input_o\)) # (\B[37]~input_o\ & 
-- ((!\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[37]~input_o\))))) ) ) # ( !\B[38]~input_o\ & ( !\A[38]~input_o\ $ (((!\B[37]~input_o\ & ((!\A[37]~input_o\) # (\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\))) # (\B[37]~input_o\ & 
-- (\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\ & !\A[37]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111010010010010111101001010110100001011011011010000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \gen_blocks:9:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[38]~input_o\,
	combout => \gen_blocks:9:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: LABCELL_X58_Y12_N30
\gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \B[38]~input_o\ & ( ((!\B[37]~input_o\ & (!\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[37]~input_o\)) # (\B[37]~input_o\ & ((!\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\) # 
-- (\A[37]~input_o\)))) # (\A[38]~input_o\) ) ) # ( !\B[38]~input_o\ & ( (\A[38]~input_o\ & ((!\B[37]~input_o\ & (!\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[37]~input_o\)) # (\B[37]~input_o\ & 
-- ((!\gen_blocks:9:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[37]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001101000000000100110101001101111111110100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \gen_blocks:9:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_B[38]~input_o\,
	combout => \gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: IOIBUF_X56_Y0_N32
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LABCELL_X58_Y12_N14
\gen_blocks:9:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|gen_fa:3:fa_i|s~combout\ = ( \B[39]~input_o\ & ( !\gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\ $ (\A[39]~input_o\) ) ) # ( !\B[39]~input_o\ & ( !\gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\ $ (!\A[39]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:9:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_B[39]~input_o\,
	combout => \gen_blocks:9:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X58_Y12_N24
\gen_blocks:9:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|tmp~0_combout\ = ( \B[36]~input_o\ & ( (!\A[36]~input_o\ & (!\B[37]~input_o\ $ (!\A[37]~input_o\))) ) ) # ( !\B[36]~input_o\ & ( (\A[36]~input_o\ & (!\B[37]~input_o\ $ (!\A[37]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \gen_blocks:9:blk_i|tmp~0_combout\);

-- Location: LABCELL_X58_Y12_N36
\gen_blocks:9:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|tmp~combout\ = ( \B[38]~input_o\ & ( (\gen_blocks:9:blk_i|tmp~0_combout\ & (!\A[38]~input_o\ & (!\B[39]~input_o\ $ (!\A[39]~input_o\)))) ) ) # ( !\B[38]~input_o\ & ( (\gen_blocks:9:blk_i|tmp~0_combout\ & (\A[38]~input_o\ & 
-- (!\B[39]~input_o\ $ (!\A[39]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \gen_blocks:9:blk_i|ALT_INV_tmp~0_combout\,
	datad => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_B[38]~input_o\,
	combout => \gen_blocks:9:blk_i|tmp~combout\);

-- Location: LABCELL_X58_Y48_N16
\gen_blocks:9:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|cout~0_combout\ = ( \gen_blocks:9:blk_i|tmp~combout\ & ( \B[35]~input_o\ & ( (((\gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:8:blk_i|tmp~combout\)) # (\gen_blocks:8:blk_i|cout~0_combout\)) # (\A[35]~input_o\) ) ) ) 
-- # ( \gen_blocks:9:blk_i|tmp~combout\ & ( !\B[35]~input_o\ & ( ((\gen_blocks:8:blk_i|gen_fa:2:fa_i|cout~0_combout\ & (\A[35]~input_o\ & !\gen_blocks:8:blk_i|tmp~combout\))) # (\gen_blocks:8:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111100000000000000000111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:8:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \gen_blocks:8:blk_i|ALT_INV_cout~0_combout\,
	datad => \gen_blocks:8:blk_i|ALT_INV_tmp~combout\,
	datae => \gen_blocks:9:blk_i|ALT_INV_tmp~combout\,
	dataf => \ALT_INV_B[35]~input_o\,
	combout => \gen_blocks:9:blk_i|cout~0_combout\);

-- Location: LABCELL_X58_Y12_N38
\gen_blocks:9:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:9:blk_i|cout~1_combout\ = (!\B[39]~input_o\ & (\A[39]~input_o\ & (\gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:9:blk_i|tmp~combout\))) # (\B[39]~input_o\ & (((\gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\ & 
-- !\gen_blocks:9:blk_i|tmp~combout\)) # (\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010001000101110001000100010111000100010001011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \gen_blocks:9:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datad => \gen_blocks:9:blk_i|ALT_INV_tmp~combout\,
	combout => \gen_blocks:9:blk_i|cout~1_combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LABCELL_X58_Y12_N12
\gen_blocks:10:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|gen_fa:0:fa_i|s~combout\ = ( \A[40]~input_o\ & ( !\B[40]~input_o\ $ (((\gen_blocks:9:blk_i|cout~1_combout\) # (\gen_blocks:9:blk_i|cout~0_combout\))) ) ) # ( !\A[40]~input_o\ & ( !\B[40]~input_o\ $ 
-- (((!\gen_blocks:9:blk_i|cout~0_combout\ & !\gen_blocks:9:blk_i|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000010100000010111111010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:9:blk_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:9:blk_i|ALT_INV_cout~1_combout\,
	datad => \ALT_INV_B[40]~input_o\,
	dataf => \ALT_INV_A[40]~input_o\,
	combout => \gen_blocks:10:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y10_N94
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LABCELL_X58_Y12_N22
\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \gen_blocks:9:blk_i|cout~1_combout\ & ( (!\B[40]~input_o\ & !\A[40]~input_o\) ) ) # ( !\gen_blocks:9:blk_i|cout~1_combout\ & ( (!\B[40]~input_o\ & ((!\A[40]~input_o\) # 
-- (!\gen_blocks:9:blk_i|cout~0_combout\))) # (\B[40]~input_o\ & (!\A[40]~input_o\ & !\gen_blocks:9:blk_i|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datad => \gen_blocks:9:blk_i|ALT_INV_cout~0_combout\,
	dataf => \gen_blocks:9:blk_i|ALT_INV_cout~1_combout\,
	combout => \gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X59_Y12_N94
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LABCELL_X58_Y12_N6
\gen_blocks:10:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|gen_fa:1:fa_i|s~combout\ = ( \gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( \A[41]~input_o\ & ( !\B[41]~input_o\ ) ) ) # ( !\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( \A[41]~input_o\ & ( \B[41]~input_o\ ) ) ) # ( 
-- \gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[41]~input_o\ & ( \B[41]~input_o\ ) ) ) # ( !\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[41]~input_o\ & ( !\B[41]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[41]~input_o\,
	datae => \gen_blocks:10:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \gen_blocks:10:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y12_N32
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LABCELL_X58_Y12_N10
\gen_blocks:10:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|gen_fa:2:fa_i|s~combout\ = ( \A[41]~input_o\ & ( !\A[42]~input_o\ $ (!\B[42]~input_o\ $ (((!\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[41]~input_o\)))) ) ) # ( !\A[41]~input_o\ & ( !\A[42]~input_o\ $ (!\B[42]~input_o\ $ 
-- (((\B[41]~input_o\ & !\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110011010011001011001101010100110010110011010011001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datab => \ALT_INV_B[41]~input_o\,
	datac => \gen_blocks:10:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[42]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \gen_blocks:10:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: LABCELL_X58_Y12_N8
\gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \A[41]~input_o\ & ( (!\A[42]~input_o\ & (\B[42]~input_o\ & ((!\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[41]~input_o\)))) # (\A[42]~input_o\ & 
-- (((!\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[42]~input_o\)) # (\B[41]~input_o\))) ) ) # ( !\A[41]~input_o\ & ( (!\A[42]~input_o\ & (\B[41]~input_o\ & (\B[42]~input_o\ & !\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\))) # 
-- (\A[42]~input_o\ & (((\B[41]~input_o\ & !\gen_blocks:10:blk_i|gen_fa:0:fa_i|cout~0_combout\)) # (\B[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000101000101110000010101011111000101110101111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datab => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \gen_blocks:10:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: IOIBUF_X59_Y10_N63
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X58_Y18_N2
\gen_blocks:10:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|gen_fa:3:fa_i|s~combout\ = ( \A[43]~input_o\ & ( \B[43]~input_o\ & ( \gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ ) ) ) # ( !\A[43]~input_o\ & ( \B[43]~input_o\ & ( !\gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ ) ) ) # ( 
-- \A[43]~input_o\ & ( !\B[43]~input_o\ & ( !\gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ ) ) ) # ( !\A[43]~input_o\ & ( !\B[43]~input_o\ & ( \gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_blocks:10:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \gen_blocks:10:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y18_N32
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LABCELL_X58_Y12_N20
\gen_blocks:10:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|tmp~0_combout\ = ( \A[41]~input_o\ & ( (!\B[41]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\))) ) ) # ( !\A[41]~input_o\ & ( (\B[41]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \gen_blocks:10:blk_i|tmp~0_combout\);

-- Location: LABCELL_X58_Y12_N34
\gen_blocks:10:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|tmp~combout\ = ( \B[43]~input_o\ & ( \gen_blocks:10:blk_i|tmp~0_combout\ & ( (!\A[43]~input_o\ & (!\A[42]~input_o\ $ (!\B[42]~input_o\))) ) ) ) # ( !\B[43]~input_o\ & ( \gen_blocks:10:blk_i|tmp~0_combout\ & ( (\A[43]~input_o\ & 
-- (!\A[42]~input_o\ $ (!\B[42]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001001000100100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_B[42]~input_o\,
	datae => \ALT_INV_B[43]~input_o\,
	dataf => \gen_blocks:10:blk_i|ALT_INV_tmp~0_combout\,
	combout => \gen_blocks:10:blk_i|tmp~combout\);

-- Location: LABCELL_X58_Y12_N18
\gen_blocks:10:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|cout~0_combout\ = ( \A[39]~input_o\ & ( \B[39]~input_o\ & ( \gen_blocks:10:blk_i|tmp~combout\ ) ) ) # ( !\A[39]~input_o\ & ( \B[39]~input_o\ & ( (\gen_blocks:10:blk_i|tmp~combout\ & (((\gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\ 
-- & !\gen_blocks:9:blk_i|tmp~combout\)) # (\gen_blocks:9:blk_i|cout~0_combout\))) ) ) ) # ( \A[39]~input_o\ & ( !\B[39]~input_o\ & ( (\gen_blocks:10:blk_i|tmp~combout\ & (((\gen_blocks:9:blk_i|gen_fa:2:fa_i|cout~0_combout\ & 
-- !\gen_blocks:9:blk_i|tmp~combout\)) # (\gen_blocks:9:blk_i|cout~0_combout\))) ) ) ) # ( !\A[39]~input_o\ & ( !\B[39]~input_o\ & ( (\gen_blocks:9:blk_i|cout~0_combout\ & \gen_blocks:10:blk_i|tmp~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000111010100000000011101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:9:blk_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:9:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:9:blk_i|ALT_INV_tmp~combout\,
	datad => \gen_blocks:10:blk_i|ALT_INV_tmp~combout\,
	datae => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_B[39]~input_o\,
	combout => \gen_blocks:10:blk_i|cout~0_combout\);

-- Location: LABCELL_X58_Y18_N4
\gen_blocks:10:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:10:blk_i|cout~1_combout\ = ( \B[43]~input_o\ & ( ((\gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:10:blk_i|tmp~combout\)) # (\A[43]~input_o\) ) ) # ( !\B[43]~input_o\ & ( (\gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ & 
-- (!\gen_blocks:10:blk_i|tmp~combout\ & \A[43]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:10:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:10:blk_i|ALT_INV_tmp~combout\,
	datad => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \gen_blocks:10:blk_i|cout~1_combout\);

-- Location: IOIBUF_X59_Y18_N1
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LABCELL_X58_Y18_N6
\gen_blocks:11:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|gen_fa:0:fa_i|s~combout\ = ( \B[44]~input_o\ & ( !\A[44]~input_o\ $ (((\gen_blocks:10:blk_i|cout~1_combout\) # (\gen_blocks:10:blk_i|cout~0_combout\))) ) ) # ( !\B[44]~input_o\ & ( !\A[44]~input_o\ $ 
-- (((!\gen_blocks:10:blk_i|cout~0_combout\ & !\gen_blocks:10:blk_i|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datac => \gen_blocks:10:blk_i|ALT_INV_cout~0_combout\,
	datad => \gen_blocks:10:blk_i|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_B[44]~input_o\,
	combout => \gen_blocks:11:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: LABCELL_X58_Y18_N10
\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( !\A[44]~input_o\ & ( \B[44]~input_o\ & ( (!\gen_blocks:10:blk_i|cout~1_combout\ & !\gen_blocks:10:blk_i|cout~0_combout\) ) ) ) # ( \A[44]~input_o\ & ( !\B[44]~input_o\ & ( 
-- (!\gen_blocks:10:blk_i|cout~1_combout\ & !\gen_blocks:10:blk_i|cout~0_combout\) ) ) ) # ( !\A[44]~input_o\ & ( !\B[44]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:10:blk_i|ALT_INV_cout~1_combout\,
	datac => \gen_blocks:10:blk_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[44]~input_o\,
	combout => \gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X59_Y16_N94
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LABCELL_X58_Y18_N14
\gen_blocks:11:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|gen_fa:1:fa_i|s~combout\ = ( \A[45]~input_o\ & ( \B[45]~input_o\ & ( !\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ ) ) ) # ( !\A[45]~input_o\ & ( \B[45]~input_o\ & ( \gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ ) ) ) # ( 
-- \A[45]~input_o\ & ( !\B[45]~input_o\ & ( \gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ ) ) ) # ( !\A[45]~input_o\ & ( !\B[45]~input_o\ & ( !\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_blocks:11:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \gen_blocks:11:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y16_N63
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X59_Y16_N32
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LABCELL_X58_Y18_N36
\gen_blocks:11:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|gen_fa:2:fa_i|s~combout\ = ( \B[46]~input_o\ & ( \B[45]~input_o\ & ( !\A[46]~input_o\ $ (((!\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[45]~input_o\))) ) ) ) # ( !\B[46]~input_o\ & ( \B[45]~input_o\ & ( !\A[46]~input_o\ 
-- $ (((\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ & !\A[45]~input_o\))) ) ) ) # ( \B[46]~input_o\ & ( !\B[45]~input_o\ & ( !\A[46]~input_o\ $ (((!\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[45]~input_o\))) ) ) ) # ( !\B[46]~input_o\ & ( 
-- !\B[45]~input_o\ & ( !\A[46]~input_o\ $ (((!\A[45]~input_o\) # (\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011111100000011110011000011111100000011110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:11:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	datae => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \gen_blocks:11:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y18_N94
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X59_Y19_N63
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LABCELL_X58_Y18_N22
\gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \B[45]~input_o\ & ( (!\A[46]~input_o\ & (\B[46]~input_o\ & ((!\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[45]~input_o\)))) # (\A[46]~input_o\ & 
-- (((!\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[45]~input_o\)) # (\B[46]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (!\A[46]~input_o\ & (\B[46]~input_o\ & (!\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[45]~input_o\))) # 
-- (\A[46]~input_o\ & (((!\gen_blocks:11:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[45]~input_o\)) # (\B[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110001000100010111000101110001011101110111000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \ALT_INV_B[46]~input_o\,
	datac => \gen_blocks:11:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y18_N24
\gen_blocks:11:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|gen_fa:3:fa_i|s~combout\ = !\A[47]~input_o\ $ (!\B[47]~input_o\ $ (\gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datab => \ALT_INV_B[47]~input_o\,
	datad => \gen_blocks:11:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:11:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y13_N94
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LABCELL_X58_Y18_N28
\gen_blocks:11:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|tmp~0_combout\ = ( !\A[45]~input_o\ & ( \B[45]~input_o\ & ( !\B[44]~input_o\ $ (!\A[44]~input_o\) ) ) ) # ( \A[45]~input_o\ & ( !\B[45]~input_o\ & ( !\B[44]~input_o\ $ (!\A[44]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000111100001111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \gen_blocks:11:blk_i|tmp~0_combout\);

-- Location: LABCELL_X58_Y18_N20
\gen_blocks:11:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|tmp~combout\ = ( \A[47]~input_o\ & ( (\gen_blocks:11:blk_i|tmp~0_combout\ & (!\B[47]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\)))) ) ) # ( !\A[47]~input_o\ & ( (\gen_blocks:11:blk_i|tmp~0_combout\ & (\B[47]~input_o\ & 
-- (!\A[46]~input_o\ $ (!\B[46]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \ALT_INV_B[46]~input_o\,
	datac => \gen_blocks:11:blk_i|ALT_INV_tmp~0_combout\,
	datad => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \gen_blocks:11:blk_i|tmp~combout\);

-- Location: LABCELL_X58_Y18_N32
\gen_blocks:11:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|cout~0_combout\ = ( \A[43]~input_o\ & ( \B[43]~input_o\ & ( \gen_blocks:11:blk_i|tmp~combout\ ) ) ) # ( !\A[43]~input_o\ & ( \B[43]~input_o\ & ( (\gen_blocks:11:blk_i|tmp~combout\ & 
-- (((\gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:10:blk_i|tmp~combout\)) # (\gen_blocks:10:blk_i|cout~0_combout\))) ) ) ) # ( \A[43]~input_o\ & ( !\B[43]~input_o\ & ( (\gen_blocks:11:blk_i|tmp~combout\ & 
-- (((\gen_blocks:10:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:10:blk_i|tmp~combout\)) # (\gen_blocks:10:blk_i|cout~0_combout\))) ) ) ) # ( !\A[43]~input_o\ & ( !\B[43]~input_o\ & ( (\gen_blocks:11:blk_i|tmp~combout\ & 
-- \gen_blocks:10:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000100000101010100010000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:11:blk_i|ALT_INV_tmp~combout\,
	datab => \gen_blocks:10:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:10:blk_i|ALT_INV_tmp~combout\,
	datad => \gen_blocks:10:blk_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \gen_blocks:11:blk_i|cout~0_combout\);

-- Location: LABCELL_X58_Y18_N26
\gen_blocks:11:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:11:blk_i|cout~1_combout\ = ( \gen_blocks:11:blk_i|tmp~combout\ & ( (\A[47]~input_o\ & \B[47]~input_o\) ) ) # ( !\gen_blocks:11:blk_i|tmp~combout\ & ( (!\A[47]~input_o\ & (\B[47]~input_o\ & \gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # 
-- (\A[47]~input_o\ & ((\gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\) # (\B[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datab => \ALT_INV_B[47]~input_o\,
	datad => \gen_blocks:11:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \gen_blocks:11:blk_i|ALT_INV_tmp~combout\,
	combout => \gen_blocks:11:blk_i|cout~1_combout\);

-- Location: IOIBUF_X59_Y21_N1
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LABCELL_X58_Y21_N0
\gen_blocks:12:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|gen_fa:0:fa_i|s~combout\ = ( \gen_blocks:11:blk_i|cout~1_combout\ & ( \B[48]~input_o\ & ( \A[48]~input_o\ ) ) ) # ( !\gen_blocks:11:blk_i|cout~1_combout\ & ( \B[48]~input_o\ & ( !\A[48]~input_o\ $ 
-- (\gen_blocks:11:blk_i|cout~0_combout\) ) ) ) # ( \gen_blocks:11:blk_i|cout~1_combout\ & ( !\B[48]~input_o\ & ( !\A[48]~input_o\ ) ) ) # ( !\gen_blocks:11:blk_i|cout~1_combout\ & ( !\B[48]~input_o\ & ( !\A[48]~input_o\ $ 
-- (!\gen_blocks:11:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101010101010101010100101101001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[48]~input_o\,
	datac => \gen_blocks:11:blk_i|ALT_INV_cout~0_combout\,
	datae => \gen_blocks:11:blk_i|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \gen_blocks:12:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y21_N32
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LABCELL_X58_Y21_N4
\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( !\gen_blocks:11:blk_i|cout~1_combout\ & ( \B[48]~input_o\ & ( (!\gen_blocks:11:blk_i|cout~0_combout\ & !\A[48]~input_o\) ) ) ) # ( \gen_blocks:11:blk_i|cout~1_combout\ & ( !\B[48]~input_o\ & ( 
-- !\A[48]~input_o\ ) ) ) # ( !\gen_blocks:11:blk_i|cout~1_combout\ & ( !\B[48]~input_o\ & ( (!\gen_blocks:11:blk_i|cout~0_combout\) # (!\A[48]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111100001111000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:11:blk_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[48]~input_o\,
	datae => \gen_blocks:11:blk_i|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X59_Y21_N94
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LABCELL_X58_Y21_N10
\gen_blocks:12:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|gen_fa:1:fa_i|s~combout\ = ( \gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( \A[49]~input_o\ & ( !\B[49]~input_o\ ) ) ) # ( !\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( \A[49]~input_o\ & ( \B[49]~input_o\ ) ) ) # ( 
-- \gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[49]~input_o\ & ( \B[49]~input_o\ ) ) ) # ( !\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[49]~input_o\ & ( !\B[49]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101010101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datae => \gen_blocks:12:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \gen_blocks:12:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y22_N94
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X59_Y22_N63
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LABCELL_X58_Y21_N34
\gen_blocks:12:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|gen_fa:2:fa_i|s~combout\ = ( \B[50]~input_o\ & ( \A[49]~input_o\ & ( !\A[50]~input_o\ $ (((!\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[49]~input_o\))) ) ) ) # ( !\B[50]~input_o\ & ( \A[49]~input_o\ & ( !\A[50]~input_o\ 
-- $ (((!\B[49]~input_o\ & \gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\))) ) ) ) # ( \B[50]~input_o\ & ( !\A[49]~input_o\ & ( !\A[50]~input_o\ $ (((\B[49]~input_o\ & !\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\))) ) ) ) # ( !\B[50]~input_o\ & ( 
-- !\A[49]~input_o\ & ( !\A[50]~input_o\ $ (((!\B[49]~input_o\) # (\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000110011100110011100110011001100011001100011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datad => \gen_blocks:12:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \gen_blocks:12:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y23_N1
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X59_Y23_N63
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LABCELL_X58_Y21_N36
\gen_blocks:12:blk_i|prop[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|prop[3]~0_combout\ = ( \A[51]~input_o\ & ( !\B[51]~input_o\ ) ) # ( !\A[51]~input_o\ & ( \B[51]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[51]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \gen_blocks:12:blk_i|prop[3]~0_combout\);

-- Location: LABCELL_X58_Y21_N20
\gen_blocks:12:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|gen_fa:3:fa_i|s~combout\ = ( \B[50]~input_o\ & ( \A[49]~input_o\ & ( !\gen_blocks:12:blk_i|prop[3]~0_combout\ $ (((!\B[49]~input_o\ & (\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ & !\A[50]~input_o\)))) ) ) ) # ( 
-- !\B[50]~input_o\ & ( \A[49]~input_o\ & ( !\gen_blocks:12:blk_i|prop[3]~0_combout\ $ (((!\A[50]~input_o\) # ((!\B[49]~input_o\ & \gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\)))) ) ) ) # ( \B[50]~input_o\ & ( !\A[49]~input_o\ & ( 
-- !\gen_blocks:12:blk_i|prop[3]~0_combout\ $ (((!\A[50]~input_o\ & ((!\B[49]~input_o\) # (\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\))))) ) ) ) # ( !\B[50]~input_o\ & ( !\A[49]~input_o\ & ( !\gen_blocks:12:blk_i|prop[3]~0_combout\ $ 
-- (((!\B[49]~input_o\) # ((!\A[50]~input_o\) # (\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100011011000111100110000110011110001101100011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datab => \gen_blocks:12:blk_i|ALT_INV_prop[3]~0_combout\,
	datac => \gen_blocks:12:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[50]~input_o\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \gen_blocks:12:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X58_Y21_N38
\gen_blocks:12:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|tmp~0_combout\ = ( \A[49]~input_o\ & ( (!\B[49]~input_o\ & (!\A[48]~input_o\ $ (!\B[48]~input_o\))) ) ) # ( !\A[49]~input_o\ & ( (\B[49]~input_o\ & (!\A[48]~input_o\ $ (!\B[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \gen_blocks:12:blk_i|tmp~0_combout\);

-- Location: LABCELL_X58_Y21_N30
\gen_blocks:12:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|tmp~combout\ = ( \A[50]~input_o\ & ( \gen_blocks:12:blk_i|tmp~0_combout\ & ( (!\B[50]~input_o\ & \gen_blocks:12:blk_i|prop[3]~0_combout\) ) ) ) # ( !\A[50]~input_o\ & ( \gen_blocks:12:blk_i|tmp~0_combout\ & ( (\B[50]~input_o\ & 
-- \gen_blocks:12:blk_i|prop[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datab => \gen_blocks:12:blk_i|ALT_INV_prop[3]~0_combout\,
	datae => \ALT_INV_A[50]~input_o\,
	dataf => \gen_blocks:12:blk_i|ALT_INV_tmp~0_combout\,
	combout => \gen_blocks:12:blk_i|tmp~combout\);

-- Location: IOIBUF_X59_Y33_N32
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X59_Y31_N1
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X58_Y33_N22
\gen_blocks:13:blk_i|prop[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|prop[0]~0_combout\ = !\B[52]~input_o\ $ (!\A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[52]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	combout => \gen_blocks:13:blk_i|prop[0]~0_combout\);

-- Location: LABCELL_X58_Y21_N26
\gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \B[50]~input_o\ & ( \A[49]~input_o\ & ( (!\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\) # ((\B[49]~input_o\) # (\A[50]~input_o\)) ) ) ) # ( !\B[50]~input_o\ & ( \A[49]~input_o\ & ( 
-- (\A[50]~input_o\ & ((!\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\B[49]~input_o\))) ) ) ) # ( \B[50]~input_o\ & ( !\A[49]~input_o\ & ( ((!\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \B[49]~input_o\)) # (\A[50]~input_o\) ) ) ) # ( 
-- !\B[50]~input_o\ & ( !\A[49]~input_o\ & ( (!\gen_blocks:12:blk_i|gen_fa:0:fa_i|cout~0_combout\ & (\A[50]~input_o\ & \B[49]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000011111010111100001010000011111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:12:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y18_N16
\gen_blocks:12:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|cout~0_combout\ = ( \gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( \A[47]~input_o\ & ( (\gen_blocks:12:blk_i|tmp~combout\ & (((!\gen_blocks:11:blk_i|tmp~combout\) # (\B[47]~input_o\)) # (\gen_blocks:11:blk_i|cout~0_combout\))) 
-- ) ) ) # ( !\gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( \A[47]~input_o\ & ( (\gen_blocks:12:blk_i|tmp~combout\ & ((\B[47]~input_o\) # (\gen_blocks:11:blk_i|cout~0_combout\))) ) ) ) # ( \gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( 
-- !\A[47]~input_o\ & ( (\gen_blocks:12:blk_i|tmp~combout\ & (((\B[47]~input_o\ & !\gen_blocks:11:blk_i|tmp~combout\)) # (\gen_blocks:11:blk_i|cout~0_combout\))) ) ) ) # ( !\gen_blocks:11:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( !\A[47]~input_o\ & ( 
-- (\gen_blocks:11:blk_i|cout~0_combout\ & \gen_blocks:12:blk_i|tmp~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001110000010100000111000001110000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:11:blk_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[47]~input_o\,
	datac => \gen_blocks:12:blk_i|ALT_INV_tmp~combout\,
	datad => \gen_blocks:11:blk_i|ALT_INV_tmp~combout\,
	datae => \gen_blocks:11:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \gen_blocks:12:blk_i|cout~0_combout\);

-- Location: LABCELL_X58_Y33_N26
\gen_blocks:13:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|gen_fa:0:fa_i|s~combout\ = ( \gen_blocks:12:blk_i|cout~0_combout\ & ( \A[51]~input_o\ & ( !\gen_blocks:13:blk_i|prop[0]~0_combout\ ) ) ) # ( !\gen_blocks:12:blk_i|cout~0_combout\ & ( \A[51]~input_o\ & ( 
-- !\gen_blocks:13:blk_i|prop[0]~0_combout\ $ (((!\B[51]~input_o\ & ((!\gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\) # (\gen_blocks:12:blk_i|tmp~combout\))))) ) ) ) # ( \gen_blocks:12:blk_i|cout~0_combout\ & ( !\A[51]~input_o\ & ( 
-- !\gen_blocks:13:blk_i|prop[0]~0_combout\ ) ) ) # ( !\gen_blocks:12:blk_i|cout~0_combout\ & ( !\A[51]~input_o\ & ( !\gen_blocks:13:blk_i|prop[0]~0_combout\ $ ((((!\B[51]~input_o\) # (!\gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # 
-- (\gen_blocks:12:blk_i|tmp~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111001110011001100110000111100100111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:12:blk_i|ALT_INV_tmp~combout\,
	datab => \gen_blocks:13:blk_i|ALT_INV_prop[0]~0_combout\,
	datac => \ALT_INV_B[51]~input_o\,
	datad => \gen_blocks:12:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datae => \gen_blocks:12:blk_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \gen_blocks:13:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y33_N1
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X59_Y33_N63
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LABCELL_X58_Y33_N8
\gen_blocks:12:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:12:blk_i|cout~1_combout\ = ( \A[51]~input_o\ & ( ((\gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\ & !\gen_blocks:12:blk_i|tmp~combout\)) # (\B[51]~input_o\) ) ) # ( !\A[51]~input_o\ & ( (\gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\ & 
-- (!\gen_blocks:12:blk_i|tmp~combout\ & \B[51]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:12:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:12:blk_i|ALT_INV_tmp~combout\,
	datad => \ALT_INV_B[51]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \gen_blocks:12:blk_i|cout~1_combout\);

-- Location: LABCELL_X58_Y33_N10
\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \A[52]~input_o\ & ( (!\gen_blocks:12:blk_i|cout~0_combout\ & (!\B[52]~input_o\ & !\gen_blocks:12:blk_i|cout~1_combout\)) ) ) # ( !\A[52]~input_o\ & ( (!\B[52]~input_o\) # 
-- ((!\gen_blocks:12:blk_i|cout~0_combout\ & !\gen_blocks:12:blk_i|cout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111111001111000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:12:blk_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \gen_blocks:12:blk_i|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y33_N12
\gen_blocks:13:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|gen_fa:1:fa_i|s~combout\ = ( \gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[53]~input_o\ $ (!\B[53]~input_o\) ) ) # ( !\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[53]~input_o\ $ (\B[53]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \gen_blocks:13:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:13:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y36_N1
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LABCELL_X58_Y33_N18
\gen_blocks:13:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|gen_fa:2:fa_i|s~combout\ = ( \B[54]~input_o\ & ( !\A[54]~input_o\ $ (((!\B[53]~input_o\ & (!\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[53]~input_o\)) # (\B[53]~input_o\ & 
-- ((!\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[53]~input_o\))))) ) ) # ( !\B[54]~input_o\ & ( !\A[54]~input_o\ $ (((!\B[53]~input_o\ & ((!\A[53]~input_o\) # (\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\))) # (\B[53]~input_o\ & 
-- (\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\ & !\A[53]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001111000110011000111100011010011100001110011001110000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[53]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \gen_blocks:13:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \gen_blocks:13:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y37_N32
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LABCELL_X58_Y33_N20
\gen_blocks:13:blk_i|prop[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|prop[3]~1_combout\ = ( \B[55]~input_o\ & ( !\A[55]~input_o\ ) ) # ( !\B[55]~input_o\ & ( \A[55]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \gen_blocks:13:blk_i|prop[3]~1_combout\);

-- Location: LABCELL_X58_Y33_N2
\gen_blocks:13:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|gen_fa:3:fa_i|s~combout\ = ( \A[53]~input_o\ & ( \B[54]~input_o\ & ( !\gen_blocks:13:blk_i|prop[3]~1_combout\ $ (((!\B[53]~input_o\ & (\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\ & !\A[54]~input_o\)))) ) ) ) # ( 
-- !\A[53]~input_o\ & ( \B[54]~input_o\ & ( !\gen_blocks:13:blk_i|prop[3]~1_combout\ $ (((!\A[54]~input_o\ & ((!\B[53]~input_o\) # (\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\))))) ) ) ) # ( \A[53]~input_o\ & ( !\B[54]~input_o\ & ( 
-- !\gen_blocks:13:blk_i|prop[3]~1_combout\ $ (((!\A[54]~input_o\) # ((!\B[53]~input_o\ & \gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\)))) ) ) ) # ( !\A[53]~input_o\ & ( !\B[54]~input_o\ & ( !\gen_blocks:13:blk_i|prop[3]~1_combout\ $ 
-- (((!\B[53]~input_o\) # ((!\A[54]~input_o\) # (\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111011000011011111001001001111101100001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[53]~input_o\,
	datab => \gen_blocks:13:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[54]~input_o\,
	datad => \gen_blocks:13:blk_i|ALT_INV_prop[3]~1_combout\,
	datae => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \gen_blocks:13:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X58_Y33_N4
\gen_blocks:13:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|tmp~combout\ = ( \B[53]~input_o\ & ( \B[54]~input_o\ & ( (!\A[53]~input_o\ & (!\A[54]~input_o\ & (\gen_blocks:13:blk_i|prop[3]~1_combout\ & \gen_blocks:13:blk_i|prop[0]~0_combout\))) ) ) ) # ( !\B[53]~input_o\ & ( \B[54]~input_o\ & ( 
-- (\A[53]~input_o\ & (!\A[54]~input_o\ & (\gen_blocks:13:blk_i|prop[3]~1_combout\ & \gen_blocks:13:blk_i|prop[0]~0_combout\))) ) ) ) # ( \B[53]~input_o\ & ( !\B[54]~input_o\ & ( (!\A[53]~input_o\ & (\A[54]~input_o\ & (\gen_blocks:13:blk_i|prop[3]~1_combout\ 
-- & \gen_blocks:13:blk_i|prop[0]~0_combout\))) ) ) ) # ( !\B[53]~input_o\ & ( !\B[54]~input_o\ & ( (\A[53]~input_o\ & (\A[54]~input_o\ & (\gen_blocks:13:blk_i|prop[3]~1_combout\ & \gen_blocks:13:blk_i|prop[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000001000000000000001000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \gen_blocks:13:blk_i|ALT_INV_prop[3]~1_combout\,
	datad => \gen_blocks:13:blk_i|ALT_INV_prop[0]~0_combout\,
	datae => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \gen_blocks:13:blk_i|tmp~combout\);

-- Location: LABCELL_X58_Y33_N16
\gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \B[54]~input_o\ & ( ((!\B[53]~input_o\ & (\A[53]~input_o\ & !\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\)) # (\B[53]~input_o\ & ((!\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\) # 
-- (\A[53]~input_o\)))) # (\A[54]~input_o\) ) ) # ( !\B[54]~input_o\ & ( (\A[54]~input_o\ & ((!\B[53]~input_o\ & (\A[53]~input_o\ & !\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\)) # (\B[53]~input_o\ & 
-- ((!\gen_blocks:13:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[53]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000001000100110000000101111111001101110111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[53]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \gen_blocks:13:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y33_N28
\gen_blocks:13:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|cout~0_combout\ = ( \gen_blocks:13:blk_i|tmp~combout\ & ( \A[51]~input_o\ & ( (((!\gen_blocks:12:blk_i|tmp~combout\ & \gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\gen_blocks:12:blk_i|cout~0_combout\)) # (\B[51]~input_o\) ) 
-- ) ) # ( \gen_blocks:13:blk_i|tmp~combout\ & ( !\A[51]~input_o\ & ( ((!\gen_blocks:12:blk_i|tmp~combout\ & (\B[51]~input_o\ & \gen_blocks:12:blk_i|gen_fa:2:fa_i|cout~0_combout\))) # (\gen_blocks:12:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000101111111100000000000000000011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:12:blk_i|ALT_INV_tmp~combout\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \gen_blocks:12:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datad => \gen_blocks:12:blk_i|ALT_INV_cout~0_combout\,
	datae => \gen_blocks:13:blk_i|ALT_INV_tmp~combout\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \gen_blocks:13:blk_i|cout~0_combout\);

-- Location: IOIBUF_X59_Y26_N1
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LABCELL_X58_Y30_N0
\gen_blocks:14:blk_i|prop[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|prop[0]~0_combout\ = !\B[56]~input_o\ $ (!\A[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_A[56]~input_o\,
	combout => \gen_blocks:14:blk_i|prop[0]~0_combout\);

-- Location: LABCELL_X58_Y33_N34
\gen_blocks:14:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|gen_fa:0:fa_i|s~combout\ = ( \gen_blocks:14:blk_i|prop[0]~0_combout\ & ( \B[55]~input_o\ & ( (!\A[55]~input_o\ & (!\gen_blocks:13:blk_i|cout~0_combout\ & ((!\gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\) # 
-- (\gen_blocks:13:blk_i|tmp~combout\)))) ) ) ) # ( !\gen_blocks:14:blk_i|prop[0]~0_combout\ & ( \B[55]~input_o\ & ( (((!\gen_blocks:13:blk_i|tmp~combout\ & \gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\gen_blocks:13:blk_i|cout~0_combout\)) # 
-- (\A[55]~input_o\) ) ) ) # ( \gen_blocks:14:blk_i|prop[0]~0_combout\ & ( !\B[55]~input_o\ & ( (!\gen_blocks:13:blk_i|cout~0_combout\ & (((!\gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\) # (!\A[55]~input_o\)) # (\gen_blocks:13:blk_i|tmp~combout\))) ) ) 
-- ) # ( !\gen_blocks:14:blk_i|prop[0]~0_combout\ & ( !\B[55]~input_o\ & ( ((!\gen_blocks:13:blk_i|tmp~combout\ & (\gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\ & \A[55]~input_o\))) # (\gen_blocks:13:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111111111010000000000101111111111111101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:13:blk_i|ALT_INV_tmp~combout\,
	datab => \gen_blocks:13:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \gen_blocks:13:blk_i|ALT_INV_cout~0_combout\,
	datae => \gen_blocks:14:blk_i|ALT_INV_prop[0]~0_combout\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \gen_blocks:14:blk_i|gen_fa:0:fa_i|s~combout\);

-- Location: LABCELL_X58_Y33_N14
\gen_blocks:13:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:13:blk_i|cout~1_combout\ = ( \B[55]~input_o\ & ( ((!\gen_blocks:13:blk_i|tmp~combout\ & \gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\A[55]~input_o\) ) ) # ( !\B[55]~input_o\ & ( (!\gen_blocks:13:blk_i|tmp~combout\ & 
-- (\gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\ & \A[55]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:13:blk_i|ALT_INV_tmp~combout\,
	datab => \gen_blocks:13:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \gen_blocks:13:blk_i|cout~1_combout\);

-- Location: LABCELL_X58_Y30_N2
\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( \gen_blocks:13:blk_i|cout~1_combout\ & ( (!\B[56]~input_o\ & !\A[56]~input_o\) ) ) # ( !\gen_blocks:13:blk_i|cout~1_combout\ & ( (!\B[56]~input_o\ & ((!\A[56]~input_o\) # 
-- (!\gen_blocks:13:blk_i|cout~0_combout\))) # (\B[56]~input_o\ & (!\A[56]~input_o\ & !\gen_blocks:13:blk_i|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_A[56]~input_o\,
	datac => \gen_blocks:13:blk_i|ALT_INV_cout~0_combout\,
	dataf => \gen_blocks:13:blk_i|ALT_INV_cout~1_combout\,
	combout => \gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: IOIBUF_X59_Y28_N32
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LABCELL_X58_Y30_N4
\gen_blocks:14:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|gen_fa:1:fa_i|s~combout\ = ( \B[57]~input_o\ & ( !\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\ $ (!\A[57]~input_o\) ) ) # ( !\B[57]~input_o\ & ( !\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\ $ (\A[57]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_blocks:14:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_B[57]~input_o\,
	combout => \gen_blocks:14:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y25_N1
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LABCELL_X58_Y30_N30
\gen_blocks:14:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|gen_fa:2:fa_i|s~combout\ = ( \A[58]~input_o\ & ( !\B[58]~input_o\ $ (((!\B[57]~input_o\ & (\A[57]~input_o\ & !\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\)) # (\B[57]~input_o\ & 
-- ((!\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[57]~input_o\))))) ) ) # ( !\A[58]~input_o\ & ( !\B[58]~input_o\ $ (((!\B[57]~input_o\ & ((!\A[57]~input_o\) # (\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\))) # (\B[57]~input_o\ & 
-- (!\A[57]~input_o\ & \gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001010110011010100101011010010101101010011001010110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_B[57]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \gen_blocks:14:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \gen_blocks:14:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y23_N94
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LABCELL_X58_Y30_N6
\gen_blocks:14:blk_i|prop[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|prop[3]~1_combout\ = !\A[59]~input_o\ $ (!\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_B[59]~input_o\,
	combout => \gen_blocks:14:blk_i|prop[3]~1_combout\);

-- Location: LABCELL_X58_Y30_N14
\gen_blocks:14:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|gen_fa:3:fa_i|s~combout\ = ( \A[57]~input_o\ & ( \A[58]~input_o\ & ( !\gen_blocks:14:blk_i|prop[3]~1_combout\ $ (((\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\ & (!\B[57]~input_o\ & !\B[58]~input_o\)))) ) ) ) # ( 
-- !\A[57]~input_o\ & ( \A[58]~input_o\ & ( !\gen_blocks:14:blk_i|prop[3]~1_combout\ $ (((!\B[58]~input_o\ & ((!\B[57]~input_o\) # (\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\))))) ) ) ) # ( \A[57]~input_o\ & ( !\A[58]~input_o\ & ( 
-- !\gen_blocks:14:blk_i|prop[3]~1_combout\ $ (((!\B[58]~input_o\) # ((\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\ & !\B[57]~input_o\)))) ) ) ) # ( !\A[57]~input_o\ & ( !\A[58]~input_o\ & ( !\gen_blocks:14:blk_i|prop[3]~1_combout\ $ 
-- ((((!\B[57]~input_o\) # (!\B[58]~input_o\)) # (\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111001001100111001110000111001110011001001110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:14:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:14:blk_i|ALT_INV_prop[3]~1_combout\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	datae => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \gen_blocks:14:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X58_Y30_N18
\gen_blocks:14:blk_i|tmp\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|tmp~combout\ = ( \gen_blocks:14:blk_i|prop[0]~0_combout\ & ( \B[57]~input_o\ & ( (\gen_blocks:14:blk_i|prop[3]~1_combout\ & (!\A[57]~input_o\ & (!\A[58]~input_o\ $ (!\B[58]~input_o\)))) ) ) ) # ( 
-- \gen_blocks:14:blk_i|prop[0]~0_combout\ & ( !\B[57]~input_o\ & ( (\gen_blocks:14:blk_i|prop[3]~1_combout\ & (\A[57]~input_o\ & (!\A[58]~input_o\ $ (!\B[58]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001000000000000000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[58]~input_o\,
	datab => \gen_blocks:14:blk_i|ALT_INV_prop[3]~1_combout\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	datae => \gen_blocks:14:blk_i|ALT_INV_prop[0]~0_combout\,
	dataf => \ALT_INV_B[57]~input_o\,
	combout => \gen_blocks:14:blk_i|tmp~combout\);

-- Location: LABCELL_X58_Y33_N36
\gen_blocks:14:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|cout~0_combout\ = ( \A[55]~input_o\ & ( \B[55]~input_o\ & ( \gen_blocks:14:blk_i|tmp~combout\ ) ) ) # ( !\A[55]~input_o\ & ( \B[55]~input_o\ & ( (\gen_blocks:14:blk_i|tmp~combout\ & (((!\gen_blocks:13:blk_i|tmp~combout\ & 
-- \gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\gen_blocks:13:blk_i|cout~0_combout\))) ) ) ) # ( \A[55]~input_o\ & ( !\B[55]~input_o\ & ( (\gen_blocks:14:blk_i|tmp~combout\ & (((!\gen_blocks:13:blk_i|tmp~combout\ & 
-- \gen_blocks:13:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\gen_blocks:13:blk_i|cout~0_combout\))) ) ) ) # ( !\A[55]~input_o\ & ( !\B[55]~input_o\ & ( (\gen_blocks:13:blk_i|cout~0_combout\ & \gen_blocks:14:blk_i|tmp~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010011000100010001001100010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:13:blk_i|ALT_INV_cout~0_combout\,
	datab => \gen_blocks:14:blk_i|ALT_INV_tmp~combout\,
	datac => \gen_blocks:13:blk_i|ALT_INV_tmp~combout\,
	datad => \gen_blocks:13:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \gen_blocks:14:blk_i|cout~0_combout\);

-- Location: LABCELL_X58_Y30_N28
\gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \A[58]~input_o\ & ( ((!\B[57]~input_o\ & (!\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[57]~input_o\)) # (\B[57]~input_o\ & ((!\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\) # 
-- (\A[57]~input_o\)))) # (\B[58]~input_o\) ) ) # ( !\A[58]~input_o\ & ( (\B[58]~input_o\ & ((!\B[57]~input_o\ & (!\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\ & \A[57]~input_o\)) # (\B[57]~input_o\ & 
-- ((!\gen_blocks:14:blk_i|gen_fa:0:fa_i|cout~0_combout\) # (\A[57]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010001000100000101000101110101111101110111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_B[57]~input_o\,
	datac => \gen_blocks:14:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: IOIBUF_X59_Y30_N1
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X59_Y30_N63
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X58_Y30_N22
\gen_blocks:15:blk_i|prop[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|prop[0]~0_combout\ = ( \A[60]~input_o\ & ( !\B[60]~input_o\ ) ) # ( !\A[60]~input_o\ & ( \B[60]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \gen_blocks:15:blk_i|prop[0]~0_combout\);

-- Location: LABCELL_X58_Y30_N24
\gen_blocks:15:blk_i|gen_fa:0:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|gen_fa:0:fa_i|s~combout\ = ( \gen_blocks:15:blk_i|prop[0]~0_combout\ & ( \A[59]~input_o\ & ( (!\gen_blocks:14:blk_i|cout~0_combout\ & (!\B[59]~input_o\ & ((!\gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\) # 
-- (\gen_blocks:14:blk_i|tmp~combout\)))) ) ) ) # ( !\gen_blocks:15:blk_i|prop[0]~0_combout\ & ( \A[59]~input_o\ & ( (((!\gen_blocks:14:blk_i|tmp~combout\ & \gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\B[59]~input_o\)) # 
-- (\gen_blocks:14:blk_i|cout~0_combout\) ) ) ) # ( \gen_blocks:15:blk_i|prop[0]~0_combout\ & ( !\A[59]~input_o\ & ( (!\gen_blocks:14:blk_i|cout~0_combout\ & (((!\gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\) # (!\B[59]~input_o\)) # 
-- (\gen_blocks:14:blk_i|tmp~combout\))) ) ) ) # ( !\gen_blocks:15:blk_i|prop[0]~0_combout\ & ( !\A[59]~input_o\ & ( ((!\gen_blocks:14:blk_i|tmp~combout\ & (\gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\ & \B[59]~input_o\))) # 
-- (\gen_blocks:14:blk_i|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111011110011001100010000111011111111111100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:14:blk_i|ALT_INV_tmp~combout\,
	datab => \gen_blocks:14:blk_i|ALT_INV_cout~0_combout\,
	datac => \gen_blocks:14:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[59]~input_o\,
	datae => \gen_blocks:15:blk_i|ALT_INV_prop[0]~0_combout\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \gen_blocks:15:blk_i|gen_fa:0:fa_i|s~combout\);

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

-- Location: IOIBUF_X59_Y28_N63
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LABCELL_X58_Y30_N8
\gen_blocks:14:blk_i|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:14:blk_i|cout~1_combout\ = ( \A[59]~input_o\ & ( ((!\gen_blocks:14:blk_i|tmp~combout\ & \gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\)) # (\B[59]~input_o\) ) ) # ( !\A[59]~input_o\ & ( (!\gen_blocks:14:blk_i|tmp~combout\ & 
-- (\B[59]~input_o\ & \gen_blocks:14:blk_i|gen_fa:2:fa_i|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:14:blk_i|ALT_INV_tmp~combout\,
	datab => \ALT_INV_B[59]~input_o\,
	datac => \gen_blocks:14:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \gen_blocks:14:blk_i|cout~1_combout\);

-- Location: MLABCELL_X57_Y30_N20
\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ = ( !\B[60]~input_o\ & ( \A[60]~input_o\ & ( (!\gen_blocks:14:blk_i|cout~1_combout\ & !\gen_blocks:14:blk_i|cout~0_combout\) ) ) ) # ( \B[60]~input_o\ & ( !\A[60]~input_o\ & ( 
-- (!\gen_blocks:14:blk_i|cout~1_combout\ & !\gen_blocks:14:blk_i|cout~0_combout\) ) ) ) # ( !\B[60]~input_o\ & ( !\A[60]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000001100000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:14:blk_i|ALT_INV_cout~1_combout\,
	datac => \gen_blocks:14:blk_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\);

-- Location: LABCELL_X58_Y30_N10
\gen_blocks:15:blk_i|gen_fa:1:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|gen_fa:1:fa_i|s~combout\ = ( \gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[61]~input_o\ $ (!\B[61]~input_o\) ) ) # ( !\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( !\A[61]~input_o\ $ (\B[61]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[61]~input_o\,
	dataf => \gen_blocks:15:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:15:blk_i|gen_fa:1:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y25_N94
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X59_Y31_N94
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LABCELL_X58_Y30_N20
\gen_blocks:15:blk_i|gen_fa:2:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|gen_fa:2:fa_i|s~combout\ = ( \A[62]~input_o\ & ( !\B[62]~input_o\ $ (((!\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ((\A[61]~input_o\) # (\B[61]~input_o\))) # (\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & 
-- (\B[61]~input_o\ & \A[61]~input_o\)))) ) ) # ( !\A[62]~input_o\ & ( !\B[62]~input_o\ $ (((!\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & (!\B[61]~input_o\ & !\A[61]~input_o\)) # (\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & 
-- ((!\B[61]~input_o\) # (!\A[61]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101111010100001010111101010011010100001010111101010000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:15:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[62]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \gen_blocks:15:blk_i|gen_fa:2:fa_i|s~combout\);

-- Location: IOIBUF_X59_Y25_N63
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X59_Y28_N1
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: MLABCELL_X57_Y30_N24
\gen_blocks:15:blk_i|prop[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|prop[3]~1_combout\ = ( \B[63]~input_o\ & ( !\A[63]~input_o\ ) ) # ( !\B[63]~input_o\ & ( \A[63]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_B[63]~input_o\,
	combout => \gen_blocks:15:blk_i|prop[3]~1_combout\);

-- Location: LABCELL_X58_Y30_N34
\gen_blocks:15:blk_i|gen_fa:3:fa_i|s\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\ = ( \A[61]~input_o\ & ( \A[62]~input_o\ & ( !\gen_blocks:15:blk_i|prop[3]~1_combout\ $ (((\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & (!\B[62]~input_o\ & !\B[61]~input_o\)))) ) ) ) # ( 
-- !\A[61]~input_o\ & ( \A[62]~input_o\ & ( !\gen_blocks:15:blk_i|prop[3]~1_combout\ $ (((!\B[62]~input_o\ & ((!\B[61]~input_o\) # (\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\))))) ) ) ) # ( \A[61]~input_o\ & ( !\A[62]~input_o\ & ( 
-- !\gen_blocks:15:blk_i|prop[3]~1_combout\ $ (((!\B[62]~input_o\) # ((\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & !\B[61]~input_o\)))) ) ) ) # ( !\A[61]~input_o\ & ( !\A[62]~input_o\ & ( !\gen_blocks:15:blk_i|prop[3]~1_combout\ $ 
-- ((((!\B[62]~input_o\) # (!\B[61]~input_o\)) # (\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111101001000111101110000111011110001001011111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:15:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \gen_blocks:15:blk_i|ALT_INV_prop[3]~1_combout\,
	datae => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\);

-- Location: LABCELL_X58_Y30_N36
\gen_blocks:15:blk_i|tmp~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|tmp~0_combout\ = ( \gen_blocks:15:blk_i|prop[0]~0_combout\ & ( (!\A[62]~input_o\ & (\B[62]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\)))) # (\A[62]~input_o\ & (!\B[62]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[62]~input_o\,
	dataf => \gen_blocks:15:blk_i|ALT_INV_prop[0]~0_combout\,
	combout => \gen_blocks:15:blk_i|tmp~0_combout\);

-- Location: LABCELL_X58_Y30_N38
\gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0_combout\ = ( \gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( (!\A[62]~input_o\ & (\B[61]~input_o\ & (\B[62]~input_o\ & \A[61]~input_o\))) # (\A[62]~input_o\ & (((\B[61]~input_o\ & \A[61]~input_o\)) # 
-- (\B[62]~input_o\))) ) ) # ( !\gen_blocks:15:blk_i|gen_fa:0:fa_i|cout~0_combout\ & ( (!\A[62]~input_o\ & (\B[62]~input_o\ & ((\A[61]~input_o\) # (\B[61]~input_o\)))) # (\A[62]~input_o\ & (((\A[61]~input_o\) # (\B[62]~input_o\)) # (\B[61]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101011111000101110101111100000101000101110000010100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_B[62]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	dataf => \gen_blocks:15:blk_i|gen_fa:0:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0_combout\);

-- Location: MLABCELL_X57_Y30_N30
\gen_blocks:15:blk_i|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:15:blk_i|cout~0_combout\ = ( \B[63]~input_o\ & ( \gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( (!\gen_blocks:15:blk_i|tmp~0_combout\) # (((\gen_blocks:14:blk_i|cout~0_combout\) # (\A[63]~input_o\)) # 
-- (\gen_blocks:14:blk_i|cout~1_combout\)) ) ) ) # ( !\B[63]~input_o\ & ( \gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( (\A[63]~input_o\ & ((!\gen_blocks:15:blk_i|tmp~0_combout\) # ((\gen_blocks:14:blk_i|cout~0_combout\) # 
-- (\gen_blocks:14:blk_i|cout~1_combout\)))) ) ) ) # ( \B[63]~input_o\ & ( !\gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( ((\gen_blocks:15:blk_i|tmp~0_combout\ & ((\gen_blocks:14:blk_i|cout~0_combout\) # (\gen_blocks:14:blk_i|cout~1_combout\)))) # 
-- (\A[63]~input_o\) ) ) ) # ( !\B[63]~input_o\ & ( !\gen_blocks:15:blk_i|gen_fa:2:fa_i|cout~0_combout\ & ( (\gen_blocks:15:blk_i|tmp~0_combout\ & (\A[63]~input_o\ & ((\gen_blocks:14:blk_i|cout~0_combout\) # (\gen_blocks:14:blk_i|cout~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000111110101111100001011000011111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:15:blk_i|ALT_INV_tmp~0_combout\,
	datab => \gen_blocks:14:blk_i|ALT_INV_cout~1_combout\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \gen_blocks:14:blk_i|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_B[63]~input_o\,
	dataf => \gen_blocks:15:blk_i|gen_fa:2:fa_i|ALT_INV_cout~0_combout\,
	combout => \gen_blocks:15:blk_i|cout~0_combout\);

-- Location: MLABCELL_X57_Y30_N12
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \B[63]~input_o\ & ( \gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\ ) ) # ( !\B[63]~input_o\ & ( \gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\ & ( \A[63]~input_o\ ) ) ) # ( \B[63]~input_o\ & ( 
-- !\gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\ & ( !\A[63]~input_o\ ) ) ) # ( !\B[63]~input_o\ & ( !\gen_blocks:15:blk_i|gen_fa:3:fa_i|s~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_B[63]~input_o\,
	dataf => \gen_blocks:15:blk_i|gen_fa:3:fa_i|ALT_INV_s~combout\,
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


