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

-- DATE "04/08/2026 16:32:45"

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
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(15 DOWNTO 0)
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \sll64[6][1]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \srl64[1][2]~1_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \srl64[1][0]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \srl64[1][4]~2_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \srl64[1][6]~3_combout\ : std_logic;
SIGNAL \srl64[3][0]~4_combout\ : std_logic;
SIGNAL \Y_srl[4]~1_combout\ : std_logic;
SIGNAL \Y_srl[0]~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \srl64[1][10]~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \srl64[1][8]~9_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \srl64[1][12]~6_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \srl64[1][14]~5_combout\ : std_logic;
SIGNAL \srl64[2][12]~7_combout\ : std_logic;
SIGNAL \srl64[3][8]~10_combout\ : std_logic;
SIGNAL \Y_srl[0]~2_combout\ : std_logic;
SIGNAL \sra64[0][15]~0_combout\ : std_logic;
SIGNAL \shamt[5]~0_combout\ : std_logic;
SIGNAL \sll64[6][1]~2_combout\ : std_logic;
SIGNAL \sra64[6][0]~1_combout\ : std_logic;
SIGNAL \Y_sra[0]~0_combout\ : std_logic;
SIGNAL \Y_sra[0]~1_combout\ : std_logic;
SIGNAL \Y_sra[0]~2_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \sll64[2][0]~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \srl64[1][5]~19_combout\ : std_logic;
SIGNAL \srl64[1][3]~18_combout\ : std_logic;
SIGNAL \srl64[1][7]~20_combout\ : std_logic;
SIGNAL \srl64[1][1]~17_combout\ : std_logic;
SIGNAL \srl64[3][1]~21_combout\ : std_logic;
SIGNAL \srl64[1][13]~11_combout\ : std_logic;
SIGNAL \srl64[1][9]~14_combout\ : std_logic;
SIGNAL \srl64[1][11]~13_combout\ : std_logic;
SIGNAL \srl64[2][9]~15_combout\ : std_logic;
SIGNAL \sra64[3][9]~2_combout\ : std_logic;
SIGNAL \Y_sra[1]~3_combout\ : std_logic;
SIGNAL \srl64[2][13]~12_combout\ : std_logic;
SIGNAL \Y_srl[1]~3_combout\ : std_logic;
SIGNAL \Y_srl[1]~4_combout\ : std_logic;
SIGNAL \srl64[5][9]~16_combout\ : std_logic;
SIGNAL \Y_srl[1]~5_combout\ : std_logic;
SIGNAL \sll64[6][1]~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Y_srl[15]~6_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~12_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \srl64[2][10]~22_combout\ : std_logic;
SIGNAL \sra64[2][14]~3_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \sll64[2][2]~4_combout\ : std_logic;
SIGNAL \srl64[2][14]~23_combout\ : std_logic;
SIGNAL \srl64[5][10]~24_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \sra64[6][10]~4_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~13_combout\ : std_logic;
SIGNAL \srl64[2][11]~25_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \sll64[2][3]~5_combout\ : std_logic;
SIGNAL \Y_srl[15]~7_combout\ : std_logic;
SIGNAL \srl64[5][11]~26_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \sll64[2][4]~6_combout\ : std_logic;
SIGNAL \sll64[6][4]~7_combout\ : std_logic;
SIGNAL \srl64[3][4]~27_combout\ : std_logic;
SIGNAL \Y_sra[4]~4_combout\ : std_logic;
SIGNAL \Y_srl[4]~8_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux10~14_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \sll64[2][5]~8_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \sll64[2][6]~9_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \srl64[2][7]~28_combout\ : std_logic;
SIGNAL \Y_srl[7]~9_combout\ : std_logic;
SIGNAL \Y_sra[7]~6_combout\ : std_logic;
SIGNAL \sll64[2][7]~10_combout\ : std_logic;
SIGNAL \Y_sll[7]~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \sll64[5][7]~12_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \A_left[8]~0_combout\ : std_logic;
SIGNAL \sll64[2][8]~11_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \A_left[9]~1_combout\ : std_logic;
SIGNAL \sll64[2][9]~13_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \A_left[10]~2_combout\ : std_logic;
SIGNAL \sll64[2][10]~14_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \A_left[11]~3_combout\ : std_logic;
SIGNAL \sll64[2][11]~15_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \A_left[12]~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \sra64[6][13]~5_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \A_left[13]~5_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Y_sra[14]~5_combout\ : std_logic;
SIGNAL \Y_srl[14]~11_combout\ : std_logic;
SIGNAL \sll64[2][14]~16_combout\ : std_logic;
SIGNAL \sll64[4][14]~17_combout\ : std_logic;
SIGNAL \Y_sll[14]~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \sll64[2][15]~18_combout\ : std_logic;
SIGNAL \sll64[4][15]~19_combout\ : std_logic;
SIGNAL \Y_sll[15]~2_combout\ : std_logic;
SIGNAL \Y_srl[15]~10_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux10~14_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[15]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[15]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][15]~19_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][15]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[14]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[14]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][14]~17_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][14]~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][13]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[13]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][12]~7_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][12]~6_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][14]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][6]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][4]~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[7]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[14]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[12]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~5_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][11]~15_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[11]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][10]~14_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[10]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][9]~13_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[9]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[5][7]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][8]~11_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[7]~9_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][7]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[7]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][7]~10_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][6]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[4]~8_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][4]~27_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][4]~7_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][4]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][11]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[15]~7_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][11]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~10_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][10]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~8_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][10]~24_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][14]~23_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~6_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[2][14]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][10]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[15]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][9]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][1]~21_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][7]~20_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][5]~19_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][3]~18_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][1]~17_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][9]~16_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][9]~15_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][9]~14_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][11]~13_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][13]~12_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][13]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_shamt[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[0][15]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][8]~10_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][10]~8_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Mux10~14_combout\ <= NOT \Mux10~14_combout\;
\ALT_INV_Y_srl[15]~10_combout\ <= NOT \Y_srl[15]~10_combout\;
\ALT_INV_Y_sll[15]~2_combout\ <= NOT \Y_sll[15]~2_combout\;
\ALT_INV_sll64[4][15]~19_combout\ <= NOT \sll64[4][15]~19_combout\;
\ALT_INV_sll64[2][15]~18_combout\ <= NOT \sll64[2][15]~18_combout\;
\ALT_INV_Y_sra[14]~5_combout\ <= NOT \Y_sra[14]~5_combout\;
\ALT_INV_Y_sll[14]~1_combout\ <= NOT \Y_sll[14]~1_combout\;
\ALT_INV_sll64[4][14]~17_combout\ <= NOT \sll64[4][14]~17_combout\;
\ALT_INV_sll64[2][14]~16_combout\ <= NOT \sll64[2][14]~16_combout\;
\ALT_INV_Mux2~7_combout\ <= NOT \Mux2~7_combout\;
\ALT_INV_Mux2~6_combout\ <= NOT \Mux2~6_combout\;
\ALT_INV_Mux2~5_combout\ <= NOT \Mux2~5_combout\;
\ALT_INV_sra64[6][13]~5_combout\ <= NOT \sra64[6][13]~5_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_A_left[13]~5_combout\ <= NOT \A_left[13]~5_combout\;
\ALT_INV_Mux3~4_combout\ <= NOT \Mux3~4_combout\;
\ALT_INV_srl64[2][12]~7_combout\ <= NOT \srl64[2][12]~7_combout\;
\ALT_INV_srl64[1][12]~6_combout\ <= NOT \srl64[1][12]~6_combout\;
\ALT_INV_srl64[1][14]~5_combout\ <= NOT \srl64[1][14]~5_combout\;
\ALT_INV_Y_srl[0]~0_combout\ <= NOT \Y_srl[0]~0_combout\;
\ALT_INV_srl64[3][0]~4_combout\ <= NOT \srl64[3][0]~4_combout\;
\ALT_INV_srl64[1][6]~3_combout\ <= NOT \srl64[1][6]~3_combout\;
\ALT_INV_srl64[1][4]~2_combout\ <= NOT \srl64[1][4]~2_combout\;
\ALT_INV_srl64[1][2]~1_combout\ <= NOT \srl64[1][2]~1_combout\;
\ALT_INV_srl64[1][0]~0_combout\ <= NOT \srl64[1][0]~0_combout\;
\ALT_INV_sll64[6][1]~1_combout\ <= NOT \sll64[6][1]~1_combout\;
\ALT_INV_sll64[2][0]~0_combout\ <= NOT \sll64[2][0]~0_combout\;
\ALT_INV_Y_sra[7]~6_combout\ <= NOT \Y_sra[7]~6_combout\;
\ALT_INV_Y_srl[14]~11_combout\ <= NOT \Y_srl[14]~11_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_A_left[12]~4_combout\ <= NOT \A_left[12]~4_combout\;
\ALT_INV_Mux4~7_combout\ <= NOT \Mux4~7_combout\;
\ALT_INV_Mux4~6_combout\ <= NOT \Mux4~6_combout\;
\ALT_INV_Mux4~5_combout\ <= NOT \Mux4~5_combout\;
\ALT_INV_sll64[2][11]~15_combout\ <= NOT \sll64[2][11]~15_combout\;
\ALT_INV_A_left[11]~3_combout\ <= NOT \A_left[11]~3_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_sll64[2][10]~14_combout\ <= NOT \sll64[2][10]~14_combout\;
\ALT_INV_A_left[10]~2_combout\ <= NOT \A_left[10]~2_combout\;
\ALT_INV_Mux6~5_combout\ <= NOT \Mux6~5_combout\;
\ALT_INV_Mux6~4_combout\ <= NOT \Mux6~4_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_sll64[2][9]~13_combout\ <= NOT \sll64[2][9]~13_combout\;
\ALT_INV_A_left[9]~1_combout\ <= NOT \A_left[9]~1_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_sll64[5][7]~12_combout\ <= NOT \sll64[5][7]~12_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux4~4_combout\ <= NOT \Mux4~4_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_sll64[2][8]~11_combout\ <= NOT \sll64[2][8]~11_combout\;
\ALT_INV_A_left[8]~0_combout\ <= NOT \A_left[8]~0_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Y_srl[7]~9_combout\ <= NOT \Y_srl[7]~9_combout\;
\ALT_INV_srl64[2][7]~28_combout\ <= NOT \srl64[2][7]~28_combout\;
\ALT_INV_Y_sll[7]~0_combout\ <= NOT \Y_sll[7]~0_combout\;
\ALT_INV_sll64[2][7]~10_combout\ <= NOT \sll64[2][7]~10_combout\;
\ALT_INV_sll64[2][6]~9_combout\ <= NOT \sll64[2][6]~9_combout\;
\ALT_INV_Mux9~4_combout\ <= NOT \Mux9~4_combout\;
\ALT_INV_Mux9~3_combout\ <= NOT \Mux9~3_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_sll64[2][5]~8_combout\ <= NOT \sll64[2][5]~8_combout\;
\ALT_INV_Mux10~9_combout\ <= NOT \Mux10~9_combout\;
\ALT_INV_Mux10~8_combout\ <= NOT \Mux10~8_combout\;
\ALT_INV_Mux10~7_combout\ <= NOT \Mux10~7_combout\;
\ALT_INV_Mux10~6_combout\ <= NOT \Mux10~6_combout\;
\ALT_INV_Mux10~5_combout\ <= NOT \Mux10~5_combout\;
\ALT_INV_Mux10~4_combout\ <= NOT \Mux10~4_combout\;
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Y_sra[4]~4_combout\ <= NOT \Y_sra[4]~4_combout\;
\ALT_INV_Y_srl[4]~8_combout\ <= NOT \Y_srl[4]~8_combout\;
\ALT_INV_srl64[3][4]~27_combout\ <= NOT \srl64[3][4]~27_combout\;
\ALT_INV_sll64[6][4]~7_combout\ <= NOT \sll64[6][4]~7_combout\;
\ALT_INV_sll64[2][4]~6_combout\ <= NOT \sll64[2][4]~6_combout\;
\ALT_INV_Mux12~6_combout\ <= NOT \Mux12~6_combout\;
\ALT_INV_Mux12~5_combout\ <= NOT \Mux12~5_combout\;
\ALT_INV_Mux12~4_combout\ <= NOT \Mux12~4_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_srl64[5][11]~26_combout\ <= NOT \srl64[5][11]~26_combout\;
\ALT_INV_Y_srl[15]~7_combout\ <= NOT \Y_srl[15]~7_combout\;
\ALT_INV_sll64[2][3]~5_combout\ <= NOT \sll64[2][3]~5_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_srl64[2][11]~25_combout\ <= NOT \srl64[2][11]~25_combout\;
\ALT_INV_Mux13~12_combout\ <= NOT \Mux13~12_combout\;
\ALT_INV_Mux13~11_combout\ <= NOT \Mux13~11_combout\;
\ALT_INV_Mux13~10_combout\ <= NOT \Mux13~10_combout\;
\ALT_INV_sra64[6][10]~4_combout\ <= NOT \sra64[6][10]~4_combout\;
\ALT_INV_Mux13~9_combout\ <= NOT \Mux13~9_combout\;
\ALT_INV_Mux13~8_combout\ <= NOT \Mux13~8_combout\;
\ALT_INV_srl64[5][10]~24_combout\ <= NOT \srl64[5][10]~24_combout\;
\ALT_INV_srl64[2][14]~23_combout\ <= NOT \srl64[2][14]~23_combout\;
\ALT_INV_sll64[2][2]~4_combout\ <= NOT \sll64[2][2]~4_combout\;
\ALT_INV_Mux13~7_combout\ <= NOT \Mux13~7_combout\;
\ALT_INV_Mux13~6_combout\ <= NOT \Mux13~6_combout\;
\ALT_INV_sra64[2][14]~3_combout\ <= NOT \sra64[2][14]~3_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_srl64[2][10]~22_combout\ <= NOT \srl64[2][10]~22_combout\;
\ALT_INV_Mux13~5_combout\ <= NOT \Mux13~5_combout\;
\ALT_INV_Mux13~4_combout\ <= NOT \Mux13~4_combout\;
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Y_srl[15]~6_combout\ <= NOT \Y_srl[15]~6_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Y_sra[1]~3_combout\ <= NOT \Y_sra[1]~3_combout\;
\ALT_INV_sra64[3][9]~2_combout\ <= NOT \sra64[3][9]~2_combout\;
\ALT_INV_Y_srl[1]~5_combout\ <= NOT \Y_srl[1]~5_combout\;
\ALT_INV_Y_srl[1]~4_combout\ <= NOT \Y_srl[1]~4_combout\;
\ALT_INV_Y_srl[1]~3_combout\ <= NOT \Y_srl[1]~3_combout\;
\ALT_INV_srl64[3][1]~21_combout\ <= NOT \srl64[3][1]~21_combout\;
\ALT_INV_srl64[1][7]~20_combout\ <= NOT \srl64[1][7]~20_combout\;
\ALT_INV_srl64[1][5]~19_combout\ <= NOT \srl64[1][5]~19_combout\;
\ALT_INV_srl64[1][3]~18_combout\ <= NOT \srl64[1][3]~18_combout\;
\ALT_INV_srl64[1][1]~17_combout\ <= NOT \srl64[1][1]~17_combout\;
\ALT_INV_srl64[5][9]~16_combout\ <= NOT \srl64[5][9]~16_combout\;
\ALT_INV_srl64[2][9]~15_combout\ <= NOT \srl64[2][9]~15_combout\;
\ALT_INV_srl64[1][9]~14_combout\ <= NOT \srl64[1][9]~14_combout\;
\ALT_INV_srl64[1][11]~13_combout\ <= NOT \srl64[1][11]~13_combout\;
\ALT_INV_srl64[2][13]~12_combout\ <= NOT \srl64[2][13]~12_combout\;
\ALT_INV_srl64[1][13]~11_combout\ <= NOT \srl64[1][13]~11_combout\;
\ALT_INV_sll64[6][1]~3_combout\ <= NOT \sll64[6][1]~3_combout\;
\ALT_INV_Y_sra[0]~2_combout\ <= NOT \Y_sra[0]~2_combout\;
\ALT_INV_Y_sra[0]~1_combout\ <= NOT \Y_sra[0]~1_combout\;
\ALT_INV_Y_sra[0]~0_combout\ <= NOT \Y_sra[0]~0_combout\;
\ALT_INV_sra64[6][0]~1_combout\ <= NOT \sra64[6][0]~1_combout\;
\ALT_INV_sll64[6][1]~2_combout\ <= NOT \sll64[6][1]~2_combout\;
\ALT_INV_shamt[5]~0_combout\ <= NOT \shamt[5]~0_combout\;
\ALT_INV_sra64[0][15]~0_combout\ <= NOT \sra64[0][15]~0_combout\;
\ALT_INV_Y_srl[0]~2_combout\ <= NOT \Y_srl[0]~2_combout\;
\ALT_INV_Y_srl[4]~1_combout\ <= NOT \Y_srl[4]~1_combout\;
\ALT_INV_srl64[3][8]~10_combout\ <= NOT \srl64[3][8]~10_combout\;
\ALT_INV_srl64[1][8]~9_combout\ <= NOT \srl64[1][8]~9_combout\;
\ALT_INV_srl64[1][10]~8_combout\ <= NOT \srl64[1][10]~8_combout\;

