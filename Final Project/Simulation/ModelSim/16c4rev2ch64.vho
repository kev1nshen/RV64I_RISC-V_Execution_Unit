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

-- DATE "04/08/2026 16:10:15"

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
-- B[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A_rev[15]~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A_rev[15]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \stage[3][15]~6_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \stage[6][8]~4_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \stage[6][15]~5_combout\ : std_logic;
SIGNAL \fill~0_combout\ : std_logic;
SIGNAL \fill~1_combout\ : std_logic;
SIGNAL \stage[6][15]~7_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \stage[1][8]~14_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \stage[1][8]~13_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A_rev[9]~12_combout\ : std_logic;
SIGNAL \A_rev[9]~13_combout\ : std_logic;
SIGNAL \stage[1][8]~15_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A_rev[10]~10_combout\ : std_logic;
SIGNAL \A_rev[10]~11_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A_rev[11]~8_combout\ : std_logic;
SIGNAL \A_rev[11]~9_combout\ : std_logic;
SIGNAL \stage[2][8]~12_combout\ : std_logic;
SIGNAL \stage[2][8]~16_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A_rev[12]~6_combout\ : std_logic;
SIGNAL \A_rev[12]~7_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A_rev[13]~4_combout\ : std_logic;
SIGNAL \A_rev[13]~5_combout\ : std_logic;
SIGNAL \stage[2][12]~10_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A_rev[14]~2_combout\ : std_logic;
SIGNAL \A_rev[14]~3_combout\ : std_logic;
SIGNAL \stage[2][12]~9_combout\ : std_logic;
SIGNAL \stage[2][12]~11_combout\ : std_logic;
SIGNAL \stage[6][0]~8_combout\ : std_logic;
SIGNAL \stage[6][0]~17_combout\ : std_logic;
SIGNAL \A_rev[2]~16_combout\ : std_logic;
SIGNAL \A_rev[3]~15_combout\ : std_logic;
SIGNAL \stage[1][2]~19_combout\ : std_logic;
SIGNAL \stage[6][0]~85_combout\ : std_logic;
SIGNAL \A_rev[1]~14_combout\ : std_logic;
SIGNAL \stage[6][0]~18_combout\ : std_logic;
SIGNAL \stage[6][0]~20_combout\ : std_logic;
SIGNAL \A_rev[4]~19_combout\ : std_logic;
SIGNAL \A_rev[5]~18_combout\ : std_logic;
SIGNAL \stage[1][4]~23_combout\ : std_logic;
SIGNAL \stage[1][6]~21_combout\ : std_logic;
SIGNAL \A_rev[6]~17_combout\ : std_logic;
SIGNAL \stage[1][6]~22_combout\ : std_logic;
SIGNAL \stage[2][4]~24_combout\ : std_logic;
SIGNAL \stage[6][0]~25_combout\ : std_logic;
SIGNAL \stage[6][0]~26_combout\ : std_logic;
SIGNAL \stage[6][0]~27_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \stage[1][7]~39_combout\ : std_logic;
SIGNAL \stage[2][7]~40_combout\ : std_logic;
SIGNAL \stage[1][5]~41_combout\ : std_logic;
SIGNAL \stage[2][5]~42_combout\ : std_logic;
SIGNAL \stage[2][13]~36_combout\ : std_logic;
SIGNAL \stage[2][13]~37_combout\ : std_logic;
SIGNAL \stage[2][13]~38_combout\ : std_logic;
SIGNAL \stage[6][1]~43_combout\ : std_logic;
SIGNAL \stage[6][1]~30_combout\ : std_logic;
SIGNAL \stage[1][3]~31_combout\ : std_logic;
SIGNAL \stage[6][1]~32_combout\ : std_logic;
SIGNAL \stage[2][9]~33_combout\ : std_logic;
SIGNAL \stage[2][9]~34_combout\ : std_logic;
SIGNAL \stage[6][1]~35_combout\ : std_logic;
SIGNAL \stage[6][1]~44_combout\ : std_logic;
SIGNAL \stage[6][14]~28_combout\ : std_logic;
SIGNAL \stage[6][14]~29_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \stage[6][13]~45_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \stage[3][10]~50_combout\ : std_logic;
SIGNAL \stage[2][10]~51_combout\ : std_logic;
SIGNAL \stage[2][10]~52_combout\ : std_logic;
SIGNAL \stage[3][10]~53_combout\ : std_logic;
SIGNAL \stage[2][6]~46_combout\ : std_logic;
SIGNAL \stage[6][3]~48_combout\ : std_logic;
SIGNAL \stage[6][3]~47_combout\ : std_logic;
SIGNAL \stage[6][2]~49_combout\ : std_logic;
SIGNAL \stage[6][2]~54_combout\ : std_logic;
SIGNAL \stage[6][2]~55_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \stage[2][11]~62_combout\ : std_logic;
SIGNAL \stage[2][11]~61_combout\ : std_logic;
SIGNAL \stage[3][11]~60_combout\ : std_logic;
SIGNAL \stage[3][11]~63_combout\ : std_logic;
SIGNAL \stage[2][7]~57_combout\ : std_logic;
SIGNAL \stage[2][7]~58_combout\ : std_logic;
SIGNAL \stage[6][3]~59_combout\ : std_logic;
SIGNAL \stage[6][3]~64_combout\ : std_logic;
SIGNAL \stage[6][3]~65_combout\ : std_logic;
SIGNAL \stage[6][12]~56_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \stage[3][12]~67_combout\ : std_logic;
SIGNAL \stage[6][5]~68_combout\ : std_logic;
SIGNAL \stage[6][4]~69_combout\ : std_logic;
SIGNAL \stage[6][4]~70_combout\ : std_logic;
SIGNAL \stage[6][11]~66_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \stage[6][10]~71_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \stage[3][13]~72_combout\ : std_logic;
SIGNAL \stage[6][5]~73_combout\ : std_logic;
SIGNAL \stage[6][5]~74_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \stage[6][9]~75_combout\ : std_logic;
SIGNAL \stage[6][9]~86_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \stage[3][14]~76_combout\ : std_logic;
SIGNAL \stage[6][6]~77_combout\ : std_logic;
SIGNAL \stage[6][6]~78_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \stage[6][8]~79_combout\ : std_logic;
SIGNAL \stage[6][8]~80_combout\ : std_logic;
SIGNAL \stage[3][15]~82_combout\ : std_logic;
SIGNAL \stage[6][7]~83_combout\ : std_logic;
SIGNAL \stage[2][11]~81_combout\ : std_logic;
SIGNAL \stage[6][7]~84_combout\ : std_logic;
SIGNAL \Y_rev[7]~2_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;

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

-- Location: IOOBUF_X54_Y73_N2
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~14_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~16_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~18_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~20_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~33_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~35_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~37_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~39_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOIBUF_X67_Y73_N8
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X59_Y70_N0
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X67_Y70_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X60_Y70_N24
\A_rev[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[15]~0_combout\ = (\Equal2~0_combout\ & (((\A[0]~input_o\)))) # (!\Equal2~0_combout\ & (\A[15]~input_o\ & ((!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[15]~0_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X61_Y70_N8
\A_rev[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[15]~1_combout\ = (\A_rev[15]~0_combout\) # ((\process_0~0_combout\ & (\A[7]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A_rev[15]~0_combout\,
	datac => \A[7]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[15]~1_combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X62_Y70_N8
\stage[3][15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][15]~6_combout\ = (!\B[1]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \stage[3][15]~6_combout\);

-- Location: IOIBUF_X72_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X65_Y70_N16
\stage[6][8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][8]~4_combout\ = (!\B[4]~input_o\ & (!\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[6][8]~4_combout\);

-- Location: IOIBUF_X67_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X65_Y70_N10
\stage[6][15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][15]~5_combout\ = (\stage[6][8]~4_combout\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][8]~4_combout\,
	datac => \B[2]~input_o\,
	combout => \stage[6][15]~5_combout\);

-- Location: LCCOMB_X60_Y70_N2
\fill~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill~0_combout\ = (\A[15]~input_o\ & (\ShiftFN[0]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \fill~0_combout\);

-- Location: LCCOMB_X61_Y70_N18
\fill~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill~1_combout\ = (\process_0~0_combout\ & ((\A[7]~input_o\) # ((\ShiftFN[1]~input_o\ & \fill~0_combout\)))) # (!\process_0~0_combout\ & (((\ShiftFN[1]~input_o\ & \fill~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A[7]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \fill~0_combout\,
	combout => \fill~1_combout\);

-- Location: LCCOMB_X62_Y70_N26
\stage[6][15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][15]~7_combout\ = (\stage[3][15]~6_combout\ & ((\stage[6][15]~5_combout\ & (\A_rev[15]~1_combout\)) # (!\stage[6][15]~5_combout\ & ((\fill~1_combout\))))) # (!\stage[3][15]~6_combout\ & (((\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[15]~1_combout\,
	datab => \stage[3][15]~6_combout\,
	datac => \stage[6][15]~5_combout\,
	datad => \fill~1_combout\,
	combout => \stage[6][15]~7_combout\);

-- Location: LCCOMB_X59_Y70_N16
\Y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][15]~7_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][15]~7_combout\,
	datac => \A[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~40_combout\);

-- Location: LCCOMB_X62_Y71_N0
\stage[1][8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][8]~14_combout\ = (\A[7]~input_o\ & (\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \stage[1][8]~14_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X62_Y71_N14
\stage[1][8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][8]~13_combout\ = (!\ExtWord~input_o\ & (\A[8]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[8]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \stage[1][8]~13_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X62_Y71_N26
\A_rev[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[9]~12_combout\ = (\Equal2~0_combout\ & (((\A[6]~input_o\)))) # (!\Equal2~0_combout\ & (\A[9]~input_o\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[9]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[6]~input_o\,
	combout => \A_rev[9]~12_combout\);

-- Location: LCCOMB_X62_Y71_N20
\A_rev[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[9]~13_combout\ = (\A_rev[9]~12_combout\) # ((\A[7]~input_o\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[9]~12_combout\,
	datab => \A[7]~input_o\,
	datac => \process_0~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[9]~13_combout\);

-- Location: LCCOMB_X62_Y71_N10
\stage[1][8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][8]~15_combout\ = (\B[0]~input_o\ & (((\A_rev[9]~13_combout\)))) # (!\B[0]~input_o\ & ((\stage[1][8]~14_combout\) # ((\stage[1][8]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][8]~14_combout\,
	datab => \stage[1][8]~13_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[9]~13_combout\,
	combout => \stage[1][8]~15_combout\);

-- Location: IOIBUF_X72_Y73_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X67_Y70_N22
\A_rev[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[10]~10_combout\ = (\Equal2~0_combout\ & (((\A[5]~input_o\)))) # (!\Equal2~0_combout\ & (\A[10]~input_o\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[5]~input_o\,
	combout => \A_rev[10]~10_combout\);

-- Location: LCCOMB_X61_Y70_N16
\A_rev[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[10]~11_combout\ = (\A_rev[10]~10_combout\) # ((\process_0~0_combout\ & (\A[7]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A_rev[10]~10_combout\,
	datac => \A[7]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[10]~11_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X59_Y70_N4
\A_rev[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[11]~8_combout\ = (\Equal2~0_combout\ & (\A[4]~input_o\)) # (!\Equal2~0_combout\ & (((\A[11]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[4]~input_o\,
	datac => \A[11]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[11]~8_combout\);

-- Location: LCCOMB_X61_Y70_N6
\A_rev[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[11]~9_combout\ = (\A_rev[11]~8_combout\) # ((\process_0~0_combout\ & (\A[7]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A[7]~input_o\,
	datac => \A_rev[11]~8_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[11]~9_combout\);

-- Location: LCCOMB_X62_Y71_N24
\stage[2][8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][8]~12_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[11]~9_combout\))) # (!\B[0]~input_o\ & (\A_rev[10]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[10]~11_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[11]~9_combout\,
	combout => \stage[2][8]~12_combout\);

-- Location: LCCOMB_X62_Y71_N4
\stage[2][8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][8]~16_combout\ = (\stage[2][8]~12_combout\) # ((\stage[1][8]~15_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][8]~15_combout\,
	datab => \stage[2][8]~12_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][8]~16_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X67_Y70_N12
\A_rev[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[12]~6_combout\ = (\Equal2~0_combout\ & (\A[3]~input_o\)) # (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[12]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[12]~6_combout\);

-- Location: LCCOMB_X61_Y70_N10
\A_rev[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[12]~7_combout\ = (\A_rev[12]~6_combout\) # ((\process_0~0_combout\ & (\A[7]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A_rev[12]~6_combout\,
	datac => \A[7]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[12]~7_combout\);

-- Location: IOIBUF_X69_Y73_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X67_Y70_N26
\A_rev[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[13]~4_combout\ = (\Equal2~0_combout\ & (\A[2]~input_o\)) # (!\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[13]~input_o\,
	combout => \A_rev[13]~4_combout\);

-- Location: LCCOMB_X61_Y70_N24
\A_rev[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[13]~5_combout\ = (\A_rev[13]~4_combout\) # ((\process_0~0_combout\ & (\A[7]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A_rev[13]~4_combout\,
	datac => \A[7]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[13]~5_combout\);

-- Location: LCCOMB_X61_Y70_N12
\stage[2][12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][12]~10_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[13]~5_combout\))) # (!\B[0]~input_o\ & (\A_rev[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[12]~7_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[13]~5_combout\,
	combout => \stage[2][12]~10_combout\);

