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

-- DATE "12/01/2024 23:48:12"

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

ENTITY 	digital_cronometer IS
    PORT (
	CLK : IN std_logic;
	SW_1 : IN std_logic;
	SW_2 : IN std_logic;
	SWITCH : IN std_logic;
	Q_M : OUT std_logic_vector(6 DOWNTO 0);
	Q_L : OUT std_logic_vector(6 DOWNTO 0);
	Q_CENT_M : OUT std_logic_vector(6 DOWNTO 0);
	Q_CENT_L : OUT std_logic_vector(6 DOWNTO 0)
	);
END digital_cronometer;

-- Design Ports Information
-- Q_M[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[1]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[2]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[3]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[4]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[5]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[6]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[0]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[2]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[5]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[6]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[3]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[4]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[6]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[1]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[3]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[5]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[6]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW_1	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW_2	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF digital_cronometer IS
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
SIGNAL ww_SW_1 : std_logic;
SIGNAL ww_SW_2 : std_logic;
SIGNAL ww_SWITCH : std_logic;
SIGNAL ww_Q_M : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Q_L : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Q_CENT_M : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Q_CENT_L : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SWITCH~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_seconds|CONT_L_PM|Add0~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|Add0~1_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|Add0~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \SW_2~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \SW_1~combout\ : std_logic;
SIGNAL \STATE~1_combout\ : std_logic;
SIGNAL \SWITCH~combout\ : std_logic;
SIGNAL \SWITCH~clkctrl_outclk\ : std_logic;
SIGNAL \STATE[1]~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~4_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[1]~2_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[0]~0_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[2]~3_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|Add0~1_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[3]~4_combout\ : std_logic;
SIGNAL \cont_hundredths|en_m~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[3]~7_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT~6_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT~4_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT~8_combout\ : std_logic;
SIGNAL \EN_SEC~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT[3]~5_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[3]~3_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[2]~5_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[0]~2_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[1]~4_combout\ : std_logic;
SIGNAL \cont_seconds|ld~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~6_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|Add0~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~7_combout\ : std_logic;
SIGNAL \cont_seconds|ld~1_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~8_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~9_combout\ : std_logic;
SIGNAL \decoder_m_sec|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_m_sec|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_m_sec|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_m_sec|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_m_sec|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_m_sec|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_m_sec|Mux0~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[3]~6_combout\ : std_logic;
SIGNAL \decoder_l_sec|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_l_sec|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_l_sec|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_l_sec|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_l_sec|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_l_sec|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_l_sec|Mux0~0_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|Add0~0_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT~7_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux0~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux0~0_combout\ : std_logic;
SIGNAL STATE : std_logic_vector(1 DOWNTO 0);
SIGNAL \cont_seconds|CONT_M_PM|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_seconds|CONT_L_PM|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_hundredths|CONT_M_PM|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_hundredths|CONT_L_PM|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_l_sec|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \decoder_m_sec|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_SW_1 <= SW_1;
ww_SW_2 <= SW_2;
ww_SWITCH <= SWITCH;
Q_M <= ww_Q_M;
Q_L <= ww_Q_L;
Q_CENT_M <= ww_Q_CENT_M;
Q_CENT_L <= ww_Q_CENT_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\SWITCH~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SWITCH~combout\);
\decoder_l_sec|ALT_INV_Mux6~0_combout\ <= NOT \decoder_l_sec|Mux6~0_combout\;
\decoder_m_sec|ALT_INV_Mux6~0_combout\ <= NOT \decoder_m_sec|Mux6~0_combout\;
\decoder_l_cent|ALT_INV_Mux6~0_combout\ <= NOT \decoder_l_cent|Mux6~0_combout\;
\decoder_m_cent|ALT_INV_Mux6~0_combout\ <= NOT \decoder_m_cent|Mux6~0_combout\;

