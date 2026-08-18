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

-- DATE "04/08/2026 16:11:39"

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
-- B[6]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \s64~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \s64~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \s64~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \s64~1_combout\ : std_logic;
SIGNAL \s64[2][4]~3_combout\ : std_logic;
SIGNAL \s64[2][4]~5_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \s64[2][1]~20_combout\ : std_logic;
SIGNAL \s64~22_combout\ : std_logic;
SIGNAL \s64[2][1]~23_combout\ : std_logic;
SIGNAL \s64[2][1]~24_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \s64~21_combout\ : std_logic;
SIGNAL \s64[2][0]~25_combout\ : std_logic;
SIGNAL \s64[2][0]~26_combout\ : std_logic;
SIGNAL \s64[3][0]~27_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \s64[1][8]~17_combout\ : std_logic;
SIGNAL \s64[1][8]~18_combout\ : std_logic;
SIGNAL \s64~15_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \s64[1][10]~6_combout\ : std_logic;
SIGNAL \s64[1][10]~7_combout\ : std_logic;
SIGNAL \s64~16_combout\ : std_logic;
SIGNAL \s64~19_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \s64[1][14]~8_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \s64[1][14]~9_combout\ : std_logic;
SIGNAL \s64[2][12]~10_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \s64[1][12]~11_combout\ : std_logic;
SIGNAL \s64[1][12]~12_combout\ : std_logic;
SIGNAL \s64[2][12]~13_combout\ : std_logic;
SIGNAL \s64[3][8]~14_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \fill64~0_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \fill32~0_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \s64[2][7]~50_combout\ : std_logic;
SIGNAL \s64~28_combout\ : std_logic;
SIGNAL \s64[2][5]~51_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \s64~33_combout\ : std_logic;
SIGNAL \s64~32_combout\ : std_logic;
SIGNAL \s64[2][1]~34_combout\ : std_logic;
SIGNAL \s64[2][1]~35_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \s32[2][5]~4_combout\ : std_logic;
SIGNAL \s32[2][5]~5_combout\ : std_logic;
SIGNAL \s64~29_combout\ : std_logic;
SIGNAL \s64~30_combout\ : std_logic;
SIGNAL \s64~31_combout\ : std_logic;
SIGNAL \s32[2][5]~10_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \s64~45_combout\ : std_logic;
SIGNAL \s64[1][11]~36_combout\ : std_logic;
SIGNAL \s64[1][11]~37_combout\ : std_logic;
SIGNAL \s64~46_combout\ : std_logic;
SIGNAL \s64[1][9]~47_combout\ : std_logic;
SIGNAL \s64[1][9]~48_combout\ : std_logic;
SIGNAL \s64~49_combout\ : std_logic;
SIGNAL \s64[1][13]~41_combout\ : std_logic;
SIGNAL \s64[1][13]~42_combout\ : std_logic;
SIGNAL \s64[1][15]~38_combout\ : std_logic;
SIGNAL \s64[1][15]~39_combout\ : std_logic;
SIGNAL \s64[2][13]~40_combout\ : std_logic;
SIGNAL \s64[2][13]~43_combout\ : std_logic;
SIGNAL \s64[3][9]~44_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \s64[2][2]~53_combout\ : std_logic;
SIGNAL \s64[2][2]~54_combout\ : std_logic;
SIGNAL \s32[2][6]~6_combout\ : std_logic;
SIGNAL \s32[2][6]~7_combout\ : std_logic;
SIGNAL \s64~52_combout\ : std_logic;
SIGNAL \s32[2][6]~11_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \s64[2][6]~60_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \s64[2][10]~58_combout\ : std_logic;
SIGNAL \s64[2][10]~59_combout\ : std_logic;
SIGNAL \s64[2][14]~55_combout\ : std_logic;
SIGNAL \s64[2][14]~56_combout\ : std_logic;
SIGNAL \s64[3][10]~57_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \s64~64_combout\ : std_logic;
SIGNAL \s64~65_combout\ : std_logic;
SIGNAL \s32[2][7]~8_combout\ : std_logic;
SIGNAL \s32[2][7]~9_combout\ : std_logic;
SIGNAL \s64[2][3]~61_combout\ : std_logic;
SIGNAL \s64[2][3]~62_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \s64[2][7]~63_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \s64[2][11]~69_combout\ : std_logic;
SIGNAL \s64[2][11]~70_combout\ : std_logic;
SIGNAL \s64[2][15]~66_combout\ : std_logic;
SIGNAL \s64[2][15]~67_combout\ : std_logic;
SIGNAL \s64[3][11]~68_combout\ : std_logic;
SIGNAL \s64[3][11]~71_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \s64[3][4]~76_combout\ : std_logic;
SIGNAL \s64[3][4]~77_combout\ : std_logic;
SIGNAL \s64[3][12]~72_combout\ : std_logic;
SIGNAL \s64[2][12]~73_combout\ : std_logic;
SIGNAL \s64[3][12]~74_combout\ : std_logic;
SIGNAL \s64[3][12]~75_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
SIGNAL \Y~51_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \s64[3][5]~80_combout\ : std_logic;
SIGNAL \s64[3][5]~81_combout\ : std_logic;
SIGNAL \s64[3][13]~78_combout\ : std_logic;
SIGNAL \s64[3][13]~79_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \Y~54_combout\ : std_logic;
SIGNAL \Y~55_combout\ : std_logic;
SIGNAL \s64[3][14]~82_combout\ : std_logic;
SIGNAL \s64[3][14]~83_combout\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \Y~56_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \s64[3][6]~84_combout\ : std_logic;
SIGNAL \s64[3][6]~85_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \s64[3][15]~86_combout\ : std_logic;
SIGNAL \s64[3][15]~87_combout\ : std_logic;
SIGNAL \s64[3][7]~88_combout\ : std_logic;
SIGNAL \s64[3][7]~89_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
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

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X40_Y73_N2
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~38_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~43_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~47_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~52_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~55_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~58_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~62_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~67_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~70_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~72_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~74_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~76_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~78_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~80_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~82_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOIBUF_X67_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X57_Y70_N30
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (!\B[4]~input_o\ & (!\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~27_combout\);

-- Location: IOIBUF_X52_Y73_N15
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X56_Y70_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X55_Y69_N24
\s64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~0_combout\ = (\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64~0_combout\);

-- Location: IOIBUF_X52_Y73_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X58_Y69_N4
\s64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~4_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \s64~4_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X55_Y69_N26
\s64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~2_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	combout => \s64~2_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X58_Y69_N8
\s64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~1_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	combout => \s64~1_combout\);

