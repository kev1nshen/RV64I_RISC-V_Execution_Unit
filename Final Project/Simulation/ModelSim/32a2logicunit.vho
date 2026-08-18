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

-- DATE "04/08/2026 14:51:59"

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

ENTITY 	LogicUnit IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	Y : OUT std_logic_vector(31 DOWNTO 0)
	);
END LogicUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LogicUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
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

BEGIN

ww_A <= A;
ww_B <= B;
ww_LogicFN <= LogicFN;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_LogicFN[0]~input_o\ <= NOT \LogicFN[0]~input_o\;
\ALT_INV_LogicFN[1]~input_o\ <= NOT \LogicFN[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
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

-- Location: IOOBUF_X43_Y0_N98
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X50_Y0_N36
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X59_Y28_N36
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N98
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N36
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N98
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X59_Y33_N67
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X59_Y34_N67
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X59_Y21_N33
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X59_Y34_N98
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X59_Y31_N2
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X56_Y0_N64
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X39_Y0_N98
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X55_Y0_N33
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X39_Y0_N67
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X50_Y0_N67
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X59_Y30_N67
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X59_Y22_N2
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X59_Y6_N36
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X59_Y30_N98
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X54_Y0_N98
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X59_Y23_N36
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X37_Y0_N98
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X37_Y0_N67
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X55_Y0_N5
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOIBUF_X59_Y10_N94
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X47_Y0_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: LABCELL_X47_Y4_N20
\Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[0]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X35_Y0_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X47_Y4_N22
\Mux30~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: IOIBUF_X59_Y25_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y30_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y26_N22
\Mux29~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \B[2]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[2]~input_o\)) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100111111001100111100000000001111001111110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: IOIBUF_X52_Y0_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y4_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X47_Y4_N4
\Mux28~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[3]~input_o\ & \A[3]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[3]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X47_Y4_N30
\Mux27~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \B[4]~input_o\ & ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \LogicFN[1]~input_o\ & ( (\A[4]~input_o\ & !\LogicFN[0]~input_o\) ) ) ) # ( \B[4]~input_o\ & ( !\LogicFN[1]~input_o\ 
-- & ( (!\A[4]~input_o\) # (!\LogicFN[0]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\LogicFN[1]~input_o\ & ( (\A[4]~input_o\ & \LogicFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111001111110000110000001100001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: IOIBUF_X47_Y0_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X47_Y4_N32
\Mux26~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[5]~input_o\ & (!\LogicFN[0]~input_o\ & \A[5]~input_o\)) # (\B[5]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[5]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[5]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: IOIBUF_X59_Y33_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y28_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X58_Y26_N26
\Mux25~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \B[6]~input_o\ & ( \A[6]~input_o\ & ( (!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\) ) ) ) # ( !\B[6]~input_o\ & ( \A[6]~input_o\ & ( !\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\) ) ) ) # ( \B[6]~input_o\ & ( !\A[6]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000111100001111001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: IOIBUF_X59_Y25_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y26_N28
\Mux24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \LogicFN[0]~input_o\ & ( \B[7]~input_o\ & ( !\LogicFN[1]~input_o\ $ (\A[7]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \B[7]~input_o\ ) ) # ( \LogicFN[0]~input_o\ & ( !\B[7]~input_o\ & ( (!\LogicFN[1]~input_o\ & \A[7]~input_o\) ) ) 
-- ) # ( !\LogicFN[0]~input_o\ & ( !\B[7]~input_o\ & ( (\LogicFN[1]~input_o\ & \A[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110011111111111111111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: IOIBUF_X59_Y22_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y26_N34
\Mux23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \LogicFN[0]~input_o\ & ( \B[8]~input_o\ & ( !\LogicFN[1]~input_o\ $ (\A[8]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \B[8]~input_o\ ) ) # ( \LogicFN[0]~input_o\ & ( !\B[8]~input_o\ & ( (!\LogicFN[1]~input_o\ & \A[8]~input_o\) ) ) 
-- ) # ( !\LogicFN[0]~input_o\ & ( !\B[8]~input_o\ & ( (\LogicFN[1]~input_o\ & \A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000001100110011111111111111111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: IOIBUF_X59_Y19_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y28_N1
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X58_Y26_N38
\Mux22~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \LogicFN[0]~input_o\ & ( \B[9]~input_o\ & ( !\A[9]~input_o\ $ (\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \B[9]~input_o\ ) ) # ( \LogicFN[0]~input_o\ & ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & !\LogicFN[1]~input_o\) ) ) 
-- ) # ( !\LogicFN[0]~input_o\ & ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & \LogicFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000011111111111111111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: IOIBUF_X59_Y22_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X58_Y26_N2
\Mux21~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \B[10]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[10]~input_o\)) ) ) # ( !\B[10]~input_o\ & ( (\A[10]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110011111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X59_Y26_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y26_N0
\Mux20~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \A[11]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[11]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[11]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: IOIBUF_X48_Y0_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N94
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X47_Y4_N38
\Mux19~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\A[12]~input_o\) # (\B[12]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[12]~input_o\ $ (((!\LogicFN[0]~input_o\) 
-- # (!\A[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: IOIBUF_X43_Y0_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X47_Y4_N36
\Mux18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[13]~input_o\ & (!\LogicFN[0]~input_o\ & \A[13]~input_o\)) # (\B[13]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[13]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[13]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (!\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: IOIBUF_X48_Y0_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X33_Y0_N32
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X47_Y4_N0
\Mux17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \A[14]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[14]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[14]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111001100110110111010110011011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: IOIBUF_X55_Y0_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X47_Y4_N2
\Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\A[15]~input_o\) # (\B[15]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[15]~input_o\ & \A[15]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[15]~input_o\ $ (((!\LogicFN[0]~input_o\) 
-- # (!\A[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X39_Y0_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X47_Y4_N26
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \A[16]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[16]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[16]~input_o\))) ) ) # ( !\A[16]~input_o\ & ( (\B[16]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: IOIBUF_X43_Y0_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y4_N63
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X47_Y4_N24
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[17]~input_o\ & (!\LogicFN[0]~input_o\ & \A[17]~input_o\)) # (\B[17]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[17]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[17]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (!\A[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X37_Y0_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y4_N94
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X47_Y4_N6
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\A[18]~input_o\) # (\B[18]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[18]~input_o\ & \A[18]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[18]~input_o\ $ (((!\LogicFN[0]~input_o\) 
-- # (!\A[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: IOIBUF_X59_Y22_N63
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X58_Y26_N4
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \LogicFN[0]~input_o\ & ( \B[19]~input_o\ & ( !\A[19]~input_o\ $ (\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \B[19]~input_o\ ) ) # ( \LogicFN[0]~input_o\ & ( !\B[19]~input_o\ & ( (\A[19]~input_o\ & 
-- !\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( !\B[19]~input_o\ & ( (\A[19]~input_o\ & \LogicFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010000000011111111111111111010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	combout => \Mux12~0_combout\);

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

-- Location: IOIBUF_X59_Y26_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X58_Y26_N10
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \B[20]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[20]~input_o\)) ) ) # ( !\B[20]~input_o\ & ( (\A[20]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110011111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X55_Y0_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X48_Y0_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X47_Y4_N34
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\A[21]~input_o\) # (\B[21]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[21]~input_o\ & \A[21]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[21]~input_o\ $ (((!\LogicFN[0]~input_o\) 
-- # (!\A[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X59_Y33_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X59_Y33_N32
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X58_Y26_N14
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[22]~input_o\ $ (!\A[22]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[22]~input_o\ & \A[22]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[22]~input_o\)) # 
-- (\B[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011001100001100001111001111110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X59_Y23_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y25_N94
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X58_Y26_N8
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \B[23]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[23]~input_o\)) ) ) # ( !\B[23]~input_o\ & ( (\A[23]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110011111111110000111111111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X59_Y4_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LABCELL_X47_Y4_N10
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[24]~input_o\) # (\A[24]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[24]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X54_Y0_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X47_Y4_N12
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[25]~input_o\) # (\A[25]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[25]~input_o\ & \B[25]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[25]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X43_Y0_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X45_Y0_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X47_Y4_N14
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[26]~input_o\) # (\A[26]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[26]~input_o\ & \B[26]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[26]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X59_Y21_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X58_Y26_N16
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[27]~input_o\) # (\A[27]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[27]~input_o\ & \B[27]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[27]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X59_Y25_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y15_N63
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X58_Y26_N18
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \A[28]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[28]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[28]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & ((!\LogicFN[0]~input_o\) 
-- # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X35_Y0_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X47_Y4_N16
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\A[29]~input_o\) # (\B[29]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[29]~input_o\ & \A[29]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[29]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X45_Y0_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X52_Y0_N63
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X47_Y4_N18
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[30]~input_o\) # (\A[30]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[30]~input_o\ & \B[30]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[30]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X39_Y0_N1
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X47_Y4_N8
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\A[31]~input_o\) # (\B[31]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[31]~input_o\ & \A[31]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[31]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux0~0_combout\);

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
END structure;