-- Location: IOOBUF_X59_Y30_N36
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~13_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X59_Y30_N2
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~7_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X59_Y46_N36
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~10_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X59_Y31_N2
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~5_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X59_Y34_N2
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X59_Y34_N36
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X59_Y37_N36
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X59_Y48_N98
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~8_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X56_Y56_N33
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~5_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X59_Y26_N33
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~8_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X59_Y37_N98
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOIBUF_X59_Y36_N32
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y33_N1
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X59_Y33_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X55_Y33_N24
\sll64[6][1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][1]~1_combout\ = ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & (!\B[2]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[6][1]~1_combout\);

-- Location: IOIBUF_X59_Y39_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

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

-- Location: MLABCELL_X57_Y36_N22
\srl64[1][2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][2]~1_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[3]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][2]~1_combout\);

-- Location: IOIBUF_X59_Y49_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X57_Y35_N22
\srl64[1][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][0]~0_combout\ = ( \A[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \srl64[1][0]~0_combout\);

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

-- Location: IOIBUF_X59_Y36_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X57_Y36_N20
\srl64[1][4]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][4]~2_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[5]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][4]~2_combout\);

-- Location: IOIBUF_X59_Y36_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X57_Y36_N26
\srl64[1][6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][6]~3_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[7]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][6]~3_combout\);

-- Location: MLABCELL_X57_Y34_N6
\srl64[3][0]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][0]~4_combout\ = ( \srl64[1][6]~3_combout\ & ( \B[2]~input_o\ & ( (\srl64[1][4]~2_combout\) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][6]~3_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \srl64[1][4]~2_combout\) ) ) ) # ( \srl64[1][6]~3_combout\ 
-- & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\srl64[1][0]~0_combout\))) # (\B[1]~input_o\ & (\srl64[1][2]~1_combout\)) ) ) ) # ( !\srl64[1][6]~3_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\srl64[1][0]~0_combout\))) # (\B[1]~input_o\ & 
-- (\srl64[1][2]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][2]~1_combout\,
	datab => \ALT_INV_srl64[1][0]~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][4]~2_combout\,
	datae => \ALT_INV_srl64[1][6]~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \srl64[3][0]~4_combout\);

-- Location: MLABCELL_X54_Y34_N2
\Y_srl[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[4]~1_combout\ = ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & (!\ExtWord~input_o\ & !\B[5]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & \ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_srl[4]~1_combout\);

-- Location: MLABCELL_X54_Y34_N0
\Y_srl[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[0]~0_combout\ = ( !\B[3]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[4]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_srl[0]~0_combout\);

-- Location: IOIBUF_X59_Y39_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y51_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X57_Y36_N14
\srl64[1][10]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][10]~8_combout\ = ( \A[11]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( \B[0]~input_o\ & ( (\ExtWord~input_o\ & \A[3]~input_o\) ) ) ) # ( \A[11]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (\A[10]~input_o\)) # (\ExtWord~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[10]~input_o\)) # (\ExtWord~input_o\ & ((\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][10]~8_combout\);

-- Location: IOIBUF_X59_Y23_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y46_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X57_Y35_N4
\srl64[1][8]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][8]~9_combout\ = ( \A[0]~input_o\ & ( \A[1]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\))) # (\ExtWord~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ 
-- & ((\A[8]~input_o\)))) # (\B[0]~input_o\ & (((\A[9]~input_o\)) # (\ExtWord~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[8]~input_o\)) # (\ExtWord~input_o\))) # (\B[0]~input_o\ & (!\ExtWord~input_o\ & 
-- (\A[9]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \srl64[1][8]~9_combout\);

-- Location: IOIBUF_X59_Y34_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X59_Y30_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X57_Y36_N10
\srl64[1][12]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][12]~6_combout\ = ( \ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[5]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( \ExtWord~input_o\ & ( !\B[0]~input_o\ & ( \A[4]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][12]~6_combout\);

-- Location: IOIBUF_X59_Y46_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X54_Y35_N6
\srl64[1][14]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][14]~5_combout\ = ( \A[7]~input_o\ & ( \B[0]~input_o\ & ( (\ExtWord~input_o\) # (\A[15]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \B[0]~input_o\ & ( (\A[15]~input_o\ & !\ExtWord~input_o\) ) ) ) # ( \A[7]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (\A[14]~input_o\)) # (\ExtWord~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[14]~input_o\)) # (\ExtWord~input_o\ & ((\A[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][14]~5_combout\);

-- Location: LABCELL_X53_Y34_N20
\srl64[2][12]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][12]~7_combout\ = ( \srl64[1][14]~5_combout\ & ( (\srl64[1][12]~6_combout\) # (\B[1]~input_o\) ) ) # ( !\srl64[1][14]~5_combout\ & ( (!\B[1]~input_o\ & \srl64[1][12]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][12]~6_combout\,
	dataf => \ALT_INV_srl64[1][14]~5_combout\,
	combout => \srl64[2][12]~7_combout\);

-- Location: MLABCELL_X57_Y34_N10
\srl64[3][8]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][8]~10_combout\ = ( \srl64[2][12]~7_combout\ & ( ((!\B[1]~input_o\ & ((\srl64[1][8]~9_combout\))) # (\B[1]~input_o\ & (\srl64[1][10]~8_combout\))) # (\B[2]~input_o\) ) ) # ( !\srl64[2][12]~7_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\srl64[1][8]~9_combout\))) # (\B[1]~input_o\ & (\srl64[1][10]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][10]~8_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][8]~9_combout\,
	dataf => \ALT_INV_srl64[2][12]~7_combout\,
	combout => \srl64[3][8]~10_combout\);

-- Location: MLABCELL_X57_Y34_N32
\Y_srl[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[0]~2_combout\ = ( \srl64[3][8]~10_combout\ & ( ((\srl64[3][0]~4_combout\ & \Y_srl[0]~0_combout\)) # (\Y_srl[4]~1_combout\) ) ) # ( !\srl64[3][8]~10_combout\ & ( (\srl64[3][0]~4_combout\ & \Y_srl[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][0]~4_combout\,
	datac => \ALT_INV_Y_srl[4]~1_combout\,
	datad => \ALT_INV_Y_srl[0]~0_combout\,
	dataf => \ALT_INV_srl64[3][8]~10_combout\,
	combout => \Y_srl[0]~2_combout\);

-- Location: MLABCELL_X54_Y34_N24
\sra64[0][15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[0][15]~0_combout\ = ( \A[7]~input_o\ & ( (\A[15]~input_o\) # (\ExtWord~input_o\) ) ) # ( !\A[7]~input_o\ & ( (!\ExtWord~input_o\ & \A[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \sra64[0][15]~0_combout\);

-- Location: MLABCELL_X54_Y34_N30
\shamt[5]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \shamt[5]~0_combout\ = (\B[5]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	combout => \shamt[5]~0_combout\);

-- Location: LABCELL_X53_Y34_N6
\sll64[6][1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][1]~2_combout\ = ( !\B[3]~input_o\ & ( (!\shamt[5]~0_combout\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[5]~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[6][1]~2_combout\);

-- Location: LABCELL_X55_Y33_N30
\sra64[6][0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][0]~1_combout\ = ( !\B[4]~input_o\ & ( !\shamt[5]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \sra64[6][0]~1_combout\);

-- Location: MLABCELL_X57_Y34_N36
\Y_sra[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[0]~0_combout\ = ( \ExtWord~input_o\ & ( !\sll64[6][1]~2_combout\ ) ) # ( !\ExtWord~input_o\ & ( !\sra64[6][0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sll64[6][1]~2_combout\,
	datad => \ALT_INV_sra64[6][0]~1_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y_sra[0]~0_combout\);

-- Location: MLABCELL_X57_Y34_N8
\Y_sra[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[0]~1_combout\ = ( !\ExtWord~input_o\ & ( !\B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y_sra[0]~1_combout\);

-- Location: MLABCELL_X57_Y34_N34
\Y_sra[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[0]~2_combout\ = ( \srl64[3][8]~10_combout\ & ( (!\Y_sra[0]~0_combout\ & (((!\Y_sra[0]~1_combout\) # (\srl64[3][0]~4_combout\)))) # (\Y_sra[0]~0_combout\ & (\sra64[0][15]~0_combout\)) ) ) # ( !\srl64[3][8]~10_combout\ & ( (!\Y_sra[0]~0_combout\ & 
-- (((\srl64[3][0]~4_combout\ & \Y_sra[0]~1_combout\)))) # (\Y_sra[0]~0_combout\ & (\sra64[0][15]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111110101001101011111010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][15]~0_combout\,
	datab => \ALT_INV_srl64[3][0]~4_combout\,
	datac => \ALT_INV_Y_sra[0]~0_combout\,
	datad => \ALT_INV_Y_sra[0]~1_combout\,
	dataf => \ALT_INV_srl64[3][8]~10_combout\,
	combout => \Y_sra[0]~2_combout\);

-- Location: IOIBUF_X59_Y33_N63
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: MLABCELL_X57_Y35_N20
\sll64[2][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][0]~0_combout\ = ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][0]~0_combout\);

-- Location: MLABCELL_X57_Y34_N20
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((((\A[0]~input_o\))))) # (\ShiftFN[0]~input_o\ & (\sll64[6][1]~1_combout\ & (\sll64[2][0]~0_combout\))) ) ) # ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (((\Y_srl[0]~2_combout\)))) # (\ShiftFN[0]~input_o\ & ((((\Y_sra[0]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100000001000010100101111110101011101010110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_sll64[6][1]~1_combout\,
	datac => \ALT_INV_Y_srl[0]~2_combout\,
	datad => \ALT_INV_Y_sra[0]~2_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	datag => \ALT_INV_sll64[2][0]~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: MLABCELL_X57_Y36_N4
\srl64[1][5]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][5]~19_combout\ = ( \B[0]~input_o\ & ( (\A[6]~input_o\ & !\ExtWord~input_o\) ) ) # ( !\B[0]~input_o\ & ( (\A[5]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][5]~19_combout\);

-- Location: MLABCELL_X57_Y36_N24
\srl64[1][3]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][3]~18_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[4]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][3]~18_combout\);

-- Location: MLABCELL_X57_Y35_N38
\srl64[1][7]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][7]~20_combout\ = ( \A[7]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\)) # (\B[0]~input_o\ & ((!\ExtWord~input_o\ & (\A[8]~input_o\)) # (\ExtWord~input_o\ & ((\A[0]~input_o\))))) ) ) # ( !\A[7]~input_o\ & ( (\B[0]~input_o\ & 
-- ((!\ExtWord~input_o\ & (\A[8]~input_o\)) # (\ExtWord~input_o\ & ((\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \srl64[1][7]~20_combout\);

-- Location: MLABCELL_X57_Y35_N36
\srl64[1][1]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][1]~17_combout\ = ( \A[1]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[2]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \srl64[1][1]~17_combout\);

-- Location: LABCELL_X53_Y35_N10
\srl64[3][1]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][1]~21_combout\ = ( \B[1]~input_o\ & ( \srl64[1][1]~17_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][3]~18_combout\)) # (\B[2]~input_o\ & ((\srl64[1][7]~20_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][1]~17_combout\ & ( (!\B[2]~input_o\) # 
-- (\srl64[1][5]~19_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][1]~17_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][3]~18_combout\)) # (\B[2]~input_o\ & ((\srl64[1][7]~20_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][1]~17_combout\ & ( 
-- (\B[2]~input_o\ & \srl64[1][5]~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][5]~19_combout\,
	datac => \ALT_INV_srl64[1][3]~18_combout\,
	datad => \ALT_INV_srl64[1][7]~20_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][1]~17_combout\,
	combout => \srl64[3][1]~21_combout\);

-- Location: MLABCELL_X57_Y36_N16
\srl64[1][13]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][13]~11_combout\ = ( \ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[14]~input_o\ ) ) ) # ( \ExtWord~input_o\ & ( !\B[0]~input_o\ & ( \A[5]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][13]~11_combout\);

