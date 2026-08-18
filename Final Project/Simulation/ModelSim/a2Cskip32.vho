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

-- DATE "04/08/2026 12:41:18"

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

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(31 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[3]~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \c_chain~0_combout\ : std_logic;
SIGNAL \c_chain~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|Cout~0_combout\ : std_logic;
SIGNAL \c_chain~2_combout\ : std_logic;
SIGNAL \c_chain~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:block_prop~combout\ : std_logic;
SIGNAL \c_chain~4_combout\ : std_logic;
SIGNAL \c_chain~5_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \gen_blocks:2:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:block_prop~combout\ : std_logic;
SIGNAL \c_chain~6_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \c_chain~7_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[2]~1_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:block_prop~combout\ : std_logic;
SIGNAL \c_chain~8_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \c_chain~9_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|C[2]~1_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:block_prop~combout\ : std_logic;
SIGNAL \c_chain~11_combout\ : std_logic;
SIGNAL \c_chain~10_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:block_prop~combout\ : std_logic;
SIGNAL \c_chain~13_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \c_chain~12_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:6:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:block_prop~combout\ : std_logic;
SIGNAL \c_chain~14_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \block_prop~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \c_chain~15_combout\ : std_logic;
SIGNAL \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:block_prop~0_combout\ : std_logic;
SIGNAL \c_chain~16_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:1:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:2:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:3:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:4:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:7:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:6:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:5:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \gen_blocks:6:RCA_BLOCK|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:7:RCA_BLOCK|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:7:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~15_combout\ : std_logic;
SIGNAL \ALT_INV_block_prop~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~14_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:6:block_prop~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:6:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~13_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~12_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:5:block_prop~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:5:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|ALT_INV_C[3]~3_combout\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|ALT_INV_C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|ALT_INV_C[2]~1_combout\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~11_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~10_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:4:block_prop~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:4:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|ALT_INV_C[3]~3_combout\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|ALT_INV_C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|ALT_INV_C[2]~1_combout\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~9_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~8_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:block_prop~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~3_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|ALT_INV_C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|ALT_INV_C[2]~1_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~7_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~6_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:block_prop~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|ALT_INV_C[3]~3_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~1_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~5_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~4_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:1:block_prop~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:1:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|ALT_INV_C[3]~3_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~1_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~3_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~2_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~1_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~4_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~3_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|ALT_INV_C[2]~2_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~1_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;

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
\gen_blocks:6:RCA_BLOCK|ALT_INV_C[3]~1_combout\ <= NOT \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\;
\gen_blocks:7:RCA_BLOCK|ALT_INV_C[3]~1_combout\ <= NOT \gen_blocks:7:RCA_BLOCK|C[3]~1_combout\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\ALT_INV_gen_blocks:7:block_prop~0_combout\ <= NOT \gen_blocks:7:block_prop~0_combout\;
\gen_blocks:7:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\;
\ALT_INV_c_chain~15_combout\ <= NOT \c_chain~15_combout\;
\ALT_INV_block_prop~0_combout\ <= NOT \block_prop~0_combout\;
\ALT_INV_c_chain~14_combout\ <= NOT \c_chain~14_combout\;
\ALT_INV_gen_blocks:6:block_prop~combout\ <= NOT \gen_blocks:6:block_prop~combout\;
\ALT_INV_gen_blocks:6:block_prop~0_combout\ <= NOT \gen_blocks:6:block_prop~0_combout\;
\gen_blocks:6:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\;
\ALT_INV_c_chain~13_combout\ <= NOT \c_chain~13_combout\;
\ALT_INV_c_chain~12_combout\ <= NOT \c_chain~12_combout\;
\ALT_INV_gen_blocks:5:block_prop~combout\ <= NOT \gen_blocks:5:block_prop~combout\;
\ALT_INV_gen_blocks:5:block_prop~0_combout\ <= NOT \gen_blocks:5:block_prop~0_combout\;
\gen_blocks:5:RCA_BLOCK|ALT_INV_C[3]~3_combout\ <= NOT \gen_blocks:5:RCA_BLOCK|C[3]~3_combout\;
\gen_blocks:5:RCA_BLOCK|ALT_INV_C[2]~2_combout\ <= NOT \gen_blocks:5:RCA_BLOCK|C[2]~2_combout\;
\gen_blocks:5:RCA_BLOCK|ALT_INV_C[2]~1_combout\ <= NOT \gen_blocks:5:RCA_BLOCK|C[2]~1_combout\;
\gen_blocks:5:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\;
\ALT_INV_c_chain~11_combout\ <= NOT \c_chain~11_combout\;
\ALT_INV_c_chain~10_combout\ <= NOT \c_chain~10_combout\;
\ALT_INV_gen_blocks:4:block_prop~combout\ <= NOT \gen_blocks:4:block_prop~combout\;
\ALT_INV_gen_blocks:4:block_prop~0_combout\ <= NOT \gen_blocks:4:block_prop~0_combout\;
\gen_blocks:4:RCA_BLOCK|ALT_INV_C[3]~3_combout\ <= NOT \gen_blocks:4:RCA_BLOCK|C[3]~3_combout\;
\gen_blocks:4:RCA_BLOCK|ALT_INV_C[2]~2_combout\ <= NOT \gen_blocks:4:RCA_BLOCK|C[2]~2_combout\;
\gen_blocks:4:RCA_BLOCK|ALT_INV_C[2]~1_combout\ <= NOT \gen_blocks:4:RCA_BLOCK|C[2]~1_combout\;
\gen_blocks:4:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\;
\ALT_INV_c_chain~9_combout\ <= NOT \c_chain~9_combout\;
\ALT_INV_c_chain~8_combout\ <= NOT \c_chain~8_combout\;
\ALT_INV_gen_blocks:3:block_prop~combout\ <= NOT \gen_blocks:3:block_prop~combout\;
\ALT_INV_gen_blocks:3:block_prop~0_combout\ <= NOT \gen_blocks:3:block_prop~0_combout\;
\gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~3_combout\ <= NOT \gen_blocks:3:RCA_BLOCK|C[3]~3_combout\;
\gen_blocks:3:RCA_BLOCK|ALT_INV_C[2]~2_combout\ <= NOT \gen_blocks:3:RCA_BLOCK|C[2]~2_combout\;
\gen_blocks:3:RCA_BLOCK|ALT_INV_C[2]~1_combout\ <= NOT \gen_blocks:3:RCA_BLOCK|C[2]~1_combout\;
\gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\;
\ALT_INV_c_chain~7_combout\ <= NOT \c_chain~7_combout\;
\ALT_INV_c_chain~6_combout\ <= NOT \c_chain~6_combout\;
\ALT_INV_gen_blocks:2:block_prop~combout\ <= NOT \gen_blocks:2:block_prop~combout\;
\ALT_INV_gen_blocks:2:block_prop~0_combout\ <= NOT \gen_blocks:2:block_prop~0_combout\;
\gen_blocks:2:RCA_BLOCK|ALT_INV_C[3]~3_combout\ <= NOT \gen_blocks:2:RCA_BLOCK|C[3]~3_combout\;
\gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~2_combout\ <= NOT \gen_blocks:2:RCA_BLOCK|C[2]~2_combout\;
\gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~1_combout\ <= NOT \gen_blocks:2:RCA_BLOCK|C[2]~1_combout\;
\gen_blocks:2:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\;
\ALT_INV_c_chain~5_combout\ <= NOT \c_chain~5_combout\;
\ALT_INV_c_chain~4_combout\ <= NOT \c_chain~4_combout\;
\ALT_INV_gen_blocks:1:block_prop~combout\ <= NOT \gen_blocks:1:block_prop~combout\;
\ALT_INV_gen_blocks:1:block_prop~0_combout\ <= NOT \gen_blocks:1:block_prop~0_combout\;
\gen_blocks:1:RCA_BLOCK|ALT_INV_C[3]~3_combout\ <= NOT \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\;
\gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~2_combout\ <= NOT \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\;
\gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~1_combout\ <= NOT \gen_blocks:1:RCA_BLOCK|C[2]~1_combout\;
\gen_blocks:1:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\;
\ALT_INV_c_chain~3_combout\ <= NOT \c_chain~3_combout\;
\gen_blocks:0:RCA_BLOCK|ALT_INV_Cout~0_combout\ <= NOT \gen_blocks:0:RCA_BLOCK|Cout~0_combout\;
\ALT_INV_c_chain~2_combout\ <= NOT \c_chain~2_combout\;
\ALT_INV_c_chain~1_combout\ <= NOT \c_chain~1_combout\;
\ALT_INV_c_chain~0_combout\ <= NOT \c_chain~0_combout\;
\gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~4_combout\ <= NOT \gen_blocks:0:RCA_BLOCK|C[3]~4_combout\;
\gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~3_combout\ <= NOT \gen_blocks:0:RCA_BLOCK|C[3]~3_combout\;
\gen_blocks:0:RCA_BLOCK|ALT_INV_C[2]~2_combout\ <= NOT \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\;
\gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~1_combout\ <= NOT \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\;
\gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\;

-- Location: IOOBUF_X37_Y0_N67
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N98
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X37_Y0_N98
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X48_Y0_N33
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X48_Y0_N67
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X50_Y0_N36
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X48_Y0_N98
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X40_Y56_N33
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(3),
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
	i => \gen_blocks:3:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X38_Y56_N36
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X42_Y56_N2
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X49_Y56_N67
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X49_Y56_N98
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X49_Y56_N36
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X59_Y39_N98
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X59_Y37_N98
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X59_Y33_N33
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X59_Y49_N36
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X59_Y49_N98
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X59_Y48_N36
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y49_N2
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_chain~16_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y48_N98
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

-- Location: IOIBUF_X41_Y0_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X39_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X40_Y1_N0
\gen_blocks:0:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(0) = ( \Cin~input_o\ & ( !\A[0]~input_o\ $ (\B[0]~input_o\) ) ) # ( !\Cin~input_o\ & ( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X39_Y0_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X40_Y1_N4
\gen_blocks:0:RCA_BLOCK|C[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ = (\A[0]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\);

-- Location: IOIBUF_X37_Y0_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X40_Y1_N6
\gen_blocks:0:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ = (\B[0]~input_o\ & \Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\);

-- Location: LABCELL_X40_Y1_N8
\gen_blocks:0:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(1) = ( \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ & ( !\A[1]~input_o\ $ (\B[1]~input_o\) ) ) # ( !\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ & ( !\A[1]~input_o\ $ (!\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ $ (\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~1_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X39_Y0_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X40_Y1_N10
\gen_blocks:0:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ = ( \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ & ( (!\A[1]~input_o\ & !\B[1]~input_o\) ) ) # ( !\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ & ( (!\A[1]~input_o\ & ((!\B[1]~input_o\) # 
-- (!\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\))) # (\A[1]~input_o\ & (!\B[1]~input_o\ & !\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~1_combout\,
	dataf => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\);

