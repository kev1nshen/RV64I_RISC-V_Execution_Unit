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

-- DATE "04/08/2026 12:34:21"

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
-- S[0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \blk0|S[0]~0_combout\ : std_logic;
SIGNAL \blk0|C[1]~0_combout\ : std_logic;
SIGNAL \blk0|C[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \blk0|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \blk1_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Csel[1]~0_combout\ : std_logic;
SIGNAL \Csel[1]~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \blk2_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \blk2_c1|C[2]~0_combout\ : std_logic;
SIGNAL \blk2_c0|C[2]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \blk2_c1|S[2]~1_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \blk2_c1|C[3]~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \blk2_c1|C[3]~2_combout\ : std_logic;
SIGNAL \blk2_c0|C[3]~2_combout\ : std_logic;
SIGNAL \blk2_c0|C[3]~1_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \blk2_c0|Cout~0_combout\ : std_logic;
SIGNAL \blk2_c1|Cout~0_combout\ : std_logic;
SIGNAL \Csel[2]~2_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \blk3_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \blk3_c1|C[2]~0_combout\ : std_logic;
SIGNAL \blk3_c0|C[2]~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \blk3_c1|S[2]~1_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \blk3_c0|C[3]~1_combout\ : std_logic;
SIGNAL \blk3_c0|C[3]~2_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \blk3_c1|C[3]~1_combout\ : std_logic;
SIGNAL \blk3_c1|C[3]~2_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \blk3_c1|Cout~0_combout\ : std_logic;
SIGNAL \blk3_c0|Cout~0_combout\ : std_logic;
SIGNAL \Csel[3]~3_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \blk4_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \blk4_c0|C[2]~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \blk4_c1|S[2]~1_combout\ : std_logic;
SIGNAL \blk4_c1|C[2]~0_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \blk4_c0|C[3]~2_combout\ : std_logic;
SIGNAL \blk4_c0|C[3]~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \blk4_c1|C[3]~2_combout\ : std_logic;
SIGNAL \blk4_c1|C[3]~1_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \blk4_c0|C[4]~3_combout\ : std_logic;
SIGNAL \blk4_c1|C[4]~3_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \blk4_c1|S[4]~2_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \blk4_c1|C[5]~5_combout\ : std_logic;
SIGNAL \blk4_c1|C[5]~4_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \blk4_c0|C[5]~4_combout\ : std_logic;
SIGNAL \blk4_c0|C[5]~5_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \blk4_c1|C[6]~6_combout\ : std_logic;
SIGNAL \blk4_c0|C[6]~6_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \blk4_c1|S[6]~3_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \blk4_c0|C[7]~7_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \blk4_c0|C[7]~8_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \blk4_c1|C[7]~7_combout\ : std_logic;
SIGNAL \blk4_c1|C[7]~8_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \blk4_c1|Cout~0_combout\ : std_logic;
SIGNAL \blk4_c0|Cout~0_combout\ : std_logic;
SIGNAL \Csel[4]~4_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \blk5_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \blk5_c1|S[2]~1_combout\ : std_logic;
SIGNAL \blk5_c0|C[2]~0_combout\ : std_logic;
SIGNAL \blk5_c1|C[2]~0_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \blk5_c1|C[3]~2_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \blk5_c1|C[3]~1_combout\ : std_logic;
SIGNAL \blk5_c0|C[3]~2_combout\ : std_logic;
SIGNAL \blk5_c0|C[3]~1_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \blk5_c1|C[4]~3_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \blk5_c1|S[4]~2_combout\ : std_logic;
SIGNAL \blk5_c0|C[4]~3_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \blk5_c0|C[5]~4_combout\ : std_logic;
SIGNAL \blk5_c0|C[5]~5_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \blk5_c1|C[5]~5_combout\ : std_logic;
SIGNAL \blk5_c1|C[5]~4_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \blk5_c0|C[6]~6_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \blk5_c1|S[6]~3_combout\ : std_logic;
SIGNAL \blk5_c1|C[6]~6_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \blk5_c1|C[7]~7_combout\ : std_logic;
SIGNAL \blk5_c1|C[7]~8_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \blk5_c0|C[7]~7_combout\ : std_logic;
SIGNAL \blk5_c0|C[7]~8_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \blk5_c0|Cout~0_combout\ : std_logic;
SIGNAL \blk5_c1|Cout~0_combout\ : std_logic;
SIGNAL \Csel[5]~5_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \blk6_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \blk6_c1|C[2]~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \blk6_c1|S[2]~1_combout\ : std_logic;
SIGNAL \blk6_c0|C[2]~0_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \blk6_c0|C[3]~1_combout\ : std_logic;
SIGNAL \blk6_c0|C[3]~2_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \blk6_c1|C[3]~2_combout\ : std_logic;
SIGNAL \blk6_c1|C[3]~1_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \blk6_c0|Cout~0_combout\ : std_logic;
SIGNAL \blk6_c1|Cout~0_combout\ : std_logic;
SIGNAL \Csel~6_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \blk0|S\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \blk6_c0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk2_c1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk2_c0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk4_c1|S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \blk3_c0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk3_c1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk4_c0|S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \blk5_c0|S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \blk5_c1|S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \blk6_c1|S\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: IOOBUF_X29_Y0_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk0|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk0|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
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
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Csel~6_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X115_Y55_N23
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

-- Location: IOIBUF_X38_Y0_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

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

-- Location: LCCOMB_X30_Y1_N8
\blk0|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk0|S[0]~0_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \blk0|S[0]~0_combout\);

-- Location: LCCOMB_X30_Y1_N10
\blk0|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk0|C[1]~0_combout\ = (\B[0]~input_o\ & \Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \blk0|C[1]~0_combout\);

-- Location: LCCOMB_X30_Y1_N28
\blk0|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk0|C[1]~1_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \blk0|C[1]~1_combout\);

-- Location: IOIBUF_X31_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X30_Y1_N14
\blk0|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk0|S\(1) = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\blk0|C[1]~0_combout\) # (\blk0|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk0|C[1]~0_combout\,
	datab => \blk0|C[1]~1_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \blk0|S\(1));

