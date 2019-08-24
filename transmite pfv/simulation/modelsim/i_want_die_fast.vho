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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1.78 SJ Web Edition"

-- DATE "08/23/2019 21:54:13"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE i_want_die_data_type IS

TYPE codein_1_0_type IS ARRAY (1 DOWNTO 0) OF std_logic;
TYPE codein_1_0_0_4_type IS ARRAY (0 TO 4) OF codein_1_0_type;
SUBTYPE codein_type IS codein_1_0_0_4_type;

TYPE codeout_1_0_type IS ARRAY (1 DOWNTO 0) OF std_logic;
TYPE codeout_1_0_0_4_type IS ARRAY (0 TO 4) OF codeout_1_0_type;
SUBTYPE codeout_type IS codeout_1_0_0_4_type;

END i_want_die_data_type;

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.I_WANT_DIE_DATA_TYPE.ALL;

ENTITY 	i_want_die IS
    PORT (
	clock : IN std_logic;
	led : OUT std_logic_vector(0 TO 4);
	codein : IN codein_type;
	codeout : BUFFER codeout_type
	);
END i_want_die;

-- Design Ports Information
-- led[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[4][0]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[4][1]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[3][0]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[3][1]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[2][0]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[2][1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[1][0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[1][1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[0][0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codeout[0][1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- codein[4][1]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[4][0]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[3][1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[3][0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[2][1]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[2][0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[1][1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[1][0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[0][1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- codein[0][0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF i_want_die IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_led : std_logic_vector(0 TO 4);
SIGNAL ww_codein : codein_type;
SIGNAL ww_codeout : codeout_type;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \brightness_loop:0:led_intensity_module|c[3]~11_combout\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[5]~15_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[1]~7_combout\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[1]~8\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[2]~9_combout\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[2]~10\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[3]~12\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[4]~13_combout\ : std_logic;
SIGNAL \brightness_loop:4:led_intensity_module|LessThan0~2_combout\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[0]~21_combout\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[4]~14\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[5]~16\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[6]~17_combout\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[6]~18\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c[7]~19_combout\ : std_logic;
SIGNAL \brightness_loop:4:led_intensity_module|LessThan0~1_combout\ : std_logic;
SIGNAL \brightness_loop:4:led_intensity_module|LessThan0~3_combout\ : std_logic;
SIGNAL \brightness_loop:4:led_intensity_module|LessThan0~0_combout\ : std_logic;
SIGNAL \codein[4][1]~combout\ : std_logic;
SIGNAL \codein[4][0]~combout\ : std_logic;
SIGNAL \brightness_loop:4:led_intensity_module|LessThan0~4_combout\ : std_logic;
SIGNAL \codein[3][1]~combout\ : std_logic;
SIGNAL \codein[3][0]~combout\ : std_logic;
SIGNAL \brightness_loop:3:led_intensity_module|LessThan0~0_combout\ : std_logic;
SIGNAL \codein[2][1]~combout\ : std_logic;
SIGNAL \codein[2][0]~combout\ : std_logic;
SIGNAL \brightness_loop:2:led_intensity_module|LessThan0~0_combout\ : std_logic;
SIGNAL \codein[1][0]~combout\ : std_logic;
SIGNAL \codein[1][1]~combout\ : std_logic;
SIGNAL \brightness_loop:1:led_intensity_module|LessThan0~0_combout\ : std_logic;
SIGNAL \codein[0][1]~combout\ : std_logic;
SIGNAL \codein[0][0]~combout\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|LessThan0~0_combout\ : std_logic;
SIGNAL \brightness_loop:0:led_intensity_module|c\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clock~clkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
led <= ww_led;
ww_codein <= codein;
codeout <= ww_codeout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_clock~clkctrl_outclk\ <= NOT \clock~clkctrl_outclk\;

-- Location: LCFF_X49_Y24_N17
\brightness_loop:0:led_intensity_module|c[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \brightness_loop:0:led_intensity_module|c[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \brightness_loop:0:led_intensity_module|c\(5));

-- Location: LCFF_X49_Y24_N13
\brightness_loop:0:led_intensity_module|c[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \brightness_loop:0:led_intensity_module|c[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \brightness_loop:0:led_intensity_module|c\(3));

-- Location: LCCOMB_X49_Y24_N12
\brightness_loop:0:led_intensity_module|c[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|c[3]~11_combout\ = (\brightness_loop:0:led_intensity_module|c\(3) & (\brightness_loop:0:led_intensity_module|c[2]~10\ $ (GND))) # (!\brightness_loop:0:led_intensity_module|c\(3) & 
-- (!\brightness_loop:0:led_intensity_module|c[2]~10\ & VCC))
-- \brightness_loop:0:led_intensity_module|c[3]~12\ = CARRY((\brightness_loop:0:led_intensity_module|c\(3) & !\brightness_loop:0:led_intensity_module|c[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:0:led_intensity_module|c\(3),
	datad => VCC,
	cin => \brightness_loop:0:led_intensity_module|c[2]~10\,
	combout => \brightness_loop:0:led_intensity_module|c[3]~11_combout\,
	cout => \brightness_loop:0:led_intensity_module|c[3]~12\);

-- Location: LCCOMB_X49_Y24_N16
\brightness_loop:0:led_intensity_module|c[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|c[5]~15_combout\ = (\brightness_loop:0:led_intensity_module|c\(5) & (\brightness_loop:0:led_intensity_module|c[4]~14\ $ (GND))) # (!\brightness_loop:0:led_intensity_module|c\(5) & 
-- (!\brightness_loop:0:led_intensity_module|c[4]~14\ & VCC))
-- \brightness_loop:0:led_intensity_module|c[5]~16\ = CARRY((\brightness_loop:0:led_intensity_module|c\(5) & !\brightness_loop:0:led_intensity_module|c[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:0:led_intensity_module|c\(5),
	datad => VCC,
	cin => \brightness_loop:0:led_intensity_module|c[4]~14\,
	combout => \brightness_loop:0:led_intensity_module|c[5]~15_combout\,
	cout => \brightness_loop:0:led_intensity_module|c[5]~16\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y24_N8
\brightness_loop:0:led_intensity_module|c[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|c[1]~7_combout\ = (\brightness_loop:0:led_intensity_module|c\(0) & (\brightness_loop:0:led_intensity_module|c\(1) $ (VCC))) # (!\brightness_loop:0:led_intensity_module|c\(0) & 
-- (\brightness_loop:0:led_intensity_module|c\(1) & VCC))
-- \brightness_loop:0:led_intensity_module|c[1]~8\ = CARRY((\brightness_loop:0:led_intensity_module|c\(0) & \brightness_loop:0:led_intensity_module|c\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:0:led_intensity_module|c\(0),
	datab => \brightness_loop:0:led_intensity_module|c\(1),
	datad => VCC,
	combout => \brightness_loop:0:led_intensity_module|c[1]~7_combout\,
	cout => \brightness_loop:0:led_intensity_module|c[1]~8\);

-- Location: LCFF_X49_Y24_N9
\brightness_loop:0:led_intensity_module|c[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \brightness_loop:0:led_intensity_module|c[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \brightness_loop:0:led_intensity_module|c\(1));

-- Location: LCCOMB_X49_Y24_N10
\brightness_loop:0:led_intensity_module|c[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|c[2]~9_combout\ = (\brightness_loop:0:led_intensity_module|c\(2) & (!\brightness_loop:0:led_intensity_module|c[1]~8\)) # (!\brightness_loop:0:led_intensity_module|c\(2) & 
-- ((\brightness_loop:0:led_intensity_module|c[1]~8\) # (GND)))
-- \brightness_loop:0:led_intensity_module|c[2]~10\ = CARRY((!\brightness_loop:0:led_intensity_module|c[1]~8\) # (!\brightness_loop:0:led_intensity_module|c\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:0:led_intensity_module|c\(2),
	datad => VCC,
	cin => \brightness_loop:0:led_intensity_module|c[1]~8\,
	combout => \brightness_loop:0:led_intensity_module|c[2]~9_combout\,
	cout => \brightness_loop:0:led_intensity_module|c[2]~10\);

-- Location: LCFF_X49_Y24_N11
\brightness_loop:0:led_intensity_module|c[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \brightness_loop:0:led_intensity_module|c[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \brightness_loop:0:led_intensity_module|c\(2));

-- Location: LCCOMB_X49_Y24_N14
\brightness_loop:0:led_intensity_module|c[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|c[4]~13_combout\ = (\brightness_loop:0:led_intensity_module|c\(4) & (!\brightness_loop:0:led_intensity_module|c[3]~12\)) # (!\brightness_loop:0:led_intensity_module|c\(4) & 
-- ((\brightness_loop:0:led_intensity_module|c[3]~12\) # (GND)))
-- \brightness_loop:0:led_intensity_module|c[4]~14\ = CARRY((!\brightness_loop:0:led_intensity_module|c[3]~12\) # (!\brightness_loop:0:led_intensity_module|c\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \brightness_loop:0:led_intensity_module|c\(4),
	datad => VCC,
	cin => \brightness_loop:0:led_intensity_module|c[3]~12\,
	combout => \brightness_loop:0:led_intensity_module|c[4]~13_combout\,
	cout => \brightness_loop:0:led_intensity_module|c[4]~14\);

-- Location: LCFF_X49_Y24_N15
\brightness_loop:0:led_intensity_module|c[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \brightness_loop:0:led_intensity_module|c[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \brightness_loop:0:led_intensity_module|c\(4));

-- Location: LCCOMB_X49_Y24_N30
\brightness_loop:4:led_intensity_module|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:4:led_intensity_module|LessThan0~2_combout\ = (\brightness_loop:0:led_intensity_module|c\(3) & (\brightness_loop:0:led_intensity_module|c\(2) & (\brightness_loop:0:led_intensity_module|c\(4) & 
-- \brightness_loop:0:led_intensity_module|c\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:0:led_intensity_module|c\(3),
	datab => \brightness_loop:0:led_intensity_module|c\(2),
	datac => \brightness_loop:0:led_intensity_module|c\(4),
	datad => \brightness_loop:0:led_intensity_module|c\(1),
	combout => \brightness_loop:4:led_intensity_module|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y24_N6
\brightness_loop:0:led_intensity_module|c[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|c[0]~21_combout\ = !\brightness_loop:0:led_intensity_module|c\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \brightness_loop:0:led_intensity_module|c\(0),
	combout => \brightness_loop:0:led_intensity_module|c[0]~21_combout\);

-- Location: LCFF_X49_Y24_N7
\brightness_loop:0:led_intensity_module|c[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \brightness_loop:0:led_intensity_module|c[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \brightness_loop:0:led_intensity_module|c\(0));

-- Location: LCCOMB_X49_Y24_N18
\brightness_loop:0:led_intensity_module|c[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|c[6]~17_combout\ = (\brightness_loop:0:led_intensity_module|c\(6) & (!\brightness_loop:0:led_intensity_module|c[5]~16\)) # (!\brightness_loop:0:led_intensity_module|c\(6) & 
-- ((\brightness_loop:0:led_intensity_module|c[5]~16\) # (GND)))
-- \brightness_loop:0:led_intensity_module|c[6]~18\ = CARRY((!\brightness_loop:0:led_intensity_module|c[5]~16\) # (!\brightness_loop:0:led_intensity_module|c\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \brightness_loop:0:led_intensity_module|c\(6),
	datad => VCC,
	cin => \brightness_loop:0:led_intensity_module|c[5]~16\,
	combout => \brightness_loop:0:led_intensity_module|c[6]~17_combout\,
	cout => \brightness_loop:0:led_intensity_module|c[6]~18\);

-- Location: LCFF_X49_Y24_N19
\brightness_loop:0:led_intensity_module|c[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \brightness_loop:0:led_intensity_module|c[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \brightness_loop:0:led_intensity_module|c\(6));

-- Location: LCCOMB_X49_Y24_N20
\brightness_loop:0:led_intensity_module|c[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|c[7]~19_combout\ = \brightness_loop:0:led_intensity_module|c\(7) $ (!\brightness_loop:0:led_intensity_module|c[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:0:led_intensity_module|c\(7),
	cin => \brightness_loop:0:led_intensity_module|c[6]~18\,
	combout => \brightness_loop:0:led_intensity_module|c[7]~19_combout\);

-- Location: LCFF_X49_Y24_N21
\brightness_loop:0:led_intensity_module|c[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \brightness_loop:0:led_intensity_module|c[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \brightness_loop:0:led_intensity_module|c\(7));

-- Location: LCCOMB_X49_Y24_N0
\brightness_loop:4:led_intensity_module|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:4:led_intensity_module|LessThan0~1_combout\ = (\brightness_loop:0:led_intensity_module|c\(5) & (\brightness_loop:0:led_intensity_module|c\(0) & (\brightness_loop:0:led_intensity_module|c\(7) & 
-- \brightness_loop:0:led_intensity_module|c\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:0:led_intensity_module|c\(5),
	datab => \brightness_loop:0:led_intensity_module|c\(0),
	datac => \brightness_loop:0:led_intensity_module|c\(7),
	datad => \brightness_loop:0:led_intensity_module|c\(6),
	combout => \brightness_loop:4:led_intensity_module|LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y24_N26
\brightness_loop:4:led_intensity_module|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:4:led_intensity_module|LessThan0~3_combout\ = (\brightness_loop:4:led_intensity_module|LessThan0~2_combout\ & \brightness_loop:4:led_intensity_module|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \brightness_loop:4:led_intensity_module|LessThan0~2_combout\,
	datad => \brightness_loop:4:led_intensity_module|LessThan0~1_combout\,
	combout => \brightness_loop:4:led_intensity_module|LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y24_N28
\brightness_loop:4:led_intensity_module|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:4:led_intensity_module|LessThan0~0_combout\ = (!\brightness_loop:0:led_intensity_module|c\(5) & (!\brightness_loop:0:led_intensity_module|c\(4) & (!\brightness_loop:0:led_intensity_module|c\(7) & 
-- !\brightness_loop:0:led_intensity_module|c\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:0:led_intensity_module|c\(5),
	datab => \brightness_loop:0:led_intensity_module|c\(4),
	datac => \brightness_loop:0:led_intensity_module|c\(7),
	datad => \brightness_loop:0:led_intensity_module|c\(6),
	combout => \brightness_loop:4:led_intensity_module|LessThan0~0_combout\);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[4][1]~I\ : cycloneii_io
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
	padio => ww_codein(4)(1),
	combout => \codein[4][1]~combout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[4][0]~I\ : cycloneii_io
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
	padio => ww_codein(4)(0),
	combout => \codein[4][0]~combout\);

-- Location: LCCOMB_X49_Y24_N4
\brightness_loop:4:led_intensity_module|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:4:led_intensity_module|LessThan0~4_combout\ = (!\brightness_loop:4:led_intensity_module|LessThan0~3_combout\ & ((\codein[4][1]~combout\) # ((\brightness_loop:4:led_intensity_module|LessThan0~0_combout\ & \codein[4][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:4:led_intensity_module|LessThan0~3_combout\,
	datab => \brightness_loop:4:led_intensity_module|LessThan0~0_combout\,
	datac => \codein[4][1]~combout\,
	datad => \codein[4][0]~combout\,
	combout => \brightness_loop:4:led_intensity_module|LessThan0~4_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[3][1]~I\ : cycloneii_io
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
	padio => ww_codein(3)(1),
	combout => \codein[3][1]~combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[3][0]~I\ : cycloneii_io
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
	padio => ww_codein(3)(0),
	combout => \codein[3][0]~combout\);

-- Location: LCCOMB_X49_Y24_N22
\brightness_loop:3:led_intensity_module|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:3:led_intensity_module|LessThan0~0_combout\ = (!\brightness_loop:4:led_intensity_module|LessThan0~3_combout\ & ((\codein[3][1]~combout\) # ((\codein[3][0]~combout\ & \brightness_loop:4:led_intensity_module|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:4:led_intensity_module|LessThan0~3_combout\,
	datab => \codein[3][1]~combout\,
	datac => \codein[3][0]~combout\,
	datad => \brightness_loop:4:led_intensity_module|LessThan0~0_combout\,
	combout => \brightness_loop:3:led_intensity_module|LessThan0~0_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[2][1]~I\ : cycloneii_io
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
	padio => ww_codein(2)(1),
	combout => \codein[2][1]~combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[2][0]~I\ : cycloneii_io
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
	padio => ww_codein(2)(0),
	combout => \codein[2][0]~combout\);

-- Location: LCCOMB_X49_Y24_N24
\brightness_loop:2:led_intensity_module|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:2:led_intensity_module|LessThan0~0_combout\ = (!\brightness_loop:4:led_intensity_module|LessThan0~3_combout\ & ((\codein[2][1]~combout\) # ((\codein[2][0]~combout\ & \brightness_loop:4:led_intensity_module|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:4:led_intensity_module|LessThan0~3_combout\,
	datab => \codein[2][1]~combout\,
	datac => \codein[2][0]~combout\,
	datad => \brightness_loop:4:led_intensity_module|LessThan0~0_combout\,
	combout => \brightness_loop:2:led_intensity_module|LessThan0~0_combout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[1][0]~I\ : cycloneii_io
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
	padio => ww_codein(1)(0),
	combout => \codein[1][0]~combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[1][1]~I\ : cycloneii_io
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
	padio => ww_codein(1)(1),
	combout => \codein[1][1]~combout\);

-- Location: LCCOMB_X37_Y24_N24
\brightness_loop:1:led_intensity_module|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:1:led_intensity_module|LessThan0~0_combout\ = (!\brightness_loop:4:led_intensity_module|LessThan0~3_combout\ & ((\codein[1][1]~combout\) # ((\codein[1][0]~combout\ & \brightness_loop:4:led_intensity_module|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness_loop:4:led_intensity_module|LessThan0~3_combout\,
	datab => \codein[1][0]~combout\,
	datac => \codein[1][1]~combout\,
	datad => \brightness_loop:4:led_intensity_module|LessThan0~0_combout\,
	combout => \brightness_loop:1:led_intensity_module|LessThan0~0_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[0][1]~I\ : cycloneii_io
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
	padio => ww_codein(0)(1),
	combout => \codein[0][1]~combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\codein[0][0]~I\ : cycloneii_io
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
	padio => ww_codein(0)(0),
	combout => \codein[0][0]~combout\);

-- Location: LCCOMB_X37_Y24_N22
\brightness_loop:0:led_intensity_module|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \brightness_loop:0:led_intensity_module|LessThan0~0_combout\ = (!\brightness_loop:4:led_intensity_module|LessThan0~3_combout\ & ((\codein[0][1]~combout\) # ((\brightness_loop:4:led_intensity_module|LessThan0~0_combout\ & \codein[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codein[0][1]~combout\,
	datab => \brightness_loop:4:led_intensity_module|LessThan0~0_combout\,
	datac => \codein[0][0]~combout\,
	datad => \brightness_loop:4:led_intensity_module|LessThan0~3_combout\,
	combout => \brightness_loop:0:led_intensity_module|LessThan0~0_combout\);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[4]~I\ : cycloneii_io
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
	datain => \brightness_loop:4:led_intensity_module|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(4));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[3]~I\ : cycloneii_io
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
	datain => \brightness_loop:3:led_intensity_module|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(3));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[2]~I\ : cycloneii_io
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
	datain => \brightness_loop:2:led_intensity_module|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(2));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[1]~I\ : cycloneii_io
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
	datain => \brightness_loop:1:led_intensity_module|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(1));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[0]~I\ : cycloneii_io
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
	datain => \brightness_loop:0:led_intensity_module|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(0));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[4][0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(4)(0));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[4][1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(4)(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[3][0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(3)(0));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[3][1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(3)(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[2][0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(2)(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[2][1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(2)(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[1][0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(1)(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[1][1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(1)(1));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[0][0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(0)(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\codeout[0][1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_codeout(0)(1));
END structure;


