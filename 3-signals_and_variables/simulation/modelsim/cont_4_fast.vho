-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/21/2024 23:45:47"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cont_4 IS
    PORT (
	CLK : IN std_logic;
	INP : IN std_logic_vector(3 DOWNTO 0);
	Q_FOR : OUT std_logic_vector(2 DOWNTO 0);
	Q_WHILE : OUT std_logic_vector(2 DOWNTO 0);
	Q_CASE_WHEN : OUT std_logic_vector(2 DOWNTO 0);
	Q_IF_THEN : OUT std_logic_vector(2 DOWNTO 0);
	Q_DIRECT_SUM : OUT std_logic_vector(2 DOWNTO 0)
	);
END cont_4;

-- Design Ports Information
-- Q_FOR[0]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_FOR[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_FOR[2]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_WHILE[0]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_WHILE[1]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_WHILE[2]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CASE_WHEN[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CASE_WHEN[1]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CASE_WHEN[2]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_IF_THEN[0]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_IF_THEN[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_IF_THEN[2]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_DIRECT_SUM[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_DIRECT_SUM[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_DIRECT_SUM[2]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INP[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INP[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INP[2]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INP[3]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cont_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q_FOR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q_WHILE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q_CASE_WHEN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q_IF_THEN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q_DIRECT_SUM : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \DUT_FOR|CONT~0_combout\ : std_logic;
SIGNAL \DUT_FOR|CONT[0]~feeder_combout\ : std_logic;
SIGNAL \DUT_FOR|CONT~1_combout\ : std_logic;
SIGNAL \DUT_FOR|CONT[1]~feeder_combout\ : std_logic;
SIGNAL \DUT_FOR|CONT~2_combout\ : std_logic;
SIGNAL \DUT_FOR|CONT[2]~feeder_combout\ : std_logic;
SIGNAL \DUT_CASE_WHEN|CONT[0]~feeder_combout\ : std_logic;
SIGNAL \DUT_CASE_WHEN|CONT[1]~feeder_combout\ : std_logic;
SIGNAL \DUT_CASE_WHEN|CONT[2]~feeder_combout\ : std_logic;
SIGNAL \DUT_IF_THEN|CONT~12_combout\ : std_logic;
SIGNAL \DUT_IF_THEN|CONT~13_combout\ : std_logic;
SIGNAL \DUT_IF_THEN|CONT~14_combout\ : std_logic;
SIGNAL \DUT_DIRECT_SUM|CONT[0]~feeder_combout\ : std_logic;
SIGNAL \DUT_DIRECT_SUM|CONT[1]~feeder_combout\ : std_logic;
SIGNAL \DUT_DIRECT_SUM|CONT[2]~feeder_combout\ : std_logic;
SIGNAL \DUT_FOR|CONT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DUT_WHILE|CONT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DUT_CASE_WHEN|CONT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DUT_IF_THEN|CONT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DUT_DIRECT_SUM|CONT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \INP~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_INP <= INP;
Q_FOR <= ww_Q_FOR;
Q_WHILE <= ww_Q_WHILE;
Q_CASE_WHEN <= ww_Q_CASE_WHEN;
Q_IF_THEN <= ww_Q_IF_THEN;
Q_DIRECT_SUM <= ww_Q_DIRECT_SUM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INP[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INP(1),
	combout => \INP~combout\(1));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INP[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INP(0),
	combout => \INP~combout\(0));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INP[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INP(2),
	combout => \INP~combout\(2));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INP[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INP(3),
	combout => \INP~combout\(3));

-- Location: LCCOMB_X64_Y34_N6
\DUT_FOR|CONT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_FOR|CONT~0_combout\ = \INP~combout\(1) $ (\INP~combout\(0) $ (\INP~combout\(2) $ (\INP~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INP~combout\(1),
	datab => \INP~combout\(0),
	datac => \INP~combout\(2),
	datad => \INP~combout\(3),
	combout => \DUT_FOR|CONT~0_combout\);

-- Location: LCCOMB_X64_Y34_N8
\DUT_FOR|CONT[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_FOR|CONT[0]~feeder_combout\ = \DUT_FOR|CONT~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~0_combout\,
	combout => \DUT_FOR|CONT[0]~feeder_combout\);

-- Location: LCFF_X64_Y34_N9
\DUT_FOR|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_FOR|CONT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_FOR|CONT\(0));

-- Location: LCCOMB_X64_Y34_N0
\DUT_FOR|CONT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_FOR|CONT~1_combout\ = (\INP~combout\(1) & ((\INP~combout\(0) & ((!\INP~combout\(3)) # (!\INP~combout\(2)))) # (!\INP~combout\(0) & ((\INP~combout\(2)) # (\INP~combout\(3)))))) # (!\INP~combout\(1) & ((\INP~combout\(0) & ((\INP~combout\(2)) # 
-- (\INP~combout\(3)))) # (!\INP~combout\(0) & (\INP~combout\(2) & \INP~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INP~combout\(1),
	datab => \INP~combout\(0),
	datac => \INP~combout\(2),
	datad => \INP~combout\(3),
	combout => \DUT_FOR|CONT~1_combout\);

-- Location: LCCOMB_X64_Y34_N2
\DUT_FOR|CONT[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_FOR|CONT[1]~feeder_combout\ = \DUT_FOR|CONT~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~1_combout\,
	combout => \DUT_FOR|CONT[1]~feeder_combout\);

-- Location: LCFF_X64_Y34_N3
\DUT_FOR|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_FOR|CONT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_FOR|CONT\(1));

-- Location: LCCOMB_X64_Y34_N10
\DUT_FOR|CONT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_FOR|CONT~2_combout\ = (\INP~combout\(1) & (\INP~combout\(0) & (\INP~combout\(2) & \INP~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INP~combout\(1),
	datab => \INP~combout\(0),
	datac => \INP~combout\(2),
	datad => \INP~combout\(3),
	combout => \DUT_FOR|CONT~2_combout\);

-- Location: LCCOMB_X64_Y34_N20
\DUT_FOR|CONT[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_FOR|CONT[2]~feeder_combout\ = \DUT_FOR|CONT~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~2_combout\,
	combout => \DUT_FOR|CONT[2]~feeder_combout\);

-- Location: LCFF_X64_Y34_N21
\DUT_FOR|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_FOR|CONT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_FOR|CONT\(2));

-- Location: LCFF_X64_Y34_N7
\DUT_WHILE|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_FOR|CONT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_WHILE|CONT\(0));

-- Location: LCFF_X64_Y34_N1
\DUT_WHILE|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_FOR|CONT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_WHILE|CONT\(1));

-- Location: LCFF_X64_Y34_N11
\DUT_WHILE|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_FOR|CONT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_WHILE|CONT\(2));

-- Location: LCCOMB_X64_Y34_N28
\DUT_CASE_WHEN|CONT[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_CASE_WHEN|CONT[0]~feeder_combout\ = \DUT_FOR|CONT~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~0_combout\,
	combout => \DUT_CASE_WHEN|CONT[0]~feeder_combout\);

-- Location: LCFF_X64_Y34_N29
\DUT_CASE_WHEN|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_CASE_WHEN|CONT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_CASE_WHEN|CONT\(0));

-- Location: LCCOMB_X64_Y34_N22
\DUT_CASE_WHEN|CONT[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_CASE_WHEN|CONT[1]~feeder_combout\ = \DUT_FOR|CONT~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~1_combout\,
	combout => \DUT_CASE_WHEN|CONT[1]~feeder_combout\);

-- Location: LCFF_X64_Y34_N23
\DUT_CASE_WHEN|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_CASE_WHEN|CONT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_CASE_WHEN|CONT\(1));

-- Location: LCCOMB_X64_Y34_N24
\DUT_CASE_WHEN|CONT[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_CASE_WHEN|CONT[2]~feeder_combout\ = \DUT_FOR|CONT~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~2_combout\,
	combout => \DUT_CASE_WHEN|CONT[2]~feeder_combout\);

-- Location: LCFF_X64_Y34_N25
\DUT_CASE_WHEN|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_CASE_WHEN|CONT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_CASE_WHEN|CONT\(2));

-- Location: LCCOMB_X64_Y34_N18
\DUT_IF_THEN|CONT~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_IF_THEN|CONT~12_combout\ = \INP~combout\(1) $ (\INP~combout\(0) $ (\INP~combout\(2) $ (\INP~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INP~combout\(1),
	datab => \INP~combout\(0),
	datac => \INP~combout\(2),
	datad => \INP~combout\(3),
	combout => \DUT_IF_THEN|CONT~12_combout\);

-- Location: LCFF_X64_Y34_N19
\DUT_IF_THEN|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_IF_THEN|CONT~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_IF_THEN|CONT\(0));

-- Location: LCCOMB_X64_Y34_N4
\DUT_IF_THEN|CONT~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_IF_THEN|CONT~13_combout\ = (\INP~combout\(1) & ((\INP~combout\(0) & ((!\INP~combout\(3)) # (!\INP~combout\(2)))) # (!\INP~combout\(0) & ((\INP~combout\(2)) # (\INP~combout\(3)))))) # (!\INP~combout\(1) & ((\INP~combout\(0) & ((\INP~combout\(2)) # 
-- (\INP~combout\(3)))) # (!\INP~combout\(0) & (\INP~combout\(2) & \INP~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INP~combout\(1),
	datab => \INP~combout\(0),
	datac => \INP~combout\(2),
	datad => \INP~combout\(3),
	combout => \DUT_IF_THEN|CONT~13_combout\);

-- Location: LCFF_X64_Y34_N5
\DUT_IF_THEN|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_IF_THEN|CONT~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_IF_THEN|CONT\(1));

-- Location: LCCOMB_X64_Y34_N30
\DUT_IF_THEN|CONT~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_IF_THEN|CONT~14_combout\ = (\INP~combout\(1) & (\INP~combout\(0) & (\INP~combout\(2) & \INP~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INP~combout\(1),
	datab => \INP~combout\(0),
	datac => \INP~combout\(2),
	datad => \INP~combout\(3),
	combout => \DUT_IF_THEN|CONT~14_combout\);

-- Location: LCFF_X64_Y34_N31
\DUT_IF_THEN|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_IF_THEN|CONT~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_IF_THEN|CONT\(2));

-- Location: LCCOMB_X64_Y34_N16
\DUT_DIRECT_SUM|CONT[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_DIRECT_SUM|CONT[0]~feeder_combout\ = \DUT_FOR|CONT~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~0_combout\,
	combout => \DUT_DIRECT_SUM|CONT[0]~feeder_combout\);

-- Location: LCFF_X64_Y34_N17
\DUT_DIRECT_SUM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_DIRECT_SUM|CONT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_DIRECT_SUM|CONT\(0));

-- Location: LCCOMB_X64_Y34_N26
\DUT_DIRECT_SUM|CONT[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_DIRECT_SUM|CONT[1]~feeder_combout\ = \DUT_FOR|CONT~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~1_combout\,
	combout => \DUT_DIRECT_SUM|CONT[1]~feeder_combout\);

-- Location: LCFF_X64_Y34_N27
\DUT_DIRECT_SUM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_DIRECT_SUM|CONT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_DIRECT_SUM|CONT\(1));

-- Location: LCCOMB_X64_Y34_N12
\DUT_DIRECT_SUM|CONT[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DUT_DIRECT_SUM|CONT[2]~feeder_combout\ = \DUT_FOR|CONT~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUT_FOR|CONT~2_combout\,
	combout => \DUT_DIRECT_SUM|CONT[2]~feeder_combout\);

-- Location: LCFF_X64_Y34_N13
\DUT_DIRECT_SUM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DUT_DIRECT_SUM|CONT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DUT_DIRECT_SUM|CONT\(2));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_FOR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_FOR|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_FOR(0));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_FOR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_FOR|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_FOR(1));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_FOR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_FOR|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_FOR(2));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_WHILE[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_WHILE|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_WHILE(0));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_WHILE[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_WHILE|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_WHILE(1));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_WHILE[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_WHILE|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_WHILE(2));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CASE_WHEN[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_CASE_WHEN|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CASE_WHEN(0));

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CASE_WHEN[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_CASE_WHEN|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CASE_WHEN(1));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CASE_WHEN[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_CASE_WHEN|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CASE_WHEN(2));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_IF_THEN[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_IF_THEN|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_IF_THEN(0));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_IF_THEN[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_IF_THEN|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_IF_THEN(1));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_IF_THEN[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_IF_THEN|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_IF_THEN(2));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_DIRECT_SUM[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_DIRECT_SUM|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_DIRECT_SUM(0));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_DIRECT_SUM[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_DIRECT_SUM|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_DIRECT_SUM(1));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_DIRECT_SUM[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DUT_DIRECT_SUM|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_DIRECT_SUM(2));
END structure;