-- Location: IOIBUF_X42_Y73_N8
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
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X59_Y70_N10
\A_rev[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[14]~2_combout\ = (\Equal2~0_combout\ & (((\A[1]~input_o\)))) # (!\Equal2~0_combout\ & (\A[14]~input_o\ & ((!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[14]~input_o\,
	datac => \A[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[14]~2_combout\);

-- Location: LCCOMB_X61_Y70_N28
\A_rev[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[14]~3_combout\ = (\A_rev[14]~2_combout\) # ((\process_0~0_combout\ & (\A[7]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A_rev[14]~2_combout\,
	datac => \A[7]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[14]~3_combout\);

-- Location: LCCOMB_X61_Y70_N30
\stage[2][12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][12]~9_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[15]~1_combout\)) # (!\B[0]~input_o\ & ((\A_rev[14]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[15]~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[14]~3_combout\,
	combout => \stage[2][12]~9_combout\);

-- Location: LCCOMB_X65_Y70_N22
\stage[2][12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][12]~11_combout\ = (\stage[2][12]~10_combout\) # (\stage[2][12]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][12]~10_combout\,
	datad => \stage[2][12]~9_combout\,
	combout => \stage[2][12]~11_combout\);

-- Location: LCCOMB_X65_Y70_N20
\stage[6][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~8_combout\ = (!\B[4]~input_o\ & (\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[6][0]~8_combout\);

-- Location: LCCOMB_X65_Y70_N8
\stage[6][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~17_combout\ = (\stage[6][0]~8_combout\ & ((\B[2]~input_o\ & ((\stage[2][12]~11_combout\))) # (!\B[2]~input_o\ & (\stage[2][8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][8]~16_combout\,
	datac => \stage[2][12]~11_combout\,
	datad => \stage[6][0]~8_combout\,
	combout => \stage[6][0]~17_combout\);

-- Location: LCCOMB_X67_Y70_N2
\A_rev[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[2]~16_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[13]~input_o\)))) # (!\Equal2~0_combout\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[13]~input_o\,
	combout => \A_rev[2]~16_combout\);