-- Location: LCCOMB_X58_Y69_N2
\s64[2][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][4]~3_combout\ = (\Equal0~0_combout\ & ((\B[1]~input_o\) # ((\s64~1_combout\)))) # (!\Equal0~0_combout\ & (!\B[1]~input_o\ & (\s64~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~2_combout\,
	datad => \s64~1_combout\,
	combout => \s64[2][4]~3_combout\);

-- Location: LCCOMB_X58_Y69_N30
\s64[2][4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][4]~5_combout\ = (\B[1]~input_o\ & ((\s64[2][4]~3_combout\ & ((\s64~4_combout\))) # (!\s64[2][4]~3_combout\ & (\s64~0_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~0_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~4_combout\,
	datad => \s64[2][4]~3_combout\,
	combout => \s64[2][4]~5_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X57_Y69_N8
\s64[2][1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~20_combout\ = (\B[1]~input_o\) # ((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \s64[2][1]~20_combout\);

-- Location: LCCOMB_X58_Y69_N10
\s64~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~22_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \s64~22_combout\);

-- Location: LCCOMB_X57_Y69_N18
\s64[2][1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~23_combout\ = \B[1]~input_o\ $ (((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \s64[2][1]~23_combout\);

-- Location: LCCOMB_X57_Y69_N28
\s64[2][1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~24_combout\ = (\ShiftFN[1]~input_o\ & (((!\B[1]~input_o\ & \B[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\) # ((!\B[1]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[2][1]~24_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X58_Y69_N24
\s64~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~21_combout\ = (!\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \s64~21_combout\);

-- Location: LCCOMB_X58_Y69_N20
\s64[2][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~25_combout\ = (\s64[2][1]~23_combout\ & (((!\s64[2][1]~24_combout\)))) # (!\s64[2][1]~23_combout\ & ((\s64[2][1]~24_combout\ & ((\s64~21_combout\))) # (!\s64[2][1]~24_combout\ & (\s64~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~22_combout\,
	datab => \s64[2][1]~23_combout\,
	datac => \s64[2][1]~24_combout\,
	datad => \s64~21_combout\,
	combout => \s64[2][0]~25_combout\);

-- Location: LCCOMB_X58_Y69_N14
\s64[2][0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~26_combout\ = (\s64[2][1]~20_combout\ & (\s64[2][0]~25_combout\)) # (!\s64[2][1]~20_combout\ & ((\s64[2][0]~25_combout\ & ((\A[0]~input_o\))) # (!\s64[2][0]~25_combout\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][1]~20_combout\,
	datab => \s64[2][0]~25_combout\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \s64[2][0]~26_combout\);

-- Location: LCCOMB_X53_Y69_N24
\s64[3][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][0]~27_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][4]~5_combout\))) # (!\B[2]~input_o\ & (((\s64[2][0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][4]~5_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][0]~26_combout\,
	combout => \s64[3][0]~27_combout\);

-- Location: IOIBUF_X42_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X54_Y69_N16
\s64[1][8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][8]~17_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[9]~input_o\)))) # (!\B[0]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \s64[1][8]~17_combout\);

-- Location: LCCOMB_X54_Y69_N10
\s64[1][8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][8]~18_combout\ = (\s64[1][8]~17_combout\) # ((\A[7]~input_o\ & (\B[0]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \s64[1][8]~17_combout\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][8]~18_combout\);

-- Location: LCCOMB_X55_Y69_N20
\s64~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~15_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64~15_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X54_Y69_N0
\s64[1][10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][10]~6_combout\ = (\B[0]~input_o\ & (\A[11]~input_o\ & ((!\Equal0~0_combout\)))) # (!\B[0]~input_o\ & (((\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][10]~6_combout\);

-- Location: LCCOMB_X54_Y69_N18
\s64[1][10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][10]~7_combout\ = (\s64[1][10]~6_combout\) # ((\A[9]~input_o\ & (\B[0]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \s64[1][10]~6_combout\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][10]~7_combout\);

-- Location: LCCOMB_X54_Y69_N6
\s64~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~16_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~15_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][10]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~15_combout\,
	datab => \s64[1][10]~7_combout\,
	datac => \B[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64~16_combout\);

-- Location: LCCOMB_X54_Y69_N4
\s64~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~19_combout\ = (\s64~16_combout\) # ((\s64[1][8]~18_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][8]~18_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~16_combout\,
	combout => \s64~19_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X57_Y69_N16
\s64[1][14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][14]~8_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[15]~input_o\)))) # (!\B[0]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \A[15]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][14]~8_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X57_Y69_N26
\s64[1][14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][14]~9_combout\ = (\s64[1][14]~8_combout\) # ((\Equal0~0_combout\ & (\A[13]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][14]~8_combout\,
	datac => \A[13]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][14]~9_combout\);

-- Location: LCCOMB_X53_Y69_N8
\s64[2][12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][12]~10_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][10]~7_combout\))) # (!\Equal0~0_combout\ & (\s64[1][14]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][14]~9_combout\,
	datab => \s64[1][10]~7_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][12]~10_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X57_Y69_N4
\s64[1][12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][12]~11_combout\ = (\B[0]~input_o\ & (\A[13]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \A[12]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][12]~11_combout\);

-- Location: LCCOMB_X54_Y69_N12
\s64[1][12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][12]~12_combout\ = (\s64[1][12]~11_combout\) # ((\A[11]~input_o\ & (\B[0]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][12]~11_combout\,
	datab => \A[11]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][12]~12_combout\);

-- Location: LCCOMB_X53_Y69_N18
\s64[2][12]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][12]~13_combout\ = (\s64[2][12]~10_combout\) # ((\s64[1][12]~12_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][12]~10_combout\,
	datac => \s64[1][12]~12_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][12]~13_combout\);

-- Location: LCCOMB_X53_Y69_N20
\s64[3][8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][8]~14_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][4]~5_combout\))) # (!\Equal0~0_combout\ & (\s64[2][12]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][12]~13_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][4]~5_combout\,
	combout => \s64[3][8]~14_combout\);

-- Location: LCCOMB_X57_Y70_N16
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (!\B[5]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Y~22_combout\);