-- Location: LABCELL_X40_Y1_N34
\gen_blocks:0:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(2) = ( \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) ) # ( !\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & ( !\A[2]~input_o\ $ (\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(2));

-- Location: LABCELL_X40_Y1_N16
\gen_blocks:0:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[3]~3_combout\ = ( !\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & ( \B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|C[3]~3_combout\);

-- Location: IOIBUF_X39_Y0_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X40_Y1_N22
\gen_blocks:0:RCA_BLOCK|C[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[3]~4_combout\ = ( \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & ( (\A[2]~input_o\ & \B[2]~input_o\) ) ) # ( !\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & ( \A[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|C[3]~4_combout\);

-- Location: IOIBUF_X41_Y0_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X40_Y1_N20
\gen_blocks:0:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(3) = ( \B[3]~input_o\ & ( !\A[3]~input_o\ $ (((\gen_blocks:0:RCA_BLOCK|C[3]~4_combout\) # (\gen_blocks:0:RCA_BLOCK|C[3]~3_combout\))) ) ) # ( !\B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\gen_blocks:0:RCA_BLOCK|C[3]~3_combout\ & 
-- !\gen_blocks:0:RCA_BLOCK|C[3]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~4_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(3));

-- Location: LABCELL_X40_Y1_N18
\c_chain~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~0_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \c_chain~0_combout\);

-- Location: LABCELL_X40_Y1_N24
\c_chain~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~1_combout\ = ( \c_chain~0_combout\ & ( \B[3]~input_o\ & ( (!\A[3]~input_o\ & (\Cin~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) ) # ( \c_chain~0_combout\ & ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & (\Cin~input_o\ & (!\B[2]~input_o\ $ 
-- (!\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001010000000000000000000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_c_chain~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \c_chain~1_combout\);

-- Location: IOIBUF_X45_Y0_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X40_Y1_N28
\gen_blocks:0:RCA_BLOCK|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|Cout~0_combout\ = ( \gen_blocks:0:RCA_BLOCK|C[3]~3_combout\ & ( (!\B[3]~input_o\ & !\A[3]~input_o\) ) ) # ( !\gen_blocks:0:RCA_BLOCK|C[3]~3_combout\ & ( (!\B[3]~input_o\ & ((!\A[3]~input_o\) # 
-- (!\gen_blocks:0:RCA_BLOCK|C[3]~4_combout\))) # (\B[3]~input_o\ & (!\A[3]~input_o\ & !\gen_blocks:0:RCA_BLOCK|C[3]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~4_combout\,
	dataf => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|Cout~0_combout\);

-- Location: LABCELL_X40_Y1_N30
\c_chain~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~2_combout\ = ( \A[2]~input_o\ & ( (!\B[2]~input_o\ & (\c_chain~0_combout\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) ) ) # ( !\A[2]~input_o\ & ( (\B[2]~input_o\ & (\c_chain~0_combout\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_c_chain~0_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \c_chain~2_combout\);

-- Location: LABCELL_X40_Y1_N14
\c_chain~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~3_combout\ = (!\gen_blocks:0:RCA_BLOCK|Cout~0_combout\ & !\c_chain~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_c_chain~2_combout\,
	combout => \c_chain~3_combout\);

-- Location: IOIBUF_X45_Y0_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X44_Y1_N0
\gen_blocks:1:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(0) = ( \c_chain~3_combout\ & ( \A[4]~input_o\ & ( \B[4]~input_o\ ) ) ) # ( !\c_chain~3_combout\ & ( \A[4]~input_o\ & ( !\c_chain~1_combout\ $ (\B[4]~input_o\) ) ) ) # ( \c_chain~3_combout\ & ( !\A[4]~input_o\ & ( !\B[4]~input_o\ 
-- ) ) ) # ( !\c_chain~3_combout\ & ( !\A[4]~input_o\ & ( !\c_chain~1_combout\ $ (!\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010111111110000000010101010010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~1_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_c_chain~3_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X47_Y0_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X45_Y0_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X44_Y1_N24
\gen_blocks:1:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ = ( !\c_chain~3_combout\ & ( \A[4]~input_o\ & ( (!\B[4]~input_o\ & !\c_chain~1_combout\) ) ) ) # ( \c_chain~3_combout\ & ( !\A[4]~input_o\ & ( !\B[4]~input_o\ ) ) ) # ( !\c_chain~3_combout\ & ( !\A[4]~input_o\ & ( 
-- (!\B[4]~input_o\) # (!\c_chain~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100110011001100110011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_c_chain~1_combout\,
	datae => \ALT_INV_c_chain~3_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\);

-- Location: MLABCELL_X44_Y1_N30
\gen_blocks:1:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(1) = ( \B[5]~input_o\ & ( \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & ( !\A[5]~input_o\ ) ) ) # ( !\B[5]~input_o\ & ( \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & ( \A[5]~input_o\ ) ) ) # ( \B[5]~input_o\ & ( 
-- !\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & ( \A[5]~input_o\ ) ) ) # ( !\B[5]~input_o\ & ( !\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & ( !\A[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X43_Y0_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X44_Y1_N34
\gen_blocks:1:RCA_BLOCK|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ = (!\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[2]~1_combout\);

