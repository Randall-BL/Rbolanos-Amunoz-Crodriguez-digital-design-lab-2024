-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "03/09/2025 15:47:29"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fullAdderModule IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	Sum : BUFFER std_logic_vector(3 DOWNTO 0);
	Cout : BUFFER std_logic;
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	seg2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END fullAdderModule;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fullAdderModule IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \cell_1|Sum~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \cell_2|Sum~combout\ : std_logic;
SIGNAL \cell_2|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \cell_3|Sum~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \cell_4|Sum~0_combout\ : std_logic;
SIGNAL \cell_4|Sum~combout\ : std_logic;
SIGNAL \cell_4|Cout~0_combout\ : std_logic;
SIGNAL \decoder_1|seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_1|seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_1|seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_1|seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_1|seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_1|seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_1|seg[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \cell_4|ALT_INV_Sum~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \cell_3|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \cell_1|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \cell_2|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \decoder_1|ALT_INV_seg[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \cell_2|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \cell_4|ALT_INV_Sum~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
Sum <= ww_Sum;
Cout <= ww_Cout;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\cell_4|ALT_INV_Sum~0_combout\ <= NOT \cell_4|Sum~0_combout\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\cell_3|ALT_INV_Sum~combout\ <= NOT \cell_3|Sum~combout\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\cell_1|ALT_INV_Sum~combout\ <= NOT \cell_1|Sum~combout\;
\cell_2|ALT_INV_Sum~combout\ <= NOT \cell_2|Sum~combout\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\decoder_1|ALT_INV_seg[6]~6_combout\ <= NOT \decoder_1|seg[6]~6_combout\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\cell_2|ALT_INV_Cout~0_combout\ <= NOT \cell_2|Cout~0_combout\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\cell_4|ALT_INV_Sum~combout\ <= NOT \cell_4|Sum~combout\;

-- Location: IOOBUF_X68_Y0_N19
\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_1|Sum~combout\,
	devoe => ww_devoe,
	o => ww_Sum(0));

-- Location: IOOBUF_X70_Y0_N2
\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_2|Sum~combout\,
	devoe => ww_devoe,
	o => ww_Sum(1));

-- Location: IOOBUF_X68_Y0_N2
\Sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_3|Sum~combout\,
	devoe => ww_devoe,
	o => ww_Sum(2));

-- Location: IOOBUF_X68_Y0_N53
\Sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_4|Sum~combout\,
	devoe => ww_devoe,
	o => ww_Sum(3));

-- Location: IOOBUF_X60_Y0_N36
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_4|Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOOBUF_X60_Y0_N19
\seg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_1|seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X80_Y0_N2
\seg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_1|seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X50_Y0_N93
\seg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_1|seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X50_Y0_N76
\seg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_1|seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X56_Y0_N36
\seg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_1|seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X58_Y0_N76
\seg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_1|seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X56_Y0_N53
\seg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_1|ALT_INV_seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X52_Y0_N53
\seg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_4|Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(0));

-- Location: IOOBUF_X52_Y0_N2
\seg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_4|Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(1));

-- Location: IOOBUF_X52_Y0_N36
\seg2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_4|Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(2));

-- Location: IOOBUF_X64_Y0_N19
\seg2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_4|Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(3));

-- Location: IOOBUF_X66_Y0_N42
\seg2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg2(4));

-- Location: IOOBUF_X50_Y0_N42
\seg2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg2(5));

-- Location: IOOBUF_X60_Y0_N2
\seg2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg2(6));

-- Location: IOIBUF_X89_Y21_N4
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X68_Y4_N30
\cell_1|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \cell_1|Sum~combout\ = ( \B[0]~input_o\ & ( !\A[0]~input_o\ $ (\Cin~input_o\) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ $ (!\Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \cell_1|Sum~combout\);

-- Location: IOIBUF_X89_Y20_N61
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X68_Y4_N9
\cell_2|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \cell_2|Sum~combout\ = ( \A[0]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\Cin~input_o\) # (\B[0]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\B[0]~input_o\ & \Cin~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( 
-- !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\B[0]~input_o\ & !\Cin~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\B[0]~input_o\) # (!\Cin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010110101010101010101010101001011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \cell_2|Sum~combout\);

-- Location: LABCELL_X68_Y4_N12
\cell_2|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cell_2|Cout~0_combout\ = ( \A[1]~input_o\ & ( ((!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\)))) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \cell_2|Cout~0_combout\);