-- Location: LCCOMB_X67_Y70_N16
\A_rev[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[3]~15_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[12]~input_o\)))) # (!\Equal2~0_combout\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[12]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[3]~15_combout\);

-- Location: LCCOMB_X63_Y70_N18
\stage[1][2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][2]~19_combout\ = (\B[0]~input_o\ & ((\A_rev[3]~15_combout\))) # (!\B[0]~input_o\ & (\A_rev[2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[2]~16_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[3]~15_combout\,
	combout => \stage[1][2]~19_combout\);

-- Location: LCCOMB_X59_Y70_N18
\stage[6][0]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~85_combout\ = (\ShiftFN[1]~input_o\ & (((\A[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\fill~0_combout\) # ((\A[0]~input_o\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \stage[6][0]~85_combout\);

-- Location: LCCOMB_X59_Y70_N14
\A_rev[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[1]~14_combout\ = (\Equal2~0_combout\ & (\A[14]~input_o\ & ((!\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[14]~input_o\,
	datac => \A[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[1]~14_combout\);

-- Location: LCCOMB_X63_Y70_N0
\stage[6][0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~18_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[1]~14_combout\))) # (!\B[0]~input_o\ & (\stage[6][0]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][0]~85_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[1]~14_combout\,
	combout => \stage[6][0]~18_combout\);

-- Location: LCCOMB_X63_Y70_N20
\stage[6][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~20_combout\ = (!\B[2]~input_o\ & ((\stage[6][0]~18_combout\) # ((\stage[1][2]~19_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[1][2]~19_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[6][0]~18_combout\,
	combout => \stage[6][0]~20_combout\);

-- Location: LCCOMB_X59_Y70_N8
\A_rev[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[4]~19_combout\ = (\Equal2~0_combout\ & (((\A[11]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[4]~input_o\,
	datac => \A[11]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[4]~19_combout\);

-- Location: LCCOMB_X67_Y70_N28
\A_rev[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[5]~18_combout\ = (\Equal2~0_combout\ & (\A[10]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[5]~input_o\,
	combout => \A_rev[5]~18_combout\);

-- Location: LCCOMB_X63_Y70_N22
\stage[1][4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][4]~23_combout\ = (\B[0]~input_o\ & ((\A_rev[5]~18_combout\))) # (!\B[0]~input_o\ & (\A_rev[4]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A_rev[4]~19_combout\,
	datad => \A_rev[5]~18_combout\,
	combout => \stage[1][4]~23_combout\);

-- Location: LCCOMB_X62_Y71_N6
\stage[1][6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][6]~21_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[8]~input_o\)))) # (!\Equal2~0_combout\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[7]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[8]~input_o\,
	combout => \stage[1][6]~21_combout\);

-- Location: LCCOMB_X62_Y71_N8
\A_rev[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[6]~17_combout\ = (\Equal2~0_combout\ & (\A[9]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[9]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[6]~input_o\,
	combout => \A_rev[6]~17_combout\);

-- Location: LCCOMB_X62_Y71_N2
\stage[1][6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][6]~22_combout\ = (\B[0]~input_o\ & (\stage[1][6]~21_combout\)) # (!\B[0]~input_o\ & ((\A_rev[6]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][6]~21_combout\,
	datab => \B[0]~input_o\,
	datac => \A_rev[6]~17_combout\,
	combout => \stage[1][6]~22_combout\);

-- Location: LCCOMB_X63_Y70_N24
\stage[2][4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][4]~24_combout\ = (\B[1]~input_o\ & ((\stage[1][6]~22_combout\))) # (!\B[1]~input_o\ & (\stage[1][4]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][4]~23_combout\,
	datab => \stage[1][6]~22_combout\,
	datac => \B[1]~input_o\,
	combout => \stage[2][4]~24_combout\);

-- Location: LCCOMB_X65_Y70_N26
\stage[6][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~25_combout\ = (\stage[6][8]~4_combout\ & ((\stage[6][0]~20_combout\) # ((\B[2]~input_o\ & \stage[2][4]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[6][0]~20_combout\,
	datac => \stage[2][4]~24_combout\,
	datad => \stage[6][8]~4_combout\,
	combout => \stage[6][0]~25_combout\);

-- Location: LCCOMB_X65_Y70_N12
\stage[6][0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~26_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \stage[6][0]~26_combout\);

-- Location: LCCOMB_X65_Y70_N6
\stage[6][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~27_combout\ = (\stage[6][0]~17_combout\) # ((\stage[6][0]~25_combout\) # ((\fill~1_combout\ & !\stage[6][0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[6][0]~17_combout\,
	datac => \stage[6][0]~25_combout\,
	datad => \stage[6][0]~26_combout\,
	combout => \stage[6][0]~27_combout\);

-- Location: LCCOMB_X59_Y70_N26
\Y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = (\Y~40_combout\) # ((\stage[6][0]~27_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~40_combout\,
	datac => \stage[6][0]~27_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~14_combout\);

-- Location: LCCOMB_X62_Y71_N22
\stage[1][7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][7]~39_combout\ = (\ShiftFN[1]~input_o\ & (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\ExtWord~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\B[0]~input_o\ $ (\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \stage[1][7]~39_combout\);

-- Location: LCCOMB_X62_Y71_N16
\stage[2][7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][7]~40_combout\ = (\stage[1][7]~39_combout\ & (((!\ExtWord~input_o\ & \A[8]~input_o\)))) # (!\stage[1][7]~39_combout\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][7]~39_combout\,
	datab => \A[7]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[8]~input_o\,
	combout => \stage[2][7]~40_combout\);

-- Location: LCCOMB_X63_Y70_N16
\stage[1][5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][5]~41_combout\ = (\B[0]~input_o\ & (\A_rev[6]~17_combout\)) # (!\B[0]~input_o\ & ((\A_rev[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A_rev[6]~17_combout\,
	datad => \A_rev[5]~18_combout\,
	combout => \stage[1][5]~41_combout\);

-- Location: LCCOMB_X63_Y70_N2
\stage[2][5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][5]~42_combout\ = (\B[1]~input_o\ & (\stage[2][7]~40_combout\)) # (!\B[1]~input_o\ & ((\stage[1][5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \stage[2][7]~40_combout\,
	datad => \stage[1][5]~41_combout\,
	combout => \stage[2][5]~42_combout\);

-- Location: LCCOMB_X61_Y70_N22
\stage[2][13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][13]~36_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[14]~3_combout\)) # (!\B[0]~input_o\ & ((\A_rev[13]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[14]~3_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[13]~5_combout\,
	combout => \stage[2][13]~36_combout\);

-- Location: LCCOMB_X62_Y70_N30
\stage[2][13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][13]~37_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\fill~1_combout\))) # (!\B[0]~input_o\ & (\A_rev[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[15]~1_combout\,
	datab => \fill~1_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][13]~37_combout\);

