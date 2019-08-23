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

-- DATE "08/23/2019 17:28:32"

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
SIGNAL \count[8]~42_combout\ : std_logic;
SIGNAL \count[18]~62_combout\ : std_logic;
SIGNAL \count[22]~70_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \w_perm~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~24_combout\ : std_logic;
SIGNAL \recieve~combout\ : std_logic;
SIGNAL \count[11]~49\ : std_logic;
SIGNAL \count[12]~50_combout\ : std_logic;
SIGNAL \count[12]~51\ : std_logic;
SIGNAL \count[13]~52_combout\ : std_logic;
SIGNAL \count[13]~53\ : std_logic;
SIGNAL \count[14]~54_combout\ : std_logic;
SIGNAL \count[14]~55\ : std_logic;
SIGNAL \count[15]~56_combout\ : std_logic;
SIGNAL \count[15]~57\ : std_logic;
SIGNAL \count[16]~58_combout\ : std_logic;
SIGNAL \count[16]~59\ : std_logic;
SIGNAL \count[17]~61\ : std_logic;
SIGNAL \count[18]~63\ : std_logic;
SIGNAL \count[19]~64_combout\ : std_logic;
SIGNAL \count[19]~65\ : std_logic;
SIGNAL \count[20]~67\ : std_logic;
SIGNAL \count[21]~68_combout\ : std_logic;
SIGNAL \count[21]~69\ : std_logic;
SIGNAL \count[22]~71\ : std_logic;
SIGNAL \count[23]~72_combout\ : std_logic;
SIGNAL \count[20]~66_combout\ : std_logic;
SIGNAL \count[17]~60_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \count[23]~30_combout\ : std_logic;
SIGNAL \count[10]~46_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \count[23]~31_combout\ : std_logic;
SIGNAL \count[0]~25\ : std_logic;
SIGNAL \count[1]~27\ : std_logic;
SIGNAL \count[2]~28_combout\ : std_logic;
SIGNAL \count[2]~29\ : std_logic;
SIGNAL \count[3]~32_combout\ : std_logic;
SIGNAL \count[3]~33\ : std_logic;
SIGNAL \count[4]~35\ : std_logic;
SIGNAL \count[5]~36_combout\ : std_logic;
SIGNAL \count[5]~37\ : std_logic;
SIGNAL \count[6]~38_combout\ : std_logic;
SIGNAL \count[6]~39\ : std_logic;
SIGNAL \count[7]~40_combout\ : std_logic;
SIGNAL \count[7]~41\ : std_logic;
SIGNAL \count[8]~43\ : std_logic;
SIGNAL \count[9]~44_combout\ : std_logic;
SIGNAL \count[9]~45\ : std_logic;
SIGNAL \count[10]~47\ : std_logic;
SIGNAL \count[11]~48_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count[4]~34_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \r_perm~0_combout\ : std_logic;
SIGNAL \r_perm~reg0_regout\ : std_logic;
SIGNAL \w_perm~1_combout\ : std_logic;
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

-- Location: LCFF_X23_Y22_N25
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[8]~42_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCFF_X23_Y21_N13
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[18]~62_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCFF_X23_Y21_N21
\count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[22]~70_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LCFF_X23_Y22_N11
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[1]~26_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X23_Y22_N10
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