-- Location: IOIBUF_X89_Y20_N78
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X68_Y4_N15
\cell_3|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \cell_3|Sum~combout\ = ( \A[2]~input_o\ & ( !\cell_2|Cout~0_combout\ $ (\B[2]~input_o\) ) ) # ( !\A[2]~input_o\ & ( !\cell_2|Cout~0_combout\ $ (!\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cell_2|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \cell_3|Sum~combout\);

-- Location: IOIBUF_X89_Y25_N55
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X68_Y4_N18
\cell_4|Sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cell_4|Sum~0_combout\ = ( \B[3]~input_o\ & ( !\A[3]~input_o\ ) ) # ( !\B[3]~input_o\ & ( \A[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \cell_4|Sum~0_combout\);

-- Location: LABCELL_X68_Y4_N24
\cell_4|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \cell_4|Sum~combout\ = !\cell_4|Sum~0_combout\ $ (((!\A[2]~input_o\ & ((!\cell_2|Cout~0_combout\) # (!\B[2]~input_o\))) # (\A[2]~input_o\ & (!\cell_2|Cout~0_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100000011110011110000001111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \cell_2|ALT_INV_Cout~0_combout\,
	datac => \cell_4|ALT_INV_Sum~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \cell_4|Sum~combout\);

-- Location: LABCELL_X68_Y4_N27
\cell_4|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cell_4|Cout~0_combout\ = ( \A[3]~input_o\ & ( ((!\A[2]~input_o\ & (\cell_2|Cout~0_combout\ & \B[2]~input_o\)) # (\A[2]~input_o\ & ((\B[2]~input_o\) # (\cell_2|Cout~0_combout\)))) # (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & 
-- ((!\A[2]~input_o\ & (\cell_2|Cout~0_combout\ & \B[2]~input_o\)) # (\A[2]~input_o\ & ((\B[2]~input_o\) # (\cell_2|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \cell_2|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \cell_4|Cout~0_combout\);

-- Location: LABCELL_X68_Y4_N0
\decoder_1|seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|seg[0]~0_combout\ = ( \B[2]~input_o\ & ( \cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (\cell_1|Sum~combout\ & (!\cell_4|Sum~0_combout\ $ (!\cell_2|Sum~combout\)))) # (\A[2]~input_o\ & (!\cell_2|Sum~combout\ & (!\cell_1|Sum~combout\ $ 
-- (!\cell_4|Sum~0_combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (!\cell_2|Sum~combout\ & (!\cell_1|Sum~combout\ $ (\cell_4|Sum~0_combout\)))) # (\A[2]~input_o\ & (\cell_1|Sum~combout\ & (!\cell_4|Sum~0_combout\ $ 
-- (!\cell_2|Sum~combout\)))) ) ) ) # ( \B[2]~input_o\ & ( !\cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (!\cell_2|Sum~combout\ & (!\cell_1|Sum~combout\ $ (\cell_4|Sum~0_combout\)))) # (\A[2]~input_o\ & (\cell_1|Sum~combout\ & (!\cell_4|Sum~0_combout\ $ 
-- (!\cell_2|Sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (\cell_1|Sum~combout\ & (!\cell_4|Sum~0_combout\ $ (\cell_2|Sum~combout\)))) # (\A[2]~input_o\ & (!\cell_2|Sum~combout\ & (!\cell_1|Sum~combout\ $ 
-- (\cell_4|Sum~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000100000010100000110001000010000011000100000001011000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \cell_1|ALT_INV_Sum~combout\,
	datac => \cell_4|ALT_INV_Sum~0_combout\,
	datad => \cell_2|ALT_INV_Sum~combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \cell_2|ALT_INV_Cout~0_combout\,
	combout => \decoder_1|seg[0]~0_combout\);

-- Location: LABCELL_X68_Y4_N36
\decoder_1|seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|seg[1]~1_combout\ = ( \B[2]~input_o\ & ( \cell_2|Cout~0_combout\ & ( (!\cell_1|Sum~combout\ & (\A[2]~input_o\ & ((!\cell_4|Sum~0_combout\) # (\cell_2|Sum~combout\)))) # (\cell_1|Sum~combout\ & ((!\cell_4|Sum~0_combout\ $ 
-- (!\cell_2|Sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \cell_2|Cout~0_combout\ & ( (!\cell_1|Sum~combout\ & (!\A[2]~input_o\ & ((\cell_2|Sum~combout\) # (\cell_4|Sum~0_combout\)))) # (\cell_1|Sum~combout\ & (!\A[2]~input_o\ $ (!\cell_4|Sum~0_combout\ $ 
-- (!\cell_2|Sum~combout\)))) ) ) ) # ( \B[2]~input_o\ & ( !\cell_2|Cout~0_combout\ & ( (!\cell_1|Sum~combout\ & (!\A[2]~input_o\ & ((\cell_2|Sum~combout\) # (\cell_4|Sum~0_combout\)))) # (\cell_1|Sum~combout\ & (!\A[2]~input_o\ $ (!\cell_4|Sum~0_combout\ $ 
-- (!\cell_2|Sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\cell_2|Cout~0_combout\ & ( (!\cell_1|Sum~combout\ & (\A[2]~input_o\ & ((\cell_2|Sum~combout\) # (\cell_4|Sum~0_combout\)))) # (\cell_1|Sum~combout\ & ((!\cell_4|Sum~0_combout\ $ 
-- (\cell_2|Sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010001000111001010011001101000101001100110100100001101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \cell_1|ALT_INV_Sum~combout\,
	datac => \cell_4|ALT_INV_Sum~0_combout\,
	datad => \cell_2|ALT_INV_Sum~combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \cell_2|ALT_INV_Cout~0_combout\,
	combout => \decoder_1|seg[1]~1_combout\);

-- Location: LABCELL_X68_Y4_N42
\decoder_1|seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|seg[2]~2_combout\ = ( \B[2]~input_o\ & ( \cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (\cell_4|Sum~0_combout\ & (!\cell_1|Sum~combout\ $ (!\cell_2|Sum~combout\)))) # (\A[2]~input_o\ & (!\cell_4|Sum~0_combout\ & ((!\cell_1|Sum~combout\) # 
-- (\cell_2|Sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \cell_2|Cout~0_combout\ & ( (\cell_4|Sum~0_combout\ & ((!\A[2]~input_o\ & ((!\cell_1|Sum~combout\) # (\cell_2|Sum~combout\))) # (\A[2]~input_o\ & (!\cell_1|Sum~combout\ $ (!\cell_2|Sum~combout\))))) 
-- ) ) ) # ( \B[2]~input_o\ & ( !\cell_2|Cout~0_combout\ & ( (\cell_4|Sum~0_combout\ & ((!\A[2]~input_o\ & ((!\cell_1|Sum~combout\) # (\cell_2|Sum~combout\))) # (\A[2]~input_o\ & (!\cell_1|Sum~combout\ $ (!\cell_2|Sum~combout\))))) ) ) ) # ( !\B[2]~input_o\ 
-- & ( !\cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (!\cell_4|Sum~0_combout\ & (!\cell_1|Sum~combout\ $ (!\cell_2|Sum~combout\)))) # (\A[2]~input_o\ & (\cell_4|Sum~0_combout\ & ((!\cell_1|Sum~combout\) # (\cell_2|Sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000101000010010000111000001001000011100100001001011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \cell_1|ALT_INV_Sum~combout\,
	datac => \cell_4|ALT_INV_Sum~0_combout\,
	datad => \cell_2|ALT_INV_Sum~combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \cell_2|ALT_INV_Cout~0_combout\,
	combout => \decoder_1|seg[2]~2_combout\);

-- Location: LABCELL_X68_Y4_N21
\decoder_1|seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|seg[3]~3_combout\ = ( \cell_1|Sum~combout\ & ( (!\cell_3|Sum~combout\ & (!\cell_4|Sum~combout\ & !\cell_2|Sum~combout\)) # (\cell_3|Sum~combout\ & ((\cell_2|Sum~combout\))) ) ) # ( !\cell_1|Sum~combout\ & ( (!\cell_4|Sum~combout\ & 
-- (\cell_3|Sum~combout\ & !\cell_2|Sum~combout\)) # (\cell_4|Sum~combout\ & (!\cell_3|Sum~combout\ & \cell_2|Sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cell_4|ALT_INV_Sum~combout\,
	datab => \cell_3|ALT_INV_Sum~combout\,
	datac => \cell_2|ALT_INV_Sum~combout\,
	dataf => \cell_1|ALT_INV_Sum~combout\,
	combout => \decoder_1|seg[3]~3_combout\);

-- Location: LABCELL_X68_Y4_N48
\decoder_1|seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|seg[4]~4_combout\ = ( \cell_1|Sum~combout\ & ( !\cell_4|Sum~combout\ $ (((!\cell_3|Sum~combout\ & !\cell_2|Sum~combout\))) ) ) # ( !\cell_1|Sum~combout\ & ( (!\cell_4|Sum~combout\ & (\cell_3|Sum~combout\ & !\cell_2|Sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cell_4|ALT_INV_Sum~combout\,
	datab => \cell_3|ALT_INV_Sum~combout\,
	datac => \cell_2|ALT_INV_Sum~combout\,
	dataf => \cell_1|ALT_INV_Sum~combout\,
	combout => \decoder_1|seg[4]~4_combout\);

-- Location: LABCELL_X68_Y4_N54
\decoder_1|seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|seg[5]~5_combout\ = ( \B[2]~input_o\ & ( \cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (((\cell_4|Sum~0_combout\ & \cell_2|Sum~combout\)))) # (\A[2]~input_o\ & (\cell_1|Sum~combout\ & (!\cell_4|Sum~0_combout\ $ (\cell_2|Sum~combout\)))) ) ) ) 
-- # ( !\B[2]~input_o\ & ( \cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (\cell_1|Sum~combout\ & (!\cell_4|Sum~0_combout\ $ (!\cell_2|Sum~combout\)))) # (\A[2]~input_o\ & (((\cell_4|Sum~0_combout\ & \cell_2|Sum~combout\)))) ) ) ) # ( \B[2]~input_o\ & ( 
-- !\cell_2|Cout~0_combout\ & ( (!\A[2]~input_o\ & (\cell_1|Sum~combout\ & (!\cell_4|Sum~0_combout\ $ (!\cell_2|Sum~combout\)))) # (\A[2]~input_o\ & (((\cell_4|Sum~0_combout\ & \cell_2|Sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\cell_2|Cout~0_combout\ & 
-- ( (!\A[2]~input_o\ & (((!\cell_4|Sum~0_combout\ & \cell_2|Sum~combout\)))) # (\A[2]~input_o\ & (\cell_1|Sum~combout\ & (!\cell_4|Sum~0_combout\ $ (!\cell_2|Sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110110000000000100010010100000010001001010001000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \cell_1|ALT_INV_Sum~combout\,
	datac => \cell_4|ALT_INV_Sum~0_combout\,
	datad => \cell_2|ALT_INV_Sum~combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \cell_2|ALT_INV_Cout~0_combout\,
	combout => \decoder_1|seg[5]~5_combout\);

-- Location: LABCELL_X68_Y4_N51
\decoder_1|seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|seg[6]~6_combout\ = ( \cell_1|Sum~combout\ & ( (!\cell_3|Sum~combout\ $ (!\cell_2|Sum~combout\)) # (\cell_4|Sum~combout\) ) ) # ( !\cell_1|Sum~combout\ & ( (!\cell_4|Sum~combout\ $ (!\cell_3|Sum~combout\)) # (\cell_2|Sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111011011110110111101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cell_4|ALT_INV_Sum~combout\,
	datab => \cell_3|ALT_INV_Sum~combout\,
	datac => \cell_2|ALT_INV_Sum~combout\,
	dataf => \cell_1|ALT_INV_Sum~combout\,
	combout => \decoder_1|seg[6]~6_combout\);

-- Location: LABCELL_X27_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


