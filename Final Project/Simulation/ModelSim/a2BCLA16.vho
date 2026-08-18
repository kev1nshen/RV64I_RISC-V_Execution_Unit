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

-- DATE "04/08/2026 13:26:13"

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
-- S[0]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \c_int~1_combout\ : std_logic;
SIGNAL \c_int~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:c_int[3]~1_combout\ : std_logic;
SIGNAL \c_int~2_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \G[0]~1_combout\ : std_logic;
SIGNAL \G[0]~2_combout\ : std_logic;
SIGNAL \G[0]~3_combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \c_int~3_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \c_int~4_combout\ : std_logic;
SIGNAL \c_int~5_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:p_bit[3]~combout\ : std_logic;
SIGNAL \c_int~6_combout\ : std_logic;
SIGNAL \c_int~7_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \G[1]~4_combout\ : std_logic;
SIGNAL \C~1_combout\ : std_logic;
SIGNAL \G~5_combout\ : std_logic;
SIGNAL \G[1]~6_combout\ : std_logic;
SIGNAL \G[1]~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \C~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \C~3_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \c_int~9_combout\ : std_logic;
SIGNAL \c_int~8_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[2]~combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[3]~combout\ : std_logic;
SIGNAL \c_int~10_combout\ : std_logic;
SIGNAL \gen_blocks:2:c_int[3]~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \c_int~11_combout\ : std_logic;
SIGNAL \G~8_combout\ : std_logic;
SIGNAL \C~6_combout\ : std_logic;
SIGNAL \C~4_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[0]~combout\ : std_logic;
SIGNAL \C~5_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \C~7_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \C~8_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \c_int~13_combout\ : std_logic;
SIGNAL \c_int~12_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[2]~combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \gen_blocks:3:c_int[3]~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[3]~combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \G~9_combout\ : std_logic;
SIGNAL \c_int~14_combout\ : std_logic;
SIGNAL \C~9_combout\ : std_logic;
SIGNAL \C~10_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_C~9_combout\ : std_logic;
SIGNAL \ALT_INV_G~9_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~14_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:p_bit[3]~combout\ : std_logic;
SIGNAL \ALT_INV_c_int~13_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~12_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:p_bit[2]~combout\ : std_logic;
SIGNAL \ALT_INV_C~8_combout\ : std_logic;
SIGNAL \ALT_INV_C~7_combout\ : std_logic;
SIGNAL \ALT_INV_C~6_combout\ : std_logic;
SIGNAL \ALT_INV_G~8_combout\ : std_logic;
SIGNAL \ALT_INV_C~5_combout\ : std_logic;
SIGNAL \ALT_INV_C~4_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:p_bit[0]~combout\ : std_logic;
SIGNAL \ALT_INV_c_int~11_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~10_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:p_bit[3]~combout\ : std_logic;
SIGNAL \ALT_INV_c_int~9_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~8_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:p_bit[2]~combout\ : std_logic;
SIGNAL \ALT_INV_C~3_combout\ : std_logic;
SIGNAL \ALT_INV_C~2_combout\ : std_logic;
SIGNAL \ALT_INV_G[1]~7_combout\ : std_logic;
SIGNAL \ALT_INV_G[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_G~5_combout\ : std_logic;
SIGNAL \ALT_INV_C~1_combout\ : std_logic;
SIGNAL \ALT_INV_G[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~7_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~6_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:1:p_bit[3]~combout\ : std_logic;
SIGNAL \ALT_INV_c_int~5_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~4_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~3_combout\ : std_logic;
SIGNAL \ALT_INV_C~0_combout\ : std_logic;
SIGNAL \ALT_INV_G[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_G[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_G[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_G~0_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:0:c_int[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:0:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~1_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~0_combout\ : std_logic;

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
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_gen_blocks:2:c_int[3]~0_combout\ <= NOT \gen_blocks:2:c_int[3]~0_combout\;
\ALT_INV_gen_blocks:3:c_int[3]~0_combout\ <= NOT \gen_blocks:3:c_int[3]~0_combout\;
\ALT_INV_C~9_combout\ <= NOT \C~9_combout\;
\ALT_INV_G~9_combout\ <= NOT \G~9_combout\;
\ALT_INV_c_int~14_combout\ <= NOT \c_int~14_combout\;
\ALT_INV_gen_blocks:3:p_bit[3]~combout\ <= NOT \gen_blocks:3:p_bit[3]~combout\;
\ALT_INV_c_int~13_combout\ <= NOT \c_int~13_combout\;
\ALT_INV_c_int~12_combout\ <= NOT \c_int~12_combout\;
\ALT_INV_gen_blocks:3:p_bit[2]~combout\ <= NOT \gen_blocks:3:p_bit[2]~combout\;
\ALT_INV_C~8_combout\ <= NOT \C~8_combout\;
\ALT_INV_C~7_combout\ <= NOT \C~7_combout\;
\ALT_INV_C~6_combout\ <= NOT \C~6_combout\;
\ALT_INV_G~8_combout\ <= NOT \G~8_combout\;
\ALT_INV_C~5_combout\ <= NOT \C~5_combout\;
\ALT_INV_C~4_combout\ <= NOT \C~4_combout\;
\ALT_INV_gen_blocks:3:p_bit[0]~combout\ <= NOT \gen_blocks:3:p_bit[0]~combout\;
\ALT_INV_c_int~11_combout\ <= NOT \c_int~11_combout\;
\ALT_INV_c_int~10_combout\ <= NOT \c_int~10_combout\;
\ALT_INV_gen_blocks:2:p_bit[3]~combout\ <= NOT \gen_blocks:2:p_bit[3]~combout\;
\ALT_INV_c_int~9_combout\ <= NOT \c_int~9_combout\;
\ALT_INV_c_int~8_combout\ <= NOT \c_int~8_combout\;
\ALT_INV_gen_blocks:2:p_bit[2]~combout\ <= NOT \gen_blocks:2:p_bit[2]~combout\;
\ALT_INV_C~3_combout\ <= NOT \C~3_combout\;
\ALT_INV_C~2_combout\ <= NOT \C~2_combout\;
\ALT_INV_G[1]~7_combout\ <= NOT \G[1]~7_combout\;
\ALT_INV_G[1]~6_combout\ <= NOT \G[1]~6_combout\;
\ALT_INV_G~5_combout\ <= NOT \G~5_combout\;
\ALT_INV_C~1_combout\ <= NOT \C~1_combout\;
\ALT_INV_G[1]~4_combout\ <= NOT \G[1]~4_combout\;
\ALT_INV_c_int~7_combout\ <= NOT \c_int~7_combout\;
\ALT_INV_c_int~6_combout\ <= NOT \c_int~6_combout\;
\ALT_INV_gen_blocks:1:p_bit[3]~combout\ <= NOT \gen_blocks:1:p_bit[3]~combout\;
\ALT_INV_c_int~5_combout\ <= NOT \c_int~5_combout\;
\ALT_INV_c_int~4_combout\ <= NOT \c_int~4_combout\;
\ALT_INV_c_int~3_combout\ <= NOT \c_int~3_combout\;
\ALT_INV_C~0_combout\ <= NOT \C~0_combout\;
\ALT_INV_G[0]~3_combout\ <= NOT \G[0]~3_combout\;
\ALT_INV_G[0]~2_combout\ <= NOT \G[0]~2_combout\;
\ALT_INV_G[0]~1_combout\ <= NOT \G[0]~1_combout\;
\ALT_INV_G~0_combout\ <= NOT \G~0_combout\;
\ALT_INV_gen_blocks:0:c_int[3]~1_combout\ <= NOT \gen_blocks:0:c_int[3]~1_combout\;
\ALT_INV_gen_blocks:0:c_int[3]~0_combout\ <= NOT \gen_blocks:0:c_int[3]~0_combout\;
\ALT_INV_c_int~2_combout\ <= NOT \c_int~2_combout\;
\ALT_INV_c_int~1_combout\ <= NOT \c_int~1_combout\;
\ALT_INV_c_int~0_combout\ <= NOT \c_int~0_combout\;

-- Location: IOOBUF_X47_Y0_N36
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N36
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N98
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N67
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N67
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y13_N67
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y12_N2
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y15_N98
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y13_N2
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X24_Y0_N67
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X33_Y0_N98
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X24_Y0_N98
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~10_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X30_Y0_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X30_Y0_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X31_Y4_N20
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[0]~input_o\ & ( !\Cin~input_o\ $ (\A[0]~input_o\) ) ) # ( !\B[0]~input_o\ & ( !\Cin~input_o\ $ (!\A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X30_Y0_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X31_Y4_N22
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))))) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\B[0]~input_o\ & ((!\Cin~input_o\) 
-- # (!\A[0]~input_o\))) # (\B[0]~input_o\ & (!\Cin~input_o\ & !\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X35_Y0_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X31_Y4_N4
\c_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~1_combout\ = ( \B[0]~input_o\ & ( (\Cin~input_o\ & (!\A[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) ) # ( !\B[0]~input_o\ & ( (\Cin~input_o\ & (\A[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \c_int~1_combout\);

-- Location: MLABCELL_X31_Y4_N6
\c_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~0_combout\ = ( \B[0]~input_o\ & ( (!\A[1]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\ & ((\A[0]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \c_int~0_combout\);

-- Location: MLABCELL_X31_Y4_N28
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \c_int~0_combout\ & ( !\A[2]~input_o\ $ (\B[2]~input_o\) ) ) # ( !\c_int~0_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (\c_int~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_c_int~1_combout\,
	dataf => \ALT_INV_c_int~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X43_Y0_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X39_Y0_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X31_Y4_N34
\gen_blocks:0:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:c_int[3]~0_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \gen_blocks:0:c_int[3]~0_combout\);

-- Location: MLABCELL_X31_Y4_N38
\gen_blocks:0:c_int[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:c_int[3]~1_combout\ = (\gen_blocks:0:c_int[3]~0_combout\ & ((!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100000001000001110000000100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_gen_blocks:0:c_int[3]~0_combout\,
	datad => \ALT_INV_Cin~input_o\,
	combout => \gen_blocks:0:c_int[3]~1_combout\);

-- Location: MLABCELL_X31_Y4_N32
\c_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~2_combout\ = ( \A[1]~input_o\ & ( (!\A[2]~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\)) # (\A[2]~input_o\ & ((\B[2]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \c_int~2_combout\);

-- Location: MLABCELL_X31_Y4_N0
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \c_int~2_combout\ & ( !\A[3]~input_o\ $ (\B[3]~input_o\) ) ) # ( !\c_int~2_combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (\gen_blocks:0:c_int[3]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_gen_blocks:0:c_int[3]~1_combout\,
	dataf => \ALT_INV_c_int~2_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X29_Y0_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X25_Y0_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X31_Y4_N30
\G~0\ : arriaii_lcell_comb
-- Equation(s):
-- \G~0_combout\ = (!\B[3]~input_o\ & (\A[2]~input_o\ & (\B[2]~input_o\ & \A[3]~input_o\))) # (\B[3]~input_o\ & (((\A[2]~input_o\ & \B[2]~input_o\)) # (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	combout => \G~0_combout\);

-- Location: MLABCELL_X31_Y4_N36
\G[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \G[0]~1_combout\ = (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\))) # (\A[1]~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \G[0]~1_combout\);

-- Location: MLABCELL_X31_Y4_N2
\G[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \G[0]~2_combout\ = (!\A[3]~input_o\ & (\B[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) # (\A[3]~input_o\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	combout => \G[0]~2_combout\);

-- Location: MLABCELL_X31_Y4_N24
\G[0]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \G[0]~3_combout\ = ( \G[0]~2_combout\ & ( (!\G~0_combout\ & !\G[0]~1_combout\) ) ) # ( !\G[0]~2_combout\ & ( !\G~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G~0_combout\,
	datac => \ALT_INV_G[0]~1_combout\,
	dataf => \ALT_INV_G[0]~2_combout\,
	combout => \G[0]~3_combout\);

-- Location: MLABCELL_X31_Y4_N10
\C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \C~0_combout\ = ( \G[0]~2_combout\ & ( \c_int~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_c_int~1_combout\,
	dataf => \ALT_INV_G[0]~2_combout\,
	combout => \C~0_combout\);

-- Location: LABCELL_X30_Y4_N20
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \C~0_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) # ( !\C~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (!\G[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_G[0]~3_combout\,
	dataf => \ALT_INV_C~0_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X29_Y0_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X30_Y4_N16
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \A[4]~input_o\ & ( \C~0_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \C~0_combout\ & ( !\B[4]~input_o\ $ (!\A[5]~input_o\ $ (\B[5]~input_o\)) ) ) ) # ( \A[4]~input_o\ & ( !\C~0_combout\ & ( 
-- !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (((!\G[0]~3_combout\) # (\B[4]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( !\C~0_combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (((\B[4]~input_o\ & !\G[0]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110110100110100100010110101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_G[0]~3_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_C~0_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X29_Y0_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X30_Y4_N26
\c_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~3_combout\ = ( \A[5]~input_o\ & ( ((\B[4]~input_o\ & \A[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[4]~input_o\ & (\A[4]~input_o\ & \B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \c_int~3_combout\);

-- Location: IOIBUF_X25_Y0_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X30_Y4_N24
\c_int~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~4_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) )

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
	combout => \c_int~4_combout\);

-- Location: MLABCELL_X31_Y4_N14
\c_int~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~5_combout\ = ( \G[0]~1_combout\ & ( (\c_int~4_combout\ & ((\G~0_combout\) # (\G[0]~2_combout\))) ) ) # ( !\G[0]~1_combout\ & ( (\c_int~4_combout\ & (((\G[0]~2_combout\ & \c_int~1_combout\)) # (\G~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~4_combout\,
	datab => \ALT_INV_G[0]~2_combout\,
	datac => \ALT_INV_G~0_combout\,
	datad => \ALT_INV_c_int~1_combout\,
	dataf => \ALT_INV_G[0]~1_combout\,
	combout => \c_int~5_combout\);

-- Location: LABCELL_X30_Y4_N10
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c_int~5_combout\ & ( !\A[6]~input_o\ $ (\B[6]~input_o\) ) ) # ( !\c_int~5_combout\ & ( !\A[6]~input_o\ $ (!\c_int~3_combout\ $ (\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_c_int~3_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_c_int~5_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X29_Y0_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X30_Y4_N8
\gen_blocks:1:p_bit[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:p_bit[3]~combout\ = ( \B[7]~input_o\ & ( !\A[7]~input_o\ ) ) # ( !\B[7]~input_o\ & ( \A[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \gen_blocks:1:p_bit[3]~combout\);

-- Location: LABCELL_X30_Y4_N22
\c_int~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~6_combout\ = ( \A[5]~input_o\ & ( (!\A[6]~input_o\ & (\B[5]~input_o\ & \B[6]~input_o\)) # (\A[6]~input_o\ & ((\B[6]~input_o\) # (\B[5]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\A[6]~input_o\ & \B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \c_int~6_combout\);

-- Location: LABCELL_X30_Y4_N14
\c_int~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~7_combout\ = ( \A[5]~input_o\ & ( (\B[4]~input_o\ & (\A[4]~input_o\ & !\B[5]~input_o\)) ) ) # ( !\A[5]~input_o\ & ( (\B[4]~input_o\ & (\A[4]~input_o\ & \B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \c_int~7_combout\);

-- Location: LABCELL_X30_Y4_N36
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \B[6]~input_o\ & ( \c_int~5_combout\ & ( !\gen_blocks:1:p_bit[3]~combout\ $ (((!\c_int~6_combout\ & \A[6]~input_o\))) ) ) ) # ( !\B[6]~input_o\ & ( \c_int~5_combout\ & ( !\gen_blocks:1:p_bit[3]~combout\ $ (((!\c_int~6_combout\ & 
-- !\A[6]~input_o\))) ) ) ) # ( \B[6]~input_o\ & ( !\c_int~5_combout\ & ( !\gen_blocks:1:p_bit[3]~combout\ $ (((!\c_int~6_combout\ & ((!\c_int~7_combout\) # (\A[6]~input_o\))))) ) ) ) # ( !\B[6]~input_o\ & ( !\c_int~5_combout\ & ( 
-- !\gen_blocks:1:p_bit[3]~combout\ $ (((!\c_int~6_combout\ & ((!\A[6]~input_o\) # (!\c_int~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101010011001101010011001101010011010101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:1:p_bit[3]~combout\,
	datab => \ALT_INV_c_int~6_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_c_int~7_combout\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_c_int~5_combout\,
	combout => \S~6_combout\);

-- Location: LABCELL_X30_Y4_N0
\G[1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \G[1]~4_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \G[1]~4_combout\);

-- Location: MLABCELL_X31_Y4_N12
\C~1\ : arriaii_lcell_comb
-- Equation(s):
-- \C~1_combout\ = ( \G[0]~1_combout\ & ( (\c_int~4_combout\ & (\G[1]~4_combout\ & ((\G~0_combout\) # (\G[0]~2_combout\)))) ) ) # ( !\G[0]~1_combout\ & ( (\c_int~4_combout\ & (\G[1]~4_combout\ & \G~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~4_combout\,
	datab => \ALT_INV_G[0]~2_combout\,
	datac => \ALT_INV_G[1]~4_combout\,
	datad => \ALT_INV_G~0_combout\,
	dataf => \ALT_INV_G[0]~1_combout\,
	combout => \C~1_combout\);

-- Location: LABCELL_X30_Y4_N2
\G~5\ : arriaii_lcell_comb
-- Equation(s):
-- \G~5_combout\ = ( \B[7]~input_o\ & ( ((\B[6]~input_o\ & \A[6]~input_o\)) # (\A[7]~input_o\) ) ) # ( !\B[7]~input_o\ & ( (\B[6]~input_o\ & (\A[7]~input_o\ & \A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \G~5_combout\);

-- Location: LABCELL_X30_Y4_N12
\G[1]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \G[1]~6_combout\ = ( \A[5]~input_o\ & ( ((\B[4]~input_o\ & \A[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[4]~input_o\ & (\A[4]~input_o\ & \B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \G[1]~6_combout\);

-- Location: LABCELL_X30_Y4_N4
\G[1]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \G[1]~7_combout\ = ( \G[1]~6_combout\ & ( (!\G~5_combout\ & !\G[1]~4_combout\) ) ) # ( !\G[1]~6_combout\ & ( !\G~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G~5_combout\,
	datac => \ALT_INV_G[1]~4_combout\,
	dataf => \ALT_INV_G[1]~6_combout\,
	combout => \G[1]~7_combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X30_Y4_N28
\C~2\ : arriaii_lcell_comb
-- Equation(s):
-- \C~2_combout\ = ( \c_int~1_combout\ & ( (\G[1]~4_combout\ & (\c_int~4_combout\ & \G[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[1]~4_combout\,
	datac => \ALT_INV_c_int~4_combout\,
	datad => \ALT_INV_G[0]~2_combout\,
	dataf => \ALT_INV_c_int~1_combout\,
	combout => \C~2_combout\);

-- Location: IOIBUF_X59_Y12_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X58_Y12_N0
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \A[8]~input_o\ & ( !\B[8]~input_o\ $ ((((!\G[1]~7_combout\) # (\C~2_combout\)) # (\C~1_combout\))) ) ) # ( !\A[8]~input_o\ & ( !\B[8]~input_o\ $ (((!\C~1_combout\ & (\G[1]~7_combout\ & !\C~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011110000110100101111000000101101000011110010110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~1_combout\,
	datab => \ALT_INV_G[1]~7_combout\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_C~2_combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \S~7_combout\);

-- Location: LABCELL_X58_Y12_N2
\C~3\ : arriaii_lcell_comb
-- Equation(s):
-- \C~3_combout\ = (!\C~1_combout\ & \G[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~1_combout\,
	datab => \ALT_INV_G[1]~7_combout\,
	combout => \C~3_combout\);

-- Location: IOIBUF_X59_Y12_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X58_Y12_N36
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \A[9]~input_o\ & ( \A[8]~input_o\ & ( !\B[9]~input_o\ $ ((((!\C~3_combout\) # (\C~2_combout\)) # (\B[8]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( \A[8]~input_o\ & ( !\B[9]~input_o\ $ (((!\B[8]~input_o\ & (\C~3_combout\ & 
-- !\C~2_combout\)))) ) ) ) # ( \A[9]~input_o\ & ( !\A[8]~input_o\ & ( !\B[9]~input_o\ $ (((\B[8]~input_o\ & ((!\C~3_combout\) # (\C~2_combout\))))) ) ) ) # ( !\A[9]~input_o\ & ( !\A[8]~input_o\ & ( !\B[9]~input_o\ $ (((!\B[8]~input_o\) # ((\C~3_combout\ & 
-- !\C~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101011010101101001010010111010010111100000010110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_C~3_combout\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_C~2_combout\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \S~14_combout\);

-- Location: LABCELL_X58_Y12_N8
\c_int~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~9_combout\ = ( \A[8]~input_o\ & ( (!\A[9]~input_o\ & (\B[9]~input_o\ & \B[8]~input_o\)) # (\A[9]~input_o\ & ((\B[8]~input_o\) # (\B[9]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\A[9]~input_o\ & \B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \c_int~9_combout\);

-- Location: LABCELL_X58_Y12_N10
\c_int~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~8_combout\ = ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\B[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \c_int~8_combout\);

-- Location: IOIBUF_X59_Y16_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X58_Y12_N6
\gen_blocks:2:p_bit[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[2]~combout\ = ( \B[10]~input_o\ & ( !\A[10]~input_o\ ) ) # ( !\B[10]~input_o\ & ( \A[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \gen_blocks:2:p_bit[2]~combout\);

-- Location: LABCELL_X58_Y12_N34
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \G[1]~7_combout\ & ( \gen_blocks:2:p_bit[2]~combout\ & ( (!\c_int~9_combout\ & ((!\c_int~8_combout\) # ((!\C~2_combout\ & !\C~1_combout\)))) ) ) ) # ( !\G[1]~7_combout\ & ( \gen_blocks:2:p_bit[2]~combout\ & ( (!\c_int~9_combout\ & 
-- !\c_int~8_combout\) ) ) ) # ( \G[1]~7_combout\ & ( !\gen_blocks:2:p_bit[2]~combout\ & ( ((\c_int~8_combout\ & ((\C~1_combout\) # (\C~2_combout\)))) # (\c_int~9_combout\) ) ) ) # ( !\G[1]~7_combout\ & ( !\gen_blocks:2:p_bit[2]~combout\ & ( 
-- (\c_int~8_combout\) # (\c_int~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111010101110111011110001000100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~9_combout\,
	datab => \ALT_INV_c_int~8_combout\,
	datac => \ALT_INV_C~2_combout\,
	datad => \ALT_INV_C~1_combout\,
	datae => \ALT_INV_G[1]~7_combout\,
	dataf => \ALT_INV_gen_blocks:2:p_bit[2]~combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y13_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y13_N20
\gen_blocks:2:p_bit[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[3]~combout\ = ( !\B[11]~input_o\ & ( \A[11]~input_o\ ) ) # ( \B[11]~input_o\ & ( !\A[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \gen_blocks:2:p_bit[3]~combout\);

-- Location: LABCELL_X58_Y12_N16
\c_int~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~10_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & (!\B[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & (\B[10]~input_o\ & (!\B[9]~input_o\ $ 
-- (!\A[9]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[8]~input_o\ & ( (\B[8]~input_o\ & (!\B[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[8]~input_o\ & ( (\B[8]~input_o\ & (\B[10]~input_o\ & (!\B[9]~input_o\ $ 
-- (!\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000001100000000000000000011000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \c_int~10_combout\);

-- Location: LABCELL_X58_Y12_N14
\gen_blocks:2:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[3]~0_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[9]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)) # (\B[9]~input_o\ & ((\B[8]~input_o\) # (\A[9]~input_o\)))) # (\B[10]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( 
-- \A[8]~input_o\ & ( (\B[10]~input_o\ & ((!\B[9]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)) # (\B[9]~input_o\ & ((\B[8]~input_o\) # (\A[9]~input_o\))))) ) ) ) # ( \A[10]~input_o\ & ( !\A[8]~input_o\ & ( ((\B[9]~input_o\ & \A[9]~input_o\)) # 
-- (\B[10]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( !\A[8]~input_o\ & ( (\B[9]~input_o\ & (\A[9]~input_o\ & \B[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000111110001111100000001000001110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \gen_blocks:2:c_int[3]~0_combout\);

-- Location: LABCELL_X58_Y12_N26
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \G[1]~7_combout\ & ( \gen_blocks:2:c_int[3]~0_combout\ & ( !\gen_blocks:2:p_bit[3]~combout\ ) ) ) # ( !\G[1]~7_combout\ & ( \gen_blocks:2:c_int[3]~0_combout\ & ( !\gen_blocks:2:p_bit[3]~combout\ ) ) ) # ( \G[1]~7_combout\ & ( 
-- !\gen_blocks:2:c_int[3]~0_combout\ & ( !\gen_blocks:2:p_bit[3]~combout\ $ (((!\c_int~10_combout\) # ((!\C~2_combout\ & !\C~1_combout\)))) ) ) ) # ( !\G[1]~7_combout\ & ( !\gen_blocks:2:c_int[3]~0_combout\ & ( !\gen_blocks:2:p_bit[3]~combout\ $ 
-- (!\c_int~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010101100101101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:2:p_bit[3]~combout\,
	datab => \ALT_INV_C~2_combout\,
	datac => \ALT_INV_c_int~10_combout\,
	datad => \ALT_INV_C~1_combout\,
	datae => \ALT_INV_G[1]~7_combout\,
	dataf => \ALT_INV_gen_blocks:2:c_int[3]~0_combout\,
	combout => \S~9_combout\);

-- Location: LABCELL_X58_Y12_N20
\c_int~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~11_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( (\B[8]~input_o\ & (!\B[10]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[8]~input_o\ & ( (\B[8]~input_o\ & (\B[10]~input_o\ & (!\B[9]~input_o\ $ 
-- (!\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001100000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \c_int~11_combout\);

-- Location: LABCELL_X58_Y12_N4
\G~8\ : arriaii_lcell_comb
-- Equation(s):
-- \G~8_combout\ = ( \B[11]~input_o\ & ( ((\B[10]~input_o\ & \A[10]~input_o\)) # (\A[11]~input_o\) ) ) # ( !\B[11]~input_o\ & ( (\B[10]~input_o\ & (\A[10]~input_o\ & \A[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \G~8_combout\);

-- Location: LABCELL_X58_Y12_N28
\C~6\ : arriaii_lcell_comb
-- Equation(s):
-- \C~6_combout\ = ( !\G~8_combout\ & ( \B[9]~input_o\ & ( (!\gen_blocks:2:p_bit[3]~combout\) # ((!\c_int~11_combout\ & ((!\gen_blocks:2:p_bit[2]~combout\) # (!\A[9]~input_o\)))) ) ) ) # ( !\G~8_combout\ & ( !\B[9]~input_o\ & ( 
-- (!\gen_blocks:2:p_bit[3]~combout\) # (!\c_int~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000000000000000011111010111010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:2:p_bit[3]~combout\,
	datab => \ALT_INV_gen_blocks:2:p_bit[2]~combout\,
	datac => \ALT_INV_c_int~11_combout\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_G~8_combout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \C~6_combout\);

-- Location: MLABCELL_X31_Y4_N8
\C~4\ : arriaii_lcell_comb
-- Equation(s):
-- \C~4_combout\ = ( \c_int~4_combout\ & ( (\c_int~10_combout\ & (\gen_blocks:2:p_bit[3]~combout\ & \G[1]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_int~10_combout\,
	datac => \ALT_INV_gen_blocks:2:p_bit[3]~combout\,
	datad => \ALT_INV_G[1]~4_combout\,
	dataf => \ALT_INV_c_int~4_combout\,
	combout => \C~4_combout\);

-- Location: IOIBUF_X33_Y0_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X37_Y0_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X32_Y4_N20
\gen_blocks:3:p_bit[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[0]~combout\ = !\A[12]~input_o\ $ (!\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	combout => \gen_blocks:3:p_bit[0]~combout\);

-- Location: LABCELL_X30_Y4_N30
\C~5\ : arriaii_lcell_comb
-- Equation(s):
-- \C~5_combout\ = ( \c_int~10_combout\ & ( (\gen_blocks:2:p_bit[3]~combout\ & (((\G[1]~4_combout\ & \G[1]~6_combout\)) # (\G~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000111110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[1]~4_combout\,
	datab => \ALT_INV_G[1]~6_combout\,
	datac => \ALT_INV_G~5_combout\,
	datad => \ALT_INV_gen_blocks:2:p_bit[3]~combout\,
	dataf => \ALT_INV_c_int~10_combout\,
	combout => \C~5_combout\);

-- Location: LABCELL_X30_Y4_N34
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \C~5_combout\ & ( \C~0_combout\ & ( !\gen_blocks:3:p_bit[0]~combout\ ) ) ) # ( !\C~5_combout\ & ( \C~0_combout\ & ( !\gen_blocks:3:p_bit[0]~combout\ $ (((\C~6_combout\ & !\C~4_combout\))) ) ) ) # ( \C~5_combout\ & ( !\C~0_combout\ & ( 
-- !\gen_blocks:3:p_bit[0]~combout\ ) ) ) # ( !\C~5_combout\ & ( !\C~0_combout\ & ( !\gen_blocks:3:p_bit[0]~combout\ $ (((\C~6_combout\ & ((!\C~4_combout\) # (\G[0]~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101001000101111111110000000010111011010001001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~6_combout\,
	datab => \ALT_INV_C~4_combout\,
	datac => \ALT_INV_G[0]~3_combout\,
	datad => \ALT_INV_gen_blocks:3:p_bit[0]~combout\,
	datae => \ALT_INV_C~5_combout\,
	dataf => \ALT_INV_C~0_combout\,
	combout => \S~10_combout\);

-- Location: MLABCELL_X31_Y4_N18
\C~7\ : arriaii_lcell_comb
-- Equation(s):
-- \C~7_combout\ = ( \gen_blocks:2:p_bit[3]~combout\ & ( \c_int~4_combout\ & ( (\c_int~1_combout\ & (\G[0]~2_combout\ & (\c_int~10_combout\ & \G[1]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~1_combout\,
	datab => \ALT_INV_G[0]~2_combout\,
	datac => \ALT_INV_c_int~10_combout\,
	datad => \ALT_INV_G[1]~4_combout\,
	datae => \ALT_INV_gen_blocks:2:p_bit[3]~combout\,
	dataf => \ALT_INV_c_int~4_combout\,
	combout => \C~7_combout\);

-- Location: IOIBUF_X32_Y0_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X30_Y4_N6
\C~8\ : arriaii_lcell_comb
-- Equation(s):
-- \C~8_combout\ = ( \C~4_combout\ & ( (\C~6_combout\ & (!\C~5_combout\ & \G[0]~3_combout\)) ) ) # ( !\C~4_combout\ & ( (\C~6_combout\ & !\C~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~6_combout\,
	datac => \ALT_INV_C~5_combout\,
	datad => \ALT_INV_G[0]~3_combout\,
	dataf => \ALT_INV_C~4_combout\,
	combout => \C~8_combout\);

-- Location: IOIBUF_X35_Y0_N94
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X32_Y4_N36
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \C~8_combout\ & ( \B[13]~input_o\ & ( !\A[13]~input_o\ $ (((!\A[12]~input_o\ & (\C~7_combout\ & \B[12]~input_o\)) # (\A[12]~input_o\ & ((\B[12]~input_o\) # (\C~7_combout\))))) ) ) ) # ( !\C~8_combout\ & ( \B[13]~input_o\ & ( 
-- !\A[13]~input_o\ $ (((\B[12]~input_o\) # (\A[12]~input_o\))) ) ) ) # ( \C~8_combout\ & ( !\B[13]~input_o\ & ( !\A[13]~input_o\ $ (((!\A[12]~input_o\ & ((!\C~7_combout\) # (!\B[12]~input_o\))) # (\A[12]~input_o\ & (!\C~7_combout\ & !\B[12]~input_o\)))) ) ) 
-- ) # ( !\C~8_combout\ & ( !\B[13]~input_o\ & ( !\A[13]~input_o\ $ (((!\A[12]~input_o\ & !\B[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000000111100111100010100101000011111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_C~7_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_C~8_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \S~13_combout\);

-- Location: MLABCELL_X31_Y4_N26
\c_int~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~13_combout\ = ( \B[13]~input_o\ & ( (\gen_blocks:3:p_bit[0]~combout\ & !\A[13]~input_o\) ) ) # ( !\B[13]~input_o\ & ( (\gen_blocks:3:p_bit[0]~combout\ & \A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:3:p_bit[0]~combout\,
	datac => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \c_int~13_combout\);

-- Location: LABCELL_X32_Y4_N22
\c_int~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~12_combout\ = ( \B[13]~input_o\ & ( ((\A[12]~input_o\ & \B[12]~input_o\)) # (\A[13]~input_o\) ) ) # ( !\B[13]~input_o\ & ( (\A[12]~input_o\ & (\B[12]~input_o\ & \A[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \c_int~12_combout\);

-- Location: IOIBUF_X37_Y0_N32
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X32_Y4_N6
\gen_blocks:3:p_bit[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[2]~combout\ = !\A[14]~input_o\ $ (!\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	combout => \gen_blocks:3:p_bit[2]~combout\);

-- Location: LABCELL_X32_Y4_N8
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \gen_blocks:3:p_bit[2]~combout\ & ( (!\c_int~12_combout\ & ((!\c_int~13_combout\) # ((\C~8_combout\ & !\C~7_combout\)))) ) ) # ( !\gen_blocks:3:p_bit[2]~combout\ & ( ((\c_int~13_combout\ & ((!\C~8_combout\) # (\C~7_combout\)))) # 
-- (\c_int~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101111111111000010111111111111110100000000001111010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~8_combout\,
	datab => \ALT_INV_C~7_combout\,
	datac => \ALT_INV_c_int~13_combout\,
	datad => \ALT_INV_c_int~12_combout\,
	dataf => \ALT_INV_gen_blocks:3:p_bit[2]~combout\,
	combout => \S~11_combout\);

-- Location: LABCELL_X32_Y4_N12
\gen_blocks:3:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[3]~0_combout\ = ( \A[13]~input_o\ & ( \A[14]~input_o\ & ( (((\A[12]~input_o\ & \B[12]~input_o\)) # (\B[14]~input_o\)) # (\B[13]~input_o\) ) ) ) # ( !\A[13]~input_o\ & ( \A[14]~input_o\ & ( ((\A[12]~input_o\ & (\B[12]~input_o\ & 
-- \B[13]~input_o\))) # (\B[14]~input_o\) ) ) ) # ( \A[13]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (((\A[12]~input_o\ & \B[12]~input_o\)) # (\B[13]~input_o\))) ) ) ) # ( !\A[13]~input_o\ & ( !\A[14]~input_o\ & ( (\A[12]~input_o\ & 
-- (\B[12]~input_o\ & (\B[13]~input_o\ & \B[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000001111100000001111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \gen_blocks:3:c_int[3]~0_combout\);

-- Location: IOIBUF_X33_Y0_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X32_Y4_N10
\gen_blocks:3:p_bit[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[3]~combout\ = ( \A[15]~input_o\ & ( !\B[15]~input_o\ ) ) # ( !\A[15]~input_o\ & ( \B[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \gen_blocks:3:p_bit[3]~combout\);

-- Location: LABCELL_X32_Y4_N16
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \C~8_combout\ & ( \gen_blocks:3:p_bit[3]~combout\ & ( (!\gen_blocks:3:c_int[3]~0_combout\ & ((!\C~7_combout\) # ((!\c_int~13_combout\) # (!\gen_blocks:3:p_bit[2]~combout\)))) ) ) ) # ( !\C~8_combout\ & ( \gen_blocks:3:p_bit[3]~combout\ 
-- & ( (!\gen_blocks:3:c_int[3]~0_combout\ & ((!\c_int~13_combout\) # (!\gen_blocks:3:p_bit[2]~combout\))) ) ) ) # ( \C~8_combout\ & ( !\gen_blocks:3:p_bit[3]~combout\ & ( ((\C~7_combout\ & (\c_int~13_combout\ & \gen_blocks:3:p_bit[2]~combout\))) # 
-- (\gen_blocks:3:c_int[3]~0_combout\) ) ) ) # ( !\C~8_combout\ & ( !\gen_blocks:3:p_bit[3]~combout\ & ( ((\c_int~13_combout\ & \gen_blocks:3:p_bit[2]~combout\)) # (\gen_blocks:3:c_int[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101011110101010101000001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:3:c_int[3]~0_combout\,
	datab => \ALT_INV_C~7_combout\,
	datac => \ALT_INV_c_int~13_combout\,
	datad => \ALT_INV_gen_blocks:3:p_bit[2]~combout\,
	datae => \ALT_INV_C~8_combout\,
	dataf => \ALT_INV_gen_blocks:3:p_bit[3]~combout\,
	combout => \S~12_combout\);

-- Location: LABCELL_X32_Y4_N4
\G~9\ : arriaii_lcell_comb
-- Equation(s):
-- \G~9_combout\ = (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[14]~input_o\ & \B[15]~input_o\))) # (\A[15]~input_o\ & (((\A[14]~input_o\ & \B[14]~input_o\)) # (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	combout => \G~9_combout\);

-- Location: LABCELL_X32_Y4_N32
\c_int~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~14_combout\ = ( \A[13]~input_o\ & ( \A[14]~input_o\ & ( (\A[12]~input_o\ & (\B[12]~input_o\ & (!\B[13]~input_o\ & !\B[14]~input_o\))) ) ) ) # ( !\A[13]~input_o\ & ( \A[14]~input_o\ & ( (\A[12]~input_o\ & (\B[12]~input_o\ & (\B[13]~input_o\ & 
-- !\B[14]~input_o\))) ) ) ) # ( \A[13]~input_o\ & ( !\A[14]~input_o\ & ( (\A[12]~input_o\ & (\B[12]~input_o\ & (!\B[13]~input_o\ & \B[14]~input_o\))) ) ) ) # ( !\A[13]~input_o\ & ( !\A[14]~input_o\ & ( (\A[12]~input_o\ & (\B[12]~input_o\ & (\B[13]~input_o\ 
-- & \B[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000001000000000001000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \c_int~14_combout\);

-- Location: LABCELL_X32_Y4_N0
\C~9\ : arriaii_lcell_comb
-- Equation(s):
-- \C~9_combout\ = ( \A[13]~input_o\ & ( \B[13]~input_o\ & ( (!\G~9_combout\ & ((!\gen_blocks:3:p_bit[3]~combout\) # ((!\gen_blocks:3:p_bit[2]~combout\ & !\c_int~14_combout\)))) ) ) ) # ( !\A[13]~input_o\ & ( \B[13]~input_o\ & ( (!\G~9_combout\ & 
-- ((!\c_int~14_combout\) # (!\gen_blocks:3:p_bit[3]~combout\))) ) ) ) # ( \A[13]~input_o\ & ( !\B[13]~input_o\ & ( (!\G~9_combout\ & ((!\c_int~14_combout\) # (!\gen_blocks:3:p_bit[3]~combout\))) ) ) ) # ( !\A[13]~input_o\ & ( !\B[13]~input_o\ & ( 
-- (!\G~9_combout\ & ((!\c_int~14_combout\) # (!\gen_blocks:3:p_bit[3]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010101010101000001010101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G~9_combout\,
	datab => \ALT_INV_gen_blocks:3:p_bit[2]~combout\,
	datac => \ALT_INV_c_int~14_combout\,
	datad => \ALT_INV_gen_blocks:3:p_bit[3]~combout\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \C~9_combout\);

-- Location: LABCELL_X32_Y4_N24
\C~10\ : arriaii_lcell_comb
-- Equation(s):
-- \C~10_combout\ = ( \C~8_combout\ & ( \gen_blocks:3:p_bit[3]~combout\ & ( (!\C~9_combout\) # ((\C~7_combout\ & (\c_int~13_combout\ & \gen_blocks:3:p_bit[2]~combout\))) ) ) ) # ( !\C~8_combout\ & ( \gen_blocks:3:p_bit[3]~combout\ & ( (!\C~9_combout\) # 
-- ((\c_int~13_combout\ & \gen_blocks:3:p_bit[2]~combout\)) ) ) ) # ( \C~8_combout\ & ( !\gen_blocks:3:p_bit[3]~combout\ & ( !\C~9_combout\ ) ) ) # ( !\C~8_combout\ & ( !\gen_blocks:3:p_bit[3]~combout\ & ( !\C~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101011111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~9_combout\,
	datab => \ALT_INV_C~7_combout\,
	datac => \ALT_INV_c_int~13_combout\,
	datad => \ALT_INV_gen_blocks:3:p_bit[2]~combout\,
	datae => \ALT_INV_C~8_combout\,
	dataf => \ALT_INV_gen_blocks:3:p_bit[3]~combout\,
	combout => \C~10_combout\);

-- Location: LABCELL_X32_Y4_N28
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \C~8_combout\ & ( \gen_blocks:3:p_bit[3]~combout\ & ( (!\C~9_combout\ & (!\C~7_combout\)) # (\C~9_combout\ & (\C~7_combout\ & ((!\c_int~13_combout\) # (!\gen_blocks:3:p_bit[2]~combout\)))) ) ) ) # ( !\C~8_combout\ & ( 
-- \gen_blocks:3:p_bit[3]~combout\ & ( (\C~9_combout\ & ((!\c_int~13_combout\) # (!\gen_blocks:3:p_bit[2]~combout\))) ) ) ) # ( \C~8_combout\ & ( !\gen_blocks:3:p_bit[3]~combout\ & ( !\C~9_combout\ $ (\C~7_combout\) ) ) ) # ( !\C~8_combout\ & ( 
-- !\gen_blocks:3:p_bit[3]~combout\ & ( \C~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101100110011001100101010101010100001001100110011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~9_combout\,
	datab => \ALT_INV_C~7_combout\,
	datac => \ALT_INV_c_int~13_combout\,
	datad => \ALT_INV_gen_blocks:3:p_bit[2]~combout\,
	datae => \ALT_INV_C~8_combout\,
	dataf => \ALT_INV_gen_blocks:3:p_bit[3]~combout\,
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