-- Location: IOIBUF_X43_Y0_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X44_Y1_N32
\gen_blocks:1:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ = (\A[5]~input_o\ & ((!\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\) # (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\);

-- Location: MLABCELL_X44_Y1_N18
\gen_blocks:1:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(2) = ( \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) # ( !\gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ & ( !\B[6]~input_o\ $ (!\gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ $ (\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(2));

-- Location: MLABCELL_X44_Y1_N16
\gen_blocks:1:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ = ( \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ & ( (!\B[6]~input_o\ & !\A[6]~input_o\) ) ) # ( !\gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ & ( (!\gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ & ((!\B[6]~input_o\) # 
-- (!\A[6]~input_o\))) # (\gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ & (!\B[6]~input_o\ & !\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\);

-- Location: IOIBUF_X41_Y0_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X44_Y1_N20
\gen_blocks:1:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(3) = ( \A[7]~input_o\ & ( \B[7]~input_o\ & ( !\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ ) ) ) # ( !\A[7]~input_o\ & ( \B[7]~input_o\ & ( \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ ) ) ) # ( \A[7]~input_o\ & ( !\B[7]~input_o\ & ( 
-- \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ ) ) ) # ( !\A[7]~input_o\ & ( !\B[7]~input_o\ & ( !\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(3));

-- Location: IOIBUF_X43_Y0_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X44_Y1_N6
\gen_blocks:1:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:block_prop~0_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100001100001100000000000011000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	combout => \gen_blocks:1:block_prop~0_combout\);

-- Location: LABCELL_X43_Y1_N20
\gen_blocks:1:block_prop\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:block_prop~combout\ = ( \B[6]~input_o\ & ( \B[7]~input_o\ & ( (!\A[6]~input_o\ & (\gen_blocks:1:block_prop~0_combout\ & !\A[7]~input_o\)) ) ) ) # ( !\B[6]~input_o\ & ( \B[7]~input_o\ & ( (\A[6]~input_o\ & (\gen_blocks:1:block_prop~0_combout\ 
-- & !\A[7]~input_o\)) ) ) ) # ( \B[6]~input_o\ & ( !\B[7]~input_o\ & ( (!\A[6]~input_o\ & (\gen_blocks:1:block_prop~0_combout\ & \A[7]~input_o\)) ) ) ) # ( !\B[6]~input_o\ & ( !\B[7]~input_o\ & ( (\A[6]~input_o\ & (\gen_blocks:1:block_prop~0_combout\ & 
-- \A[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000010001000010001000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_gen_blocks:1:block_prop~0_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \gen_blocks:1:block_prop~combout\);