-- Location: LCCOMB_X57_Y70_N18
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (!\Equal0~0_combout\ & (\Y~22_combout\ & (\B[3]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Y~22_combout\,
	datac => \B[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~23_combout\);

-- Location: LCCOMB_X53_Y69_N30
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\Y~23_combout\ & ((\s64[3][8]~14_combout\) # ((\s64~19_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~19_combout\,
	datab => \s64[3][8]~14_combout\,
	datac => \B[2]~input_o\,
	datad => \Y~23_combout\,
	combout => \Y~24_combout\);

-- Location: LCCOMB_X57_Y69_N6
\fill64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill64~0_combout\ = (\ShiftFN[1]~input_o\ & (\A[15]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \fill64~0_combout\);

-- Location: LCCOMB_X57_Y70_N26
\Y~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = (\fill64~0_combout\ & (!\ExtWord~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~83_combout\);

-- Location: LCCOMB_X56_Y70_N18
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (!\B[3]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~25_combout\);

-- Location: LCCOMB_X55_Y69_N14
\fill32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill32~0_combout\ = (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[7]~input_o\,
	combout => \fill32~0_combout\);

-- Location: LCCOMB_X57_Y70_N4
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (\Y~83_combout\) # ((!\Y~25_combout\ & (\fill32~0_combout\ & \ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~83_combout\,
	datab => \Y~25_combout\,
	datac => \fill32~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~26_combout\);

-- Location: LCCOMB_X53_Y69_N2
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\Y~24_combout\) # ((\Y~26_combout\) # ((\Y~27_combout\ & \s64[3][0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~27_combout\,
	datab => \s64[3][0]~27_combout\,
	datac => \Y~24_combout\,
	datad => \Y~26_combout\,
	combout => \Y~28_combout\);

-- Location: LCCOMB_X54_Y70_N4
\s64[2][7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][7]~50_combout\ = (\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64[2][7]~50_combout\);

-- Location: LCCOMB_X55_Y69_N8
\s64~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~28_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	combout => \s64~28_combout\);

-- Location: LCCOMB_X54_Y70_N14
\s64[2][5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][5]~51_combout\ = (\B[1]~input_o\ & (\s64[2][7]~50_combout\)) # (!\B[1]~input_o\ & ((\s64~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[2][7]~50_combout\,
	datac => \s64~28_combout\,
	combout => \s64[2][5]~51_combout\);

-- Location: LCCOMB_X55_Y70_N28
\Y~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = (\s64[2][5]~51_combout\ & (\B[2]~input_o\ & (!\B[3]~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][5]~51_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Y~36_combout\);

-- Location: LCCOMB_X58_Y69_N12
\s64~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~33_combout\ = (\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	combout => \s64~33_combout\);

-- Location: LCCOMB_X58_Y69_N18
\s64~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~32_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \s64~32_combout\);

-- Location: LCCOMB_X58_Y69_N22
\s64[2][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~34_combout\ = (\s64[2][1]~23_combout\ & (((!\s64[2][1]~24_combout\)))) # (!\s64[2][1]~23_combout\ & ((\s64[2][1]~24_combout\ & ((\s64~32_combout\))) # (!\s64[2][1]~24_combout\ & (\s64~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~33_combout\,
	datab => \s64[2][1]~23_combout\,
	datac => \s64~32_combout\,
	datad => \s64[2][1]~24_combout\,
	combout => \s64[2][1]~34_combout\);

-- Location: LCCOMB_X58_Y69_N0
\s64[2][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~35_combout\ = (\s64[2][1]~20_combout\ & (((\s64[2][1]~34_combout\)))) # (!\s64[2][1]~20_combout\ & ((\s64[2][1]~34_combout\ & (\A[1]~input_o\)) # (!\s64[2][1]~34_combout\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][1]~20_combout\,
	datab => \A[1]~input_o\,
	datac => \s64[2][1]~34_combout\,
	datad => \A[2]~input_o\,
	combout => \s64[2][1]~35_combout\);

-- Location: LCCOMB_X55_Y70_N22
\Y~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = (\Y~36_combout\) # ((!\B[3]~input_o\ & (\s64[2][1]~35_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y~36_combout\,
	datac => \s64[2][1]~35_combout\,
	datad => \B[2]~input_o\,
	combout => \Y~37_combout\);

-- Location: LCCOMB_X57_Y70_N2
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\B[3]~input_o\) # ((\B[4]~input_o\) # (!\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~30_combout\);

-- Location: LCCOMB_X57_Y70_N24
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (\ExtWord~input_o\ & ((\B[2]~input_o\) # ((\B[3]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~29_combout\);

-- Location: LCCOMB_X55_Y69_N28
\Y~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = (!\Y~30_combout\ & ((\ShiftFN[1]~input_o\) # ((!\ShiftFN[0]~input_o\) # (!\Y~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~30_combout\,
	datac => \Y~29_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~84_combout\);

-- Location: LCCOMB_X54_Y70_N0
\s32[2][5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][5]~4_combout\ = (\A[7]~input_o\ & (((\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) # (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \s32[2][5]~4_combout\);

-- Location: LCCOMB_X54_Y70_N26
\s32[2][5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][5]~5_combout\ = (!\Equal0~0_combout\ & ((\B[1]~input_o\ & (\s32[2][5]~4_combout\)) # (!\B[1]~input_o\ & ((\s64~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s32[2][5]~4_combout\,
	datac => \s64~28_combout\,
	datad => \Equal0~0_combout\,
	combout => \s32[2][5]~5_combout\);

-- Location: LCCOMB_X55_Y69_N18
\s64~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~29_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \s64~29_combout\);

-- Location: LCCOMB_X58_Y69_N16
\s64~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~30_combout\ = (\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \s64~30_combout\);

-- Location: LCCOMB_X54_Y70_N20
\s64~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~31_combout\ = (\s64~29_combout\) # ((\B[1]~input_o\ & \s64~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64~29_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~30_combout\,
	combout => \s64~31_combout\);

-- Location: LCCOMB_X54_Y70_N22
\s32[2][5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][5]~10_combout\ = (\s32[2][5]~5_combout\) # ((!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \s64~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \s32[2][5]~5_combout\,
	datad => \s64~31_combout\,
	combout => \s32[2][5]~10_combout\);

-- Location: LCCOMB_X55_Y69_N12
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\Y~29_combout\ & (((\fill32~0_combout\ & \Y~30_combout\)))) # (!\Y~29_combout\ & ((\fill64~0_combout\) # ((!\Y~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~29_combout\,
	datab => \fill64~0_combout\,
	datac => \fill32~0_combout\,
	datad => \Y~30_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X55_Y70_N24
\Y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = (\Y~84_combout\ & ((\Y~31_combout\ & (\s64[2][1]~35_combout\)) # (!\Y~31_combout\ & ((\s32[2][5]~10_combout\))))) # (!\Y~84_combout\ & (((\Y~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~84_combout\,
	datab => \s64[2][1]~35_combout\,
	datac => \s32[2][5]~10_combout\,
	datad => \Y~31_combout\,
	combout => \Y~32_combout\);

-- Location: LCCOMB_X57_Y70_N28
\Y~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = (!\B[5]~input_o\ & (!\B[4]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~33_combout\);

-- Location: LCCOMB_X54_Y70_N16
\s64~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~45_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	combout => \s64~45_combout\);

-- Location: LCCOMB_X54_Y69_N30
\s64[1][11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][11]~36_combout\ = (\B[0]~input_o\ & (\A[12]~input_o\ & ((!\Equal0~0_combout\)))) # (!\B[0]~input_o\ & (((\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][11]~36_combout\);

-- Location: LCCOMB_X54_Y69_N24
\s64[1][11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][11]~37_combout\ = (\s64[1][11]~36_combout\) # ((\A[10]~input_o\ & (\B[0]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][11]~36_combout\,
	datab => \A[10]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][11]~37_combout\);

-- Location: LCCOMB_X54_Y69_N26
\s64~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~46_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~45_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][11]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~45_combout\,
	datab => \s64[1][11]~37_combout\,
	datac => \B[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64~46_combout\);

-- Location: LCCOMB_X54_Y69_N20
\s64[1][9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][9]~47_combout\ = (\B[0]~input_o\ & (((\A[10]~input_o\ & !\Equal0~0_combout\)))) # (!\B[0]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][9]~47_combout\);

-- Location: LCCOMB_X54_Y69_N14
\s64[1][9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][9]~48_combout\ = (\s64[1][9]~47_combout\) # ((\A[8]~input_o\ & (\B[0]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \s64[1][9]~47_combout\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][9]~48_combout\);

-- Location: LCCOMB_X54_Y70_N2
\s64~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~49_combout\ = (\s64~46_combout\) # ((\s64[1][9]~48_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~46_combout\,
	datab => \s64[1][9]~48_combout\,
	datac => \B[1]~input_o\,
	combout => \s64~49_combout\);