-- Location: IOIBUF_X29_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X30_Y1_N16
\blk0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk0|Cout~0_combout\ = (\B[1]~input_o\ & ((\blk0|C[1]~0_combout\) # ((\blk0|C[1]~1_combout\) # (\A[1]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\blk0|C[1]~0_combout\) # (\blk0|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk0|C[1]~0_combout\,
	datab => \blk0|C[1]~1_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \blk0|Cout~0_combout\);

-- Location: IOIBUF_X33_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X30_Y1_N26
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A[2]~input_o\ $ (\blk0|Cout~0_combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \blk0|Cout~0_combout\,
	datad => \B[2]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X35_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X30_Y1_N4
\blk1_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk1_c1|S[1]~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \blk1_c1|S[1]~0_combout\);

-- Location: LCCOMB_X30_Y1_N6
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \blk1_c1|S[1]~0_combout\ $ (((\A[2]~input_o\ & ((\blk0|Cout~0_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\blk0|Cout~0_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \blk0|Cout~0_combout\,
	datac => \blk1_c1|S[1]~0_combout\,
	datad => \B[2]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X23_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X30_Y1_N0
\Csel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[1]~0_combout\ = (\A[2]~input_o\ & ((\blk0|Cout~0_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\blk0|Cout~0_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \blk0|Cout~0_combout\,
	datad => \B[2]~input_o\,
	combout => \Csel[1]~0_combout\);

-- Location: LCCOMB_X30_Y1_N18
\Csel[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[1]~1_combout\ = (\A[3]~input_o\ & ((\Csel[1]~0_combout\) # (\B[3]~input_o\))) # (!\A[3]~input_o\ & (\Csel[1]~0_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Csel[1]~0_combout\,
	datad => \B[3]~input_o\,
	combout => \Csel[1]~1_combout\);

-- Location: IOIBUF_X33_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X30_Y1_N20
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \B[4]~input_o\ $ (\Csel[1]~1_combout\ $ (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Csel[1]~1_combout\,
	datad => \A[4]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X31_Y0_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X30_Y1_N22
\blk2_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c1|S[1]~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \blk2_c1|S[1]~0_combout\);

-- Location: LCCOMB_X30_Y1_N24
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \blk2_c1|S[1]~0_combout\ $ (((\B[4]~input_o\ & ((\Csel[1]~1_combout\) # (\A[4]~input_o\))) # (!\B[4]~input_o\ & (\Csel[1]~1_combout\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Csel[1]~1_combout\,
	datac => \blk2_c1|S[1]~0_combout\,
	datad => \A[4]~input_o\,
	combout => \S~3_combout\);

-- Location: LCCOMB_X30_Y1_N12
\blk2_c1|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c1|C[2]~0_combout\ = (\A[5]~input_o\ & ((\B[4]~input_o\) # ((\B[5]~input_o\) # (\A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\B[4]~input_o\) # (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \blk2_c1|C[2]~0_combout\);

-- Location: LCCOMB_X30_Y1_N2
\blk2_c0|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c0|C[2]~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[4]~input_o\ & (\B[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \blk2_c0|C[2]~0_combout\);

-- Location: IOIBUF_X31_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X30_Y72_N0
\blk2_c1|S[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c1|S[2]~1_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \blk2_c1|S[2]~1_combout\);

-- Location: LCCOMB_X30_Y1_N30
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \blk2_c1|S[2]~1_combout\ $ (((\Csel[1]~1_combout\ & (\blk2_c1|C[2]~0_combout\)) # (!\Csel[1]~1_combout\ & ((\blk2_c0|C[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk2_c1|C[2]~0_combout\,
	datab => \Csel[1]~1_combout\,
	datac => \blk2_c0|C[2]~0_combout\,
	datad => \blk2_c1|S[2]~1_combout\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X30_Y72_N10
\blk2_c1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c1|C[3]~1_combout\ = (\B[6]~input_o\ & \blk2_c1|C[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \blk2_c1|C[2]~0_combout\,
	combout => \blk2_c1|C[3]~1_combout\);

-- Location: IOIBUF_X31_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X30_Y72_N12
\blk2_c1|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c1|C[3]~2_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # (\blk2_c1|C[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \blk2_c1|C[2]~0_combout\,
	datad => \A[6]~input_o\,
	combout => \blk2_c1|C[3]~2_combout\);

-- Location: LCCOMB_X30_Y72_N30
\blk2_c1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c1|S\(3) = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\blk2_c1|C[3]~1_combout\) # (\blk2_c1|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk2_c1|C[3]~1_combout\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \blk2_c1|C[3]~2_combout\,
	combout => \blk2_c1|S\(3));

-- Location: LCCOMB_X30_Y72_N18
\blk2_c0|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c0|C[3]~2_combout\ = (\A[6]~input_o\ & ((\blk2_c0|C[2]~0_combout\) # (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk2_c0|C[2]~0_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \blk2_c0|C[3]~2_combout\);

-- Location: LCCOMB_X30_Y72_N8
\blk2_c0|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c0|C[3]~1_combout\ = (\blk2_c0|C[2]~0_combout\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk2_c0|C[2]~0_combout\,
	datac => \B[6]~input_o\,
	combout => \blk2_c0|C[3]~1_combout\);

-- Location: LCCOMB_X30_Y72_N20
\blk2_c0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c0|S\(3) = \A[7]~input_o\ $ (\B[7]~input_o\ $ (((\blk2_c0|C[3]~2_combout\) # (\blk2_c0|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \blk2_c0|C[3]~2_combout\,
	datac => \blk2_c0|C[3]~1_combout\,
	datad => \B[7]~input_o\,
	combout => \blk2_c0|S\(3));

-- Location: LCCOMB_X30_Y72_N6
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = (\Csel[1]~1_combout\ & (\blk2_c1|S\(3))) # (!\Csel[1]~1_combout\ & ((\blk2_c0|S\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Csel[1]~1_combout\,
	datac => \blk2_c1|S\(3),
	datad => \blk2_c0|S\(3),
	combout => \S~5_combout\);

-- Location: IOIBUF_X25_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X30_Y72_N26
\blk2_c0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c0|Cout~0_combout\ = (\A[7]~input_o\ & ((\blk2_c0|C[3]~2_combout\) # ((\blk2_c0|C[3]~1_combout\) # (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & ((\blk2_c0|C[3]~2_combout\) # (\blk2_c0|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \blk2_c0|C[3]~2_combout\,
	datac => \blk2_c0|C[3]~1_combout\,
	datad => \B[7]~input_o\,
	combout => \blk2_c0|Cout~0_combout\);

-- Location: LCCOMB_X30_Y72_N24
\blk2_c1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c1|Cout~0_combout\ = (\B[7]~input_o\ & ((\blk2_c1|C[3]~1_combout\) # ((\A[7]~input_o\) # (\blk2_c1|C[3]~2_combout\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\blk2_c1|C[3]~1_combout\) # (\blk2_c1|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk2_c1|C[3]~1_combout\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \blk2_c1|C[3]~2_combout\,
	combout => \blk2_c1|Cout~0_combout\);

-- Location: LCCOMB_X30_Y72_N4
\Csel[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[2]~2_combout\ = (\Csel[1]~1_combout\ & ((\blk2_c1|Cout~0_combout\))) # (!\Csel[1]~1_combout\ & (\blk2_c0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Csel[1]~1_combout\,
	datac => \blk2_c0|Cout~0_combout\,
	datad => \blk2_c1|Cout~0_combout\,
	combout => \Csel[2]~2_combout\);

-- Location: LCCOMB_X30_Y72_N14
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (\Csel[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => \Csel[2]~2_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X27_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X30_Y72_N16
\blk3_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c1|S[1]~0_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \blk3_c1|S[1]~0_combout\);

-- Location: LCCOMB_X30_Y72_N2
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \blk3_c1|S[1]~0_combout\ $ (((\B[8]~input_o\ & ((\Csel[2]~2_combout\) # (\A[8]~input_o\))) # (!\B[8]~input_o\ & (\Csel[2]~2_combout\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \blk3_c1|S[1]~0_combout\,
	datac => \Csel[2]~2_combout\,
	datad => \A[8]~input_o\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X30_Y72_N22
\blk3_c1|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c1|C[2]~0_combout\ = (\B[9]~input_o\ & ((\B[8]~input_o\) # ((\A[8]~input_o\) # (\A[9]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\B[8]~input_o\) # (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \blk3_c1|C[2]~0_combout\);

-- Location: LCCOMB_X30_Y72_N28
\blk3_c0|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c0|C[2]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \blk3_c0|C[2]~0_combout\);

-- Location: IOIBUF_X40_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X38_Y72_N24
\blk3_c1|S[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c1|S[2]~1_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	combout => \blk3_c1|S[2]~1_combout\);

-- Location: LCCOMB_X38_Y72_N26
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \blk3_c1|S[2]~1_combout\ $ (((\Csel[2]~2_combout\ & (\blk3_c1|C[2]~0_combout\)) # (!\Csel[2]~2_combout\ & ((\blk3_c0|C[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk3_c1|C[2]~0_combout\,
	datab => \blk3_c0|C[2]~0_combout\,
	datac => \Csel[2]~2_combout\,
	datad => \blk3_c1|S[2]~1_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X38_Y72_N18
\blk3_c0|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c0|C[3]~1_combout\ = (\blk3_c0|C[2]~0_combout\ & \B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk3_c0|C[2]~0_combout\,
	datac => \B[10]~input_o\,
	combout => \blk3_c0|C[3]~1_combout\);

-- Location: LCCOMB_X38_Y72_N4
\blk3_c0|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c0|C[3]~2_combout\ = (\A[10]~input_o\ & ((\blk3_c0|C[2]~0_combout\) # (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \blk3_c0|C[2]~0_combout\,
	datac => \B[10]~input_o\,
	combout => \blk3_c0|C[3]~2_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X38_Y72_N6
\blk3_c0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c0|S\(3) = \B[11]~input_o\ $ (\A[11]~input_o\ $ (((\blk3_c0|C[3]~1_combout\) # (\blk3_c0|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \blk3_c0|C[3]~1_combout\,
	datac => \blk3_c0|C[3]~2_combout\,
	datad => \A[11]~input_o\,
	combout => \blk3_c0|S\(3));

-- Location: LCCOMB_X38_Y72_N28
\blk3_c1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c1|C[3]~1_combout\ = (\blk3_c1|C[2]~0_combout\ & \B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk3_c1|C[2]~0_combout\,
	datac => \B[10]~input_o\,
	combout => \blk3_c1|C[3]~1_combout\);

-- Location: LCCOMB_X38_Y72_N22
\blk3_c1|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c1|C[3]~2_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # (\blk3_c1|C[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \blk3_c1|C[2]~0_combout\,
	combout => \blk3_c1|C[3]~2_combout\);

-- Location: LCCOMB_X38_Y72_N16
\blk3_c1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c1|S\(3) = \B[11]~input_o\ $ (\A[11]~input_o\ $ (((\blk3_c1|C[3]~1_combout\) # (\blk3_c1|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \blk3_c1|C[3]~1_combout\,
	datac => \blk3_c1|C[3]~2_combout\,
	datad => \A[11]~input_o\,
	combout => \blk3_c1|S\(3));

-- Location: LCCOMB_X38_Y72_N0
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = (\Csel[2]~2_combout\ & ((\blk3_c1|S\(3)))) # (!\Csel[2]~2_combout\ & (\blk3_c0|S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk3_c0|S\(3),
	datac => \Csel[2]~2_combout\,
	datad => \blk3_c1|S\(3),
	combout => \S~9_combout\);

-- Location: LCCOMB_X38_Y72_N10
\blk3_c1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c1|Cout~0_combout\ = (\B[11]~input_o\ & ((\blk3_c1|C[3]~1_combout\) # ((\blk3_c1|C[3]~2_combout\) # (\A[11]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\blk3_c1|C[3]~1_combout\) # (\blk3_c1|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \blk3_c1|C[3]~1_combout\,
	datac => \blk3_c1|C[3]~2_combout\,
	datad => \A[11]~input_o\,
	combout => \blk3_c1|Cout~0_combout\);

-- Location: LCCOMB_X38_Y72_N20
\blk3_c0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c0|Cout~0_combout\ = (\B[11]~input_o\ & ((\blk3_c0|C[3]~1_combout\) # ((\blk3_c0|C[3]~2_combout\) # (\A[11]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\blk3_c0|C[3]~1_combout\) # (\blk3_c0|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \blk3_c0|C[3]~1_combout\,
	datac => \blk3_c0|C[3]~2_combout\,
	datad => \A[11]~input_o\,
	combout => \blk3_c0|Cout~0_combout\);

-- Location: LCCOMB_X38_Y72_N14
\Csel[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[3]~3_combout\ = (\Csel[2]~2_combout\ & (\blk3_c1|Cout~0_combout\)) # (!\Csel[2]~2_combout\ & ((\blk3_c0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk3_c1|Cout~0_combout\,
	datac => \Csel[2]~2_combout\,
	datad => \blk3_c0|Cout~0_combout\,
	combout => \Csel[3]~3_combout\);

-- Location: IOIBUF_X45_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X48_Y72_N24
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \Csel[3]~3_combout\ $ (\B[12]~input_o\ $ (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[3]~3_combout\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X40_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X48_Y72_N26
\blk4_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S[1]~0_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \blk4_c1|S[1]~0_combout\);

-- Location: LCCOMB_X48_Y72_N4
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \blk4_c1|S[1]~0_combout\ $ (((\B[12]~input_o\ & ((\A[12]~input_o\) # (\Csel[3]~3_combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & \Csel[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|S[1]~0_combout\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \Csel[3]~3_combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X48_Y72_N30
\blk4_c0|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[2]~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \blk4_c0|C[2]~0_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X48_Y72_N18
\blk4_c1|S[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S[2]~1_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \blk4_c1|S[2]~1_combout\);

-- Location: LCCOMB_X48_Y72_N8
\blk4_c1|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[2]~0_combout\ = (\A[13]~input_o\ & ((\B[12]~input_o\) # ((\A[12]~input_o\) # (\B[13]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\B[12]~input_o\) # (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \blk4_c1|C[2]~0_combout\);

-- Location: LCCOMB_X48_Y72_N12
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \blk4_c1|S[2]~1_combout\ $ (((\Csel[3]~3_combout\ & ((\blk4_c1|C[2]~0_combout\))) # (!\Csel[3]~3_combout\ & (\blk4_c0|C[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[2]~0_combout\,
	datab => \blk4_c1|S[2]~1_combout\,
	datac => \blk4_c1|C[2]~0_combout\,
	datad => \Csel[3]~3_combout\,
	combout => \S~12_combout\);

-- Location: LCCOMB_X48_Y72_N22
\blk4_c0|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[3]~2_combout\ = (\A[14]~input_o\ & ((\blk4_c0|C[2]~0_combout\) # (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[2]~0_combout\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => \blk4_c0|C[3]~2_combout\);

-- Location: LCCOMB_X48_Y72_N20
\blk4_c0|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[3]~1_combout\ = (\B[14]~input_o\ & \blk4_c0|C[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datac => \blk4_c0|C[2]~0_combout\,
	combout => \blk4_c0|C[3]~1_combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X48_Y72_N16
\blk4_c0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|S\(3) = \B[15]~input_o\ $ (\A[15]~input_o\ $ (((\blk4_c0|C[3]~2_combout\) # (\blk4_c0|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[3]~2_combout\,
	datab => \blk4_c0|C[3]~1_combout\,
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \blk4_c0|S\(3));

-- Location: LCCOMB_X48_Y72_N0
\blk4_c1|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[3]~2_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # (\blk4_c1|C[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \blk4_c1|C[2]~0_combout\,
	combout => \blk4_c1|C[3]~2_combout\);

-- Location: LCCOMB_X48_Y72_N14
\blk4_c1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[3]~1_combout\ = (\B[14]~input_o\ & \blk4_c1|C[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datac => \blk4_c1|C[2]~0_combout\,
	combout => \blk4_c1|C[3]~1_combout\);

-- Location: LCCOMB_X48_Y72_N10
\blk4_c1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S\(3) = \B[15]~input_o\ $ (\A[15]~input_o\ $ (((\blk4_c1|C[3]~2_combout\) # (\blk4_c1|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \blk4_c1|C[3]~2_combout\,
	datac => \blk4_c1|C[3]~1_combout\,
	datad => \A[15]~input_o\,
	combout => \blk4_c1|S\(3));

-- Location: LCCOMB_X48_Y72_N2
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = (\Csel[3]~3_combout\ & ((\blk4_c1|S\(3)))) # (!\Csel[3]~3_combout\ & (\blk4_c0|S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[3]~3_combout\,
	datab => \blk4_c0|S\(3),
	datad => \blk4_c1|S\(3),
	combout => \S~13_combout\);

-- Location: LCCOMB_X48_Y72_N28
\blk4_c0|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[4]~3_combout\ = (\B[15]~input_o\ & ((\blk4_c0|C[3]~2_combout\) # ((\blk4_c0|C[3]~1_combout\) # (\A[15]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\blk4_c0|C[3]~2_combout\) # (\blk4_c0|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[3]~2_combout\,
	datab => \blk4_c0|C[3]~1_combout\,
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \blk4_c0|C[4]~3_combout\);

-- Location: LCCOMB_X48_Y72_N6
\blk4_c1|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[4]~3_combout\ = (\B[15]~input_o\ & ((\blk4_c1|C[3]~2_combout\) # ((\blk4_c1|C[3]~1_combout\) # (\A[15]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\blk4_c1|C[3]~2_combout\) # (\blk4_c1|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \blk4_c1|C[3]~2_combout\,
	datac => \blk4_c1|C[3]~1_combout\,
	datad => \A[15]~input_o\,
	combout => \blk4_c1|C[4]~3_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X56_Y72_N16
\blk4_c1|S[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S[4]~2_combout\ = \B[16]~input_o\ $ (\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \blk4_c1|S[4]~2_combout\);

-- Location: LCCOMB_X56_Y72_N2
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \blk4_c1|S[4]~2_combout\ $ (((\Csel[3]~3_combout\ & ((\blk4_c1|C[4]~3_combout\))) # (!\Csel[3]~3_combout\ & (\blk4_c0|C[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[4]~3_combout\,
	datab => \blk4_c1|C[4]~3_combout\,
	datac => \Csel[3]~3_combout\,
	datad => \blk4_c1|S[4]~2_combout\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X56_Y72_N22
\blk4_c1|C[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[5]~5_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # (\blk4_c1|C[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datac => \blk4_c1|C[4]~3_combout\,
	datad => \A[16]~input_o\,
	combout => \blk4_c1|C[5]~5_combout\);

-- Location: LCCOMB_X56_Y72_N20
\blk4_c1|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[5]~4_combout\ = (\blk4_c1|C[4]~3_combout\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blk4_c1|C[4]~3_combout\,
	datad => \B[16]~input_o\,
	combout => \blk4_c1|C[5]~4_combout\);

-- Location: IOIBUF_X54_Y73_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X56_Y72_N0
\blk4_c1|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S\(5) = \B[17]~input_o\ $ (\A[17]~input_o\ $ (((\blk4_c1|C[5]~5_combout\) # (\blk4_c1|C[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|C[5]~5_combout\,
	datab => \blk4_c1|C[5]~4_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \blk4_c1|S\(5));

-- Location: LCCOMB_X56_Y72_N10
\blk4_c0|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[5]~4_combout\ = (\blk4_c0|C[4]~3_combout\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blk4_c0|C[4]~3_combout\,
	datad => \B[16]~input_o\,
	combout => \blk4_c0|C[5]~4_combout\);

-- Location: LCCOMB_X56_Y72_N4
\blk4_c0|C[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[5]~5_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # (\blk4_c0|C[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datac => \blk4_c0|C[4]~3_combout\,
	datad => \A[16]~input_o\,
	combout => \blk4_c0|C[5]~5_combout\);

-- Location: LCCOMB_X56_Y72_N6
\blk4_c0|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|S\(5) = \B[17]~input_o\ $ (\A[17]~input_o\ $ (((\blk4_c0|C[5]~4_combout\) # (\blk4_c0|C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[5]~4_combout\,
	datab => \blk4_c0|C[5]~5_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \blk4_c0|S\(5));

-- Location: LCCOMB_X56_Y72_N24
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = (\Csel[3]~3_combout\ & (\blk4_c1|S\(5))) # (!\Csel[3]~3_combout\ & ((\blk4_c0|S\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk4_c1|S\(5),
	datac => \Csel[3]~3_combout\,
	datad => \blk4_c0|S\(5),
	combout => \S~15_combout\);

-- Location: LCCOMB_X56_Y72_N28
\blk4_c1|C[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[6]~6_combout\ = (\B[17]~input_o\ & ((\blk4_c1|C[5]~5_combout\) # ((\blk4_c1|C[5]~4_combout\) # (\A[17]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\blk4_c1|C[5]~5_combout\) # (\blk4_c1|C[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|C[5]~5_combout\,
	datab => \blk4_c1|C[5]~4_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \blk4_c1|C[6]~6_combout\);

-- Location: LCCOMB_X56_Y72_N18
\blk4_c0|C[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[6]~6_combout\ = (\B[17]~input_o\ & ((\blk4_c0|C[5]~4_combout\) # ((\blk4_c0|C[5]~5_combout\) # (\A[17]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\blk4_c0|C[5]~4_combout\) # (\blk4_c0|C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[5]~4_combout\,
	datab => \blk4_c0|C[5]~5_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \blk4_c0|C[6]~6_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X60_Y72_N16
\blk4_c1|S[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S[6]~3_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \blk4_c1|S[6]~3_combout\);

-- Location: LCCOMB_X60_Y72_N2
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \blk4_c1|S[6]~3_combout\ $ (((\Csel[3]~3_combout\ & (\blk4_c1|C[6]~6_combout\)) # (!\Csel[3]~3_combout\ & ((\blk4_c0|C[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|C[6]~6_combout\,
	datab => \Csel[3]~3_combout\,
	datac => \blk4_c0|C[6]~6_combout\,
	datad => \blk4_c1|S[6]~3_combout\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X60_Y72_N10
\blk4_c0|C[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[7]~7_combout\ = (\blk4_c0|C[6]~6_combout\ & \B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blk4_c0|C[6]~6_combout\,
	datad => \B[18]~input_o\,
	combout => \blk4_c0|C[7]~7_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X60_Y72_N28
\blk4_c0|C[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[7]~8_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # (\blk4_c0|C[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \blk4_c0|C[6]~6_combout\,
	datad => \A[18]~input_o\,
	combout => \blk4_c0|C[7]~8_combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X60_Y72_N6
\blk4_c0|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|S\(7) = \A[19]~input_o\ $ (\B[19]~input_o\ $ (((\blk4_c0|C[7]~7_combout\) # (\blk4_c0|C[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[7]~7_combout\,
	datab => \A[19]~input_o\,
	datac => \blk4_c0|C[7]~8_combout\,
	datad => \B[19]~input_o\,
	combout => \blk4_c0|S\(7));

-- Location: LCCOMB_X60_Y72_N12
\blk4_c1|C[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[7]~7_combout\ = (\blk4_c1|C[6]~6_combout\ & \B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blk4_c1|C[6]~6_combout\,
	datad => \B[18]~input_o\,
	combout => \blk4_c1|C[7]~7_combout\);

-- Location: LCCOMB_X60_Y72_N30
\blk4_c1|C[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[7]~8_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # (\blk4_c1|C[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \blk4_c1|C[6]~6_combout\,
	datad => \A[18]~input_o\,
	combout => \blk4_c1|C[7]~8_combout\);

-- Location: LCCOMB_X60_Y72_N24
\blk4_c1|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S\(7) = \A[19]~input_o\ $ (\B[19]~input_o\ $ (((\blk4_c1|C[7]~7_combout\) # (\blk4_c1|C[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|C[7]~7_combout\,
	datab => \A[19]~input_o\,
	datac => \blk4_c1|C[7]~8_combout\,
	datad => \B[19]~input_o\,
	combout => \blk4_c1|S\(7));

-- Location: LCCOMB_X60_Y72_N0
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = (\Csel[3]~3_combout\ & ((\blk4_c1|S\(7)))) # (!\Csel[3]~3_combout\ & (\blk4_c0|S\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|S\(7),
	datab => \Csel[3]~3_combout\,
	datad => \blk4_c1|S\(7),
	combout => \S~17_combout\);

-- Location: IOIBUF_X60_Y0_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X60_Y72_N26
\blk4_c1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|Cout~0_combout\ = (\A[19]~input_o\ & ((\blk4_c1|C[7]~7_combout\) # ((\blk4_c1|C[7]~8_combout\) # (\B[19]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\blk4_c1|C[7]~7_combout\) # (\blk4_c1|C[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|C[7]~7_combout\,
	datab => \A[19]~input_o\,
	datac => \blk4_c1|C[7]~8_combout\,
	datad => \B[19]~input_o\,
	combout => \blk4_c1|Cout~0_combout\);

-- Location: LCCOMB_X60_Y72_N20
\blk4_c0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|Cout~0_combout\ = (\A[19]~input_o\ & ((\blk4_c0|C[7]~7_combout\) # ((\blk4_c0|C[7]~8_combout\) # (\B[19]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\blk4_c0|C[7]~7_combout\) # (\blk4_c0|C[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c0|C[7]~7_combout\,
	datab => \A[19]~input_o\,
	datac => \blk4_c0|C[7]~8_combout\,
	datad => \B[19]~input_o\,
	combout => \blk4_c0|Cout~0_combout\);

-- Location: LCCOMB_X60_Y72_N22
\Csel[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[4]~4_combout\ = (\Csel[3]~3_combout\ & (\blk4_c1|Cout~0_combout\)) # (!\Csel[3]~3_combout\ & ((\blk4_c0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Csel[3]~3_combout\,
	datac => \blk4_c1|Cout~0_combout\,
	datad => \blk4_c0|Cout~0_combout\,
	combout => \Csel[4]~4_combout\);

-- Location: IOIBUF_X65_Y0_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X61_Y1_N24
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \A[20]~input_o\ $ (\Csel[4]~4_combout\ $ (\B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \Csel[4]~4_combout\,
	datad => \B[20]~input_o\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X62_Y0_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X61_Y1_N2
\blk5_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S[1]~0_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \blk5_c1|S[1]~0_combout\);

-- Location: LCCOMB_X61_Y1_N28
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \blk5_c1|S[1]~0_combout\ $ (((\A[20]~input_o\ & ((\Csel[4]~4_combout\) # (\B[20]~input_o\))) # (!\A[20]~input_o\ & (\Csel[4]~4_combout\ & \B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \blk5_c1|S[1]~0_combout\,
	datac => \Csel[4]~4_combout\,
	datad => \B[20]~input_o\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X65_Y0_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X61_Y1_N26
\blk5_c1|S[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S[2]~1_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \blk5_c1|S[2]~1_combout\);

-- Location: LCCOMB_X61_Y1_N14
\blk5_c0|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[2]~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[20]~input_o\ & (\A[21]~input_o\ & \B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[20]~input_o\,
	combout => \blk5_c0|C[2]~0_combout\);

-- Location: LCCOMB_X61_Y1_N16
\blk5_c1|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[2]~0_combout\ = (\B[21]~input_o\ & ((\A[20]~input_o\) # ((\A[21]~input_o\) # (\B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\A[20]~input_o\) # (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[20]~input_o\,
	combout => \blk5_c1|C[2]~0_combout\);

-- Location: LCCOMB_X61_Y1_N4
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \blk5_c1|S[2]~1_combout\ $ (((\Csel[4]~4_combout\ & ((\blk5_c1|C[2]~0_combout\))) # (!\Csel[4]~4_combout\ & (\blk5_c0|C[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|S[2]~1_combout\,
	datab => \blk5_c0|C[2]~0_combout\,
	datac => \Csel[4]~4_combout\,
	datad => \blk5_c1|C[2]~0_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X56_Y0_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X61_Y1_N0
\blk5_c1|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[3]~2_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # (\blk5_c1|C[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \blk5_c1|C[2]~0_combout\,
	datad => \A[22]~input_o\,
	combout => \blk5_c1|C[3]~2_combout\);

-- Location: IOIBUF_X60_Y0_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X61_Y1_N6
\blk5_c1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[3]~1_combout\ = (\blk5_c1|C[2]~0_combout\ & \B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk5_c1|C[2]~0_combout\,
	datad => \B[22]~input_o\,
	combout => \blk5_c1|C[3]~1_combout\);

-- Location: LCCOMB_X61_Y1_N10
\blk5_c1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S\(3) = \B[23]~input_o\ $ (\A[23]~input_o\ $ (((\blk5_c1|C[3]~2_combout\) # (\blk5_c1|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \blk5_c1|C[3]~2_combout\,
	datac => \A[23]~input_o\,
	datad => \blk5_c1|C[3]~1_combout\,
	combout => \blk5_c1|S\(3));

-- Location: LCCOMB_X61_Y1_N22
\blk5_c0|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[3]~2_combout\ = (\A[22]~input_o\ & ((\blk5_c0|C[2]~0_combout\) # (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \blk5_c0|C[2]~0_combout\,
	datad => \B[22]~input_o\,
	combout => \blk5_c0|C[3]~2_combout\);

-- Location: LCCOMB_X61_Y1_N20
\blk5_c0|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[3]~1_combout\ = (\blk5_c0|C[2]~0_combout\ & \B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blk5_c0|C[2]~0_combout\,
	datad => \B[22]~input_o\,
	combout => \blk5_c0|C[3]~1_combout\);

-- Location: LCCOMB_X61_Y1_N8
\blk5_c0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|S\(3) = \B[23]~input_o\ $ (\A[23]~input_o\ $ (((\blk5_c0|C[3]~2_combout\) # (\blk5_c0|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \blk5_c0|C[3]~2_combout\,
	datad => \blk5_c0|C[3]~1_combout\,
	combout => \blk5_c0|S\(3));

-- Location: LCCOMB_X61_Y1_N18
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = (\Csel[4]~4_combout\ & (\blk5_c1|S\(3))) # (!\Csel[4]~4_combout\ & ((\blk5_c0|S\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|S\(3),
	datab => \blk5_c0|S\(3),
	datac => \Csel[4]~4_combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X61_Y1_N30
\blk5_c1|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[4]~3_combout\ = (\B[23]~input_o\ & ((\blk5_c1|C[3]~2_combout\) # ((\A[23]~input_o\) # (\blk5_c1|C[3]~1_combout\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & ((\blk5_c1|C[3]~2_combout\) # (\blk5_c1|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \blk5_c1|C[3]~2_combout\,
	datac => \A[23]~input_o\,
	datad => \blk5_c1|C[3]~1_combout\,
	combout => \blk5_c1|C[4]~3_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X81_Y72_N8
\blk5_c1|S[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S[4]~2_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \blk5_c1|S[4]~2_combout\);

-- Location: LCCOMB_X61_Y1_N12
\blk5_c0|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[4]~3_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\) # ((\blk5_c0|C[3]~2_combout\) # (\blk5_c0|C[3]~1_combout\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & ((\blk5_c0|C[3]~2_combout\) # (\blk5_c0|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \blk5_c0|C[3]~2_combout\,
	datad => \blk5_c0|C[3]~1_combout\,
	combout => \blk5_c0|C[4]~3_combout\);

-- Location: LCCOMB_X81_Y72_N26
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \blk5_c1|S[4]~2_combout\ $ (((\Csel[4]~4_combout\ & (\blk5_c1|C[4]~3_combout\)) # (!\Csel[4]~4_combout\ & ((\blk5_c0|C[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[4]~3_combout\,
	datab => \Csel[4]~4_combout\,
	datac => \blk5_c1|S[4]~2_combout\,
	datad => \blk5_c0|C[4]~3_combout\,
	combout => \S~22_combout\);

-- Location: LCCOMB_X81_Y72_N10
\blk5_c0|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[5]~4_combout\ = (\blk5_c0|C[4]~3_combout\ & \B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[4]~3_combout\,
	datad => \B[24]~input_o\,
	combout => \blk5_c0|C[5]~4_combout\);

-- Location: LCCOMB_X81_Y72_N20
\blk5_c0|C[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[5]~5_combout\ = (\A[24]~input_o\ & ((\blk5_c0|C[4]~3_combout\) # (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[4]~3_combout\,
	datab => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \blk5_c0|C[5]~5_combout\);

-- Location: IOIBUF_X81_Y73_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X81_Y72_N6
\blk5_c0|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|S\(5) = \B[25]~input_o\ $ (\A[25]~input_o\ $ (((\blk5_c0|C[5]~4_combout\) # (\blk5_c0|C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[5]~4_combout\,
	datab => \blk5_c0|C[5]~5_combout\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \blk5_c0|S\(5));

-- Location: LCCOMB_X81_Y72_N22
\blk5_c1|C[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[5]~5_combout\ = (\A[24]~input_o\ & ((\blk5_c1|C[4]~3_combout\) # (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[4]~3_combout\,
	datab => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \blk5_c1|C[5]~5_combout\);

-- Location: LCCOMB_X81_Y72_N12
\blk5_c1|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[5]~4_combout\ = (\blk5_c1|C[4]~3_combout\ & \B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[4]~3_combout\,
	datad => \B[24]~input_o\,
	combout => \blk5_c1|C[5]~4_combout\);

-- Location: LCCOMB_X81_Y72_N24
\blk5_c1|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S\(5) = \A[25]~input_o\ $ (\B[25]~input_o\ $ (((\blk5_c1|C[5]~5_combout\) # (\blk5_c1|C[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[5]~5_combout\,
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \blk5_c1|C[5]~4_combout\,
	combout => \blk5_c1|S\(5));

-- Location: LCCOMB_X81_Y72_N0
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = (\Csel[4]~4_combout\ & ((\blk5_c1|S\(5)))) # (!\Csel[4]~4_combout\ & (\blk5_c0|S\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|S\(5),
	datac => \Csel[4]~4_combout\,
	datad => \blk5_c1|S\(5),
	combout => \S~23_combout\);

-- Location: LCCOMB_X81_Y72_N2
\blk5_c0|C[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[6]~6_combout\ = (\B[25]~input_o\ & ((\blk5_c0|C[5]~4_combout\) # ((\blk5_c0|C[5]~5_combout\) # (\A[25]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & ((\blk5_c0|C[5]~4_combout\) # (\blk5_c0|C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[5]~4_combout\,
	datab => \blk5_c0|C[5]~5_combout\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \blk5_c0|C[6]~6_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X84_Y72_N16
\blk5_c1|S[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S[6]~3_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \blk5_c1|S[6]~3_combout\);

-- Location: LCCOMB_X81_Y72_N4
\blk5_c1|C[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[6]~6_combout\ = (\A[25]~input_o\ & ((\blk5_c1|C[5]~5_combout\) # ((\B[25]~input_o\) # (\blk5_c1|C[5]~4_combout\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & ((\blk5_c1|C[5]~5_combout\) # (\blk5_c1|C[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[5]~5_combout\,
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \blk5_c1|C[5]~4_combout\,
	combout => \blk5_c1|C[6]~6_combout\);

-- Location: LCCOMB_X84_Y72_N26
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \blk5_c1|S[6]~3_combout\ $ (((\Csel[4]~4_combout\ & ((\blk5_c1|C[6]~6_combout\))) # (!\Csel[4]~4_combout\ & (\blk5_c0|C[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[6]~6_combout\,
	datab => \blk5_c1|S[6]~3_combout\,
	datac => \blk5_c1|C[6]~6_combout\,
	datad => \Csel[4]~4_combout\,
	combout => \S~24_combout\);

-- Location: LCCOMB_X84_Y72_N12
\blk5_c1|C[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[7]~7_combout\ = (\B[26]~input_o\ & \blk5_c1|C[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \blk5_c1|C[6]~6_combout\,
	combout => \blk5_c1|C[7]~7_combout\);

-- Location: LCCOMB_X84_Y72_N14
\blk5_c1|C[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[7]~8_combout\ = (\A[26]~input_o\ & ((\B[26]~input_o\) # (\blk5_c1|C[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \blk5_c1|C[6]~6_combout\,
	datad => \A[26]~input_o\,
	combout => \blk5_c1|C[7]~8_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X84_Y72_N24
\blk5_c1|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S\(7) = \A[27]~input_o\ $ (\B[27]~input_o\ $ (((\blk5_c1|C[7]~7_combout\) # (\blk5_c1|C[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[7]~7_combout\,
	datab => \blk5_c1|C[7]~8_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \blk5_c1|S\(7));

-- Location: LCCOMB_X84_Y72_N10
\blk5_c0|C[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[7]~7_combout\ = (\blk5_c0|C[6]~6_combout\ & \B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[6]~6_combout\,
	datac => \B[26]~input_o\,
	combout => \blk5_c0|C[7]~7_combout\);

-- Location: LCCOMB_X84_Y72_N28
\blk5_c0|C[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[7]~8_combout\ = (\A[26]~input_o\ & ((\blk5_c0|C[6]~6_combout\) # (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[6]~6_combout\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \blk5_c0|C[7]~8_combout\);

-- Location: LCCOMB_X84_Y72_N6
\blk5_c0|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|S\(7) = \A[27]~input_o\ $ (\B[27]~input_o\ $ (((\blk5_c0|C[7]~7_combout\) # (\blk5_c0|C[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[7]~7_combout\,
	datab => \blk5_c0|C[7]~8_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \blk5_c0|S\(7));

-- Location: LCCOMB_X84_Y72_N0
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = (\Csel[4]~4_combout\ & (\blk5_c1|S\(7))) # (!\Csel[4]~4_combout\ & ((\blk5_c0|S\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[4]~4_combout\,
	datab => \blk5_c1|S\(7),
	datad => \blk5_c0|S\(7),
	combout => \S~25_combout\);

-- Location: IOIBUF_X115_Y67_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X84_Y72_N20
\blk5_c0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|Cout~0_combout\ = (\A[27]~input_o\ & ((\blk5_c0|C[7]~7_combout\) # ((\blk5_c0|C[7]~8_combout\) # (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\blk5_c0|C[7]~7_combout\) # (\blk5_c0|C[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[7]~7_combout\,
	datab => \blk5_c0|C[7]~8_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \blk5_c0|Cout~0_combout\);

-- Location: LCCOMB_X84_Y72_N18
\blk5_c1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|Cout~0_combout\ = (\A[27]~input_o\ & ((\blk5_c1|C[7]~7_combout\) # ((\blk5_c1|C[7]~8_combout\) # (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\blk5_c1|C[7]~7_combout\) # (\blk5_c1|C[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[7]~7_combout\,
	datab => \blk5_c1|C[7]~8_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \blk5_c1|Cout~0_combout\);

-- Location: LCCOMB_X84_Y72_N22
\Csel[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[5]~5_combout\ = (\Csel[4]~4_combout\ & ((\blk5_c1|Cout~0_combout\))) # (!\Csel[4]~4_combout\ & (\blk5_c0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[4]~4_combout\,
	datab => \blk5_c0|Cout~0_combout\,
	datad => \blk5_c1|Cout~0_combout\,
	combout => \Csel[5]~5_combout\);

-- Location: LCCOMB_X114_Y69_N8
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \B[28]~input_o\ $ (\A[28]~input_o\ $ (\Csel[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \Csel[5]~5_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X115_Y68_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X114_Y69_N10
\blk6_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|S[1]~0_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \blk6_c1|S[1]~0_combout\);

-- Location: LCCOMB_X114_Y69_N4
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \blk6_c1|S[1]~0_combout\ $ (((\A[28]~input_o\ & ((\Csel[5]~5_combout\) # (\B[28]~input_o\))) # (!\A[28]~input_o\ & (\Csel[5]~5_combout\ & \B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c1|S[1]~0_combout\,
	datab => \A[28]~input_o\,
	datac => \Csel[5]~5_combout\,
	datad => \B[28]~input_o\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X114_Y69_N24
\blk6_c1|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|C[2]~0_combout\ = (\A[29]~input_o\ & ((\B[28]~input_o\) # ((\A[28]~input_o\) # (\B[29]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & ((\B[28]~input_o\) # (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[29]~input_o\,
	combout => \blk6_c1|C[2]~0_combout\);

-- Location: IOIBUF_X115_Y59_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X114_Y58_N24
\blk6_c1|S[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|S[2]~1_combout\ = \B[30]~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	combout => \blk6_c1|S[2]~1_combout\);

-- Location: LCCOMB_X114_Y69_N14
\blk6_c0|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c0|C[2]~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\B[28]~input_o\ & \A[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[28]~input_o\ & (\A[28]~input_o\ & \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[29]~input_o\,
	combout => \blk6_c0|C[2]~0_combout\);

-- Location: LCCOMB_X114_Y58_N18
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \blk6_c1|S[2]~1_combout\ $ (((\Csel[5]~5_combout\ & (\blk6_c1|C[2]~0_combout\)) # (!\Csel[5]~5_combout\ & ((\blk6_c0|C[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c1|C[2]~0_combout\,
	datab => \blk6_c1|S[2]~1_combout\,
	datac => \blk6_c0|C[2]~0_combout\,
	datad => \Csel[5]~5_combout\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X114_Y58_N10
\blk6_c0|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c0|C[3]~1_combout\ = (\B[30]~input_o\ & \blk6_c0|C[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \blk6_c0|C[2]~0_combout\,
	combout => \blk6_c0|C[3]~1_combout\);

-- Location: LCCOMB_X114_Y58_N28
\blk6_c0|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c0|C[3]~2_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # (\blk6_c0|C[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \blk6_c0|C[2]~0_combout\,
	combout => \blk6_c0|C[3]~2_combout\);

-- Location: IOIBUF_X115_Y57_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X114_Y58_N22
\blk6_c0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c0|S\(3) = \B[31]~input_o\ $ (\A[31]~input_o\ $ (((\blk6_c0|C[3]~1_combout\) # (\blk6_c0|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c0|C[3]~1_combout\,
	datab => \blk6_c0|C[3]~2_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \blk6_c0|S\(3));

-- Location: LCCOMB_X114_Y58_N6
\blk6_c1|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|C[3]~2_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # (\blk6_c1|C[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \blk6_c1|C[2]~0_combout\,
	combout => \blk6_c1|C[3]~2_combout\);

-- Location: LCCOMB_X114_Y58_N20
\blk6_c1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|C[3]~1_combout\ = (\B[30]~input_o\ & \blk6_c1|C[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \blk6_c1|C[2]~0_combout\,
	combout => \blk6_c1|C[3]~1_combout\);

-- Location: LCCOMB_X114_Y58_N8
\blk6_c1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|S\(3) = \B[31]~input_o\ $ (\A[31]~input_o\ $ (((\blk6_c1|C[3]~2_combout\) # (\blk6_c1|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c1|C[3]~2_combout\,
	datab => \blk6_c1|C[3]~1_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \blk6_c1|S\(3));

-- Location: LCCOMB_X114_Y58_N0
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = (\Csel[5]~5_combout\ & ((\blk6_c1|S\(3)))) # (!\Csel[5]~5_combout\ & (\blk6_c0|S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c0|S\(3),
	datab => \Csel[5]~5_combout\,
	datac => \blk6_c1|S\(3),
	combout => \S~29_combout\);

-- Location: LCCOMB_X114_Y58_N12
\blk6_c0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c0|Cout~0_combout\ = (\B[31]~input_o\ & ((\blk6_c0|C[3]~1_combout\) # ((\blk6_c0|C[3]~2_combout\) # (\A[31]~input_o\)))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & ((\blk6_c0|C[3]~1_combout\) # (\blk6_c0|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c0|C[3]~1_combout\,
	datab => \blk6_c0|C[3]~2_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \blk6_c0|Cout~0_combout\);

-- Location: LCCOMB_X114_Y58_N26
\blk6_c1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|Cout~0_combout\ = (\B[31]~input_o\ & ((\blk6_c1|C[3]~2_combout\) # ((\blk6_c1|C[3]~1_combout\) # (\A[31]~input_o\)))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & ((\blk6_c1|C[3]~2_combout\) # (\blk6_c1|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c1|C[3]~2_combout\,
	datab => \blk6_c1|C[3]~1_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \blk6_c1|Cout~0_combout\);

-- Location: LCCOMB_X114_Y58_N14
\Csel~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel~6_combout\ = (\Csel[5]~5_combout\ & ((\blk6_c1|Cout~0_combout\))) # (!\Csel[5]~5_combout\ & (\blk6_c0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c0|Cout~0_combout\,
	datab => \Csel[5]~5_combout\,
	datac => \blk6_c1|Cout~0_combout\,
	combout => \Csel~6_combout\);

-- Location: LCCOMB_X114_Y58_N16
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\Csel[5]~5_combout\ & ((!\blk6_c1|Cout~0_combout\))) # (!\Csel[5]~5_combout\ & (\blk6_c0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c0|Cout~0_combout\,
	datab => \Csel[5]~5_combout\,
	datac => \blk6_c1|Cout~0_combout\,
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


