-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/19/2019 22:43:47"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Main IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Z : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Main;

-- Design Ports Information


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(15 DOWNTO 0);
SIGNAL \cm1|S~0_combout\ : std_logic;
SIGNAL \cm1|S~1_combout\ : std_logic;
SIGNAL \cm1|Add1~0_combout\ : std_logic;
SIGNAL \cm1|S~2_combout\ : std_logic;
SIGNAL \cm2|S[0]~0_combout\ : std_logic;
SIGNAL \sba1|fba1|fa2|ha|S~combout\ : std_logic;
SIGNAL \cm2|S~1_combout\ : std_logic;
SIGNAL \cm1|Add1~2\ : std_logic;
SIGNAL \cm1|Add1~2COUT1_41\ : std_logic;
SIGNAL \cm1|Add1~5_combout\ : std_logic;
SIGNAL \cm1|S~3_combout\ : std_logic;
SIGNAL \cm2|S~3_combout\ : std_logic;
SIGNAL \cm2|S~2_combout\ : std_logic;
SIGNAL \cm2|S~4_combout\ : std_logic;
SIGNAL \sba1|fba1|fa2|ha|C~combout\ : std_logic;
SIGNAL \sba1|fba1|fa3|x1|Y~combout\ : std_logic;
SIGNAL \cm1|Add1~7\ : std_logic;
SIGNAL \cm1|Add1~7COUT1_42\ : std_logic;
SIGNAL \cm1|Add1~10_combout\ : std_logic;
SIGNAL \cm1|S~4_combout\ : std_logic;
SIGNAL \cm2|S~8_combout\ : std_logic;
SIGNAL \cm2|S~6_combout\ : std_logic;
SIGNAL \cm2|S~7_combout\ : std_logic;
SIGNAL \cm2|S~9_combout\ : std_logic;
SIGNAL \cm2|S~5_combout\ : std_logic;
SIGNAL \sba1|fba1|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \sba1|fa1|x1|Y~combout\ : std_logic;
SIGNAL \cm3|S[0]~0_combout\ : std_logic;
SIGNAL \sba3|fa1|ha|S~combout\ : std_logic;
SIGNAL \cm3|S~2_combout\ : std_logic;
SIGNAL \cm3|S~3_combout\ : std_logic;
SIGNAL \cm3|S~4_combout\ : std_logic;
SIGNAL \sba1|fa1|o1|Y~0_combout\ : std_logic;
SIGNAL \cm1|Add1~12\ : std_logic;
SIGNAL \cm1|Add1~12COUT1_43\ : std_logic;
SIGNAL \cm1|Add1~15_combout\ : std_logic;
SIGNAL \cm1|S~5_combout\ : std_logic;
SIGNAL \cm2|S~10_combout\ : std_logic;
SIGNAL \cm2|S~11_combout\ : std_logic;
SIGNAL \cm2|S~12_combout\ : std_logic;
SIGNAL \sba1|fba2|fa1|x1|Y~combout\ : std_logic;
SIGNAL \cm3|S~1_combout\ : std_logic;
SIGNAL \sba3|fa1|ha|C~combout\ : std_logic;
SIGNAL \sba3|fba2|fa1|x1|Y~combout\ : std_logic;
SIGNAL \cm4|S[0]~0_combout\ : std_logic;
SIGNAL \cm3|S~6_combout\ : std_logic;
SIGNAL \cm3|S[2]~7_combout\ : std_logic;
SIGNAL \cm3|S~8_combout\ : std_logic;
SIGNAL \cm3|S~5_combout\ : std_logic;
SIGNAL \cm3|S[2]~9_combout\ : std_logic;
SIGNAL \sba3|fba2|fa1|o1|Y~0_combout\ : std_logic;
SIGNAL \cm2|S~14_combout\ : std_logic;
SIGNAL \cm2|S~15_combout\ : std_logic;
SIGNAL \cm1|Add1~17\ : std_logic;
SIGNAL \cm1|Add1~17COUT1_44\ : std_logic;
SIGNAL \cm1|Add1~20_combout\ : std_logic;
SIGNAL \cm1|S~6_combout\ : std_logic;
SIGNAL \sba1|fba2|fa1|o1|Y~0_combout\ : std_logic;
SIGNAL \cm2|S~13_combout\ : std_logic;
SIGNAL \sba1|fba2|fa2|x1|Y~combout\ : std_logic;
SIGNAL \sba3|fba2|fa2|x1|Y~0_combout\ : std_logic;
SIGNAL \cm3|S~10_combout\ : std_logic;
SIGNAL \cm3|S[3]~11_combout\ : std_logic;
SIGNAL \cm3|S[3]~12_combout\ : std_logic;
SIGNAL \cm4|S~2_combout\ : std_logic;
SIGNAL \cm4|S~3_combout\ : std_logic;
SIGNAL \cm4|S~4_combout\ : std_logic;
SIGNAL \cm4|S~1_combout\ : std_logic;
SIGNAL \sba2|fba2|fa3|ha|S~combout\ : std_logic;
SIGNAL \sba3|fba2|fa2|o1|Y~0_combout\ : std_logic;
SIGNAL \cm2|S~16_combout\ : std_logic;
SIGNAL \sba1|fba2|fa2|o1|Y~0_combout\ : std_logic;
SIGNAL \cm2|S~17_combout\ : std_logic;
SIGNAL \cm2|S~18_combout\ : std_logic;
SIGNAL \cm1|Add1~22\ : std_logic;
SIGNAL \cm1|Add1~25_combout\ : std_logic;
SIGNAL \cm1|S~7_combout\ : std_logic;
SIGNAL \sba1|fba2|fa3|x1|Y~combout\ : std_logic;
SIGNAL \sba2|fba2|fa2|ha|C~combout\ : std_logic;
SIGNAL \sba3|fba2|fa3|x1|Y~combout\ : std_logic;
SIGNAL \cm4|S~5_combout\ : std_logic;
SIGNAL \cm4|S~8_combout\ : std_logic;
SIGNAL \cm4|S~6_combout\ : std_logic;
SIGNAL \cm4|S~7_combout\ : std_logic;
SIGNAL \cm4|S~9_combout\ : std_logic;
SIGNAL \cm3|S~13_combout\ : std_logic;
SIGNAL \cm3|S[4]~14_combout\ : std_logic;
SIGNAL \cm3|S[4]~15_combout\ : std_logic;
SIGNAL \sba2|fa2|ha|S~combout\ : std_logic;
SIGNAL \sba3|fba2|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \sba2|fba2|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \cm2|S~19_combout\ : std_logic;
SIGNAL \cm1|Add1~27\ : std_logic;
SIGNAL \cm1|Add1~27COUT1_45\ : std_logic;
SIGNAL \cm1|Add1~30_combout\ : std_logic;
SIGNAL \cm1|S~8_combout\ : std_logic;
SIGNAL \cm2|S~20_combout\ : std_logic;
SIGNAL \cm2|S~21_combout\ : std_logic;
SIGNAL \sba1|fba2|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \sba1|fa2|x1|Y~combout\ : std_logic;
SIGNAL \sba3|fa2|x1|Y~combout\ : std_logic;
SIGNAL \sba3|fa2|o1|Y~0_combout\ : std_logic;
SIGNAL \cm4|S~11_combout\ : std_logic;
SIGNAL \cm4|S~12_combout\ : std_logic;
SIGNAL \cm4|S~10_combout\ : std_logic;
SIGNAL \cm3|S[5]~17_combout\ : std_logic;
SIGNAL \cm3|S~16_combout\ : std_logic;
SIGNAL \cm3|S[5]~18_combout\ : std_logic;
SIGNAL \sba2|fba3|fa1|ha|S~combout\ : std_logic;
SIGNAL \cm2|S~23_combout\ : std_logic;
SIGNAL \cm2|S~24_combout\ : std_logic;
SIGNAL \cm2|S~22_combout\ : std_logic;
SIGNAL \cm1|Add1~32\ : std_logic;
SIGNAL \cm1|Add1~32COUT1_46\ : std_logic;
SIGNAL \cm1|Add1~35_combout\ : std_logic;
SIGNAL \cm1|S~9_combout\ : std_logic;
SIGNAL \sba1|fa2|o1|Y~0_combout\ : std_logic;
SIGNAL \sba1|fba3|fa1|x1|Y~combout\ : std_logic;
SIGNAL \sba2|fa2|o1|Y~0_combout\ : std_logic;
SIGNAL \sba3|fba3|fa1|x1|Y~combout\ : std_logic;
SIGNAL \sba2|fba3|fa1|o1|Y~0_combout\ : std_logic;
SIGNAL \cm2|S[8]~25_combout\ : std_logic;
SIGNAL \cm2|S~26_combout\ : std_logic;
SIGNAL \cm2|S[8]~27_combout\ : std_logic;
SIGNAL \sba1|fba3|fa1|o1|Y~0_combout\ : std_logic;
SIGNAL \sba1|fba3|fa2|x1|Y~combout\ : std_logic;
SIGNAL \cm3|S[6]~20_combout\ : std_logic;
SIGNAL \cm3|S~19_combout\ : std_logic;
SIGNAL \cm3|S[6]~21_combout\ : std_logic;
SIGNAL \cm4|S~13_combout\ : std_logic;
SIGNAL \cm4|S~14_combout\ : std_logic;
SIGNAL \cm4|S~15_combout\ : std_logic;
SIGNAL \sba2|fba3|fa2|ha|S~combout\ : std_logic;
SIGNAL \sba3|fba3|fa1|o1|Y~0_combout\ : std_logic;
SIGNAL \sba3|fba3|fa2|x1|Y~0_combout\ : std_logic;
SIGNAL \sba3|fba3|fa2|o1|Y~0_combout\ : std_logic;
SIGNAL \sba1|fba3|fa2|a1|Y~combout\ : std_logic;
SIGNAL \sba1|fba3|fa3|x1|Y~combout\ : std_logic;
SIGNAL \cm4|S~16_combout\ : std_logic;
SIGNAL \cm3|S~22_combout\ : std_logic;
SIGNAL \cm3|S[7]~23_combout\ : std_logic;
SIGNAL \cm3|S[7]~24_combout\ : std_logic;
SIGNAL \cm4|S~17_combout\ : std_logic;
SIGNAL \cm4|S~18_combout\ : std_logic;
SIGNAL \sba2|fba3|fa3|ha|S~combout\ : std_logic;
SIGNAL \sba2|fba3|fa2|o1|Y~0_combout\ : std_logic;
SIGNAL \sba3|fba3|fa3|x1|Y~combout\ : std_logic;
SIGNAL \sba3|fba3|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \sba2|fba3|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \cm4|S~19_combout\ : std_logic;
SIGNAL \cm3|S~25_combout\ : std_logic;
SIGNAL \cm3|S[8]~26_combout\ : std_logic;
SIGNAL \cm3|S[8]~27_combout\ : std_logic;
SIGNAL \cm4|S~20_combout\ : std_logic;
SIGNAL \cm4|S~21_combout\ : std_logic;
SIGNAL \sba2|fa3|ha|S~combout\ : std_logic;
SIGNAL \sba1|fba3|fa3|a1|Y~combout\ : std_logic;
SIGNAL \sba3|fa3|x1|Y~combout\ : std_logic;
SIGNAL \sba2|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \cm3|S[9]~28_combout\ : std_logic;
SIGNAL \cm4|S~22_combout\ : std_logic;
SIGNAL \cm4|S~23_combout\ : std_logic;
SIGNAL \cm4|S~24_combout\ : std_logic;
SIGNAL \sba2|fba4|fa1|x1|Y~combout\ : std_logic;
SIGNAL \sba3|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \sba3|fba4|fa1|x1|Y~combout\ : std_logic;
SIGNAL \sba2|fba4|fa1|o1|Y~0_combout\ : std_logic;
SIGNAL \cm4|S[8]~26_combout\ : std_logic;
SIGNAL \cm4|S~25_combout\ : std_logic;
SIGNAL \cm4|S[8]~27_combout\ : std_logic;
SIGNAL \sba3|fba4|fa2|x1|Y~combout\ : std_logic;
SIGNAL \cm4|S[9]~28_combout\ : std_logic;
SIGNAL \sba3|fba4|fa3|x1|Y~0_combout\ : std_logic;
SIGNAL \sba3|fba4|fa3|x1|Y~1_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LC_X11_Y7_N7
\cm1|S~0\ : maxv_lcell
-- Equation(s):
-- \cm1|S~0_combout\ = (\A~combout\(0) & (!\B~combout\(1) & ((\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(1),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~0_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X11_Y7_N0
\cm1|S~1\ : maxv_lcell
-- Equation(s):
-- \cm1|S~1_combout\ = (\B~combout\(1) & (\A~combout\(0) & ((!\B~combout\(0))))) # (!\B~combout\(1) & (((\A~combout\(1) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(1),
	datac => \A~combout\(1),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~1_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LC_X8_Y7_N0
\cm1|Add1~0\ : maxv_lcell
-- Equation(s):
-- \cm1|Add1~0_combout\ = \A~combout\(1) $ ((\A~combout\(0)))
-- \cm1|Add1~2\ = CARRY((!\A~combout\(1) & (!\A~combout\(0))))
-- \cm1|Add1~2COUT1_41\ = CARRY((!\A~combout\(1) & (!\A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6611",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|Add1~0_combout\,
	cout0 => \cm1|Add1~2\,
	cout1 => \cm1|Add1~2COUT1_41\);

-- Location: LC_X13_Y7_N0
\cm1|S~2\ : maxv_lcell
-- Equation(s):
-- \cm1|S~2_combout\ = (\B~combout\(1) & (((\cm1|Add1~0_combout\ & !\B~combout\(0))))) # (!\B~combout\(1) & (\A~combout\(2) & ((\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(2),
	datac => \cm1|Add1~0_combout\,
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~2_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LC_X13_Y10_N1
\cm2|S[0]~0\ : maxv_lcell
-- Equation(s):
-- \cm2|S[0]~0_combout\ = (\A~combout\(0) & ((\B~combout\(2) & (!\B~combout\(3) & !\B~combout\(1))) # (!\B~combout\(2) & ((\B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4408",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(0),
	datac => \B~combout\(3),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S[0]~0_combout\);

-- Location: LC_X13_Y10_N2
\sba1|fba1|fa2|ha|S\ : maxv_lcell
-- Equation(s):
-- \sba1|fba1|fa2|ha|S~combout\ = (\cm1|S~2_combout\ $ (((\cm2|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cm1|S~2_combout\,
	datad => \cm2|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba1|fa2|ha|S~combout\);

-- Location: LC_X13_Y10_N4
\cm2|S~1\ : maxv_lcell
-- Equation(s):
-- \cm2|S~1_combout\ = (\cm1|Add1~0_combout\ & (\B~combout\(3) & (!\B~combout\(2) & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~0_combout\,
	datab => \B~combout\(3),
	datac => \B~combout\(2),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~1_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LC_X8_Y7_N1
\cm1|Add1~5\ : maxv_lcell
-- Equation(s):
-- \cm1|Add1~5_combout\ = \A~combout\(2) $ ((((!\cm1|Add1~2\))))
-- \cm1|Add1~7\ = CARRY((\A~combout\(2)) # ((!\cm1|Add1~2\)))
-- \cm1|Add1~7COUT1_42\ = CARRY((\A~combout\(2)) # ((!\cm1|Add1~2COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	cin0 => \cm1|Add1~2\,
	cin1 => \cm1|Add1~2COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|Add1~5_combout\,
	cout0 => \cm1|Add1~7\,
	cout1 => \cm1|Add1~7COUT1_42\);

-- Location: LC_X13_Y7_N8
\cm1|S~3\ : maxv_lcell
-- Equation(s):
-- \cm1|S~3_combout\ = (\B~combout\(1) & (((\cm1|Add1~5_combout\ & !\B~combout\(0))))) # (!\B~combout\(1) & (\A~combout\(3) & ((\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(3),
	datac => \cm1|Add1~5_combout\,
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~3_combout\);

-- Location: LC_X13_Y10_N8
\cm2|S~3\ : maxv_lcell
-- Equation(s):
-- \cm2|S~3_combout\ = (\B~combout\(2) & (\B~combout\(1) & (!\B~combout\(3)))) # (!\B~combout\(2) & (!\B~combout\(1) & (\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1818",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(1),
	datac => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~3_combout\);

-- Location: LC_X13_Y10_N9
\cm2|S~2\ : maxv_lcell
-- Equation(s):
-- \cm2|S~2_combout\ = (!\B~combout\(3) & (\B~combout\(2) $ ((\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0606",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(1),
	datac => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~2_combout\);

-- Location: LC_X13_Y10_N6
\cm2|S~4\ : maxv_lcell
-- Equation(s):
-- \cm2|S~4_combout\ = (\cm2|S~3_combout\ & ((\A~combout\(0)) # ((\A~combout\(1) & \cm2|S~2_combout\)))) # (!\cm2|S~3_combout\ & (((\A~combout\(1) & \cm2|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~3_combout\,
	datab => \A~combout\(0),
	datac => \A~combout\(1),
	datad => \cm2|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~4_combout\);

-- Location: LC_X13_Y10_N3
\sba1|fba1|fa2|ha|C\ : maxv_lcell
-- Equation(s):
-- \sba1|fba1|fa2|ha|C~combout\ = ((\cm1|S~2_combout\ & ((\cm2|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cm1|S~2_combout\,
	datad => \cm2|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba1|fa2|ha|C~combout\);

-- Location: LC_X13_Y10_N5
\sba1|fba1|fa3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba1|fa3|x1|Y~combout\ = \cm1|S~3_combout\ $ (\sba1|fba1|fa2|ha|C~combout\ $ (((\cm2|S~1_combout\) # (\cm2|S~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~1_combout\,
	datab => \cm1|S~3_combout\,
	datac => \cm2|S~4_combout\,
	datad => \sba1|fba1|fa2|ha|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba1|fa3|x1|Y~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LC_X8_Y7_N2
\cm1|Add1~10\ : maxv_lcell
-- Equation(s):
-- \cm1|Add1~10_combout\ = (\A~combout\(3) $ ((\cm1|Add1~7\)))
-- \cm1|Add1~12\ = CARRY(((!\A~combout\(3) & !\cm1|Add1~7\)))
-- \cm1|Add1~12COUT1_43\ = CARRY(((!\A~combout\(3) & !\cm1|Add1~7COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	cin0 => \cm1|Add1~7\,
	cin1 => \cm1|Add1~7COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|Add1~10_combout\,
	cout0 => \cm1|Add1~12\,
	cout1 => \cm1|Add1~12COUT1_43\);

-- Location: LC_X12_Y7_N5
\cm1|S~4\ : maxv_lcell
-- Equation(s):
-- \cm1|S~4_combout\ = (\B~combout\(1) & (((\cm1|Add1~10_combout\ & !\B~combout\(0))))) # (!\B~combout\(1) & (\A~combout\(4) & ((\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \cm1|Add1~10_combout\,
	datac => \B~combout\(1),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~4_combout\);

-- Location: LC_X12_Y7_N8
\cm2|S~8\ : maxv_lcell
-- Equation(s):
-- \cm2|S~8_combout\ = (!\B~combout\(3) & (((\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~8_combout\);

-- Location: LC_X12_Y7_N1
\cm2|S~6\ : maxv_lcell
-- Equation(s):
-- \cm2|S~6_combout\ = (!\B~combout\(1) & (((\B~combout\(3) & !\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \B~combout\(3),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~6_combout\);

-- Location: LC_X13_Y7_N1
\cm2|S~7\ : maxv_lcell
-- Equation(s):
-- \cm2|S~7_combout\ = (\cm2|S~6_combout\ & ((\cm1|Add1~0_combout\) # ((\A~combout\(2) & \cm2|S~2_combout\)))) # (!\cm2|S~6_combout\ & (\A~combout\(2) & (\cm2|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~6_combout\,
	datab => \A~combout\(2),
	datac => \cm2|S~2_combout\,
	datad => \cm1|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~7_combout\);

-- Location: LC_X12_Y7_N9
\cm2|S~9\ : maxv_lcell
-- Equation(s):
-- \cm2|S~9_combout\ = (\cm2|S~7_combout\) # ((\B~combout\(1) & (\cm2|S~8_combout\ & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \cm2|S~8_combout\,
	datac => \A~combout\(1),
	datad => \cm2|S~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~9_combout\);

-- Location: LC_X12_Y7_N4
\cm2|S~5\ : maxv_lcell
-- Equation(s):
-- \cm2|S~5_combout\ = (\B~combout\(1) & (\cm1|Add1~5_combout\ & (\B~combout\(3) & !\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \cm1|Add1~5_combout\,
	datac => \B~combout\(3),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~5_combout\);

-- Location: LC_X13_Y10_N7
\sba1|fba1|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba1|fba1|fa3|o1|Y~0_combout\ = (\cm1|S~3_combout\ & ((\cm2|S~1_combout\) # ((\cm2|S~4_combout\) # (\sba1|fba1|fa2|ha|C~combout\)))) # (!\cm1|S~3_combout\ & (\sba1|fba1|fa2|ha|C~combout\ & ((\cm2|S~1_combout\) # (\cm2|S~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~1_combout\,
	datab => \cm1|S~3_combout\,
	datac => \cm2|S~4_combout\,
	datad => \sba1|fba1|fa2|ha|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba1|fa3|o1|Y~0_combout\);

-- Location: LC_X12_Y7_N6
\sba1|fa1|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fa1|x1|Y~combout\ = \cm1|S~4_combout\ $ (\sba1|fba1|fa3|o1|Y~0_combout\ $ (((\cm2|S~9_combout\) # (\cm2|S~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|S~4_combout\,
	datab => \cm2|S~9_combout\,
	datac => \cm2|S~5_combout\,
	datad => \sba1|fba1|fa3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fa1|x1|Y~combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LC_X11_Y6_N7
\cm3|S[0]~0\ : maxv_lcell
-- Equation(s):
-- \cm3|S[0]~0_combout\ = (\A~combout\(0) & ((\B~combout\(4) & (!\B~combout\(5) & !\B~combout\(3))) # (!\B~combout\(4) & ((\B~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(5),
	datac => \B~combout\(4),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[0]~0_combout\);

-- Location: LC_X11_Y6_N5
\sba3|fa1|ha|S\ : maxv_lcell
-- Equation(s):
-- \sba3|fa1|ha|S~combout\ = \sba1|fa1|x1|Y~combout\ $ ((((\cm3|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba1|fa1|x1|Y~combout\,
	datac => \cm3|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fa1|ha|S~combout\);

-- Location: LC_X9_Y6_N9
\cm3|S~2\ : maxv_lcell
-- Equation(s):
-- \cm3|S~2_combout\ = ((!\B~combout\(5) & (\B~combout\(4) $ (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "050a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datac => \B~combout\(5),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~2_combout\);

-- Location: LC_X11_Y6_N3
\cm3|S~3\ : maxv_lcell
-- Equation(s):
-- \cm3|S~3_combout\ = ((\B~combout\(5) & (!\B~combout\(4) & !\B~combout\(3))) # (!\B~combout\(5) & (\B~combout\(4) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "300c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(5),
	datac => \B~combout\(4),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~3_combout\);

-- Location: LC_X11_Y6_N4
\cm3|S~4\ : maxv_lcell
-- Equation(s):
-- \cm3|S~4_combout\ = (\A~combout\(0) & ((\cm3|S~3_combout\) # ((\cm3|S~2_combout\ & \A~combout\(1))))) # (!\A~combout\(0) & (\cm3|S~2_combout\ & (\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \cm3|S~2_combout\,
	datac => \A~combout\(1),
	datad => \cm3|S~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~4_combout\);

-- Location: LC_X12_Y7_N7
\sba1|fa1|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba1|fa1|o1|Y~0_combout\ = (\cm1|S~4_combout\ & ((\cm2|S~9_combout\) # ((\cm2|S~5_combout\) # (\sba1|fba1|fa3|o1|Y~0_combout\)))) # (!\cm1|S~4_combout\ & (\sba1|fba1|fa3|o1|Y~0_combout\ & ((\cm2|S~9_combout\) # (\cm2|S~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|S~4_combout\,
	datab => \cm2|S~9_combout\,
	datac => \cm2|S~5_combout\,
	datad => \sba1|fba1|fa3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fa1|o1|Y~0_combout\);

-- Location: LC_X8_Y7_N3
\cm1|Add1~15\ : maxv_lcell
-- Equation(s):
-- \cm1|Add1~15_combout\ = (\A~combout\(4) $ ((!\cm1|Add1~12\)))
-- \cm1|Add1~17\ = CARRY(((\A~combout\(4)) # (!\cm1|Add1~12\)))
-- \cm1|Add1~17COUT1_44\ = CARRY(((\A~combout\(4)) # (!\cm1|Add1~12COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	cin0 => \cm1|Add1~12\,
	cin1 => \cm1|Add1~12COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|Add1~15_combout\,
	cout0 => \cm1|Add1~17\,
	cout1 => \cm1|Add1~17COUT1_44\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LC_X11_Y7_N5
\cm1|S~5\ : maxv_lcell
-- Equation(s):
-- \cm1|S~5_combout\ = (\B~combout\(1) & (\cm1|Add1~15_combout\ & ((!\B~combout\(0))))) # (!\B~combout\(1) & (((\A~combout\(5) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~15_combout\,
	datab => \B~combout\(1),
	datac => \A~combout\(5),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~5_combout\);

-- Location: LC_X12_Y7_N3
\cm2|S~10\ : maxv_lcell
-- Equation(s):
-- \cm2|S~10_combout\ = (\B~combout\(1) & (\cm1|Add1~10_combout\ & (\B~combout\(3) & !\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \cm1|Add1~10_combout\,
	datac => \B~combout\(3),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~10_combout\);

-- Location: LC_X13_Y7_N9
\cm2|S~11\ : maxv_lcell
-- Equation(s):
-- \cm2|S~11_combout\ = (\cm2|S~6_combout\ & ((\cm1|Add1~5_combout\) # ((\A~combout\(3) & \cm2|S~2_combout\)))) # (!\cm2|S~6_combout\ & (\A~combout\(3) & (\cm2|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~6_combout\,
	datab => \A~combout\(3),
	datac => \cm2|S~2_combout\,
	datad => \cm1|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~11_combout\);

-- Location: LC_X13_Y7_N7
\cm2|S~12\ : maxv_lcell
-- Equation(s):
-- \cm2|S~12_combout\ = (\cm2|S~11_combout\) # ((\cm2|S~8_combout\ & (\A~combout\(2) & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~8_combout\,
	datab => \A~combout\(2),
	datac => \B~combout\(1),
	datad => \cm2|S~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~12_combout\);

-- Location: LC_X11_Y6_N2
\sba1|fba2|fa1|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba2|fa1|x1|Y~combout\ = \sba1|fa1|o1|Y~0_combout\ $ (\cm1|S~5_combout\ $ (((\cm2|S~10_combout\) # (\cm2|S~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba1|fa1|o1|Y~0_combout\,
	datab => \cm1|S~5_combout\,
	datac => \cm2|S~10_combout\,
	datad => \cm2|S~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba2|fa1|x1|Y~combout\);

-- Location: LC_X11_Y6_N1
\cm3|S~1\ : maxv_lcell
-- Equation(s):
-- \cm3|S~1_combout\ = (!\B~combout\(4) & (\B~combout\(5) & (\cm1|Add1~0_combout\ & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \B~combout\(5),
	datac => \cm1|Add1~0_combout\,
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~1_combout\);

-- Location: LC_X11_Y6_N8
\sba3|fa1|ha|C\ : maxv_lcell
-- Equation(s):
-- \sba3|fa1|ha|C~combout\ = (\sba1|fa1|x1|Y~combout\ & (((\cm3|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba1|fa1|x1|Y~combout\,
	datac => \cm3|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fa1|ha|C~combout\);

-- Location: LC_X11_Y6_N0
\sba3|fba2|fa1|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba3|fba2|fa1|x1|Y~combout\ = \sba1|fba2|fa1|x1|Y~combout\ $ (\sba3|fa1|ha|C~combout\ $ (((\cm3|S~4_combout\) # (\cm3|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S~4_combout\,
	datab => \sba1|fba2|fa1|x1|Y~combout\,
	datac => \cm3|S~1_combout\,
	datad => \sba3|fa1|ha|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba2|fa1|x1|Y~combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LC_X8_Y8_N0
\cm4|S[0]~0\ : maxv_lcell
-- Equation(s):
-- \cm4|S[0]~0_combout\ = (\A~combout\(0) & ((\B~combout\(6) & (!\B~combout\(7) & !\B~combout\(5))) # (!\B~combout\(6) & ((\B~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4408",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(0),
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S[0]~0_combout\);

-- Location: LC_X9_Y6_N4
\cm3|S~6\ : maxv_lcell
-- Equation(s):
-- \cm3|S~6_combout\ = (!\B~combout\(4) & (((\B~combout\(5) & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datac => \B~combout\(5),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~6_combout\);

-- Location: LC_X12_Y6_N6
\cm3|S[2]~7\ : maxv_lcell
-- Equation(s):
-- \cm3|S[2]~7_combout\ = (\cm1|Add1~5_combout\ & ((\cm3|S~6_combout\) # ((\A~combout\(2) & \cm3|S~2_combout\)))) # (!\cm1|Add1~5_combout\ & (\A~combout\(2) & (\cm3|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~5_combout\,
	datab => \A~combout\(2),
	datac => \cm3|S~2_combout\,
	datad => \cm3|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[2]~7_combout\);

-- Location: LC_X12_Y6_N0
\cm3|S~8\ : maxv_lcell
-- Equation(s):
-- \cm3|S~8_combout\ = ((!\B~combout\(4) & (\B~combout\(5) & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(4),
	datac => \B~combout\(5),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~8_combout\);

-- Location: LC_X12_Y6_N9
\cm3|S~5\ : maxv_lcell
-- Equation(s):
-- \cm3|S~5_combout\ = (\B~combout\(3) & (\A~combout\(1) & (!\B~combout\(5) & \B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(1),
	datac => \B~combout\(5),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~5_combout\);

-- Location: LC_X12_Y6_N4
\cm3|S[2]~9\ : maxv_lcell
-- Equation(s):
-- \cm3|S[2]~9_combout\ = (\cm3|S[2]~7_combout\) # ((\cm3|S~5_combout\) # ((\cm3|S~8_combout\ & \cm1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S[2]~7_combout\,
	datab => \cm3|S~8_combout\,
	datac => \cm1|Add1~0_combout\,
	datad => \cm3|S~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[2]~9_combout\);

-- Location: LC_X11_Y6_N9
\sba3|fba2|fa1|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba2|fa1|o1|Y~0_combout\ = (\sba3|fa1|ha|C~combout\ & ((\cm3|S~1_combout\) # ((\cm3|S~4_combout\) # (\sba1|fba2|fa1|x1|Y~combout\)))) # (!\sba3|fa1|ha|C~combout\ & (\sba1|fba2|fa1|x1|Y~combout\ & ((\cm3|S~1_combout\) # (\cm3|S~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba3|fa1|ha|C~combout\,
	datab => \cm3|S~1_combout\,
	datac => \cm3|S~4_combout\,
	datad => \sba1|fba2|fa1|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba2|fa1|o1|Y~0_combout\);

-- Location: LC_X12_Y7_N2
\cm2|S~14\ : maxv_lcell
-- Equation(s):
-- \cm2|S~14_combout\ = (\A~combout\(4) & ((\cm2|S~2_combout\) # ((\cm1|Add1~10_combout\ & \cm2|S~6_combout\)))) # (!\A~combout\(4) & (\cm1|Add1~10_combout\ & ((\cm2|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \cm1|Add1~10_combout\,
	datac => \cm2|S~2_combout\,
	datad => \cm2|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~14_combout\);

-- Location: LC_X13_Y7_N5
\cm2|S~15\ : maxv_lcell
-- Equation(s):
-- \cm2|S~15_combout\ = (\cm2|S~14_combout\) # ((\cm2|S~8_combout\ & (\A~combout\(3) & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~8_combout\,
	datab => \A~combout\(3),
	datac => \B~combout\(1),
	datad => \cm2|S~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~15_combout\);

-- Location: LC_X8_Y7_N4
\cm1|Add1~20\ : maxv_lcell
-- Equation(s):
-- \cm1|Add1~20_combout\ = \A~combout\(5) $ ((((\cm1|Add1~17\))))
-- \cm1|Add1~22\ = CARRY((!\A~combout\(5) & ((!\cm1|Add1~17COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	cin0 => \cm1|Add1~17\,
	cin1 => \cm1|Add1~17COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|Add1~20_combout\,
	cout => \cm1|Add1~22\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LC_X11_Y7_N6
\cm1|S~6\ : maxv_lcell
-- Equation(s):
-- \cm1|S~6_combout\ = (\B~combout\(1) & (\cm1|Add1~20_combout\ & ((!\B~combout\(0))))) # (!\B~combout\(1) & (((\A~combout\(6) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \cm1|Add1~20_combout\,
	datac => \A~combout\(6),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~6_combout\);

-- Location: LC_X11_Y6_N6
\sba1|fba2|fa1|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba1|fba2|fa1|o1|Y~0_combout\ = (\sba1|fa1|o1|Y~0_combout\ & ((\cm1|S~5_combout\) # ((\cm2|S~10_combout\) # (\cm2|S~12_combout\)))) # (!\sba1|fa1|o1|Y~0_combout\ & (\cm1|S~5_combout\ & ((\cm2|S~10_combout\) # (\cm2|S~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba1|fa1|o1|Y~0_combout\,
	datab => \cm1|S~5_combout\,
	datac => \cm2|S~10_combout\,
	datad => \cm2|S~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba2|fa1|o1|Y~0_combout\);

-- Location: LC_X15_Y6_N3
\cm2|S~13\ : maxv_lcell
-- Equation(s):
-- \cm2|S~13_combout\ = (\B~combout\(1) & (\cm1|Add1~15_combout\ & (!\B~combout\(2) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \cm1|Add1~15_combout\,
	datac => \B~combout\(2),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~13_combout\);

-- Location: LC_X15_Y6_N8
\sba1|fba2|fa2|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba2|fa2|x1|Y~combout\ = \cm1|S~6_combout\ $ (\sba1|fba2|fa1|o1|Y~0_combout\ $ (((\cm2|S~15_combout\) # (\cm2|S~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~15_combout\,
	datab => \cm1|S~6_combout\,
	datac => \sba1|fba2|fa1|o1|Y~0_combout\,
	datad => \cm2|S~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba2|fa2|x1|Y~combout\);

-- Location: LC_X15_Y6_N0
\sba3|fba2|fa2|x1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba2|fa2|x1|Y~0_combout\ = \cm4|S[0]~0_combout\ $ (\cm3|S[2]~9_combout\ $ (\sba3|fba2|fa1|o1|Y~0_combout\ $ (\sba1|fba2|fa2|x1|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S[0]~0_combout\,
	datab => \cm3|S[2]~9_combout\,
	datac => \sba3|fba2|fa1|o1|Y~0_combout\,
	datad => \sba1|fba2|fa2|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba2|fa2|x1|Y~0_combout\);

-- Location: LC_X12_Y6_N5
\cm3|S~10\ : maxv_lcell
-- Equation(s):
-- \cm3|S~10_combout\ = (!\B~combout\(5) & (\B~combout\(4) & (\A~combout\(2) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \B~combout\(4),
	datac => \A~combout\(2),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~10_combout\);

-- Location: LC_X12_Y6_N2
\cm3|S[3]~11\ : maxv_lcell
-- Equation(s):
-- \cm3|S[3]~11_combout\ = (\cm3|S~6_combout\ & ((\cm1|Add1~10_combout\) # ((\A~combout\(3) & \cm3|S~2_combout\)))) # (!\cm3|S~6_combout\ & (\A~combout\(3) & ((\cm3|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S~6_combout\,
	datab => \A~combout\(3),
	datac => \cm1|Add1~10_combout\,
	datad => \cm3|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[3]~11_combout\);

-- Location: LC_X12_Y6_N3
\cm3|S[3]~12\ : maxv_lcell
-- Equation(s):
-- \cm3|S[3]~12_combout\ = (\cm3|S~10_combout\) # ((\cm3|S[3]~11_combout\) # ((\cm1|Add1~5_combout\ & \cm3|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S~10_combout\,
	datab => \cm3|S[3]~11_combout\,
	datac => \cm1|Add1~5_combout\,
	datad => \cm3|S~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[3]~12_combout\);

-- Location: LC_X8_Y8_N9
\cm4|S~2\ : maxv_lcell
-- Equation(s):
-- \cm4|S~2_combout\ = ((!\B~combout\(7) & (\B~combout\(6) $ (\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "050a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~2_combout\);

-- Location: LC_X8_Y8_N2
\cm4|S~3\ : maxv_lcell
-- Equation(s):
-- \cm4|S~3_combout\ = (\B~combout\(6) & (((!\B~combout\(7) & \B~combout\(5))))) # (!\B~combout\(6) & (((\B~combout\(7) & !\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~3_combout\);

-- Location: LC_X8_Y7_N8
\cm4|S~4\ : maxv_lcell
-- Equation(s):
-- \cm4|S~4_combout\ = (\A~combout\(1) & ((\cm4|S~2_combout\) # ((\A~combout\(0) & \cm4|S~3_combout\)))) # (!\A~combout\(1) & (((\A~combout\(0) & \cm4|S~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \cm4|S~2_combout\,
	datac => \A~combout\(0),
	datad => \cm4|S~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~4_combout\);

-- Location: LC_X8_Y8_N4
\cm4|S~1\ : maxv_lcell
-- Equation(s):
-- \cm4|S~1_combout\ = (!\B~combout\(6) & (\cm1|Add1~0_combout\ & (\B~combout\(7) & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \cm1|Add1~0_combout\,
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~1_combout\);

-- Location: LC_X15_Y6_N5
\sba2|fba2|fa3|ha|S\ : maxv_lcell
-- Equation(s):
-- \sba2|fba2|fa3|ha|S~combout\ = \cm3|S[3]~12_combout\ $ (((\cm4|S~4_combout\) # ((\cm4|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5656",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S[3]~12_combout\,
	datab => \cm4|S~4_combout\,
	datac => \cm4|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba2|fa3|ha|S~combout\);

-- Location: LC_X15_Y6_N9
\sba3|fba2|fa2|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba2|fa2|o1|Y~0_combout\ = (\sba3|fba2|fa1|o1|Y~0_combout\ & ((\sba1|fba2|fa2|x1|Y~combout\) # (\cm4|S[0]~0_combout\ $ (\cm3|S[2]~9_combout\)))) # (!\sba3|fba2|fa1|o1|Y~0_combout\ & (\sba1|fba2|fa2|x1|Y~combout\ & (\cm4|S[0]~0_combout\ $ 
-- (\cm3|S[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S[0]~0_combout\,
	datab => \cm3|S[2]~9_combout\,
	datac => \sba3|fba2|fa1|o1|Y~0_combout\,
	datad => \sba1|fba2|fa2|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba2|fa2|o1|Y~0_combout\);

-- Location: LC_X12_Y8_N8
\cm2|S~16\ : maxv_lcell
-- Equation(s):
-- \cm2|S~16_combout\ = (\B~combout\(3) & (\cm1|Add1~20_combout\ & (!\B~combout\(2) & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \cm1|Add1~20_combout\,
	datac => \B~combout\(2),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~16_combout\);

-- Location: LC_X15_Y6_N4
\sba1|fba2|fa2|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba1|fba2|fa2|o1|Y~0_combout\ = (\cm1|S~6_combout\ & ((\cm2|S~15_combout\) # ((\sba1|fba2|fa1|o1|Y~0_combout\) # (\cm2|S~13_combout\)))) # (!\cm1|S~6_combout\ & (\sba1|fba2|fa1|o1|Y~0_combout\ & ((\cm2|S~15_combout\) # (\cm2|S~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~15_combout\,
	datab => \cm1|S~6_combout\,
	datac => \sba1|fba2|fa1|o1|Y~0_combout\,
	datad => \cm2|S~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba2|fa2|o1|Y~0_combout\);

-- Location: LC_X11_Y7_N9
\cm2|S~17\ : maxv_lcell
-- Equation(s):
-- \cm2|S~17_combout\ = (\cm1|Add1~15_combout\ & ((\cm2|S~6_combout\) # ((\cm2|S~2_combout\ & \A~combout\(5))))) # (!\cm1|Add1~15_combout\ & (((\cm2|S~2_combout\ & \A~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~15_combout\,
	datab => \cm2|S~6_combout\,
	datac => \cm2|S~2_combout\,
	datad => \A~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~17_combout\);

-- Location: LC_X11_Y7_N1
\cm2|S~18\ : maxv_lcell
-- Equation(s):
-- \cm2|S~18_combout\ = (\cm2|S~17_combout\) # ((\B~combout\(1) & (\A~combout\(4) & \cm2|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \cm2|S~17_combout\,
	datac => \A~combout\(4),
	datad => \cm2|S~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~18_combout\);

-- Location: LC_X8_Y7_N5
\cm1|Add1~25\ : maxv_lcell
-- Equation(s):
-- \cm1|Add1~25_combout\ = (\A~combout\(6) $ ((!\cm1|Add1~22\)))
-- \cm1|Add1~27\ = CARRY(((\A~combout\(6)) # (!\cm1|Add1~22\)))
-- \cm1|Add1~27COUT1_45\ = CARRY(((\A~combout\(6)) # (!\cm1|Add1~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(6),
	cin => \cm1|Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|Add1~25_combout\,
	cout0 => \cm1|Add1~27\,
	cout1 => \cm1|Add1~27COUT1_45\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LC_X12_Y8_N3
\cm1|S~7\ : maxv_lcell
-- Equation(s):
-- \cm1|S~7_combout\ = (\B~combout\(1) & (\cm1|Add1~25_combout\ & ((!\B~combout\(0))))) # (!\B~combout\(1) & (((\A~combout\(7) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~25_combout\,
	datab => \A~combout\(7),
	datac => \B~combout\(1),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~7_combout\);

-- Location: LC_X12_Y8_N4
\sba1|fba2|fa3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba2|fa3|x1|Y~combout\ = \sba1|fba2|fa2|o1|Y~0_combout\ $ (\cm1|S~7_combout\ $ (((\cm2|S~16_combout\) # (\cm2|S~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~16_combout\,
	datab => \sba1|fba2|fa2|o1|Y~0_combout\,
	datac => \cm2|S~18_combout\,
	datad => \cm1|S~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba2|fa3|x1|Y~combout\);

-- Location: LC_X15_Y6_N1
\sba2|fba2|fa2|ha|C\ : maxv_lcell
-- Equation(s):
-- \sba2|fba2|fa2|ha|C~combout\ = (\cm4|S[0]~0_combout\ & (((\cm3|S[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S[0]~0_combout\,
	datad => \cm3|S[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba2|fa2|ha|C~combout\);

-- Location: LC_X15_Y6_N6
\sba3|fba2|fa3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba3|fba2|fa3|x1|Y~combout\ = \sba2|fba2|fa3|ha|S~combout\ $ (\sba3|fba2|fa2|o1|Y~0_combout\ $ (\sba1|fba2|fa3|x1|Y~combout\ $ (\sba2|fba2|fa2|ha|C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fba2|fa3|ha|S~combout\,
	datab => \sba3|fba2|fa2|o1|Y~0_combout\,
	datac => \sba1|fba2|fa3|x1|Y~combout\,
	datad => \sba2|fba2|fa2|ha|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba2|fa3|x1|Y~combout\);

-- Location: LC_X10_Y7_N6
\cm4|S~5\ : maxv_lcell
-- Equation(s):
-- \cm4|S~5_combout\ = (\B~combout\(7) & (\cm1|Add1~5_combout\ & (\B~combout\(5) & !\B~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \cm1|Add1~5_combout\,
	datac => \B~combout\(5),
	datad => \B~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~5_combout\);

-- Location: LC_X10_Y7_N9
\cm4|S~8\ : maxv_lcell
-- Equation(s):
-- \cm4|S~8_combout\ = (((\B~combout\(6) & !\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(6),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~8_combout\);

-- Location: LC_X10_Y7_N4
\cm4|S~6\ : maxv_lcell
-- Equation(s):
-- \cm4|S~6_combout\ = (\B~combout\(7) & (((!\B~combout\(5) & !\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datac => \B~combout\(5),
	datad => \B~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~6_combout\);

-- Location: LC_X13_Y7_N2
\cm4|S~7\ : maxv_lcell
-- Equation(s):
-- \cm4|S~7_combout\ = (\cm4|S~2_combout\ & ((\A~combout\(2)) # ((\cm1|Add1~0_combout\ & \cm4|S~6_combout\)))) # (!\cm4|S~2_combout\ & (((\cm1|Add1~0_combout\ & \cm4|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S~2_combout\,
	datab => \A~combout\(2),
	datac => \cm1|Add1~0_combout\,
	datad => \cm4|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~7_combout\);

-- Location: LC_X13_Y7_N6
\cm4|S~9\ : maxv_lcell
-- Equation(s):
-- \cm4|S~9_combout\ = (\cm4|S~7_combout\) # ((\A~combout\(1) & (\cm4|S~8_combout\ & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \cm4|S~8_combout\,
	datac => \B~combout\(5),
	datad => \cm4|S~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~9_combout\);

-- Location: LC_X12_Y6_N7
\cm3|S~13\ : maxv_lcell
-- Equation(s):
-- \cm3|S~13_combout\ = (\B~combout\(3) & (\A~combout\(3) & (!\B~combout\(5) & \B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datac => \B~combout\(5),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~13_combout\);

-- Location: LC_X12_Y6_N1
\cm3|S[4]~14\ : maxv_lcell
-- Equation(s):
-- \cm3|S[4]~14_combout\ = (\cm3|S~6_combout\ & ((\cm1|Add1~15_combout\) # ((\cm3|S~2_combout\ & \A~combout\(4))))) # (!\cm3|S~6_combout\ & (\cm3|S~2_combout\ & ((\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S~6_combout\,
	datab => \cm3|S~2_combout\,
	datac => \cm1|Add1~15_combout\,
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[4]~14_combout\);

-- Location: LC_X12_Y6_N8
\cm3|S[4]~15\ : maxv_lcell
-- Equation(s):
-- \cm3|S[4]~15_combout\ = (\cm3|S~13_combout\) # ((\cm3|S[4]~14_combout\) # ((\cm1|Add1~10_combout\ & \cm3|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S~13_combout\,
	datab => \cm3|S[4]~14_combout\,
	datac => \cm1|Add1~10_combout\,
	datad => \cm3|S~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[4]~15_combout\);

-- Location: LC_X14_Y7_N5
\sba2|fa2|ha|S\ : maxv_lcell
-- Equation(s):
-- \sba2|fa2|ha|S~combout\ = (\cm3|S[4]~15_combout\ $ (((\cm4|S~5_combout\) # (\cm4|S~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cm4|S~5_combout\,
	datac => \cm4|S~9_combout\,
	datad => \cm3|S[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fa2|ha|S~combout\);

-- Location: LC_X15_Y6_N2
\sba3|fba2|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba2|fa3|o1|Y~0_combout\ = (\sba3|fba2|fa2|o1|Y~0_combout\ & ((\sba1|fba2|fa3|x1|Y~combout\) # (\sba2|fba2|fa3|ha|S~combout\ $ (\sba2|fba2|fa2|ha|C~combout\)))) # (!\sba3|fba2|fa2|o1|Y~0_combout\ & (\sba1|fba2|fa3|x1|Y~combout\ & 
-- (\sba2|fba2|fa3|ha|S~combout\ $ (\sba2|fba2|fa2|ha|C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fba2|fa3|ha|S~combout\,
	datab => \sba3|fba2|fa2|o1|Y~0_combout\,
	datac => \sba1|fba2|fa3|x1|Y~combout\,
	datad => \sba2|fba2|fa2|ha|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba2|fa3|o1|Y~0_combout\);

-- Location: LC_X15_Y6_N7
\sba2|fba2|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba2|fba2|fa3|o1|Y~0_combout\ = (\cm3|S[3]~12_combout\ & ((\cm4|S~4_combout\) # ((\cm4|S~1_combout\) # (\sba2|fba2|fa2|ha|C~combout\)))) # (!\cm3|S[3]~12_combout\ & (\sba2|fba2|fa2|ha|C~combout\ & ((\cm4|S~4_combout\) # (\cm4|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S[3]~12_combout\,
	datab => \cm4|S~4_combout\,
	datac => \cm4|S~1_combout\,
	datad => \sba2|fba2|fa2|ha|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba2|fa3|o1|Y~0_combout\);

-- Location: LC_X12_Y8_N6
\cm2|S~19\ : maxv_lcell
-- Equation(s):
-- \cm2|S~19_combout\ = (\B~combout\(1) & (!\B~combout\(2) & (\B~combout\(3) & \cm1|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \cm1|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~19_combout\);

-- Location: LC_X8_Y7_N6
\cm1|Add1~30\ : maxv_lcell
-- Equation(s):
-- \cm1|Add1~30_combout\ = (\A~combout\(7) $ (((!\cm1|Add1~22\ & \cm1|Add1~27\) # (\cm1|Add1~22\ & \cm1|Add1~27COUT1_45\))))
-- \cm1|Add1~32\ = CARRY(((!\A~combout\(7) & !\cm1|Add1~27\)))
-- \cm1|Add1~32COUT1_46\ = CARRY(((!\A~combout\(7) & !\cm1|Add1~27COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(7),
	cin => \cm1|Add1~22\,
	cin0 => \cm1|Add1~27\,
	cin1 => \cm1|Add1~27COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|Add1~30_combout\,
	cout0 => \cm1|Add1~32\,
	cout1 => \cm1|Add1~32COUT1_46\);

-- Location: LC_X12_Y8_N7
\cm1|S~8\ : maxv_lcell
-- Equation(s):
-- \cm1|S~8_combout\ = (\B~combout\(1) & (\cm1|Add1~30_combout\ & ((!\B~combout\(0))))) # (!\B~combout\(1) & (((\A~combout\(7) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~30_combout\,
	datab => \A~combout\(7),
	datac => \B~combout\(1),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~8_combout\);

-- Location: LC_X11_Y7_N3
\cm2|S~20\ : maxv_lcell
-- Equation(s):
-- \cm2|S~20_combout\ = (\cm2|S~2_combout\ & ((\A~combout\(6)) # ((\cm1|Add1~20_combout\ & \cm2|S~6_combout\)))) # (!\cm2|S~2_combout\ & (\cm1|Add1~20_combout\ & ((\cm2|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~2_combout\,
	datab => \cm1|Add1~20_combout\,
	datac => \A~combout\(6),
	datad => \cm2|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~20_combout\);

-- Location: LC_X11_Y7_N2
\cm2|S~21\ : maxv_lcell
-- Equation(s):
-- \cm2|S~21_combout\ = (\cm2|S~20_combout\) # ((\B~combout\(1) & (\A~combout\(5) & \cm2|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~20_combout\,
	datab => \B~combout\(1),
	datac => \A~combout\(5),
	datad => \cm2|S~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~21_combout\);

-- Location: LC_X12_Y8_N2
\sba1|fba2|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba1|fba2|fa3|o1|Y~0_combout\ = (\sba1|fba2|fa2|o1|Y~0_combout\ & ((\cm2|S~16_combout\) # ((\cm2|S~18_combout\) # (\cm1|S~7_combout\)))) # (!\sba1|fba2|fa2|o1|Y~0_combout\ & (\cm1|S~7_combout\ & ((\cm2|S~16_combout\) # (\cm2|S~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~16_combout\,
	datab => \sba1|fba2|fa2|o1|Y~0_combout\,
	datac => \cm2|S~18_combout\,
	datad => \cm1|S~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba2|fa3|o1|Y~0_combout\);

-- Location: LC_X12_Y8_N5
\sba1|fa2|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fa2|x1|Y~combout\ = \cm1|S~8_combout\ $ (\sba1|fba2|fa3|o1|Y~0_combout\ $ (((\cm2|S~19_combout\) # (\cm2|S~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~19_combout\,
	datab => \cm1|S~8_combout\,
	datac => \cm2|S~21_combout\,
	datad => \sba1|fba2|fa3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fa2|x1|Y~combout\);

-- Location: LC_X14_Y7_N1
\sba3|fa2|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba3|fa2|x1|Y~combout\ = \sba2|fa2|ha|S~combout\ $ (\sba3|fba2|fa3|o1|Y~0_combout\ $ (\sba2|fba2|fa3|o1|Y~0_combout\ $ (\sba1|fa2|x1|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fa2|ha|S~combout\,
	datab => \sba3|fba2|fa3|o1|Y~0_combout\,
	datac => \sba2|fba2|fa3|o1|Y~0_combout\,
	datad => \sba1|fa2|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fa2|x1|Y~combout\);

-- Location: LC_X14_Y7_N6
\sba3|fa2|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fa2|o1|Y~0_combout\ = (\sba1|fa2|x1|Y~combout\ & ((\sba3|fba2|fa3|o1|Y~0_combout\) # (\sba2|fba2|fa3|o1|Y~0_combout\ $ (\sba2|fa2|ha|S~combout\)))) # (!\sba1|fa2|x1|Y~combout\ & (\sba3|fba2|fa3|o1|Y~0_combout\ & (\sba2|fba2|fa3|o1|Y~0_combout\ $ 
-- (\sba2|fa2|ha|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba1|fa2|x1|Y~combout\,
	datab => \sba3|fba2|fa3|o1|Y~0_combout\,
	datac => \sba2|fba2|fa3|o1|Y~0_combout\,
	datad => \sba2|fa2|ha|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fa2|o1|Y~0_combout\);

-- Location: LC_X13_Y7_N3
\cm4|S~11\ : maxv_lcell
-- Equation(s):
-- \cm4|S~11_combout\ = (\cm4|S~2_combout\ & ((\A~combout\(3)) # ((\cm1|Add1~5_combout\ & \cm4|S~6_combout\)))) # (!\cm4|S~2_combout\ & (((\cm1|Add1~5_combout\ & \cm4|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S~2_combout\,
	datab => \A~combout\(3),
	datac => \cm1|Add1~5_combout\,
	datad => \cm4|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~11_combout\);

-- Location: LC_X13_Y7_N4
\cm4|S~12\ : maxv_lcell
-- Equation(s):
-- \cm4|S~12_combout\ = (\cm4|S~11_combout\) # ((\B~combout\(5) & (\A~combout\(2) & \cm4|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(2),
	datac => \cm4|S~8_combout\,
	datad => \cm4|S~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~12_combout\);

-- Location: LC_X8_Y8_N3
\cm4|S~10\ : maxv_lcell
-- Equation(s):
-- \cm4|S~10_combout\ = (!\B~combout\(6) & (\cm1|Add1~10_combout\ & (\B~combout\(7) & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \cm1|Add1~10_combout\,
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~10_combout\);

-- Location: LC_X10_Y6_N3
\cm3|S[5]~17\ : maxv_lcell
-- Equation(s):
-- \cm3|S[5]~17_combout\ = (\A~combout\(5) & ((\cm3|S~2_combout\) # ((\cm1|Add1~20_combout\ & \cm3|S~6_combout\)))) # (!\A~combout\(5) & (\cm1|Add1~20_combout\ & (\cm3|S~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \cm1|Add1~20_combout\,
	datac => \cm3|S~6_combout\,
	datad => \cm3|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[5]~17_combout\);

-- Location: LC_X9_Y6_N0
\cm3|S~16\ : maxv_lcell
-- Equation(s):
-- \cm3|S~16_combout\ = (\B~combout\(4) & (\A~combout\(4) & (!\B~combout\(5) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datac => \B~combout\(5),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~16_combout\);

-- Location: LC_X14_Y7_N8
\cm3|S[5]~18\ : maxv_lcell
-- Equation(s):
-- \cm3|S[5]~18_combout\ = (\cm3|S[5]~17_combout\) # ((\cm3|S~16_combout\) # ((\cm1|Add1~15_combout\ & \cm3|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S[5]~17_combout\,
	datab => \cm1|Add1~15_combout\,
	datac => \cm3|S~16_combout\,
	datad => \cm3|S~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[5]~18_combout\);

-- Location: LC_X14_Y7_N9
\sba2|fba3|fa1|ha|S\ : maxv_lcell
-- Equation(s):
-- \sba2|fba3|fa1|ha|S~combout\ = (\cm3|S[5]~18_combout\ $ (((\cm4|S~12_combout\) # (\cm4|S~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cm4|S~12_combout\,
	datac => \cm4|S~10_combout\,
	datad => \cm3|S[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba3|fa1|ha|S~combout\);

-- Location: LC_X11_Y7_N4
\cm2|S~23\ : maxv_lcell
-- Equation(s):
-- \cm2|S~23_combout\ = (\cm2|S~2_combout\ & ((\A~combout\(7)) # ((\cm1|Add1~25_combout\ & \cm2|S~6_combout\)))) # (!\cm2|S~2_combout\ & (((\cm1|Add1~25_combout\ & \cm2|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~2_combout\,
	datab => \A~combout\(7),
	datac => \cm1|Add1~25_combout\,
	datad => \cm2|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~23_combout\);

-- Location: LC_X11_Y7_N8
\cm2|S~24\ : maxv_lcell
-- Equation(s):
-- \cm2|S~24_combout\ = (\cm2|S~23_combout\) # ((\B~combout\(1) & (\A~combout\(6) & \cm2|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~23_combout\,
	datab => \B~combout\(1),
	datac => \A~combout\(6),
	datad => \cm2|S~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~24_combout\);

-- Location: LC_X9_Y8_N1
\cm2|S~22\ : maxv_lcell
-- Equation(s):
-- \cm2|S~22_combout\ = (\B~combout\(3) & (\B~combout\(1) & (\cm1|Add1~30_combout\ & !\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \B~combout\(1),
	datac => \cm1|Add1~30_combout\,
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~22_combout\);

-- Location: LC_X8_Y7_N7
\cm1|Add1~35\ : maxv_lcell
-- Equation(s):
-- \cm1|Add1~35_combout\ = (((!\cm1|Add1~22\ & \cm1|Add1~32\) # (\cm1|Add1~22\ & \cm1|Add1~32COUT1_46\) $ (!\A~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \A~combout\(7),
	cin => \cm1|Add1~22\,
	cin0 => \cm1|Add1~32\,
	cin1 => \cm1|Add1~32COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|Add1~35_combout\);

-- Location: LC_X9_Y8_N6
\cm1|S~9\ : maxv_lcell
-- Equation(s):
-- \cm1|S~9_combout\ = (\B~combout\(1) & (((\cm1|Add1~35_combout\ & !\B~combout\(0))))) # (!\B~combout\(1) & (\A~combout\(7) & ((\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(1),
	datac => \cm1|Add1~35_combout\,
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm1|S~9_combout\);

-- Location: LC_X12_Y8_N9
\sba1|fa2|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba1|fa2|o1|Y~0_combout\ = (\cm1|S~8_combout\ & ((\cm2|S~19_combout\) # ((\cm2|S~21_combout\) # (\sba1|fba2|fa3|o1|Y~0_combout\)))) # (!\cm1|S~8_combout\ & (\sba1|fba2|fa3|o1|Y~0_combout\ & ((\cm2|S~19_combout\) # (\cm2|S~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~19_combout\,
	datab => \cm1|S~8_combout\,
	datac => \cm2|S~21_combout\,
	datad => \sba1|fba2|fa3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fa2|o1|Y~0_combout\);

-- Location: LC_X9_Y8_N5
\sba1|fba3|fa1|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba3|fa1|x1|Y~combout\ = \cm1|S~9_combout\ $ (\sba1|fa2|o1|Y~0_combout\ $ (((\cm2|S~24_combout\) # (\cm2|S~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e11e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~24_combout\,
	datab => \cm2|S~22_combout\,
	datac => \cm1|S~9_combout\,
	datad => \sba1|fa2|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba3|fa1|x1|Y~combout\);

-- Location: LC_X14_Y7_N2
\sba2|fa2|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba2|fa2|o1|Y~0_combout\ = (\sba2|fba2|fa3|o1|Y~0_combout\ & ((\cm3|S[4]~15_combout\) # ((\cm4|S~9_combout\) # (\cm4|S~5_combout\)))) # (!\sba2|fba2|fa3|o1|Y~0_combout\ & (\cm3|S[4]~15_combout\ & ((\cm4|S~9_combout\) # (\cm4|S~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fba2|fa3|o1|Y~0_combout\,
	datab => \cm3|S[4]~15_combout\,
	datac => \cm4|S~9_combout\,
	datad => \cm4|S~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fa2|o1|Y~0_combout\);

-- Location: LC_X14_Y7_N4
\sba3|fba3|fa1|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba3|fba3|fa1|x1|Y~combout\ = \sba3|fa2|o1|Y~0_combout\ $ (\sba2|fba3|fa1|ha|S~combout\ $ (\sba1|fba3|fa1|x1|Y~combout\ $ (\sba2|fa2|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba3|fa2|o1|Y~0_combout\,
	datab => \sba2|fba3|fa1|ha|S~combout\,
	datac => \sba1|fba3|fa1|x1|Y~combout\,
	datad => \sba2|fa2|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba3|fa1|x1|Y~combout\);

-- Location: LC_X14_Y7_N3
\sba2|fba3|fa1|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba2|fba3|fa1|o1|Y~0_combout\ = (\cm3|S[5]~18_combout\ & ((\cm4|S~12_combout\) # ((\cm4|S~10_combout\) # (\sba2|fa2|o1|Y~0_combout\)))) # (!\cm3|S[5]~18_combout\ & (\sba2|fa2|o1|Y~0_combout\ & ((\cm4|S~12_combout\) # (\cm4|S~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S[5]~18_combout\,
	datab => \cm4|S~12_combout\,
	datac => \cm4|S~10_combout\,
	datad => \sba2|fa2|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba3|fa1|o1|Y~0_combout\);

-- Location: LC_X12_Y8_N1
\cm2|S[8]~25\ : maxv_lcell
-- Equation(s):
-- \cm2|S[8]~25_combout\ = (!\B~combout\(3) & (\A~combout\(7) & ((\B~combout\(2)) # (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(7),
	datac => \B~combout\(2),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S[8]~25_combout\);

-- Location: LC_X9_Y8_N4
\cm2|S~26\ : maxv_lcell
-- Equation(s):
-- \cm2|S~26_combout\ = (((\B~combout\(3) & !\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(3),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S~26_combout\);

-- Location: LC_X9_Y8_N8
\cm2|S[8]~27\ : maxv_lcell
-- Equation(s):
-- \cm2|S[8]~27_combout\ = (\cm2|S[8]~25_combout\) # ((\cm1|Add1~35_combout\ & (\B~combout\(1) & \cm2|S~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~35_combout\,
	datab => \B~combout\(1),
	datac => \cm2|S[8]~25_combout\,
	datad => \cm2|S~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm2|S[8]~27_combout\);

-- Location: LC_X9_Y8_N0
\sba1|fba3|fa1|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba1|fba3|fa1|o1|Y~0_combout\ = (\cm1|S~9_combout\ & ((\cm2|S~24_combout\) # ((\cm2|S~22_combout\) # (\sba1|fa2|o1|Y~0_combout\)))) # (!\cm1|S~9_combout\ & (\sba1|fa2|o1|Y~0_combout\ & ((\cm2|S~24_combout\) # (\cm2|S~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S~24_combout\,
	datab => \cm2|S~22_combout\,
	datac => \cm1|S~9_combout\,
	datad => \sba1|fa2|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba3|fa1|o1|Y~0_combout\);

-- Location: LC_X9_Y8_N7
\sba1|fba3|fa2|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba3|fa2|x1|Y~combout\ = \sba1|fba3|fa1|o1|Y~0_combout\ $ (((\cm2|S[8]~27_combout\) # ((\cm1|Add1~30_combout\ & \cm2|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S[8]~27_combout\,
	datab => \sba1|fba3|fa1|o1|Y~0_combout\,
	datac => \cm1|Add1~30_combout\,
	datad => \cm2|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba3|fa2|x1|Y~combout\);

-- Location: LC_X10_Y6_N6
\cm3|S[6]~20\ : maxv_lcell
-- Equation(s):
-- \cm3|S[6]~20_combout\ = (\A~combout\(6) & ((\cm3|S~2_combout\) # ((\cm3|S~6_combout\ & \cm1|Add1~25_combout\)))) # (!\A~combout\(6) & (\cm3|S~6_combout\ & (\cm1|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \cm3|S~6_combout\,
	datac => \cm1|Add1~25_combout\,
	datad => \cm3|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[6]~20_combout\);

-- Location: LC_X10_Y6_N1
\cm3|S~19\ : maxv_lcell
-- Equation(s):
-- \cm3|S~19_combout\ = (\A~combout\(5) & (\B~combout\(4) & (!\B~combout\(5) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(4),
	datac => \B~combout\(5),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~19_combout\);

-- Location: LC_X10_Y6_N0
\cm3|S[6]~21\ : maxv_lcell
-- Equation(s):
-- \cm3|S[6]~21_combout\ = (\cm3|S[6]~20_combout\) # ((\cm3|S~19_combout\) # ((\cm1|Add1~20_combout\ & \cm3|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S[6]~20_combout\,
	datab => \cm1|Add1~20_combout\,
	datac => \cm3|S~8_combout\,
	datad => \cm3|S~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[6]~21_combout\);

-- Location: LC_X10_Y7_N5
\cm4|S~13\ : maxv_lcell
-- Equation(s):
-- \cm4|S~13_combout\ = (\B~combout\(7) & (\cm1|Add1~15_combout\ & (\B~combout\(5) & !\B~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \cm1|Add1~15_combout\,
	datac => \B~combout\(5),
	datad => \B~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~13_combout\);

-- Location: LC_X10_Y7_N2
\cm4|S~14\ : maxv_lcell
-- Equation(s):
-- \cm4|S~14_combout\ = (\A~combout\(4) & ((\cm4|S~2_combout\) # ((\cm1|Add1~10_combout\ & \cm4|S~6_combout\)))) # (!\A~combout\(4) & (((\cm1|Add1~10_combout\ & \cm4|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \cm4|S~2_combout\,
	datac => \cm1|Add1~10_combout\,
	datad => \cm4|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~14_combout\);

-- Location: LC_X10_Y7_N3
\cm4|S~15\ : maxv_lcell
-- Equation(s):
-- \cm4|S~15_combout\ = (\cm4|S~14_combout\) # ((\B~combout\(5) & (\A~combout\(3) & \cm4|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \cm4|S~14_combout\,
	datac => \A~combout\(3),
	datad => \cm4|S~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~15_combout\);

-- Location: LC_X10_Y7_N0
\sba2|fba3|fa2|ha|S\ : maxv_lcell
-- Equation(s):
-- \sba2|fba3|fa2|ha|S~combout\ = (\cm3|S[6]~21_combout\ $ (((\cm4|S~13_combout\) # (\cm4|S~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cm3|S[6]~21_combout\,
	datac => \cm4|S~13_combout\,
	datad => \cm4|S~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba3|fa2|ha|S~combout\);

-- Location: LC_X14_Y7_N7
\sba3|fba3|fa1|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba3|fa1|o1|Y~0_combout\ = (\sba3|fa2|o1|Y~0_combout\ & ((\sba1|fba3|fa1|x1|Y~combout\) # (\sba2|fba3|fa1|ha|S~combout\ $ (\sba2|fa2|o1|Y~0_combout\)))) # (!\sba3|fa2|o1|Y~0_combout\ & (\sba1|fba3|fa1|x1|Y~combout\ & (\sba2|fba3|fa1|ha|S~combout\ $ 
-- (\sba2|fa2|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba3|fa2|o1|Y~0_combout\,
	datab => \sba2|fba3|fa1|ha|S~combout\,
	datac => \sba1|fba3|fa1|x1|Y~combout\,
	datad => \sba2|fa2|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba3|fa1|o1|Y~0_combout\);

-- Location: LC_X10_Y7_N1
\sba3|fba3|fa2|x1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba3|fa2|x1|Y~0_combout\ = \sba2|fba3|fa1|o1|Y~0_combout\ $ (\sba1|fba3|fa2|x1|Y~combout\ $ (\sba2|fba3|fa2|ha|S~combout\ $ (\sba3|fba3|fa1|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fba3|fa1|o1|Y~0_combout\,
	datab => \sba1|fba3|fa2|x1|Y~combout\,
	datac => \sba2|fba3|fa2|ha|S~combout\,
	datad => \sba3|fba3|fa1|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba3|fa2|x1|Y~0_combout\);

-- Location: LC_X10_Y7_N7
\sba3|fba3|fa2|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba3|fa2|o1|Y~0_combout\ = (\sba1|fba3|fa2|x1|Y~combout\ & ((\sba3|fba3|fa1|o1|Y~0_combout\) # (\sba2|fba3|fa1|o1|Y~0_combout\ $ (\sba2|fba3|fa2|ha|S~combout\)))) # (!\sba1|fba3|fa2|x1|Y~combout\ & (\sba3|fba3|fa1|o1|Y~0_combout\ & 
-- (\sba2|fba3|fa1|o1|Y~0_combout\ $ (\sba2|fba3|fa2|ha|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fba3|fa1|o1|Y~0_combout\,
	datab => \sba1|fba3|fa2|x1|Y~combout\,
	datac => \sba2|fba3|fa2|ha|S~combout\,
	datad => \sba3|fba3|fa1|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba3|fa2|o1|Y~0_combout\);

-- Location: LC_X9_Y8_N9
\sba1|fba3|fa2|a1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba3|fa2|a1|Y~combout\ = (\sba1|fba3|fa1|o1|Y~0_combout\ & ((\cm2|S[8]~27_combout\) # ((\cm1|Add1~30_combout\ & \cm2|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm2|S[8]~27_combout\,
	datab => \sba1|fba3|fa1|o1|Y~0_combout\,
	datac => \cm1|Add1~30_combout\,
	datad => \cm2|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba3|fa2|a1|Y~combout\);

-- Location: LC_X9_Y8_N2
\sba1|fba3|fa3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba3|fa3|x1|Y~combout\ = \sba1|fba3|fa2|a1|Y~combout\ $ (((\cm2|S[8]~25_combout\) # ((\cm1|Add1~35_combout\ & \cm2|S~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "07f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~35_combout\,
	datab => \cm2|S~26_combout\,
	datac => \cm2|S[8]~25_combout\,
	datad => \sba1|fba3|fa2|a1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba3|fa3|x1|Y~combout\);

-- Location: LC_X8_Y8_N6
\cm4|S~16\ : maxv_lcell
-- Equation(s):
-- \cm4|S~16_combout\ = (!\B~combout\(6) & (\cm1|Add1~20_combout\ & (\B~combout\(7) & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \cm1|Add1~20_combout\,
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~16_combout\);

-- Location: LC_X9_Y6_N3
\cm3|S~22\ : maxv_lcell
-- Equation(s):
-- \cm3|S~22_combout\ = (\B~combout\(4) & (\A~combout\(6) & (!\B~combout\(5) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(6),
	datac => \B~combout\(5),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~22_combout\);

-- Location: LC_X9_Y6_N2
\cm3|S[7]~23\ : maxv_lcell
-- Equation(s):
-- \cm3|S[7]~23_combout\ = (\cm3|S~6_combout\ & ((\cm1|Add1~30_combout\) # ((\cm3|S~2_combout\ & \A~combout\(7))))) # (!\cm3|S~6_combout\ & (\cm3|S~2_combout\ & ((\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S~6_combout\,
	datab => \cm3|S~2_combout\,
	datac => \cm1|Add1~30_combout\,
	datad => \A~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[7]~23_combout\);

-- Location: LC_X9_Y6_N8
\cm3|S[7]~24\ : maxv_lcell
-- Equation(s):
-- \cm3|S[7]~24_combout\ = (\cm3|S~22_combout\) # ((\cm3|S[7]~23_combout\) # ((\cm3|S~8_combout\ & \cm1|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S~22_combout\,
	datab => \cm3|S[7]~23_combout\,
	datac => \cm3|S~8_combout\,
	datad => \cm1|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[7]~24_combout\);

-- Location: LC_X10_Y6_N2
\cm4|S~17\ : maxv_lcell
-- Equation(s):
-- \cm4|S~17_combout\ = (\cm1|Add1~15_combout\ & ((\cm4|S~6_combout\) # ((\cm4|S~2_combout\ & \A~combout\(5))))) # (!\cm1|Add1~15_combout\ & (\cm4|S~2_combout\ & (\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~15_combout\,
	datab => \cm4|S~2_combout\,
	datac => \A~combout\(5),
	datad => \cm4|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~17_combout\);

-- Location: LC_X10_Y6_N5
\cm4|S~18\ : maxv_lcell
-- Equation(s):
-- \cm4|S~18_combout\ = (\cm4|S~17_combout\) # ((\A~combout\(4) & (\B~combout\(5) & \cm4|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(5),
	datac => \cm4|S~8_combout\,
	datad => \cm4|S~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~18_combout\);

-- Location: LC_X9_Y7_N7
\sba2|fba3|fa3|ha|S\ : maxv_lcell
-- Equation(s):
-- \sba2|fba3|fa3|ha|S~combout\ = (\cm3|S[7]~24_combout\ $ (((\cm4|S~16_combout\) # (\cm4|S~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cm4|S~16_combout\,
	datac => \cm3|S[7]~24_combout\,
	datad => \cm4|S~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba3|fa3|ha|S~combout\);

-- Location: LC_X10_Y7_N8
\sba2|fba3|fa2|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba2|fba3|fa2|o1|Y~0_combout\ = (\sba2|fba3|fa1|o1|Y~0_combout\ & ((\cm3|S[6]~21_combout\) # ((\cm4|S~13_combout\) # (\cm4|S~15_combout\)))) # (!\sba2|fba3|fa1|o1|Y~0_combout\ & (\cm3|S[6]~21_combout\ & ((\cm4|S~13_combout\) # (\cm4|S~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fba3|fa1|o1|Y~0_combout\,
	datab => \cm3|S[6]~21_combout\,
	datac => \cm4|S~13_combout\,
	datad => \cm4|S~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba3|fa2|o1|Y~0_combout\);

-- Location: LC_X9_Y7_N3
\sba3|fba3|fa3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba3|fba3|fa3|x1|Y~combout\ = \sba3|fba3|fa2|o1|Y~0_combout\ $ (\sba1|fba3|fa3|x1|Y~combout\ $ (\sba2|fba3|fa3|ha|S~combout\ $ (\sba2|fba3|fa2|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba3|fba3|fa2|o1|Y~0_combout\,
	datab => \sba1|fba3|fa3|x1|Y~combout\,
	datac => \sba2|fba3|fa3|ha|S~combout\,
	datad => \sba2|fba3|fa2|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba3|fa3|x1|Y~combout\);

-- Location: LC_X9_Y7_N6
\sba3|fba3|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba3|fa3|o1|Y~0_combout\ = (\sba3|fba3|fa2|o1|Y~0_combout\ & ((\sba1|fba3|fa3|x1|Y~combout\) # (\sba2|fba3|fa3|ha|S~combout\ $ (\sba2|fba3|fa2|o1|Y~0_combout\)))) # (!\sba3|fba3|fa2|o1|Y~0_combout\ & (\sba1|fba3|fa3|x1|Y~combout\ & 
-- (\sba2|fba3|fa3|ha|S~combout\ $ (\sba2|fba3|fa2|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba3|fba3|fa2|o1|Y~0_combout\,
	datab => \sba1|fba3|fa3|x1|Y~combout\,
	datac => \sba2|fba3|fa3|ha|S~combout\,
	datad => \sba2|fba3|fa2|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba3|fa3|o1|Y~0_combout\);

-- Location: LC_X9_Y7_N2
\sba2|fba3|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba2|fba3|fa3|o1|Y~0_combout\ = (\cm3|S[7]~24_combout\ & ((\cm4|S~16_combout\) # ((\cm4|S~18_combout\) # (\sba2|fba3|fa2|o1|Y~0_combout\)))) # (!\cm3|S[7]~24_combout\ & (\sba2|fba3|fa2|o1|Y~0_combout\ & ((\cm4|S~16_combout\) # (\cm4|S~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S~16_combout\,
	datab => \cm4|S~18_combout\,
	datac => \cm3|S[7]~24_combout\,
	datad => \sba2|fba3|fa2|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba3|fa3|o1|Y~0_combout\);

-- Location: LC_X8_Y8_N5
\cm4|S~19\ : maxv_lcell
-- Equation(s):
-- \cm4|S~19_combout\ = (!\B~combout\(6) & (\cm1|Add1~25_combout\ & (\B~combout\(7) & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \cm1|Add1~25_combout\,
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~19_combout\);

-- Location: LC_X9_Y6_N5
\cm3|S~25\ : maxv_lcell
-- Equation(s):
-- \cm3|S~25_combout\ = (!\B~combout\(4) & (\cm1|Add1~30_combout\ & (\B~combout\(5) & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \cm1|Add1~30_combout\,
	datac => \B~combout\(5),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S~25_combout\);

-- Location: LC_X9_Y6_N1
\cm3|S[8]~26\ : maxv_lcell
-- Equation(s):
-- \cm3|S[8]~26_combout\ = (\A~combout\(7) & (!\B~combout\(5) & ((\B~combout\(4)) # (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(7),
	datac => \B~combout\(5),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[8]~26_combout\);

-- Location: LC_X9_Y6_N6
\cm3|S[8]~27\ : maxv_lcell
-- Equation(s):
-- \cm3|S[8]~27_combout\ = (\cm3|S~25_combout\) # ((\cm3|S[8]~26_combout\) # ((\cm3|S~6_combout\ & \cm1|Add1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm3|S~6_combout\,
	datab => \cm1|Add1~35_combout\,
	datac => \cm3|S~25_combout\,
	datad => \cm3|S[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[8]~27_combout\);

-- Location: LC_X10_Y6_N9
\cm4|S~20\ : maxv_lcell
-- Equation(s):
-- \cm4|S~20_combout\ = (\cm4|S~6_combout\ & ((\cm1|Add1~20_combout\) # ((\cm4|S~2_combout\ & \A~combout\(6))))) # (!\cm4|S~6_combout\ & (\cm4|S~2_combout\ & ((\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S~6_combout\,
	datab => \cm4|S~2_combout\,
	datac => \cm1|Add1~20_combout\,
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~20_combout\);

-- Location: LC_X10_Y6_N4
\cm4|S~21\ : maxv_lcell
-- Equation(s):
-- \cm4|S~21_combout\ = (\cm4|S~20_combout\) # ((\A~combout\(5) & (\B~combout\(5) & \cm4|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datac => \cm4|S~8_combout\,
	datad => \cm4|S~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~21_combout\);

-- Location: LC_X9_Y7_N4
\sba2|fa3|ha|S\ : maxv_lcell
-- Equation(s):
-- \sba2|fa3|ha|S~combout\ = (\cm3|S[8]~27_combout\ $ (((\cm4|S~19_combout\) # (\cm4|S~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S~19_combout\,
	datac => \cm3|S[8]~27_combout\,
	datad => \cm4|S~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fa3|ha|S~combout\);

-- Location: LC_X9_Y8_N3
\sba1|fba3|fa3|a1|Y\ : maxv_lcell
-- Equation(s):
-- \sba1|fba3|fa3|a1|Y~combout\ = (\sba1|fba3|fa2|a1|Y~combout\ & ((\cm2|S[8]~25_combout\) # ((\cm1|Add1~35_combout\ & \cm2|S~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~35_combout\,
	datab => \cm2|S~26_combout\,
	datac => \cm2|S[8]~25_combout\,
	datad => \sba1|fba3|fa2|a1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba1|fba3|fa3|a1|Y~combout\);

-- Location: LC_X9_Y7_N5
\sba3|fa3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba3|fa3|x1|Y~combout\ = \sba3|fba3|fa3|o1|Y~0_combout\ $ (\sba2|fba3|fa3|o1|Y~0_combout\ $ (\sba2|fa3|ha|S~combout\ $ (\sba1|fba3|fa3|a1|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba3|fba3|fa3|o1|Y~0_combout\,
	datab => \sba2|fba3|fa3|o1|Y~0_combout\,
	datac => \sba2|fa3|ha|S~combout\,
	datad => \sba1|fba3|fa3|a1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fa3|x1|Y~combout\);

-- Location: LC_X9_Y7_N9
\sba2|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba2|fa3|o1|Y~0_combout\ = (\sba2|fba3|fa3|o1|Y~0_combout\ & ((\cm4|S~19_combout\) # ((\cm3|S[8]~27_combout\) # (\cm4|S~21_combout\)))) # (!\sba2|fba3|fa3|o1|Y~0_combout\ & (\cm3|S[8]~27_combout\ & ((\cm4|S~19_combout\) # (\cm4|S~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S~19_combout\,
	datab => \sba2|fba3|fa3|o1|Y~0_combout\,
	datac => \cm3|S[8]~27_combout\,
	datad => \cm4|S~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fa3|o1|Y~0_combout\);

-- Location: LC_X9_Y6_N7
\cm3|S[9]~28\ : maxv_lcell
-- Equation(s):
-- \cm3|S[9]~28_combout\ = (\cm3|S[8]~26_combout\) # ((!\B~combout\(4) & (\cm1|Add1~35_combout\ & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \cm1|Add1~35_combout\,
	datac => \B~combout\(5),
	datad => \cm3|S[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm3|S[9]~28_combout\);

-- Location: LC_X6_Y7_N4
\cm4|S~22\ : maxv_lcell
-- Equation(s):
-- \cm4|S~22_combout\ = (\cm1|Add1~30_combout\ & (\B~combout\(7) & (!\B~combout\(6) & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~30_combout\,
	datab => \B~combout\(7),
	datac => \B~combout\(6),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~22_combout\);

-- Location: LC_X10_Y6_N7
\cm4|S~23\ : maxv_lcell
-- Equation(s):
-- \cm4|S~23_combout\ = (\cm4|S~6_combout\ & ((\cm1|Add1~25_combout\) # ((\cm4|S~2_combout\ & \A~combout\(7))))) # (!\cm4|S~6_combout\ & (\cm4|S~2_combout\ & ((\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S~6_combout\,
	datab => \cm4|S~2_combout\,
	datac => \cm1|Add1~25_combout\,
	datad => \A~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~23_combout\);

-- Location: LC_X10_Y6_N8
\cm4|S~24\ : maxv_lcell
-- Equation(s):
-- \cm4|S~24_combout\ = (\cm4|S~23_combout\) # ((\A~combout\(6) & (\B~combout\(5) & \cm4|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(5),
	datac => \cm4|S~8_combout\,
	datad => \cm4|S~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~24_combout\);

-- Location: LC_X6_Y7_N6
\sba2|fba4|fa1|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba2|fba4|fa1|x1|Y~combout\ = \sba2|fa3|o1|Y~0_combout\ $ (\cm3|S[9]~28_combout\ $ (((\cm4|S~22_combout\) # (\cm4|S~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fa3|o1|Y~0_combout\,
	datab => \cm3|S[9]~28_combout\,
	datac => \cm4|S~22_combout\,
	datad => \cm4|S~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba4|fa1|x1|Y~combout\);

-- Location: LC_X9_Y7_N8
\sba3|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fa3|o1|Y~0_combout\ = (\sba3|fba3|fa3|o1|Y~0_combout\ & ((\sba1|fba3|fa3|a1|Y~combout\) # (\sba2|fba3|fa3|o1|Y~0_combout\ $ (\sba2|fa3|ha|S~combout\)))) # (!\sba3|fba3|fa3|o1|Y~0_combout\ & (\sba1|fba3|fa3|a1|Y~combout\ & 
-- (\sba2|fba3|fa3|o1|Y~0_combout\ $ (\sba2|fa3|ha|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba3|fba3|fa3|o1|Y~0_combout\,
	datab => \sba2|fba3|fa3|o1|Y~0_combout\,
	datac => \sba2|fa3|ha|S~combout\,
	datad => \sba1|fba3|fa3|a1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fa3|o1|Y~0_combout\);

-- Location: LC_X6_Y7_N5
\sba3|fba4|fa1|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba3|fba4|fa1|x1|Y~combout\ = ((\sba2|fba4|fa1|x1|Y~combout\ $ (\sba3|fa3|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sba2|fba4|fa1|x1|Y~combout\,
	datad => \sba3|fa3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba4|fa1|x1|Y~combout\);

-- Location: LC_X6_Y7_N9
\sba2|fba4|fa1|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba2|fba4|fa1|o1|Y~0_combout\ = (\sba2|fa3|o1|Y~0_combout\ & ((\cm3|S[9]~28_combout\) # ((\cm4|S~22_combout\) # (\cm4|S~24_combout\)))) # (!\sba2|fa3|o1|Y~0_combout\ & (\cm3|S[9]~28_combout\ & ((\cm4|S~22_combout\) # (\cm4|S~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fa3|o1|Y~0_combout\,
	datab => \cm3|S[9]~28_combout\,
	datac => \cm4|S~22_combout\,
	datad => \cm4|S~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba2|fba4|fa1|o1|Y~0_combout\);

-- Location: LC_X8_Y8_N1
\cm4|S[8]~26\ : maxv_lcell
-- Equation(s):
-- \cm4|S[8]~26_combout\ = (\A~combout\(7) & (!\B~combout\(7) & ((\B~combout\(6)) # (\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(7),
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S[8]~26_combout\);

-- Location: LC_X8_Y8_N8
\cm4|S~25\ : maxv_lcell
-- Equation(s):
-- \cm4|S~25_combout\ = (\cm1|Add1~35_combout\ & (!\B~combout\(6) & (\B~combout\(7) & \B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm1|Add1~35_combout\,
	datab => \B~combout\(6),
	datac => \B~combout\(7),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S~25_combout\);

-- Location: LC_X6_Y7_N7
\cm4|S[8]~27\ : maxv_lcell
-- Equation(s):
-- \cm4|S[8]~27_combout\ = (\cm4|S[8]~26_combout\) # ((\cm4|S~25_combout\) # ((\cm1|Add1~30_combout\ & \cm4|S~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S[8]~26_combout\,
	datab => \cm4|S~25_combout\,
	datac => \cm1|Add1~30_combout\,
	datad => \cm4|S~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S[8]~27_combout\);

-- Location: LC_X6_Y7_N8
\sba3|fba4|fa2|x1|Y\ : maxv_lcell
-- Equation(s):
-- \sba3|fba4|fa2|x1|Y~combout\ = \sba2|fba4|fa1|o1|Y~0_combout\ $ (\cm4|S[8]~27_combout\ $ (((\sba2|fba4|fa1|x1|Y~combout\ & \sba3|fa3|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fba4|fa1|x1|Y~combout\,
	datab => \sba2|fba4|fa1|o1|Y~0_combout\,
	datac => \cm4|S[8]~27_combout\,
	datad => \sba3|fa3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba4|fa2|x1|Y~combout\);

-- Location: LC_X8_Y8_N7
\cm4|S[9]~28\ : maxv_lcell
-- Equation(s):
-- \cm4|S[9]~28_combout\ = (!\B~combout\(6) & (((\B~combout\(7) & \cm1|Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datac => \B~combout\(7),
	datad => \cm1|Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cm4|S[9]~28_combout\);

-- Location: LC_X6_Y7_N2
\sba3|fba4|fa3|x1|Y~0\ : maxv_lcell
-- Equation(s):
-- \sba3|fba4|fa3|x1|Y~0_combout\ = (\sba2|fba4|fa1|o1|Y~0_combout\ & ((\cm4|S[8]~27_combout\) # ((\sba2|fba4|fa1|x1|Y~combout\ & \sba3|fa3|o1|Y~0_combout\)))) # (!\sba2|fba4|fa1|o1|Y~0_combout\ & (\sba2|fba4|fa1|x1|Y~combout\ & (\cm4|S[8]~27_combout\ & 
-- \sba3|fa3|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sba2|fba4|fa1|x1|Y~combout\,
	datab => \sba2|fba4|fa1|o1|Y~0_combout\,
	datac => \cm4|S[8]~27_combout\,
	datad => \sba3|fa3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba4|fa3|x1|Y~0_combout\);

-- Location: LC_X7_Y8_N2
\sba3|fba4|fa3|x1|Y~1\ : maxv_lcell
-- Equation(s):
-- \sba3|fba4|fa3|x1|Y~1_combout\ = \sba3|fba4|fa3|x1|Y~0_combout\ $ (((\cm4|S[9]~28_combout\) # ((\cm4|S[8]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3366",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cm4|S[9]~28_combout\,
	datab => \sba3|fba4|fa3|x1|Y~0_combout\,
	datad => \cm4|S[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sba3|fba4|fa3|x1|Y~1_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cm1|S~0_combout\,
	oe => VCC,
	padio => ww_Z(0));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cm1|S~1_combout\,
	oe => VCC,
	padio => ww_Z(1));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba1|fba1|fa2|ha|S~combout\,
	oe => VCC,
	padio => ww_Z(2));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba1|fba1|fa3|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(3));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fa1|ha|S~combout\,
	oe => VCC,
	padio => ww_Z(4));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba2|fa1|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(5));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba2|fa2|x1|Y~0_combout\,
	oe => VCC,
	padio => ww_Z(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba2|fa3|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(7));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fa2|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(8));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba3|fa1|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(9));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba3|fa2|x1|Y~0_combout\,
	oe => VCC,
	padio => ww_Z(10));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba3|fa3|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(11));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fa3|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(12));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba4|fa1|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(13));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba4|fa2|x1|Y~combout\,
	oe => VCC,
	padio => ww_Z(14));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sba3|fba4|fa3|x1|Y~1_combout\,
	oe => VCC,
	padio => ww_Z(15));
END structure;