-- Location: LCCOMB_X57_Y69_N10
\s64[1][13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][13]~41_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[14]~input_o\)))) # (!\B[0]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \A[14]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][13]~41_combout\);

-- Location: LCCOMB_X57_Y69_N20
\s64[1][13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][13]~42_combout\ = (\s64[1][13]~41_combout\) # ((\Equal0~0_combout\ & (\A[12]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][13]~41_combout\,
	datab => \Equal0~0_combout\,
	datac => \A[12]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][13]~42_combout\);

-- Location: LCCOMB_X57_Y69_N30
\s64[1][15]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][15]~38_combout\ = (\A[15]~input_o\ & (((\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) # (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][15]~38_combout\);

-- Location: LCCOMB_X57_Y69_N24
\s64[1][15]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][15]~39_combout\ = (\s64[1][15]~38_combout\) # ((\Equal0~0_combout\ & (\A[14]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][15]~38_combout\,
	datab => \Equal0~0_combout\,
	datac => \A[14]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64[1][15]~39_combout\);

-- Location: LCCOMB_X56_Y69_N24
\s64[2][13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][13]~40_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][11]~37_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][15]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[1][11]~37_combout\,
	datad => \s64[1][15]~39_combout\,
	combout => \s64[2][13]~40_combout\);

-- Location: LCCOMB_X55_Y69_N30
\s64[2][13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][13]~43_combout\ = (\s64[2][13]~40_combout\) # ((!\B[1]~input_o\ & \s64[1][13]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \s64[1][13]~42_combout\,
	datad => \s64[2][13]~40_combout\,
	combout => \s64[2][13]~43_combout\);

-- Location: LCCOMB_X54_Y70_N6
\s64[3][9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][9]~44_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64~31_combout\))) # (!\Equal0~0_combout\ & (\s64[2][13]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][13]~43_combout\,
	datab => \s64~31_combout\,
	datac => \B[2]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][9]~44_combout\);

-- Location: LCCOMB_X56_Y70_N4
\Y~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = (\B[3]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~34_combout\);

-- Location: LCCOMB_X55_Y70_N10
\Y~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = (\Y~34_combout\ & ((\s64[3][9]~44_combout\) # ((\s64~49_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~49_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[3][9]~44_combout\,
	datad => \Y~34_combout\,
	combout => \Y~35_combout\);

-- Location: LCCOMB_X55_Y70_N0
\Y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = (\Y~33_combout\ & ((\Y~37_combout\) # ((\Y~35_combout\)))) # (!\Y~33_combout\ & (((\Y~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~37_combout\,
	datab => \Y~32_combout\,
	datac => \Y~33_combout\,
	datad => \Y~35_combout\,
	combout => \Y~38_combout\);

-- Location: LCCOMB_X58_Y69_N26
\s64[2][2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][2]~53_combout\ = (\Equal0~0_combout\ & ((\B[1]~input_o\) # ((\s64~4_combout\)))) # (!\Equal0~0_combout\ & (!\B[1]~input_o\ & ((\s64~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~4_combout\,
	datad => \s64~22_combout\,
	combout => \s64[2][2]~53_combout\);

-- Location: LCCOMB_X58_Y69_N28
\s64[2][2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][2]~54_combout\ = (\s64[2][2]~53_combout\ & (((\s64~21_combout\)) # (!\B[1]~input_o\))) # (!\s64[2][2]~53_combout\ & (\B[1]~input_o\ & (\s64~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][2]~53_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~2_combout\,
	datad => \s64~21_combout\,
	combout => \s64[2][2]~54_combout\);

-- Location: LCCOMB_X55_Y69_N2
\s32[2][6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][6]~6_combout\ = (\A[7]~input_o\ & (((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)) # (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[7]~input_o\,
	combout => \s32[2][6]~6_combout\);

-- Location: LCCOMB_X55_Y69_N4
\s32[2][6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][6]~7_combout\ = (\B[1]~input_o\ & (((\s32[2][6]~6_combout\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\s32[2][6]~6_combout\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \s32[2][6]~6_combout\,
	combout => \s32[2][6]~7_combout\);

-- Location: LCCOMB_X55_Y69_N0
\s64~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~52_combout\ = (\B[1]~input_o\ & ((\s64~1_combout\))) # (!\B[1]~input_o\ & (\s64~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \s64~15_combout\,
	datad => \s64~1_combout\,
	combout => \s64~52_combout\);

-- Location: LCCOMB_X55_Y69_N22
\s32[2][6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][6]~11_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\s32[2][6]~7_combout\)) # (!\ShiftFN[1]~input_o\ & ((\s64~52_combout\))))) # (!\ShiftFN[0]~input_o\ & (\s32[2][6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \s32[2][6]~7_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \s64~52_combout\,
	combout => \s32[2][6]~11_combout\);

-- Location: LCCOMB_X55_Y70_N26
\Y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = (\Y~84_combout\ & ((\Y~31_combout\ & (\s64[2][2]~54_combout\)) # (!\Y~31_combout\ & ((\s32[2][6]~11_combout\))))) # (!\Y~84_combout\ & (((\Y~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~84_combout\,
	datab => \s64[2][2]~54_combout\,
	datac => \s32[2][6]~11_combout\,
	datad => \Y~31_combout\,
	combout => \Y~39_combout\);

-- Location: LCCOMB_X54_Y69_N28
\s64[2][6]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][6]~60_combout\ = (\B[1]~input_o\ & (\s64[1][8]~18_combout\)) # (!\B[1]~input_o\ & ((\s64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][8]~18_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~0_combout\,
	combout => \s64[2][6]~60_combout\);

-- Location: LCCOMB_X55_Y70_N16
\Y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][6]~60_combout\))) # (!\B[2]~input_o\ & (((\s64[2][2]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][6]~60_combout\,
	datac => \s64[2][2]~54_combout\,
	datad => \B[2]~input_o\,
	combout => \Y~41_combout\);