-- Location: LCCOMB_X66_Y70_N18
\stage[2][13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][13]~38_combout\ = (\stage[2][13]~36_combout\) # (\stage[2][13]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[2][13]~36_combout\,
	datac => \stage[2][13]~37_combout\,
	combout => \stage[2][13]~38_combout\);

-- Location: LCCOMB_X66_Y70_N20
\stage[6][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~43_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\stage[2][13]~38_combout\))) # (!\B[3]~input_o\ & (\stage[2][5]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][5]~42_combout\,
	datab => \stage[2][13]~38_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[6][1]~43_combout\);

-- Location: LCCOMB_X63_Y70_N26
\stage[6][1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~30_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[2]~16_combout\)) # (!\B[0]~input_o\ & ((\A_rev[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[2]~16_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[1]~14_combout\,
	combout => \stage[6][1]~30_combout\);

-- Location: LCCOMB_X63_Y70_N28
\stage[1][3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][3]~31_combout\ = (\B[0]~input_o\ & (\A_rev[4]~19_combout\)) # (!\B[0]~input_o\ & ((\A_rev[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A_rev[4]~19_combout\,
	datad => \A_rev[3]~15_combout\,
	combout => \stage[1][3]~31_combout\);

-- Location: LCCOMB_X63_Y70_N6
\stage[6][1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~32_combout\ = (!\B[3]~input_o\ & ((\stage[6][1]~30_combout\) # ((\stage[1][3]~31_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][1]~30_combout\,
	datab => \stage[1][3]~31_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[6][1]~32_combout\);

-- Location: LCCOMB_X61_Y70_N4
\stage[2][9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][9]~33_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[12]~7_combout\))) # (!\B[0]~input_o\ & (\A_rev[11]~9_combout\)))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[11]~9_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[12]~7_combout\,
	combout => \stage[2][9]~33_combout\);

-- Location: LCCOMB_X62_Y71_N12
\stage[2][9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][9]~34_combout\ = (\stage[2][9]~33_combout\ & (((\A_rev[10]~11_combout\) # (\B[1]~input_o\)))) # (!\stage[2][9]~33_combout\ & (\A_rev[9]~13_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][9]~33_combout\,
	datab => \A_rev[9]~13_combout\,
	datac => \A_rev[10]~11_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][9]~34_combout\);

-- Location: LCCOMB_X66_Y70_N16
\stage[6][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~35_combout\ = (!\B[2]~input_o\ & ((\stage[6][1]~32_combout\) # ((\stage[2][9]~34_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][1]~32_combout\,
	datab => \stage[2][9]~34_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[6][1]~35_combout\);

-- Location: LCCOMB_X66_Y70_N14
\stage[6][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~44_combout\ = (\stage[6][0]~26_combout\ & ((\stage[6][1]~43_combout\) # ((\stage[6][1]~35_combout\)))) # (!\stage[6][0]~26_combout\ & (((\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][0]~26_combout\,
	datab => \stage[6][1]~43_combout\,
	datac => \fill~1_combout\,
	datad => \stage[6][1]~35_combout\,
	combout => \stage[6][1]~44_combout\);

-- Location: LCCOMB_X61_Y70_N2
\stage[6][14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][14]~28_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[15]~1_combout\)) # (!\B[0]~input_o\ & ((\A_rev[14]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[15]~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[14]~3_combout\,
	combout => \stage[6][14]~28_combout\);

-- Location: LCCOMB_X62_Y70_N4
\stage[6][14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][14]~29_combout\ = (\stage[6][15]~5_combout\ & ((\stage[6][14]~28_combout\) # ((\fill~1_combout\ & \B[1]~input_o\)))) # (!\stage[6][15]~5_combout\ & (((\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~28_combout\,
	datab => \fill~1_combout\,
	datac => \stage[6][15]~5_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[6][14]~29_combout\);

-- Location: LCCOMB_X59_Y70_N20
\Y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][14]~29_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~29_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~41_combout\);

-- Location: LCCOMB_X59_Y70_N12
\Y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = (\Y~41_combout\) # ((\stage[6][1]~44_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][1]~44_combout\,
	datab => \Y~41_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~15_combout\);