-- Location: MLABCELL_X57_Y35_N14
\srl64[1][9]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][9]~14_combout\ = ( \A[2]~input_o\ & ( \A[1]~input_o\ & ( ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\)))) # (\ExtWord~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \A[1]~input_o\ & ( (!\ExtWord~input_o\ & 
-- ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\))))) # (\ExtWord~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[10]~input_o\))))) # (\ExtWord~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \srl64[1][9]~14_combout\);

-- Location: MLABCELL_X57_Y36_N2
\srl64[1][11]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][11]~13_combout\ = ( \A[11]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[12]~input_o\)) # (\ExtWord~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[12]~input_o\)) # 
-- (\ExtWord~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( \A[11]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( !\B[0]~input_o\ & ( (\A[3]~input_o\ & \ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][11]~13_combout\);

-- Location: LABCELL_X53_Y35_N2
\srl64[2][9]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][9]~15_combout\ = ( \srl64[1][11]~13_combout\ & ( (\B[1]~input_o\) # (\srl64[1][9]~14_combout\) ) ) # ( !\srl64[1][11]~13_combout\ & ( (\srl64[1][9]~14_combout\ & !\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[1][9]~14_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][11]~13_combout\,
	combout => \srl64[2][9]~15_combout\);

-- Location: LABCELL_X53_Y35_N16
\sra64[3][9]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][9]~2_combout\ = ( \srl64[2][9]~15_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & (\srl64[1][13]~11_combout\)) # (\B[1]~input_o\ & ((\sra64[0][15]~0_combout\)))) ) ) # ( !\srl64[2][9]~15_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- (\srl64[1][13]~11_combout\)) # (\B[1]~input_o\ & ((\sra64[0][15]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][13]~11_combout\,
	datad => \ALT_INV_sra64[0][15]~0_combout\,
	dataf => \ALT_INV_srl64[2][9]~15_combout\,
	combout => \sra64[3][9]~2_combout\);

-- Location: MLABCELL_X57_Y34_N38
\Y_sra[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[1]~3_combout\ = ( \sra64[0][15]~0_combout\ & ( ((!\Y_sra[0]~1_combout\ & ((\sra64[3][9]~2_combout\))) # (\Y_sra[0]~1_combout\ & (\srl64[3][1]~21_combout\))) # (\Y_sra[0]~0_combout\) ) ) # ( !\sra64[0][15]~0_combout\ & ( (!\Y_sra[0]~0_combout\ & 
-- ((!\Y_sra[0]~1_combout\ & ((\sra64[3][9]~2_combout\))) # (\Y_sra[0]~1_combout\ & (\srl64[3][1]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][1]~21_combout\,
	datab => \ALT_INV_Y_sra[0]~0_combout\,
	datac => \ALT_INV_sra64[3][9]~2_combout\,
	datad => \ALT_INV_Y_sra[0]~1_combout\,
	dataf => \ALT_INV_sra64[0][15]~0_combout\,
	combout => \Y_sra[1]~3_combout\);

-- Location: LABCELL_X55_Y33_N34
\srl64[2][13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][13]~12_combout\ = ( \B[0]~input_o\ & ( (\srl64[1][13]~11_combout\ & !\B[1]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\srl64[1][13]~11_combout\)) # (\B[1]~input_o\ & ((\sra64[0][15]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][13]~11_combout\,
	datac => \ALT_INV_sra64[0][15]~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[2][13]~12_combout\);

-- Location: LABCELL_X53_Y35_N34
\Y_srl[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[1]~3_combout\ = ( \B[3]~input_o\ & ( (!\B[5]~input_o\ & (!\ExtWord~input_o\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_srl[1]~3_combout\);

-- Location: LABCELL_X53_Y35_N6
\Y_srl[1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[1]~4_combout\ = ( \B[2]~input_o\ & ( (\srl64[2][13]~12_combout\ & \Y_srl[1]~3_combout\) ) ) # ( !\B[2]~input_o\ & ( (\srl64[2][9]~15_combout\ & \Y_srl[1]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[2][13]~12_combout\,
	datab => \ALT_INV_srl64[2][9]~15_combout\,
	datac => \ALT_INV_Y_srl[1]~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Y_srl[1]~4_combout\);

-- Location: LABCELL_X53_Y35_N4
\srl64[5][9]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][9]~16_combout\ = ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[2][9]~15_combout\))) # (\B[2]~input_o\ & (\srl64[2][13]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[2][13]~12_combout\,
	datab => \ALT_INV_srl64[2][9]~15_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[5][9]~16_combout\);

-- Location: LABCELL_X55_Y33_N38
\Y_srl[1]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[1]~5_combout\ = ( \ExtWord~input_o\ & ( (((\Y_srl[0]~0_combout\ & \srl64[3][1]~21_combout\)) # (\srl64[5][9]~16_combout\)) # (\Y_srl[1]~4_combout\) ) ) # ( !\ExtWord~input_o\ & ( ((\Y_srl[0]~0_combout\ & \srl64[3][1]~21_combout\)) # 
-- (\Y_srl[1]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[0]~0_combout\,
	datab => \ALT_INV_srl64[3][1]~21_combout\,
	datac => \ALT_INV_Y_srl[1]~4_combout\,
	datad => \ALT_INV_srl64[5][9]~16_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y_srl[1]~5_combout\);

-- Location: MLABCELL_X57_Y35_N10
\sll64[6][1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][1]~3_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & (!\B[1]~input_o\ & \A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \sll64[6][1]~3_combout\);

-- Location: LABCELL_X55_Y33_N20
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((((\A[1]~input_o\))))) # (\ShiftFN[0]~input_o\ & (((\sll64[6][1]~1_combout\ & (\sll64[6][1]~3_combout\))))) ) ) # ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (((\Y_srl[1]~5_combout\)))) # (\ShiftFN[0]~input_o\ & (\Y_sra[1]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000101000110110001101110101010101011110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Y_sra[1]~3_combout\,
	datac => \ALT_INV_Y_srl[1]~5_combout\,
	datad => \ALT_INV_sll64[6][1]~3_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	datag => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X55_Y33_N32
\Y_srl[15]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[15]~6_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_srl[15]~6_combout\);

-- Location: LABCELL_X55_Y33_N4
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\Y_srl[15]~6_combout\) # ((\shamt[5]~0_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Y_srl[0]~0_combout\)))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Y_srl[0]~0_combout\ & 
-- \ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110111011000011111011101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[15]~6_combout\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_Y_srl[0]~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X57_Y34_N0
\Mux13~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = ( \srl64[1][8]~9_combout\ & ( \B[2]~input_o\ & ( (\srl64[1][6]~3_combout\) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][8]~9_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \srl64[1][6]~3_combout\) ) ) ) # ( \srl64[1][8]~9_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\srl64[1][2]~1_combout\))) # (\B[1]~input_o\ & (\srl64[1][4]~2_combout\)) ) ) ) # ( !\srl64[1][8]~9_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\srl64[1][2]~1_combout\))) # (\B[1]~input_o\ & 
-- (\srl64[1][4]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][4]~2_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][2]~1_combout\,
	datad => \ALT_INV_srl64[1][6]~3_combout\,
	datae => \ALT_INV_srl64[1][8]~9_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux13~11_combout\);

-- Location: LABCELL_X55_Y33_N0
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \shamt[5]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & ((!\Y_srl[0]~0_combout\))) ) ) # ( !\shamt[5]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- (!\Y_srl[15]~6_combout\))) # (\ShiftFN[1]~input_o\ & (((!\Y_srl[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101000000011100110100000001110111010001000111011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Y_srl[15]~6_combout\,
	datad => \ALT_INV_Y_srl[0]~0_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X55_Y33_N2
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X54_Y33_N12
\Mux13~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~12_combout\ = ( \A[2]~input_o\ & ( ((\Mux13~1_combout\ & (\Mux13~11_combout\ & !\Mux13~3_combout\))) # (\Mux13~0_combout\) ) ) # ( !\A[2]~input_o\ & ( (\Mux13~1_combout\ & (\Mux13~11_combout\ & (!\Mux13~3_combout\ & !\Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~1_combout\,
	datab => \ALT_INV_Mux13~11_combout\,
	datac => \ALT_INV_Mux13~3_combout\,
	datad => \ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Mux13~12_combout\);

-- Location: LABCELL_X55_Y33_N28
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\ShiftFN[0]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X57_Y36_N6
\srl64[2][10]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][10]~22_combout\ = ( \B[1]~input_o\ & ( \srl64[1][12]~6_combout\ ) ) # ( !\B[1]~input_o\ & ( \srl64[1][10]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[1][10]~8_combout\,
	datac => \ALT_INV_srl64[1][12]~6_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[2][10]~22_combout\);

-- Location: LABCELL_X53_Y34_N28
\sra64[2][14]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[2][14]~3_combout\ = ( \B[1]~input_o\ & ( \sra64[0][15]~0_combout\ ) ) # ( !\B[1]~input_o\ & ( \srl64[1][14]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sra64[0][15]~0_combout\,
	datac => \ALT_INV_srl64[1][14]~5_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sra64[2][14]~3_combout\);