-- Location: LCCOMB_X56_Y70_N22
\Y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = (!\B[3]~input_o\ & \Y~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Y~41_combout\,
	combout => \Y~42_combout\);

-- Location: LCCOMB_X54_Y69_N8
\s64[2][10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][10]~58_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][8]~18_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][12]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][8]~18_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][12]~12_combout\,
	combout => \s64[2][10]~58_combout\);

-- Location: LCCOMB_X54_Y69_N2
\s64[2][10]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][10]~59_combout\ = (\s64[2][10]~58_combout\) # ((!\B[1]~input_o\ & \s64[1][10]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][10]~58_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][10]~7_combout\,
	combout => \s64[2][10]~59_combout\);

-- Location: LCCOMB_X53_Y69_N12
\s64[2][14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][14]~55_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][12]~12_combout\)) # (!\Equal0~0_combout\ & ((\fill64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][12]~12_combout\,
	datac => \fill64~0_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][14]~55_combout\);

-- Location: LCCOMB_X53_Y69_N22
\s64[2][14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][14]~56_combout\ = (\s64[2][14]~55_combout\) # ((!\B[1]~input_o\ & \s64[1][14]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][14]~55_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[1][14]~9_combout\,
	combout => \s64[2][14]~56_combout\);

-- Location: LCCOMB_X55_Y70_N4
\s64[3][10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][10]~57_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~52_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][14]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~52_combout\,
	datac => \s64[2][14]~56_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][10]~57_combout\);

-- Location: LCCOMB_X55_Y70_N14
\Y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = (\Y~34_combout\ & ((\s64[3][10]~57_combout\) # ((\s64[2][10]~59_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][10]~59_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[3][10]~57_combout\,
	datad => \Y~34_combout\,
	combout => \Y~40_combout\);

-- Location: LCCOMB_X56_Y70_N16
\Y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = (\Y~33_combout\ & (((\Y~42_combout\) # (\Y~40_combout\)))) # (!\Y~33_combout\ & (\Y~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~39_combout\,
	datab => \Y~33_combout\,
	datac => \Y~42_combout\,
	datad => \Y~40_combout\,
	combout => \Y~43_combout\);

-- Location: LCCOMB_X55_Y69_N6
\s64~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~64_combout\ = (\B[0]~input_o\ & (\B[1]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \s64~64_combout\);

-- Location: LCCOMB_X55_Y69_N16
\s64~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~65_combout\ = (\B[0]~input_o\ & ((\s64~64_combout\ & (\A[4]~input_o\)) # (!\s64~64_combout\ & ((\A[6]~input_o\))))) # (!\B[0]~input_o\ & (((\s64~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[6]~input_o\,
	datad => \s64~64_combout\,
	combout => \s64~65_combout\);

-- Location: LCCOMB_X55_Y69_N10
\s32[2][7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][7]~8_combout\ = (\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\) # ((!\B[1]~input_o\ & !\B[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (!\B[1]~input_o\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \s32[2][7]~8_combout\);

-- Location: LCCOMB_X56_Y69_N28
\s32[2][7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][7]~9_combout\ = (\Equal0~0_combout\ & (((\s64~65_combout\)))) # (!\Equal0~0_combout\ & (\A[7]~input_o\ & ((\s32[2][7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[7]~input_o\,
	datac => \s64~65_combout\,
	datad => \s32[2][7]~8_combout\,
	combout => \s32[2][7]~9_combout\);

-- Location: LCCOMB_X58_Y69_N6
\s64[2][3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][3]~61_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~30_combout\))) # (!\Equal0~0_combout\ & (\s64~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~33_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64~30_combout\,
	combout => \s64[2][3]~61_combout\);

-- Location: LCCOMB_X57_Y69_N22
\s64[2][3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][3]~62_combout\ = (\B[1]~input_o\ & ((\s64[2][3]~61_combout\ & ((\s64~32_combout\))) # (!\s64[2][3]~61_combout\ & (\s64~28_combout\)))) # (!\B[1]~input_o\ & (((\s64[2][3]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~28_combout\,
	datab => \s64~32_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][3]~61_combout\,
	combout => \s64[2][3]~62_combout\);

-- Location: LCCOMB_X56_Y69_N30
\Y~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = (\Y~31_combout\ & (((\s64[2][3]~62_combout\) # (!\Y~84_combout\)))) # (!\Y~31_combout\ & (\s32[2][7]~9_combout\ & (\Y~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~31_combout\,
	datab => \s32[2][7]~9_combout\,
	datac => \Y~84_combout\,
	datad => \s64[2][3]~62_combout\,
	combout => \Y~46_combout\);

-- Location: LCCOMB_X54_Y70_N8
\s64[2][7]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][7]~63_combout\ = (\B[1]~input_o\ & (\s64[1][9]~48_combout\)) # (!\B[1]~input_o\ & ((\s64[2][7]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][9]~48_combout\,
	datac => \s64[2][7]~50_combout\,
	combout => \s64[2][7]~63_combout\);

-- Location: LCCOMB_X56_Y69_N2
\Y~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][7]~63_combout\))) # (!\B[2]~input_o\ & (((\s64[2][3]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][7]~63_combout\,
	datad => \s64[2][3]~62_combout\,
	combout => \Y~44_combout\);

-- Location: LCCOMB_X54_Y69_N22
\s64[2][11]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][11]~69_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][9]~48_combout\))) # (!\Equal0~0_combout\ & (\s64[1][13]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][13]~42_combout\,
	datab => \s64[1][9]~48_combout\,
	datac => \B[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][11]~69_combout\);

-- Location: LCCOMB_X56_Y69_N22
\s64[2][11]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][11]~70_combout\ = (\s64[2][11]~69_combout\) # ((\s64[1][11]~37_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][11]~37_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[2][11]~69_combout\,
	combout => \s64[2][11]~70_combout\);

-- Location: LCCOMB_X57_Y69_N0
\s64[2][15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][15]~66_combout\ = (\B[1]~input_o\ & (((!\Equal0~0_combout\ & \fill64~0_combout\)))) # (!\B[1]~input_o\ & (\s64[1][15]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][15]~39_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \fill64~0_combout\,
	combout => \s64[2][15]~66_combout\);

-- Location: LCCOMB_X57_Y69_N2
\s64[2][15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][15]~67_combout\ = (\s64[2][15]~66_combout\) # ((\Equal0~0_combout\ & (\B[1]~input_o\ & \s64[1][13]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][15]~66_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][13]~42_combout\,
	combout => \s64[2][15]~67_combout\);

-- Location: LCCOMB_X56_Y69_N20
\s64[3][11]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][11]~68_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~65_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][15]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64~65_combout\,
	datad => \s64[2][15]~67_combout\,
	combout => \s64[3][11]~68_combout\);