-- Location: LCCOMB_X23_Y22_N24
\count[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~42_combout\ = (count(8) & (\count[7]~41\ $ (GND))) # (!count(8) & (!\count[7]~41\ & VCC))
-- \count[8]~43\ = CARRY((count(8) & !\count[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~41\,
	combout => \count[8]~42_combout\,
	cout => \count[8]~43\);

-- Location: LCCOMB_X23_Y21_N12
\count[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[18]~62_combout\ = (count(18) & (\count[17]~61\ $ (GND))) # (!count(18) & (!\count[17]~61\ & VCC))
-- \count[18]~63\ = CARRY((count(18) & !\count[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~61\,
	combout => \count[18]~62_combout\,
	cout => \count[18]~63\);

-- Location: LCCOMB_X23_Y21_N20
\count[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~70_combout\ = (count(22) & (\count[21]~69\ $ (GND))) # (!count(22) & (!\count[21]~69\ & VCC))
-- \count[22]~71\ = CARRY((count(22) & !\count[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~69\,
	combout => \count[22]~70_combout\,
	cout => \count[22]~71\);

-- Location: LCCOMB_X23_Y22_N6
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!count(7) & (!count(8) & !count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datac => count(8),
	datad => count(9),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y21_N16
\w_perm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \w_perm~0_combout\ = (\recieve~combout\ & (count(22) & ((count(23))))) # (!\recieve~combout\ & (((\w_perm~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \recieve~combout\,
	datac => \w_perm~reg0_regout\,
	datad => count(23),
	combout => \w_perm~0_combout\);

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

-- Location: LCCOMB_X23_Y22_N8
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

-- Location: LCCOMB_X23_Y22_N30
\count[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~48_combout\ = (count(11) & (!\count[10]~47\)) # (!count(11) & ((\count[10]~47\) # (GND)))
-- \count[11]~49\ = CARRY((!\count[10]~47\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~47\,
	combout => \count[11]~48_combout\,
	cout => \count[11]~49\);

-- Location: LCCOMB_X23_Y21_N0
\count[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~50_combout\ = (count(12) & (\count[11]~49\ $ (GND))) # (!count(12) & (!\count[11]~49\ & VCC))
-- \count[12]~51\ = CARRY((count(12) & !\count[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~49\,
	combout => \count[12]~50_combout\,
	cout => \count[12]~51\);

-- Location: LCFF_X23_Y21_N1
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[12]~50_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X23_Y21_N2
\count[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~52_combout\ = (count(13) & (!\count[12]~51\)) # (!count(13) & ((\count[12]~51\) # (GND)))
-- \count[13]~53\ = CARRY((!\count[12]~51\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~51\,
	combout => \count[13]~52_combout\,
	cout => \count[13]~53\);

-- Location: LCFF_X23_Y21_N3
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[13]~52_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X23_Y21_N4
\count[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~54_combout\ = (count(14) & (\count[13]~53\ $ (GND))) # (!count(14) & (!\count[13]~53\ & VCC))
-- \count[14]~55\ = CARRY((count(14) & !\count[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~53\,
	combout => \count[14]~54_combout\,
	cout => \count[14]~55\);

-- Location: LCFF_X23_Y21_N5
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[14]~54_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X23_Y21_N6
\count[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~56_combout\ = (count(15) & (!\count[14]~55\)) # (!count(15) & ((\count[14]~55\) # (GND)))
-- \count[15]~57\ = CARRY((!\count[14]~55\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~55\,
	combout => \count[15]~56_combout\,
	cout => \count[15]~57\);

-- Location: LCFF_X23_Y21_N7
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[15]~56_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X23_Y21_N8
\count[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~58_combout\ = (count(16) & (\count[15]~57\ $ (GND))) # (!count(16) & (!\count[15]~57\ & VCC))
-- \count[16]~59\ = CARRY((count(16) & !\count[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~57\,
	combout => \count[16]~58_combout\,
	cout => \count[16]~59\);

-- Location: LCFF_X23_Y21_N9
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[16]~58_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X23_Y21_N10
\count[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[17]~60_combout\ = (count(17) & (!\count[16]~59\)) # (!count(17) & ((\count[16]~59\) # (GND)))
-- \count[17]~61\ = CARRY((!\count[16]~59\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~59\,
	combout => \count[17]~60_combout\,
	cout => \count[17]~61\);

-- Location: LCCOMB_X23_Y21_N14
\count[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[19]~64_combout\ = (count(19) & (!\count[18]~63\)) # (!count(19) & ((\count[18]~63\) # (GND)))
-- \count[19]~65\ = CARRY((!\count[18]~63\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~63\,
	combout => \count[19]~64_combout\,
	cout => \count[19]~65\);

-- Location: LCFF_X23_Y21_N15
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[19]~64_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCCOMB_X23_Y21_N16
\count[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~66_combout\ = (count(20) & (\count[19]~65\ $ (GND))) # (!count(20) & (!\count[19]~65\ & VCC))
-- \count[20]~67\ = CARRY((count(20) & !\count[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~65\,
	combout => \count[20]~66_combout\,
	cout => \count[20]~67\);

-- Location: LCCOMB_X23_Y21_N18
\count[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[21]~68_combout\ = (count(21) & (!\count[20]~67\)) # (!count(21) & ((\count[20]~67\) # (GND)))
-- \count[21]~69\ = CARRY((!\count[20]~67\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~67\,
	combout => \count[21]~68_combout\,
	cout => \count[21]~69\);

-- Location: LCFF_X23_Y21_N19
\count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[21]~68_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LCCOMB_X23_Y21_N22
\count[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[23]~72_combout\ = \count[22]~71\ $ (count(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(23),
	cin => \count[22]~71\,
	combout => \count[23]~72_combout\);

-- Location: LCFF_X23_Y21_N23
\count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[23]~72_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LCFF_X23_Y21_N17
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[20]~66_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCFF_X23_Y21_N11
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[17]~60_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCCOMB_X23_Y21_N24
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (count(18)) # ((count(19)) # ((count(20)) # (count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(19),
	datac => count(20),
	datad => count(17),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y21_N30
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (count(22)) # ((count(23)) # ((\LessThan0~3_combout\) # (count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(23),
	datac => \LessThan0~3_combout\,
	datad => count(21),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y21_N4
\count[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[23]~30_combout\ = (\recieve~combout\ & (!count(23))) # (!\recieve~combout\ & (((!\LessThan0~4_combout\ & !\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recieve~combout\,
	datab => count(23),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \count[23]~30_combout\);

-- Location: LCCOMB_X23_Y22_N28
\count[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~46_combout\ = (count(10) & (\count[9]~45\ $ (GND))) # (!count(10) & (!\count[9]~45\ & VCC))
-- \count[10]~47\ = CARRY((count(10) & !\count[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~45\,
	combout => \count[10]~46_combout\,
	cout => \count[10]~47\);

-- Location: LCFF_X23_Y22_N29
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[10]~46_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X24_Y21_N22
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (count(13) & (count(11) & (count(10) & count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(11),
	datac => count(10),
	datad => count(12),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y21_N26
\LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ((!count(21)) # (!count(20))) # (!count(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datac => count(20),
	datad => count(21),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y21_N20
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!count(6) & (!count(5) & (!count(14) & !count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(5),
	datac => count(14),
	datad => count(16),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!count(16) & !count(15))) # (!count(17))) # (!count(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(16),
	datac => count(15),
	datad => count(17),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y21_N12
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~4_combout\) # ((\LessThan1~3_combout\) # ((\LessThan1~1_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~4_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X24_Y21_N6
\LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (\LessThan1~5_combout\) # ((!count(16) & (!\LessThan1~2_combout\ & !count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => \LessThan1~2_combout\,
	datac => count(14),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X24_Y21_N18
\count[23]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[23]~31_combout\ = (!\count[23]~30_combout\ & ((count(22)) # ((!\LessThan1~6_combout\) # (!\recieve~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \recieve~combout\,
	datac => \count[23]~30_combout\,
	datad => \LessThan1~6_combout\,
	combout => \count[23]~31_combout\);

-- Location: LCFF_X23_Y22_N9
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[0]~24_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X23_Y22_N12
\count[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~28_combout\ = (count(2) & (\count[1]~27\ $ (GND))) # (!count(2) & (!\count[1]~27\ & VCC))
-- \count[2]~29\ = CARRY((count(2) & !\count[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~27\,
	combout => \count[2]~28_combout\,
	cout => \count[2]~29\);

-- Location: LCFF_X23_Y22_N13
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[2]~28_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X23_Y22_N14
\count[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~32_combout\ = (count(3) & (!\count[2]~29\)) # (!count(3) & ((\count[2]~29\) # (GND)))
-- \count[3]~33\ = CARRY((!\count[2]~29\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~29\,
	combout => \count[3]~32_combout\,
	cout => \count[3]~33\);

-- Location: LCFF_X23_Y22_N15
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[3]~32_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCCOMB_X23_Y22_N16
\count[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~34_combout\ = (count(4) & (\count[3]~33\ $ (GND))) # (!count(4) & (!\count[3]~33\ & VCC))
-- \count[4]~35\ = CARRY((count(4) & !\count[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~33\,
	combout => \count[4]~34_combout\,
	cout => \count[4]~35\);

-- Location: LCCOMB_X23_Y22_N18
\count[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~36_combout\ = (count(5) & (!\count[4]~35\)) # (!count(5) & ((\count[4]~35\) # (GND)))
-- \count[5]~37\ = CARRY((!\count[4]~35\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~35\,
	combout => \count[5]~36_combout\,
	cout => \count[5]~37\);

-- Location: LCFF_X24_Y21_N31
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \count[5]~36_combout\,
	sclr => \count[23]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCCOMB_X23_Y22_N20
\count[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~38_combout\ = (count(6) & (\count[5]~37\ $ (GND))) # (!count(6) & (!\count[5]~37\ & VCC))
-- \count[6]~39\ = CARRY((count(6) & !\count[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~37\,
	combout => \count[6]~38_combout\,
	cout => \count[6]~39\);

-- Location: LCFF_X24_Y21_N25
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \count[6]~38_combout\,
	sclr => \count[23]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X23_Y22_N22
\count[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~40_combout\ = (count(7) & (!\count[6]~39\)) # (!count(7) & ((\count[6]~39\) # (GND)))
-- \count[7]~41\ = CARRY((!\count[6]~39\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~39\,
	combout => \count[7]~40_combout\,
	cout => \count[7]~41\);

-- Location: LCFF_X23_Y22_N23
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[7]~40_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X23_Y22_N26
\count[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~44_combout\ = (count(9) & (!\count[8]~43\)) # (!count(9) & ((\count[8]~43\) # (GND)))
-- \count[9]~45\ = CARRY((!\count[8]~43\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~43\,
	combout => \count[9]~44_combout\,
	cout => \count[9]~45\);

-- Location: LCFF_X23_Y22_N27
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[9]~44_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCFF_X24_Y21_N29
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \count[11]~48_combout\,
	sclr => \count[23]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X24_Y21_N14
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (count(13)) # ((count(11)) # ((count(15)) # (count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(11),
	datac => count(15),
	datad => count(12),
	combout => \LessThan0~1_combout\);

-- Location: LCFF_X23_Y22_N17
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \count[4]~34_combout\,
	sclr => \count[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X23_Y22_N4
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (count(10)) # ((count(3)) # ((count(4)) # (count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(3),
	datac => count(4),
	datad => count(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y21_N10
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\LessThan0~1_combout\) # ((\LessThan0~0_combout\) # (!\LessThan1~0_combout\))) # (!\LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y21_N26
\r_perm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_perm~0_combout\ = (\recieve~combout\ & (((\r_perm~reg0_regout\)))) # (!\recieve~combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recieve~combout\,
	datab => \LessThan0~2_combout\,
	datac => \r_perm~reg0_regout\,
	datad => \LessThan0~4_combout\,
	combout => \r_perm~0_combout\);

-- Location: LCFF_X24_Y21_N27
\r_perm~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \r_perm~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_perm~reg0_regout\);

-- Location: LCCOMB_X24_Y21_N8
\w_perm~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \w_perm~1_combout\ = (\w_perm~0_combout\) # ((count(23) & (\recieve~combout\ & !\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_perm~0_combout\,
	datab => count(23),
	datac => \recieve~combout\,
	datad => \LessThan1~6_combout\,
	combout => \w_perm~1_combout\);

-- Location: LCFF_X24_Y21_N9
\w_perm~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \w_perm~1_combout\,
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


