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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/23/2019 14:23:51"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	send_control IS
    PORT (
	clk : IN std_logic;
	r_w : IN std_logic;
	recieve : IN std_logic;
	r_perm : OUT std_logic;
	w_perm : OUT std_logic;
	send : OUT std_logic
	);
END send_control;

-- Design Ports Information
-- r_perm	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_perm	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- send	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r_w	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- recieve	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF send_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_r_w : std_logic;
SIGNAL ww_recieve : std_logic;
SIGNAL ww_r_perm : std_logic;
SIGNAL ww_w_perm : std_logic;
SIGNAL ww_send : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[1]~26_combout\ : std_logic;
SIGNAL \count[2]~28_combout\ : std_logic;
SIGNAL \count[4]~32_combout\ : std_logic;
SIGNAL \count[6]~36_combout\ : std_logic;
SIGNAL \count[8]~40_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \recieve~combout\ : std_logic;
SIGNAL \count[0]~24_combout\ : std_logic;
SIGNAL \count[13]~50_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count[16]~56_combout\ : std_logic;
SIGNAL \count[22]~68_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \count[0]~25\ : std_logic;
SIGNAL \count[1]~27\ : std_logic;
SIGNAL \count[2]~29\ : std_logic;
SIGNAL \count[3]~30_combout\ : std_logic;
SIGNAL \count[3]~31\ : std_logic;
SIGNAL \count[4]~33\ : std_logic;
SIGNAL \count[5]~34_combout\ : std_logic;
SIGNAL \count[5]~35\ : std_logic;
SIGNAL \count[6]~37\ : std_logic;
SIGNAL \count[7]~38_combout\ : std_logic;
SIGNAL \count[7]~39\ : std_logic;
SIGNAL \count[8]~41\ : std_logic;
SIGNAL \count[9]~42_combout\ : std_logic;
SIGNAL \count[9]~43\ : std_logic;
SIGNAL \count[10]~44_combout\ : std_logic;
SIGNAL \count[10]~45\ : std_logic;
SIGNAL \count[11]~46_combout\ : std_logic;
SIGNAL \count[11]~47\ : std_logic;
SIGNAL \count[12]~48_combout\ : std_logic;
SIGNAL \count[12]~49\ : std_logic;
SIGNAL \count[13]~51\ : std_logic;
SIGNAL \count[14]~52_combout\ : std_logic;
SIGNAL \count[14]~53\ : std_logic;
SIGNAL \count[15]~55\ : std_logic;
SIGNAL \count[16]~57\ : std_logic;
SIGNAL \count[17]~58_combout\ : std_logic;
SIGNAL \count[17]~59\ : std_logic;
SIGNAL \count[18]~61\ : std_logic;
SIGNAL \count[19]~62_combout\ : std_logic;
SIGNAL \count[19]~63\ : std_logic;
SIGNAL \count[20]~65\ : std_logic;
SIGNAL \count[21]~67\ : std_logic;
SIGNAL \count[22]~69\ : std_logic;
SIGNAL \count[23]~70_combout\ : std_logic;
SIGNAL \count[20]~64_combout\ : std_logic;
SIGNAL \count[21]~66_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \count[18]~60_combout\ : std_logic;
SIGNAL \count[15]~54_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \r_perm~0_combout\ : std_logic;
SIGNAL \r_perm~reg0_regout\ : std_logic;
SIGNAL \w_perm~0_combout\ : std_logic;
SIGNAL \w_perm~reg0_regout\ : std_logic;
SIGNAL \r_w~combout\ : std_logic;
SIGNAL count : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_r_w <= r_w;
ww_recieve <= recieve;
r_perm <= ww_r_perm;
w_perm <= ww_w_perm;
send <= ww_send;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: LCFF_X48_Y8_N21
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[6]~36_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCFF_X48_Y8_N25
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[8]~40_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCFF_X48_Y8_N17
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[4]~32_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCFF_X48_Y8_N13
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[2]~28_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCFF_X48_Y8_N11
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[1]~26_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X48_Y8_N10
\count[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~26_combout\ = (count(1) & (!\count[0]~25\)) # (!count(1) & ((\count[0]~25\) # (GND)))
-- \count[1]~27\ = CARRY((!\count[0]~25\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~25\,
	combout => \count[1]~26_combout\,
	cout => \count[1]~27\);

-- Location: LCCOMB_X48_Y8_N12
\count[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~28_combout\ = (count(2) & (\count[1]~27\ $ (GND))) # (!count(2) & (!\count[1]~27\ & VCC))
-- \count[2]~29\ = CARRY((count(2) & !\count[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~27\,
	combout => \count[2]~28_combout\,
	cout => \count[2]~29\);

-- Location: LCCOMB_X48_Y8_N16
\count[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~32_combout\ = (count(4) & (\count[3]~31\ $ (GND))) # (!count(4) & (!\count[3]~31\ & VCC))
-- \count[4]~33\ = CARRY((count(4) & !\count[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~31\,
	combout => \count[4]~32_combout\,
	cout => \count[4]~33\);

-- Location: LCCOMB_X48_Y8_N20
\count[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~36_combout\ = (count(6) & (\count[5]~35\ $ (GND))) # (!count(6) & (!\count[5]~35\ & VCC))
-- \count[6]~37\ = CARRY((count(6) & !\count[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~35\,
	combout => \count[6]~36_combout\,
	cout => \count[6]~37\);

-- Location: LCCOMB_X48_Y8_N24
\count[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~40_combout\ = (count(8) & (\count[7]~39\ $ (GND))) # (!count(8) & (!\count[7]~39\ & VCC))
-- \count[8]~41\ = CARRY((count(8) & !\count[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~39\,
	combout => \count[8]~40_combout\,
	cout => \count[8]~41\);

-- Location: LCCOMB_X48_Y8_N6
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!count(6) & (!count(5) & (!count(8) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(5),
	datac => count(8),
	datad => count(7),
	combout => \LessThan0~2_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\recieve~I\ : cycloneii_io
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
	padio => ww_recieve,
	combout => \recieve~combout\);

-- Location: LCCOMB_X48_Y8_N8
\count[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~24_combout\ = count(0) $ (VCC)
-- \count[0]~25\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~24_combout\,
	cout => \count[0]~25\);

-- Location: LCCOMB_X48_Y7_N2
\count[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~50_combout\ = (count(13) & (!\count[12]~49\)) # (!count(13) & ((\count[12]~49\) # (GND)))
-- \count[13]~51\ = CARRY((!\count[12]~49\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~49\,
	combout => \count[13]~50_combout\,
	cout => \count[13]~51\);

-- Location: LCFF_X49_Y8_N15
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \count[13]~50_combout\,
	sclr => \LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X48_Y8_N4
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!count(10)) # (!count(13))) # (!count(11))) # (!count(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(11),
	datac => count(13),
	datad => count(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y7_N8
\count[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~56_combout\ = (count(16) & (\count[15]~55\ $ (GND))) # (!count(16) & (!\count[15]~55\ & VCC))
-- \count[16]~57\ = CARRY((count(16) & !\count[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~55\,
	combout => \count[16]~56_combout\,
	cout => \count[16]~57\);

-- Location: LCFF_X48_Y7_N9
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[16]~56_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X48_Y7_N20
\count[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~68_combout\ = (count(22) & (\count[21]~67\ $ (GND))) # (!count(22) & (!\count[21]~67\ & VCC))
-- \count[22]~69\ = CARRY((count(22) & !\count[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~67\,
	combout => \count[22]~68_combout\,
	cout => \count[22]~69\);

-- Location: LCFF_X48_Y7_N21
\count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[22]~68_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LCCOMB_X48_Y7_N28
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(14) & (!count(16) & !count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datac => count(16),
	datad => count(22),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y8_N0
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\ & !count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => count(9),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X48_Y8_N2
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\LessThan0~6_combout\ & !\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCFF_X48_Y8_N9
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[0]~24_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X48_Y8_N14
\count[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~30_combout\ = (count(3) & (!\count[2]~29\)) # (!count(3) & ((\count[2]~29\) # (GND)))
-- \count[3]~31\ = CARRY((!\count[2]~29\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~29\,
	combout => \count[3]~30_combout\,
	cout => \count[3]~31\);

-- Location: LCFF_X48_Y8_N15
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[3]~30_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCCOMB_X48_Y8_N18
\count[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~34_combout\ = (count(5) & (!\count[4]~33\)) # (!count(5) & ((\count[4]~33\) # (GND)))
-- \count[5]~35\ = CARRY((!\count[4]~33\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~33\,
	combout => \count[5]~34_combout\,
	cout => \count[5]~35\);

-- Location: LCFF_X48_Y8_N19
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[5]~34_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCCOMB_X48_Y8_N22
\count[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~38_combout\ = (count(7) & (!\count[6]~37\)) # (!count(7) & ((\count[6]~37\) # (GND)))
-- \count[7]~39\ = CARRY((!\count[6]~37\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~37\,
	combout => \count[7]~38_combout\,
	cout => \count[7]~39\);

-- Location: LCFF_X48_Y8_N23
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[7]~38_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X48_Y8_N26
\count[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~42_combout\ = (count(9) & (!\count[8]~41\)) # (!count(9) & ((\count[8]~41\) # (GND)))
-- \count[9]~43\ = CARRY((!\count[8]~41\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~41\,
	combout => \count[9]~42_combout\,
	cout => \count[9]~43\);

-- Location: LCFF_X48_Y8_N27
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[9]~42_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X48_Y8_N28
\count[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~44_combout\ = (count(10) & (\count[9]~43\ $ (GND))) # (!count(10) & (!\count[9]~43\ & VCC))
-- \count[10]~45\ = CARRY((count(10) & !\count[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~43\,
	combout => \count[10]~44_combout\,
	cout => \count[10]~45\);

-- Location: LCFF_X48_Y8_N29
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[10]~44_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X48_Y8_N30
\count[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~46_combout\ = (count(11) & (!\count[10]~45\)) # (!count(11) & ((\count[10]~45\) # (GND)))
-- \count[11]~47\ = CARRY((!\count[10]~45\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~45\,
	combout => \count[11]~46_combout\,
	cout => \count[11]~47\);

-- Location: LCFF_X48_Y8_N31
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[11]~46_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X48_Y7_N0
\count[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~48_combout\ = (count(12) & (\count[11]~47\ $ (GND))) # (!count(12) & (!\count[11]~47\ & VCC))
-- \count[12]~49\ = CARRY((count(12) & !\count[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~47\,
	combout => \count[12]~48_combout\,
	cout => \count[12]~49\);

-- Location: LCFF_X49_Y8_N17
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \count[12]~48_combout\,
	sclr => \LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X48_Y7_N4
\count[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~52_combout\ = (count(14) & (\count[13]~51\ $ (GND))) # (!count(14) & (!\count[13]~51\ & VCC))
-- \count[14]~53\ = CARRY((count(14) & !\count[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~51\,
	combout => \count[14]~52_combout\,
	cout => \count[14]~53\);

-- Location: LCFF_X48_Y7_N5
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[14]~52_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X48_Y7_N6
\count[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~54_combout\ = (count(15) & (!\count[14]~53\)) # (!count(15) & ((\count[14]~53\) # (GND)))
-- \count[15]~55\ = CARRY((!\count[14]~53\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~53\,
	combout => \count[15]~54_combout\,
	cout => \count[15]~55\);

-- Location: LCCOMB_X48_Y7_N10
\count[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[17]~58_combout\ = (count(17) & (!\count[16]~57\)) # (!count(17) & ((\count[16]~57\) # (GND)))
-- \count[17]~59\ = CARRY((!\count[16]~57\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~57\,
	combout => \count[17]~58_combout\,
	cout => \count[17]~59\);

-- Location: LCFF_X48_Y7_N11
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[17]~58_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCCOMB_X48_Y7_N12
\count[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[18]~60_combout\ = (count(18) & (\count[17]~59\ $ (GND))) # (!count(18) & (!\count[17]~59\ & VCC))
-- \count[18]~61\ = CARRY((count(18) & !\count[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~59\,
	combout => \count[18]~60_combout\,
	cout => \count[18]~61\);

-- Location: LCCOMB_X48_Y7_N14
\count[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[19]~62_combout\ = (count(19) & (!\count[18]~61\)) # (!count(19) & ((\count[18]~61\) # (GND)))
-- \count[19]~63\ = CARRY((!\count[18]~61\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~61\,
	combout => \count[19]~62_combout\,
	cout => \count[19]~63\);

-- Location: LCFF_X48_Y7_N15
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[19]~62_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCCOMB_X48_Y7_N16
\count[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~64_combout\ = (count(20) & (\count[19]~63\ $ (GND))) # (!count(20) & (!\count[19]~63\ & VCC))
-- \count[20]~65\ = CARRY((count(20) & !\count[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~63\,
	combout => \count[20]~64_combout\,
	cout => \count[20]~65\);

-- Location: LCCOMB_X48_Y7_N18
\count[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[21]~66_combout\ = (count(21) & (!\count[20]~65\)) # (!count(21) & ((\count[20]~65\) # (GND)))
-- \count[21]~67\ = CARRY((!\count[20]~65\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~65\,
	combout => \count[21]~66_combout\,
	cout => \count[21]~67\);

-- Location: LCCOMB_X48_Y7_N22
\count[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[23]~70_combout\ = \count[22]~69\ $ (count(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(23),
	cin => \count[22]~69\,
	combout => \count[23]~70_combout\);

-- Location: LCFF_X48_Y7_N23
\count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[23]~70_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LCFF_X48_Y7_N17
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[20]~64_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCFF_X48_Y7_N19
\count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[21]~66_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LCCOMB_X48_Y7_N24
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!count(21)) # (!count(20))) # (!count(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datac => count(20),
	datad => count(21),
	combout => \LessThan0~5_combout\);

-- Location: LCFF_X48_Y7_N13
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[18]~60_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCFF_X48_Y7_N7
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[15]~54_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X48_Y7_N30
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!count(16) & !count(15))) # (!count(18))) # (!count(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(16),
	datac => count(18),
	datad => count(15),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X48_Y7_N26
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!count(22) & ((\LessThan0~5_combout\) # (\LessThan0~4_combout\)))) # (!count(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(23),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X49_Y8_N24
\r_perm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_perm~0_combout\ = (\recieve~combout\ & (((\r_perm~reg0_regout\)))) # (!\recieve~combout\ & (!\LessThan0~3_combout\ & ((!\LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \recieve~combout\,
	datac => \r_perm~reg0_regout\,
	datad => \LessThan0~6_combout\,
	combout => \r_perm~0_combout\);

-- Location: LCFF_X49_Y8_N25
\r_perm~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \r_perm~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_perm~reg0_regout\);

-- Location: LCCOMB_X49_Y8_N26
\w_perm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \w_perm~0_combout\ = (\recieve~combout\ & (!\LessThan0~3_combout\ & ((!\LessThan0~6_combout\)))) # (!\recieve~combout\ & (((\w_perm~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \recieve~combout\,
	datac => \w_perm~reg0_regout\,
	datad => \LessThan0~6_combout\,
	combout => \w_perm~0_combout\);

-- Location: LCFF_X49_Y8_N27
\w_perm~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \w_perm~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \w_perm~reg0_regout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\r_w~I\ : cycloneii_io
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
	padio => ww_r_w,
	combout => \r_w~combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r_perm~I\ : cycloneii_io
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
	datain => \r_perm~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r_perm);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\w_perm~I\ : cycloneii_io
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
	datain => \w_perm~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_w_perm);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\send~I\ : cycloneii_io
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
	datain => \r_w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_send);
END structure;