-- Location: LCCOMB_X56_Y69_N8
\s64[3][11]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][11]~71_combout\ = (\s64[3][11]~68_combout\) # ((!\B[2]~input_o\ & \s64[2][11]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \s64[2][11]~70_combout\,
	datad => \s64[3][11]~68_combout\,
	combout => \s64[3][11]~71_combout\);

-- Location: LCCOMB_X56_Y69_N18
\Y~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = (\B[3]~input_o\ & (!\Equal0~0_combout\ & ((\s64[3][11]~71_combout\)))) # (!\B[3]~input_o\ & (((\Y~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Y~44_combout\,
	datac => \s64[3][11]~71_combout\,
	datad => \B[3]~input_o\,
	combout => \Y~45_combout\);

-- Location: LCCOMB_X56_Y69_N16
\Y~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = (\Y~33_combout\ & ((\Y~45_combout\))) # (!\Y~33_combout\ & (\Y~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~46_combout\,
	datab => \Y~45_combout\,
	datac => \Y~33_combout\,
	combout => \Y~47_combout\);

-- Location: LCCOMB_X57_Y70_N14
\Y~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = (\ExtWord~input_o\) # ((!\B[4]~input_o\ & (!\B[3]~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~48_combout\);

-- Location: LCCOMB_X53_Y70_N18
\Y~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = (\Y~33_combout\ & ((\Y~48_combout\) # ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~48_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~33_combout\,
	combout => \Y~85_combout\);

-- Location: LCCOMB_X53_Y69_N6
\s64[3][4]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][4]~76_combout\ = (\B[2]~input_o\ & (\Equal0~0_combout\ & ((\s64[2][0]~26_combout\)))) # (!\B[2]~input_o\ & (((\s64[2][4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][4]~5_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][0]~26_combout\,
	combout => \s64[3][4]~76_combout\);

-- Location: LCCOMB_X53_Y69_N0
\s64[3][4]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][4]~77_combout\ = (\s64[3][4]~76_combout\) # ((!\Equal0~0_combout\ & (\B[2]~input_o\ & \s64~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[3][4]~76_combout\,
	datad => \s64~19_combout\,
	combout => \s64[3][4]~77_combout\);

-- Location: LCCOMB_X57_Y69_N12
\s64[3][12]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][12]~72_combout\ = (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[2]~input_o\,
	combout => \s64[3][12]~72_combout\);

-- Location: LCCOMB_X53_Y69_N16
\s64[2][12]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][12]~73_combout\ = (!\B[1]~input_o\ & \s64[1][12]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \s64[1][12]~12_combout\,
	combout => \s64[2][12]~73_combout\);

-- Location: LCCOMB_X53_Y69_N26
\s64[3][12]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][12]~74_combout\ = (\s64[3][12]~72_combout\) # ((!\B[2]~input_o\ & ((\s64[2][12]~10_combout\) # (\s64[2][12]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][12]~72_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][12]~10_combout\,
	datad => \s64[2][12]~73_combout\,
	combout => \s64[3][12]~74_combout\);

-- Location: LCCOMB_X53_Y69_N4
\s64[3][12]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][12]~75_combout\ = (\s64[3][12]~74_combout\) # ((\Equal0~0_combout\ & (\B[2]~input_o\ & \s64~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[3][12]~74_combout\,
	datad => \s64~19_combout\,
	combout => \s64[3][12]~75_combout\);

-- Location: LCCOMB_X56_Y70_N10
\Y~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = (\fill32~0_combout\ & (((\B[2]~input_o\ & !\Equal0~0_combout\)) # (!\Y~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill32~0_combout\,
	datab => \Y~25_combout\,
	datac => \B[2]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Y~49_combout\);

-- Location: LCCOMB_X56_Y70_N8
\Y~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\B[2]~input_o\ & \Y~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Y~25_combout\,
	combout => \Y~87_combout\);

-- Location: LCCOMB_X56_Y70_N30
\Y~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = (\s64[2][4]~5_combout\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][4]~5_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~86_combout\);

-- Location: LCCOMB_X56_Y70_N12
\Y~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = (\Y~49_combout\) # ((\Y~86_combout\) # ((\Y~87_combout\ & \s64[2][0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~49_combout\,
	datab => \Y~87_combout\,
	datac => \Y~86_combout\,
	datad => \s64[2][0]~26_combout\,
	combout => \Y~50_combout\);

-- Location: LCCOMB_X53_Y70_N24
\Y~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = (\Y~33_combout\ & (((\Y~48_combout\)))) # (!\Y~33_combout\ & ((\Y~48_combout\ & ((\Y~50_combout\))) # (!\Y~48_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \Y~33_combout\,
	datac => \Y~50_combout\,
	datad => \Y~48_combout\,
	combout => \Y~51_combout\);

-- Location: LCCOMB_X53_Y70_N26
\Y~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = (\Y~85_combout\ & ((\Y~51_combout\ & (\s64[3][4]~77_combout\)) # (!\Y~51_combout\ & ((\s64[3][12]~75_combout\))))) # (!\Y~85_combout\ & (((\Y~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~85_combout\,
	datab => \s64[3][4]~77_combout\,
	datac => \s64[3][12]~75_combout\,
	datad => \Y~51_combout\,
	combout => \Y~52_combout\);

-- Location: LCCOMB_X54_Y70_N30
\s64[3][5]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][5]~80_combout\ = (\Equal0~0_combout\ & ((\B[2]~input_o\) # ((\s64~31_combout\)))) # (!\Equal0~0_combout\ & (!\B[2]~input_o\ & (\s64[2][5]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][5]~51_combout\,
	datad => \s64~31_combout\,
	combout => \s64[3][5]~80_combout\);

-- Location: LCCOMB_X54_Y70_N24
\s64[3][5]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][5]~81_combout\ = (\s64[3][5]~80_combout\ & (((\s64[2][1]~35_combout\) # (!\B[2]~input_o\)))) # (!\s64[3][5]~80_combout\ & (\s64~49_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][5]~80_combout\,
	datab => \s64~49_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][1]~35_combout\,
	combout => \s64[3][5]~81_combout\);

-- Location: LCCOMB_X54_Y70_N10
\s64[3][13]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][13]~78_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~49_combout\)) # (!\Equal0~0_combout\ & ((\fill64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~49_combout\,
	datac => \B[2]~input_o\,
	datad => \fill64~0_combout\,
	combout => \s64[3][13]~78_combout\);

-- Location: LCCOMB_X54_Y70_N12
\s64[3][13]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][13]~79_combout\ = (\s64[3][13]~78_combout\) # ((!\B[2]~input_o\ & \s64[2][13]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][13]~78_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][13]~43_combout\,
	combout => \s64[3][13]~79_combout\);

-- Location: LCCOMB_X56_Y70_N26
\Y~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = (\s32[2][5]~10_combout\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[2][5]~10_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~88_combout\);

