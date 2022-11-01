-- Copyright (C) 1991-2008 Altera Corporation
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
-- VERSION "Version 8.1 Build 163 10/28/2008 SJ Web Edition"

-- DATE "10/31/2022 20:06:14"

-- 
-- Device: Altera EPF10K30ETC144-1 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY IEEE, flex10ke;
USE IEEE.std_logic_1164.all;
USE flex10ke.flex10ke_components.all;

ENTITY 	MUX IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(2 DOWNTO 0);
	c : OUT std_logic
	);
END MUX;

ARCHITECTURE structure OF MUX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_c : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \A~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~dataout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\A[5]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(5),
	dataout => \A~dataout\(5));

\A[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(2),
	dataout => \A~dataout\(2));

\B[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_B(0),
	dataout => \B~dataout\(0));

\A[6]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(6),
	dataout => \A~dataout\(6));

\B[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_B(1),
	dataout => \B~dataout\(1));

\A[4]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(4),
	dataout => \A~dataout\(4));

\Mux0~11\ : flex10ke_lcell
-- Equation(s):
-- \Mux0~11_combout\ = \B~dataout\(0) & (\B~dataout\(1)) # !\B~dataout\(0) & (\B~dataout\(1) & \A~dataout\(6) # !\B~dataout\(1) & (\A~dataout\(4)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \B~dataout\(0),
	datab => \A~dataout\(6),
	datac => \B~dataout\(1),
	datad => \A~dataout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~11_combout\);

\A[7]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(7),
	dataout => \A~dataout\(7));

\Mux0~12\ : flex10ke_lcell
-- Equation(s):
-- \Mux0~12_combout\ = \B~dataout\(0) & (\Mux0~11_combout\ & (\A~dataout\(7)) # !\Mux0~11_combout\ & \A~dataout\(5)) # !\B~dataout\(0) & (\Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \A~dataout\(5),
	datab => \B~dataout\(0),
	datac => \Mux0~11_combout\,
	datad => \A~dataout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~12_combout\);

\A[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(1),
	dataout => \A~dataout\(1));

\A[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(0),
	dataout => \A~dataout\(0));

\Mux0~13\ : flex10ke_lcell
-- Equation(s):
-- \Mux0~13_combout\ = \B~dataout\(1) & (\B~dataout\(0)) # !\B~dataout\(1) & (\B~dataout\(0) & \A~dataout\(1) # !\B~dataout\(0) & (\A~dataout\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \B~dataout\(1),
	datab => \A~dataout\(1),
	datac => \B~dataout\(0),
	datad => \A~dataout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~13_combout\);

\A[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(3),
	dataout => \A~dataout\(3));

\Mux0~14\ : flex10ke_lcell
-- Equation(s):
-- \Mux0~14_combout\ = \B~dataout\(1) & (\Mux0~13_combout\ & (\A~dataout\(3)) # !\Mux0~13_combout\ & \A~dataout\(2)) # !\B~dataout\(1) & (\Mux0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \A~dataout\(2),
	datab => \B~dataout\(1),
	datac => \Mux0~13_combout\,
	datad => \A~dataout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~14_combout\);

\B[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_B(2),
	dataout => \B~dataout\(2));

\Mux0~15\ : flex10ke_lcell
-- Equation(s):
-- \Mux0~15_combout\ = \B~dataout\(2) & \Mux0~12_combout\ # !\B~dataout\(2) & (\Mux0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~12_combout\,
	datac => \Mux0~14_combout\,
	datad => \B~dataout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~15_combout\);

\c~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_c);
END structure;