-- Location: MLABCELL_X54_Y33_N8
\Mux13~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = ( \srl64[2][10]~22_combout\ & ( \sra64[2][14]~3_combout\ & ( (!\sra64[6][0]~1_combout\ & (\A[15]~input_o\ & (!\Mux4~0_combout\))) # (\sra64[6][0]~1_combout\ & (((!\Mux4~0_combout\) # (!\B[2]~input_o\)))) ) ) ) # ( 
-- !\srl64[2][10]~22_combout\ & ( \sra64[2][14]~3_combout\ & ( (!\Mux4~0_combout\ & ((!\sra64[6][0]~1_combout\ & (\A[15]~input_o\)) # (\sra64[6][0]~1_combout\ & ((\B[2]~input_o\))))) ) ) ) # ( \srl64[2][10]~22_combout\ & ( !\sra64[2][14]~3_combout\ & ( 
-- (!\sra64[6][0]~1_combout\ & (\A[15]~input_o\ & (!\Mux4~0_combout\))) # (\sra64[6][0]~1_combout\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\srl64[2][10]~22_combout\ & ( !\sra64[2][14]~3_combout\ & ( (\A[15]~input_o\ & (!\sra64[6][0]~1_combout\ & 
-- !\Mux4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000011100110100000001000000011100000111001101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_sra64[6][0]~1_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[2][10]~22_combout\,
	dataf => \ALT_INV_sra64[2][14]~3_combout\,
	combout => \Mux13~6_combout\);

-- Location: MLABCELL_X54_Y34_N28
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( !\ShiftFN[0]~input_o\ & ( ((\B[4]~input_o\) # (\ExtWord~input_o\)) # (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: MLABCELL_X54_Y33_N4
\Mux13~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~3_combout\ & !\Mux13~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~3_combout\,
	datab => \ALT_INV_Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: MLABCELL_X54_Y33_N14
\Mux13~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = ( \Mux13~5_combout\ & ( (\Mux13~6_combout\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux13~6_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Mux13~5_combout\,
	combout => \Mux13~7_combout\);

-- Location: MLABCELL_X54_Y33_N36
\Mux13~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\srl64[2][10]~22_combout\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[2][10]~22_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \Mux13~8_combout\);

-- Location: MLABCELL_X57_Y35_N8
\sll64[2][2]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][2]~4_combout\ = ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\))))) # (\B[0]~input_o\ & (!\B[1]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \sll64[2][2]~4_combout\);

-- Location: LABCELL_X53_Y34_N14
\srl64[2][14]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][14]~23_combout\ = ( !\B[1]~input_o\ & ( \srl64[1][14]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[1][14]~5_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \srl64[2][14]~23_combout\);

-- Location: MLABCELL_X54_Y33_N38
\srl64[5][10]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][10]~24_combout\ = ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\srl64[2][10]~22_combout\)) # (\B[2]~input_o\ & ((\srl64[2][14]~23_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[2][10]~22_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[2][14]~23_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \srl64[5][10]~24_combout\);

-- Location: MLABCELL_X54_Y33_N2
\Mux13~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = ( \Mux13~4_combout\ & ( \Mux4~0_combout\ & ( (!\Mux13~3_combout\ & \sll64[2][2]~4_combout\) ) ) ) # ( !\Mux13~4_combout\ & ( \Mux4~0_combout\ & ( (!\Mux13~3_combout\ & ((\sll64[2][2]~4_combout\))) # (\Mux13~3_combout\ & 
-- (\Mux13~8_combout\)) ) ) ) # ( \Mux13~4_combout\ & ( !\Mux4~0_combout\ & ( (!\Mux13~3_combout\ & (\sll64[2][2]~4_combout\)) # (\Mux13~3_combout\ & ((\srl64[5][10]~24_combout\))) ) ) ) # ( !\Mux13~4_combout\ & ( !\Mux4~0_combout\ & ( (!\Mux13~3_combout\ & 
-- \sll64[2][2]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100101111100011011000110110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~3_combout\,
	datab => \ALT_INV_Mux13~8_combout\,
	datac => \ALT_INV_sll64[2][2]~4_combout\,
	datad => \ALT_INV_srl64[5][10]~24_combout\,
	datae => \ALT_INV_Mux13~4_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux13~9_combout\);

-- Location: LABCELL_X53_Y34_N30
\sra64[6][10]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][10]~4_combout\ = ( \B[2]~input_o\ & ( (!\sll64[6][1]~2_combout\ & (\sra64[0][15]~0_combout\)) # (\sll64[6][1]~2_combout\ & ((\sra64[2][14]~3_combout\))) ) ) # ( !\B[2]~input_o\ & ( (!\sll64[6][1]~2_combout\ & ((\sra64[0][15]~0_combout\))) # 
-- (\sll64[6][1]~2_combout\ & (\srl64[2][10]~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[2][10]~22_combout\,
	datab => \ALT_INV_sra64[0][15]~0_combout\,
	datac => \ALT_INV_sll64[6][1]~2_combout\,
	datad => \ALT_INV_sra64[2][14]~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sra64[6][10]~4_combout\);

-- Location: MLABCELL_X54_Y33_N26
\Mux13~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = ( \sra64[6][10]~4_combout\ & ( \ShiftFN[0]~input_o\ & ( (\ExtWord~input_o\ & \Mux13~5_combout\) ) ) ) # ( \sra64[6][10]~4_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\Mux13~5_combout\ & (((\srl64[2][14]~23_combout\ & \B[2]~input_o\)) # 
-- (\ExtWord~input_o\))) ) ) ) # ( !\sra64[6][10]~4_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (\srl64[2][14]~23_combout\ & (\B[2]~input_o\ & \Mux13~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000101011100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_srl64[2][14]~23_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Mux13~5_combout\,
	datae => \ALT_INV_sra64[6][10]~4_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux13~10_combout\);

-- Location: MLABCELL_X54_Y33_N20
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (!\Mux13~0_combout\ & !\Mux13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X54_Y33_N22
\Mux13~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~13_combout\ = ( \Mux13~2_combout\ & ( (((\Mux13~10_combout\) # (\Mux13~9_combout\)) # (\Mux13~7_combout\)) # (\Mux13~12_combout\) ) ) # ( !\Mux13~2_combout\ & ( \Mux13~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~12_combout\,
	datab => \ALT_INV_Mux13~7_combout\,
	datac => \ALT_INV_Mux13~9_combout\,
	datad => \ALT_INV_Mux13~10_combout\,
	dataf => \ALT_INV_Mux13~2_combout\,
	combout => \Mux13~13_combout\);

-- Location: LABCELL_X55_Y33_N10
\srl64[2][11]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][11]~25_combout\ = ( \srl64[1][11]~13_combout\ & ( (!\B[1]~input_o\) # (\srl64[1][13]~11_combout\) ) ) # ( !\srl64[1][11]~13_combout\ & ( (\srl64[1][13]~11_combout\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[1][13]~11_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][11]~13_combout\,
	combout => \srl64[2][11]~25_combout\);

-- Location: MLABCELL_X54_Y33_N10
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \srl64[2][11]~25_combout\ & ( \sra64[0][15]~0_combout\ & ( (!\sra64[6][0]~1_combout\ & (\A[15]~input_o\ & ((!\Mux4~0_combout\)))) # (\sra64[6][0]~1_combout\ & (((!\B[2]~input_o\) # (!\Mux4~0_combout\)))) ) ) ) # ( 
-- !\srl64[2][11]~25_combout\ & ( \sra64[0][15]~0_combout\ & ( (!\Mux4~0_combout\ & ((!\sra64[6][0]~1_combout\ & (\A[15]~input_o\)) # (\sra64[6][0]~1_combout\ & ((\B[2]~input_o\))))) ) ) ) # ( \srl64[2][11]~25_combout\ & ( !\sra64[0][15]~0_combout\ & ( 
-- (!\sra64[6][0]~1_combout\ & (\A[15]~input_o\ & ((!\Mux4~0_combout\)))) # (\sra64[6][0]~1_combout\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\srl64[2][11]~25_combout\ & ( !\sra64[0][15]~0_combout\ & ( (\A[15]~input_o\ & (!\sra64[6][0]~1_combout\ & 
-- !\Mux4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000011101000011000001000111000000000111011100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_sra64[6][0]~1_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_srl64[2][11]~25_combout\,
	dataf => \ALT_INV_sra64[0][15]~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: MLABCELL_X54_Y33_N32
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Mux12~1_combout\ & ( (!\ExtWord~input_o\ & \Mux13~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Mux13~5_combout\,
	dataf => \ALT_INV_Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: MLABCELL_X57_Y35_N2
\sll64[2][3]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][3]~5_combout\ = ( \A[0]~input_o\ & ( \A[1]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[0]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)))) # 
-- (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \sll64[2][3]~5_combout\);

-- Location: LABCELL_X55_Y33_N6
\Y_srl[15]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[15]~7_combout\ = ( !\B[0]~input_o\ & ( (\sra64[0][15]~0_combout\ & !\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sra64[0][15]~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Y_srl[15]~7_combout\);

-- Location: LABCELL_X55_Y33_N12
\srl64[5][11]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][11]~26_combout\ = ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[2][11]~25_combout\))) # (\B[2]~input_o\ & (\Y_srl[15]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[15]~7_combout\,
	datab => \ALT_INV_srl64[2][11]~25_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[5][11]~26_combout\);

-- Location: MLABCELL_X54_Y33_N6
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \Mux4~0_combout\ & ( (!\Mux13~3_combout\ & \sll64[2][3]~5_combout\) ) ) # ( !\Mux4~0_combout\ & ( (!\Mux13~3_combout\ & (((\sll64[2][3]~5_combout\)))) # (\Mux13~3_combout\ & (\Mux13~4_combout\ & ((\srl64[5][11]~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~3_combout\,
	datab => \ALT_INV_Mux13~4_combout\,
	datac => \ALT_INV_sll64[2][3]~5_combout\,
	datad => \ALT_INV_srl64[5][11]~26_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux12~3_combout\);

-- Location: LABCELL_X53_Y35_N20
\Mux12~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = ( \srl64[1][3]~18_combout\ & ( \srl64[1][7]~20_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\srl64[1][5]~19_combout\))) # (\B[2]~input_o\ & (\srl64[1][9]~14_combout\))) ) ) ) # ( !\srl64[1][3]~18_combout\ & ( 
-- \srl64[1][7]~20_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][5]~19_combout\))) # (\B[2]~input_o\ & (\srl64[1][9]~14_combout\)))) ) ) ) # ( \srl64[1][3]~18_combout\ & ( !\srl64[1][7]~20_combout\ 
-- & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\srl64[1][5]~19_combout\))) # (\B[2]~input_o\ & (\srl64[1][9]~14_combout\)))) ) ) ) # ( !\srl64[1][3]~18_combout\ & ( !\srl64[1][7]~20_combout\ & ( (\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & ((\srl64[1][5]~19_combout\))) # (\B[2]~input_o\ & (\srl64[1][9]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][9]~14_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][5]~19_combout\,
	datae => \ALT_INV_srl64[1][3]~18_combout\,
	dataf => \ALT_INV_srl64[1][7]~20_combout\,
	combout => \Mux12~5_combout\);

-- Location: MLABCELL_X54_Y33_N34
\Mux12~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = ( \Mux12~5_combout\ & ( (!\Mux13~0_combout\ & (!\Mux13~3_combout\ & (\Mux13~1_combout\))) # (\Mux13~0_combout\ & (((\A[3]~input_o\)))) ) ) # ( !\Mux12~5_combout\ & ( (\A[3]~input_o\ & \Mux13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100100010000011110010001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~3_combout\,
	datab => \ALT_INV_Mux13~1_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: MLABCELL_X54_Y33_N30
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \Mux4~0_combout\ & ( (\Mux13~5_combout\ & ((!\B[2]~input_o\ & (\srl64[2][11]~25_combout\)) # (\B[2]~input_o\ & ((\Y_srl[15]~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000001010001000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~5_combout\,
	datab => \ALT_INV_srl64[2][11]~25_combout\,
	datac => \ALT_INV_Y_srl[15]~7_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux12~4_combout\);

-- Location: MLABCELL_X54_Y33_N28
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \sll64[6][1]~1_combout\ & ( (\Mux13~5_combout\ & (\srl64[2][11]~25_combout\ & \ExtWord~input_o\)) ) ) # ( !\sll64[6][1]~1_combout\ & ( (\Mux13~5_combout\ & (\ExtWord~input_o\ & \sra64[0][15]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~5_combout\,
	datab => \ALT_INV_srl64[2][11]~25_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_sra64[0][15]~0_combout\,
	dataf => \ALT_INV_sll64[6][1]~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X54_Y33_N18
\Mux12~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = ( \Mux12~4_combout\ & ( \Mux12~0_combout\ & ( (\Mux13~2_combout\) # (\Mux12~6_combout\) ) ) ) # ( !\Mux12~4_combout\ & ( \Mux12~0_combout\ & ( (\Mux13~2_combout\) # (\Mux12~6_combout\) ) ) ) # ( \Mux12~4_combout\ & ( !\Mux12~0_combout\ 
-- & ( (\Mux13~2_combout\) # (\Mux12~6_combout\) ) ) ) # ( !\Mux12~4_combout\ & ( !\Mux12~0_combout\ & ( ((\Mux13~2_combout\ & ((\Mux12~3_combout\) # (\Mux12~2_combout\)))) # (\Mux12~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~2_combout\,
	datab => \ALT_INV_Mux12~3_combout\,
	datac => \ALT_INV_Mux12~6_combout\,
	datad => \ALT_INV_Mux13~2_combout\,
	datae => \ALT_INV_Mux12~4_combout\,
	dataf => \ALT_INV_Mux12~0_combout\,
	combout => \Mux12~7_combout\);

-- Location: MLABCELL_X57_Y35_N24
\sll64[2][4]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][4]~6_combout\ = ( \A[3]~input_o\ & ( \A[1]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & 
-- \A[4]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[2]~input_o\))) ) ) ) # ( \A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (((\A[4]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[2]~input_o\ & (!\B[0]~input_o\))) ) ) ) # 
-- ( !\A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \sll64[2][4]~6_combout\);

-- Location: MLABCELL_X57_Y34_N24
\sll64[6][4]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][4]~7_combout\ = ( \sll64[6][1]~2_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][4]~6_combout\)) # (\B[2]~input_o\ & ((\sll64[2][0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][4]~6_combout\,
	datad => \ALT_INV_sll64[2][0]~0_combout\,
	dataf => \ALT_INV_sll64[6][1]~2_combout\,
	combout => \sll64[6][4]~7_combout\);

