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

-- DATE "04/08/2026 13:24:50"

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
-- S[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[1]~combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c_int~0_combout\ : std_logic;
SIGNAL \c_int~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[3]~combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \C~27_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \G[0]~1_combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[2]~combout\ : std_logic;
SIGNAL \G[0]~2_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \c_int~3_combout\ : std_logic;
SIGNAL \gen_blocks:1:p_bit[1]~combout\ : std_logic;
SIGNAL \gen_blocks:1:p_bit[0]~combout\ : std_logic;
SIGNAL \c_int~2_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \gen_blocks:1:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:c_int[3]~1_combout\ : std_logic;
SIGNAL \c_int~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \G[1]~5_combout\ : std_logic;
SIGNAL \G[1]~4_combout\ : std_logic;
SIGNAL \G~3_combout\ : std_logic;
SIGNAL \G[1]~6_combout\ : std_logic;
SIGNAL \C~16_combout\ : std_logic;
SIGNAL \C~17_combout\ : std_logic;
SIGNAL \C~18_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \gen_blocks:2:c_int[1]~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~6_combout\ : std_logic;
SIGNAL \c_int~5_combout\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[1]~combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \G~7_combout\ : std_logic;
SIGNAL \gen_blocks:2:c_int[3]~0_combout\ : std_logic;
SIGNAL \c_int~7_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \G~8_combout\ : std_logic;
SIGNAL \C~19_combout\ : std_logic;
SIGNAL \C~21_combout\ : std_logic;
SIGNAL \G~9_combout\ : std_logic;
SIGNAL \C~22_combout\ : std_logic;
SIGNAL \C~23_combout\ : std_logic;
SIGNAL \C~20_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:c_int[1]~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \c_int~8_combout\ : std_logic;
SIGNAL \gen_blocks:3:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:c_int[2]~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:c_int[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:3:c_int[3]~2_combout\ : std_logic;
SIGNAL \c_int~9_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \G[3]~11_combout\ : std_logic;
SIGNAL \C~24_combout\ : std_logic;
SIGNAL \G~10_combout\ : std_logic;
SIGNAL \G[3]~12_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \C~25_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \gen_blocks:4:c_int[1]~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \c_int~10_combout\ : std_logic;
SIGNAL \c_int~11_combout\ : std_logic;
SIGNAL \c_int~12_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \gen_blocks:4:c_int[3]~3_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:p_bit[3]~combout\ : std_logic;
SIGNAL \gen_blocks:4:p_bit[2]~combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \G~13_combout\ : std_logic;
SIGNAL \G[4]~14_combout\ : std_logic;
SIGNAL \G[4]~15_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \C~28_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \c_int~14_combout\ : std_logic;
SIGNAL \c_int~15_combout\ : std_logic;
SIGNAL \c_int~13_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \gen_blocks:5:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~16_combout\ : std_logic;
SIGNAL \c_int~17_combout\ : std_logic;
SIGNAL \gen_blocks:5:c_int[3]~combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \gen_blocks:5:p_bit[3]~combout\ : std_logic;
SIGNAL \C~29_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \G[5]~17_combout\ : std_logic;
SIGNAL \G~16_combout\ : std_logic;
SIGNAL \G[5]~18_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \c_int~18_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \c_int~19_combout\ : std_logic;
SIGNAL \c_int~20_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:p_bit[3]~combout\ : std_logic;
SIGNAL \gen_blocks:6:p_bit[2]~combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \C~30_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \G[6]~20_combout\ : std_logic;
SIGNAL \G~19_combout\ : std_logic;
SIGNAL \G[6]~21_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \gen_blocks:7:c_int[1]~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \c_int~21_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:p_bit[1]~combout\ : std_logic;
SIGNAL \c_int~22_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \c_int~23_combout\ : std_logic;
SIGNAL \gen_blocks:7:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~24_combout\ : std_logic;
SIGNAL \gen_blocks:7:c_int[3]~combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \C~26_combout\ : std_logic;
SIGNAL \C~31_combout\ : std_logic;
SIGNAL \C~32_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL C : std_logic_vector(8 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X56_Y0_N2
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~32_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X58_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X60_Y4_N24
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X54_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X60_Y4_N18
\gen_blocks:0:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[1]~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \gen_blocks:0:p_bit[1]~combout\);

-- Location: LCCOMB_X60_Y4_N4
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \gen_blocks:0:p_bit[1]~combout\ $ (((\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \gen_blocks:0:p_bit[1]~combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X60_Y0_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X60_Y4_N14
\c_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \c_int~0_combout\);

-- Location: LCCOMB_X60_Y4_N8
\c_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~1_combout\ = (\Cin~input_o\ & (\gen_blocks:0:p_bit[1]~combout\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \gen_blocks:0:p_bit[1]~combout\,
	combout => \c_int~1_combout\);

-- Location: IOIBUF_X62_Y0_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X60_Y4_N28
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (((\c_int~0_combout\) # (\c_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \c_int~0_combout\,
	datac => \c_int~1_combout\,
	datad => \B[2]~input_o\,
	combout => \S~47_combout\);

-- Location: LCCOMB_X60_Y4_N22
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~24_combout\);

-- Location: LCCOMB_X60_Y4_N16
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = (\S~24_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\S~24_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~24_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X62_Y0_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X60_Y4_N20
\gen_blocks:0:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[3]~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \gen_blocks:0:p_bit[3]~combout\);

-- Location: LCCOMB_X60_Y4_N26
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \gen_blocks:0:p_bit[3]~combout\ $ (((\B[2]~input_o\ & ((\S~25_combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\S~25_combout\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \S~25_combout\,
	datac => \A[2]~input_o\,
	datad => \gen_blocks:0:p_bit[3]~combout\,
	combout => \S~26_combout\);

-- Location: LCCOMB_X60_Y4_N30
\C~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~27_combout\ = (\gen_blocks:0:p_bit[3]~combout\ & (\c_int~1_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \gen_blocks:0:p_bit[3]~combout\,
	datac => \c_int~1_combout\,
	datad => \B[2]~input_o\,
	combout => \C~27_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X60_Y4_N6
\G[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[0]~1_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \G[0]~1_combout\);

-- Location: LCCOMB_X60_Y4_N12
\G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G~0_combout\);

-- Location: LCCOMB_X60_Y4_N2
\gen_blocks:0:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[2]~combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \gen_blocks:0:p_bit[2]~combout\);

-- Location: LCCOMB_X60_Y4_N0
\G[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[0]~2_combout\ = (\G~0_combout\) # ((\G[0]~1_combout\ & (\gen_blocks:0:p_bit[3]~combout\ & \gen_blocks:0:p_bit[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[0]~1_combout\,
	datab => \gen_blocks:0:p_bit[3]~combout\,
	datac => \G~0_combout\,
	datad => \gen_blocks:0:p_bit[2]~combout\,
	combout => \G[0]~2_combout\);

-- Location: LCCOMB_X65_Y72_N20
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (((\C~27_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~27_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \G[0]~2_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X65_Y72_N26
\gen_blocks:1:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[1]~0_combout\ = (\B[4]~input_o\ & ((\C~27_combout\) # ((\A[4]~input_o\) # (\G[0]~2_combout\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\C~27_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~27_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \G[0]~2_combout\,
	combout => \gen_blocks:1:c_int[1]~0_combout\);

-- Location: LCCOMB_X65_Y72_N6
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\gen_blocks:1:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \gen_blocks:1:c_int[1]~0_combout\,
	combout => \S~49_combout\);

-- Location: LCCOMB_X65_Y72_N30
\c_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~3_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \c_int~3_combout\);

-- Location: LCCOMB_X63_Y72_N24
\gen_blocks:1:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:p_bit[1]~combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \gen_blocks:1:p_bit[1]~combout\);

-- Location: LCCOMB_X65_Y72_N8
\gen_blocks:1:p_bit[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:p_bit[0]~combout\ = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \gen_blocks:1:p_bit[0]~combout\);

-- Location: LCCOMB_X65_Y72_N28
\c_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~2_combout\ = (\gen_blocks:1:p_bit[1]~combout\ & (\gen_blocks:1:p_bit[0]~combout\ & ((\C~27_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~27_combout\,
	datab => \gen_blocks:1:p_bit[1]~combout\,
	datac => \gen_blocks:1:p_bit[0]~combout\,
	datad => \G[0]~2_combout\,
	combout => \c_int~2_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X65_Y72_N0
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (((\c_int~3_combout\) # (\c_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~3_combout\,
	datab => \c_int~2_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X65_Y72_N12
\gen_blocks:1:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[3]~0_combout\ = (\B[4]~input_o\ & ((\C~27_combout\) # ((\A[4]~input_o\) # (\G[0]~2_combout\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\C~27_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~27_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \G[0]~2_combout\,
	combout => \gen_blocks:1:c_int[3]~0_combout\);

-- Location: LCCOMB_X65_Y72_N22
\gen_blocks:1:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[3]~1_combout\ = (\gen_blocks:1:c_int[3]~0_combout\ & (\gen_blocks:1:p_bit[1]~combout\ & (\B[6]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:c_int[3]~0_combout\,
	datab => \gen_blocks:1:p_bit[1]~combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \gen_blocks:1:c_int[3]~1_combout\);

-- Location: LCCOMB_X65_Y72_N2
\c_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~4_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\A[5]~input_o\ & \B[5]~input_o\)))) # (!\B[6]~input_o\ & (\A[5]~input_o\ & (\B[5]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \c_int~4_combout\);

-- Location: IOIBUF_X62_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X65_Y72_N16
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\gen_blocks:1:c_int[3]~1_combout\) # (\c_int~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:c_int[3]~1_combout\,
	datab => \c_int~4_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X65_Y72_N14
\G[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~5_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \G[1]~5_combout\);

-- Location: LCCOMB_X65_Y72_N4
\G[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~4_combout\ = (\B[7]~input_o\ & (!\A[7]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \G[1]~4_combout\);

-- Location: LCCOMB_X65_Y72_N18
\G~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~3_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\B[6]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \G~3_combout\);

-- Location: LCCOMB_X65_Y72_N24
\G[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~6_combout\ = (\G~3_combout\) # ((\G[1]~5_combout\ & \G[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G[1]~5_combout\,
	datac => \G[1]~4_combout\,
	datad => \G~3_combout\,
	combout => \G[1]~6_combout\);

-- Location: LCCOMB_X65_Y72_N10
\C~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~16_combout\ = (\gen_blocks:1:p_bit[0]~combout\ & (\G[1]~4_combout\ & (\A[5]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \gen_blocks:1:p_bit[0]~combout\,
	datac => \G[1]~4_combout\,
	datad => \B[5]~input_o\,
	combout => \C~16_combout\);

-- Location: LCCOMB_X81_Y72_N8
\C~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~17_combout\ = (\G[1]~6_combout\) # ((\G[0]~2_combout\ & \C~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[0]~2_combout\,
	datab => \G[1]~6_combout\,
	datad => \C~16_combout\,
	combout => \C~17_combout\);

-- Location: LCCOMB_X60_Y4_N10
\C~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~18_combout\ = (\C~16_combout\ & (\gen_blocks:0:p_bit[3]~combout\ & (\c_int~1_combout\ & \gen_blocks:0:p_bit[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~16_combout\,
	datab => \gen_blocks:0:p_bit[3]~combout\,
	datac => \c_int~1_combout\,
	datad => \gen_blocks:0:p_bit[2]~combout\,
	combout => \C~18_combout\);

-- Location: IOIBUF_X85_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X82_Y72_N8
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\C~17_combout\) # (\C~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~17_combout\,
	datab => \C~18_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X82_Y72_N28
\gen_blocks:2:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[1]~0_combout\ = (\A[8]~input_o\ & ((\C~17_combout\) # ((\C~18_combout\) # (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & ((\C~17_combout\) # (\C~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~17_combout\,
	datab => \C~18_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \gen_blocks:2:c_int[1]~0_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X82_Y72_N6
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = \gen_blocks:2:c_int[1]~0_combout\ $ (\B[9]~input_o\ $ (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:2:c_int[1]~0_combout\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X83_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X82_Y72_N10
\gen_blocks:2:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[2]~combout\ = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \gen_blocks:2:p_bit[2]~combout\);

-- Location: LCCOMB_X82_Y72_N16
\c_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~6_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \c_int~6_combout\);

-- Location: LCCOMB_X82_Y72_N22
\c_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~5_combout\ = (\C~17_combout\ & ((\A[8]~input_o\ $ (\B[8]~input_o\)))) # (!\C~17_combout\ & (\C~18_combout\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~17_combout\,
	datab => \C~18_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \c_int~5_combout\);

-- Location: LCCOMB_X82_Y72_N2
\gen_blocks:2:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[1]~combout\ = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \gen_blocks:2:p_bit[1]~combout\);

-- Location: LCCOMB_X82_Y72_N20
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \gen_blocks:2:p_bit[2]~combout\ $ (((\c_int~6_combout\) # ((\c_int~5_combout\ & \gen_blocks:2:p_bit[1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:p_bit[2]~combout\,
	datab => \c_int~6_combout\,
	datac => \c_int~5_combout\,
	datad => \gen_blocks:2:p_bit[1]~combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X82_Y72_N0
\G~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~7_combout\ = (\A[8]~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \G~7_combout\);

-- Location: LCCOMB_X82_Y72_N26
\gen_blocks:2:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[3]~0_combout\ = (\gen_blocks:2:p_bit[2]~combout\ & (\gen_blocks:2:p_bit[1]~combout\ & ((\G~7_combout\) # (\c_int~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:p_bit[2]~combout\,
	datab => \G~7_combout\,
	datac => \c_int~5_combout\,
	datad => \gen_blocks:2:p_bit[1]~combout\,
	combout => \gen_blocks:2:c_int[3]~0_combout\);

-- Location: LCCOMB_X82_Y72_N14
\c_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~7_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # ((\B[9]~input_o\ & \A[9]~input_o\)))) # (!\A[10]~input_o\ & (\B[9]~input_o\ & (\B[10]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[9]~input_o\,
	combout => \c_int~7_combout\);

-- Location: IOIBUF_X85_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X82_Y72_N12
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\gen_blocks:2:c_int[3]~0_combout\) # (\c_int~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:c_int[3]~0_combout\,
	datab => \c_int~7_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X115_Y65_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X82_Y72_N30
\G~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~8_combout\ = (\A[11]~input_o\ & (!\B[11]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \G~8_combout\);

-- Location: LCCOMB_X82_Y72_N24
\C~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~19_combout\ = (\G~8_combout\ & (\gen_blocks:2:p_bit[1]~combout\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~8_combout\,
	datab => \gen_blocks:2:p_bit[1]~combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \C~19_combout\);

-- Location: LCCOMB_X81_Y72_N12
\C~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~21_combout\ = (\C~19_combout\ & ((\G[1]~6_combout\) # ((\C~16_combout\ & \G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~16_combout\,
	datab => \G[1]~6_combout\,
	datac => \G[0]~2_combout\,
	datad => \C~19_combout\,
	combout => \C~21_combout\);

-- Location: LCCOMB_X82_Y72_N18
\G~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~9_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\A[11]~input_o\ & (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \G~9_combout\);

-- Location: LCCOMB_X82_Y72_N4
\C~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~22_combout\ = (\G~8_combout\ & ((\B[9]~input_o\ & ((\G~7_combout\) # (\A[9]~input_o\))) # (!\B[9]~input_o\ & (\G~7_combout\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \G~7_combout\,
	datac => \G~8_combout\,
	datad => \A[9]~input_o\,
	combout => \C~22_combout\);

-- Location: LCCOMB_X81_Y72_N6
\C~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~23_combout\ = (\C~21_combout\) # ((\G~9_combout\) # (\C~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~21_combout\,
	datab => \G~9_combout\,
	datad => \C~22_combout\,
	combout => \C~23_combout\);

-- Location: LCCOMB_X81_Y72_N10
\C~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~20_combout\ = (\C~19_combout\ & (\C~27_combout\ & \C~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~19_combout\,
	datac => \C~27_combout\,
	datad => \C~16_combout\,
	combout => \C~20_combout\);

-- Location: IOIBUF_X115_Y69_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X114_Y69_N8
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\C~23_combout\) # (\C~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \C~23_combout\,
	datac => \C~20_combout\,
	datad => \A[12]~input_o\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X115_Y68_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X114_Y69_N26
\gen_blocks:3:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[1]~0_combout\ = (\B[12]~input_o\ & ((\C~23_combout\) # ((\C~20_combout\) # (\A[12]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\C~23_combout\) # (\C~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \C~23_combout\,
	datac => \C~20_combout\,
	datad => \A[12]~input_o\,
	combout => \gen_blocks:3:c_int[1]~0_combout\);

-- Location: IOIBUF_X115_Y69_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X114_Y69_N20
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \A[13]~input_o\ $ (\gen_blocks:3:c_int[1]~0_combout\ $ (\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \gen_blocks:3:c_int[1]~0_combout\,
	datad => \B[13]~input_o\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X114_Y69_N6
\c_int~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~8_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \c_int~8_combout\);

-- Location: LCCOMB_X114_Y69_N0
\gen_blocks:3:c_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[3]~0_combout\ = (\C~23_combout\ & (\B[12]~input_o\ $ (((\A[12]~input_o\))))) # (!\C~23_combout\ & (\C~20_combout\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \C~23_combout\,
	datac => \C~20_combout\,
	datad => \A[12]~input_o\,
	combout => \gen_blocks:3:c_int[3]~0_combout\);

-- Location: LCCOMB_X114_Y69_N2
\gen_blocks:3:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[2]~combout\ = (\c_int~8_combout\) # ((\gen_blocks:3:c_int[3]~0_combout\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~8_combout\,
	datab => \gen_blocks:3:c_int[3]~0_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \gen_blocks:3:c_int[2]~combout\);

-- Location: IOIBUF_X115_Y68_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X114_Y69_N4
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \gen_blocks:3:c_int[2]~combout\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:3:c_int[2]~combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X115_Y67_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X114_Y69_N16
\gen_blocks:3:c_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[3]~1_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[14]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[14]~input_o\,
	combout => \gen_blocks:3:c_int[3]~1_combout\);

-- Location: LCCOMB_X114_Y69_N18
\gen_blocks:3:c_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[3]~2_combout\ = (\gen_blocks:3:c_int[3]~1_combout\ & ((\gen_blocks:3:c_int[3]~0_combout\) # ((\B[12]~input_o\ & \A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:c_int[3]~0_combout\,
	datab => \gen_blocks:3:c_int[3]~1_combout\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \gen_blocks:3:c_int[3]~2_combout\);

-- Location: LCCOMB_X114_Y69_N30
\c_int~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~9_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[13]~input_o\ & (\A[13]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[14]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[14]~input_o\,
	combout => \c_int~9_combout\);

-- Location: IOIBUF_X115_Y69_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X114_Y69_N28
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (((\gen_blocks:3:c_int[3]~2_combout\) # (\c_int~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \gen_blocks:3:c_int[3]~2_combout\,
	datac => \c_int~9_combout\,
	datad => \A[15]~input_o\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X114_Y69_N12
\G[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[3]~11_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \G[3]~11_combout\);

-- Location: LCCOMB_X114_Y69_N14
\C~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~24_combout\ = (\B[15]~input_o\ & (!\A[15]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[15]~input_o\,
	combout => \C~24_combout\);

-- Location: LCCOMB_X114_Y69_N10
\G~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~10_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\B[15]~input_o\ & (\B[14]~input_o\ & (\A[14]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[15]~input_o\,
	combout => \G~10_combout\);

-- Location: LCCOMB_X114_Y69_N22
\G[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[3]~12_combout\ = (\G~10_combout\) # ((\G[3]~11_combout\ & \C~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[3]~11_combout\,
	datac => \C~24_combout\,
	datad => \G~10_combout\,
	combout => \G[3]~12_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X114_Y69_N24
\C~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~25_combout\ = (\gen_blocks:3:c_int[3]~0_combout\ & (\C~24_combout\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:c_int[3]~0_combout\,
	datab => \C~24_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \C~25_combout\);

-- Location: LCCOMB_X73_Y69_N16
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\G[3]~12_combout\) # (\C~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[3]~12_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \C~25_combout\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X73_Y69_N18
\gen_blocks:4:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:c_int[1]~0_combout\ = (\A[16]~input_o\ & ((\G[3]~12_combout\) # ((\B[16]~input_o\) # (\C~25_combout\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & ((\G[3]~12_combout\) # (\C~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[3]~12_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \C~25_combout\,
	combout => \gen_blocks:4:c_int[1]~0_combout\);

-- Location: IOIBUF_X69_Y73_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X73_Y69_N12
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \gen_blocks:4:c_int[1]~0_combout\ $ (\B[17]~input_o\ $ (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:4:c_int[1]~0_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X69_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X73_Y69_N14
\c_int~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~10_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[16]~input_o\ & (\B[16]~input_o\ & \A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[17]~input_o\,
	combout => \c_int~10_combout\);

-- Location: LCCOMB_X73_Y69_N24
\c_int~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~11_combout\ = (\B[17]~input_o\ & (!\A[17]~input_o\ & (\A[16]~input_o\ $ (\B[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\A[16]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[17]~input_o\,
	combout => \c_int~11_combout\);

-- Location: LCCOMB_X73_Y69_N26
\c_int~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~12_combout\ = (\c_int~11_combout\ & ((\G[3]~12_combout\) # (\C~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_int~11_combout\,
	datac => \G[3]~12_combout\,
	datad => \C~25_combout\,
	combout => \c_int~12_combout\);

-- Location: IOIBUF_X81_Y73_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X73_Y69_N2
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (((\c_int~10_combout\) # (\c_int~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \c_int~10_combout\,
	datac => \c_int~12_combout\,
	datad => \B[18]~input_o\,
	combout => \S~51_combout\);

-- Location: LCCOMB_X73_Y69_N22
\gen_blocks:4:c_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:c_int[3]~3_combout\ = (\A[18]~input_o\ & ((\c_int~10_combout\) # (\B[18]~input_o\))) # (!\A[18]~input_o\ & (\c_int~10_combout\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \c_int~10_combout\,
	datad => \B[18]~input_o\,
	combout => \gen_blocks:4:c_int[3]~3_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X73_Y69_N30
\gen_blocks:4:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:p_bit[3]~combout\ = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \gen_blocks:4:p_bit[3]~combout\);

-- Location: LCCOMB_X73_Y69_N20
\gen_blocks:4:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:p_bit[2]~combout\ = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \gen_blocks:4:p_bit[2]~combout\);

-- Location: LCCOMB_X73_Y69_N8
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = \gen_blocks:4:p_bit[3]~combout\ $ (((\gen_blocks:4:c_int[3]~3_combout\) # ((\c_int~12_combout\ & \gen_blocks:4:p_bit[2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:c_int[3]~3_combout\,
	datab => \gen_blocks:4:p_bit[3]~combout\,
	datac => \c_int~12_combout\,
	datad => \gen_blocks:4:p_bit[2]~combout\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X73_Y69_N10
\G~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~13_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[18]~input_o\ & (\A[19]~input_o\ & \B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \B[18]~input_o\,
	combout => \G~13_combout\);

-- Location: LCCOMB_X73_Y69_N28
\G[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[4]~14_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\B[17]~input_o\ & (\A[16]~input_o\ & (\B[16]~input_o\ & \A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[17]~input_o\,
	combout => \G[4]~14_combout\);

-- Location: LCCOMB_X73_Y69_N6
\G[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[4]~15_combout\ = (\G~13_combout\) # ((\G[4]~14_combout\ & (\gen_blocks:4:p_bit[3]~combout\ & \gen_blocks:4:p_bit[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~13_combout\,
	datab => \G[4]~14_combout\,
	datac => \gen_blocks:4:p_bit[3]~combout\,
	datad => \gen_blocks:4:p_bit[2]~combout\,
	combout => \G[4]~15_combout\);

-- Location: IOIBUF_X72_Y0_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X73_Y69_N4
\C~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~28_combout\ = (\gen_blocks:4:p_bit[3]~combout\ & (\c_int~12_combout\ & (\A[18]~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:p_bit[3]~combout\,
	datab => \A[18]~input_o\,
	datac => \c_int~12_combout\,
	datad => \B[18]~input_o\,
	combout => \C~28_combout\);

-- Location: IOIBUF_X72_Y0_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X73_Y69_N0
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\ $ (((\G[4]~15_combout\) # (\C~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[4]~15_combout\,
	datab => \A[20]~input_o\,
	datac => \C~28_combout\,
	datad => \B[20]~input_o\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X67_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X67_Y1_N24
\gen_blocks:5:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:c_int[1]~0_combout\ = (\A[20]~input_o\ & ((\C~28_combout\) # ((\B[20]~input_o\) # (\G[4]~15_combout\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & ((\C~28_combout\) # (\G[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \C~28_combout\,
	datac => \B[20]~input_o\,
	datad => \G[4]~15_combout\,
	combout => \gen_blocks:5:c_int[1]~0_combout\);

-- Location: LCCOMB_X67_Y1_N2
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = \B[21]~input_o\ $ (\A[21]~input_o\ $ (\gen_blocks:5:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => \gen_blocks:5:c_int[1]~0_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X69_Y0_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X67_Y1_N14
\c_int~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~14_combout\ = (\A[20]~input_o\ & (!\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \c_int~14_combout\);

-- Location: LCCOMB_X67_Y1_N8
\c_int~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~15_combout\ = (\c_int~14_combout\ & ((\C~28_combout\) # (\G[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_int~14_combout\,
	datac => \C~28_combout\,
	datad => \G[4]~15_combout\,
	combout => \c_int~15_combout\);

-- Location: LCCOMB_X67_Y1_N28
\c_int~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~13_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \c_int~13_combout\);

-- Location: LCCOMB_X67_Y1_N26
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (((\c_int~15_combout\) # (\c_int~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \c_int~15_combout\,
	datad => \c_int~13_combout\,
	combout => \S~52_combout\);

-- Location: LCCOMB_X67_Y1_N10
\gen_blocks:5:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:p_bit[2]~combout\ = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \gen_blocks:5:p_bit[2]~combout\);

-- Location: LCCOMB_X67_Y1_N22
\c_int~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~16_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # ((\B[21]~input_o\ & \A[21]~input_o\)))) # (!\B[22]~input_o\ & (\B[21]~input_o\ & (\A[21]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \c_int~16_combout\);

-- Location: LCCOMB_X67_Y1_N16
\c_int~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~17_combout\ = (\A[20]~input_o\ & (\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \c_int~17_combout\);

-- Location: LCCOMB_X67_Y1_N18
\gen_blocks:5:c_int[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:c_int[3]~combout\ = (\c_int~16_combout\) # ((\gen_blocks:5:p_bit[2]~combout\ & ((\c_int~15_combout\) # (\c_int~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:5:p_bit[2]~combout\,
	datab => \c_int~15_combout\,
	datac => \c_int~16_combout\,
	datad => \c_int~17_combout\,
	combout => \gen_blocks:5:c_int[3]~combout\);

-- Location: IOIBUF_X67_Y0_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X67_Y1_N12
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = \gen_blocks:5:c_int[3]~combout\ $ (\A[23]~input_o\ $ (\B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:5:c_int[3]~combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \S~53_combout\);

-- Location: LCCOMB_X67_Y1_N20
\gen_blocks:5:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:p_bit[3]~combout\ = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \gen_blocks:5:p_bit[3]~combout\);

-- Location: LCCOMB_X67_Y1_N6
\C~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~29_combout\ = (\c_int~15_combout\ & (\gen_blocks:5:p_bit[3]~combout\ & (\A[22]~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \c_int~15_combout\,
	datad => \gen_blocks:5:p_bit[3]~combout\,
	combout => \C~29_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X67_Y1_N30
\G[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[5]~17_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G[5]~17_combout\);

-- Location: LCCOMB_X67_Y1_N4
\G~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~16_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\B[23]~input_o\ & (\B[22]~input_o\ & (\A[23]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \B[22]~input_o\,
	datac => \A[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \G~16_combout\);

-- Location: LCCOMB_X67_Y1_N0
\G[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[5]~18_combout\ = (\G~16_combout\) # ((\G[5]~17_combout\ & (\gen_blocks:5:p_bit[3]~combout\ & \gen_blocks:5:p_bit[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[5]~17_combout\,
	datab => \gen_blocks:5:p_bit[3]~combout\,
	datac => \G~16_combout\,
	datad => \gen_blocks:5:p_bit[2]~combout\,
	combout => \G[5]~18_combout\);

-- Location: IOIBUF_X54_Y0_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X53_Y1_N24
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (((\C~29_combout\) # (\G[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~29_combout\,
	datab => \A[24]~input_o\,
	datac => \G[5]~18_combout\,
	datad => \B[24]~input_o\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X53_Y1_N18
\gen_blocks:6:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:c_int[1]~0_combout\ = (\A[24]~input_o\ & ((\C~29_combout\) # ((\G[5]~18_combout\) # (\B[24]~input_o\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\C~29_combout\) # (\G[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~29_combout\,
	datab => \A[24]~input_o\,
	datac => \G[5]~18_combout\,
	datad => \B[24]~input_o\,
	combout => \gen_blocks:6:c_int[1]~0_combout\);

-- Location: LCCOMB_X53_Y1_N12
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = \A[25]~input_o\ $ (\B[25]~input_o\ $ (\gen_blocks:6:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \gen_blocks:6:c_int[1]~0_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X52_Y0_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X53_Y1_N14
\c_int~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~18_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \c_int~18_combout\);

-- Location: IOIBUF_X54_Y0_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X53_Y1_N16
\c_int~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~19_combout\ = (\B[25]~input_o\ & (!\A[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \c_int~19_combout\);

-- Location: LCCOMB_X53_Y1_N10
\c_int~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~20_combout\ = (\c_int~19_combout\ & ((\C~29_combout\) # (\G[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~29_combout\,
	datab => \c_int~19_combout\,
	datac => \G[5]~18_combout\,
	combout => \c_int~20_combout\);

-- Location: LCCOMB_X53_Y1_N28
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (((\c_int~18_combout\) # (\c_int~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \c_int~18_combout\,
	datac => \B[26]~input_o\,
	datad => \c_int~20_combout\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X52_Y1_N8
\gen_blocks:6:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:p_bit[3]~combout\ = \A[27]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	combout => \gen_blocks:6:p_bit[3]~combout\);

-- Location: LCCOMB_X53_Y1_N4
\gen_blocks:6:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:p_bit[2]~combout\ = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	combout => \gen_blocks:6:p_bit[2]~combout\);

-- Location: LCCOMB_X53_Y1_N22
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X53_Y1_N8
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = (\S~43_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\))) # (!\S~43_combout\ & (\A[26]~input_o\ & \B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~43_combout\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	combout => \S~44_combout\);

-- Location: LCCOMB_X53_Y1_N26
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = \gen_blocks:6:p_bit[3]~combout\ $ (((\S~44_combout\) # ((\gen_blocks:6:p_bit[2]~combout\ & \c_int~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:6:p_bit[3]~combout\,
	datab => \gen_blocks:6:p_bit[2]~combout\,
	datac => \S~44_combout\,
	datad => \c_int~20_combout\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X53_Y1_N6
\C~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~30_combout\ = (\gen_blocks:6:p_bit[3]~combout\ & (\c_int~20_combout\ & (\A[26]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:6:p_bit[3]~combout\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \c_int~20_combout\,
	combout => \C~30_combout\);

-- Location: IOIBUF_X79_Y0_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X53_Y1_N30
\G[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[6]~20_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \G[6]~20_combout\);

-- Location: LCCOMB_X53_Y1_N20
\G~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~19_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\A[27]~input_o\ & (\A[26]~input_o\ & (\B[26]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \B[27]~input_o\,
	combout => \G~19_combout\);

-- Location: LCCOMB_X53_Y1_N0
\G[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[6]~21_combout\ = (\G~19_combout\) # ((\G[6]~20_combout\ & (\gen_blocks:6:p_bit[2]~combout\ & \gen_blocks:6:p_bit[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[6]~20_combout\,
	datab => \G~19_combout\,
	datac => \gen_blocks:6:p_bit[2]~combout\,
	datad => \gen_blocks:6:p_bit[3]~combout\,
	combout => \G[6]~21_combout\);

-- Location: LCCOMB_X79_Y1_N24
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (((\C~30_combout\) # (\G[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~30_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \G[6]~21_combout\,
	combout => \S~46_combout\);

-- Location: LCCOMB_X79_Y1_N20
\gen_blocks:7:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:c_int[1]~0_combout\ = (\A[28]~input_o\ & ((\C~30_combout\) # ((\B[28]~input_o\) # (\G[6]~21_combout\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & ((\C~30_combout\) # (\G[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~30_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \G[6]~21_combout\,
	combout => \gen_blocks:7:c_int[1]~0_combout\);

-- Location: IOIBUF_X83_Y0_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X79_Y1_N30
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = \gen_blocks:7:c_int[1]~0_combout\ $ (\B[29]~input_o\ $ (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:7:c_int[1]~0_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X79_Y1_N22
\c_int~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~21_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\B[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & \A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[29]~input_o\,
	combout => \c_int~21_combout\);

-- Location: IOIBUF_X74_Y0_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X79_Y1_N26
\gen_blocks:7:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:p_bit[1]~combout\ = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \gen_blocks:7:p_bit[1]~combout\);

-- Location: LCCOMB_X53_Y1_N2
\C[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- C(7) = (\G[6]~21_combout\) # ((\gen_blocks:6:p_bit[3]~combout\ & (\gen_blocks:6:p_bit[2]~combout\ & \c_int~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:6:p_bit[3]~combout\,
	datab => \G[6]~21_combout\,
	datac => \gen_blocks:6:p_bit[2]~combout\,
	datad => \c_int~20_combout\,
	combout => C(7));

-- Location: LCCOMB_X79_Y1_N8
\c_int~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~22_combout\ = (\gen_blocks:7:p_bit[1]~combout\ & (C(7) & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:p_bit[1]~combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => C(7),
	combout => \c_int~22_combout\);

-- Location: IOIBUF_X74_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X79_Y1_N0
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (((\c_int~21_combout\) # (\c_int~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~21_combout\,
	datab => \A[30]~input_o\,
	datac => \c_int~22_combout\,
	datad => \B[30]~input_o\,
	combout => \S~56_combout\);

-- Location: LCCOMB_X79_Y1_N12
\c_int~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~23_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # ((\B[29]~input_o\ & \A[29]~input_o\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\B[29]~input_o\ & \A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \c_int~23_combout\);

-- Location: LCCOMB_X79_Y1_N2
\gen_blocks:7:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:p_bit[2]~combout\ = \A[30]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \gen_blocks:7:p_bit[2]~combout\);

-- Location: LCCOMB_X79_Y1_N14
\c_int~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~24_combout\ = (\B[28]~input_o\ & (\A[28]~input_o\ & (\gen_blocks:7:p_bit[1]~combout\ & \gen_blocks:7:p_bit[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \gen_blocks:7:p_bit[1]~combout\,
	datad => \gen_blocks:7:p_bit[2]~combout\,
	combout => \c_int~24_combout\);

-- Location: LCCOMB_X79_Y1_N16
\gen_blocks:7:c_int[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:c_int[3]~combout\ = (\c_int~23_combout\) # ((\c_int~24_combout\) # ((\c_int~22_combout\ & \gen_blocks:7:p_bit[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~23_combout\,
	datab => \c_int~22_combout\,
	datac => \c_int~24_combout\,
	datad => \gen_blocks:7:p_bit[2]~combout\,
	combout => \gen_blocks:7:c_int[3]~combout\);

-- Location: IOIBUF_X83_Y0_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X79_Y1_N10
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = \gen_blocks:7:c_int[3]~combout\ $ (\B[31]~input_o\ $ (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:7:c_int[3]~combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \S~57_combout\);

-- Location: LCCOMB_X79_Y1_N18
\C~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~26_combout\ = (\gen_blocks:7:p_bit[2]~combout\ & ((\c_int~22_combout\) # ((\B[29]~input_o\ & \A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \gen_blocks:7:p_bit[2]~combout\,
	datac => \c_int~22_combout\,
	datad => \A[29]~input_o\,
	combout => \C~26_combout\);

-- Location: LCCOMB_X79_Y1_N4
\C~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~31_combout\ = (\c_int~24_combout\) # ((\C~26_combout\) # ((\B[30]~input_o\ & \A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \c_int~24_combout\,
	datad => \C~26_combout\,
	combout => \C~31_combout\);

-- Location: LCCOMB_X79_Y1_N6
\C~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~32_combout\ = (\B[31]~input_o\ & ((\C~31_combout\) # (\A[31]~input_o\))) # (!\B[31]~input_o\ & (\C~31_combout\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[31]~input_o\,
	datac => \C~31_combout\,
	datad => \A[31]~input_o\,
	combout => \C~32_combout\);

-- Location: LCCOMB_X79_Y1_N28
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = C(7) $ (\C~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => C(7),
	datad => \C~32_combout\,
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