-- Location: LCCOMB_X66_Y70_N0
\stage[6][13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][13]~45_combout\ = (\stage[6][15]~5_combout\ & (((\stage[2][13]~36_combout\) # (\stage[2][13]~37_combout\)))) # (!\stage[6][15]~5_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[2][13]~36_combout\,
	datac => \stage[2][13]~37_combout\,
	datad => \stage[6][15]~5_combout\,
	combout => \stage[6][13]~45_combout\);

-- Location: LCCOMB_X66_Y71_N12
\Y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][13]~45_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \stage[6][13]~45_combout\,
	combout => \Y~42_combout\);

-- Location: LCCOMB_X62_Y70_N0
\stage[3][10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][10]~50_combout\ = (\B[1]~input_o\ & (\fill~1_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \fill~1_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][10]~50_combout\);

-- Location: LCCOMB_X61_Y70_N0
\stage[2][10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][10]~51_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[13]~5_combout\))) # (!\B[0]~input_o\ & (\A_rev[12]~7_combout\)))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[12]~7_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[13]~5_combout\,
	combout => \stage[2][10]~51_combout\);

-- Location: LCCOMB_X61_Y70_N26
\stage[2][10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][10]~52_combout\ = (\B[1]~input_o\ & (((\stage[2][10]~51_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][10]~51_combout\ & (\A_rev[11]~9_combout\)) # (!\stage[2][10]~51_combout\ & ((\A_rev[10]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[11]~9_combout\,
	datab => \A_rev[10]~11_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[2][10]~51_combout\,
	combout => \stage[2][10]~52_combout\);

-- Location: LCCOMB_X62_Y70_N2
\stage[3][10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][10]~53_combout\ = (\stage[3][10]~50_combout\) # ((\B[2]~input_o\ & (\stage[6][14]~28_combout\)) # (!\B[2]~input_o\ & ((\stage[2][10]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~28_combout\,
	datab => \stage[3][10]~50_combout\,
	datac => \stage[2][10]~52_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][10]~53_combout\);

-- Location: LCCOMB_X62_Y71_N18
\stage[2][6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][6]~46_combout\ = (\B[1]~input_o\ & (\stage[1][8]~15_combout\)) # (!\B[1]~input_o\ & ((\stage[1][6]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][8]~15_combout\,
	datac => \stage[1][6]~22_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][6]~46_combout\);

-- Location: LCCOMB_X63_Y70_N30
\stage[6][3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~48_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[6][3]~48_combout\);

-- Location: LCCOMB_X63_Y70_N12
\stage[6][3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~47_combout\ = (\B[2]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[6][3]~47_combout\);

-- Location: LCCOMB_X63_Y70_N8
\stage[6][2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~49_combout\ = (\stage[6][3]~48_combout\ & ((\stage[1][4]~23_combout\) # ((\stage[6][3]~47_combout\)))) # (!\stage[6][3]~48_combout\ & (((\stage[1][2]~19_combout\ & !\stage[6][3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][4]~23_combout\,
	datab => \stage[1][2]~19_combout\,
	datac => \stage[6][3]~48_combout\,
	datad => \stage[6][3]~47_combout\,
	combout => \stage[6][2]~49_combout\);

-- Location: LCCOMB_X63_Y70_N10
\stage[6][2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~54_combout\ = (\stage[6][2]~49_combout\ & ((\stage[3][10]~53_combout\) # ((!\stage[6][3]~47_combout\)))) # (!\stage[6][2]~49_combout\ & (((\stage[2][6]~46_combout\ & \stage[6][3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][10]~53_combout\,
	datab => \stage[2][6]~46_combout\,
	datac => \stage[6][2]~49_combout\,
	datad => \stage[6][3]~47_combout\,
	combout => \stage[6][2]~54_combout\);

-- Location: LCCOMB_X66_Y70_N10
\stage[6][2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~55_combout\ = (\stage[6][0]~26_combout\ & ((\stage[6][2]~54_combout\))) # (!\stage[6][0]~26_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datac => \stage[6][2]~54_combout\,
	datad => \stage[6][0]~26_combout\,
	combout => \stage[6][2]~55_combout\);

-- Location: LCCOMB_X66_Y71_N8
\Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (\Y~42_combout\) # ((\stage[6][2]~55_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~42_combout\,
	datac => \stage[6][2]~55_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~16_combout\);

-- Location: LCCOMB_X61_Y70_N14
\stage[2][11]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~62_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[14]~3_combout\)) # (!\B[0]~input_o\ & ((\A_rev[13]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[14]~3_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[13]~5_combout\,
	combout => \stage[2][11]~62_combout\);

-- Location: LCCOMB_X61_Y70_N20
\stage[2][11]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~61_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[12]~7_combout\))) # (!\B[0]~input_o\ & (\A_rev[11]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[11]~9_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A_rev[12]~7_combout\,
	combout => \stage[2][11]~61_combout\);

-- Location: LCCOMB_X62_Y70_N20
\stage[3][11]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][11]~60_combout\ = (\B[2]~input_o\ & ((\stage[3][15]~6_combout\ & (\A_rev[15]~1_combout\)) # (!\stage[3][15]~6_combout\ & ((\fill~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[15]~1_combout\,
	datab => \fill~1_combout\,
	datac => \stage[3][15]~6_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][11]~60_combout\);

-- Location: LCCOMB_X62_Y70_N14
\stage[3][11]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][11]~63_combout\ = (\stage[3][11]~60_combout\) # ((!\B[2]~input_o\ & ((\stage[2][11]~62_combout\) # (\stage[2][11]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][11]~62_combout\,
	datab => \stage[2][11]~61_combout\,
	datac => \stage[3][11]~60_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][11]~63_combout\);

-- Location: LCCOMB_X62_Y71_N28
\stage[2][7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][7]~57_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[10]~11_combout\)) # (!\B[0]~input_o\ & ((\A_rev[9]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[10]~11_combout\,
	datab => \A_rev[9]~13_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][7]~57_combout\);

-- Location: LCCOMB_X62_Y71_N30
\stage[2][7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][7]~58_combout\ = (\stage[2][7]~57_combout\) # ((\stage[2][7]~40_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[2][7]~57_combout\,
	datac => \stage[2][7]~40_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][7]~58_combout\);

-- Location: LCCOMB_X63_Y70_N4
\stage[6][3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~59_combout\ = (\stage[6][3]~48_combout\ & (((\stage[6][3]~47_combout\)))) # (!\stage[6][3]~48_combout\ & ((\stage[6][3]~47_combout\ & ((\stage[2][7]~58_combout\))) # (!\stage[6][3]~47_combout\ & (\stage[1][3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][3]~48_combout\,
	datab => \stage[1][3]~31_combout\,
	datac => \stage[2][7]~58_combout\,
	datad => \stage[6][3]~47_combout\,
	combout => \stage[6][3]~59_combout\);