-- Location: LCCOMB_X56_Y70_N6
\Y~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = (\Y~49_combout\) # ((\Y~88_combout\) # ((\Y~87_combout\ & \s64[2][1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~49_combout\,
	datab => \Y~87_combout\,
	datac => \Y~88_combout\,
	datad => \s64[2][1]~35_combout\,
	combout => \Y~53_combout\);

-- Location: LCCOMB_X53_Y70_N28
\Y~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = (\Y~33_combout\ & (((\Y~48_combout\)))) # (!\Y~33_combout\ & ((\Y~48_combout\ & ((\Y~53_combout\))) # (!\Y~48_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \Y~33_combout\,
	datac => \Y~53_combout\,
	datad => \Y~48_combout\,
	combout => \Y~54_combout\);

-- Location: LCCOMB_X53_Y70_N30
\Y~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = (\Y~85_combout\ & ((\Y~54_combout\ & (\s64[3][5]~81_combout\)) # (!\Y~54_combout\ & ((\s64[3][13]~79_combout\))))) # (!\Y~85_combout\ & (((\Y~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][5]~81_combout\,
	datab => \Y~85_combout\,
	datac => \s64[3][13]~79_combout\,
	datad => \Y~54_combout\,
	combout => \Y~55_combout\);

-- Location: LCCOMB_X55_Y70_N18
\s64[3][14]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][14]~82_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][10]~59_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \fill64~0_combout\,
	datad => \s64[2][10]~59_combout\,
	combout => \s64[3][14]~82_combout\);

-- Location: LCCOMB_X54_Y70_N18
\s64[3][14]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][14]~83_combout\ = (\s64[3][14]~82_combout\) # ((\s64[2][14]~56_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][14]~56_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[3][14]~82_combout\,
	combout => \s64[3][14]~83_combout\);

-- Location: LCCOMB_X56_Y70_N20
\Y~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = (\s32[2][6]~11_combout\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[2][6]~11_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~89_combout\);

-- Location: LCCOMB_X56_Y70_N24
\Y~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = (\Y~49_combout\) # ((\Y~89_combout\) # ((\Y~87_combout\ & \s64[2][2]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~49_combout\,
	datab => \Y~89_combout\,
	datac => \Y~87_combout\,
	datad => \s64[2][2]~54_combout\,
	combout => \Y~56_combout\);

-- Location: LCCOMB_X53_Y70_N8
\Y~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = (\Y~33_combout\ & (((\Y~48_combout\)))) # (!\Y~33_combout\ & ((\Y~48_combout\ & ((\Y~56_combout\))) # (!\Y~48_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \Y~33_combout\,
	datac => \Y~56_combout\,
	datad => \Y~48_combout\,
	combout => \Y~57_combout\);

-- Location: LCCOMB_X55_Y70_N20
\s64[3][6]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][6]~84_combout\ = (\Equal0~0_combout\ & (((\B[2]~input_o\) # (\s64~52_combout\)))) # (!\Equal0~0_combout\ & (\s64[2][6]~60_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][6]~60_combout\,
	datac => \B[2]~input_o\,
	datad => \s64~52_combout\,
	combout => \s64[3][6]~84_combout\);

-- Location: LCCOMB_X55_Y70_N30
\s64[3][6]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][6]~85_combout\ = (\s64[3][6]~84_combout\ & (((\s64[2][2]~54_combout\) # (!\B[2]~input_o\)))) # (!\s64[3][6]~84_combout\ & (\s64[2][10]~59_combout\ & ((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][10]~59_combout\,
	datab => \s64[3][6]~84_combout\,
	datac => \s64[2][2]~54_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][6]~85_combout\);

-- Location: LCCOMB_X53_Y70_N10
\Y~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = (\Y~85_combout\ & ((\Y~57_combout\ & ((\s64[3][6]~85_combout\))) # (!\Y~57_combout\ & (\s64[3][14]~83_combout\)))) # (!\Y~85_combout\ & (((\Y~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~85_combout\,
	datab => \s64[3][14]~83_combout\,
	datac => \Y~57_combout\,
	datad => \s64[3][6]~85_combout\,
	combout => \Y~58_combout\);

-- Location: LCCOMB_X56_Y69_N26
\s64[3][15]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][15]~86_combout\ = (\B[2]~input_o\ & (\fill64~0_combout\ & (!\Equal0~0_combout\))) # (!\B[2]~input_o\ & (((\s64[2][15]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[2][15]~67_combout\,
	combout => \s64[3][15]~86_combout\);

-- Location: LCCOMB_X56_Y69_N4
\s64[3][15]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][15]~87_combout\ = (\s64[3][15]~86_combout\) # ((\B[2]~input_o\ & (\s64[2][11]~70_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][15]~86_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][11]~70_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][15]~87_combout\);

-- Location: LCCOMB_X56_Y69_N6
\s64[3][7]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][7]~88_combout\ = (\B[2]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~65_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][7]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~65_combout\,
	datab => \B[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[2][7]~63_combout\,
	combout => \s64[3][7]~88_combout\);

-- Location: LCCOMB_X56_Y69_N0
\s64[3][7]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][7]~89_combout\ = (\s64[3][7]~88_combout\ & (((\s64[2][3]~62_combout\)) # (!\B[2]~input_o\))) # (!\s64[3][7]~88_combout\ & (\B[2]~input_o\ & (\s64[2][11]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][7]~88_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][11]~70_combout\,
	datad => \s64[2][3]~62_combout\,
	combout => \s64[3][7]~89_combout\);

-- Location: LCCOMB_X56_Y70_N2
\Y~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = (\s64[3][15]~87_combout\ & ((\Y~34_combout\) # ((!\B[3]~input_o\ & \s64[3][7]~89_combout\)))) # (!\s64[3][15]~87_combout\ & (((!\B[3]~input_o\ & \s64[3][7]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][15]~87_combout\,
	datab => \Y~34_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][7]~89_combout\,
	combout => \Y~61_combout\);

-- Location: LCCOMB_X57_Y69_N14
\Y~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = (\B[2]~input_o\ & (\s64[2][3]~62_combout\)) # (!\B[2]~input_o\ & ((\s32[2][7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \s64[2][3]~62_combout\,
	datad => \s32[2][7]~9_combout\,
	combout => \Y~59_combout\);