-- Location: LCCOMB_X4_Y18_N0
\cont_seconds|CONT_L_PM|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|Add0~0_combout\ = \cont_seconds|CONT_L_PM|CONT\(2) $ (((\cont_seconds|CONT_L_PM|CONT\(0) & \cont_seconds|CONT_L_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(0),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	combout => \cont_seconds|CONT_L_PM|Add0~0_combout\);

-- Location: LCCOMB_X4_Y18_N14
\cont_seconds|CONT_L_PM|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|Add0~1_combout\ = \cont_seconds|CONT_L_PM|CONT\(3) $ (((\cont_seconds|CONT_L_PM|CONT\(0) & (\cont_seconds|CONT_L_PM|CONT\(1) & \cont_seconds|CONT_L_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(3),
	datab => \cont_seconds|CONT_L_PM|CONT\(0),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT\(2),
	combout => \cont_seconds|CONT_L_PM|Add0~1_combout\);

-- Location: LCCOMB_X6_Y18_N8
\cont_hundredths|CONT_L_PM|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|Add0~0_combout\ = \cont_hundredths|CONT_L_PM|CONT\(2) $ (((\cont_hundredths|CONT_L_PM|CONT\(1) & \cont_hundredths|CONT_L_PM|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(1),
	datad => \cont_hundredths|CONT_L_PM|CONT\(0),
	combout => \cont_hundredths|CONT_L_PM|Add0~0_combout\);

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW_2~I\ : cycloneii_io
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
	padio => ww_SW_2,
	combout => \SW_2~combout\);

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
\SW_1~I\ : cycloneii_io
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
	padio => ww_SW_1,
	combout => \SW_1~combout\);

-- Location: LCCOMB_X5_Y18_N22
\STATE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATE~1_combout\ = (\SW_1~combout\ & ((STATE(0)) # ((!\SW_2~combout\ & STATE(1))))) # (!\SW_1~combout\ & (((STATE(1)) # (!STATE(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_2~combout\,
	datab => \SW_1~combout\,
	datac => STATE(0),
	datad => STATE(1),
	combout => \STATE~1_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH~I\ : cycloneii_io
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
	padio => ww_SWITCH,
	combout => \SWITCH~combout\);

-- Location: CLKCTRL_G1
\SWITCH~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SWITCH~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SWITCH~clkctrl_outclk\);

-- Location: LCFF_X5_Y18_N23
\STATE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \STATE~1_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATE(0));

-- Location: LCCOMB_X5_Y18_N0
\STATE[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATE[1]~0_combout\ = (\SW_1~combout\ & (STATE(1))) # (!\SW_1~combout\ & (!STATE(1) & STATE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_1~combout\,
	datac => STATE(1),
	datad => STATE(0),
	combout => \STATE[1]~0_combout\);

-- Location: LCFF_X5_Y18_N1
\STATE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \STATE[1]~0_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATE(1));

-- Location: LCCOMB_X6_Y18_N0
\cont_seconds|CONT_M_PM|CONT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT~4_combout\ = (!\cont_seconds|CONT_M_PM|CONT\(0) & ((!STATE(0)) # (!STATE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont_seconds|CONT_M_PM|CONT\(0),
	datac => STATE(1),
	datad => STATE(0),
	combout => \cont_seconds|CONT_M_PM|CONT~4_combout\);

-- Location: LCCOMB_X6_Y18_N6
\cont_hundredths|CONT_L_PM|CONT[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\ = (!STATE(1) & (!\cont_hundredths|en_m~0_combout\ & STATE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datac => \cont_hundredths|en_m~0_combout\,
	datad => STATE(0),
	combout => \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\);

-- Location: LCCOMB_X6_Y18_N14
\cont_hundredths|CONT_L_PM|CONT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[1]~2_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(1) & (((!\cont_hundredths|CONT_L_PM|CONT\(0) & \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\)) # (!STATE(0)))) # (!\cont_hundredths|CONT_L_PM|CONT\(1) & 
-- (\cont_hundredths|CONT_L_PM|CONT\(0) & ((\cont_hundredths|CONT_L_PM|CONT[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(0),
	datab => STATE(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(1),
	datad => \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\,
	combout => \cont_hundredths|CONT_L_PM|CONT[1]~2_combout\);

-- Location: LCFF_X6_Y18_N15
\cont_hundredths|CONT_L_PM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_L_PM|CONT[1]~2_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_L_PM|CONT\(1));

-- Location: LCCOMB_X6_Y18_N16
\cont_hundredths|CONT_L_PM|CONT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[0]~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(0) & ((!STATE(0)))) # (!\cont_hundredths|CONT_L_PM|CONT\(0) & (!STATE(1) & STATE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => STATE(0),
	combout => \cont_hundredths|CONT_L_PM|CONT[0]~0_combout\);

-- Location: LCFF_X6_Y18_N17
\cont_hundredths|CONT_L_PM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_L_PM|CONT[0]~0_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_L_PM|CONT\(0));

-- Location: LCCOMB_X6_Y18_N28
\cont_hundredths|CONT_L_PM|CONT[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[2]~3_combout\ = (\cont_hundredths|CONT_L_PM|Add0~0_combout\ & ((\cont_hundredths|CONT_L_PM|CONT[3]~1_combout\) # ((!STATE(0) & \cont_hundredths|CONT_L_PM|CONT\(2))))) # (!\cont_hundredths|CONT_L_PM|Add0~0_combout\ & 
-- (!STATE(0) & (\cont_hundredths|CONT_L_PM|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|Add0~0_combout\,
	datab => STATE(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(2),
	datad => \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\,
	combout => \cont_hundredths|CONT_L_PM|CONT[2]~3_combout\);

-- Location: LCFF_X6_Y18_N29
\cont_hundredths|CONT_L_PM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_L_PM|CONT[2]~3_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_L_PM|CONT\(2));

-- Location: LCCOMB_X7_Y18_N30
\cont_hundredths|CONT_L_PM|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|Add0~1_combout\ = \cont_hundredths|CONT_L_PM|CONT\(3) $ (((\cont_hundredths|CONT_L_PM|CONT\(1) & (\cont_hundredths|CONT_L_PM|CONT\(0) & \cont_hundredths|CONT_L_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(3),
	datab => \cont_hundredths|CONT_L_PM|CONT\(1),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \cont_hundredths|CONT_L_PM|Add0~1_combout\);

-- Location: LCCOMB_X6_Y18_N2
\cont_hundredths|CONT_L_PM|CONT[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[3]~4_combout\ = (\cont_hundredths|CONT_L_PM|CONT[3]~1_combout\ & ((\cont_hundredths|CONT_L_PM|Add0~1_combout\) # ((!STATE(0) & \cont_hundredths|CONT_L_PM|CONT\(3))))) # (!\cont_hundredths|CONT_L_PM|CONT[3]~1_combout\ & 
-- (!STATE(0) & (\cont_hundredths|CONT_L_PM|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\,
	datab => STATE(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|Add0~1_combout\,
	combout => \cont_hundredths|CONT_L_PM|CONT[3]~4_combout\);

-- Location: LCFF_X6_Y18_N3
\cont_hundredths|CONT_L_PM|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_L_PM|CONT[3]~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_L_PM|CONT\(3));

-- Location: LCCOMB_X6_Y18_N20
\cont_hundredths|en_m~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|en_m~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(0) & (\cont_hundredths|CONT_L_PM|CONT\(3) & (!\cont_hundredths|CONT_L_PM|CONT\(1) & !\cont_hundredths|CONT_L_PM|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(0),
	datab => \cont_hundredths|CONT_L_PM|CONT\(3),
	datac => \cont_hundredths|CONT_L_PM|CONT\(1),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \cont_hundredths|en_m~0_combout\);

-- Location: LCCOMB_X6_Y18_N22
\cont_seconds|CONT_L_PM|CONT[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[3]~7_combout\ = (STATE(1) & (!STATE(0) & ((\EN_SEC~0_combout\) # (!\cont_hundredths|en_m~0_combout\)))) # (!STATE(1) & (((\EN_SEC~0_combout\) # (!\cont_hundredths|en_m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => STATE(0),
	datac => \cont_hundredths|en_m~0_combout\,
	datad => \EN_SEC~0_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\);

-- Location: LCCOMB_X6_Y18_N26
\cont_hundredths|CONT_M_PM|CONT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT~6_combout\ = (\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (\cont_hundredths|CONT_M_PM|CONT\(0) $ (\cont_hundredths|CONT_M_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	combout => \cont_hundredths|CONT_M_PM|CONT~6_combout\);

-- Location: LCCOMB_X6_Y18_N18
\cont_hundredths|CONT_M_PM|CONT[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\ = (STATE(0) & ((STATE(1)) # (\cont_hundredths|en_m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => STATE(0),
	datac => \cont_hundredths|en_m~0_combout\,
	combout => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\);

-- Location: LCFF_X6_Y18_N27
\cont_hundredths|CONT_M_PM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_M_PM|CONT~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_M_PM|CONT\(1));

-- Location: LCCOMB_X6_Y18_N24
\cont_hundredths|CONT_M_PM|CONT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT~4_combout\ = (!\cont_hundredths|CONT_M_PM|CONT\(0) & ((!STATE(0)) # (!STATE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => STATE(0),
	combout => \cont_hundredths|CONT_M_PM|CONT~4_combout\);

-- Location: LCFF_X6_Y18_N25
\cont_hundredths|CONT_M_PM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_M_PM|CONT~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_M_PM|CONT\(0));

-- Location: LCCOMB_X6_Y18_N12
\cont_hundredths|CONT_M_PM|CONT~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT~8_combout\ = (\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (\cont_hundredths|CONT_M_PM|CONT\(2) $ (((\cont_hundredths|CONT_M_PM|CONT\(0) & \cont_hundredths|CONT_M_PM|CONT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(0),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	combout => \cont_hundredths|CONT_M_PM|CONT~8_combout\);

-- Location: LCFF_X6_Y18_N13
\cont_hundredths|CONT_M_PM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_M_PM|CONT~8_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_M_PM|CONT\(2));

-- Location: LCCOMB_X6_Y18_N30
\EN_SEC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EN_SEC~0_combout\ = ((\cont_hundredths|CONT_M_PM|CONT\(1)) # ((\cont_hundredths|CONT_M_PM|CONT\(2)) # (!\cont_hundredths|CONT_M_PM|CONT\(0)))) # (!\cont_hundredths|CONT_M_PM|CONT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(3),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(2),
	combout => \EN_SEC~0_combout\);

-- Location: LCCOMB_X5_Y18_N14
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (STATE(0) & STATE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STATE(0),
	datad => STATE(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y18_N12
\cont_seconds|CONT_M_PM|CONT[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT[3]~5_combout\ = (\Equal0~0_combout\) # ((\cont_seconds|ld~0_combout\ & (!\EN_SEC~0_combout\ & \cont_hundredths|en_m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|ld~0_combout\,
	datab => \EN_SEC~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \cont_hundredths|en_m~0_combout\,
	combout => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\);

-- Location: LCFF_X5_Y18_N17
\cont_seconds|CONT_M_PM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \cont_seconds|CONT_M_PM|CONT~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	sload => VCC,
	ena => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_M_PM|CONT\(0));

-- Location: LCCOMB_X5_Y18_N28
\cont_seconds|CONT_L_PM|CONT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[3]~3_combout\ = (!\cont_seconds|ld~0_combout\ & (!\EN_SEC~0_combout\ & (!\Equal0~0_combout\ & \cont_hundredths|en_m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|ld~0_combout\,
	datab => \EN_SEC~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \cont_hundredths|en_m~0_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[3]~3_combout\);

-- Location: LCCOMB_X5_Y18_N4
\cont_seconds|CONT_L_PM|CONT[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[2]~5_combout\ = (\cont_seconds|CONT_L_PM|Add0~0_combout\ & ((\cont_seconds|CONT_L_PM|CONT[3]~3_combout\) # ((\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & \cont_seconds|CONT_L_PM|CONT\(2))))) # 
-- (!\cont_seconds|CONT_L_PM|Add0~0_combout\ & (\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (\cont_seconds|CONT_L_PM|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|Add0~0_combout\,
	datab => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	datac => \cont_seconds|CONT_L_PM|CONT\(2),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~3_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[2]~5_combout\);

-- Location: LCFF_X5_Y18_N5
\cont_seconds|CONT_L_PM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_seconds|CONT_L_PM|CONT[2]~5_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_L_PM|CONT\(2));

-- Location: LCCOMB_X5_Y18_N8
\cont_seconds|CONT_L_PM|CONT[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[0]~2_combout\ = (\cont_seconds|CONT_L_PM|CONT\(0) & ((\cont_seconds|CONT_L_PM|CONT[3]~7_combout\))) # (!\cont_seconds|CONT_L_PM|CONT\(0) & (!\cont_seconds|CONT_M_PM|CONT[3]~5_combout\ & 
-- !\cont_seconds|CONT_L_PM|CONT[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	datac => \cont_seconds|CONT_L_PM|CONT\(0),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[0]~2_combout\);

-- Location: LCFF_X5_Y18_N9
\cont_seconds|CONT_L_PM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_seconds|CONT_L_PM|CONT[0]~2_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_L_PM|CONT\(0));

-- Location: LCCOMB_X5_Y18_N10
\cont_seconds|CONT_L_PM|CONT[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[1]~4_combout\ = (\cont_seconds|CONT_L_PM|CONT\(1) & ((\cont_seconds|CONT_L_PM|CONT[3]~7_combout\) # ((!\cont_seconds|CONT_L_PM|CONT\(0) & \cont_seconds|CONT_L_PM|CONT[3]~3_combout\)))) # (!\cont_seconds|CONT_L_PM|CONT\(1) & 
-- (\cont_seconds|CONT_L_PM|CONT\(0) & ((\cont_seconds|CONT_L_PM|CONT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(0),
	datab => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~3_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[1]~4_combout\);

-- Location: LCFF_X5_Y18_N11
\cont_seconds|CONT_L_PM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_seconds|CONT_L_PM|CONT[1]~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_L_PM|CONT\(1));

-- Location: LCCOMB_X5_Y18_N24
\cont_seconds|ld~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|ld~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(3) & (!\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(0) & !\cont_seconds|CONT_L_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(3),
	datab => \cont_seconds|CONT_L_PM|CONT\(2),
	datac => \cont_seconds|CONT_L_PM|CONT\(0),
	datad => \cont_seconds|CONT_L_PM|CONT\(1),
	combout => \cont_seconds|ld~0_combout\);

-- Location: LCCOMB_X5_Y18_N2
\cont_seconds|CONT_M_PM|CONT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT~6_combout\ = (\cont_seconds|CONT_M_PM|CONT~8_combout\ & (\cont_seconds|CONT_M_PM|CONT\(0) $ (\cont_seconds|CONT_M_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datac => \cont_seconds|CONT_M_PM|CONT\(1),
	datad => \cont_seconds|CONT_M_PM|CONT~8_combout\,
	combout => \cont_seconds|CONT_M_PM|CONT~6_combout\);

-- Location: LCFF_X5_Y18_N3
\cont_seconds|CONT_M_PM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_seconds|CONT_M_PM|CONT~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_M_PM|CONT\(1));

-- Location: LCCOMB_X5_Y18_N16
\cont_seconds|CONT_M_PM|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|Add0~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(0) & \cont_seconds|CONT_M_PM|CONT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_seconds|CONT_M_PM|CONT\(0),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \cont_seconds|CONT_M_PM|Add0~0_combout\);

-- Location: LCCOMB_X5_Y18_N30
\cont_seconds|CONT_M_PM|CONT~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT~7_combout\ = (\cont_seconds|CONT_M_PM|CONT~8_combout\ & (\cont_seconds|CONT_M_PM|CONT\(3) $ (((\cont_seconds|CONT_M_PM|CONT\(2) & \cont_seconds|CONT_M_PM|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(2),
	datab => \cont_seconds|CONT_M_PM|Add0~0_combout\,
	datac => \cont_seconds|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_M_PM|CONT~8_combout\,
	combout => \cont_seconds|CONT_M_PM|CONT~7_combout\);

-- Location: LCFF_X5_Y18_N31
\cont_seconds|CONT_M_PM|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_seconds|CONT_M_PM|CONT~7_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_M_PM|CONT\(3));

-- Location: LCCOMB_X5_Y18_N26
\cont_seconds|ld~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|ld~1_combout\ = ((\cont_seconds|CONT_M_PM|CONT\(3)) # ((\cont_seconds|CONT_M_PM|CONT\(1)) # (!\cont_seconds|CONT_M_PM|CONT\(0)))) # (!\cont_seconds|CONT_M_PM|CONT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(2),
	datab => \cont_seconds|CONT_M_PM|CONT\(3),
	datac => \cont_seconds|CONT_M_PM|CONT\(0),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \cont_seconds|ld~1_combout\);

-- Location: LCCOMB_X5_Y18_N18
\cont_seconds|CONT_M_PM|CONT~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT~8_combout\ = (STATE(0) & (!STATE(1) & ((\cont_seconds|ld~1_combout\) # (!\cont_seconds|ld~0_combout\)))) # (!STATE(0) & (((\cont_seconds|ld~1_combout\) # (!\cont_seconds|ld~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datab => STATE(1),
	datac => \cont_seconds|ld~0_combout\,
	datad => \cont_seconds|ld~1_combout\,
	combout => \cont_seconds|CONT_M_PM|CONT~8_combout\);

-- Location: LCCOMB_X5_Y18_N20
\cont_seconds|CONT_M_PM|CONT~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT~9_combout\ = (\cont_seconds|CONT_M_PM|CONT~8_combout\ & (\cont_seconds|CONT_M_PM|CONT\(2) $ (((\cont_seconds|CONT_M_PM|CONT\(0) & \cont_seconds|CONT_M_PM|CONT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT~8_combout\,
	datac => \cont_seconds|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \cont_seconds|CONT_M_PM|CONT~9_combout\);

-- Location: LCFF_X5_Y18_N21
\cont_seconds|CONT_M_PM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_seconds|CONT_M_PM|CONT~9_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_M_PM|CONT\(2));

-- Location: LCCOMB_X1_Y25_N0
\decoder_m_sec|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux6~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(0) & ((\cont_seconds|CONT_M_PM|CONT\(3)) # (\cont_seconds|CONT_M_PM|CONT\(2) $ (\cont_seconds|CONT_M_PM|CONT\(1))))) # (!\cont_seconds|CONT_M_PM|CONT\(0) & ((\cont_seconds|CONT_M_PM|CONT\(1)) 
-- # (\cont_seconds|CONT_M_PM|CONT\(2) $ (\cont_seconds|CONT_M_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(2),
	datac => \cont_seconds|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\decoder_m_sec|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux5~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(0) & (\cont_seconds|CONT_M_PM|CONT\(3) $ (((\cont_seconds|CONT_M_PM|CONT\(1)) # (!\cont_seconds|CONT_M_PM|CONT\(2)))))) # (!\cont_seconds|CONT_M_PM|CONT\(0) & 
-- (!\cont_seconds|CONT_M_PM|CONT\(2) & (!\cont_seconds|CONT_M_PM|CONT\(3) & \cont_seconds|CONT_M_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(2),
	datac => \cont_seconds|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y25_N8
\decoder_m_sec|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux4~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(1) & (\cont_seconds|CONT_M_PM|CONT\(0) & ((!\cont_seconds|CONT_M_PM|CONT\(3))))) # (!\cont_seconds|CONT_M_PM|CONT\(1) & ((\cont_seconds|CONT_M_PM|CONT\(2) & 
-- ((!\cont_seconds|CONT_M_PM|CONT\(3)))) # (!\cont_seconds|CONT_M_PM|CONT\(2) & (\cont_seconds|CONT_M_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(2),
	datac => \cont_seconds|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y25_N30
\decoder_m_sec|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux3~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(1) & ((\cont_seconds|CONT_M_PM|CONT\(0) & (\cont_seconds|CONT_M_PM|CONT\(2))) # (!\cont_seconds|CONT_M_PM|CONT\(0) & (!\cont_seconds|CONT_M_PM|CONT\(2) & \cont_seconds|CONT_M_PM|CONT\(3))))) 
-- # (!\cont_seconds|CONT_M_PM|CONT\(1) & (!\cont_seconds|CONT_M_PM|CONT\(3) & (\cont_seconds|CONT_M_PM|CONT\(0) $ (\cont_seconds|CONT_M_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(2),
	datac => \cont_seconds|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y25_N12
\decoder_m_sec|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux2~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(2) & (\cont_seconds|CONT_M_PM|CONT\(3) & ((\cont_seconds|CONT_M_PM|CONT\(1)) # (!\cont_seconds|CONT_M_PM|CONT\(0))))) # (!\cont_seconds|CONT_M_PM|CONT\(2) & (!\cont_seconds|CONT_M_PM|CONT\(0) 
-- & (!\cont_seconds|CONT_M_PM|CONT\(3) & \cont_seconds|CONT_M_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(2),
	datac => \cont_seconds|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\decoder_m_sec|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux1~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(3) & ((\cont_seconds|CONT_M_PM|CONT\(0) & ((\cont_seconds|CONT_M_PM|CONT\(1)))) # (!\cont_seconds|CONT_M_PM|CONT\(0) & (\cont_seconds|CONT_M_PM|CONT\(2))))) # 
-- (!\cont_seconds|CONT_M_PM|CONT\(3) & (\cont_seconds|CONT_M_PM|CONT\(2) & (\cont_seconds|CONT_M_PM|CONT\(0) $ (\cont_seconds|CONT_M_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(2),
	datac => \cont_seconds|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y25_N28
\decoder_m_sec|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux0~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(2) & (!\cont_seconds|CONT_M_PM|CONT\(1) & (\cont_seconds|CONT_M_PM|CONT\(0) $ (!\cont_seconds|CONT_M_PM|CONT\(3))))) # (!\cont_seconds|CONT_M_PM|CONT\(2) & (\cont_seconds|CONT_M_PM|CONT\(0) & 
-- (\cont_seconds|CONT_M_PM|CONT\(3) $ (!\cont_seconds|CONT_M_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(2),
	datac => \cont_seconds|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux0~0_combout\);

-- Location: LCCOMB_X5_Y18_N6
\cont_seconds|CONT_L_PM|CONT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[3]~6_combout\ = (\cont_seconds|CONT_L_PM|Add0~1_combout\ & ((\cont_seconds|CONT_L_PM|CONT[3]~3_combout\) # ((\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & \cont_seconds|CONT_L_PM|CONT\(3))))) # 
-- (!\cont_seconds|CONT_L_PM|Add0~1_combout\ & (\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (\cont_seconds|CONT_L_PM|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|Add0~1_combout\,
	datab => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	datac => \cont_seconds|CONT_L_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~3_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[3]~6_combout\);

-- Location: LCFF_X5_Y18_N7
\cont_seconds|CONT_L_PM|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_seconds|CONT_L_PM|CONT[3]~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_L_PM|CONT\(3));

-- Location: LCCOMB_X4_Y18_N20
\decoder_l_sec|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux6~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(0) & ((\cont_seconds|CONT_L_PM|CONT\(3)) # (\cont_seconds|CONT_L_PM|CONT\(2) $ (\cont_seconds|CONT_L_PM|CONT\(1))))) # (!\cont_seconds|CONT_L_PM|CONT\(0) & ((\cont_seconds|CONT_L_PM|CONT\(1)) 
-- # (\cont_seconds|CONT_L_PM|CONT\(2) $ (\cont_seconds|CONT_L_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(3),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y18_N6
\decoder_l_sec|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux5~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(0) & (\cont_seconds|CONT_L_PM|CONT\(3) $ (\cont_seconds|CONT_L_PM|CONT\(1))))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & (!\cont_seconds|CONT_L_PM|CONT\(3) & 
-- ((\cont_seconds|CONT_L_PM|CONT\(1)) # (\cont_seconds|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(3),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y18_N12
\decoder_l_sec|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux4~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(1) & (((!\cont_seconds|CONT_L_PM|CONT\(3) & \cont_seconds|CONT_L_PM|CONT\(0))))) # (!\cont_seconds|CONT_L_PM|CONT\(1) & ((\cont_seconds|CONT_L_PM|CONT\(2) & 
-- (!\cont_seconds|CONT_L_PM|CONT\(3))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & ((\cont_seconds|CONT_L_PM|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(3),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y18_N2
\decoder_l_sec|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux3~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(1) & ((\cont_seconds|CONT_L_PM|CONT\(2) & ((\cont_seconds|CONT_L_PM|CONT\(0)))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(3) & 
-- !\cont_seconds|CONT_L_PM|CONT\(0))))) # (!\cont_seconds|CONT_L_PM|CONT\(1) & (!\cont_seconds|CONT_L_PM|CONT\(3) & (\cont_seconds|CONT_L_PM|CONT\(2) $ (\cont_seconds|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(3),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y18_N16
\decoder_l_sec|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux2~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(3) & ((\cont_seconds|CONT_L_PM|CONT\(1)) # (!\cont_seconds|CONT_L_PM|CONT\(0))))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & (!\cont_seconds|CONT_L_PM|CONT\(3) 
-- & (\cont_seconds|CONT_L_PM|CONT\(1) & !\cont_seconds|CONT_L_PM|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(3),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y18_N18
\decoder_l_sec|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux1~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(3) & ((\cont_seconds|CONT_L_PM|CONT\(0) & ((\cont_seconds|CONT_L_PM|CONT\(1)))) # (!\cont_seconds|CONT_L_PM|CONT\(0) & (\cont_seconds|CONT_L_PM|CONT\(2))))) # 
-- (!\cont_seconds|CONT_L_PM|CONT\(3) & (\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(1) $ (\cont_seconds|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(3),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y18_N28
\decoder_l_sec|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux0~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(2) & (!\cont_seconds|CONT_L_PM|CONT\(1) & (\cont_seconds|CONT_L_PM|CONT\(3) $ (!\cont_seconds|CONT_L_PM|CONT\(0))))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(0) & 
-- (\cont_seconds|CONT_L_PM|CONT\(3) $ (!\cont_seconds|CONT_L_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(3),
	datac => \cont_seconds|CONT_L_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y18_N4
\cont_hundredths|CONT_M_PM|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|Add0~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(0) & \cont_hundredths|CONT_M_PM|CONT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(1),
	combout => \cont_hundredths|CONT_M_PM|Add0~0_combout\);

-- Location: LCCOMB_X6_Y18_N10
\cont_hundredths|CONT_M_PM|CONT~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT~7_combout\ = (\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (\cont_hundredths|CONT_M_PM|CONT\(3) $ (((\cont_hundredths|CONT_M_PM|CONT\(2) & \cont_hundredths|CONT_M_PM|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(2),
	datab => \cont_hundredths|CONT_M_PM|Add0~0_combout\,
	datac => \cont_hundredths|CONT_M_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	combout => \cont_hundredths|CONT_M_PM|CONT~7_combout\);

-- Location: LCFF_X6_Y18_N11
\cont_hundredths|CONT_M_PM|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_M_PM|CONT~7_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_M_PM|CONT\(3));

-- Location: LCCOMB_X4_Y18_N26
\decoder_m_cent|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux6~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(0) & ((\cont_hundredths|CONT_M_PM|CONT\(3)) # (\cont_hundredths|CONT_M_PM|CONT\(1) $ (\cont_hundredths|CONT_M_PM|CONT\(2))))) # (!\cont_hundredths|CONT_M_PM|CONT\(0) & 
-- ((\cont_hundredths|CONT_M_PM|CONT\(1)) # (\cont_hundredths|CONT_M_PM|CONT\(3) $ (\cont_hundredths|CONT_M_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(3),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(2),
	combout => \decoder_m_cent|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y18_N4
\decoder_m_cent|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux5~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(1) & (!\cont_hundredths|CONT_M_PM|CONT\(3) & ((\cont_hundredths|CONT_M_PM|CONT\(0)) # (!\cont_hundredths|CONT_M_PM|CONT\(2))))) # (!\cont_hundredths|CONT_M_PM|CONT\(1) & 
-- (\cont_hundredths|CONT_M_PM|CONT\(0) & (\cont_hundredths|CONT_M_PM|CONT\(3) $ (!\cont_hundredths|CONT_M_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(3),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(2),
	combout => \decoder_m_cent|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y18_N22
\decoder_m_cent|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux4~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(1) & (!\cont_hundredths|CONT_M_PM|CONT\(3) & (\cont_hundredths|CONT_M_PM|CONT\(0)))) # (!\cont_hundredths|CONT_M_PM|CONT\(1) & ((\cont_hundredths|CONT_M_PM|CONT\(2) & 
-- (!\cont_hundredths|CONT_M_PM|CONT\(3))) # (!\cont_hundredths|CONT_M_PM|CONT\(2) & ((\cont_hundredths|CONT_M_PM|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(3),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(2),
	combout => \decoder_m_cent|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y18_N8
\decoder_m_cent|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux3~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(1) & ((\cont_hundredths|CONT_M_PM|CONT\(0) & ((\cont_hundredths|CONT_M_PM|CONT\(2)))) # (!\cont_hundredths|CONT_M_PM|CONT\(0) & (\cont_hundredths|CONT_M_PM|CONT\(3) & 
-- !\cont_hundredths|CONT_M_PM|CONT\(2))))) # (!\cont_hundredths|CONT_M_PM|CONT\(1) & (!\cont_hundredths|CONT_M_PM|CONT\(3) & (\cont_hundredths|CONT_M_PM|CONT\(0) $ (\cont_hundredths|CONT_M_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(3),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(2),
	combout => \decoder_m_cent|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y18_N10
\decoder_m_cent|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux2~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(3) & (\cont_hundredths|CONT_M_PM|CONT\(2) & ((\cont_hundredths|CONT_M_PM|CONT\(1)) # (!\cont_hundredths|CONT_M_PM|CONT\(0))))) # (!\cont_hundredths|CONT_M_PM|CONT\(3) & 
-- (\cont_hundredths|CONT_M_PM|CONT\(1) & (!\cont_hundredths|CONT_M_PM|CONT\(0) & !\cont_hundredths|CONT_M_PM|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(3),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(2),
	combout => \decoder_m_cent|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y18_N24
\decoder_m_cent|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux1~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(3) & ((\cont_hundredths|CONT_M_PM|CONT\(0) & (\cont_hundredths|CONT_M_PM|CONT\(1))) # (!\cont_hundredths|CONT_M_PM|CONT\(0) & ((\cont_hundredths|CONT_M_PM|CONT\(2)))))) # 
-- (!\cont_hundredths|CONT_M_PM|CONT\(3) & (\cont_hundredths|CONT_M_PM|CONT\(2) & (\cont_hundredths|CONT_M_PM|CONT\(1) $ (\cont_hundredths|CONT_M_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(3),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(2),
	combout => \decoder_m_cent|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y18_N30
\decoder_m_cent|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux0~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(3) & (\cont_hundredths|CONT_M_PM|CONT\(0) & (\cont_hundredths|CONT_M_PM|CONT\(1) $ (\cont_hundredths|CONT_M_PM|CONT\(2))))) # (!\cont_hundredths|CONT_M_PM|CONT\(3) & 
-- (!\cont_hundredths|CONT_M_PM|CONT\(1) & (\cont_hundredths|CONT_M_PM|CONT\(0) $ (\cont_hundredths|CONT_M_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(3),
	datab => \cont_hundredths|CONT_M_PM|CONT\(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => \cont_hundredths|CONT_M_PM|CONT\(2),
	combout => \decoder_m_cent|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y18_N28
\decoder_l_cent|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux6~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(0) & ((\cont_hundredths|CONT_L_PM|CONT\(3)) # (\cont_hundredths|CONT_L_PM|CONT\(1) $ (\cont_hundredths|CONT_L_PM|CONT\(2))))) # (!\cont_hundredths|CONT_L_PM|CONT\(0) & 
-- ((\cont_hundredths|CONT_L_PM|CONT\(1)) # (\cont_hundredths|CONT_L_PM|CONT\(3) $ (\cont_hundredths|CONT_L_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(1),
	datab => \cont_hundredths|CONT_L_PM|CONT\(3),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \decoder_l_cent|Mux6~0_combout\);

-- Location: LCCOMB_X7_Y18_N6
\decoder_l_cent|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux5~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(1) & (!\cont_hundredths|CONT_L_PM|CONT\(3) & ((\cont_hundredths|CONT_L_PM|CONT\(0)) # (!\cont_hundredths|CONT_L_PM|CONT\(2))))) # (!\cont_hundredths|CONT_L_PM|CONT\(1) & 
-- (\cont_hundredths|CONT_L_PM|CONT\(0) & (\cont_hundredths|CONT_L_PM|CONT\(3) $ (!\cont_hundredths|CONT_L_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(1),
	datab => \cont_hundredths|CONT_L_PM|CONT\(3),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \decoder_l_cent|Mux5~0_combout\);

-- Location: LCCOMB_X7_Y18_N12
\decoder_l_cent|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux4~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(1) & (!\cont_hundredths|CONT_L_PM|CONT\(3) & (\cont_hundredths|CONT_L_PM|CONT\(0)))) # (!\cont_hundredths|CONT_L_PM|CONT\(1) & ((\cont_hundredths|CONT_L_PM|CONT\(2) & 
-- (!\cont_hundredths|CONT_L_PM|CONT\(3))) # (!\cont_hundredths|CONT_L_PM|CONT\(2) & ((\cont_hundredths|CONT_L_PM|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(1),
	datab => \cont_hundredths|CONT_L_PM|CONT\(3),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \decoder_l_cent|Mux4~0_combout\);

-- Location: LCCOMB_X7_Y18_N10
\decoder_l_cent|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux3~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(1) & ((\cont_hundredths|CONT_L_PM|CONT\(0) & ((\cont_hundredths|CONT_L_PM|CONT\(2)))) # (!\cont_hundredths|CONT_L_PM|CONT\(0) & (\cont_hundredths|CONT_L_PM|CONT\(3) & 
-- !\cont_hundredths|CONT_L_PM|CONT\(2))))) # (!\cont_hundredths|CONT_L_PM|CONT\(1) & (!\cont_hundredths|CONT_L_PM|CONT\(3) & (\cont_hundredths|CONT_L_PM|CONT\(0) $ (\cont_hundredths|CONT_L_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(1),
	datab => \cont_hundredths|CONT_L_PM|CONT\(3),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \decoder_l_cent|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y18_N16
\decoder_l_cent|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux2~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(3) & (\cont_hundredths|CONT_L_PM|CONT\(2) & ((\cont_hundredths|CONT_L_PM|CONT\(1)) # (!\cont_hundredths|CONT_L_PM|CONT\(0))))) # (!\cont_hundredths|CONT_L_PM|CONT\(3) & 
-- (\cont_hundredths|CONT_L_PM|CONT\(1) & (!\cont_hundredths|CONT_L_PM|CONT\(0) & !\cont_hundredths|CONT_L_PM|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(1),
	datab => \cont_hundredths|CONT_L_PM|CONT\(3),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \decoder_l_cent|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y18_N22
\decoder_l_cent|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux1~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(1) & ((\cont_hundredths|CONT_L_PM|CONT\(0) & (\cont_hundredths|CONT_L_PM|CONT\(3))) # (!\cont_hundredths|CONT_L_PM|CONT\(0) & ((\cont_hundredths|CONT_L_PM|CONT\(2)))))) # 
-- (!\cont_hundredths|CONT_L_PM|CONT\(1) & (\cont_hundredths|CONT_L_PM|CONT\(2) & (\cont_hundredths|CONT_L_PM|CONT\(3) $ (\cont_hundredths|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(1),
	datab => \cont_hundredths|CONT_L_PM|CONT\(3),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \decoder_l_cent|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y18_N4
\decoder_l_cent|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux0~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(3) & (\cont_hundredths|CONT_L_PM|CONT\(0) & (\cont_hundredths|CONT_L_PM|CONT\(1) $ (\cont_hundredths|CONT_L_PM|CONT\(2))))) # (!\cont_hundredths|CONT_L_PM|CONT\(3) & 
-- (!\cont_hundredths|CONT_L_PM|CONT\(1) & (\cont_hundredths|CONT_L_PM|CONT\(0) $ (\cont_hundredths|CONT_L_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(1),
	datab => \cont_hundredths|CONT_L_PM|CONT\(3),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \decoder_l_cent|Mux0~0_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M[0]~I\ : cycloneii_io
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
	datain => \decoder_m_sec|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M(0));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M[1]~I\ : cycloneii_io
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
	datain => \decoder_m_sec|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M(1));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M[2]~I\ : cycloneii_io
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
	datain => \decoder_m_sec|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M(2));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M[3]~I\ : cycloneii_io
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
	datain => \decoder_m_sec|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M(3));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M[4]~I\ : cycloneii_io
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
	datain => \decoder_m_sec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M(4));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M[5]~I\ : cycloneii_io
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
	datain => \decoder_m_sec|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M(5));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_M[6]~I\ : cycloneii_io
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
	datain => \decoder_m_sec|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_M(6));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L[0]~I\ : cycloneii_io
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
	datain => \decoder_l_sec|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L[1]~I\ : cycloneii_io
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
	datain => \decoder_l_sec|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L(1));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L[2]~I\ : cycloneii_io
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
	datain => \decoder_l_sec|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L[3]~I\ : cycloneii_io
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
	datain => \decoder_l_sec|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L[4]~I\ : cycloneii_io
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
	datain => \decoder_l_sec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L(4));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L[5]~I\ : cycloneii_io
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
	datain => \decoder_l_sec|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L(5));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_L[6]~I\ : cycloneii_io
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
	datain => \decoder_l_sec|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_L(6));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_M[0]~I\ : cycloneii_io
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
	datain => \decoder_m_cent|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_M(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_M[1]~I\ : cycloneii_io
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
	datain => \decoder_m_cent|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_M(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_M[2]~I\ : cycloneii_io
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
	datain => \decoder_m_cent|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_M(2));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_M[3]~I\ : cycloneii_io
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
	datain => \decoder_m_cent|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_M(3));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_M[4]~I\ : cycloneii_io
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
	datain => \decoder_m_cent|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_M(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_M[5]~I\ : cycloneii_io
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
	datain => \decoder_m_cent|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_M(5));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_M[6]~I\ : cycloneii_io
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
	datain => \decoder_m_cent|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_M(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_L[0]~I\ : cycloneii_io
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
	datain => \decoder_l_cent|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_L(0));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_L[1]~I\ : cycloneii_io
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
	datain => \decoder_l_cent|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_L(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_L[2]~I\ : cycloneii_io
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
	datain => \decoder_l_cent|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_L(2));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_L[3]~I\ : cycloneii_io
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
	datain => \decoder_l_cent|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_L(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_L[4]~I\ : cycloneii_io
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
	datain => \decoder_l_cent|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_L(4));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_L[5]~I\ : cycloneii_io
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
	datain => \decoder_l_cent|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_L(5));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_CENT_L[6]~I\ : cycloneii_io
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
	datain => \decoder_l_cent|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_CENT_L(6));
END structure;


