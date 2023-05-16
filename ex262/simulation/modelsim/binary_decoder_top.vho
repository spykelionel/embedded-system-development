-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 153 11/29/2010 SJ Full Version"

-- DATE "05/11/2023 11:57:06"

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

ENTITY 	binary_decoder_2to4 IS
    PORT (
	binary_in : IN std_logic_vector(1 DOWNTO 0);
	decoded_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END binary_decoder_2to4;

-- Design Ports Information
-- decoded_out[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_out[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_out[2]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_out[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[0]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF binary_decoder_2to4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binary_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_decoded_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \binary_in[1]~input_o\ : std_logic;
SIGNAL \binary_in[0]~input_o\ : std_logic;
SIGNAL \decoded_out~0_combout\ : std_logic;
SIGNAL \decoded_out~1_combout\ : std_logic;
SIGNAL \decoded_out~2_combout\ : std_logic;
SIGNAL \decoded_out~3_combout\ : std_logic;
SIGNAL \ALT_INV_decoded_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_decoded_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_decoded_out~2_combout\ : std_logic;
SIGNAL \ALT_INV_decoded_out~3_combout\ : std_logic;

BEGIN

ww_binary_in <= binary_in;
decoded_out <= ww_decoded_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_decoded_out~0_combout\ <= NOT \decoded_out~0_combout\;
\ALT_INV_decoded_out~1_combout\ <= NOT \decoded_out~1_combout\;
\ALT_INV_decoded_out~2_combout\ <= NOT \decoded_out~2_combout\;
\ALT_INV_decoded_out~3_combout\ <= NOT \decoded_out~3_combout\;

-- Location: IOOBUF_X107_Y73_N16
\decoded_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_decoded_out~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_out(0));

-- Location: IOOBUF_X107_Y73_N9
\decoded_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_decoded_out~1_combout\,
	devoe => ww_devoe,
	o => ww_decoded_out(1));

-- Location: IOOBUF_X109_Y73_N2
\decoded_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_decoded_out~2_combout\,
	devoe => ww_devoe,
	o => ww_decoded_out(2));

-- Location: IOOBUF_X107_Y0_N2
\decoded_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_decoded_out~3_combout\,
	devoe => ww_devoe,
	o => ww_decoded_out(3));

-- Location: IOIBUF_X111_Y73_N8
\binary_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(1),
	o => \binary_in[1]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\binary_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(0),
	o => \binary_in[0]~input_o\);

-- Location: LCCOMB_X110_Y72_N24
\decoded_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoded_out~0_combout\ = (\binary_in[1]~input_o\) # (\binary_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_in[1]~input_o\,
	datad => \binary_in[0]~input_o\,
	combout => \decoded_out~0_combout\);

-- Location: LCCOMB_X110_Y72_N26
\decoded_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoded_out~1_combout\ = (!\binary_in[1]~input_o\ & \binary_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_in[1]~input_o\,
	datad => \binary_in[0]~input_o\,
	combout => \decoded_out~1_combout\);

-- Location: LCCOMB_X110_Y72_N12
\decoded_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoded_out~2_combout\ = (\binary_in[1]~input_o\ & !\binary_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_in[1]~input_o\,
	datad => \binary_in[0]~input_o\,
	combout => \decoded_out~2_combout\);

-- Location: LCCOMB_X110_Y72_N30
\decoded_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoded_out~3_combout\ = (\binary_in[1]~input_o\ & \binary_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_in[1]~input_o\,
	datad => \binary_in[0]~input_o\,
	combout => \decoded_out~3_combout\);
END structure;


