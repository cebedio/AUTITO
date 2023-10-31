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

-- DATE "10/29/2023 16:57:14"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	autito_principal IS
    PORT (
	En_A : OUT std_logic;
	RESET : IN std_logic;
	CLK : IN std_logic;
	STOP : IN std_logic;
	SENSOR : IN std_logic_vector(1 DOWNTO 0);
	En_B : OUT std_logic;
	IN_DRIVER : OUT std_logic_vector(3 DOWNTO 0)
	);
END autito_principal;

-- Design Ports Information
-- En_A	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En_B	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_DRIVER[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_DRIVER[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_DRIVER[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_DRIVER[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOP	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF autito_principal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_En_A : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_STOP : std_logic;
SIGNAL ww_SENSOR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_En_B : std_logic;
SIGNAL ww_IN_DRIVER : std_logic_vector(3 DOWNTO 0);
SIGNAL \DERECHO|inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERECHO|inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state4~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state13~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|WideOr18~0_combout\ : std_logic;
SIGNAL \inst1|fstate.RECTA~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state14~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|WideOr18~1_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state15~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|Z[0]~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst3~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst3~1_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state8~q\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state3~q\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state13~q\ : std_logic;
SIGNAL \DERECHO|inst|WideOr18~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state14~q\ : std_logic;
SIGNAL \DERECHO|inst|WideOr18~1_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state15~q\ : std_logic;
SIGNAL \DERECHO|inst|Z[0]~0_combout\ : std_logic;
SIGNAL \DERECHO|inst3~0_combout\ : std_logic;
SIGNAL \DERECHO|inst3~1_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state4~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state13~0_combout\ : std_logic;
SIGNAL \inst1|reg_fstate.RECTA~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state14~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state15~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state8~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state3~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state13~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state14~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state15~0_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \STOP~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state11~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state11~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state12~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state12~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state9~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state9~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state10~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state10~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|WideOr17~1_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state5~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state5~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state6~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state6~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state7~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state7~q\ : std_logic;
SIGNAL \IZQUIERDO|inst3~2_combout\ : std_logic;
SIGNAL \SENSOR[1]~input_o\ : std_logic;
SIGNAL \SENSOR[0]~input_o\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|fstate.IZQ~q\ : std_logic;
SIGNAL \IZQUIERDO|inst3~3_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state16~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state16~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state1~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state1~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state2~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state2~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|reg_fstate.state3~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst|fstate.state3~q\ : std_logic;
SIGNAL \IZQUIERDO|inst|WideOr17~0_combout\ : std_logic;
SIGNAL \IZQUIERDO|inst3~4_combout\ : std_logic;
SIGNAL \inst1|reg_fstate.DER~0_combout\ : std_logic;
SIGNAL \inst1|fstate.DER~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state5~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state5~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state6~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state6~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state7~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state7~q\ : std_logic;
SIGNAL \DERECHO|inst3~2_combout\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state8~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state8~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state9~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state9~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state12~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state12~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state10~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state10~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state11~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state11~q\ : std_logic;
SIGNAL \DERECHO|inst|WideOr17~1_combout\ : std_logic;
SIGNAL \DERECHO|inst3~3_combout\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state16~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state16~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state1~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state1~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state2~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state2~q\ : std_logic;
SIGNAL \DERECHO|inst|reg_fstate.state4~0_combout\ : std_logic;
SIGNAL \DERECHO|inst|fstate.state4~q\ : std_logic;
SIGNAL \DERECHO|inst|WideOr17~0_combout\ : std_logic;
SIGNAL \DERECHO|inst3~4_combout\ : std_logic;
SIGNAL \inst1|reg_fstate.ATRAS~0_combout\ : std_logic;
SIGNAL \inst1|fstate.ATRAS~q\ : std_logic;
SIGNAL \inst1|IN_A[3]~0_combout\ : std_logic;
SIGNAL \inst1|IN_A[2]~1_combout\ : std_logic;
SIGNAL \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_IN_A[3]~0_combout\ : std_logic;

BEGIN

En_A <= ww_En_A;
ww_RESET <= RESET;
ww_CLK <= CLK;
ww_STOP <= STOP;
ww_SENSOR <= SENSOR;
En_B <= ww_En_B;
IN_DRIVER <= ww_IN_DRIVER;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DERECHO|inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \DERECHO|inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \DERECHO|inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \DERECHO|inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \DERECHO|inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \DERECHO|inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\inst1|ALT_INV_IN_A[3]~0_combout\ <= NOT \inst1|IN_A[3]~0_combout\;

-- Location: PLL_4
\DERECHO|inst1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 1,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 125,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5561,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \DERECHO|inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \DERECHO|inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: FF_X49_Y25_N7
\IZQUIERDO|inst|fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state4~q\);

-- Location: FF_X48_Y25_N19
\IZQUIERDO|inst|fstate.state13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state13~q\);

-- Location: LCCOMB_X48_Y25_N12
\IZQUIERDO|inst|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|WideOr18~0_combout\ = (!\IZQUIERDO|inst|fstate.state13~q\ & (!\IZQUIERDO|inst|fstate.state9~q\ & (!\IZQUIERDO|inst|fstate.state5~q\ & \IZQUIERDO|inst|fstate.state1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state13~q\,
	datab => \IZQUIERDO|inst|fstate.state9~q\,
	datac => \IZQUIERDO|inst|fstate.state5~q\,
	datad => \IZQUIERDO|inst|fstate.state1~q\,
	combout => \IZQUIERDO|inst|WideOr18~0_combout\);

-- Location: FF_X48_Y26_N19
\inst1|fstate.RECTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_fstate.RECTA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.RECTA~q\);

-- Location: FF_X48_Y25_N11
\IZQUIERDO|inst|fstate.state14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state14~q\);

-- Location: LCCOMB_X48_Y25_N28
\IZQUIERDO|inst|WideOr18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|WideOr18~1_combout\ = (!\IZQUIERDO|inst|fstate.state14~q\ & (!\IZQUIERDO|inst|fstate.state6~q\ & (!\IZQUIERDO|inst|fstate.state10~q\ & !\IZQUIERDO|inst|fstate.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state14~q\,
	datab => \IZQUIERDO|inst|fstate.state6~q\,
	datac => \IZQUIERDO|inst|fstate.state10~q\,
	datad => \IZQUIERDO|inst|fstate.state2~q\,
	combout => \IZQUIERDO|inst|WideOr18~1_combout\);

-- Location: FF_X48_Y25_N3
\IZQUIERDO|inst|fstate.state15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state15~q\);

-- Location: LCCOMB_X48_Y25_N4
\IZQUIERDO|inst|Z[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|Z[0]~0_combout\ = (!\IZQUIERDO|inst|fstate.state11~q\ & (!\IZQUIERDO|inst|fstate.state15~q\ & (!\IZQUIERDO|inst|fstate.state7~q\ & !\IZQUIERDO|inst|fstate.state3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state11~q\,
	datab => \IZQUIERDO|inst|fstate.state15~q\,
	datac => \IZQUIERDO|inst|fstate.state7~q\,
	datad => \IZQUIERDO|inst|fstate.state3~q\,
	combout => \IZQUIERDO|inst|Z[0]~0_combout\);

-- Location: LCCOMB_X48_Y26_N28
\IZQUIERDO|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst3~0_combout\ = (\IZQUIERDO|inst|WideOr18~1_combout\ & ((\IZQUIERDO|inst|Z[0]~0_combout\) # (\inst1|fstate.RECTA~q\))) # (!\IZQUIERDO|inst|WideOr18~1_combout\ & (\IZQUIERDO|inst|Z[0]~0_combout\ & \inst1|fstate.RECTA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IZQUIERDO|inst|WideOr18~1_combout\,
	datac => \IZQUIERDO|inst|Z[0]~0_combout\,
	datad => \inst1|fstate.RECTA~q\,
	combout => \IZQUIERDO|inst3~0_combout\);

-- Location: LCCOMB_X48_Y26_N6
\IZQUIERDO|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst3~1_combout\ = (\IZQUIERDO|inst|WideOr18~0_combout\ & (!\IZQUIERDO|inst3~0_combout\ & ((\inst1|fstate.IZQ~q\) # (!\inst1|fstate.RECTA~q\)))) # (!\IZQUIERDO|inst|WideOr18~0_combout\ & (((\inst1|fstate.IZQ~q\)) # (!\inst1|fstate.RECTA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|WideOr18~0_combout\,
	datab => \inst1|fstate.RECTA~q\,
	datac => \IZQUIERDO|inst3~0_combout\,
	datad => \inst1|fstate.IZQ~q\,
	combout => \IZQUIERDO|inst3~1_combout\);

-- Location: FF_X48_Y25_N27
\IZQUIERDO|inst|fstate.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state8~q\);

-- Location: FF_X50_Y26_N13
\DERECHO|inst|fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state3~q\);

-- Location: FF_X49_Y26_N11
\DERECHO|inst|fstate.state13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state13~q\);

-- Location: LCCOMB_X49_Y26_N20
\DERECHO|inst|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|WideOr18~0_combout\ = (!\DERECHO|inst|fstate.state13~q\ & (!\DERECHO|inst|fstate.state9~q\ & (!\DERECHO|inst|fstate.state5~q\ & \DERECHO|inst|fstate.state1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state13~q\,
	datab => \DERECHO|inst|fstate.state9~q\,
	datac => \DERECHO|inst|fstate.state5~q\,
	datad => \DERECHO|inst|fstate.state1~q\,
	combout => \DERECHO|inst|WideOr18~0_combout\);

-- Location: FF_X49_Y26_N27
\DERECHO|inst|fstate.state14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state14~q\);

-- Location: LCCOMB_X49_Y26_N28
\DERECHO|inst|WideOr18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|WideOr18~1_combout\ = (!\DERECHO|inst|fstate.state14~q\ & (!\DERECHO|inst|fstate.state6~q\ & (!\DERECHO|inst|fstate.state10~q\ & !\DERECHO|inst|fstate.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state14~q\,
	datab => \DERECHO|inst|fstate.state6~q\,
	datac => \DERECHO|inst|fstate.state10~q\,
	datad => \DERECHO|inst|fstate.state2~q\,
	combout => \DERECHO|inst|WideOr18~1_combout\);

-- Location: FF_X49_Y26_N3
\DERECHO|inst|fstate.state15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state15~q\);

-- Location: LCCOMB_X49_Y26_N4
\DERECHO|inst|Z[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|Z[0]~0_combout\ = (!\DERECHO|inst|fstate.state11~q\ & (!\DERECHO|inst|fstate.state7~q\ & (!\DERECHO|inst|fstate.state3~q\ & !\DERECHO|inst|fstate.state15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state11~q\,
	datab => \DERECHO|inst|fstate.state7~q\,
	datac => \DERECHO|inst|fstate.state3~q\,
	datad => \DERECHO|inst|fstate.state15~q\,
	combout => \DERECHO|inst|Z[0]~0_combout\);

-- Location: LCCOMB_X48_Y26_N22
\DERECHO|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst3~0_combout\ = (\DERECHO|inst|Z[0]~0_combout\ & ((\inst1|fstate.RECTA~q\) # (\DERECHO|inst|WideOr18~1_combout\))) # (!\DERECHO|inst|Z[0]~0_combout\ & (\inst1|fstate.RECTA~q\ & \DERECHO|inst|WideOr18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|Z[0]~0_combout\,
	datab => \inst1|fstate.RECTA~q\,
	datad => \DERECHO|inst|WideOr18~1_combout\,
	combout => \DERECHO|inst3~0_combout\);

-- Location: LCCOMB_X48_Y26_N16
\DERECHO|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst3~1_combout\ = (\DERECHO|inst|WideOr18~0_combout\ & (!\DERECHO|inst3~0_combout\ & ((\inst1|fstate.DER~q\) # (!\inst1|fstate.RECTA~q\)))) # (!\DERECHO|inst|WideOr18~0_combout\ & (((\inst1|fstate.DER~q\)) # (!\inst1|fstate.RECTA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|WideOr18~0_combout\,
	datab => \inst1|fstate.RECTA~q\,
	datac => \DERECHO|inst3~0_combout\,
	datad => \inst1|fstate.DER~q\,
	combout => \DERECHO|inst3~1_combout\);

-- Location: LCCOMB_X49_Y25_N6
\IZQUIERDO|inst|reg_fstate.state4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state4~0_combout\ = (\RESET~input_o\ & \IZQUIERDO|inst|fstate.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \IZQUIERDO|inst|fstate.state3~q\,
	combout => \IZQUIERDO|inst|reg_fstate.state4~0_combout\);

-- Location: LCCOMB_X48_Y25_N18
\IZQUIERDO|inst|reg_fstate.state13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state13~0_combout\ = (\IZQUIERDO|inst|fstate.state12~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IZQUIERDO|inst|fstate.state12~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state13~0_combout\);

-- Location: LCCOMB_X48_Y26_N18
\inst1|reg_fstate.RECTA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_fstate.RECTA~0_combout\ = (\RESET~input_o\ & ((\SENSOR[1]~input_o\) # (\SENSOR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR[1]~input_o\,
	datac => \SENSOR[0]~input_o\,
	datad => \RESET~input_o\,
	combout => \inst1|reg_fstate.RECTA~0_combout\);

-- Location: LCCOMB_X48_Y25_N10
\IZQUIERDO|inst|reg_fstate.state14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state14~0_combout\ = (\RESET~input_o\ & \IZQUIERDO|inst|fstate.state13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \IZQUIERDO|inst|fstate.state13~q\,
	combout => \IZQUIERDO|inst|reg_fstate.state14~0_combout\);

-- Location: LCCOMB_X48_Y25_N2
\IZQUIERDO|inst|reg_fstate.state15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state15~0_combout\ = (\RESET~input_o\ & \IZQUIERDO|inst|fstate.state14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \IZQUIERDO|inst|fstate.state14~q\,
	combout => \IZQUIERDO|inst|reg_fstate.state15~0_combout\);

-- Location: LCCOMB_X48_Y25_N26
\IZQUIERDO|inst|reg_fstate.state8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state8~0_combout\ = (\IZQUIERDO|inst|fstate.state7~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IZQUIERDO|inst|fstate.state7~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state8~0_combout\);

-- Location: LCCOMB_X50_Y26_N12
\DERECHO|inst|reg_fstate.state3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state3~0_combout\ = (\DERECHO|inst|fstate.state2~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DERECHO|inst|fstate.state2~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state3~0_combout\);

-- Location: LCCOMB_X49_Y26_N10
\DERECHO|inst|reg_fstate.state13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state13~0_combout\ = (\RESET~input_o\ & \DERECHO|inst|fstate.state12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \DERECHO|inst|fstate.state12~q\,
	combout => \DERECHO|inst|reg_fstate.state13~0_combout\);

-- Location: LCCOMB_X49_Y26_N26
\DERECHO|inst|reg_fstate.state14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state14~0_combout\ = (\DERECHO|inst|fstate.state13~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state13~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state14~0_combout\);

-- Location: LCCOMB_X49_Y26_N2
\DERECHO|inst|reg_fstate.state15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state15~0_combout\ = (\RESET~input_o\ & \DERECHO|inst|fstate.state14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \DERECHO|inst|fstate.state14~q\,
	combout => \DERECHO|inst|reg_fstate.state15~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: CLKCTRL_G18
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X20_Y34_N23
\En_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IZQUIERDO|inst3~4_combout\,
	devoe => ww_devoe,
	o => ww_En_A);

-- Location: IOOBUF_X38_Y34_N2
\En_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DERECHO|inst3~4_combout\,
	devoe => ww_devoe,
	o => ww_En_B);

-- Location: IOOBUF_X45_Y34_N16
\IN_DRIVER[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_IN_A[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_IN_DRIVER(3));

-- Location: IOOBUF_X45_Y34_N9
\IN_DRIVER[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|IN_A[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_IN_DRIVER(2));

-- Location: IOOBUF_X23_Y34_N16
\IN_DRIVER[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_IN_A[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_IN_DRIVER(1));

-- Location: IOOBUF_X14_Y34_N16
\IN_DRIVER[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|IN_A[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_IN_DRIVER(0));

-- Location: IOIBUF_X0_Y16_N22
\STOP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOP,
	o => \STOP~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X48_Y25_N6
\IZQUIERDO|inst|reg_fstate.state11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state11~0_combout\ = (\IZQUIERDO|inst|fstate.state10~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state10~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state11~0_combout\);

-- Location: FF_X48_Y25_N7
\IZQUIERDO|inst|fstate.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state11~q\);

-- Location: LCCOMB_X48_Y25_N14
\IZQUIERDO|inst|reg_fstate.state12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state12~0_combout\ = (\RESET~input_o\ & \IZQUIERDO|inst|fstate.state11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \IZQUIERDO|inst|fstate.state11~q\,
	combout => \IZQUIERDO|inst|reg_fstate.state12~0_combout\);

-- Location: FF_X48_Y25_N15
\IZQUIERDO|inst|fstate.state12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state12~q\);

-- Location: LCCOMB_X48_Y25_N16
\IZQUIERDO|inst|reg_fstate.state9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state9~0_combout\ = (\IZQUIERDO|inst|fstate.state8~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state8~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state9~0_combout\);

-- Location: FF_X48_Y25_N17
\IZQUIERDO|inst|fstate.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state9~q\);

-- Location: LCCOMB_X48_Y25_N22
\IZQUIERDO|inst|reg_fstate.state10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state10~0_combout\ = (\RESET~input_o\ & \IZQUIERDO|inst|fstate.state9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \IZQUIERDO|inst|fstate.state9~q\,
	combout => \IZQUIERDO|inst|reg_fstate.state10~0_combout\);

-- Location: FF_X48_Y25_N23
\IZQUIERDO|inst|fstate.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state10~q\);

-- Location: LCCOMB_X48_Y25_N0
\IZQUIERDO|inst|WideOr17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|WideOr17~1_combout\ = (!\IZQUIERDO|inst|fstate.state11~q\ & (!\IZQUIERDO|inst|fstate.state12~q\ & (!\IZQUIERDO|inst|fstate.state10~q\ & !\IZQUIERDO|inst|fstate.state9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state11~q\,
	datab => \IZQUIERDO|inst|fstate.state12~q\,
	datac => \IZQUIERDO|inst|fstate.state10~q\,
	datad => \IZQUIERDO|inst|fstate.state9~q\,
	combout => \IZQUIERDO|inst|WideOr17~1_combout\);

-- Location: LCCOMB_X49_Y25_N10
\IZQUIERDO|inst|reg_fstate.state5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state5~0_combout\ = (\IZQUIERDO|inst|fstate.state4~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state4~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state5~0_combout\);

-- Location: FF_X49_Y25_N11
\IZQUIERDO|inst|fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state5~q\);

-- Location: LCCOMB_X48_Y25_N24
\IZQUIERDO|inst|reg_fstate.state6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state6~0_combout\ = (\IZQUIERDO|inst|fstate.state5~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IZQUIERDO|inst|fstate.state5~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state6~0_combout\);

-- Location: FF_X48_Y25_N25
\IZQUIERDO|inst|fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state6~q\);

-- Location: LCCOMB_X48_Y25_N8
\IZQUIERDO|inst|reg_fstate.state7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state7~0_combout\ = (\RESET~input_o\ & \IZQUIERDO|inst|fstate.state6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \IZQUIERDO|inst|fstate.state6~q\,
	combout => \IZQUIERDO|inst|reg_fstate.state7~0_combout\);

-- Location: FF_X48_Y25_N9
\IZQUIERDO|inst|fstate.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state7~q\);

-- Location: LCCOMB_X48_Y25_N20
\IZQUIERDO|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst3~2_combout\ = (\IZQUIERDO|inst|fstate.state8~q\) # ((\IZQUIERDO|inst|fstate.state5~q\) # ((\IZQUIERDO|inst|fstate.state7~q\) # (\IZQUIERDO|inst|fstate.state6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state8~q\,
	datab => \IZQUIERDO|inst|fstate.state5~q\,
	datac => \IZQUIERDO|inst|fstate.state7~q\,
	datad => \IZQUIERDO|inst|fstate.state6~q\,
	combout => \IZQUIERDO|inst3~2_combout\);

-- Location: IOIBUF_X43_Y34_N22
\SENSOR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR(1),
	o => \SENSOR[1]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\SENSOR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR(0),
	o => \SENSOR[0]~input_o\);

-- Location: LCCOMB_X48_Y26_N24
\inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\SENSOR[1]~input_o\ & !\SENSOR[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR[1]~input_o\,
	datac => \SENSOR[0]~input_o\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X48_Y26_N25
\inst1|fstate.IZQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector2~0_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.IZQ~q\);

-- Location: LCCOMB_X48_Y26_N8
\IZQUIERDO|inst3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst3~3_combout\ = (!\IZQUIERDO|inst3~2_combout\ & ((\IZQUIERDO|inst3~1_combout\ & (\IZQUIERDO|inst|WideOr17~1_combout\ & \inst1|fstate.IZQ~q\)) # (!\IZQUIERDO|inst3~1_combout\ & ((\IZQUIERDO|inst|WideOr17~1_combout\) # 
-- (\inst1|fstate.IZQ~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst3~1_combout\,
	datab => \IZQUIERDO|inst|WideOr17~1_combout\,
	datac => \IZQUIERDO|inst3~2_combout\,
	datad => \inst1|fstate.IZQ~q\,
	combout => \IZQUIERDO|inst3~3_combout\);

-- Location: LCCOMB_X49_Y25_N28
\IZQUIERDO|inst|reg_fstate.state16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state16~0_combout\ = (\IZQUIERDO|inst|fstate.state15~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state15~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state16~0_combout\);

-- Location: FF_X49_Y25_N29
\IZQUIERDO|inst|fstate.state16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state16~q\);

-- Location: LCCOMB_X49_Y25_N24
\IZQUIERDO|inst|reg_fstate.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state1~0_combout\ = (!\IZQUIERDO|inst|fstate.state16~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IZQUIERDO|inst|fstate.state16~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state1~0_combout\);

-- Location: FF_X49_Y25_N25
\IZQUIERDO|inst|fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state1~q\);

-- Location: LCCOMB_X49_Y25_N2
\IZQUIERDO|inst|reg_fstate.state2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state2~0_combout\ = (!\IZQUIERDO|inst|fstate.state1~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IZQUIERDO|inst|fstate.state1~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state2~0_combout\);

-- Location: FF_X49_Y25_N3
\IZQUIERDO|inst|fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state2~q\);

-- Location: LCCOMB_X49_Y25_N4
\IZQUIERDO|inst|reg_fstate.state3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|reg_fstate.state3~0_combout\ = (\IZQUIERDO|inst|fstate.state2~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IZQUIERDO|inst|fstate.state2~q\,
	datac => \RESET~input_o\,
	combout => \IZQUIERDO|inst|reg_fstate.state3~0_combout\);

-- Location: FF_X49_Y25_N5
\IZQUIERDO|inst|fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IZQUIERDO|inst|reg_fstate.state3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IZQUIERDO|inst|fstate.state3~q\);

-- Location: LCCOMB_X49_Y25_N0
\IZQUIERDO|inst|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst|WideOr17~0_combout\ = (!\IZQUIERDO|inst|fstate.state4~q\ & (\IZQUIERDO|inst|fstate.state1~q\ & (!\IZQUIERDO|inst|fstate.state3~q\ & !\IZQUIERDO|inst|fstate.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IZQUIERDO|inst|fstate.state4~q\,
	datab => \IZQUIERDO|inst|fstate.state1~q\,
	datac => \IZQUIERDO|inst|fstate.state3~q\,
	datad => \IZQUIERDO|inst|fstate.state2~q\,
	combout => \IZQUIERDO|inst|WideOr17~0_combout\);

-- Location: LCCOMB_X48_Y26_N26
\IZQUIERDO|inst3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IZQUIERDO|inst3~4_combout\ = (\STOP~input_o\ & (\RESET~input_o\ & ((!\IZQUIERDO|inst|WideOr17~0_combout\) # (!\IZQUIERDO|inst3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOP~input_o\,
	datab => \IZQUIERDO|inst3~3_combout\,
	datac => \IZQUIERDO|inst|WideOr17~0_combout\,
	datad => \RESET~input_o\,
	combout => \IZQUIERDO|inst3~4_combout\);

-- Location: LCCOMB_X48_Y26_N20
\inst1|reg_fstate.DER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_fstate.DER~0_combout\ = (!\SENSOR[1]~input_o\ & (\SENSOR[0]~input_o\ & \RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR[1]~input_o\,
	datac => \SENSOR[0]~input_o\,
	datad => \RESET~input_o\,
	combout => \inst1|reg_fstate.DER~0_combout\);

-- Location: FF_X48_Y26_N21
\inst1|fstate.DER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_fstate.DER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.DER~q\);

-- Location: LCCOMB_X50_Y26_N10
\DERECHO|inst|reg_fstate.state5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state5~0_combout\ = (\DERECHO|inst|fstate.state4~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state4~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state5~0_combout\);

-- Location: FF_X50_Y26_N11
\DERECHO|inst|fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state5~q\);

-- Location: LCCOMB_X49_Y26_N0
\DERECHO|inst|reg_fstate.state6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state6~0_combout\ = (\RESET~input_o\ & \DERECHO|inst|fstate.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \DERECHO|inst|fstate.state5~q\,
	combout => \DERECHO|inst|reg_fstate.state6~0_combout\);

-- Location: FF_X49_Y26_N1
\DERECHO|inst|fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state6~q\);

-- Location: LCCOMB_X49_Y26_N8
\DERECHO|inst|reg_fstate.state7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state7~0_combout\ = (\DERECHO|inst|fstate.state6~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DERECHO|inst|fstate.state6~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state7~0_combout\);

-- Location: FF_X49_Y26_N9
\DERECHO|inst|fstate.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state7~q\);

-- Location: LCCOMB_X49_Y26_N12
\DERECHO|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst3~2_combout\ = (\DERECHO|inst|fstate.state8~q\) # ((\DERECHO|inst|fstate.state7~q\) # ((\DERECHO|inst|fstate.state5~q\) # (\DERECHO|inst|fstate.state6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state8~q\,
	datab => \DERECHO|inst|fstate.state7~q\,
	datac => \DERECHO|inst|fstate.state5~q\,
	datad => \DERECHO|inst|fstate.state6~q\,
	combout => \DERECHO|inst3~2_combout\);

-- Location: LCCOMB_X49_Y26_N18
\DERECHO|inst|reg_fstate.state8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state8~0_combout\ = (\RESET~input_o\ & \DERECHO|inst|fstate.state7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \DERECHO|inst|fstate.state7~q\,
	combout => \DERECHO|inst|reg_fstate.state8~0_combout\);

-- Location: FF_X49_Y26_N19
\DERECHO|inst|fstate.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state8~q\);

-- Location: LCCOMB_X49_Y26_N16
\DERECHO|inst|reg_fstate.state9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state9~0_combout\ = (\DERECHO|inst|fstate.state8~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DERECHO|inst|fstate.state8~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state9~0_combout\);

-- Location: FF_X49_Y26_N17
\DERECHO|inst|fstate.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state9~q\);

-- Location: LCCOMB_X49_Y26_N22
\DERECHO|inst|reg_fstate.state12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state12~0_combout\ = (\DERECHO|inst|fstate.state11~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state11~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state12~0_combout\);

-- Location: FF_X49_Y26_N23
\DERECHO|inst|fstate.state12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state12~q\);

-- Location: LCCOMB_X49_Y26_N30
\DERECHO|inst|reg_fstate.state10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state10~0_combout\ = (\DERECHO|inst|fstate.state9~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DERECHO|inst|fstate.state9~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state10~0_combout\);

-- Location: FF_X49_Y26_N31
\DERECHO|inst|fstate.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state10~q\);

-- Location: LCCOMB_X49_Y26_N6
\DERECHO|inst|reg_fstate.state11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state11~0_combout\ = (\RESET~input_o\ & \DERECHO|inst|fstate.state10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \DERECHO|inst|fstate.state10~q\,
	combout => \DERECHO|inst|reg_fstate.state11~0_combout\);

-- Location: FF_X49_Y26_N7
\DERECHO|inst|fstate.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state11~q\);

-- Location: LCCOMB_X49_Y26_N24
\DERECHO|inst|WideOr17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|WideOr17~1_combout\ = (!\DERECHO|inst|fstate.state10~q\ & (!\DERECHO|inst|fstate.state9~q\ & (!\DERECHO|inst|fstate.state12~q\ & !\DERECHO|inst|fstate.state11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state10~q\,
	datab => \DERECHO|inst|fstate.state9~q\,
	datac => \DERECHO|inst|fstate.state12~q\,
	datad => \DERECHO|inst|fstate.state11~q\,
	combout => \DERECHO|inst|WideOr17~1_combout\);

-- Location: LCCOMB_X48_Y26_N10
\DERECHO|inst3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst3~3_combout\ = (!\DERECHO|inst3~2_combout\ & ((\DERECHO|inst3~1_combout\ & (\inst1|fstate.DER~q\ & \DERECHO|inst|WideOr17~1_combout\)) # (!\DERECHO|inst3~1_combout\ & ((\inst1|fstate.DER~q\) # (\DERECHO|inst|WideOr17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst3~1_combout\,
	datab => \inst1|fstate.DER~q\,
	datac => \DERECHO|inst3~2_combout\,
	datad => \DERECHO|inst|WideOr17~1_combout\,
	combout => \DERECHO|inst3~3_combout\);

-- Location: LCCOMB_X50_Y26_N28
\DERECHO|inst|reg_fstate.state16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state16~0_combout\ = (\DERECHO|inst|fstate.state15~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state15~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state16~0_combout\);

-- Location: FF_X50_Y26_N29
\DERECHO|inst|fstate.state16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state16~q\);

-- Location: LCCOMB_X50_Y26_N24
\DERECHO|inst|reg_fstate.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state1~0_combout\ = (!\DERECHO|inst|fstate.state16~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DERECHO|inst|fstate.state16~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state1~0_combout\);

-- Location: FF_X50_Y26_N25
\DERECHO|inst|fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state1~q\);

-- Location: LCCOMB_X50_Y26_N2
\DERECHO|inst|reg_fstate.state2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state2~0_combout\ = (!\DERECHO|inst|fstate.state1~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DERECHO|inst|fstate.state1~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state2~0_combout\);

-- Location: FF_X50_Y26_N3
\DERECHO|inst|fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state2~q\);

-- Location: LCCOMB_X50_Y26_N6
\DERECHO|inst|reg_fstate.state4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|reg_fstate.state4~0_combout\ = (\DERECHO|inst|fstate.state3~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state3~q\,
	datac => \RESET~input_o\,
	combout => \DERECHO|inst|reg_fstate.state4~0_combout\);

-- Location: FF_X50_Y26_N7
\DERECHO|inst|fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DERECHO|inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DERECHO|inst|reg_fstate.state4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERECHO|inst|fstate.state4~q\);

-- Location: LCCOMB_X50_Y26_N8
\DERECHO|inst|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst|WideOr17~0_combout\ = (!\DERECHO|inst|fstate.state3~q\ & (!\DERECHO|inst|fstate.state2~q\ & (!\DERECHO|inst|fstate.state4~q\ & \DERECHO|inst|fstate.state1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst|fstate.state3~q\,
	datab => \DERECHO|inst|fstate.state2~q\,
	datac => \DERECHO|inst|fstate.state4~q\,
	datad => \DERECHO|inst|fstate.state1~q\,
	combout => \DERECHO|inst|WideOr17~0_combout\);

-- Location: LCCOMB_X48_Y26_N12
\DERECHO|inst3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DERECHO|inst3~4_combout\ = (\STOP~input_o\ & (\RESET~input_o\ & ((!\DERECHO|inst|WideOr17~0_combout\) # (!\DERECHO|inst3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DERECHO|inst3~3_combout\,
	datab => \DERECHO|inst|WideOr17~0_combout\,
	datac => \STOP~input_o\,
	datad => \RESET~input_o\,
	combout => \DERECHO|inst3~4_combout\);

-- Location: LCCOMB_X48_Y26_N14
\inst1|reg_fstate.ATRAS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_fstate.ATRAS~0_combout\ = (\SENSOR[1]~input_o\ & (\SENSOR[0]~input_o\ & \RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR[1]~input_o\,
	datac => \SENSOR[0]~input_o\,
	datad => \RESET~input_o\,
	combout => \inst1|reg_fstate.ATRAS~0_combout\);

-- Location: FF_X48_Y26_N15
\inst1|fstate.ATRAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_fstate.ATRAS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|fstate.ATRAS~q\);

-- Location: LCCOMB_X48_Y26_N0
\inst1|IN_A[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|IN_A[3]~0_combout\ = (\inst1|fstate.ATRAS~q\) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|fstate.ATRAS~q\,
	datad => \RESET~input_o\,
	combout => \inst1|IN_A[3]~0_combout\);

-- Location: LCCOMB_X48_Y26_N2
\inst1|IN_A[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|IN_A[2]~1_combout\ = (\inst1|fstate.ATRAS~q\ & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|fstate.ATRAS~q\,
	datad => \RESET~input_o\,
	combout => \inst1|IN_A[2]~1_combout\);
END structure;


