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

-- DATE "04/08/2026 12:41:56"

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
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(15 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[3]~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \c_chain~0_combout\ : std_logic;
SIGNAL \c_chain~2_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|Cout~0_combout\ : std_logic;
SIGNAL \c_chain~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \c_chain~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:block_prop~combout\ : std_logic;
SIGNAL \c_chain~4_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \c_chain~5_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:block_prop~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \block_prop~0_combout\ : std_logic;
SIGNAL \c_chain~6_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \c_chain~7_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:block_prop~0_combout\ : std_logic;
SIGNAL \c_chain~8_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:1:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:3:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:2:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~7_combout\ : std_logic;
SIGNAL \ALT_INV_block_prop~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_chain~6_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:block_prop~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:block_prop~0_combout\ : std_logic;

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
\gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~1_combout\ <= NOT \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\ALT_INV_gen_blocks:3:block_prop~0_combout\ <= NOT \gen_blocks:3:block_prop~0_combout\;
\gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\ <= NOT \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\;
\ALT_INV_c_chain~7_combout\ <= NOT \c_chain~7_combout\;
\ALT_INV_block_prop~0_combout\ <= NOT \block_prop~0_combout\;
\ALT_INV_c_chain~6_combout\ <= NOT \c_chain~6_combout\;
\ALT_INV_gen_blocks:2:block_prop~combout\ <= NOT \gen_blocks:2:block_prop~combout\;
\ALT_INV_gen_blocks:2:block_prop~0_combout\ <= NOT \gen_blocks:2:block_prop~0_combout\;

-- Location: IOOBUF_X25_Y0_N67
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

-- Location: IOOBUF_X29_Y0_N67
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N98
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

-- Location: IOOBUF_X59_Y9_N33
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

-- Location: IOOBUF_X59_Y7_N36
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

-- Location: IOOBUF_X59_Y7_N98
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

-- Location: IOOBUF_X59_Y10_N2
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

-- Location: IOOBUF_X48_Y0_N67
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

-- Location: IOOBUF_X48_Y0_N33
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

-- Location: IOOBUF_X50_Y0_N98
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

-- Location: IOOBUF_X59_Y4_N98
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X48_Y0_N5
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

-- Location: IOOBUF_X56_Y0_N33
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

-- Location: IOOBUF_X55_Y0_N67
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

-- Location: IOOBUF_X47_Y0_N2
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_chain~8_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOIBUF_X33_Y0_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X29_Y2_N0
\gen_blocks:0:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(0) = ( \A[0]~input_o\ & ( !\Cin~input_o\ $ (\B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( !\Cin~input_o\ $ (!\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(0));

-- Location: MLABCELL_X29_Y2_N4
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

-- Location: IOIBUF_X29_Y0_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X29_Y2_N6
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

-- Location: MLABCELL_X29_Y2_N28
\gen_blocks:0:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(1) = ( \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) # ( !\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ & ( !\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ $ (!\B[1]~input_o\ $ (\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~1_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X32_Y0_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X29_Y2_N30
\gen_blocks:0:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ = ( \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ & ( (!\B[1]~input_o\ & !\A[1]~input_o\) ) ) # ( !\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ & ( (!\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ & ((!\B[1]~input_o\) # 
-- (!\A[1]~input_o\))) # (\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ & (!\B[1]~input_o\ & !\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~1_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\);

-- Location: MLABCELL_X29_Y2_N32
\gen_blocks:0:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(2) = ( \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) # ( !\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101010101011010101010101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X30_Y0_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X29_Y2_N22
\gen_blocks:0:RCA_BLOCK|C[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[3]~4_combout\ = ( \B[2]~input_o\ & ( \A[2]~input_o\ ) ) # ( !\B[2]~input_o\ & ( (!\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & \A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[3]~4_combout\);

-- Location: IOIBUF_X30_Y0_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X29_Y2_N36
\gen_blocks:0:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[3]~3_combout\ = ( \B[2]~input_o\ & ( !\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[3]~3_combout\);

-- Location: MLABCELL_X29_Y2_N20
\gen_blocks:0:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(3) = !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\gen_blocks:0:RCA_BLOCK|C[3]~3_combout\) # (\gen_blocks:0:RCA_BLOCK|C[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110100101011010011010010101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~4_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(3));

-- Location: MLABCELL_X29_Y2_N38
\c_chain~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~0_combout\ = (!\B[0]~input_o\ & (\A[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\)))) # (\B[0]~input_o\ & (!\A[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	combout => \c_chain~0_combout\);

-- Location: MLABCELL_X29_Y2_N8
\c_chain~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~2_combout\ = ( \B[2]~input_o\ & ( (\c_chain~0_combout\ & (!\A[2]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) ) ) # ( !\B[2]~input_o\ & ( (\c_chain~0_combout\ & (\A[2]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_c_chain~0_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \c_chain~2_combout\);

-- Location: MLABCELL_X29_Y2_N10
\gen_blocks:0:RCA_BLOCK|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|Cout~0_combout\ = (!\A[3]~input_o\ & ((!\B[3]~input_o\) # ((!\gen_blocks:0:RCA_BLOCK|C[3]~4_combout\ & !\gen_blocks:0:RCA_BLOCK|C[3]~3_combout\)))) # (\A[3]~input_o\ & (!\B[3]~input_o\ & (!\gen_blocks:0:RCA_BLOCK|C[3]~4_combout\ & 
-- !\gen_blocks:0:RCA_BLOCK|C[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~4_combout\,
	datad => \gen_blocks:0:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|Cout~0_combout\);

-- Location: MLABCELL_X29_Y2_N14
\c_chain~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~3_combout\ = (!\c_chain~2_combout\ & !\gen_blocks:0:RCA_BLOCK|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~2_combout\,
	datab => \gen_blocks:0:RCA_BLOCK|ALT_INV_Cout~0_combout\,
	combout => \c_chain~3_combout\);

-- Location: IOIBUF_X59_Y6_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X29_Y2_N26
\c_chain~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~1_combout\ = ( \A[3]~input_o\ & ( \c_chain~0_combout\ & ( (!\B[3]~input_o\ & (\Cin~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( \c_chain~0_combout\ & ( (\B[3]~input_o\ & (\Cin~input_o\ & (!\A[2]~input_o\ $ 
-- (!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_c_chain~0_combout\,
	combout => \c_chain~1_combout\);

-- Location: IOIBUF_X59_Y9_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X58_Y6_N0
\gen_blocks:1:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(0) = ( \c_chain~1_combout\ & ( \A[4]~input_o\ & ( \B[4]~input_o\ ) ) ) # ( !\c_chain~1_combout\ & ( \A[4]~input_o\ & ( !\c_chain~3_combout\ $ (\B[4]~input_o\) ) ) ) # ( \c_chain~1_combout\ & ( !\A[4]~input_o\ & ( !\B[4]~input_o\ 
-- ) ) ) # ( !\c_chain~1_combout\ & ( !\A[4]~input_o\ & ( !\c_chain~3_combout\ $ (!\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010111100001111000010100101101001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~3_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_c_chain~1_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X59_Y6_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X58_Y6_N24
\gen_blocks:1:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ = ( !\c_chain~1_combout\ & ( \A[4]~input_o\ & ( (!\B[4]~input_o\ & !\c_chain~3_combout\) ) ) ) # ( \c_chain~1_combout\ & ( !\A[4]~input_o\ & ( !\B[4]~input_o\ ) ) ) # ( !\c_chain~1_combout\ & ( !\A[4]~input_o\ & ( 
-- (!\B[4]~input_o\) # (!\c_chain~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010101010101010101010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_c_chain~3_combout\,
	datae => \ALT_INV_c_chain~1_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\);

-- Location: LABCELL_X58_Y6_N30
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

-- Location: IOIBUF_X59_Y6_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X58_Y6_N34
\gen_blocks:1:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ = ( \A[5]~input_o\ & ( (!\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\) # (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[2]~2_combout\);

-- Location: IOIBUF_X59_Y7_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X58_Y6_N32
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

-- Location: LABCELL_X58_Y6_N16
\gen_blocks:1:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(2) = ( \gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ & ( !\A[6]~input_o\ $ (\B[6]~input_o\) ) ) # ( !\gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ & ( !\A[6]~input_o\ $ (!\gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ $ (\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datac => \ALT_INV_B[6]~input_o\,
	dataf => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X59_Y4_N63
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X58_Y6_N18
\gen_blocks:1:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ = ( \gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ & ( (!\A[6]~input_o\ & !\B[6]~input_o\) ) ) # ( !\gen_blocks:1:RCA_BLOCK|C[2]~1_combout\ & ( (!\A[6]~input_o\ & ((!\gen_blocks:1:RCA_BLOCK|C[2]~2_combout\) # 
-- (!\B[6]~input_o\))) # (\A[6]~input_o\ & (!\gen_blocks:1:RCA_BLOCK|C[2]~2_combout\ & !\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\);

-- Location: IOIBUF_X59_Y7_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y6_N22
\gen_blocks:1:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(3) = ( \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ & ( \B[7]~input_o\ & ( !\A[7]~input_o\ ) ) ) # ( !\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ & ( \B[7]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( \gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ & ( 
-- !\B[7]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( !\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ & ( !\B[7]~input_o\ & ( !\A[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datae => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(3));

-- Location: IOIBUF_X48_Y0_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X58_Y6_N6
\gen_blocks:1:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:block_prop~0_combout\ = ( \B[5]~input_o\ & ( \A[4]~input_o\ & ( (!\A[5]~input_o\ & !\B[4]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( \A[4]~input_o\ & ( (\A[5]~input_o\ & !\B[4]~input_o\) ) ) ) # ( \B[5]~input_o\ & ( !\A[4]~input_o\ & ( 
-- (!\A[5]~input_o\ & \B[4]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( !\A[4]~input_o\ & ( (\A[5]~input_o\ & \B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000001100110000110011000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \gen_blocks:1:block_prop~0_combout\);

-- Location: LABCELL_X58_Y6_N8
\gen_blocks:1:block_prop\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:block_prop~combout\ = ( \B[6]~input_o\ & ( \B[7]~input_o\ & ( (!\A[6]~input_o\ & (!\A[7]~input_o\ & \gen_blocks:1:block_prop~0_combout\)) ) ) ) # ( !\B[6]~input_o\ & ( \B[7]~input_o\ & ( (\A[6]~input_o\ & (!\A[7]~input_o\ & 
-- \gen_blocks:1:block_prop~0_combout\)) ) ) ) # ( \B[6]~input_o\ & ( !\B[7]~input_o\ & ( (!\A[6]~input_o\ & (\A[7]~input_o\ & \gen_blocks:1:block_prop~0_combout\)) ) ) ) # ( !\B[6]~input_o\ & ( !\B[7]~input_o\ & ( (\A[6]~input_o\ & (\A[7]~input_o\ & 
-- \gen_blocks:1:block_prop~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000010001000000000010001000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_gen_blocks:1:block_prop~0_combout\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \gen_blocks:1:block_prop~combout\);

-- Location: MLABCELL_X29_Y2_N12
\c_chain~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~4_combout\ = ( \gen_blocks:1:block_prop~combout\ & ( (!\c_chain~2_combout\ & (!\gen_blocks:0:RCA_BLOCK|Cout~0_combout\)) # (\c_chain~2_combout\ & ((\Cin~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000110111011000100011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~2_combout\,
	datab => \gen_blocks:0:RCA_BLOCK|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_gen_blocks:1:block_prop~combout\,
	combout => \c_chain~4_combout\);

-- Location: IOIBUF_X52_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y6_N14
\c_chain~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~5_combout\ = ( \gen_blocks:1:block_prop~combout\ & ( \B[7]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( !\gen_blocks:1:block_prop~combout\ & ( \B[7]~input_o\ & ( (!\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\) # (\A[7]~input_o\) ) ) ) # ( 
-- !\gen_blocks:1:block_prop~combout\ & ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & !\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000011111111001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datad => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datae => \ALT_INV_gen_blocks:1:block_prop~combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \c_chain~5_combout\);

-- Location: MLABCELL_X52_Y4_N22
\gen_blocks:2:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(0) = ( \B[8]~input_o\ & ( \c_chain~5_combout\ & ( \A[8]~input_o\ ) ) ) # ( !\B[8]~input_o\ & ( \c_chain~5_combout\ & ( !\A[8]~input_o\ ) ) ) # ( \B[8]~input_o\ & ( !\c_chain~5_combout\ & ( !\A[8]~input_o\ $ (\c_chain~4_combout\) 
-- ) ) ) # ( !\B[8]~input_o\ & ( !\c_chain~5_combout\ & ( !\A[8]~input_o\ $ (!\c_chain~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_c_chain~4_combout\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_c_chain~5_combout\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(0));

-- Location: MLABCELL_X52_Y4_N26
\gen_blocks:2:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ = ( !\B[8]~input_o\ & ( \c_chain~5_combout\ & ( !\A[8]~input_o\ ) ) ) # ( \B[8]~input_o\ & ( !\c_chain~5_combout\ & ( (!\c_chain~4_combout\ & !\A[8]~input_o\) ) ) ) # ( !\B[8]~input_o\ & ( !\c_chain~5_combout\ & ( 
-- (!\c_chain~4_combout\) # (!\A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010101010100000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~4_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_c_chain~5_combout\,
	combout => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X59_Y4_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X52_Y4_N30
\gen_blocks:2:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(1) = ( \A[9]~input_o\ & ( !\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ $ (!\B[9]~input_o\) ) ) # ( !\A[9]~input_o\ & ( !\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ $ (\B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001111000011110011000011110000110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datac => \ALT_INV_B[9]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X54_Y0_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X53_Y4_N22
\gen_blocks:2:RCA_BLOCK|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ = ( \B[9]~input_o\ & ( !\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[2]~1_combout\);

-- Location: LABCELL_X53_Y4_N4
\gen_blocks:2:RCA_BLOCK|C[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[2]~2_combout\ = ( \B[9]~input_o\ & ( \A[9]~input_o\ ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & !\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[2]~2_combout\);

-- Location: IOIBUF_X59_Y4_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X53_Y4_N10
\gen_blocks:2:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(2) = ( \B[10]~input_o\ & ( !\A[10]~input_o\ $ (((\gen_blocks:2:RCA_BLOCK|C[2]~2_combout\) # (\gen_blocks:2:RCA_BLOCK|C[2]~1_combout\))) ) ) # ( !\B[10]~input_o\ & ( !\A[10]~input_o\ $ (((!\gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ 
-- & !\gen_blocks:2:RCA_BLOCK|C[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101010011001101010101010011001010101011001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	datad => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(2));

-- Location: LABCELL_X53_Y4_N8
\gen_blocks:2:RCA_BLOCK|C[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ = ( \B[10]~input_o\ & ( (!\A[10]~input_o\ & (!\gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ & !\gen_blocks:2:RCA_BLOCK|C[2]~2_combout\)) ) ) # ( !\B[10]~input_o\ & ( (!\A[10]~input_o\) # 
-- ((!\gen_blocks:2:RCA_BLOCK|C[2]~1_combout\ & !\gen_blocks:2:RCA_BLOCK|C[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~1_combout\,
	datac => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[2]~2_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[3]~3_combout\);

-- Location: IOIBUF_X54_Y0_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X53_Y4_N12
\gen_blocks:2:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(3) = ( \B[11]~input_o\ & ( !\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ $ (!\A[11]~input_o\) ) ) # ( !\B[11]~input_o\ & ( !\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\ $ (\A[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(3));

-- Location: MLABCELL_X52_Y4_N32
\gen_blocks:2:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:block_prop~0_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110011000000110000000000110000001100110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[8]~input_o\,
	combout => \gen_blocks:2:block_prop~0_combout\);

-- Location: LABCELL_X53_Y4_N16
\gen_blocks:2:block_prop\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:block_prop~combout\ = ( \B[10]~input_o\ & ( (!\A[10]~input_o\ & (\gen_blocks:2:block_prop~0_combout\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) ) # ( !\B[10]~input_o\ & ( (\A[10]~input_o\ & (\gen_blocks:2:block_prop~0_combout\ & 
-- (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_gen_blocks:2:block_prop~0_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \gen_blocks:2:block_prop~combout\);

-- Location: IOIBUF_X54_Y0_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X53_Y4_N0
\block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \block_prop~0_combout\ = !\A[12]~input_o\ $ (!\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	combout => \block_prop~0_combout\);

-- Location: LABCELL_X58_Y6_N36
\c_chain~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~6_combout\ = ( \c_chain~4_combout\ & ( \B[7]~input_o\ & ( \gen_blocks:2:block_prop~combout\ ) ) ) # ( !\c_chain~4_combout\ & ( \B[7]~input_o\ & ( (\gen_blocks:2:block_prop~combout\ & (((!\gen_blocks:1:block_prop~combout\ & 
-- !\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\)) # (\A[7]~input_o\))) ) ) ) # ( \c_chain~4_combout\ & ( !\B[7]~input_o\ & ( \gen_blocks:2:block_prop~combout\ ) ) ) # ( !\c_chain~4_combout\ & ( !\B[7]~input_o\ & ( (!\gen_blocks:1:block_prop~combout\ & 
-- (\gen_blocks:2:block_prop~combout\ & (!\gen_blocks:1:RCA_BLOCK|C[3]~3_combout\ & \A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000001100110011001100100000001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:1:block_prop~combout\,
	datab => \ALT_INV_gen_blocks:2:block_prop~combout\,
	datac => \gen_blocks:1:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_c_chain~4_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \c_chain~6_combout\);

-- Location: LABCELL_X53_Y4_N26
\gen_blocks:3:RCA_BLOCK|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(0) = ( \B[11]~input_o\ & ( \c_chain~6_combout\ & ( !\block_prop~0_combout\ ) ) ) # ( !\B[11]~input_o\ & ( \c_chain~6_combout\ & ( !\block_prop~0_combout\ ) ) ) # ( \B[11]~input_o\ & ( !\c_chain~6_combout\ & ( 
-- !\block_prop~0_combout\ $ (((!\A[11]~input_o\ & ((\gen_blocks:2:block_prop~combout\) # (\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\))))) ) ) ) # ( !\B[11]~input_o\ & ( !\c_chain~6_combout\ & ( !\block_prop~0_combout\ $ ((((!\A[11]~input_o\) # 
-- (\gen_blocks:2:block_prop~combout\)) # (\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011110111100011110111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	datab => \ALT_INV_gen_blocks:2:block_prop~combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_block_prop~0_combout\,
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_c_chain~6_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X55_Y0_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X53_Y4_N18
\c_chain~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~7_combout\ = ( \gen_blocks:2:block_prop~combout\ & ( (\B[11]~input_o\ & \A[11]~input_o\) ) ) # ( !\gen_blocks:2:block_prop~combout\ & ( (!\B[11]~input_o\ & (\A[11]~input_o\ & !\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\)) # (\B[11]~input_o\ & 
-- ((!\gen_blocks:2:RCA_BLOCK|C[3]~3_combout\) # (\A[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datad => \gen_blocks:2:RCA_BLOCK|ALT_INV_C[3]~3_combout\,
	dataf => \ALT_INV_gen_blocks:2:block_prop~combout\,
	combout => \c_chain~7_combout\);

-- Location: LABCELL_X53_Y4_N28
\gen_blocks:3:RCA_BLOCK|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ = ( \c_chain~6_combout\ & ( (!\A[12]~input_o\ & !\B[12]~input_o\) ) ) # ( !\c_chain~6_combout\ & ( (!\c_chain~7_combout\ & ((!\A[12]~input_o\) # (!\B[12]~input_o\))) # (\c_chain~7_combout\ & (!\A[12]~input_o\ & 
-- !\B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~7_combout\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_c_chain~6_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X53_Y4_N30
\gen_blocks:3:RCA_BLOCK|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(1) = ( \B[13]~input_o\ & ( !\A[13]~input_o\ $ (!\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\) ) ) # ( !\B[13]~input_o\ & ( !\A[13]~input_o\ $ (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[13]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X52_Y0_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X53_Y4_N32
\gen_blocks:3:RCA_BLOCK|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(2) = ( \A[14]~input_o\ & ( !\B[14]~input_o\ $ (((!\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & (\B[13]~input_o\ & \A[13]~input_o\)))) ) ) # ( 
-- !\A[14]~input_o\ & ( !\B[14]~input_o\ $ (((!\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & (!\B[13]~input_o\ & !\A[13]~input_o\)) # (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & ((!\B[13]~input_o\) # (!\A[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110110100001011011011010011010010010010111101001001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X55_Y0_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X53_Y4_N34
\gen_blocks:3:RCA_BLOCK|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ = ( \A[14]~input_o\ & ( ((!\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & (\B[13]~input_o\ & \A[13]~input_o\))) # (\B[14]~input_o\) ) 
-- ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & ((!\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ & (\B[13]~input_o\ & \A[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011000000000010101100101011111111110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[1]~0_combout\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\);

-- Location: IOIBUF_X50_Y0_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X53_Y4_N2
\gen_blocks:3:RCA_BLOCK|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(3) = ( \B[15]~input_o\ & ( !\A[15]~input_o\ $ (\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ $ (!\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(3));

-- Location: LABCELL_X53_Y4_N14
\gen_blocks:3:block_prop~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:block_prop~0_combout\ = ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & (\block_prop~0_combout\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (\block_prop~0_combout\ & (!\A[13]~input_o\ $ 
-- (!\B[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_block_prop~0_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:block_prop~0_combout\);

-- Location: LABCELL_X53_Y4_N36
\c_chain~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c_chain~8_combout\ = ( \A[15]~input_o\ & ( \c_chain~6_combout\ & ( ((\gen_blocks:3:block_prop~0_combout\) # (\B[15]~input_o\)) # (\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\) ) ) ) # ( !\A[15]~input_o\ & ( \c_chain~6_combout\ & ( (\B[15]~input_o\ & 
-- ((\gen_blocks:3:block_prop~0_combout\) # (\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\))) ) ) ) # ( \A[15]~input_o\ & ( !\c_chain~6_combout\ & ( ((!\gen_blocks:3:block_prop~0_combout\ & ((\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\))) # 
-- (\gen_blocks:3:block_prop~0_combout\ & (\c_chain~7_combout\))) # (\B[15]~input_o\) ) ) ) # ( !\A[15]~input_o\ & ( !\c_chain~6_combout\ & ( (\B[15]~input_o\ & ((!\gen_blocks:3:block_prop~0_combout\ & ((\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\))) # 
-- (\gen_blocks:3:block_prop~0_combout\ & (\c_chain~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101001111110101111100000011000011110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_chain~7_combout\,
	datab => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_gen_blocks:3:block_prop~0_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_c_chain~6_combout\,
	combout => \c_chain~8_combout\);

-- Location: LABCELL_X53_Y4_N20
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (!\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ & ((!\B[15]~input_o\) # (!\A[15]~input_o\))) # (\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ & ((\A[15]~input_o\) # (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111110011110011111111001111001111111100111100111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:3:RCA_BLOCK|ALT_INV_C[3]~1_combout\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
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

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