-- Location: LCCOMB_X63_Y70_N14
\stage[6][3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~64_combout\ = (\stage[6][3]~59_combout\ & ((\stage[3][11]~63_combout\) # ((!\stage[6][3]~48_combout\)))) # (!\stage[6][3]~59_combout\ & (((\stage[6][3]~48_combout\ & \stage[1][5]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][11]~63_combout\,
	datab => \stage[6][3]~59_combout\,
	datac => \stage[6][3]~48_combout\,
	datad => \stage[1][5]~41_combout\,
	combout => \stage[6][3]~64_combout\);

-- Location: LCCOMB_X66_Y70_N12
\stage[6][3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~65_combout\ = (\stage[6][0]~26_combout\ & ((\stage[6][3]~64_combout\))) # (!\stage[6][0]~26_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[6][3]~64_combout\,
	datad => \stage[6][0]~26_combout\,
	combout => \stage[6][3]~65_combout\);

-- Location: LCCOMB_X65_Y70_N0
\stage[6][12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][12]~56_combout\ = (\stage[6][15]~5_combout\ & ((\stage[2][12]~10_combout\) # ((\stage[2][12]~9_combout\)))) # (!\stage[6][15]~5_combout\ & (((\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][12]~10_combout\,
	datab => \stage[2][12]~9_combout\,
	datac => \stage[6][15]~5_combout\,
	datad => \fill~1_combout\,
	combout => \stage[6][12]~56_combout\);

-- Location: LCCOMB_X67_Y70_N24
\Y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][12]~56_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \stage[6][12]~56_combout\,
	combout => \Y~43_combout\);

-- Location: LCCOMB_X67_Y70_N14
\Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = (\Y~43_combout\) # ((\stage[6][3]~65_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][3]~65_combout\,
	datab => \Y~43_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~17_combout\);

-- Location: LCCOMB_X65_Y70_N4
\stage[3][12]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][12]~67_combout\ = (\B[2]~input_o\ & (((\fill~1_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][12]~10_combout\) # ((\stage[2][12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][12]~10_combout\,
	datab => \stage[2][12]~9_combout\,
	datac => \B[2]~input_o\,
	datad => \fill~1_combout\,
	combout => \stage[3][12]~67_combout\);

-- Location: LCCOMB_X66_Y70_N22
\stage[6][5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~68_combout\ = ((!\B[3]~input_o\ & \B[2]~input_o\)) # (!\stage[6][0]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][0]~26_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[6][5]~68_combout\);

-- Location: LCCOMB_X65_Y70_N30
\stage[6][4]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~69_combout\ = (\stage[6][5]~68_combout\ & ((\stage[2][8]~16_combout\) # ((!\stage[6][8]~4_combout\)))) # (!\stage[6][5]~68_combout\ & (((\stage[2][4]~24_combout\ & \stage[6][8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][5]~68_combout\,
	datab => \stage[2][8]~16_combout\,
	datac => \stage[2][4]~24_combout\,
	datad => \stage[6][8]~4_combout\,
	combout => \stage[6][4]~69_combout\);

-- Location: LCCOMB_X65_Y70_N24
\stage[6][4]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~70_combout\ = (\stage[6][4]~69_combout\ & ((\fill~1_combout\) # ((\stage[6][8]~4_combout\)))) # (!\stage[6][4]~69_combout\ & (((\stage[3][12]~67_combout\ & !\stage[6][8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[3][12]~67_combout\,
	datac => \stage[6][4]~69_combout\,
	datad => \stage[6][8]~4_combout\,
	combout => \stage[6][4]~70_combout\);

-- Location: LCCOMB_X65_Y70_N18
\stage[6][11]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][11]~66_combout\ = (\stage[6][8]~4_combout\ & ((\stage[3][11]~63_combout\))) # (!\stage[6][8]~4_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datac => \stage[3][11]~63_combout\,
	datad => \stage[6][8]~4_combout\,
	combout => \stage[6][11]~66_combout\);

-- Location: LCCOMB_X59_Y70_N22
\Y~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][11]~66_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][11]~66_combout\,
	datac => \A[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~44_combout\);

-- Location: LCCOMB_X59_Y70_N6
\Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = (\Y~44_combout\) # ((\stage[6][4]~70_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][4]~70_combout\,
	datac => \Y~44_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~18_combout\);

-- Location: LCCOMB_X62_Y70_N16
\stage[6][10]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][10]~71_combout\ = (\stage[6][8]~4_combout\ & ((\stage[3][10]~53_combout\))) # (!\stage[6][8]~4_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][8]~4_combout\,
	datab => \fill~1_combout\,
	datad => \stage[3][10]~53_combout\,
	combout => \stage[6][10]~71_combout\);

-- Location: LCCOMB_X67_Y70_N10
\Y~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][10]~71_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][10]~71_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Y~45_combout\);

-- Location: LCCOMB_X66_Y70_N24
\stage[3][13]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][13]~72_combout\ = (\B[2]~input_o\ & (\fill~1_combout\)) # (!\B[2]~input_o\ & (((\stage[2][13]~36_combout\) # (\stage[2][13]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[2][13]~36_combout\,
	datac => \stage[2][13]~37_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][13]~72_combout\);

-- Location: LCCOMB_X66_Y70_N26
\stage[6][5]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~73_combout\ = (\stage[6][8]~4_combout\ & (\stage[2][5]~42_combout\ & (!\stage[6][5]~68_combout\))) # (!\stage[6][8]~4_combout\ & (((\stage[6][5]~68_combout\) # (\stage[3][13]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][8]~4_combout\,
	datab => \stage[2][5]~42_combout\,
	datac => \stage[6][5]~68_combout\,
	datad => \stage[3][13]~72_combout\,
	combout => \stage[6][5]~73_combout\);

-- Location: LCCOMB_X66_Y70_N28
\stage[6][5]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~74_combout\ = (\stage[6][5]~73_combout\ & (((\fill~1_combout\) # (!\stage[6][5]~68_combout\)))) # (!\stage[6][5]~73_combout\ & (\stage[2][9]~34_combout\ & (\stage[6][5]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][5]~73_combout\,
	datab => \stage[2][9]~34_combout\,
	datac => \stage[6][5]~68_combout\,
	datad => \fill~1_combout\,
	combout => \stage[6][5]~74_combout\);

-- Location: LCCOMB_X67_Y70_N8
\Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = (\Y~45_combout\) # ((\stage[6][5]~74_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~45_combout\,
	datab => \stage[6][5]~74_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~19_combout\);

-- Location: LCCOMB_X66_Y70_N30
\stage[6][9]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][9]~75_combout\ = (\stage[6][8]~4_combout\ & (((\stage[2][13]~38_combout\ & \B[2]~input_o\)))) # (!\stage[6][8]~4_combout\ & (\fill~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datab => \stage[2][13]~38_combout\,
	datac => \stage[6][8]~4_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[6][9]~75_combout\);