-- Location: MLABCELL_X57_Y34_N30
\srl64[3][4]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][4]~27_combout\ = ( \srl64[1][6]~3_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\srl64[1][8]~9_combout\))) # (\B[1]~input_o\ & (\srl64[1][10]~8_combout\)) ) ) ) # ( !\srl64[1][6]~3_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\srl64[1][8]~9_combout\))) # (\B[1]~input_o\ & (\srl64[1][10]~8_combout\)) ) ) ) # ( \srl64[1][6]~3_combout\ & ( !\B[2]~input_o\ & ( (\B[1]~input_o\) # (\srl64[1][4]~2_combout\) ) ) ) # ( !\srl64[1][6]~3_combout\ & ( !\B[2]~input_o\ & ( 
-- (\srl64[1][4]~2_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][4]~2_combout\,
	datab => \ALT_INV_srl64[1][10]~8_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][8]~9_combout\,
	datae => \ALT_INV_srl64[1][6]~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \srl64[3][4]~27_combout\);

-- Location: MLABCELL_X57_Y34_N14
\Y_sra[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[4]~4_combout\ = ( \srl64[3][4]~27_combout\ & ( \B[2]~input_o\ & ( ((\Y_sra[0]~1_combout\ & !\Y_sra[0]~0_combout\)) # (\sra64[0][15]~0_combout\) ) ) ) # ( !\srl64[3][4]~27_combout\ & ( \B[2]~input_o\ & ( (\sra64[0][15]~0_combout\ & 
-- ((!\Y_sra[0]~1_combout\) # (\Y_sra[0]~0_combout\))) ) ) ) # ( \srl64[3][4]~27_combout\ & ( !\B[2]~input_o\ & ( (!\Y_sra[0]~0_combout\ & (((\srl64[2][12]~7_combout\)) # (\Y_sra[0]~1_combout\))) # (\Y_sra[0]~0_combout\ & (((\sra64[0][15]~0_combout\)))) ) ) 
-- ) # ( !\srl64[3][4]~27_combout\ & ( !\B[2]~input_o\ & ( (!\Y_sra[0]~0_combout\ & (!\Y_sra[0]~1_combout\ & ((\srl64[2][12]~7_combout\)))) # (\Y_sra[0]~0_combout\ & (((\sra64[0][15]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011010001111100111100001011000010110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[0]~1_combout\,
	datab => \ALT_INV_Y_sra[0]~0_combout\,
	datac => \ALT_INV_sra64[0][15]~0_combout\,
	datad => \ALT_INV_srl64[2][12]~7_combout\,
	datae => \ALT_INV_srl64[3][4]~27_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Y_sra[4]~4_combout\);

-- Location: MLABCELL_X57_Y34_N26
\Y_srl[4]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[4]~8_combout\ = ( \srl64[2][12]~7_combout\ & ( (!\B[2]~input_o\ & (((\srl64[3][4]~27_combout\ & \Y_srl[0]~0_combout\)) # (\Y_srl[4]~1_combout\))) # (\B[2]~input_o\ & (\srl64[3][4]~27_combout\ & ((\Y_srl[0]~0_combout\)))) ) ) # ( 
-- !\srl64[2][12]~7_combout\ & ( (\srl64[3][4]~27_combout\ & \Y_srl[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[3][4]~27_combout\,
	datac => \ALT_INV_Y_srl[4]~1_combout\,
	datad => \ALT_INV_Y_srl[0]~0_combout\,
	dataf => \ALT_INV_srl64[2][12]~7_combout\,
	combout => \Y_srl[4]~8_combout\);

-- Location: MLABCELL_X57_Y34_N18
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Y_srl[4]~8_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\sll64[6][4]~7_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_sra[4]~4_combout\))) ) ) ) # ( !\Y_srl[4]~8_combout\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & (\sll64[6][4]~7_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_sra[4]~4_combout\))) ) ) ) # ( \Y_srl[4]~8_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\A[4]~input_o\) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Y_srl[4]~8_combout\ & ( 
-- !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & \A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][4]~7_combout\,
	datab => \ALT_INV_Y_sra[4]~4_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_Y_srl[4]~8_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X53_Y34_N38
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \B[4]~input_o\ & ( !\ShiftFN[0]~input_o\ ) ) # ( !\B[4]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (((\B[3]~input_o\ & \B[2]~input_o\)) # (\ExtWord~input_o\)) # (\B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X53_Y34_N26
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Mux10~0_combout\ & ( (\Y_srl[15]~6_combout\ & !\Mux4~0_combout\) ) ) # ( !\Mux10~0_combout\ & ( \Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[15]~6_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X53_Y35_N36
\Mux10~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~14_combout\ = ( \A[15]~input_o\ & ( !\ExtWord~input_o\ & ( (\ShiftFN[0]~input_o\ & (((\B[2]~input_o\) # (\B[4]~input_o\)) # (\B[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux10~14_combout\);

-- Location: LABCELL_X53_Y34_N8
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & (!\ExtWord~input_o\ & (!\B[2]~input_o\ & !\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X53_Y34_N24
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \B[1]~input_o\ & ( (\Mux10~2_combout\ & \sra64[0][15]~0_combout\) ) ) # ( !\B[1]~input_o\ & ( (\srl64[1][13]~11_combout\ & \Mux10~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[1][13]~11_combout\,
	datac => \ALT_INV_Mux10~2_combout\,
	datad => \ALT_INV_sra64[0][15]~0_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LABCELL_X53_Y34_N2
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \sll64[6][1]~1_combout\ & ( \B[1]~input_o\ & ( (\sra64[0][15]~0_combout\ & (\ExtWord~input_o\ & !\Mux10~0_combout\)) ) ) ) # ( !\sll64[6][1]~1_combout\ & ( \B[1]~input_o\ & ( (\sra64[0][15]~0_combout\ & (\ExtWord~input_o\ & 
-- !\Mux10~0_combout\)) ) ) ) # ( \sll64[6][1]~1_combout\ & ( !\B[1]~input_o\ & ( (\srl64[1][13]~11_combout\ & (\ExtWord~input_o\ & !\Mux10~0_combout\)) ) ) ) # ( !\sll64[6][1]~1_combout\ & ( !\B[1]~input_o\ & ( (\sra64[0][15]~0_combout\ & (\ExtWord~input_o\ 
-- & !\Mux10~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000001010000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][13]~11_combout\,
	datab => \ALT_INV_sra64[0][15]~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Mux10~0_combout\,
	datae => \ALT_INV_sll64[6][1]~1_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X53_Y35_N0
\Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = ( !\Mux10~1_combout\ & ( (!\Mux10~14_combout\ & (!\Mux10~3_combout\ & ((!\Mux9~0_combout\) # (!\srl64[2][13]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datab => \ALT_INV_Mux10~14_combout\,
	datac => \ALT_INV_Mux10~3_combout\,
	datad => \ALT_INV_srl64[2][13]~12_combout\,
	dataf => \ALT_INV_Mux10~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: LABCELL_X55_Y33_N18
\Mux10~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (!\B[2]~input_o\ & \Y_srl[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Y_srl[0]~0_combout\,
	combout => \Mux10~6_combout\);

-- Location: LABCELL_X53_Y35_N18
\Mux10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = ( \Y_srl[0]~0_combout\ & ( (\B[2]~input_o\) # (\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_Y_srl[0]~0_combout\,
	combout => \Mux10~5_combout\);

-- Location: LABCELL_X53_Y35_N26
\Mux10~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = ( \Mux10~5_combout\ & ( \srl64[1][5]~19_combout\ & ( (!\Mux10~6_combout\ & (\srl64[2][9]~15_combout\)) # (\Mux10~6_combout\ & ((\srl64[1][7]~20_combout\))) ) ) ) # ( !\Mux10~5_combout\ & ( \srl64[1][5]~19_combout\ & ( 
-- (!\Mux10~4_combout\) # (\Mux10~6_combout\) ) ) ) # ( \Mux10~5_combout\ & ( !\srl64[1][5]~19_combout\ & ( (!\Mux10~6_combout\ & (\srl64[2][9]~15_combout\)) # (\Mux10~6_combout\ & ((\srl64[1][7]~20_combout\))) ) ) ) # ( !\Mux10~5_combout\ & ( 
-- !\srl64[1][5]~19_combout\ & ( (!\Mux10~4_combout\ & !\Mux10~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000001100000011111110101111101011110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~4_combout\,
	datab => \ALT_INV_srl64[2][9]~15_combout\,
	datac => \ALT_INV_Mux10~6_combout\,
	datad => \ALT_INV_srl64[1][7]~20_combout\,
	datae => \ALT_INV_Mux10~5_combout\,
	dataf => \ALT_INV_srl64[1][5]~19_combout\,
	combout => \Mux10~7_combout\);

-- Location: LABCELL_X55_Y33_N8
\Mux10~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = ( \B[3]~input_o\ & ( (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\) # (\B[2]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (\ShiftFN[0]~input_o\ & (((!\sra64[6][0]~1_combout\ & !\ShiftFN[1]~input_o\)) # (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000011000010110000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[6][0]~1_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux10~8_combout\);

-- Location: LABCELL_X55_Y33_N16
\Mux10~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = ( \B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\) # ((\B[2]~input_o\ & \ShiftFN[1]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\) # ((\B[2]~input_o\ & ((\ShiftFN[1]~input_o\) # (\sra64[6][0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110111011101010111011101110101010101110111010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sra64[6][0]~1_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux10~9_combout\);

-- Location: MLABCELL_X57_Y36_N28
\sll64[2][5]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][5]~8_combout\ = ( \A[2]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \B[0]~input_o\ & ( (\A[4]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[2]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\A[2]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][5]~8_combout\);

-- Location: LABCELL_X55_Y35_N4
\Mux10~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = ( !\Mux10~9_combout\ & ( ((!\ShiftFN[1]~input_o\ & (((!\Mux10~8_combout\ & \sll64[2][5]~8_combout\)))) # (\ShiftFN[1]~input_o\ & (\Mux10~7_combout\))) ) ) # ( \Mux10~9_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\Mux10~8_combout\ & 
-- (\A[5]~input_o\)) # (\Mux10~8_combout\ & ((\sll64[6][1]~3_combout\)))))) # (\ShiftFN[1]~input_o\ & (\Mux10~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~7_combout\,
	datab => \ALT_INV_Mux10~8_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_sll64[6][1]~3_combout\,
	datae => \ALT_INV_Mux10~9_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_sll64[2][5]~8_combout\,
	combout => \Mux10~10_combout\);

-- Location: LABCELL_X53_Y34_N12
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \ExtWord~input_o\ & ( (!\sll64[6][1]~1_combout\ & (!\Mux10~0_combout\ & \sra64[0][15]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sll64[6][1]~1_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_sra64[0][15]~0_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X53_Y34_N34
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( !\B[4]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[2]~input_o\ & ((!\ExtWord~input_o\ & (!\B[5]~input_o\)) # (\ExtWord~input_o\ & ((!\B[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LABCELL_X53_Y35_N28
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( !\Mux10~14_combout\ & ( \Mux9~2_combout\ & ( (!\sra64[2][14]~3_combout\ & (!\Mux9~1_combout\ & ((!\Mux9~0_combout\) # (!\srl64[2][14]~23_combout\)))) ) ) ) # ( !\Mux10~14_combout\ & ( !\Mux9~2_combout\ & ( (!\Mux9~1_combout\ & 
-- ((!\Mux9~0_combout\) # (!\srl64[2][14]~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000000000000000000011001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datab => \ALT_INV_sra64[2][14]~3_combout\,
	datac => \ALT_INV_srl64[2][14]~23_combout\,
	datad => \ALT_INV_Mux9~1_combout\,
	datae => \ALT_INV_Mux10~14_combout\,
	dataf => \ALT_INV_Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LABCELL_X53_Y35_N12
\Mux9~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = ( \Mux10~6_combout\ & ( \srl64[1][6]~3_combout\ & ( (!\Mux10~5_combout\) # (\srl64[1][8]~9_combout\) ) ) ) # ( !\Mux10~6_combout\ & ( \srl64[1][6]~3_combout\ & ( (!\Mux10~5_combout\ & (!\Mux9~3_combout\)) # (\Mux10~5_combout\ & 
-- ((\srl64[2][10]~22_combout\))) ) ) ) # ( \Mux10~6_combout\ & ( !\srl64[1][6]~3_combout\ & ( (\srl64[1][8]~9_combout\ & \Mux10~5_combout\) ) ) ) # ( !\Mux10~6_combout\ & ( !\srl64[1][6]~3_combout\ & ( (!\Mux10~5_combout\ & (!\Mux9~3_combout\)) # 
-- (\Mux10~5_combout\ & ((\srl64[2][10]~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111000000110000001110100000101011111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~3_combout\,
	datab => \ALT_INV_srl64[1][8]~9_combout\,
	datac => \ALT_INV_Mux10~5_combout\,
	datad => \ALT_INV_srl64[2][10]~22_combout\,
	datae => \ALT_INV_Mux10~6_combout\,
	dataf => \ALT_INV_srl64[1][6]~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: MLABCELL_X57_Y36_N34
\sll64[2][6]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][6]~9_combout\ = ( \A[3]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( \B[0]~input_o\ & ( (\A[5]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[3]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A[6]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\A[3]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[6]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][6]~9_combout\);

-- Location: LABCELL_X55_Y35_N20
\Mux9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = ( !\Mux10~9_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\sll64[2][6]~9_combout\ & (!\Mux10~8_combout\))))) # (\ShiftFN[1]~input_o\ & (\Mux9~4_combout\)) ) ) # ( \Mux10~9_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\Mux10~8_combout\ & 
-- (\A[6]~input_o\)) # (\Mux10~8_combout\ & ((\sll64[2][2]~4_combout\)))))) # (\ShiftFN[1]~input_o\ & (\Mux9~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100010001000110110001000100011011000100010001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_Mux10~8_combout\,
	datae => \ALT_INV_Mux10~9_combout\,
	dataf => \ALT_INV_sll64[2][2]~4_combout\,
	datag => \ALT_INV_sll64[2][6]~9_combout\,
	combout => \Mux9~5_combout\);

-- Location: LABCELL_X53_Y35_N32
\srl64[2][7]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][7]~28_combout\ = ( \srl64[1][7]~20_combout\ & ( (!\B[1]~input_o\) # (\srl64[1][9]~14_combout\) ) ) # ( !\srl64[1][7]~20_combout\ & ( (\srl64[1][9]~14_combout\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[1][9]~14_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][7]~20_combout\,
	combout => \srl64[2][7]~28_combout\);

-- Location: LABCELL_X55_Y36_N6
\Y_srl[7]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[7]~9_combout\ = ( \srl64[2][11]~25_combout\ & ( \B[2]~input_o\ & ( \Y_srl[0]~0_combout\ ) ) ) # ( \srl64[2][11]~25_combout\ & ( !\B[2]~input_o\ & ( (!\Y_srl[0]~0_combout\ & (\Y_srl[15]~7_combout\ & ((\Y_srl[4]~1_combout\)))) # (\Y_srl[0]~0_combout\ 
-- & (((\Y_srl[15]~7_combout\ & \Y_srl[4]~1_combout\)) # (\srl64[2][7]~28_combout\))) ) ) ) # ( !\srl64[2][11]~25_combout\ & ( !\B[2]~input_o\ & ( (!\Y_srl[0]~0_combout\ & (\Y_srl[15]~7_combout\ & ((\Y_srl[4]~1_combout\)))) # (\Y_srl[0]~0_combout\ & 
-- (((\Y_srl[15]~7_combout\ & \Y_srl[4]~1_combout\)) # (\srl64[2][7]~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[0]~0_combout\,
	datab => \ALT_INV_Y_srl[15]~7_combout\,
	datac => \ALT_INV_srl64[2][7]~28_combout\,
	datad => \ALT_INV_Y_srl[4]~1_combout\,
	datae => \ALT_INV_srl64[2][11]~25_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Y_srl[7]~9_combout\);

-- Location: LABCELL_X55_Y36_N20
\Y_sra[7]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[7]~6_combout\ = ( !\sll64[6][1]~2_combout\ & ( (((!\ExtWord~input_o\ & ((\A[15]~input_o\))) # (\ExtWord~input_o\ & (\A[7]~input_o\)))) ) ) # ( \sll64[6][1]~2_combout\ & ( (!\ExtWord~input_o\ & (((!\B[2]~input_o\ & (\srl64[2][7]~28_combout\)) # 
-- (\B[2]~input_o\ & ((\srl64[2][11]~25_combout\)))))) # (\ExtWord~input_o\ & (\A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001100110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_srl64[2][7]~28_combout\,
	datac => \ALT_INV_srl64[2][11]~25_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[6][1]~2_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	datag => \ALT_INV_A[15]~input_o\,
	combout => \Y_sra[7]~6_combout\);

-- Location: MLABCELL_X57_Y36_N36
\sll64[2][7]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][7]~10_combout\ = ( \A[7]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[6]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\A[7]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[6]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[4]~input_o\)) ) ) ) # ( \A[7]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( !\B[0]~input_o\ & ( (\A[5]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][7]~10_combout\);

-- Location: LABCELL_X55_Y35_N8
\Y_sll[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[7]~0_combout\ = ( \sll64[2][7]~10_combout\ & ( (\sll64[6][1]~2_combout\ & ((!\B[2]~input_o\) # (\sll64[2][3]~5_combout\))) ) ) # ( !\sll64[2][7]~10_combout\ & ( (\sll64[2][3]~5_combout\ & (\sll64[6][1]~2_combout\ & \B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sll64[2][3]~5_combout\,
	datac => \ALT_INV_sll64[6][1]~2_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_sll64[2][7]~10_combout\,
	combout => \Y_sll[7]~0_combout\);

-- Location: LABCELL_X55_Y36_N8
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Y_sll[7]~0_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\) # (\Y_sra[7]~6_combout\) ) ) ) # ( !\Y_sll[7]~0_combout\ & ( \ShiftFN[0]~input_o\ & ( (\Y_sra[7]~6_combout\ & \ShiftFN[1]~input_o\) ) ) ) # ( 
-- \Y_sll[7]~0_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\A[7]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Y_srl[7]~9_combout\))) ) ) ) # ( !\Y_sll[7]~0_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\A[7]~input_o\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Y_srl[7]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_Y_srl[7]~9_combout\,
	datac => \ALT_INV_Y_sra[7]~6_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Y_sll[7]~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X55_Y33_N26
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \ShiftFN[0]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X53_Y34_N10
\Mux4~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!\Mux4~0_combout\) # (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~4_combout\);

-- Location: MLABCELL_X54_Y34_N22
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \Y_srl[15]~6_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\) # (!\A[7]~input_o\) ) ) ) # ( !\Y_srl[15]~6_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\) # (!\A[7]~input_o\) ) ) ) # ( \Y_srl[15]~6_combout\ & ( 
-- !\ShiftFN[0]~input_o\ & ( (!\Y_srl[15]~7_combout\) # ((!\ExtWord~input_o\ & \B[5]~input_o\)) ) ) ) # ( !\Y_srl[15]~6_combout\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010101110111011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[15]~7_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_Y_srl[15]~6_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X55_Y34_N32
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Mux4~4_combout\ & ( \Mux6~1_combout\ & ( (!\sll64[6][1]~2_combout\ & (\ShiftFN[1]~input_o\ & (\Mux2~0_combout\ & \sra64[0][15]~0_combout\))) ) ) ) # ( \Mux4~4_combout\ & ( !\Mux6~1_combout\ & ( \ShiftFN[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][1]~2_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_sra64[0][15]~0_combout\,
	datae => \ALT_INV_Mux4~4_combout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X54_Y34_N16
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[5]~input_o\ & !\ShiftFN[1]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X55_Y34_N10
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \ShiftFN[0]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X55_Y35_N10
\sll64[5][7]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[5][7]~12_combout\ = ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[2]~input_o\ & (\sll64[2][7]~10_combout\)) # (\B[2]~input_o\ & ((\sll64[2][3]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][7]~10_combout\,
	datab => \ALT_INV_sll64[2][3]~5_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[5][7]~12_combout\);

-- Location: MLABCELL_X54_Y34_N6
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \sll64[5][7]~12_combout\ & ( (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_sll64[5][7]~12_combout\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X55_Y33_N36
\Mux7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\Mux6~2_combout\ & ((!\Y_srl[0]~0_combout\) # (!\srl64[3][8]~10_combout\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux6~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[0]~0_combout\,
	datac => \ALT_INV_Mux6~2_combout\,
	datad => \ALT_INV_srl64[3][8]~10_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X55_Y35_N12
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \B[3]~input_o\ & ( (!\ExtWord~input_o\ & ((\B[4]~input_o\) # (\B[2]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # ((!\ExtWord~input_o\ & \B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101110101010101110111001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LABCELL_X55_Y35_N14
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \B[3]~input_o\ & ( (!\ExtWord~input_o\ & ((\B[4]~input_o\) # (\B[2]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( ((!\ExtWord~input_o\ & \B[4]~input_o\)) # (\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X54_Y34_N12
\A_left[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[8]~0_combout\ = (!\ExtWord~input_o\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	combout => \A_left[8]~0_combout\);

-- Location: MLABCELL_X57_Y35_N30
\sll64[2][8]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][8]~11_combout\ = ( \A[6]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( !\A[6]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[5]~input_o\)) ) ) ) # ( \A[6]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A_left[8]~0_combout\) ) ) ) # ( !\A[6]~input_o\ & ( !\B[0]~input_o\ & ( (\A_left[8]~0_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A_left[8]~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][8]~11_combout\);

-- Location: LABCELL_X55_Y35_N18
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \sll64[2][0]~0_combout\ & ( (!\Mux4~3_combout\ & ((!\Mux4~2_combout\) # ((\sll64[2][4]~6_combout\)))) # (\Mux4~3_combout\ & (!\Mux4~2_combout\ & (\sll64[2][8]~11_combout\))) ) ) # ( !\sll64[2][0]~0_combout\ & ( (!\Mux4~3_combout\ & 
-- (\Mux4~2_combout\ & ((\sll64[2][4]~6_combout\)))) # (\Mux4~3_combout\ & (!\Mux4~2_combout\ & (\sll64[2][8]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~3_combout\,
	datab => \ALT_INV_Mux4~2_combout\,
	datac => \ALT_INV_sll64[2][8]~11_combout\,
	datad => \ALT_INV_sll64[2][4]~6_combout\,
	dataf => \ALT_INV_sll64[2][0]~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X55_Y34_N18
\Mux7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \Mux7~0_combout\ & ( \A[8]~input_o\ & ( ((!\Mux7~2_combout\) # (\Mux6~0_combout\)) # (\Mux7~1_combout\) ) ) ) # ( !\Mux7~0_combout\ & ( \A[8]~input_o\ & ( ((!\Mux7~2_combout\) # ((\Mux6~0_combout\ & !\Mux4~1_combout\))) # 
-- (\Mux7~1_combout\) ) ) ) # ( \Mux7~0_combout\ & ( !\A[8]~input_o\ & ( ((!\Mux7~2_combout\) # ((\Mux6~0_combout\ & \Mux4~1_combout\))) # (\Mux7~1_combout\) ) ) ) # ( !\Mux7~0_combout\ & ( !\A[8]~input_o\ & ( (!\Mux7~2_combout\) # (\Mux7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101011111111111011101011111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~1_combout\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux4~1_combout\,
	datad => \ALT_INV_Mux7~2_combout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LABCELL_X55_Y34_N24
\Mux6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = ( \sra64[3][9]~2_combout\ & ( (\Mux6~1_combout\ & ((!\Mux2~0_combout\) # ((!\sra64[0][15]~0_combout\ & !\sll64[6][1]~2_combout\)))) ) ) # ( !\sra64[3][9]~2_combout\ & ( (\Mux6~1_combout\ & ((!\Mux2~0_combout\) # 
-- ((!\sra64[0][15]~0_combout\) # (\sll64[6][1]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000010100000111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_sra64[0][15]~0_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_sll64[6][1]~2_combout\,
	dataf => \ALT_INV_sra64[3][9]~2_combout\,
	combout => \Mux6~5_combout\);

-- Location: LABCELL_X58_Y35_N0
\A_left[9]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[9]~1_combout\ = ( !\ExtWord~input_o\ & ( \A[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \A_left[9]~1_combout\);

-- Location: MLABCELL_X57_Y35_N32
\sll64[2][9]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][9]~13_combout\ = ( \A[6]~input_o\ & ( \A_left[9]~1_combout\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[7]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A_left[8]~0_combout\)))) ) ) ) # ( !\A[6]~input_o\ & ( \A_left[9]~1_combout\ 
-- & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[7]~input_o\))) # (\B[0]~input_o\ & (((\A_left[8]~0_combout\ & !\B[1]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A_left[9]~1_combout\ & ( (!\B[0]~input_o\ & (\A[7]~input_o\ & ((\B[1]~input_o\)))) # 
-- (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A_left[8]~0_combout\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\A_left[9]~1_combout\ & ( (!\B[0]~input_o\ & (\A[7]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A_left[8]~0_combout\ & !\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A_left[8]~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A_left[9]~1_combout\,
	combout => \sll64[2][9]~13_combout\);

-- Location: LABCELL_X55_Y35_N16
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \sll64[6][1]~3_combout\ & ( (!\Mux4~3_combout\ & ((!\Mux4~2_combout\) # ((\sll64[2][5]~8_combout\)))) # (\Mux4~3_combout\ & (!\Mux4~2_combout\ & (\sll64[2][9]~13_combout\))) ) ) # ( !\sll64[6][1]~3_combout\ & ( (!\Mux4~3_combout\ & 
-- (\Mux4~2_combout\ & ((\sll64[2][5]~8_combout\)))) # (\Mux4~3_combout\ & (!\Mux4~2_combout\ & (\sll64[2][9]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~3_combout\,
	datab => \ALT_INV_Mux4~2_combout\,
	datac => \ALT_INV_sll64[2][9]~13_combout\,
	datad => \ALT_INV_sll64[2][5]~8_combout\,
	dataf => \ALT_INV_sll64[6][1]~3_combout\,
	combout => \Mux6~3_combout\);

-- Location: LABCELL_X55_Y34_N20
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \Mux6~0_combout\ & ( (!\Mux4~1_combout\ & (\A[9]~input_o\)) # (\Mux4~1_combout\ & ((\Mux6~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_Mux6~3_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~4_combout\);

-- Location: LABCELL_X55_Y34_N28
\Mux6~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = ( \srl64[5][9]~16_combout\ & ( \Mux6~2_combout\ ) ) # ( !\srl64[5][9]~16_combout\ & ( \Mux6~2_combout\ ) ) # ( \srl64[5][9]~16_combout\ & ( !\Mux6~2_combout\ & ( ((\ShiftFN[1]~input_o\ & ((!\Mux6~5_combout\) # (!\Mux4~4_combout\)))) # 
-- (\Mux6~4_combout\) ) ) ) # ( !\srl64[5][9]~16_combout\ & ( !\Mux6~2_combout\ & ( ((!\Mux6~5_combout\ & (\Mux4~4_combout\ & \ShiftFN[1]~input_o\))) # (\Mux6~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011111110111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~5_combout\,
	datab => \ALT_INV_Mux4~4_combout\,
	datac => \ALT_INV_Mux6~4_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_srl64[5][9]~16_combout\,
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \Mux6~6_combout\);

-- Location: MLABCELL_X54_Y34_N14
\A_left[10]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[10]~2_combout\ = (!\ExtWord~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	combout => \A_left[10]~2_combout\);

-- Location: MLABCELL_X57_Y35_N16
\sll64[2][10]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][10]~14_combout\ = ( \A_left[10]~2_combout\ & ( \A_left[9]~1_combout\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A_left[8]~0_combout\))) # (\B[0]~input_o\ & (\A[7]~input_o\))) ) ) ) # ( !\A_left[10]~2_combout\ & ( \A_left[9]~1_combout\ & ( 
-- (!\B[0]~input_o\ & (((\A_left[8]~0_combout\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( \A_left[10]~2_combout\ & ( !\A_left[9]~1_combout\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # 
-- (\A_left[8]~0_combout\)))) # (\B[0]~input_o\ & (\A[7]~input_o\ & ((\B[1]~input_o\)))) ) ) ) # ( !\A_left[10]~2_combout\ & ( !\A_left[9]~1_combout\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A_left[8]~0_combout\))) # (\B[0]~input_o\ & (\A[7]~input_o\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A_left[8]~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[10]~2_combout\,
	dataf => \ALT_INV_A_left[9]~1_combout\,
	combout => \sll64[2][10]~14_combout\);

-- Location: LABCELL_X55_Y35_N2
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \sll64[2][2]~4_combout\ & ( (!\Mux4~3_combout\ & ((!\Mux4~2_combout\) # ((\sll64[2][6]~9_combout\)))) # (\Mux4~3_combout\ & (!\Mux4~2_combout\ & ((\sll64[2][10]~14_combout\)))) ) ) # ( !\sll64[2][2]~4_combout\ & ( (!\Mux4~3_combout\ & 
-- (\Mux4~2_combout\ & (\sll64[2][6]~9_combout\))) # (\Mux4~3_combout\ & (!\Mux4~2_combout\ & ((\sll64[2][10]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~3_combout\,
	datab => \ALT_INV_Mux4~2_combout\,
	datac => \ALT_INV_sll64[2][6]~9_combout\,
	datad => \ALT_INV_sll64[2][10]~14_combout\,
	dataf => \ALT_INV_sll64[2][2]~4_combout\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X54_Y34_N8
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \A[10]~input_o\ & ( \Mux5~0_combout\ & ( (!\ShiftFN[0]~input_o\) # ((!\ExtWord~input_o\ & (!\B[5]~input_o\)) # (\ExtWord~input_o\ & ((\sll64[5][7]~12_combout\)))) ) ) ) # ( !\A[10]~input_o\ & ( \Mux5~0_combout\ & ( 
-- (\ShiftFN[0]~input_o\ & ((!\ExtWord~input_o\ & (!\B[5]~input_o\)) # (\ExtWord~input_o\ & ((\sll64[5][7]~12_combout\))))) ) ) ) # ( \A[10]~input_o\ & ( !\Mux5~0_combout\ & ( (!\ShiftFN[0]~input_o\) # ((\ExtWord~input_o\ & \sll64[5][7]~12_combout\)) ) ) ) # 
-- ( !\A[10]~input_o\ & ( !\Mux5~0_combout\ & ( (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & \sll64[5][7]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001101010101011101101000000010100011110101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_sll64[5][7]~12_combout\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X55_Y34_N4
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( !\Mux4~4_combout\ & ( ((!\ShiftFN[1]~input_o\ & (\Mux5~1_combout\)) # (\ShiftFN[1]~input_o\ & (((\srl64[5][10]~24_combout\))))) ) ) # ( \Mux4~4_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux5~1_combout\)) # (\ShiftFN[1]~input_o\ & 
-- (((!\Mux6~1_combout\) # ((\sra64[6][10]~4_combout\ & \Mux2~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001111010101011100110001010101000011110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~1_combout\,
	datab => \ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_sra64[6][10]~4_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Mux4~4_combout\,
	dataf => \ALT_INV_Mux2~0_combout\,
	datag => \ALT_INV_srl64[5][10]~24_combout\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X58_Y35_N6
\A_left[11]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[11]~3_combout\ = ( \A[11]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \A_left[11]~3_combout\);

-- Location: MLABCELL_X54_Y35_N8
\sll64[2][11]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][11]~15_combout\ = ( \A_left[10]~2_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A_left[8]~0_combout\) ) ) ) # ( !\A_left[10]~2_combout\ & ( \B[0]~input_o\ & ( (\A_left[8]~0_combout\ & \B[1]~input_o\) ) ) ) # ( \A_left[10]~2_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[11]~3_combout\))) # (\B[1]~input_o\ & (\A_left[9]~1_combout\)) ) ) ) # ( !\A_left[10]~2_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[11]~3_combout\))) # (\B[1]~input_o\ & 
-- (\A_left[9]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[9]~1_combout\,
	datab => \ALT_INV_A_left[8]~0_combout\,
	datac => \ALT_INV_A_left[11]~3_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[10]~2_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][11]~15_combout\);

-- Location: LABCELL_X55_Y35_N0
\Mux4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = ( \sll64[2][7]~10_combout\ & ( (!\Mux4~3_combout\ & (((\sll64[2][3]~5_combout\)) # (\Mux4~2_combout\))) # (\Mux4~3_combout\ & (!\Mux4~2_combout\ & (\sll64[2][11]~15_combout\))) ) ) # ( !\sll64[2][7]~10_combout\ & ( (!\Mux4~2_combout\ & 
-- ((!\Mux4~3_combout\ & ((\sll64[2][3]~5_combout\))) # (\Mux4~3_combout\ & (\sll64[2][11]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~3_combout\,
	datab => \ALT_INV_Mux4~2_combout\,
	datac => \ALT_INV_sll64[2][11]~15_combout\,
	datad => \ALT_INV_sll64[2][3]~5_combout\,
	dataf => \ALT_INV_sll64[2][7]~10_combout\,
	combout => \Mux4~5_combout\);

-- Location: LABCELL_X55_Y33_N14
\Mux4~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = ( \Mux2~0_combout\ & ( (!\sll64[6][1]~1_combout\ & ((\sra64[0][15]~0_combout\))) # (\sll64[6][1]~1_combout\ & (\srl64[2][11]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[2][11]~25_combout\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_sra64[0][15]~0_combout\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux4~6_combout\);

-- Location: LABCELL_X55_Y34_N12
\Mux4~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux6~1_combout\ & ( (!\Mux6~2_combout\ & ((!\Mux4~4_combout\ & ((!\srl64[5][11]~26_combout\))) # (\Mux4~4_combout\ & (!\Mux4~6_combout\)))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux6~1_combout\ & ( 
-- !\Mux6~2_combout\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux6~1_combout\ & ( (!\Mux6~2_combout\ & (!\srl64[5][11]~26_combout\ & !\Mux4~4_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux6~1_combout\ & ( !\Mux6~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000000000000011001100110011001100000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~6_combout\,
	datab => \ALT_INV_Mux6~2_combout\,
	datac => \ALT_INV_srl64[5][11]~26_combout\,
	datad => \ALT_INV_Mux4~4_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux4~7_combout\);

-- Location: LABCELL_X55_Y34_N8
\Mux4~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = ( \Mux6~0_combout\ & ( (!\Mux4~7_combout\) # ((!\Mux4~1_combout\ & ((\A[11]~input_o\))) # (\Mux4~1_combout\ & (\Mux4~5_combout\))) ) ) # ( !\Mux6~0_combout\ & ( !\Mux4~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~5_combout\,
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_Mux4~7_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux4~8_combout\);

-- Location: MLABCELL_X54_Y34_N18
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \B[4]~input_o\ & ( \ShiftFN[0]~input_o\ ) ) # ( !\B[4]~input_o\ & ( (\ShiftFN[0]~input_o\ & ((\B[5]~input_o\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X54_Y35_N12
\A_left[12]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[12]~4_combout\ = ( \A[12]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \A_left[12]~4_combout\);

-- Location: MLABCELL_X54_Y35_N38
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \A_left[9]~1_combout\ & ( \B[0]~input_o\ & ( (\A_left[11]~3_combout\) # (\B[1]~input_o\) ) ) ) # ( !\A_left[9]~1_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A_left[11]~3_combout\) ) ) ) # ( \A_left[9]~1_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[12]~4_combout\))) # (\B[1]~input_o\ & (\A_left[10]~2_combout\)) ) ) ) # ( !\A_left[9]~1_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[12]~4_combout\))) # (\B[1]~input_o\ & 
-- (\A_left[10]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[10]~2_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[11]~3_combout\,
	datad => \ALT_INV_A_left[12]~4_combout\,
	datae => \ALT_INV_A_left[9]~1_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X55_Y35_N24
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Mux3~0_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][4]~6_combout\))) # (\B[2]~input_o\ & (\sll64[2][0]~0_combout\)) ) ) ) # ( !\Mux3~0_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][4]~6_combout\))) 
-- # (\B[2]~input_o\ & (\sll64[2][0]~0_combout\)) ) ) ) # ( \Mux3~0_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][8]~11_combout\) ) ) ) # ( !\Mux3~0_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\ & \sll64[2][8]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][8]~11_combout\,
	datac => \ALT_INV_sll64[2][0]~0_combout\,
	datad => \ALT_INV_sll64[2][4]~6_combout\,
	datae => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X55_Y34_N22
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \A[12]~input_o\ & ( (!\Mux4~1_combout\ & (((!\Mux3~2_combout\)) # (\sll64[5][7]~12_combout\))) # (\Mux4~1_combout\ & (((!\Mux3~2_combout\ & \Mux3~1_combout\)))) ) ) # ( !\A[12]~input_o\ & ( (!\Mux4~1_combout\ & 
-- (\sll64[5][7]~12_combout\ & (\Mux3~2_combout\))) # (\Mux4~1_combout\ & (((!\Mux3~2_combout\ & \Mux3~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001000011010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[5][7]~12_combout\,
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_Mux3~2_combout\,
	datad => \ALT_INV_Mux3~1_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LABCELL_X55_Y34_N26
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux2~0_combout\ & ((!\sll64[6][1]~1_combout\ & (\sra64[0][15]~0_combout\)) # (\sll64[6][1]~1_combout\ & ((\srl64[2][12]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010100010000000101010001000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_sra64[0][15]~0_combout\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_srl64[2][12]~7_combout\,
	combout => \Mux3~4_combout\);

-- Location: LABCELL_X55_Y34_N0
\Mux3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = ( !\Mux4~4_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux3~3_combout\)) # (\ShiftFN[1]~input_o\ & (((\Y_srl[15]~6_combout\ & ((\srl64[2][12]~7_combout\)))))) ) ) # ( \Mux4~4_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux3~3_combout\)) # 
-- (\ShiftFN[1]~input_o\ & (((!\Mux6~1_combout\) # ((\Mux3~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001000100011101000111011101000111010001110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~3_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux3~4_combout\,
	datae => \ALT_INV_Mux4~4_combout\,
	dataf => \ALT_INV_srl64[2][12]~7_combout\,
	datag => \ALT_INV_Y_srl[15]~6_combout\,
	combout => \Mux3~5_combout\);

-- Location: MLABCELL_X54_Y34_N34
\Mux2~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = ( \ShiftFN[0]~input_o\ & ( (\A[7]~input_o\ & (\ExtWord~input_o\ & \ShiftFN[1]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[13]~input_o\ & !\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LABCELL_X53_Y34_N22
\sra64[6][13]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][13]~5_combout\ = ( \srl64[1][13]~11_combout\ & ( ((!\B[1]~input_o\ & \sll64[6][1]~1_combout\)) # (\sra64[0][15]~0_combout\) ) ) # ( !\srl64[1][13]~11_combout\ & ( (\sra64[0][15]~0_combout\ & ((!\sll64[6][1]~1_combout\) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_sra64[0][15]~0_combout\,
	dataf => \ALT_INV_srl64[1][13]~11_combout\,
	combout => \sra64[6][13]~5_combout\);

-- Location: LABCELL_X53_Y34_N16
\Mux2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( \sra64[6][13]~5_combout\ & ( (\ShiftFN[1]~input_o\ & (\Mux4~4_combout\ & \Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux4~4_combout\,
	datad => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_sra64[6][13]~5_combout\,
	combout => \Mux2~5_combout\);

-- Location: LABCELL_X53_Y34_N18
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \Y_srl[15]~6_combout\ & ( (\ShiftFN[1]~input_o\ & (!\Mux4~4_combout\ & \srl64[2][13]~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux4~4_combout\,
	datac => \ALT_INV_srl64[2][13]~12_combout\,
	dataf => \ALT_INV_Y_srl[15]~6_combout\,
	combout => \Mux2~4_combout\);

-- Location: MLABCELL_X54_Y34_N4
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\ & (\Y_srl[15]~7_combout\ & \Y_srl[15]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Y_srl[15]~7_combout\,
	datad => \ALT_INV_Y_srl[15]~6_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LABCELL_X53_Y34_N4
\Mux2~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = ( !\Mux2~3_combout\ & ( (!\Mux2~6_combout\ & (!\Mux2~5_combout\ & !\Mux2~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~6_combout\,
	datab => \ALT_INV_Mux2~5_combout\,
	datac => \ALT_INV_Mux2~4_combout\,
	dataf => \ALT_INV_Mux2~3_combout\,
	combout => \Mux2~7_combout\);

-- Location: MLABCELL_X54_Y35_N2
\A_left[13]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[13]~5_combout\ = (!\ExtWord~input_o\ & \A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	combout => \A_left[13]~5_combout\);

-- Location: MLABCELL_X54_Y35_N24
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \A_left[10]~2_combout\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A_left[12]~4_combout\) ) ) ) # ( !\A_left[10]~2_combout\ & ( \B[0]~input_o\ & ( (\A_left[12]~4_combout\ & !\B[1]~input_o\) ) ) ) # ( \A_left[10]~2_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[13]~5_combout\))) # (\B[1]~input_o\ & (\A_left[11]~3_combout\)) ) ) ) # ( !\A_left[10]~2_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[13]~5_combout\))) # (\B[1]~input_o\ & 
-- (\A_left[11]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[11]~3_combout\,
	datab => \ALT_INV_A_left[13]~5_combout\,
	datac => \ALT_INV_A_left[12]~4_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[10]~2_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X55_Y35_N28
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \B[2]~input_o\ & ( \Mux2~1_combout\ & ( (!\B[3]~input_o\ & (\sll64[2][9]~13_combout\)) # (\B[3]~input_o\ & ((\sll64[6][1]~3_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \Mux2~1_combout\ & ( (!\B[3]~input_o\) # (\sll64[2][5]~8_combout\) ) 
-- ) ) # ( \B[2]~input_o\ & ( !\Mux2~1_combout\ & ( (!\B[3]~input_o\ & (\sll64[2][9]~13_combout\)) # (\B[3]~input_o\ & ((\sll64[6][1]~3_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\Mux2~1_combout\ & ( (\sll64[2][5]~8_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][9]~13_combout\,
	datab => \ALT_INV_sll64[6][1]~3_combout\,
	datac => \ALT_INV_sll64[2][5]~8_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X55_Y34_N36
\Mux2~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = ( \Mux3~2_combout\ & ( \Mux2~2_combout\ & ( (!\Mux2~7_combout\) # ((\sll64[5][7]~12_combout\ & (!\ShiftFN[1]~input_o\ & !\Mux4~1_combout\))) ) ) ) # ( !\Mux3~2_combout\ & ( \Mux2~2_combout\ & ( (!\Mux2~7_combout\) # 
-- ((!\ShiftFN[1]~input_o\ & \Mux4~1_combout\)) ) ) ) # ( \Mux3~2_combout\ & ( !\Mux2~2_combout\ & ( (!\Mux2~7_combout\) # ((\sll64[5][7]~12_combout\ & (!\ShiftFN[1]~input_o\ & !\Mux4~1_combout\))) ) ) ) # ( !\Mux3~2_combout\ & ( !\Mux2~2_combout\ & ( 
-- !\Mux2~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111101001111000011110000111111001111010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[5][7]~12_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux2~7_combout\,
	datad => \ALT_INV_Mux4~1_combout\,
	datae => \ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_Mux2~2_combout\,
	combout => \Mux2~8_combout\);

-- Location: MLABCELL_X54_Y35_N14
\Y_sra[14]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[14]~5_combout\ = ( \sra64[2][14]~3_combout\ & ( (!\ExtWord~input_o\ & (((\sll64[6][1]~1_combout\)) # (\A[15]~input_o\))) # (\ExtWord~input_o\ & (((\A[7]~input_o\)))) ) ) # ( !\sra64[2][14]~3_combout\ & ( (!\ExtWord~input_o\ & (\A[15]~input_o\ & 
-- (!\sll64[6][1]~1_combout\))) # (\ExtWord~input_o\ & (((\A[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_sll64[6][1]~1_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_sra64[2][14]~3_combout\,
	combout => \Y_sra[14]~5_combout\);

-- Location: MLABCELL_X54_Y35_N20
\Y_srl[14]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[14]~11_combout\ = ( !\ExtWord~input_o\ & ( ((\srl64[1][14]~5_combout\ & (!\B[5]~input_o\ & (\Y_srl[15]~6_combout\ & !\B[1]~input_o\)))) ) ) # ( \ExtWord~input_o\ & ( (\A[7]~input_o\ & (((!\B[0]~input_o\ & (\Y_srl[15]~6_combout\ & 
-- !\B[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_srl64[1][14]~5_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Y_srl[15]~6_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	datag => \ALT_INV_B[5]~input_o\,
	combout => \Y_srl[14]~11_combout\);

-- Location: MLABCELL_X54_Y35_N28
\sll64[2][14]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][14]~16_combout\ = ( \A_left[12]~4_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[13]~5_combout\)) # (\B[1]~input_o\ & ((\A_left[11]~3_combout\))) ) ) ) # ( !\A_left[12]~4_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A_left[13]~5_combout\)) # (\B[1]~input_o\ & ((\A_left[11]~3_combout\))) ) ) ) # ( \A_left[12]~4_combout\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\A_left[12]~4_combout\ & ( !\B[0]~input_o\ & ( (\A[14]~input_o\ & 
-- !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A_left[13]~5_combout\,
	datac => \ALT_INV_A_left[11]~3_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A_left[12]~4_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][14]~16_combout\);

-- Location: LABCELL_X55_Y35_N34
\sll64[4][14]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][14]~17_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \sll64[2][2]~4_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \sll64[2][6]~9_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \sll64[2][10]~14_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \sll64[2][14]~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][10]~14_combout\,
	datab => \ALT_INV_sll64[2][2]~4_combout\,
	datac => \ALT_INV_sll64[2][6]~9_combout\,
	datad => \ALT_INV_sll64[2][14]~16_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][14]~17_combout\);

-- Location: MLABCELL_X54_Y35_N0
\Y_sll[14]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[14]~1_combout\ = ( \B[4]~input_o\ & ( (\ExtWord~input_o\ & \sll64[5][7]~12_combout\) ) ) # ( !\B[4]~input_o\ & ( (!\ExtWord~input_o\ & (((\sll64[4][14]~17_combout\ & !\B[5]~input_o\)))) # (\ExtWord~input_o\ & (\sll64[5][7]~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100010001000110110001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_sll64[5][7]~12_combout\,
	datac => \ALT_INV_sll64[4][14]~17_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_sll[14]~1_combout\);

-- Location: MLABCELL_X54_Y35_N34
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Y_sll[14]~1_combout\ & ( \A[14]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Y_srl[14]~11_combout\))) # (\ShiftFN[0]~input_o\ & (\Y_sra[14]~5_combout\))) ) ) ) # ( !\Y_sll[14]~1_combout\ & ( \A[14]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\) # (\Y_srl[14]~11_combout\)))) # (\ShiftFN[0]~input_o\ & (\Y_sra[14]~5_combout\ & (\ShiftFN[1]~input_o\))) ) ) ) # ( \Y_sll[14]~1_combout\ & ( !\A[14]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (((\ShiftFN[1]~input_o\ & \Y_srl[14]~11_combout\)))) # (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)) # (\Y_sra[14]~5_combout\))) ) ) ) # ( !\Y_sll[14]~1_combout\ & ( !\A[14]~input_o\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- ((\Y_srl[14]~11_combout\))) # (\ShiftFN[0]~input_o\ & (\Y_sra[14]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Y_sra[14]~5_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Y_srl[14]~11_combout\,
	datae => \ALT_INV_Y_sll[14]~1_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X54_Y35_N16
\sll64[2][15]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][15]~18_combout\ = ( \A_left[12]~4_combout\ & ( \A_left[13]~5_combout\ & ( ((!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A_left[12]~4_combout\ & ( \A_left[13]~5_combout\ & ( 
-- (!\B[0]~input_o\ & (((\A[15]~input_o\)) # (\B[1]~input_o\))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[14]~input_o\))) ) ) ) # ( \A_left[12]~4_combout\ & ( !\A_left[13]~5_combout\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[15]~input_o\)))) # 
-- (\B[0]~input_o\ & (((\A[14]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A_left[12]~4_combout\ & ( !\A_left[13]~5_combout\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A_left[12]~4_combout\,
	dataf => \ALT_INV_A_left[13]~5_combout\,
	combout => \sll64[2][15]~18_combout\);

-- Location: LABCELL_X55_Y35_N36
\sll64[4][15]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][15]~19_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \sll64[2][3]~5_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \sll64[2][7]~10_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \sll64[2][11]~15_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \sll64[2][15]~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][7]~10_combout\,
	datab => \ALT_INV_sll64[2][15]~18_combout\,
	datac => \ALT_INV_sll64[2][11]~15_combout\,
	datad => \ALT_INV_sll64[2][3]~5_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][15]~19_combout\);

-- Location: MLABCELL_X54_Y34_N26
\Y_sll[15]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[15]~2_combout\ = ( \B[4]~input_o\ & ( (\ExtWord~input_o\ & \sll64[5][7]~12_combout\) ) ) # ( !\B[4]~input_o\ & ( (!\ExtWord~input_o\ & (\sll64[4][15]~19_combout\ & ((!\B[5]~input_o\)))) # (\ExtWord~input_o\ & (((\sll64[5][7]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000011010001110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][15]~19_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_sll64[5][7]~12_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_sll[15]~2_combout\);

-- Location: MLABCELL_X54_Y34_N32
\Y_srl[15]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[15]~10_combout\ = ( !\shamt[5]~0_combout\ & ( (\Y_srl[15]~7_combout\ & \Y_srl[15]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y_srl[15]~7_combout\,
	datad => \ALT_INV_Y_srl[15]~6_combout\,
	dataf => \ALT_INV_shamt[5]~0_combout\,
	combout => \Y_srl[15]~10_combout\);

-- Location: MLABCELL_X54_Y34_N38
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \ShiftFN[1]~input_o\ & ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Y_srl[15]~10_combout\))) # (\ShiftFN[0]~input_o\ & (\sra64[0][15]~0_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\) # 
-- (\Y_sll[15]~2_combout\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Y_srl[15]~10_combout\))) # (\ShiftFN[0]~input_o\ & (\sra64[0][15]~0_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\A[15]~input_o\ & ( 
-- (\Y_sll[15]~2_combout\ & \ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][15]~0_combout\,
	datab => \ALT_INV_Y_sll[15]~2_combout\,
	datac => \ALT_INV_Y_srl[15]~10_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X10_Y56_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X31_Y56_N1
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X45_Y0_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X35_Y56_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

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

-- Location: IOIBUF_X5_Y56_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X17_Y56_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

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
END structure;


