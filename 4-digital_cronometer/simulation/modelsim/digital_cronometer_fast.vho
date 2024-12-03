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

-- DATE "12/02/2024 20:57:06"

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
	PB_0 : IN std_logic;
	PB_1 : IN std_logic;
	SWITCH : IN std_logic;
	Q_M : OUT std_logic_vector(6 DOWNTO 0);
	Q_L : OUT std_logic_vector(6 DOWNTO 0);
	Q_CENT_M : OUT std_logic_vector(6 DOWNTO 0);
	Q_CENT_L : OUT std_logic_vector(6 DOWNTO 0)
	);
END digital_cronometer;

-- Design Ports Information
-- Q_M[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_M[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_L[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_M[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_CENT_L[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SWITCH	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PB_0	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PB_1	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_PB_0 : std_logic;
SIGNAL ww_PB_1 : std_logic;
SIGNAL ww_SWITCH : std_logic;
SIGNAL ww_Q_M : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Q_L : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Q_CENT_M : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Q_CENT_L : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock_divider|INVERTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SWITCH~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider|Add0~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~1\ : std_logic;
SIGNAL \clock_divider|Add0~2_combout\ : std_logic;
SIGNAL \clock_divider|Add0~3\ : std_logic;
SIGNAL \clock_divider|Add0~4_combout\ : std_logic;
SIGNAL \clock_divider|Add0~5\ : std_logic;
SIGNAL \clock_divider|Add0~6_combout\ : std_logic;
SIGNAL \clock_divider|Add0~7\ : std_logic;
SIGNAL \clock_divider|Add0~8_combout\ : std_logic;
SIGNAL \clock_divider|Add0~9\ : std_logic;
SIGNAL \clock_divider|Add0~10_combout\ : std_logic;
SIGNAL \clock_divider|Add0~11\ : std_logic;
SIGNAL \clock_divider|Add0~12_combout\ : std_logic;
SIGNAL \clock_divider|Add0~13\ : std_logic;
SIGNAL \clock_divider|Add0~14_combout\ : std_logic;
SIGNAL \clock_divider|Add0~15\ : std_logic;
SIGNAL \clock_divider|Add0~16_combout\ : std_logic;
SIGNAL \clock_divider|Add0~17\ : std_logic;
SIGNAL \clock_divider|Add0~18_combout\ : std_logic;
SIGNAL \clock_divider|Add0~19\ : std_logic;
SIGNAL \clock_divider|Add0~20_combout\ : std_logic;
SIGNAL \clock_divider|Add0~21\ : std_logic;
SIGNAL \clock_divider|Add0~22_combout\ : std_logic;
SIGNAL \clock_divider|Add0~23\ : std_logic;
SIGNAL \clock_divider|Add0~24_combout\ : std_logic;
SIGNAL \clock_divider|Add0~25\ : std_logic;
SIGNAL \clock_divider|Add0~26_combout\ : std_logic;
SIGNAL \clock_divider|Add0~27\ : std_logic;
SIGNAL \clock_divider|Add0~28_combout\ : std_logic;
SIGNAL \clock_divider|Add0~29\ : std_logic;
SIGNAL \clock_divider|Add0~30_combout\ : std_logic;
SIGNAL \clock_divider|Add0~31\ : std_logic;
SIGNAL \clock_divider|Add0~32_combout\ : std_logic;
SIGNAL \clock_divider|Add0~33\ : std_logic;
SIGNAL \clock_divider|Add0~34_combout\ : std_logic;
SIGNAL \clock_divider|Add0~35\ : std_logic;
SIGNAL \clock_divider|Add0~36_combout\ : std_logic;
SIGNAL \clock_divider|Add0~37\ : std_logic;
SIGNAL \clock_divider|Add0~38_combout\ : std_logic;
SIGNAL \clock_divider|Add0~39\ : std_logic;
SIGNAL \clock_divider|Add0~40_combout\ : std_logic;
SIGNAL \clock_divider|Add0~41\ : std_logic;
SIGNAL \clock_divider|Add0~42_combout\ : std_logic;
SIGNAL \clock_divider|Add0~43\ : std_logic;
SIGNAL \clock_divider|Add0~44_combout\ : std_logic;
SIGNAL \clock_divider|Add0~45\ : std_logic;
SIGNAL \clock_divider|Add0~46_combout\ : std_logic;
SIGNAL \clock_divider|Add0~47\ : std_logic;
SIGNAL \clock_divider|Add0~48_combout\ : std_logic;
SIGNAL \clock_divider|Add0~49\ : std_logic;
SIGNAL \clock_divider|Add0~50_combout\ : std_logic;
SIGNAL \clock_divider|Add0~51\ : std_logic;
SIGNAL \clock_divider|Add0~52_combout\ : std_logic;
SIGNAL \clock_divider|Add0~53\ : std_logic;
SIGNAL \clock_divider|Add0~54_combout\ : std_logic;
SIGNAL \clock_divider|Add0~55\ : std_logic;
SIGNAL \clock_divider|Add0~56_combout\ : std_logic;
SIGNAL \clock_divider|Add0~57\ : std_logic;
SIGNAL \clock_divider|Add0~58_combout\ : std_logic;
SIGNAL \clock_divider|Add0~59\ : std_logic;
SIGNAL \clock_divider|Add0~60_combout\ : std_logic;
SIGNAL \clock_divider|Add0~61\ : std_logic;
SIGNAL \clock_divider|Add0~62_combout\ : std_logic;
SIGNAL \clock_divider|INVERTER~regout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|Add0~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|Add0~1_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|Add0~0_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~7_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~8_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~9_combout\ : std_logic;
SIGNAL \clock_divider|INVERTER~0_combout\ : std_logic;
SIGNAL \clock_divider|CONT~0_combout\ : std_logic;
SIGNAL \clock_divider|CONT~1_combout\ : std_logic;
SIGNAL \clock_divider|CONT~2_combout\ : std_logic;
SIGNAL \clock_divider|CONT~3_combout\ : std_logic;
SIGNAL \clock_divider|CONT~4_combout\ : std_logic;
SIGNAL \clock_divider|CONT~5_combout\ : std_logic;
SIGNAL \clock_divider|CONT~6_combout\ : std_logic;
SIGNAL \clock_divider|CONT~7_combout\ : std_logic;
SIGNAL \PB_0~combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \clock_divider|INVERTER~clkctrl_outclk\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \PB_1~combout\ : std_logic;
SIGNAL \STATE~1_combout\ : std_logic;
SIGNAL \SWITCH~combout\ : std_logic;
SIGNAL \SWITCH~clkctrl_outclk\ : std_logic;
SIGNAL \STATE[1]~0_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT~4_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[2]~3_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[0]~0_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[1]~2_combout\ : std_logic;
SIGNAL \cont_hundredths|en_m~0_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT~8_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT~6_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|Add0~0_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_M_PM|CONT~7_combout\ : std_logic;
SIGNAL \EN_SEC~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[3]~7_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT[3]~5_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|Add0~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~7_combout\ : std_logic;
SIGNAL \cont_seconds|ld~1_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[3]~3_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[1]~4_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[2]~5_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_L_PM|CONT[0]~2_combout\ : std_logic;
SIGNAL \cont_seconds|ld~0_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~8_combout\ : std_logic;
SIGNAL \cont_seconds|CONT_M_PM|CONT~6_combout\ : std_logic;
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
SIGNAL \decoder_m_cent|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|Mux0~0_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|Add0~1_combout\ : std_logic;
SIGNAL \cont_hundredths|CONT_L_PM|CONT[3]~4_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_l_cent|Mux0~0_combout\ : std_logic;
SIGNAL STATE : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_divider|CONT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cont_seconds|CONT_M_PM|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_seconds|CONT_L_PM|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_hundredths|CONT_L_PM|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_hundredths|CONT_M_PM|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_l_cent|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \decoder_m_cent|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \decoder_l_sec|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \decoder_m_sec|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_PB_0 <= PB_0;
ww_PB_1 <= PB_1;
ww_SWITCH <= SWITCH;
Q_M <= ww_Q_M;
Q_L <= ww_Q_L;
Q_CENT_M <= ww_Q_CENT_M;
Q_CENT_L <= ww_Q_CENT_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_divider|INVERTER~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_divider|INVERTER~regout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\SWITCH~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SWITCH~combout\);
\decoder_l_cent|ALT_INV_Mux6~0_combout\ <= NOT \decoder_l_cent|Mux6~0_combout\;
\decoder_m_cent|ALT_INV_Mux6~0_combout\ <= NOT \decoder_m_cent|Mux6~0_combout\;
\decoder_l_sec|ALT_INV_Mux6~0_combout\ <= NOT \decoder_l_sec|Mux6~0_combout\;
\decoder_m_sec|ALT_INV_Mux6~0_combout\ <= NOT \decoder_m_sec|Mux6~0_combout\;

-- Location: LCCOMB_X63_Y18_N0
\clock_divider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~0_combout\ = \clock_divider|CONT\(0) $ (GND)
-- \clock_divider|Add0~1\ = CARRY(!\clock_divider|CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(0),
	datad => VCC,
	combout => \clock_divider|Add0~0_combout\,
	cout => \clock_divider|Add0~1\);

-- Location: LCCOMB_X63_Y18_N2
\clock_divider|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~2_combout\ = (\clock_divider|CONT\(1) & (!\clock_divider|Add0~1\)) # (!\clock_divider|CONT\(1) & ((\clock_divider|Add0~1\) # (GND)))
-- \clock_divider|Add0~3\ = CARRY((!\clock_divider|Add0~1\) # (!\clock_divider|CONT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(1),
	datad => VCC,
	cin => \clock_divider|Add0~1\,
	combout => \clock_divider|Add0~2_combout\,
	cout => \clock_divider|Add0~3\);

-- Location: LCCOMB_X63_Y18_N4
\clock_divider|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~4_combout\ = (\clock_divider|CONT\(2) & (\clock_divider|Add0~3\ $ (GND))) # (!\clock_divider|CONT\(2) & (!\clock_divider|Add0~3\ & VCC))
-- \clock_divider|Add0~5\ = CARRY((\clock_divider|CONT\(2) & !\clock_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(2),
	datad => VCC,
	cin => \clock_divider|Add0~3\,
	combout => \clock_divider|Add0~4_combout\,
	cout => \clock_divider|Add0~5\);

-- Location: LCCOMB_X63_Y18_N6
\clock_divider|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~6_combout\ = (\clock_divider|CONT\(3) & (!\clock_divider|Add0~5\)) # (!\clock_divider|CONT\(3) & ((\clock_divider|Add0~5\) # (GND)))
-- \clock_divider|Add0~7\ = CARRY((!\clock_divider|Add0~5\) # (!\clock_divider|CONT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(3),
	datad => VCC,
	cin => \clock_divider|Add0~5\,
	combout => \clock_divider|Add0~6_combout\,
	cout => \clock_divider|Add0~7\);

-- Location: LCCOMB_X63_Y18_N8
\clock_divider|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~8_combout\ = (\clock_divider|CONT\(4) & (\clock_divider|Add0~7\ $ (GND))) # (!\clock_divider|CONT\(4) & (!\clock_divider|Add0~7\ & VCC))
-- \clock_divider|Add0~9\ = CARRY((\clock_divider|CONT\(4) & !\clock_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(4),
	datad => VCC,
	cin => \clock_divider|Add0~7\,
	combout => \clock_divider|Add0~8_combout\,
	cout => \clock_divider|Add0~9\);

-- Location: LCCOMB_X63_Y18_N10
\clock_divider|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~10_combout\ = (\clock_divider|CONT\(5) & (!\clock_divider|Add0~9\)) # (!\clock_divider|CONT\(5) & ((\clock_divider|Add0~9\) # (GND)))
-- \clock_divider|Add0~11\ = CARRY((!\clock_divider|Add0~9\) # (!\clock_divider|CONT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(5),
	datad => VCC,
	cin => \clock_divider|Add0~9\,
	combout => \clock_divider|Add0~10_combout\,
	cout => \clock_divider|Add0~11\);

-- Location: LCCOMB_X63_Y18_N12
\clock_divider|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~12_combout\ = (\clock_divider|CONT\(6) & (\clock_divider|Add0~11\ $ (GND))) # (!\clock_divider|CONT\(6) & (!\clock_divider|Add0~11\ & VCC))
-- \clock_divider|Add0~13\ = CARRY((\clock_divider|CONT\(6) & !\clock_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(6),
	datad => VCC,
	cin => \clock_divider|Add0~11\,
	combout => \clock_divider|Add0~12_combout\,
	cout => \clock_divider|Add0~13\);

-- Location: LCCOMB_X63_Y18_N14
\clock_divider|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~14_combout\ = (\clock_divider|CONT\(7) & (!\clock_divider|Add0~13\)) # (!\clock_divider|CONT\(7) & ((\clock_divider|Add0~13\) # (GND)))
-- \clock_divider|Add0~15\ = CARRY((!\clock_divider|Add0~13\) # (!\clock_divider|CONT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(7),
	datad => VCC,
	cin => \clock_divider|Add0~13\,
	combout => \clock_divider|Add0~14_combout\,
	cout => \clock_divider|Add0~15\);

-- Location: LCCOMB_X63_Y18_N16
\clock_divider|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~16_combout\ = (\clock_divider|CONT\(8) & (\clock_divider|Add0~15\ $ (GND))) # (!\clock_divider|CONT\(8) & (!\clock_divider|Add0~15\ & VCC))
-- \clock_divider|Add0~17\ = CARRY((\clock_divider|CONT\(8) & !\clock_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(8),
	datad => VCC,
	cin => \clock_divider|Add0~15\,
	combout => \clock_divider|Add0~16_combout\,
	cout => \clock_divider|Add0~17\);

-- Location: LCCOMB_X63_Y18_N18
\clock_divider|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~18_combout\ = (\clock_divider|CONT\(9) & (!\clock_divider|Add0~17\)) # (!\clock_divider|CONT\(9) & ((\clock_divider|Add0~17\) # (GND)))
-- \clock_divider|Add0~19\ = CARRY((!\clock_divider|Add0~17\) # (!\clock_divider|CONT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(9),
	datad => VCC,
	cin => \clock_divider|Add0~17\,
	combout => \clock_divider|Add0~18_combout\,
	cout => \clock_divider|Add0~19\);

-- Location: LCCOMB_X63_Y18_N20
\clock_divider|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~20_combout\ = (\clock_divider|CONT\(10) & (\clock_divider|Add0~19\ $ (GND))) # (!\clock_divider|CONT\(10) & (!\clock_divider|Add0~19\ & VCC))
-- \clock_divider|Add0~21\ = CARRY((\clock_divider|CONT\(10) & !\clock_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(10),
	datad => VCC,
	cin => \clock_divider|Add0~19\,
	combout => \clock_divider|Add0~20_combout\,
	cout => \clock_divider|Add0~21\);

-- Location: LCCOMB_X63_Y18_N22
\clock_divider|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~22_combout\ = (\clock_divider|CONT\(11) & (!\clock_divider|Add0~21\)) # (!\clock_divider|CONT\(11) & ((\clock_divider|Add0~21\) # (GND)))
-- \clock_divider|Add0~23\ = CARRY((!\clock_divider|Add0~21\) # (!\clock_divider|CONT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(11),
	datad => VCC,
	cin => \clock_divider|Add0~21\,
	combout => \clock_divider|Add0~22_combout\,
	cout => \clock_divider|Add0~23\);

-- Location: LCCOMB_X63_Y18_N24
\clock_divider|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~24_combout\ = (\clock_divider|CONT\(12) & (\clock_divider|Add0~23\ $ (GND))) # (!\clock_divider|CONT\(12) & (!\clock_divider|Add0~23\ & VCC))
-- \clock_divider|Add0~25\ = CARRY((\clock_divider|CONT\(12) & !\clock_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(12),
	datad => VCC,
	cin => \clock_divider|Add0~23\,
	combout => \clock_divider|Add0~24_combout\,
	cout => \clock_divider|Add0~25\);

-- Location: LCCOMB_X63_Y18_N26
\clock_divider|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~26_combout\ = (\clock_divider|CONT\(13) & (!\clock_divider|Add0~25\)) # (!\clock_divider|CONT\(13) & ((\clock_divider|Add0~25\) # (GND)))
-- \clock_divider|Add0~27\ = CARRY((!\clock_divider|Add0~25\) # (!\clock_divider|CONT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(13),
	datad => VCC,
	cin => \clock_divider|Add0~25\,
	combout => \clock_divider|Add0~26_combout\,
	cout => \clock_divider|Add0~27\);

-- Location: LCCOMB_X63_Y18_N28
\clock_divider|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~28_combout\ = (\clock_divider|CONT\(14) & (\clock_divider|Add0~27\ $ (GND))) # (!\clock_divider|CONT\(14) & (!\clock_divider|Add0~27\ & VCC))
-- \clock_divider|Add0~29\ = CARRY((\clock_divider|CONT\(14) & !\clock_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(14),
	datad => VCC,
	cin => \clock_divider|Add0~27\,
	combout => \clock_divider|Add0~28_combout\,
	cout => \clock_divider|Add0~29\);

-- Location: LCCOMB_X63_Y18_N30
\clock_divider|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~30_combout\ = (\clock_divider|CONT\(15) & (!\clock_divider|Add0~29\)) # (!\clock_divider|CONT\(15) & ((\clock_divider|Add0~29\) # (GND)))
-- \clock_divider|Add0~31\ = CARRY((!\clock_divider|Add0~29\) # (!\clock_divider|CONT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(15),
	datad => VCC,
	cin => \clock_divider|Add0~29\,
	combout => \clock_divider|Add0~30_combout\,
	cout => \clock_divider|Add0~31\);

-- Location: LCCOMB_X63_Y17_N0
\clock_divider|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~32_combout\ = (\clock_divider|CONT\(16) & (\clock_divider|Add0~31\ $ (GND))) # (!\clock_divider|CONT\(16) & (!\clock_divider|Add0~31\ & VCC))
-- \clock_divider|Add0~33\ = CARRY((\clock_divider|CONT\(16) & !\clock_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(16),
	datad => VCC,
	cin => \clock_divider|Add0~31\,
	combout => \clock_divider|Add0~32_combout\,
	cout => \clock_divider|Add0~33\);

-- Location: LCCOMB_X63_Y17_N2
\clock_divider|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~34_combout\ = (\clock_divider|CONT\(17) & (!\clock_divider|Add0~33\)) # (!\clock_divider|CONT\(17) & ((\clock_divider|Add0~33\) # (GND)))
-- \clock_divider|Add0~35\ = CARRY((!\clock_divider|Add0~33\) # (!\clock_divider|CONT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(17),
	datad => VCC,
	cin => \clock_divider|Add0~33\,
	combout => \clock_divider|Add0~34_combout\,
	cout => \clock_divider|Add0~35\);

-- Location: LCCOMB_X63_Y17_N4
\clock_divider|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~36_combout\ = (\clock_divider|CONT\(18) & (\clock_divider|Add0~35\ $ (GND))) # (!\clock_divider|CONT\(18) & (!\clock_divider|Add0~35\ & VCC))
-- \clock_divider|Add0~37\ = CARRY((\clock_divider|CONT\(18) & !\clock_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(18),
	datad => VCC,
	cin => \clock_divider|Add0~35\,
	combout => \clock_divider|Add0~36_combout\,
	cout => \clock_divider|Add0~37\);

-- Location: LCCOMB_X63_Y17_N6
\clock_divider|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~38_combout\ = (\clock_divider|CONT\(19) & (!\clock_divider|Add0~37\)) # (!\clock_divider|CONT\(19) & ((\clock_divider|Add0~37\) # (GND)))
-- \clock_divider|Add0~39\ = CARRY((!\clock_divider|Add0~37\) # (!\clock_divider|CONT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(19),
	datad => VCC,
	cin => \clock_divider|Add0~37\,
	combout => \clock_divider|Add0~38_combout\,
	cout => \clock_divider|Add0~39\);

-- Location: LCCOMB_X63_Y17_N8
\clock_divider|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~40_combout\ = (\clock_divider|CONT\(20) & (\clock_divider|Add0~39\ $ (GND))) # (!\clock_divider|CONT\(20) & (!\clock_divider|Add0~39\ & VCC))
-- \clock_divider|Add0~41\ = CARRY((\clock_divider|CONT\(20) & !\clock_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(20),
	datad => VCC,
	cin => \clock_divider|Add0~39\,
	combout => \clock_divider|Add0~40_combout\,
	cout => \clock_divider|Add0~41\);

-- Location: LCCOMB_X63_Y17_N10
\clock_divider|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~42_combout\ = (\clock_divider|CONT\(21) & (!\clock_divider|Add0~41\)) # (!\clock_divider|CONT\(21) & ((\clock_divider|Add0~41\) # (GND)))
-- \clock_divider|Add0~43\ = CARRY((!\clock_divider|Add0~41\) # (!\clock_divider|CONT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(21),
	datad => VCC,
	cin => \clock_divider|Add0~41\,
	combout => \clock_divider|Add0~42_combout\,
	cout => \clock_divider|Add0~43\);

-- Location: LCCOMB_X63_Y17_N12
\clock_divider|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~44_combout\ = (\clock_divider|CONT\(22) & (\clock_divider|Add0~43\ $ (GND))) # (!\clock_divider|CONT\(22) & (!\clock_divider|Add0~43\ & VCC))
-- \clock_divider|Add0~45\ = CARRY((\clock_divider|CONT\(22) & !\clock_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(22),
	datad => VCC,
	cin => \clock_divider|Add0~43\,
	combout => \clock_divider|Add0~44_combout\,
	cout => \clock_divider|Add0~45\);

-- Location: LCCOMB_X63_Y17_N14
\clock_divider|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~46_combout\ = (\clock_divider|CONT\(23) & (!\clock_divider|Add0~45\)) # (!\clock_divider|CONT\(23) & ((\clock_divider|Add0~45\) # (GND)))
-- \clock_divider|Add0~47\ = CARRY((!\clock_divider|Add0~45\) # (!\clock_divider|CONT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(23),
	datad => VCC,
	cin => \clock_divider|Add0~45\,
	combout => \clock_divider|Add0~46_combout\,
	cout => \clock_divider|Add0~47\);

-- Location: LCCOMB_X63_Y17_N16
\clock_divider|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~48_combout\ = (\clock_divider|CONT\(24) & (\clock_divider|Add0~47\ $ (GND))) # (!\clock_divider|CONT\(24) & (!\clock_divider|Add0~47\ & VCC))
-- \clock_divider|Add0~49\ = CARRY((\clock_divider|CONT\(24) & !\clock_divider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(24),
	datad => VCC,
	cin => \clock_divider|Add0~47\,
	combout => \clock_divider|Add0~48_combout\,
	cout => \clock_divider|Add0~49\);

-- Location: LCCOMB_X63_Y17_N18
\clock_divider|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~50_combout\ = (\clock_divider|CONT\(25) & (!\clock_divider|Add0~49\)) # (!\clock_divider|CONT\(25) & ((\clock_divider|Add0~49\) # (GND)))
-- \clock_divider|Add0~51\ = CARRY((!\clock_divider|Add0~49\) # (!\clock_divider|CONT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(25),
	datad => VCC,
	cin => \clock_divider|Add0~49\,
	combout => \clock_divider|Add0~50_combout\,
	cout => \clock_divider|Add0~51\);

-- Location: LCCOMB_X63_Y17_N20
\clock_divider|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~52_combout\ = (\clock_divider|CONT\(26) & (\clock_divider|Add0~51\ $ (GND))) # (!\clock_divider|CONT\(26) & (!\clock_divider|Add0~51\ & VCC))
-- \clock_divider|Add0~53\ = CARRY((\clock_divider|CONT\(26) & !\clock_divider|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(26),
	datad => VCC,
	cin => \clock_divider|Add0~51\,
	combout => \clock_divider|Add0~52_combout\,
	cout => \clock_divider|Add0~53\);

-- Location: LCCOMB_X63_Y17_N22
\clock_divider|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~54_combout\ = (\clock_divider|CONT\(27) & (!\clock_divider|Add0~53\)) # (!\clock_divider|CONT\(27) & ((\clock_divider|Add0~53\) # (GND)))
-- \clock_divider|Add0~55\ = CARRY((!\clock_divider|Add0~53\) # (!\clock_divider|CONT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(27),
	datad => VCC,
	cin => \clock_divider|Add0~53\,
	combout => \clock_divider|Add0~54_combout\,
	cout => \clock_divider|Add0~55\);

-- Location: LCCOMB_X63_Y17_N24
\clock_divider|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~56_combout\ = (\clock_divider|CONT\(28) & (\clock_divider|Add0~55\ $ (GND))) # (!\clock_divider|CONT\(28) & (!\clock_divider|Add0~55\ & VCC))
-- \clock_divider|Add0~57\ = CARRY((\clock_divider|CONT\(28) & !\clock_divider|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(28),
	datad => VCC,
	cin => \clock_divider|Add0~55\,
	combout => \clock_divider|Add0~56_combout\,
	cout => \clock_divider|Add0~57\);

-- Location: LCCOMB_X63_Y17_N26
\clock_divider|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~58_combout\ = (\clock_divider|CONT\(29) & (!\clock_divider|Add0~57\)) # (!\clock_divider|CONT\(29) & ((\clock_divider|Add0~57\) # (GND)))
-- \clock_divider|Add0~59\ = CARRY((!\clock_divider|Add0~57\) # (!\clock_divider|CONT\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(29),
	datad => VCC,
	cin => \clock_divider|Add0~57\,
	combout => \clock_divider|Add0~58_combout\,
	cout => \clock_divider|Add0~59\);

-- Location: LCCOMB_X63_Y17_N28
\clock_divider|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~60_combout\ = (\clock_divider|CONT\(30) & (\clock_divider|Add0~59\ $ (GND))) # (!\clock_divider|CONT\(30) & (!\clock_divider|Add0~59\ & VCC))
-- \clock_divider|Add0~61\ = CARRY((\clock_divider|CONT\(30) & !\clock_divider|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|CONT\(30),
	datad => VCC,
	cin => \clock_divider|Add0~59\,
	combout => \clock_divider|Add0~60_combout\,
	cout => \clock_divider|Add0~61\);

-- Location: LCCOMB_X63_Y17_N30
\clock_divider|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~62_combout\ = \clock_divider|Add0~61\ $ (\clock_divider|CONT\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|CONT\(31),
	cin => \clock_divider|Add0~61\,
	combout => \clock_divider|Add0~62_combout\);

-- Location: LCFF_X64_Y19_N15
\clock_divider|INVERTER\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|INVERTER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|INVERTER~regout\);

-- Location: LCCOMB_X29_Y5_N8
\cont_seconds|CONT_L_PM|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|Add0~0_combout\ = \cont_seconds|CONT_L_PM|CONT\(2) $ (((\cont_seconds|CONT_L_PM|CONT\(1) & \cont_seconds|CONT_L_PM|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(1),
	datab => \cont_seconds|CONT_L_PM|CONT\(2),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \cont_seconds|CONT_L_PM|Add0~0_combout\);

-- Location: LCCOMB_X29_Y5_N18
\cont_seconds|CONT_L_PM|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|Add0~1_combout\ = \cont_seconds|CONT_L_PM|CONT\(3) $ (((\cont_seconds|CONT_L_PM|CONT\(1) & (\cont_seconds|CONT_L_PM|CONT\(2) & \cont_seconds|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(1),
	datab => \cont_seconds|CONT_L_PM|CONT\(2),
	datac => \cont_seconds|CONT_L_PM|CONT\(0),
	datad => \cont_seconds|CONT_L_PM|CONT\(3),
	combout => \cont_seconds|CONT_L_PM|Add0~1_combout\);

-- Location: LCCOMB_X27_Y5_N12
\cont_hundredths|CONT_L_PM|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|Add0~0_combout\ = \cont_hundredths|CONT_L_PM|CONT\(2) $ (((\cont_hundredths|CONT_L_PM|CONT\(1) & \cont_hundredths|CONT_L_PM|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(1),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(2),
	combout => \cont_hundredths|CONT_L_PM|Add0~0_combout\);

-- Location: LCFF_X63_Y18_N31
\clock_divider|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \clock_divider|CONT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(0));

-- Location: LCFF_X63_Y18_N7
\clock_divider|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(3));

-- Location: LCFF_X63_Y18_N5
\clock_divider|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(2));

-- Location: LCFF_X63_Y18_N3
\clock_divider|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(1));

-- Location: LCCOMB_X64_Y18_N28
\clock_divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~0_combout\ = (!\clock_divider|CONT\(1) & (!\clock_divider|CONT\(3) & (!\clock_divider|CONT\(2) & \clock_divider|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(1),
	datab => \clock_divider|CONT\(3),
	datac => \clock_divider|CONT\(2),
	datad => \clock_divider|CONT\(0),
	combout => \clock_divider|Equal0~0_combout\);

-- Location: LCFF_X64_Y18_N31
\clock_divider|CONT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|CONT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(4));

-- Location: LCFF_X64_Y18_N9
\clock_divider|CONT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|CONT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(7));

-- Location: LCFF_X63_Y18_N11
\clock_divider|CONT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(5));

-- Location: LCFF_X63_Y18_N13
\clock_divider|CONT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(6));

-- Location: LCCOMB_X64_Y18_N10
\clock_divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~1_combout\ = (!\clock_divider|CONT\(5) & (\clock_divider|CONT\(7) & (!\clock_divider|CONT\(6) & \clock_divider|CONT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(5),
	datab => \clock_divider|CONT\(7),
	datac => \clock_divider|CONT\(6),
	datad => \clock_divider|CONT\(4),
	combout => \clock_divider|Equal0~1_combout\);

-- Location: LCFF_X63_Y18_N17
\clock_divider|CONT[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(8));

-- Location: LCFF_X63_Y18_N19
\clock_divider|CONT[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(9));

-- Location: LCFF_X63_Y18_N21
\clock_divider|CONT[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(10));

-- Location: LCFF_X63_Y18_N23
\clock_divider|CONT[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(11));

-- Location: LCCOMB_X64_Y18_N0
\clock_divider|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~2_combout\ = (!\clock_divider|CONT\(10) & (!\clock_divider|CONT\(11) & (!\clock_divider|CONT\(8) & !\clock_divider|CONT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(10),
	datab => \clock_divider|CONT\(11),
	datac => \clock_divider|CONT\(8),
	datad => \clock_divider|CONT\(9),
	combout => \clock_divider|Equal0~2_combout\);

-- Location: LCFF_X64_Y18_N15
\clock_divider|CONT[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|CONT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(12));

-- Location: LCFF_X64_Y18_N13
\clock_divider|CONT[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|CONT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(14));

-- Location: LCFF_X64_Y18_N3
\clock_divider|CONT[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|CONT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(15));

-- Location: LCFF_X63_Y18_N27
\clock_divider|CONT[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(13));

-- Location: LCCOMB_X64_Y18_N24
\clock_divider|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~3_combout\ = (\clock_divider|CONT\(14) & (\clock_divider|CONT\(15) & (\clock_divider|CONT\(12) & !\clock_divider|CONT\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(14),
	datab => \clock_divider|CONT\(15),
	datac => \clock_divider|CONT\(12),
	datad => \clock_divider|CONT\(13),
	combout => \clock_divider|Equal0~3_combout\);

-- Location: LCCOMB_X64_Y18_N22
\clock_divider|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~4_combout\ = (\clock_divider|Equal0~1_combout\ & (\clock_divider|Equal0~2_combout\ & (\clock_divider|Equal0~3_combout\ & \clock_divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|Equal0~1_combout\,
	datab => \clock_divider|Equal0~2_combout\,
	datac => \clock_divider|Equal0~3_combout\,
	datad => \clock_divider|Equal0~0_combout\,
	combout => \clock_divider|Equal0~4_combout\);

-- Location: LCFF_X64_Y17_N25
\clock_divider|CONT[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|CONT~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(16));

-- Location: LCFF_X64_Y17_N31
\clock_divider|CONT[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|CONT~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(17));

-- Location: LCFF_X63_Y17_N5
\clock_divider|CONT[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(18));

-- Location: LCFF_X63_Y17_N7
\clock_divider|CONT[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(19));

-- Location: LCCOMB_X64_Y17_N20
\clock_divider|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~5_combout\ = (\clock_divider|CONT\(16) & (!\clock_divider|CONT\(18) & (!\clock_divider|CONT\(19) & \clock_divider|CONT\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(16),
	datab => \clock_divider|CONT\(18),
	datac => \clock_divider|CONT\(19),
	datad => \clock_divider|CONT\(17),
	combout => \clock_divider|Equal0~5_combout\);

-- Location: LCFF_X63_Y17_N9
\clock_divider|CONT[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(20));

-- Location: LCFF_X63_Y17_N11
\clock_divider|CONT[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(21));

-- Location: LCFF_X63_Y17_N13
\clock_divider|CONT[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(22));

-- Location: LCFF_X63_Y17_N15
\clock_divider|CONT[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(23));

-- Location: LCCOMB_X64_Y17_N18
\clock_divider|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~6_combout\ = (!\clock_divider|CONT\(21) & (!\clock_divider|CONT\(22) & (!\clock_divider|CONT\(23) & !\clock_divider|CONT\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(21),
	datab => \clock_divider|CONT\(22),
	datac => \clock_divider|CONT\(23),
	datad => \clock_divider|CONT\(20),
	combout => \clock_divider|Equal0~6_combout\);

-- Location: LCFF_X63_Y17_N17
\clock_divider|CONT[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(24));

-- Location: LCFF_X63_Y17_N19
\clock_divider|CONT[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(25));

-- Location: LCFF_X63_Y17_N21
\clock_divider|CONT[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(26));

-- Location: LCFF_X63_Y17_N23
\clock_divider|CONT[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(27));

-- Location: LCCOMB_X64_Y17_N12
\clock_divider|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~7_combout\ = (!\clock_divider|CONT\(26) & (!\clock_divider|CONT\(25) & (!\clock_divider|CONT\(24) & !\clock_divider|CONT\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(26),
	datab => \clock_divider|CONT\(25),
	datac => \clock_divider|CONT\(24),
	datad => \clock_divider|CONT\(27),
	combout => \clock_divider|Equal0~7_combout\);

-- Location: LCFF_X63_Y17_N25
\clock_divider|CONT[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(28));

-- Location: LCFF_X63_Y17_N27
\clock_divider|CONT[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(29));

-- Location: LCFF_X63_Y17_N29
\clock_divider|CONT[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(30));

-- Location: LCFF_X63_Y17_N31
\clock_divider|CONT[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider|CONT\(31));

-- Location: LCCOMB_X64_Y17_N10
\clock_divider|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~8_combout\ = (!\clock_divider|CONT\(31) & (!\clock_divider|CONT\(29) & (!\clock_divider|CONT\(28) & !\clock_divider|CONT\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|CONT\(31),
	datab => \clock_divider|CONT\(29),
	datac => \clock_divider|CONT\(28),
	datad => \clock_divider|CONT\(30),
	combout => \clock_divider|Equal0~8_combout\);

-- Location: LCCOMB_X64_Y17_N0
\clock_divider|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~9_combout\ = (\clock_divider|Equal0~8_combout\ & (\clock_divider|Equal0~6_combout\ & (\clock_divider|Equal0~5_combout\ & \clock_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|Equal0~8_combout\,
	datab => \clock_divider|Equal0~6_combout\,
	datac => \clock_divider|Equal0~5_combout\,
	datad => \clock_divider|Equal0~7_combout\,
	combout => \clock_divider|Equal0~9_combout\);

-- Location: LCCOMB_X64_Y19_N14
\clock_divider|INVERTER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|INVERTER~0_combout\ = \clock_divider|INVERTER~regout\ $ (((\clock_divider|Equal0~9_combout\ & \clock_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|Equal0~9_combout\,
	datac => \clock_divider|INVERTER~regout\,
	datad => \clock_divider|Equal0~4_combout\,
	combout => \clock_divider|INVERTER~0_combout\);

-- Location: LCCOMB_X64_Y18_N16
\clock_divider|CONT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|CONT~0_combout\ = ((\clock_divider|Equal0~4_combout\ & \clock_divider|Equal0~9_combout\)) # (!\clock_divider|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|Equal0~4_combout\,
	datac => \clock_divider|Add0~0_combout\,
	datad => \clock_divider|Equal0~9_combout\,
	combout => \clock_divider|CONT~0_combout\);

-- Location: LCCOMB_X64_Y18_N30
\clock_divider|CONT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|CONT~1_combout\ = (\clock_divider|Add0~8_combout\ & ((!\clock_divider|Equal0~9_combout\) # (!\clock_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|Add0~8_combout\,
	datab => \clock_divider|Equal0~4_combout\,
	datad => \clock_divider|Equal0~9_combout\,
	combout => \clock_divider|CONT~1_combout\);

-- Location: LCCOMB_X64_Y18_N8
\clock_divider|CONT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|CONT~2_combout\ = (\clock_divider|Add0~14_combout\ & ((!\clock_divider|Equal0~9_combout\) # (!\clock_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|Add0~14_combout\,
	datab => \clock_divider|Equal0~4_combout\,
	datad => \clock_divider|Equal0~9_combout\,
	combout => \clock_divider|CONT~2_combout\);

-- Location: LCCOMB_X64_Y18_N14
\clock_divider|CONT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|CONT~3_combout\ = (\clock_divider|Add0~24_combout\ & ((!\clock_divider|Equal0~4_combout\) # (!\clock_divider|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|Equal0~9_combout\,
	datac => \clock_divider|Equal0~4_combout\,
	datad => \clock_divider|Add0~24_combout\,
	combout => \clock_divider|CONT~3_combout\);

-- Location: LCCOMB_X64_Y18_N12
\clock_divider|CONT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|CONT~4_combout\ = (\clock_divider|Add0~28_combout\ & ((!\clock_divider|Equal0~4_combout\) # (!\clock_divider|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|Equal0~9_combout\,
	datac => \clock_divider|Equal0~4_combout\,
	datad => \clock_divider|Add0~28_combout\,
	combout => \clock_divider|CONT~4_combout\);

-- Location: LCCOMB_X64_Y18_N2
\clock_divider|CONT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|CONT~5_combout\ = (\clock_divider|Add0~30_combout\ & ((!\clock_divider|Equal0~4_combout\) # (!\clock_divider|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|Equal0~9_combout\,
	datac => \clock_divider|Add0~30_combout\,
	datad => \clock_divider|Equal0~4_combout\,
	combout => \clock_divider|CONT~5_combout\);

-- Location: LCCOMB_X64_Y17_N24
\clock_divider|CONT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|CONT~6_combout\ = (\clock_divider|Add0~32_combout\ & ((!\clock_divider|Equal0~4_combout\) # (!\clock_divider|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|Equal0~9_combout\,
	datac => \clock_divider|Add0~32_combout\,
	datad => \clock_divider|Equal0~4_combout\,
	combout => \clock_divider|CONT~6_combout\);

-- Location: LCCOMB_X64_Y17_N30
\clock_divider|CONT~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider|CONT~7_combout\ = (\clock_divider|Add0~34_combout\ & ((!\clock_divider|Equal0~9_combout\) # (!\clock_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|Equal0~4_combout\,
	datab => \clock_divider|Equal0~9_combout\,
	datad => \clock_divider|Add0~34_combout\,
	combout => \clock_divider|CONT~7_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PB_0~I\ : cycloneii_io
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
	padio => ww_PB_0,
	combout => \PB_0~combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G7
\clock_divider|INVERTER~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_divider|INVERTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_divider|INVERTER~clkctrl_outclk\);

-- Location: CLKCTRL_G2
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

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PB_1~I\ : cycloneii_io
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
	padio => ww_PB_1,
	combout => \PB_1~combout\);

-- Location: LCCOMB_X28_Y5_N8
\STATE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATE~1_combout\ = (\PB_0~combout\ & ((STATE(0)) # ((!\PB_1~combout\ & STATE(1))))) # (!\PB_0~combout\ & (((STATE(1)) # (!STATE(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_0~combout\,
	datab => \PB_1~combout\,
	datac => STATE(0),
	datad => STATE(1),
	combout => \STATE~1_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G6
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

-- Location: LCFF_X28_Y5_N9
\STATE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \STATE~1_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATE(0));

-- Location: LCCOMB_X28_Y5_N30
\STATE[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATE[1]~0_combout\ = (\PB_0~combout\ & (STATE(1))) # (!\PB_0~combout\ & (!STATE(1) & STATE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_0~combout\,
	datac => STATE(1),
	datad => STATE(0),
	combout => \STATE[1]~0_combout\);

-- Location: LCFF_X28_Y5_N31
\STATE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \STATE[1]~0_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATE(1));

-- Location: LCCOMB_X29_Y5_N10
\cont_hundredths|CONT_M_PM|CONT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT~4_combout\ = (!\cont_hundredths|CONT_M_PM|CONT\(0) & ((!STATE(0)) # (!STATE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STATE(1),
	datac => \cont_hundredths|CONT_M_PM|CONT\(0),
	datad => STATE(0),
	combout => \cont_hundredths|CONT_M_PM|CONT~4_combout\);

-- Location: LCCOMB_X27_Y5_N10
\cont_hundredths|CONT_L_PM|CONT[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\ = (!STATE(1) & (STATE(0) & !\cont_hundredths|en_m~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STATE(1),
	datac => STATE(0),
	datad => \cont_hundredths|en_m~0_combout\,
	combout => \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\);

-- Location: LCCOMB_X27_Y5_N24
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

-- Location: LCFF_X27_Y5_N25
\cont_hundredths|CONT_L_PM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_L_PM|CONT[2]~3_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_L_PM|CONT\(2));

-- Location: LCCOMB_X27_Y5_N4
\cont_hundredths|CONT_L_PM|CONT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[0]~0_combout\ = (STATE(0) & (!\cont_hundredths|CONT_L_PM|CONT\(0) & !STATE(1))) # (!STATE(0) & (\cont_hundredths|CONT_L_PM|CONT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STATE(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => STATE(1),
	combout => \cont_hundredths|CONT_L_PM|CONT[0]~0_combout\);

-- Location: LCFF_X27_Y5_N5
\cont_hundredths|CONT_L_PM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_L_PM|CONT[0]~0_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_L_PM|CONT\(0));

-- Location: LCCOMB_X27_Y5_N14
\cont_hundredths|CONT_L_PM|CONT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[1]~2_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(1) & (((!\cont_hundredths|CONT_L_PM|CONT\(0) & \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\)) # (!STATE(0)))) # (!\cont_hundredths|CONT_L_PM|CONT\(1) & 
-- (((\cont_hundredths|CONT_L_PM|CONT\(0) & \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(1),
	datad => \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\,
	combout => \cont_hundredths|CONT_L_PM|CONT[1]~2_combout\);

-- Location: LCFF_X27_Y5_N15
\cont_hundredths|CONT_L_PM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_L_PM|CONT[1]~2_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_L_PM|CONT\(1));

-- Location: LCCOMB_X28_Y5_N18
\cont_hundredths|en_m~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|en_m~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(3) & (!\cont_hundredths|CONT_L_PM|CONT\(2) & (\cont_hundredths|CONT_L_PM|CONT\(0) & !\cont_hundredths|CONT_L_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(3),
	datab => \cont_hundredths|CONT_L_PM|CONT\(2),
	datac => \cont_hundredths|CONT_L_PM|CONT\(0),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \cont_hundredths|en_m~0_combout\);

-- Location: LCCOMB_X29_Y5_N4
\cont_hundredths|CONT_M_PM|CONT[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\ = (STATE(0) & ((STATE(1)) # (\cont_hundredths|en_m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datac => STATE(0),
	datad => \cont_hundredths|en_m~0_combout\,
	combout => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\);

-- Location: LCFF_X29_Y5_N11
\cont_hundredths|CONT_M_PM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_M_PM|CONT~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_M_PM|CONT\(0));

-- Location: LCCOMB_X29_Y5_N2
\cont_hundredths|CONT_M_PM|CONT~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT~8_combout\ = (\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (\cont_hundredths|CONT_M_PM|CONT\(2) $ (((\cont_hundredths|CONT_M_PM|CONT\(1) & \cont_hundredths|CONT_M_PM|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(1),
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	combout => \cont_hundredths|CONT_M_PM|CONT~8_combout\);

-- Location: LCFF_X29_Y5_N3
\cont_hundredths|CONT_M_PM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_M_PM|CONT~8_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_M_PM|CONT\(2));

-- Location: LCCOMB_X29_Y5_N20
\cont_hundredths|CONT_M_PM|CONT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|CONT~6_combout\ = (\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (\cont_hundredths|CONT_M_PM|CONT\(0) $ (\cont_hundredths|CONT_M_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	combout => \cont_hundredths|CONT_M_PM|CONT~6_combout\);

-- Location: LCFF_X29_Y5_N21
\cont_hundredths|CONT_M_PM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_M_PM|CONT~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_M_PM|CONT\(1));

-- Location: LCCOMB_X30_Y5_N24
\cont_hundredths|CONT_M_PM|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_M_PM|Add0~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(1) & \cont_hundredths|CONT_M_PM|CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_hundredths|CONT_M_PM|CONT\(0),
	combout => \cont_hundredths|CONT_M_PM|Add0~0_combout\);

-- Location: LCCOMB_X29_Y5_N16
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

-- Location: LCFF_X29_Y5_N17
\cont_hundredths|CONT_M_PM|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_M_PM|CONT~7_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_hundredths|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_M_PM|CONT\(3));

-- Location: LCCOMB_X29_Y5_N26
\EN_SEC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EN_SEC~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(1)) # ((\cont_hundredths|CONT_M_PM|CONT\(2)) # ((!\cont_hundredths|CONT_M_PM|CONT\(0)) # (!\cont_hundredths|CONT_M_PM|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(1),
	datab => \cont_hundredths|CONT_M_PM|CONT\(2),
	datac => \cont_hundredths|CONT_M_PM|CONT\(3),
	datad => \cont_hundredths|CONT_M_PM|CONT\(0),
	combout => \EN_SEC~0_combout\);

-- Location: LCCOMB_X29_Y5_N22
\cont_seconds|CONT_L_PM|CONT[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[3]~7_combout\ = (STATE(0) & (!STATE(1) & ((\EN_SEC~0_combout\) # (!\cont_hundredths|en_m~0_combout\)))) # (!STATE(0) & ((\EN_SEC~0_combout\) # ((!\cont_hundredths|en_m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datab => \EN_SEC~0_combout\,
	datac => STATE(1),
	datad => \cont_hundredths|en_m~0_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\);

-- Location: LCCOMB_X27_Y5_N2
\cont_seconds|CONT_M_PM|CONT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT~4_combout\ = (!\cont_seconds|CONT_M_PM|CONT\(0) & ((!STATE(1)) # (!STATE(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont_seconds|CONT_M_PM|CONT\(0),
	datac => STATE(0),
	datad => STATE(1),
	combout => \cont_seconds|CONT_M_PM|CONT~4_combout\);

-- Location: LCCOMB_X28_Y5_N12
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (STATE(0) & STATE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STATE(0),
	datad => STATE(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y5_N14
\cont_seconds|CONT_M_PM|CONT[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT[3]~5_combout\ = (\Equal0~0_combout\) # ((!\EN_SEC~0_combout\ & (\cont_hundredths|en_m~0_combout\ & \cont_seconds|ld~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_SEC~0_combout\,
	datab => \cont_hundredths|en_m~0_combout\,
	datac => \cont_seconds|ld~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\);

-- Location: LCFF_X28_Y5_N21
\cont_seconds|CONT_M_PM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	sdata => \cont_seconds|CONT_M_PM|CONT~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	sload => VCC,
	ena => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_M_PM|CONT\(0));

-- Location: LCCOMB_X27_Y5_N8
\cont_seconds|CONT_M_PM|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|Add0~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(1) & \cont_seconds|CONT_M_PM|CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont_seconds|CONT_M_PM|CONT\(1),
	datad => \cont_seconds|CONT_M_PM|CONT\(0),
	combout => \cont_seconds|CONT_M_PM|Add0~0_combout\);

-- Location: LCCOMB_X28_Y5_N22
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

-- Location: LCFF_X28_Y5_N23
\cont_seconds|CONT_M_PM|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_seconds|CONT_M_PM|CONT~7_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_M_PM|CONT\(3));

-- Location: LCCOMB_X28_Y5_N16
\cont_seconds|ld~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|ld~1_combout\ = ((\cont_seconds|CONT_M_PM|CONT\(3)) # ((\cont_seconds|CONT_M_PM|CONT\(1)) # (!\cont_seconds|CONT_M_PM|CONT\(2)))) # (!\cont_seconds|CONT_M_PM|CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(3),
	datac => \cont_seconds|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \cont_seconds|ld~1_combout\);

-- Location: LCCOMB_X29_Y5_N30
\cont_seconds|CONT_L_PM|CONT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[3]~3_combout\ = (!\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (!\cont_seconds|CONT_M_PM|CONT[3]~5_combout\ & ((\cont_seconds|ld~1_combout\) # (!\cont_seconds|ld~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|ld~0_combout\,
	datab => \cont_seconds|ld~1_combout\,
	datac => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	datad => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[3]~3_combout\);

-- Location: LCCOMB_X29_Y5_N28
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

-- Location: LCFF_X29_Y5_N29
\cont_seconds|CONT_L_PM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_seconds|CONT_L_PM|CONT[1]~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_L_PM|CONT\(1));

-- Location: LCCOMB_X29_Y5_N14
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

-- Location: LCFF_X29_Y5_N15
\cont_seconds|CONT_L_PM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_seconds|CONT_L_PM|CONT[2]~5_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_L_PM|CONT\(2));

-- Location: LCCOMB_X29_Y5_N6
\cont_seconds|CONT_L_PM|CONT[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_L_PM|CONT[0]~2_combout\ = (\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (\cont_seconds|CONT_L_PM|CONT\(0))) # (!\cont_seconds|CONT_L_PM|CONT[3]~7_combout\ & (!\cont_seconds|CONT_L_PM|CONT\(0) & 
-- !\cont_seconds|CONT_M_PM|CONT[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont_seconds|CONT_L_PM|CONT[3]~7_combout\,
	datac => \cont_seconds|CONT_L_PM|CONT\(0),
	datad => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	combout => \cont_seconds|CONT_L_PM|CONT[0]~2_combout\);

-- Location: LCFF_X29_Y5_N7
\cont_seconds|CONT_L_PM|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_seconds|CONT_L_PM|CONT[0]~2_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_L_PM|CONT\(0));

-- Location: LCCOMB_X29_Y5_N0
\cont_seconds|ld~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|ld~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(3) & (!\cont_seconds|CONT_L_PM|CONT\(1) & (!\cont_seconds|CONT_L_PM|CONT\(2) & \cont_seconds|CONT_L_PM|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(3),
	datab => \cont_seconds|CONT_L_PM|CONT\(1),
	datac => \cont_seconds|CONT_L_PM|CONT\(2),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \cont_seconds|ld~0_combout\);

-- Location: LCCOMB_X28_Y5_N6
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

-- Location: LCCOMB_X28_Y5_N10
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

-- Location: LCFF_X28_Y5_N11
\cont_seconds|CONT_M_PM|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_seconds|CONT_M_PM|CONT~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_M_PM|CONT\(1));

-- Location: LCCOMB_X28_Y5_N4
\cont_seconds|CONT_M_PM|CONT~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_seconds|CONT_M_PM|CONT~9_combout\ = (\cont_seconds|CONT_M_PM|CONT~8_combout\ & (\cont_seconds|CONT_M_PM|CONT\(2) $ (((\cont_seconds|CONT_M_PM|CONT\(0) & \cont_seconds|CONT_M_PM|CONT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(1),
	datac => \cont_seconds|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_M_PM|CONT~8_combout\,
	combout => \cont_seconds|CONT_M_PM|CONT~9_combout\);

-- Location: LCFF_X28_Y5_N5
\cont_seconds|CONT_M_PM|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_seconds|CONT_M_PM|CONT~9_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	ena => \cont_seconds|CONT_M_PM|CONT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_M_PM|CONT\(2));

-- Location: LCCOMB_X28_Y5_N20
\decoder_m_sec|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux6~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(0) & ((\cont_seconds|CONT_M_PM|CONT\(3)) # (\cont_seconds|CONT_M_PM|CONT\(2) $ (\cont_seconds|CONT_M_PM|CONT\(1))))) # (!\cont_seconds|CONT_M_PM|CONT\(0) & ((\cont_seconds|CONT_M_PM|CONT\(1)) 
-- # (\cont_seconds|CONT_M_PM|CONT\(2) $ (\cont_seconds|CONT_M_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(2),
	datab => \cont_seconds|CONT_M_PM|CONT\(3),
	datac => \cont_seconds|CONT_M_PM|CONT\(0),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y5_N24
\decoder_m_sec|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux5~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(0) & (\cont_seconds|CONT_M_PM|CONT\(3) $ (((\cont_seconds|CONT_M_PM|CONT\(1)) # (!\cont_seconds|CONT_M_PM|CONT\(2)))))) # (!\cont_seconds|CONT_M_PM|CONT\(0) & 
-- (!\cont_seconds|CONT_M_PM|CONT\(3) & (!\cont_seconds|CONT_M_PM|CONT\(2) & \cont_seconds|CONT_M_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(3),
	datac => \cont_seconds|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y5_N2
\decoder_m_sec|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux4~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(1) & (\cont_seconds|CONT_M_PM|CONT\(0) & (!\cont_seconds|CONT_M_PM|CONT\(3)))) # (!\cont_seconds|CONT_M_PM|CONT\(1) & ((\cont_seconds|CONT_M_PM|CONT\(2) & 
-- ((!\cont_seconds|CONT_M_PM|CONT\(3)))) # (!\cont_seconds|CONT_M_PM|CONT\(2) & (\cont_seconds|CONT_M_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(3),
	datac => \cont_seconds|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y5_N12
\decoder_m_sec|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux3~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(1) & ((\cont_seconds|CONT_M_PM|CONT\(2) & ((\cont_seconds|CONT_M_PM|CONT\(0)))) # (!\cont_seconds|CONT_M_PM|CONT\(2) & (\cont_seconds|CONT_M_PM|CONT\(3) & 
-- !\cont_seconds|CONT_M_PM|CONT\(0))))) # (!\cont_seconds|CONT_M_PM|CONT\(1) & (!\cont_seconds|CONT_M_PM|CONT\(3) & (\cont_seconds|CONT_M_PM|CONT\(2) $ (\cont_seconds|CONT_M_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(3),
	datab => \cont_seconds|CONT_M_PM|CONT\(2),
	datac => \cont_seconds|CONT_M_PM|CONT\(1),
	datad => \cont_seconds|CONT_M_PM|CONT\(0),
	combout => \decoder_m_sec|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y5_N28
\decoder_m_sec|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux2~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(3) & (\cont_seconds|CONT_M_PM|CONT\(2) & ((\cont_seconds|CONT_M_PM|CONT\(1)) # (!\cont_seconds|CONT_M_PM|CONT\(0))))) # (!\cont_seconds|CONT_M_PM|CONT\(3) & (!\cont_seconds|CONT_M_PM|CONT\(0) 
-- & (!\cont_seconds|CONT_M_PM|CONT\(2) & \cont_seconds|CONT_M_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(3),
	datac => \cont_seconds|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y5_N26
\decoder_m_sec|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux1~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(3) & ((\cont_seconds|CONT_M_PM|CONT\(0) & ((\cont_seconds|CONT_M_PM|CONT\(1)))) # (!\cont_seconds|CONT_M_PM|CONT\(0) & (\cont_seconds|CONT_M_PM|CONT\(2))))) # 
-- (!\cont_seconds|CONT_M_PM|CONT\(3) & (\cont_seconds|CONT_M_PM|CONT\(2) & (\cont_seconds|CONT_M_PM|CONT\(0) $ (\cont_seconds|CONT_M_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(3),
	datac => \cont_seconds|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y5_N0
\decoder_m_sec|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_sec|Mux0~0_combout\ = (\cont_seconds|CONT_M_PM|CONT\(3) & (\cont_seconds|CONT_M_PM|CONT\(0) & (\cont_seconds|CONT_M_PM|CONT\(2) $ (\cont_seconds|CONT_M_PM|CONT\(1))))) # (!\cont_seconds|CONT_M_PM|CONT\(3) & (!\cont_seconds|CONT_M_PM|CONT\(1) & 
-- (\cont_seconds|CONT_M_PM|CONT\(0) $ (\cont_seconds|CONT_M_PM|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_M_PM|CONT\(0),
	datab => \cont_seconds|CONT_M_PM|CONT\(3),
	datac => \cont_seconds|CONT_M_PM|CONT\(2),
	datad => \cont_seconds|CONT_M_PM|CONT\(1),
	combout => \decoder_m_sec|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y5_N24
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

-- Location: LCFF_X29_Y5_N25
\cont_seconds|CONT_L_PM|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_seconds|CONT_L_PM|CONT[3]~6_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_seconds|CONT_L_PM|CONT\(3));

-- Location: LCCOMB_X33_Y5_N8
\decoder_l_sec|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux6~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(0) & ((\cont_seconds|CONT_L_PM|CONT\(3)) # (\cont_seconds|CONT_L_PM|CONT\(2) $ (\cont_seconds|CONT_L_PM|CONT\(1))))) # (!\cont_seconds|CONT_L_PM|CONT\(0) & ((\cont_seconds|CONT_L_PM|CONT\(1)) 
-- # (\cont_seconds|CONT_L_PM|CONT\(2) $ (\cont_seconds|CONT_L_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(1),
	datac => \cont_seconds|CONT_L_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y5_N14
\decoder_l_sec|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux5~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(0) & (\cont_seconds|CONT_L_PM|CONT\(1) $ (\cont_seconds|CONT_L_PM|CONT\(3))))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & (!\cont_seconds|CONT_L_PM|CONT\(3) & 
-- ((\cont_seconds|CONT_L_PM|CONT\(1)) # (\cont_seconds|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(1),
	datac => \cont_seconds|CONT_L_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y5_N4
\decoder_l_sec|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux4~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(1) & (((!\cont_seconds|CONT_L_PM|CONT\(3) & \cont_seconds|CONT_L_PM|CONT\(0))))) # (!\cont_seconds|CONT_L_PM|CONT\(1) & ((\cont_seconds|CONT_L_PM|CONT\(2) & 
-- (!\cont_seconds|CONT_L_PM|CONT\(3))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & ((\cont_seconds|CONT_L_PM|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(1),
	datac => \cont_seconds|CONT_L_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y5_N10
\decoder_l_sec|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux3~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(1) & ((\cont_seconds|CONT_L_PM|CONT\(2) & ((\cont_seconds|CONT_L_PM|CONT\(0)))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(3) & 
-- !\cont_seconds|CONT_L_PM|CONT\(0))))) # (!\cont_seconds|CONT_L_PM|CONT\(1) & (!\cont_seconds|CONT_L_PM|CONT\(3) & (\cont_seconds|CONT_L_PM|CONT\(2) $ (\cont_seconds|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(1),
	datac => \cont_seconds|CONT_L_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y5_N0
\decoder_l_sec|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux2~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(3) & ((\cont_seconds|CONT_L_PM|CONT\(1)) # (!\cont_seconds|CONT_L_PM|CONT\(0))))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(1) 
-- & (!\cont_seconds|CONT_L_PM|CONT\(3) & !\cont_seconds|CONT_L_PM|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(1),
	datac => \cont_seconds|CONT_L_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y5_N18
\decoder_l_sec|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux1~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(1) & ((\cont_seconds|CONT_L_PM|CONT\(0) & ((\cont_seconds|CONT_L_PM|CONT\(3)))) # (!\cont_seconds|CONT_L_PM|CONT\(0) & (\cont_seconds|CONT_L_PM|CONT\(2))))) # 
-- (!\cont_seconds|CONT_L_PM|CONT\(1) & (\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(3) $ (\cont_seconds|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(1),
	datac => \cont_seconds|CONT_L_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y5_N28
\decoder_l_sec|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_sec|Mux0~0_combout\ = (\cont_seconds|CONT_L_PM|CONT\(2) & (!\cont_seconds|CONT_L_PM|CONT\(1) & (\cont_seconds|CONT_L_PM|CONT\(3) $ (!\cont_seconds|CONT_L_PM|CONT\(0))))) # (!\cont_seconds|CONT_L_PM|CONT\(2) & (\cont_seconds|CONT_L_PM|CONT\(0) & 
-- (\cont_seconds|CONT_L_PM|CONT\(1) $ (!\cont_seconds|CONT_L_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_seconds|CONT_L_PM|CONT\(2),
	datab => \cont_seconds|CONT_L_PM|CONT\(1),
	datac => \cont_seconds|CONT_L_PM|CONT\(3),
	datad => \cont_seconds|CONT_L_PM|CONT\(0),
	combout => \decoder_l_sec|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y5_N22
\decoder_m_cent|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux6~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(0) & ((\cont_hundredths|CONT_M_PM|CONT\(3)) # (\cont_hundredths|CONT_M_PM|CONT\(2) $ (\cont_hundredths|CONT_M_PM|CONT\(1))))) # (!\cont_hundredths|CONT_M_PM|CONT\(0) & 
-- ((\cont_hundredths|CONT_M_PM|CONT\(1)) # (\cont_hundredths|CONT_M_PM|CONT\(2) $ (\cont_hundredths|CONT_M_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(2),
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_hundredths|CONT_M_PM|CONT\(3),
	combout => \decoder_m_cent|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y5_N24
\decoder_m_cent|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux5~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(2) & (\cont_hundredths|CONT_M_PM|CONT\(0) & (\cont_hundredths|CONT_M_PM|CONT\(1) $ (\cont_hundredths|CONT_M_PM|CONT\(3))))) # (!\cont_hundredths|CONT_M_PM|CONT\(2) & 
-- (!\cont_hundredths|CONT_M_PM|CONT\(3) & ((\cont_hundredths|CONT_M_PM|CONT\(0)) # (\cont_hundredths|CONT_M_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(2),
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_hundredths|CONT_M_PM|CONT\(3),
	combout => \decoder_m_cent|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y5_N26
\decoder_m_cent|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux4~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(1) & (((\cont_hundredths|CONT_M_PM|CONT\(0) & !\cont_hundredths|CONT_M_PM|CONT\(3))))) # (!\cont_hundredths|CONT_M_PM|CONT\(1) & ((\cont_hundredths|CONT_M_PM|CONT\(2) & 
-- ((!\cont_hundredths|CONT_M_PM|CONT\(3)))) # (!\cont_hundredths|CONT_M_PM|CONT\(2) & (\cont_hundredths|CONT_M_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(2),
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_hundredths|CONT_M_PM|CONT\(3),
	combout => \decoder_m_cent|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y5_N16
\decoder_m_cent|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux3~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(1) & ((\cont_hundredths|CONT_M_PM|CONT\(2) & (\cont_hundredths|CONT_M_PM|CONT\(0))) # (!\cont_hundredths|CONT_M_PM|CONT\(2) & (!\cont_hundredths|CONT_M_PM|CONT\(0) & 
-- \cont_hundredths|CONT_M_PM|CONT\(3))))) # (!\cont_hundredths|CONT_M_PM|CONT\(1) & (!\cont_hundredths|CONT_M_PM|CONT\(3) & (\cont_hundredths|CONT_M_PM|CONT\(2) $ (\cont_hundredths|CONT_M_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(2),
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_hundredths|CONT_M_PM|CONT\(3),
	combout => \decoder_m_cent|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y5_N30
\decoder_m_cent|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux2~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(2) & (\cont_hundredths|CONT_M_PM|CONT\(3) & ((\cont_hundredths|CONT_M_PM|CONT\(1)) # (!\cont_hundredths|CONT_M_PM|CONT\(0))))) # (!\cont_hundredths|CONT_M_PM|CONT\(2) & 
-- (!\cont_hundredths|CONT_M_PM|CONT\(0) & (\cont_hundredths|CONT_M_PM|CONT\(1) & !\cont_hundredths|CONT_M_PM|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(2),
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_hundredths|CONT_M_PM|CONT\(3),
	combout => \decoder_m_cent|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y5_N12
\decoder_m_cent|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux1~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(1) & ((\cont_hundredths|CONT_M_PM|CONT\(0) & ((\cont_hundredths|CONT_M_PM|CONT\(3)))) # (!\cont_hundredths|CONT_M_PM|CONT\(0) & (\cont_hundredths|CONT_M_PM|CONT\(2))))) # 
-- (!\cont_hundredths|CONT_M_PM|CONT\(1) & (\cont_hundredths|CONT_M_PM|CONT\(2) & (\cont_hundredths|CONT_M_PM|CONT\(0) $ (\cont_hundredths|CONT_M_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(2),
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_hundredths|CONT_M_PM|CONT\(3),
	combout => \decoder_m_cent|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y5_N6
\decoder_m_cent|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_m_cent|Mux0~0_combout\ = (\cont_hundredths|CONT_M_PM|CONT\(2) & (!\cont_hundredths|CONT_M_PM|CONT\(1) & (\cont_hundredths|CONT_M_PM|CONT\(0) $ (!\cont_hundredths|CONT_M_PM|CONT\(3))))) # (!\cont_hundredths|CONT_M_PM|CONT\(2) & 
-- (\cont_hundredths|CONT_M_PM|CONT\(0) & (\cont_hundredths|CONT_M_PM|CONT\(1) $ (!\cont_hundredths|CONT_M_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_M_PM|CONT\(2),
	datab => \cont_hundredths|CONT_M_PM|CONT\(0),
	datac => \cont_hundredths|CONT_M_PM|CONT\(1),
	datad => \cont_hundredths|CONT_M_PM|CONT\(3),
	combout => \decoder_m_cent|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y5_N6
\cont_hundredths|CONT_L_PM|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|Add0~1_combout\ = \cont_hundredths|CONT_L_PM|CONT\(3) $ (((\cont_hundredths|CONT_L_PM|CONT\(2) & (\cont_hundredths|CONT_L_PM|CONT\(0) & \cont_hundredths|CONT_L_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \cont_hundredths|CONT_L_PM|Add0~1_combout\);

-- Location: LCCOMB_X27_Y5_N30
\cont_hundredths|CONT_L_PM|CONT[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_hundredths|CONT_L_PM|CONT[3]~4_combout\ = (STATE(0) & (\cont_hundredths|CONT_L_PM|Add0~1_combout\ & ((\cont_hundredths|CONT_L_PM|CONT[3]~1_combout\)))) # (!STATE(0) & ((\cont_hundredths|CONT_L_PM|CONT\(3)) # 
-- ((\cont_hundredths|CONT_L_PM|Add0~1_combout\ & \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(0),
	datab => \cont_hundredths|CONT_L_PM|Add0~1_combout\,
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT[3]~1_combout\,
	combout => \cont_hundredths|CONT_L_PM|CONT[3]~4_combout\);

-- Location: LCFF_X27_Y5_N31
\cont_hundredths|CONT_L_PM|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider|INVERTER~clkctrl_outclk\,
	datain => \cont_hundredths|CONT_L_PM|CONT[3]~4_combout\,
	aclr => \SWITCH~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cont_hundredths|CONT_L_PM|CONT\(3));

-- Location: LCCOMB_X27_Y5_N16
\decoder_l_cent|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux6~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(0) & ((\cont_hundredths|CONT_L_PM|CONT\(3)) # (\cont_hundredths|CONT_L_PM|CONT\(2) $ (\cont_hundredths|CONT_L_PM|CONT\(1))))) # (!\cont_hundredths|CONT_L_PM|CONT\(0) & 
-- ((\cont_hundredths|CONT_L_PM|CONT\(1)) # (\cont_hundredths|CONT_L_PM|CONT\(2) $ (\cont_hundredths|CONT_L_PM|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \decoder_l_cent|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y5_N18
\decoder_l_cent|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux5~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(2) & (\cont_hundredths|CONT_L_PM|CONT\(0) & (\cont_hundredths|CONT_L_PM|CONT\(3) $ (\cont_hundredths|CONT_L_PM|CONT\(1))))) # (!\cont_hundredths|CONT_L_PM|CONT\(2) & 
-- (!\cont_hundredths|CONT_L_PM|CONT\(3) & ((\cont_hundredths|CONT_L_PM|CONT\(0)) # (\cont_hundredths|CONT_L_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \decoder_l_cent|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y5_N20
\decoder_l_cent|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux4~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(1) & (((\cont_hundredths|CONT_L_PM|CONT\(0) & !\cont_hundredths|CONT_L_PM|CONT\(3))))) # (!\cont_hundredths|CONT_L_PM|CONT\(1) & ((\cont_hundredths|CONT_L_PM|CONT\(2) & 
-- ((!\cont_hundredths|CONT_L_PM|CONT\(3)))) # (!\cont_hundredths|CONT_L_PM|CONT\(2) & (\cont_hundredths|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \decoder_l_cent|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y5_N26
\decoder_l_cent|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux3~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(1) & ((\cont_hundredths|CONT_L_PM|CONT\(2) & (\cont_hundredths|CONT_L_PM|CONT\(0))) # (!\cont_hundredths|CONT_L_PM|CONT\(2) & (!\cont_hundredths|CONT_L_PM|CONT\(0) & 
-- \cont_hundredths|CONT_L_PM|CONT\(3))))) # (!\cont_hundredths|CONT_L_PM|CONT\(1) & (!\cont_hundredths|CONT_L_PM|CONT\(3) & (\cont_hundredths|CONT_L_PM|CONT\(2) $ (\cont_hundredths|CONT_L_PM|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \decoder_l_cent|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y5_N0
\decoder_l_cent|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux2~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(2) & (\cont_hundredths|CONT_L_PM|CONT\(3) & ((\cont_hundredths|CONT_L_PM|CONT\(1)) # (!\cont_hundredths|CONT_L_PM|CONT\(0))))) # (!\cont_hundredths|CONT_L_PM|CONT\(2) & 
-- (!\cont_hundredths|CONT_L_PM|CONT\(0) & (!\cont_hundredths|CONT_L_PM|CONT\(3) & \cont_hundredths|CONT_L_PM|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \decoder_l_cent|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y5_N22
\decoder_l_cent|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux1~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(3) & ((\cont_hundredths|CONT_L_PM|CONT\(0) & ((\cont_hundredths|CONT_L_PM|CONT\(1)))) # (!\cont_hundredths|CONT_L_PM|CONT\(0) & (\cont_hundredths|CONT_L_PM|CONT\(2))))) # 
-- (!\cont_hundredths|CONT_L_PM|CONT\(3) & (\cont_hundredths|CONT_L_PM|CONT\(2) & (\cont_hundredths|CONT_L_PM|CONT\(0) $ (\cont_hundredths|CONT_L_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \decoder_l_cent|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y5_N28
\decoder_l_cent|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_l_cent|Mux0~0_combout\ = (\cont_hundredths|CONT_L_PM|CONT\(2) & (!\cont_hundredths|CONT_L_PM|CONT\(1) & (\cont_hundredths|CONT_L_PM|CONT\(0) $ (!\cont_hundredths|CONT_L_PM|CONT\(3))))) # (!\cont_hundredths|CONT_L_PM|CONT\(2) & 
-- (\cont_hundredths|CONT_L_PM|CONT\(0) & (\cont_hundredths|CONT_L_PM|CONT\(3) $ (!\cont_hundredths|CONT_L_PM|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont_hundredths|CONT_L_PM|CONT\(2),
	datab => \cont_hundredths|CONT_L_PM|CONT\(0),
	datac => \cont_hundredths|CONT_L_PM|CONT\(3),
	datad => \cont_hundredths|CONT_L_PM|CONT\(1),
	combout => \decoder_l_cent|Mux0~0_combout\);

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