-- Location: LCCOMB_X66_Y70_N8
\stage[6][9]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][9]~86_combout\ = (\stage[6][9]~75_combout\) # ((\stage[2][9]~34_combout\ & (\stage[6][8]~4_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][9]~75_combout\,
	datab => \stage[2][9]~34_combout\,
	datac => \stage[6][8]~4_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[6][9]~86_combout\);

-- Location: LCCOMB_X67_Y70_N4
\Y~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][9]~86_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][9]~86_combout\,
	datab => \A[6]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~46_combout\);

-- Location: LCCOMB_X62_Y70_N10
\stage[3][14]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][14]~76_combout\ = (\B[2]~input_o\ & (((\fill~1_combout\)))) # (!\B[2]~input_o\ & ((\stage[6][14]~28_combout\) # ((\B[1]~input_o\ & \fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \fill~1_combout\,
	datac => \stage[6][14]~28_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][14]~76_combout\);

-- Location: LCCOMB_X62_Y70_N28
\stage[6][6]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~77_combout\ = (\stage[6][5]~68_combout\ & (((\stage[2][10]~52_combout\) # (!\stage[6][8]~4_combout\)))) # (!\stage[6][5]~68_combout\ & (\stage[2][6]~46_combout\ & ((\stage[6][8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][6]~46_combout\,
	datab => \stage[6][5]~68_combout\,
	datac => \stage[2][10]~52_combout\,
	datad => \stage[6][8]~4_combout\,
	combout => \stage[6][6]~77_combout\);

-- Location: LCCOMB_X62_Y70_N22
\stage[6][6]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~78_combout\ = (\stage[6][6]~77_combout\ & (((\fill~1_combout\) # (\stage[6][8]~4_combout\)))) # (!\stage[6][6]~77_combout\ & (\stage[3][14]~76_combout\ & ((!\stage[6][8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][14]~76_combout\,
	datab => \stage[6][6]~77_combout\,
	datac => \fill~1_combout\,
	datad => \stage[6][8]~4_combout\,
	combout => \stage[6][6]~78_combout\);

-- Location: LCCOMB_X66_Y71_N2
\Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = (\Y~46_combout\) # ((\stage[6][6]~78_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~46_combout\,
	datac => \stage[6][6]~78_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~20_combout\);

-- Location: LCCOMB_X65_Y70_N2
\stage[6][8]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][8]~79_combout\ = (\stage[6][8]~4_combout\ & (\stage[2][12]~11_combout\ & (\B[2]~input_o\))) # (!\stage[6][8]~4_combout\ & (((\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][12]~11_combout\,
	datab => \stage[6][8]~4_combout\,
	datac => \B[2]~input_o\,
	datad => \fill~1_combout\,
	combout => \stage[6][8]~79_combout\);

-- Location: LCCOMB_X65_Y70_N28
\stage[6][8]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][8]~80_combout\ = (\stage[6][8]~79_combout\) # ((\stage[2][8]~16_combout\ & (!\B[2]~input_o\ & \stage[6][8]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][8]~79_combout\,
	datab => \stage[2][8]~16_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[6][8]~4_combout\,
	combout => \stage[6][8]~80_combout\);

-- Location: LCCOMB_X62_Y70_N18
\stage[3][15]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][15]~82_combout\ = (\stage[3][15]~6_combout\ & ((\B[2]~input_o\ & ((\fill~1_combout\))) # (!\B[2]~input_o\ & (\A_rev[15]~1_combout\)))) # (!\stage[3][15]~6_combout\ & (((\fill~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[15]~1_combout\,
	datab => \fill~1_combout\,
	datac => \stage[3][15]~6_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][15]~82_combout\);

-- Location: LCCOMB_X62_Y70_N12
\stage[6][7]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~83_combout\ = (\stage[6][8]~4_combout\ & (((\stage[2][7]~58_combout\ & !\stage[6][5]~68_combout\)))) # (!\stage[6][8]~4_combout\ & ((\stage[3][15]~82_combout\) # ((\stage[6][5]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][8]~4_combout\,
	datab => \stage[3][15]~82_combout\,
	datac => \stage[2][7]~58_combout\,
	datad => \stage[6][5]~68_combout\,
	combout => \stage[6][7]~83_combout\);

-- Location: LCCOMB_X62_Y70_N24
\stage[2][11]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~81_combout\ = (\stage[2][11]~61_combout\) # (\stage[2][11]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[2][11]~61_combout\,
	datad => \stage[2][11]~62_combout\,
	combout => \stage[2][11]~81_combout\);