-- Location: LCCOMB_X57_Y70_N20
\Y~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & ((\Equal0~0_combout\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y~90_combout\);

-- Location: LCCOMB_X57_Y70_N0
\Y~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = (\ExtWord~input_o\ & ((\Y~90_combout\ & (\Y~59_combout\)) # (!\Y~90_combout\ & ((\fill32~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~59_combout\,
	datab => \Y~90_combout\,
	datac => \fill32~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~60_combout\);

-- Location: LCCOMB_X57_Y70_N10
\Y~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = (\Y~60_combout\) # ((\Y~83_combout\) # ((\Y~61_combout\ & \Y~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~61_combout\,
	datab => \Y~60_combout\,
	datac => \Y~83_combout\,
	datad => \Y~33_combout\,
	combout => \Y~62_combout\);

-- Location: LCCOMB_X57_Y70_N22
\Y~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = (!\B[4]~input_o\ & (!\B[3]~input_o\ & (!\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~91_combout\);

-- Location: LCCOMB_X53_Y69_N10
\Y~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = (\Y~91_combout\ & ((\s64[3][8]~14_combout\) # ((\s64~19_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~19_combout\,
	datab => \s64[3][8]~14_combout\,
	datac => \B[2]~input_o\,
	datad => \Y~91_combout\,
	combout => \Y~63_combout\);

-- Location: LCCOMB_X57_Y70_N12
\Y~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = (\Equal0~0_combout\ & (\Y~22_combout\ & (\B[3]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Y~22_combout\,
	datac => \B[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~64_combout\);

-- Location: LCCOMB_X57_Y70_N6
\Y~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = (\B[4]~input_o\) # ((\B[5]~input_o\) # ((\B[3]~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Y~65_combout\);

-- Location: LCCOMB_X57_Y70_N8
\Y~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = (!\Y~60_combout\ & (((\ExtWord~input_o\) # (!\fill64~0_combout\)) # (!\Y~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~65_combout\,
	datab => \Y~60_combout\,
	datac => \fill64~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~66_combout\);

-- Location: LCCOMB_X53_Y69_N28
\Y~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = (\Y~63_combout\) # (((\s64[3][0]~27_combout\ & \Y~64_combout\)) # (!\Y~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~63_combout\,
	datab => \s64[3][0]~27_combout\,
	datac => \Y~64_combout\,
	datad => \Y~66_combout\,
	combout => \Y~67_combout\);

-- Location: LCCOMB_X54_Y70_N28
\Y~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = (\Y~91_combout\ & ((\s64[3][9]~44_combout\) # ((\s64~49_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][9]~44_combout\,
	datab => \s64~49_combout\,
	datac => \B[2]~input_o\,
	datad => \Y~91_combout\,
	combout => \Y~68_combout\);

-- Location: LCCOMB_X55_Y70_N8
\Y~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = (!\B[2]~input_o\ & \Y~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \Y~64_combout\,
	combout => \Y~69_combout\);

-- Location: LCCOMB_X55_Y70_N2
\Y~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = (\Y~68_combout\) # (((\Y~69_combout\ & \s64[2][1]~35_combout\)) # (!\Y~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~68_combout\,
	datab => \Y~69_combout\,
	datac => \Y~66_combout\,
	datad => \s64[2][1]~35_combout\,
	combout => \Y~70_combout\);

-- Location: LCCOMB_X55_Y70_N12
\Y~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = (\Y~91_combout\ & ((\s64[3][10]~57_combout\) # ((\s64[2][10]~59_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][10]~59_combout\,
	datab => \Y~91_combout\,
	datac => \s64[3][10]~57_combout\,
	datad => \B[2]~input_o\,
	combout => \Y~71_combout\);

-- Location: LCCOMB_X55_Y70_N6
\Y~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = (\Y~71_combout\) # (((\s64[2][2]~54_combout\ & \Y~69_combout\)) # (!\Y~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~71_combout\,
	datab => \Y~66_combout\,
	datac => \s64[2][2]~54_combout\,
	datad => \Y~69_combout\,
	combout => \Y~72_combout\);

-- Location: LCCOMB_X56_Y69_N10
\Y~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = (\Y~91_combout\ & ((\s64[3][11]~68_combout\) # ((\s64[2][11]~70_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][11]~70_combout\,
	datab => \B[2]~input_o\,
	datac => \Y~91_combout\,
	datad => \s64[3][11]~68_combout\,
	combout => \Y~73_combout\);

-- Location: LCCOMB_X56_Y69_N12
\Y~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = (\Y~73_combout\) # (((\s64[2][3]~62_combout\ & \Y~69_combout\)) # (!\Y~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~73_combout\,
	datab => \s64[2][3]~62_combout\,
	datac => \Y~69_combout\,
	datad => \Y~66_combout\,
	combout => \Y~74_combout\);

-- Location: LCCOMB_X53_Y70_N12
\Y~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = (\s64[3][12]~75_combout\ & \Y~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s64[3][12]~75_combout\,
	datad => \Y~91_combout\,
	combout => \Y~75_combout\);

-- Location: LCCOMB_X53_Y70_N14
\Y~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = (\Y~75_combout\) # (((\s64[3][4]~77_combout\ & \Y~64_combout\)) # (!\Y~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~75_combout\,
	datab => \s64[3][4]~77_combout\,
	datac => \Y~64_combout\,
	datad => \Y~66_combout\,
	combout => \Y~76_combout\);

-- Location: LCCOMB_X53_Y70_N16
\Y~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = ((\s64[3][5]~81_combout\ & \Y~64_combout\)) # (!\Y~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][5]~81_combout\,
	datac => \Y~64_combout\,
	datad => \Y~66_combout\,
	combout => \Y~77_combout\);

-- Location: LCCOMB_X53_Y70_N2
\Y~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = (\Y~77_combout\) # ((\s64[3][13]~79_combout\ & \Y~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~77_combout\,
	datac => \s64[3][13]~79_combout\,
	datad => \Y~91_combout\,
	combout => \Y~78_combout\);

-- Location: LCCOMB_X53_Y70_N20
\Y~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = ((\s64[3][6]~85_combout\ & \Y~64_combout\)) # (!\Y~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~66_combout\,
	datab => \s64[3][6]~85_combout\,
	datac => \Y~64_combout\,
	combout => \Y~79_combout\);

-- Location: LCCOMB_X53_Y70_N22
\Y~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = (\Y~79_combout\) # ((\Y~91_combout\ & \s64[3][14]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~91_combout\,
	datab => \Y~79_combout\,
	datad => \s64[3][14]~83_combout\,
	combout => \Y~80_combout\);

-- Location: LCCOMB_X56_Y70_N28
\Y~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = (\s64[3][15]~87_combout\ & ((\Y~91_combout\) # ((\s64[3][7]~89_combout\ & \Y~64_combout\)))) # (!\s64[3][15]~87_combout\ & (\s64[3][7]~89_combout\ & (\Y~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][15]~87_combout\,
	datab => \s64[3][7]~89_combout\,
	datac => \Y~64_combout\,
	datad => \Y~91_combout\,
	combout => \Y~81_combout\);

-- Location: LCCOMB_X53_Y70_N0
\Y~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = (\Y~81_combout\) # (!\Y~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y~81_combout\,
	datad => \Y~66_combout\,
	combout => \Y~82_combout\);

-- Location: IOIBUF_X29_Y0_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\B[15]~input\ : cycloneive_io_ibuf
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