-- Location: LABCELL_X40_Y1_N12
\c_chain~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~4_combout\ = ( \gen_blocks:1:block_prop~combout\ & ( (!\c_chain~2_combout\ & (!\gen_blocks:0:RCA_BLOCK|Cout~0_combout\)) # (\c_chain~2_combout\ & ((\Cin~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000101110111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_c_chain~2_combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_gen_blocks:1:block_prop~combout\,
	combout => \c_chain~4_combout\);

-- Location: LABCELL_X43_Y1_N4
\c_chain~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~5_combout\ = ( \B[7]~input_o\ & ( ((!\gen_blocks:1:block_prop~combout\ & !\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\)) # (\A[7]~input_o\) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (!\gen_blocks:1:block_prop~combout\ & 
-- !\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_gen_blocks:1:block_prop~combout\,
	datad => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \c_chain~5_combout\);

-- Location: IOIBUF_X47_Y0_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X43_Y1_N6
\gen_blocks:2:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(0) = ( \B[8]~input_o\ & ( !\A[8]~input_o\ $ (((\c_chain~5_combout\) # (\c_chain~4_combout\))) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ $ (((!\c_chain~4_combout\ & !\c_chain~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_c_chain~4_combout\,
	datad => \ALT_INV_c_chain~5_combout\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(0));

-- Location: LABCELL_X43_Y1_N28
\gen_blocks:2:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ = ( !\c_chain~5_combout\ & ( \B[8]~input_o\ & ( (!\c_chain~4_combout\ & !\A[8]~input_o\) ) ) ) # ( \c_chain~5_combout\ & ( !\B[8]~input_o\ & ( !\A[8]~input_o\ ) ) ) # ( !\c_chain~5_combout\ & ( !\B[8]~input_o\ & ( 
-- (!\c_chain~4_combout\) # (!\A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111100001111000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_chain~4_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_c_chain~5_combout\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X43_Y0_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X43_Y1_N32
\gen_blocks:2:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(1) = ( \A[9]~input_o\ & ( !\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ $ (!\B[9]~input_o\) ) ) # ( !\A[9]~input_o\ & ( !\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ $ (\B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(1));

-- Location: LABCELL_X43_Y1_N38
\gen_blocks:2:RCA_BLOCK|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ = ( !\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ & ( \B[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[9]~input_o\,
	dataf => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:2:RCA_BLOCK|C[2]~1_combout\);

-- Location: LABCELL_X43_Y1_N2
\gen_blocks:2:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[2]~2_combout\ = ( \A[9]~input_o\ & ( (!\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\) # (\B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[9]~input_o\,
	datad => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[2]~2_combout\);

-- Location: IOIBUF_X38_Y56_N94
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

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

-- Location: LABCELL_X43_Y52_N22
\gen_blocks:2:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(2) = ( \A[10]~input_o\ & ( !\B[10]~input_o\ $ (((\gen_blocks:2:RCA_BLOCK|C[2]~2_combout\) # (\gen_blocks:2:RCA_BLOCK|C[2]~1_combout\))) ) ) # ( !\A[10]~input_o\ & ( !\B[10]~input_o\ $ (((!\gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ 
-- & !\gen_blocks:2:RCA_BLOCK|C[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100010000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	datab => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datac => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X36_Y56_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X44_Y56_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X43_Y52_N20
\gen_blocks:2:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ = ( \A[10]~input_o\ & ( (!\gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ & (!\gen_blocks:2:RCA_BLOCK|C[2]~2_combout\ & !\B[10]~input_o\)) ) ) # ( !\A[10]~input_o\ & ( (!\B[10]~input_o\) # 
-- ((!\gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ & !\gen_blocks:2:RCA_BLOCK|C[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	datab => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datac => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[3]~3_combout\);

-- Location: LABCELL_X43_Y52_N26
\gen_blocks:2:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(3) = ( \gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\) ) ) # ( !\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ & ( !\A[11]~input_o\ $ (\B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(3));

-- Location: LABCELL_X43_Y1_N26
\gen_blocks:2:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:block_prop~0_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \gen_blocks:2:block_prop~0_combout\);

-- Location: LABCELL_X43_Y52_N10
\gen_blocks:2:block_prop\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:block_prop~combout\ = ( \A[10]~input_o\ & ( (!\B[10]~input_o\ & (\gen_blocks:2:block_prop~0_combout\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) ) # ( !\A[10]~input_o\ & ( (\B[10]~input_o\ & (\gen_blocks:2:block_prop~0_combout\ & 
-- (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_gen_blocks:2:block_prop~0_combout\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \gen_blocks:2:block_prop~combout\);

-- Location: LABCELL_X43_Y1_N8
\c_chain~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~6_combout\ = ( \gen_blocks:2:block_prop~combout\ & ( \B[7]~input_o\ & ( (((!\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ & !\gen_blocks:1:block_prop~combout\)) # (\A[7]~input_o\)) # (\c_chain~4_combout\) ) ) ) # ( \gen_blocks:2:block_prop~combout\ & ( 
-- !\B[7]~input_o\ & ( ((!\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ & (!\gen_blocks:1:block_prop~combout\ & \A[7]~input_o\))) # (\c_chain~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111011001100000000000000001011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datab => \ALT_INV_c_chain~4_combout\,
	datac => \ALT_INV_gen_blocks:1:block_prop~combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_gen_blocks:2:block_prop~combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \c_chain~6_combout\);

-- Location: IOIBUF_X42_Y56_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X36_Y56_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X43_Y52_N8
\c_chain~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~7_combout\ = ( \gen_blocks:2:block_prop~combout\ & ( (\B[11]~input_o\ & \A[11]~input_o\) ) ) # ( !\gen_blocks:2:block_prop~combout\ & ( (!\B[11]~input_o\ & (!\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ & \A[11]~input_o\)) # (\B[11]~input_o\ & 
-- ((!\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\) # (\A[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_gen_blocks:2:block_prop~combout\,
	combout => \c_chain~7_combout\);

-- Location: LABCELL_X43_Y52_N12
\gen_blocks:3:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(0) = ( \c_chain~7_combout\ & ( !\B[12]~input_o\ $ (\A[12]~input_o\) ) ) # ( !\c_chain~7_combout\ & ( !\c_chain~6_combout\ $ (!\B[12]~input_o\ $ (\A[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_chain~6_combout\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_c_chain~7_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X38_Y56_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X40_Y56_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X43_Y52_N14
\gen_blocks:3:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ = ( \c_chain~7_combout\ & ( (!\B[12]~input_o\ & !\A[12]~input_o\) ) ) # ( !\c_chain~7_combout\ & ( (!\B[12]~input_o\ & ((!\c_chain~6_combout\) # (!\A[12]~input_o\))) # (\B[12]~input_o\ & (!\c_chain~6_combout\ & 
-- !\A[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_c_chain~6_combout\,
	datac => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_c_chain~7_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\);

-- Location: LABCELL_X43_Y52_N36
\gen_blocks:3:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(1) = ( \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\) ) ) # ( !\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & ( !\B[13]~input_o\ $ (\A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	dataf => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(1));

-- Location: LABCELL_X43_Y52_N0
\gen_blocks:3:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[2]~2_combout\ = ( \A[13]~input_o\ & ( (!\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\) # (\B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|C[2]~2_combout\);

-- Location: LABCELL_X43_Y52_N2
\gen_blocks:3:RCA_BLOCK|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[2]~1_combout\ = (\B[13]~input_o\ & !\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|C[2]~1_combout\);

-- Location: IOIBUF_X35_Y56_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X44_Y56_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X43_Y52_N4
\gen_blocks:3:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(2) = ( \A[14]~input_o\ & ( !\B[14]~input_o\ $ (((\gen_blocks:3:RCA_BLOCK|C[2]~1_combout\) # (\gen_blocks:3:RCA_BLOCK|C[2]~2_combout\))) ) ) # ( !\A[14]~input_o\ & ( !\B[14]~input_o\ $ (((!\gen_blocks:3:RCA_BLOCK|C[2]~2_combout\ 
-- & !\gen_blocks:3:RCA_BLOCK|C[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110001000011101111000100010001000011101111000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datab => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X44_Y56_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X43_Y52_N6
\gen_blocks:3:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[3]~3_combout\ = ( \A[14]~input_o\ & ( (!\gen_blocks:3:RCA_BLOCK|C[2]~2_combout\ & (!\gen_blocks:3:RCA_BLOCK|C[2]~1_combout\ & !\B[14]~input_o\)) ) ) # ( !\A[14]~input_o\ & ( (!\B[14]~input_o\) # 
-- ((!\gen_blocks:3:RCA_BLOCK|C[2]~2_combout\ & !\gen_blocks:3:RCA_BLOCK|C[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001000111111111000100010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datab => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|C[3]~3_combout\);

-- Location: LABCELL_X43_Y52_N28
\gen_blocks:3:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(3) = ( \gen_blocks:3:RCA_BLOCK|C[3]~3_combout\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\) ) ) # ( !\gen_blocks:3:RCA_BLOCK|C[3]~3_combout\ & ( !\A[15]~input_o\ $ (\B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	dataf => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(3));

-- Location: IOIBUF_X48_Y56_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X43_Y52_N38
\gen_blocks:3:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:block_prop~0_combout\ = ( \A[12]~input_o\ & ( (!\B[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) ) # ( !\A[12]~input_o\ & ( (\B[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \gen_blocks:3:block_prop~0_combout\);

-- Location: LABCELL_X43_Y52_N30
\gen_blocks:3:block_prop\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:block_prop~combout\ = ( \A[14]~input_o\ & ( (\gen_blocks:3:block_prop~0_combout\ & (!\B[14]~input_o\ & (!\A[15]~input_o\ $ (!\B[15]~input_o\)))) ) ) # ( !\A[14]~input_o\ & ( (\gen_blocks:3:block_prop~0_combout\ & (\B[14]~input_o\ & 
-- (!\A[15]~input_o\ $ (!\B[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_gen_blocks:3:block_prop~0_combout\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:block_prop~combout\);

-- Location: LABCELL_X43_Y52_N32
\c_chain~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~8_combout\ = ( \B[11]~input_o\ & ( \gen_blocks:2:block_prop~combout\ & ( (\gen_blocks:3:block_prop~combout\ & ((\A[11]~input_o\) # (\c_chain~6_combout\))) ) ) ) # ( !\B[11]~input_o\ & ( \gen_blocks:2:block_prop~combout\ & ( (\c_chain~6_combout\ & 
-- \gen_blocks:3:block_prop~combout\) ) ) ) # ( \B[11]~input_o\ & ( !\gen_blocks:2:block_prop~combout\ & ( (\gen_blocks:3:block_prop~combout\ & ((!\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\) # ((\A[11]~input_o\) # (\c_chain~6_combout\)))) ) ) ) # ( 
-- !\B[11]~input_o\ & ( !\gen_blocks:2:block_prop~combout\ & ( (\gen_blocks:3:block_prop~combout\ & (((!\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ & \A[11]~input_o\)) # (\c_chain~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111011000000001011111100000000001100110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datab => \ALT_INV_c_chain~6_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_gen_blocks:3:block_prop~combout\,
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_gen_blocks:2:block_prop~combout\,
	combout => \c_chain~8_combout\);

-- Location: IOIBUF_X51_Y56_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X43_Y52_N24
\c_chain~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~9_combout\ = ( \gen_blocks:3:block_prop~combout\ & ( (\B[15]~input_o\ & \A[15]~input_o\) ) ) # ( !\gen_blocks:3:block_prop~combout\ & ( (!\B[15]~input_o\ & (\A[15]~input_o\ & !\gen_blocks:3:RCA_BLOCK|C[3]~3_combout\)) # (\B[15]~input_o\ & 
-- ((!\gen_blocks:3:RCA_BLOCK|C[3]~3_combout\) # (\A[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	dataf => \ALT_INV_gen_blocks:3:block_prop~combout\,
	combout => \c_chain~9_combout\);

-- Location: LABCELL_X47_Y52_N0
\gen_blocks:4:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|S\(0) = ( \B[16]~input_o\ & ( \c_chain~9_combout\ & ( \A[16]~input_o\ ) ) ) # ( !\B[16]~input_o\ & ( \c_chain~9_combout\ & ( !\A[16]~input_o\ ) ) ) # ( \B[16]~input_o\ & ( !\c_chain~9_combout\ & ( !\A[16]~input_o\ $ 
-- (\c_chain~8_combout\) ) ) ) # ( !\B[16]~input_o\ & ( !\c_chain~9_combout\ & ( !\A[16]~input_o\ $ (!\c_chain~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_c_chain~8_combout\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_c_chain~9_combout\,
	combout => \gen_blocks:4:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X51_Y56_N1
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X46_Y56_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X47_Y52_N4
\gen_blocks:4:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ = ( !\B[16]~input_o\ & ( \c_chain~9_combout\ & ( !\A[16]~input_o\ ) ) ) # ( \B[16]~input_o\ & ( !\c_chain~9_combout\ & ( (!\c_chain~8_combout\ & !\A[16]~input_o\) ) ) ) # ( !\B[16]~input_o\ & ( !\c_chain~9_combout\ 
-- & ( (!\c_chain~8_combout\) # (!\A[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010101000001010000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~8_combout\,
	datac => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_c_chain~9_combout\,
	combout => \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\);

-- Location: LABCELL_X47_Y52_N30
\gen_blocks:4:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|S\(1) = ( \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ & ( !\B[17]~input_o\ $ (!\A[17]~input_o\) ) ) # ( !\gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ & ( !\B[17]~input_o\ $ (\A[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001111000011110011000011110000110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datae => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:4:RCA_BLOCK|S\(1));

-- Location: LABCELL_X47_Y52_N32
\gen_blocks:4:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|C[2]~2_combout\ = ( \A[17]~input_o\ & ( (!\gen_blocks:4:RCA_BLOCK|C[1]~0_combout\) # (\B[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datab => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|C[2]~2_combout\);

-- Location: IOIBUF_X46_Y56_N1
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X47_Y52_N34
\gen_blocks:4:RCA_BLOCK|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|C[2]~1_combout\ = (!\gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ & \B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datab => \ALT_INV_B[17]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|C[2]~1_combout\);

-- Location: IOIBUF_X51_Y56_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X47_Y52_N16
\gen_blocks:4:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|S\(2) = ( \A[18]~input_o\ & ( !\B[18]~input_o\ $ (((\gen_blocks:4:RCA_BLOCK|C[2]~1_combout\) # (\gen_blocks:4:RCA_BLOCK|C[2]~2_combout\))) ) ) # ( !\A[18]~input_o\ & ( !\B[18]~input_o\ $ (((!\gen_blocks:4:RCA_BLOCK|C[2]~2_combout\ 
-- & !\gen_blocks:4:RCA_BLOCK|C[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100011001101100110010011001001100111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datab => \ALT_INV_B[18]~input_o\,
	datad => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|S\(2));

-- Location: LABCELL_X47_Y52_N18
\gen_blocks:4:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ = ( \A[18]~input_o\ & ( (!\gen_blocks:4:RCA_BLOCK|C[2]~2_combout\ & (!\B[18]~input_o\ & !\gen_blocks:4:RCA_BLOCK|C[2]~1_combout\)) ) ) # ( !\A[18]~input_o\ & ( (!\B[18]~input_o\) # 
-- ((!\gen_blocks:4:RCA_BLOCK|C[2]~2_combout\ & !\gen_blocks:4:RCA_BLOCK|C[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datab => \ALT_INV_B[18]~input_o\,
	datac => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|C[3]~3_combout\);

-- Location: IOIBUF_X48_Y56_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X47_Y52_N20
\gen_blocks:4:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|S\(3) = ( \B[19]~input_o\ & ( \A[19]~input_o\ & ( !\gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ ) ) ) # ( !\B[19]~input_o\ & ( \A[19]~input_o\ & ( \gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ ) ) ) # ( \B[19]~input_o\ & ( !\A[19]~input_o\ & 
-- ( \gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ ) ) ) # ( !\B[19]~input_o\ & ( !\A[19]~input_o\ & ( !\gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101010101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datae => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|S\(3));

-- Location: LABCELL_X47_Y52_N24
\gen_blocks:4:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:block_prop~0_combout\ = ( \A[16]~input_o\ & ( (!\B[16]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) ) # ( !\A[16]~input_o\ & ( (\B[16]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100001100001100000000000011000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	combout => \gen_blocks:4:block_prop~0_combout\);

-- Location: LABCELL_X47_Y52_N10
\gen_blocks:4:block_prop\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:block_prop~combout\ = ( \B[19]~input_o\ & ( \A[18]~input_o\ & ( (!\A[19]~input_o\ & (!\B[18]~input_o\ & \gen_blocks:4:block_prop~0_combout\)) ) ) ) # ( !\B[19]~input_o\ & ( \A[18]~input_o\ & ( (\A[19]~input_o\ & (!\B[18]~input_o\ & 
-- \gen_blocks:4:block_prop~0_combout\)) ) ) ) # ( \B[19]~input_o\ & ( !\A[18]~input_o\ & ( (!\A[19]~input_o\ & (\B[18]~input_o\ & \gen_blocks:4:block_prop~0_combout\)) ) ) ) # ( !\B[19]~input_o\ & ( !\A[18]~input_o\ & ( (\A[19]~input_o\ & (\B[18]~input_o\ & 
-- \gen_blocks:4:block_prop~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000010001000000000010001000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_gen_blocks:4:block_prop~0_combout\,
	datae => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \gen_blocks:4:block_prop~combout\);

-- Location: LABCELL_X47_Y52_N12
\c_chain~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~11_combout\ = ( \B[19]~input_o\ & ( \A[19]~input_o\ ) ) # ( !\B[19]~input_o\ & ( \A[19]~input_o\ & ( (!\gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ & !\gen_blocks:4:block_prop~combout\) ) ) ) # ( \B[19]~input_o\ & ( !\A[19]~input_o\ & ( 
-- (!\gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ & !\gen_blocks:4:block_prop~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000010101010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datad => \ALT_INV_gen_blocks:4:block_prop~combout\,
	datae => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \c_chain~11_combout\);

-- Location: LABCELL_X43_Y52_N18
\c_chain~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~10_combout\ = ( \B[15]~input_o\ & ( \gen_blocks:4:block_prop~combout\ & ( (((!\gen_blocks:3:RCA_BLOCK|C[3]~3_combout\ & !\gen_blocks:3:block_prop~combout\)) # (\c_chain~8_combout\)) # (\A[15]~input_o\) ) ) ) # ( !\B[15]~input_o\ & ( 
-- \gen_blocks:4:block_prop~combout\ & ( ((\A[15]~input_o\ & (!\gen_blocks:3:RCA_BLOCK|C[3]~3_combout\ & !\gen_blocks:3:block_prop~combout\))) # (\c_chain~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000111111111101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datac => \ALT_INV_gen_blocks:3:block_prop~combout\,
	datad => \ALT_INV_c_chain~8_combout\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_gen_blocks:4:block_prop~combout\,
	combout => \c_chain~10_combout\);

-- Location: IOIBUF_X51_Y56_N94
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X53_Y56_N94
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: MLABCELL_X49_Y52_N2
\gen_blocks:5:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|S\(0) = ( \A[20]~input_o\ & ( \B[20]~input_o\ & ( (\c_chain~10_combout\) # (\c_chain~11_combout\) ) ) ) # ( !\A[20]~input_o\ & ( \B[20]~input_o\ & ( (!\c_chain~11_combout\ & !\c_chain~10_combout\) ) ) ) # ( \A[20]~input_o\ & ( 
-- !\B[20]~input_o\ & ( (!\c_chain~11_combout\ & !\c_chain~10_combout\) ) ) ) # ( !\A[20]~input_o\ & ( !\B[20]~input_o\ & ( (\c_chain~10_combout\) # (\c_chain~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110000001100000011000000110000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_chain~11_combout\,
	datac => \ALT_INV_c_chain~10_combout\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|S\(0));

-- Location: MLABCELL_X49_Y52_N24
\gen_blocks:5:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ = ( !\A[20]~input_o\ & ( \B[20]~input_o\ & ( (!\c_chain~10_combout\ & !\c_chain~11_combout\) ) ) ) # ( \A[20]~input_o\ & ( !\B[20]~input_o\ & ( (!\c_chain~10_combout\ & !\c_chain~11_combout\) ) ) ) # ( 
-- !\A[20]~input_o\ & ( !\B[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011000000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_chain~10_combout\,
	datad => \ALT_INV_c_chain~11_combout\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X48_Y56_N32
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X49_Y56_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: MLABCELL_X49_Y52_N8
\gen_blocks:5:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|S\(1) = ( \A[21]~input_o\ & ( \B[21]~input_o\ & ( !\gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ ) ) ) # ( !\A[21]~input_o\ & ( \B[21]~input_o\ & ( \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ ) ) ) # ( \A[21]~input_o\ & ( !\B[21]~input_o\ & 
-- ( \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ ) ) ) # ( !\A[21]~input_o\ & ( !\B[21]~input_o\ & ( !\gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101010101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|S\(1));

-- Location: MLABCELL_X49_Y52_N18
\gen_blocks:5:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|C[2]~2_combout\ = ( \A[21]~input_o\ & ( \B[21]~input_o\ ) ) # ( \A[21]~input_o\ & ( !\B[21]~input_o\ & ( !\gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|C[2]~2_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: MLABCELL_X49_Y52_N32
\gen_blocks:5:RCA_BLOCK|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ = ( \B[21]~input_o\ & ( !\gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|C[2]~1_combout\);

-- Location: IOIBUF_X59_Y36_N94
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X58_Y36_N22
\gen_blocks:5:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|S\(2) = ( \gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ & ( \A[22]~input_o\ & ( \B[22]~input_o\ ) ) ) # ( !\gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ & ( \A[22]~input_o\ & ( !\gen_blocks:5:RCA_BLOCK|C[2]~2_combout\ $ (\B[22]~input_o\) ) ) ) 
-- # ( \gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ & ( !\A[22]~input_o\ & ( !\B[22]~input_o\ ) ) ) # ( !\gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ & ( !\A[22]~input_o\ & ( !\gen_blocks:5:RCA_BLOCK|C[2]~2_combout\ $ (!\B[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100111100001111000011000011110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datac => \ALT_INV_B[22]~input_o\,
	datae => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|S\(2));

-- Location: LABCELL_X58_Y36_N24
\gen_blocks:5:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|C[3]~3_combout\ = ( !\gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ & ( \A[22]~input_o\ & ( (!\B[22]~input_o\ & !\gen_blocks:5:RCA_BLOCK|C[2]~2_combout\) ) ) ) # ( \gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ & ( !\A[22]~input_o\ & ( 
-- !\B[22]~input_o\ ) ) ) # ( !\gen_blocks:5:RCA_BLOCK|C[2]~1_combout\ & ( !\A[22]~input_o\ & ( (!\B[22]~input_o\) # (!\gen_blocks:5:RCA_BLOCK|C[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100110011001100110011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[22]~input_o\,
	datad => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datae => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|C[3]~3_combout\);

-- Location: IOIBUF_X59_Y37_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X58_Y36_N30
\gen_blocks:5:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|S\(3) = ( \B[23]~input_o\ & ( !\gen_blocks:5:RCA_BLOCK|C[3]~3_combout\ $ (!\A[23]~input_o\) ) ) # ( !\B[23]~input_o\ & ( !\gen_blocks:5:RCA_BLOCK|C[3]~3_combout\ $ (\A[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|S\(3));

-- Location: MLABCELL_X49_Y52_N20
\gen_blocks:5:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:block_prop~0_combout\ = ( \A[21]~input_o\ & ( \B[20]~input_o\ & ( (!\B[21]~input_o\ & !\A[20]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( \B[20]~input_o\ & ( (\B[21]~input_o\ & !\A[20]~input_o\) ) ) ) # ( \A[21]~input_o\ & ( !\B[20]~input_o\ & 
-- ( (!\B[21]~input_o\ & \A[20]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( !\B[20]~input_o\ & ( (\B[21]~input_o\ & \A[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000110000001100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \gen_blocks:5:block_prop~0_combout\);

-- Location: LABCELL_X58_Y36_N14
\gen_blocks:5:block_prop\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:block_prop~combout\ = ( \A[22]~input_o\ & ( (\gen_blocks:5:block_prop~0_combout\ & (!\B[22]~input_o\ & (!\B[23]~input_o\ $ (!\A[23]~input_o\)))) ) ) # ( !\A[22]~input_o\ & ( (\gen_blocks:5:block_prop~0_combout\ & (\B[22]~input_o\ & 
-- (!\B[23]~input_o\ $ (!\A[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_gen_blocks:5:block_prop~0_combout\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \gen_blocks:5:block_prop~combout\);

-- Location: LABCELL_X58_Y36_N12
\c_chain~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~13_combout\ = ( \gen_blocks:5:block_prop~combout\ & ( (\B[23]~input_o\ & \A[23]~input_o\) ) ) # ( !\gen_blocks:5:block_prop~combout\ & ( (!\B[23]~input_o\ & (!\gen_blocks:5:RCA_BLOCK|C[3]~3_combout\ & \A[23]~input_o\)) # (\B[23]~input_o\ & 
-- ((!\gen_blocks:5:RCA_BLOCK|C[3]~3_combout\) # (\A[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datac => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_gen_blocks:5:block_prop~combout\,
	combout => \c_chain~13_combout\);

-- Location: IOIBUF_X59_Y34_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X47_Y52_N36
\c_chain~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~12_combout\ = ( \B[19]~input_o\ & ( \gen_blocks:5:block_prop~combout\ & ( (((!\gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ & !\gen_blocks:4:block_prop~combout\)) # (\c_chain~10_combout\)) # (\A[19]~input_o\) ) ) ) # ( !\B[19]~input_o\ & ( 
-- \gen_blocks:5:block_prop~combout\ & ( ((\A[19]~input_o\ & (!\gen_blocks:4:RCA_BLOCK|C[3]~3_combout\ & !\gen_blocks:4:block_prop~combout\))) # (\c_chain~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110011001100111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_c_chain~10_combout\,
	datac => \gen_blocks:4:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datad => \ALT_INV_gen_blocks:4:block_prop~combout\,
	datae => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_gen_blocks:5:block_prop~combout\,
	combout => \c_chain~12_combout\);

-- Location: LABCELL_X58_Y36_N18
\gen_blocks:6:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|S\(0) = ( \c_chain~12_combout\ & ( !\B[24]~input_o\ $ (\A[24]~input_o\) ) ) # ( !\c_chain~12_combout\ & ( !\c_chain~13_combout\ $ (!\B[24]~input_o\ $ (\A[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~13_combout\,
	datab => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_c_chain~12_combout\,
	combout => \gen_blocks:6:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X59_Y33_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X58_Y36_N16
\gen_blocks:6:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\ = ( \c_chain~12_combout\ & ( (!\B[24]~input_o\ & !\A[24]~input_o\) ) ) # ( !\c_chain~12_combout\ & ( (!\c_chain~13_combout\ & ((!\B[24]~input_o\) # (!\A[24]~input_o\))) # (\c_chain~13_combout\ & (!\B[24]~input_o\ & 
-- !\A[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~13_combout\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_c_chain~12_combout\,
	combout => \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X59_Y34_N94
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X58_Y36_N2
\gen_blocks:6:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|S\(1) = ( \A[25]~input_o\ & ( !\B[25]~input_o\ $ (!\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\) ) ) # ( !\A[25]~input_o\ & ( !\B[25]~input_o\ $ (\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datac => \gen_blocks:6:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X59_Y34_N63
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X59_Y36_N32
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X58_Y36_N4
\gen_blocks:6:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|S\(2) = ( \B[25]~input_o\ & ( !\A[26]~input_o\ $ (!\B[26]~input_o\ $ (((!\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\) # (\A[25]~input_o\)))) ) ) # ( !\B[25]~input_o\ & ( !\A[26]~input_o\ $ (!\B[26]~input_o\ $ (((\A[25]~input_o\ & 
-- !\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100111100011010010011110011000011011010011100001101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \gen_blocks:6:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X59_Y34_N1
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X58_Y36_N6
\gen_blocks:6:RCA_BLOCK|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ = ( \B[25]~input_o\ & ( (!\A[26]~input_o\ & (\B[26]~input_o\ & ((!\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\) # (\A[25]~input_o\)))) # (\A[26]~input_o\ & (((!\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\) # 
-- (\B[26]~input_o\)) # (\A[25]~input_o\))) ) ) # ( !\B[25]~input_o\ & ( (!\A[26]~input_o\ & (\A[25]~input_o\ & (!\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\ & \B[26]~input_o\))) # (\A[26]~input_o\ & (((\A[25]~input_o\ & 
-- !\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\)) # (\B[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110011000100000111001100110001111101110011000111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \gen_blocks:6:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datad => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\);

-- Location: LABCELL_X58_Y36_N8
\gen_blocks:6:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|S\(3) = ( \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & ( !\B[27]~input_o\ $ (\A[27]~input_o\) ) ) # ( !\gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	dataf => \gen_blocks:6:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	combout => \gen_blocks:6:RCA_BLOCK|S\(3));

-- Location: LABCELL_X58_Y36_N0
\gen_blocks:6:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:block_prop~0_combout\ = ( \A[25]~input_o\ & ( (!\B[25]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\))) ) ) # ( !\A[25]~input_o\ & ( (\B[25]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \gen_blocks:6:block_prop~0_combout\);

-- Location: LABCELL_X58_Y36_N10
\gen_blocks:6:block_prop\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:block_prop~combout\ = ( \gen_blocks:6:block_prop~0_combout\ & ( (!\B[27]~input_o\ & (\A[27]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\)))) # (\B[27]~input_o\ & (!\A[27]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_gen_blocks:6:block_prop~0_combout\,
	combout => \gen_blocks:6:block_prop~combout\);

-- Location: LABCELL_X58_Y36_N34
\c_chain~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~14_combout\ = ( \A[23]~input_o\ & ( \B[23]~input_o\ & ( \gen_blocks:6:block_prop~combout\ ) ) ) # ( !\A[23]~input_o\ & ( \B[23]~input_o\ & ( (\gen_blocks:6:block_prop~combout\ & (((!\gen_blocks:5:RCA_BLOCK|C[3]~3_combout\ & 
-- !\gen_blocks:5:block_prop~combout\)) # (\c_chain~12_combout\))) ) ) ) # ( \A[23]~input_o\ & ( !\B[23]~input_o\ & ( (\gen_blocks:6:block_prop~combout\ & (((!\gen_blocks:5:RCA_BLOCK|C[3]~3_combout\ & !\gen_blocks:5:block_prop~combout\)) # 
-- (\c_chain~12_combout\))) ) ) ) # ( !\A[23]~input_o\ & ( !\B[23]~input_o\ & ( (\gen_blocks:6:block_prop~combout\ & \c_chain~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001000000011001100100000001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:5:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datab => \ALT_INV_gen_blocks:6:block_prop~combout\,
	datac => \ALT_INV_gen_blocks:5:block_prop~combout\,
	datad => \ALT_INV_c_chain~12_combout\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \c_chain~14_combout\);

-- Location: IOIBUF_X59_Y39_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X59_Y48_N1
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X58_Y46_N20
\block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \block_prop~0_combout\ = ( \B[28]~input_o\ & ( !\A[28]~input_o\ ) ) # ( !\B[28]~input_o\ & ( \A[28]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \block_prop~0_combout\);

-- Location: LABCELL_X58_Y36_N38
\gen_blocks:7:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|S\(0) = ( \A[27]~input_o\ & ( \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & ( !\block_prop~0_combout\ $ (((!\B[27]~input_o\ & (\gen_blocks:6:block_prop~combout\ & !\c_chain~14_combout\)))) ) ) ) # ( !\A[27]~input_o\ & ( 
-- \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & ( !\block_prop~0_combout\ $ (((!\c_chain~14_combout\ & ((!\B[27]~input_o\) # (\gen_blocks:6:block_prop~combout\))))) ) ) ) # ( \A[27]~input_o\ & ( !\gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & ( 
-- !\block_prop~0_combout\ $ (((!\B[27]~input_o\ & !\c_chain~14_combout\))) ) ) ) # ( !\A[27]~input_o\ & ( !\gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & ( !\c_chain~14_combout\ $ (!\block_prop~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010111111010000001001111101100001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_gen_blocks:6:block_prop~combout\,
	datac => \ALT_INV_c_chain~14_combout\,
	datad => \ALT_INV_block_prop~0_combout\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \gen_blocks:6:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	combout => \gen_blocks:7:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X59_Y46_N1
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X58_Y36_N28
\c_chain~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~15_combout\ = ( \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & ( (!\gen_blocks:6:block_prop~combout\ & ((\A[27]~input_o\) # (\B[27]~input_o\))) # (\gen_blocks:6:block_prop~combout\ & (\B[27]~input_o\ & \A[27]~input_o\)) ) ) # ( 
-- !\gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & ( (\B[27]~input_o\ & \A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_gen_blocks:6:block_prop~combout\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \gen_blocks:6:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	combout => \c_chain~15_combout\);

-- Location: LABCELL_X58_Y46_N6
\gen_blocks:7:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ = ( !\c_chain~15_combout\ & ( \B[28]~input_o\ & ( (!\c_chain~14_combout\ & !\A[28]~input_o\) ) ) ) # ( \c_chain~15_combout\ & ( !\B[28]~input_o\ & ( !\A[28]~input_o\ ) ) ) # ( !\c_chain~15_combout\ & ( 
-- !\B[28]~input_o\ & ( (!\c_chain~14_combout\) # (!\A[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111100001111000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~14_combout\,
	datac => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_c_chain~15_combout\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\);

-- Location: LABCELL_X58_Y46_N8
\gen_blocks:7:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|S\(1) = ( \B[29]~input_o\ & ( \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( !\A[29]~input_o\ ) ) ) # ( !\B[29]~input_o\ & ( \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( \A[29]~input_o\ ) ) ) # ( \B[29]~input_o\ & ( 
-- !\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( \A[29]~input_o\ ) ) ) # ( !\B[29]~input_o\ & ( !\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( !\A[29]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \gen_blocks:7:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:7:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X59_Y48_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X58_Y46_N34
\gen_blocks:7:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|S\(2) = ( \B[30]~input_o\ & ( \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( !\A[30]~input_o\ $ (((\B[29]~input_o\ & \A[29]~input_o\))) ) ) ) # ( !\B[30]~input_o\ & ( \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( !\A[30]~input_o\ $ 
-- (((!\B[29]~input_o\) # (!\A[29]~input_o\))) ) ) ) # ( \B[30]~input_o\ & ( !\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( !\A[30]~input_o\ $ (((\A[29]~input_o\) # (\B[29]~input_o\))) ) ) ) # ( !\B[30]~input_o\ & ( !\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( 
-- !\A[30]~input_o\ $ (((!\B[29]~input_o\ & !\A[29]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000101000000101111100000101111110101111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \gen_blocks:7:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:7:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X59_Y46_N63
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X58_Y46_N28
\gen_blocks:7:RCA_BLOCK|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|C[3]~1_combout\ = ( \B[30]~input_o\ & ( \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( ((\A[29]~input_o\ & \B[29]~input_o\)) # (\A[30]~input_o\) ) ) ) # ( !\B[30]~input_o\ & ( \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( 
-- (\A[30]~input_o\ & (\A[29]~input_o\ & \B[29]~input_o\)) ) ) ) # ( \B[30]~input_o\ & ( !\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( ((\B[29]~input_o\) # (\A[29]~input_o\)) # (\A[30]~input_o\) ) ) ) # ( !\B[30]~input_o\ & ( 
-- !\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ & ( (\A[30]~input_o\ & ((\B[29]~input_o\) # (\A[29]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101011111110111111100000001000000010101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \gen_blocks:7:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:7:RCA_BLOCK|C[3]~1_combout\);

-- Location: IOIBUF_X59_Y46_N94
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X58_Y46_N38
\gen_blocks:7:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|S\(3) = ( \A[31]~input_o\ & ( !\B[31]~input_o\ $ (\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\) ) ) # ( !\A[31]~input_o\ & ( !\B[31]~input_o\ $ (!\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datad => \gen_blocks:7:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \gen_blocks:7:RCA_BLOCK|S\(3));

-- Location: LABCELL_X58_Y46_N22
\gen_blocks:7:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:block_prop~0_combout\ = ( \A[30]~input_o\ & ( (!\B[30]~input_o\ & (\block_prop~0_combout\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\)))) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & (\block_prop~0_combout\ & (!\B[29]~input_o\ $ 
-- (!\A[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_block_prop~0_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \gen_blocks:7:block_prop~0_combout\);

-- Location: LABCELL_X58_Y46_N0
\c_chain~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~16_combout\ = ( \c_chain~15_combout\ & ( \A[31]~input_o\ & ( ((\B[31]~input_o\) # (\gen_blocks:7:block_prop~0_combout\)) # (\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\) ) ) ) # ( !\c_chain~15_combout\ & ( \A[31]~input_o\ & ( 
-- ((!\gen_blocks:7:block_prop~0_combout\ & (\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\)) # (\gen_blocks:7:block_prop~0_combout\ & ((\c_chain~14_combout\)))) # (\B[31]~input_o\) ) ) ) # ( \c_chain~15_combout\ & ( !\A[31]~input_o\ & ( (\B[31]~input_o\ & 
-- ((\gen_blocks:7:block_prop~0_combout\) # (\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\))) ) ) ) # ( !\c_chain~15_combout\ & ( !\A[31]~input_o\ & ( (\B[31]~input_o\ & ((!\gen_blocks:7:block_prop~0_combout\ & (\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\)) # 
-- (\gen_blocks:7:block_prop~0_combout\ & ((\c_chain~14_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001110000011101001111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	datab => \ALT_INV_gen_blocks:7:block_prop~0_combout\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_c_chain~14_combout\,
	datae => \ALT_INV_c_chain~15_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \c_chain~16_combout\);

-- Location: LABCELL_X58_Y46_N26
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \A[31]~input_o\ & ( (!\B[31]~input_o\) # (\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\) ) ) # ( !\A[31]~input_o\ & ( (!\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\) # (\B[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	datad => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
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

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