-- Location: LCCOMB_X62_Y70_N6
\stage[6][7]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~84_combout\ = (\stage[6][7]~83_combout\ & (((\fill~1_combout\) # (!\stage[6][5]~68_combout\)))) # (!\stage[6][7]~83_combout\ & (\stage[2][11]~81_combout\ & ((\stage[6][5]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][7]~83_combout\,
	datab => \stage[2][11]~81_combout\,
	datac => \fill~1_combout\,
	datad => \stage[6][5]~68_combout\,
	combout => \stage[6][7]~84_combout\);

-- Location: LCCOMB_X60_Y70_N20
\Y_rev[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_rev[7]~2_combout\ = (\ShiftFN[1]~input_o\ & (((\stage[6][7]~84_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][8]~80_combout\)) # (!\ShiftFN[0]~input_o\ & ((\stage[6][7]~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][8]~80_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \stage[6][7]~84_combout\,
	combout => \Y_rev[7]~2_combout\);

-- Location: LCCOMB_X59_Y70_N24
\Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = (\ShiftFN[1]~input_o\ & (((\Y_rev[7]~2_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y_rev[7]~2_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_rev[7]~2_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~21_combout\);

-- Location: LCCOMB_X60_Y70_N28
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~23_combout\);

-- Location: LCCOMB_X67_Y70_N18
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (!\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Y~22_combout\);

-- Location: LCCOMB_X60_Y70_N30
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\Y~23_combout\ & (((\Y_rev[7]~2_combout\) # (\Y~22_combout\)))) # (!\Y~23_combout\ & (\stage[6][8]~80_combout\ & ((!\Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][8]~80_combout\,
	datab => \Y_rev[7]~2_combout\,
	datac => \Y~23_combout\,
	datad => \Y~22_combout\,
	combout => \Y~24_combout\);

-- Location: LCCOMB_X60_Y70_N0
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (\Y~24_combout\ & (((\A[8]~input_o\) # (!\Y~22_combout\)))) # (!\Y~24_combout\ & (\stage[6][7]~84_combout\ & ((\Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][7]~84_combout\,
	datab => \A[8]~input_o\,
	datac => \Y~24_combout\,
	datad => \Y~22_combout\,
	combout => \Y~25_combout\);

-- Location: LCCOMB_X60_Y70_N10
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (\Y~22_combout\ & (((\Y~23_combout\) # (\stage[6][6]~78_combout\)))) # (!\Y~22_combout\ & (\stage[6][9]~86_combout\ & (!\Y~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~22_combout\,
	datab => \stage[6][9]~86_combout\,
	datac => \Y~23_combout\,
	datad => \stage[6][6]~78_combout\,
	combout => \Y~26_combout\);

-- Location: LCCOMB_X60_Y70_N4
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (\Y~26_combout\ & (((\A[9]~input_o\) # (!\Y~23_combout\)))) # (!\Y~26_combout\ & (\Y_rev[7]~2_combout\ & (\Y~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~26_combout\,
	datab => \Y_rev[7]~2_combout\,
	datac => \Y~23_combout\,
	datad => \A[9]~input_o\,
	combout => \Y~27_combout\);

-- Location: LCCOMB_X60_Y70_N14
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\Y~23_combout\ & (((\Y_rev[7]~2_combout\) # (\Y~22_combout\)))) # (!\Y~23_combout\ & (\stage[6][10]~71_combout\ & ((!\Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][10]~71_combout\,
	datab => \Y_rev[7]~2_combout\,
	datac => \Y~23_combout\,
	datad => \Y~22_combout\,
	combout => \Y~28_combout\);

-- Location: LCCOMB_X67_Y70_N20
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (\Y~28_combout\ & (((\A[10]~input_o\) # (!\Y~22_combout\)))) # (!\Y~28_combout\ & (\stage[6][5]~74_combout\ & ((\Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~28_combout\,
	datab => \stage[6][5]~74_combout\,
	datac => \A[10]~input_o\,
	datad => \Y~22_combout\,
	combout => \Y~29_combout\);

-- Location: LCCOMB_X60_Y70_N16
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\Y~23_combout\ & (((\Y~22_combout\)))) # (!\Y~23_combout\ & ((\Y~22_combout\ & ((\stage[6][4]~70_combout\))) # (!\Y~22_combout\ & (\stage[6][11]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][11]~66_combout\,
	datab => \stage[6][4]~70_combout\,
	datac => \Y~23_combout\,
	datad => \Y~22_combout\,
	combout => \Y~30_combout\);

-- Location: LCCOMB_X59_Y70_N2
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\Y~30_combout\ & (((\A[11]~input_o\) # (!\Y~23_combout\)))) # (!\Y~30_combout\ & (\Y_rev[7]~2_combout\ & ((\Y~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[7]~2_combout\,
	datab => \Y~30_combout\,
	datac => \A[11]~input_o\,
	datad => \Y~23_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X60_Y70_N18
\Y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = (\Y~23_combout\ & (((\Y_rev[7]~2_combout\) # (\Y~22_combout\)))) # (!\Y~23_combout\ & (\stage[6][12]~56_combout\ & ((!\Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][12]~56_combout\,
	datab => \Y_rev[7]~2_combout\,
	datac => \Y~23_combout\,
	datad => \Y~22_combout\,
	combout => \Y~32_combout\);

-- Location: LCCOMB_X67_Y70_N30
\Y~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = (\Y~32_combout\ & (((\A[12]~input_o\) # (!\Y~22_combout\)))) # (!\Y~32_combout\ & (\stage[6][3]~65_combout\ & ((\Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][3]~65_combout\,
	datab => \Y~32_combout\,
	datac => \A[12]~input_o\,
	datad => \Y~22_combout\,
	combout => \Y~33_combout\);

-- Location: LCCOMB_X60_Y70_N12
\Y~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = (\Y~23_combout\ & (((\Y~22_combout\)))) # (!\Y~23_combout\ & ((\Y~22_combout\ & (\stage[6][2]~55_combout\)) # (!\Y~22_combout\ & ((\stage[6][13]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][2]~55_combout\,
	datab => \stage[6][13]~45_combout\,
	datac => \Y~23_combout\,
	datad => \Y~22_combout\,
	combout => \Y~34_combout\);

-- Location: LCCOMB_X60_Y70_N22
\Y~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = (\Y~34_combout\ & (((\A[13]~input_o\) # (!\Y~23_combout\)))) # (!\Y~34_combout\ & (\Y_rev[7]~2_combout\ & (\Y~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~34_combout\,
	datab => \Y_rev[7]~2_combout\,
	datac => \Y~23_combout\,
	datad => \A[13]~input_o\,
	combout => \Y~35_combout\);

-- Location: LCCOMB_X59_Y70_N28
\Y~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = (\Y~23_combout\ & (((\Y_rev[7]~2_combout\) # (\Y~22_combout\)))) # (!\Y~23_combout\ & (\stage[6][14]~29_combout\ & ((!\Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~29_combout\,
	datab => \Y~23_combout\,
	datac => \Y_rev[7]~2_combout\,
	datad => \Y~22_combout\,
	combout => \Y~36_combout\);

-- Location: LCCOMB_X59_Y70_N30
\Y~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = (\Y~36_combout\ & (((\A[14]~input_o\) # (!\Y~22_combout\)))) # (!\Y~36_combout\ & (\stage[6][1]~44_combout\ & ((\Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][1]~44_combout\,
	datab => \Y~36_combout\,
	datac => \A[14]~input_o\,
	datad => \Y~22_combout\,
	combout => \Y~37_combout\);

-- Location: LCCOMB_X60_Y70_N8
\Y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = (\Y~23_combout\ & (((\Y~22_combout\)))) # (!\Y~23_combout\ & ((\Y~22_combout\ & ((\stage[6][0]~27_combout\))) # (!\Y~22_combout\ & (\stage[6][15]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~23_combout\,
	datab => \stage[6][15]~7_combout\,
	datac => \stage[6][0]~27_combout\,
	datad => \Y~22_combout\,
	combout => \Y~38_combout\);

-- Location: LCCOMB_X60_Y70_N26
\Y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = (\Y~38_combout\ & ((\A[15]~input_o\) # ((!\Y~23_combout\)))) # (!\Y~38_combout\ & (((\Y~23_combout\ & \Y_rev[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Y~38_combout\,
	datac => \Y~23_combout\,
	datad => \Y_rev[7]~2_combout\,
	combout => \Y~39_combout\);

-- Location: IOIBUF_X3_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X115_Y24_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
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


