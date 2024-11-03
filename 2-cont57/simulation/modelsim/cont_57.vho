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

-- DATE "11/03/2024 17:47:40"

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

ENTITY 	cont_57 IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	EN : IN std_logic;
	CLR : IN std_logic;
	Q_L_U : OUT std_logic_vector(3 DOWNTO 0);
	Q_M_U : OUT std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(7 DOWNTO 0)
	);
END cont_57;

-- Design Ports Information
-- Q_L_U[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L_U[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L_U[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L_U[3]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M_U[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M_U[1]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M_U[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M_U[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[0]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[4]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[6]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RST	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cont_57 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_Q_L_U : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q_M_U : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ld_l~2_combout\ : std_logic;
SIGNAL \U_MSD|Add0~0_combout\ : std_logic;
SIGNAL \U_MSD|Add0~1_combout\ : std_logic;
SIGNAL \CLR~combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \EN~combout\ : std_logic;
SIGNAL \U_LSD|Add0~0_combout\ : std_logic;
SIGNAL \U_LSD|CONT[1]~0_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \U_LSD|Add0~1_combout\ : std_logic;
SIGNAL \U_LSD|CONT[3]~8_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \U_LSD|CONT[0]~6_combout\ : std_logic;
SIGNAL \U_LSD|CONT[2]~7_combout\ : std_logic;
SIGNAL \U_LSD|CONT[2]~10_combout\ : std_logic;
SIGNAL \ld_l~3_combout\ : std_logic;
SIGNAL \ld_l~combout\ : std_logic;
SIGNAL \U_MSD|CONT[0]~0_combout\ : std_logic;
SIGNAL \U_MSD|CONT[1]~1_combout\ : std_logic;
SIGNAL \U_MSD|CONT[3]~3_combout\ : std_logic;
SIGNAL \ld_l~4_combout\ : std_logic;
SIGNAL \U_LSD|CONT[0]~5_combout\ : std_logic;
SIGNAL \U_LSD|CONT[0]~9_combout\ : std_logic;
SIGNAL \U_MSD|CONT[2]~2_combout\ : std_logic;
SIGNAL \U_MSD|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_LSD|CONT\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
ww_EN <= EN;
ww_CLR <= CLR;
Q_L_U <= ww_Q_L_U;
Q_M_U <= ww_Q_M_U;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);

-- Location: LCCOMB_X34_Y35_N22
\ld_l~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ld_l~2_combout\ = (!\RST~combout\ & !\CLR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~combout\,
	datad => \CLR~combout\,
	combout => \ld_l~2_combout\);

-- Location: LCCOMB_X35_Y35_N30
\U_MSD|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_MSD|Add0~0_combout\ = \U_MSD|CONT\(2) $ (((\U_MSD|CONT\(0) & \U_MSD|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MSD|CONT\(0),
	datac => \U_MSD|CONT\(2),
	datad => \U_MSD|CONT\(1),
	combout => \U_MSD|Add0~0_combout\);

-- Location: LCCOMB_X35_Y35_N24
\U_MSD|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_MSD|Add0~1_combout\ = \U_MSD|CONT\(3) $ (((\U_MSD|CONT\(0) & (\U_MSD|CONT\(2) & \U_MSD|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MSD|CONT\(0),
	datab => \U_MSD|CONT\(3),
	datac => \U_MSD|CONT\(2),
	datad => \U_MSD|CONT\(1),
	combout => \U_MSD|Add0~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLR~I\ : cycloneii_io
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
	padio => ww_CLR,
	combout => \CLR~combout\);

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN~I\ : cycloneii_io
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
	padio => ww_EN,
	combout => \EN~combout\);

-- Location: LCCOMB_X34_Y35_N18
\U_LSD|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|Add0~0_combout\ = \U_LSD|CONT\(0) $ (\U_LSD|CONT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LSD|CONT\(0),
	datac => \U_LSD|CONT\(1),
	combout => \U_LSD|Add0~0_combout\);

-- Location: LCCOMB_X34_Y35_N20
\U_LSD|CONT[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|CONT[1]~0_combout\ = (\U_LSD|CONT[0]~5_combout\ & ((\U_LSD|Add0~0_combout\))) # (!\U_LSD|CONT[0]~5_combout\ & (\Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \U_LSD|Add0~0_combout\,
	datad => \U_LSD|CONT[0]~5_combout\,
	combout => \U_LSD|CONT[1]~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cycloneii_io
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
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y35_N30
\U_LSD|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|Add0~1_combout\ = \U_LSD|CONT\(3) $ (((\U_LSD|CONT\(2) & (\U_LSD|CONT\(0) & \U_LSD|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LSD|CONT\(2),
	datab => \U_LSD|CONT\(0),
	datac => \U_LSD|CONT\(1),
	datad => \U_LSD|CONT\(3),
	combout => \U_LSD|Add0~1_combout\);

-- Location: LCCOMB_X34_Y35_N2
\U_LSD|CONT[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|CONT[3]~8_combout\ = (\U_LSD|CONT[0]~6_combout\ & (((\U_LSD|CONT\(3))))) # (!\U_LSD|CONT[0]~6_combout\ & (\U_LSD|Add0~1_combout\ & ((\U_LSD|CONT[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LSD|CONT[0]~6_combout\,
	datab => \U_LSD|Add0~1_combout\,
	datac => \U_LSD|CONT\(3),
	datad => \U_LSD|CONT[0]~5_combout\,
	combout => \U_LSD|CONT[3]~8_combout\);

-- Location: LCFF_X34_Y35_N3
\U_LSD|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_LSD|CONT[3]~8_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_LSD|CONT\(3));

-- Location: LCCOMB_X34_Y35_N24
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\U_LSD|CONT\(1)) # ((\U_LSD|CONT\(2)) # ((!\U_LSD|CONT\(3)) # (!\U_LSD|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LSD|CONT\(1),
	datab => \U_LSD|CONT\(2),
	datac => \U_LSD|CONT\(0),
	datad => \U_LSD|CONT\(3),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X34_Y35_N16
\U_LSD|CONT[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|CONT[0]~6_combout\ = (\Equal5~0_combout\ & !\EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~0_combout\,
	datad => \EN~combout\,
	combout => \U_LSD|CONT[0]~6_combout\);

-- Location: LCFF_X34_Y35_N21
\U_LSD|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_LSD|CONT[1]~0_combout\,
	sdata => \U_LSD|CONT\(1),
	aclr => \RST~clkctrl_outclk\,
	sload => \U_LSD|CONT[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_LSD|CONT\(1));

-- Location: LCCOMB_X34_Y35_N12
\U_LSD|CONT[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|CONT[2]~7_combout\ = (\U_LSD|CONT[0]~5_combout\ & (\U_LSD|CONT\(2) $ (((\U_LSD|CONT\(0) & \U_LSD|CONT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LSD|CONT\(2),
	datab => \U_LSD|CONT\(0),
	datac => \U_LSD|CONT\(1),
	datad => \U_LSD|CONT[0]~5_combout\,
	combout => \U_LSD|CONT[2]~7_combout\);

-- Location: LCCOMB_X34_Y35_N4
\U_LSD|CONT[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|CONT[2]~10_combout\ = (\EN~combout\ & (((\U_LSD|CONT[2]~7_combout\)))) # (!\EN~combout\ & ((\U_LSD|CONT\(2)) # ((!\Equal5~0_combout\ & \U_LSD|CONT[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \EN~combout\,
	datac => \U_LSD|CONT\(2),
	datad => \U_LSD|CONT[2]~7_combout\,
	combout => \U_LSD|CONT[2]~10_combout\);

-- Location: LCFF_X34_Y35_N5
\U_LSD|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_LSD|CONT[2]~10_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_LSD|CONT\(2));

-- Location: LCCOMB_X34_Y35_N28
\ld_l~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ld_l~3_combout\ = (!\U_LSD|CONT\(1) & (!\U_LSD|CONT\(0) & (!\U_LSD|CONT\(2) & \U_LSD|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LSD|CONT\(1),
	datab => \U_LSD|CONT\(0),
	datac => \U_LSD|CONT\(2),
	datad => \U_LSD|CONT\(3),
	combout => \ld_l~3_combout\);

-- Location: LCCOMB_X34_Y35_N8
ld_l : cycloneii_lcell_comb
-- Equation(s):
-- \ld_l~combout\ = (!\CLR~combout\ & (!\RST~combout\ & ((!\ld_l~3_combout\) # (!\ld_l~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~combout\,
	datab => \ld_l~4_combout\,
	datac => \RST~combout\,
	datad => \ld_l~3_combout\,
	combout => \ld_l~combout\);

-- Location: LCCOMB_X35_Y35_N28
\U_MSD|CONT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_MSD|CONT[0]~0_combout\ = (\Equal5~0_combout\ $ (!\U_MSD|CONT\(0))) # (!\ld_l~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => \U_MSD|CONT\(0),
	datad => \ld_l~combout\,
	combout => \U_MSD|CONT[0]~0_combout\);

-- Location: LCFF_X35_Y35_N29
\U_MSD|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_MSD|CONT[0]~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_MSD|CONT\(0));

-- Location: LCCOMB_X35_Y35_N14
\U_MSD|CONT[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_MSD|CONT[1]~1_combout\ = (\U_LSD|CONT[0]~5_combout\ & (((\U_MSD|CONT\(1))))) # (!\U_LSD|CONT[0]~5_combout\ & (\ld_l~combout\ & (\U_MSD|CONT\(0) $ (\U_MSD|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MSD|CONT\(0),
	datab => \U_LSD|CONT[0]~5_combout\,
	datac => \U_MSD|CONT\(1),
	datad => \ld_l~combout\,
	combout => \U_MSD|CONT[1]~1_combout\);

-- Location: LCFF_X35_Y35_N15
\U_MSD|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_MSD|CONT[1]~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_MSD|CONT\(1));

-- Location: LCCOMB_X35_Y35_N26
\U_MSD|CONT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_MSD|CONT[3]~3_combout\ = (\U_LSD|CONT[0]~5_combout\ & (((\U_MSD|CONT\(3))))) # (!\U_LSD|CONT[0]~5_combout\ & (\U_MSD|Add0~1_combout\ & ((\ld_l~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MSD|Add0~1_combout\,
	datab => \U_LSD|CONT[0]~5_combout\,
	datac => \U_MSD|CONT\(3),
	datad => \ld_l~combout\,
	combout => \U_MSD|CONT[3]~3_combout\);

-- Location: LCFF_X35_Y35_N27
\U_MSD|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_MSD|CONT[3]~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_MSD|CONT\(3));

-- Location: LCCOMB_X35_Y35_N20
\ld_l~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ld_l~4_combout\ = (\U_MSD|CONT\(2) & (!\U_MSD|CONT\(0) & (\U_MSD|CONT\(1) & !\U_MSD|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MSD|CONT\(2),
	datab => \U_MSD|CONT\(0),
	datac => \U_MSD|CONT\(1),
	datad => \U_MSD|CONT\(3),
	combout => \ld_l~4_combout\);

-- Location: LCCOMB_X34_Y35_N26
\U_LSD|CONT[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|CONT[0]~5_combout\ = (\ld_l~2_combout\ & (\Equal5~0_combout\ & ((!\ld_l~4_combout\) # (!\ld_l~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_l~2_combout\,
	datab => \ld_l~3_combout\,
	datac => \Equal5~0_combout\,
	datad => \ld_l~4_combout\,
	combout => \U_LSD|CONT[0]~5_combout\);

-- Location: LCCOMB_X34_Y35_N14
\U_LSD|CONT[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_LSD|CONT[0]~9_combout\ = (\U_LSD|CONT\(0) & (\Equal5~0_combout\ & (!\EN~combout\))) # (!\U_LSD|CONT\(0) & (\U_LSD|CONT[0]~5_combout\ & ((\EN~combout\) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \EN~combout\,
	datac => \U_LSD|CONT\(0),
	datad => \U_LSD|CONT[0]~5_combout\,
	combout => \U_LSD|CONT[0]~9_combout\);

-- Location: LCFF_X34_Y35_N15
\U_LSD|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_LSD|CONT[0]~9_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_LSD|CONT\(0));

-- Location: LCCOMB_X35_Y35_N16
\U_MSD|CONT[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_MSD|CONT[2]~2_combout\ = (\U_LSD|CONT[0]~5_combout\ & (((\U_MSD|CONT\(2))))) # (!\U_LSD|CONT[0]~5_combout\ & (\U_MSD|Add0~0_combout\ & ((\ld_l~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MSD|Add0~0_combout\,
	datab => \U_LSD|CONT[0]~5_combout\,
	datac => \U_MSD|CONT\(2),
	datad => \ld_l~combout\,
	combout => \U_MSD|CONT[2]~2_combout\);

-- Location: LCFF_X35_Y35_N17
\U_MSD|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_MSD|CONT[2]~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_MSD|CONT\(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L_U[0]~I\ : cycloneii_io
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
	datain => \U_LSD|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L_U(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L_U[1]~I\ : cycloneii_io
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
	datain => \U_LSD|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L_U(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L_U[2]~I\ : cycloneii_io
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
	datain => \U_LSD|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L_U(2));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L_U[3]~I\ : cycloneii_io
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
	datain => \U_LSD|CONT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L_U(3));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M_U[0]~I\ : cycloneii_io
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
	datain => \U_MSD|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M_U(0));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M_U[1]~I\ : cycloneii_io
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
	datain => \U_MSD|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M_U(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M_U[2]~I\ : cycloneii_io
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
	datain => \U_MSD|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M_U(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M_U[3]~I\ : cycloneii_io
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
	datain => \U_MSD|CONT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M_U(3));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[0]~I\ : cycloneii_io
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
	datain => \U_LSD|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[1]~I\ : cycloneii_io
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
	datain => \U_LSD|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[2]~I\ : cycloneii_io
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
	datain => \U_LSD|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[3]~I\ : cycloneii_io
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
	datain => \U_LSD|CONT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[4]~I\ : cycloneii_io
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
	datain => \U_MSD|CONT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[5]~I\ : cycloneii_io
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
	datain => \U_MSD|CONT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(5));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[6]~I\ : cycloneii_io
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
	datain => \U_MSD|CONT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[7]~I\ : cycloneii_io
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
	datain => \U_MSD|CONT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(7));
END structure;


