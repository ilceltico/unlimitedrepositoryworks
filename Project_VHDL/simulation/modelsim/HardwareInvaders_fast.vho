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

-- DATE "04/09/2018 12:29:20"

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

ENTITY 	HardwareInvaders IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_CE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END HardwareInvaders;

-- Design Ports Information
-- SRAM_DQ[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[1]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[3]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[4]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[5]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[6]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[7]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[8]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[9]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[11]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[12]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[14]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[15]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HS	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[0]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[1]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[2]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[3]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[7]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[8]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[9]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[10]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[11]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[12]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[13]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[14]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[15]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[16]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[17]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF HardwareInvaders IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pll|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET_N~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \vga|Add1~6_combout\ : std_logic;
SIGNAL \vga|Add1~9_combout\ : std_logic;
SIGNAL \vga|x_cursor[8]~35\ : std_logic;
SIGNAL \vga|Add1~25\ : std_logic;
SIGNAL \vga|Add0~3_combout\ : std_logic;
SIGNAL \vga|Add0~12_combout\ : std_logic;
SIGNAL \vga|Add0~15_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~8_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~16_combout\ : std_logic;
SIGNAL \vga|x_cursor[9]~36_combout\ : std_logic;
SIGNAL \vga|Add1~27_combout\ : std_logic;
SIGNAL \view|Add4~0_combout\ : std_logic;
SIGNAL \view|Add4~12_combout\ : std_logic;
SIGNAL \view|Add2~2_combout\ : std_logic;
SIGNAL \view|Add2~8_combout\ : std_logic;
SIGNAL \view|Add2~12_combout\ : std_logic;
SIGNAL \view|Add3~2_combout\ : std_logic;
SIGNAL \view|Add3~9_combout\ : std_logic;
SIGNAL \view|Add3~11_combout\ : std_logic;
SIGNAL \view|Add2~21_combout\ : std_logic;
SIGNAL \view|Add2~23_combout\ : std_logic;
SIGNAL \view|Add2~27_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~2_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~4_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~6_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~8_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~18_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~30_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~34_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~40_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~42_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~44_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~46_combout\ : std_logic;
SIGNAL \view|Add2~38_combout\ : std_logic;
SIGNAL \view|Add2~40_combout\ : std_logic;
SIGNAL \view|Add2~44_combout\ : std_logic;
SIGNAL \view|Add2~46_combout\ : std_logic;
SIGNAL \view|Add2~52_combout\ : std_logic;
SIGNAL \view|Add2~54_combout\ : std_logic;
SIGNAL \view|Add2~56_combout\ : std_logic;
SIGNAL \view|Add2~60_combout\ : std_logic;
SIGNAL \view|Add2~62_combout\ : std_logic;
SIGNAL \view|Add2~64_combout\ : std_logic;
SIGNAL \view|Add2~70_combout\ : std_logic;
SIGNAL \view|Add3~33_combout\ : std_logic;
SIGNAL \view|Add3~35_combout\ : std_logic;
SIGNAL \view|Add3~37_combout\ : std_logic;
SIGNAL \view|Add3~39_combout\ : std_logic;
SIGNAL \view|Add3~41_combout\ : std_logic;
SIGNAL \view|Add3~43_combout\ : std_logic;
SIGNAL \view|Add3~45_combout\ : std_logic;
SIGNAL \view|Add3~47_combout\ : std_logic;
SIGNAL \view|Add3~49_combout\ : std_logic;
SIGNAL \view|Add3~51_combout\ : std_logic;
SIGNAL \view|Add3~53_combout\ : std_logic;
SIGNAL \view|Add3~55_combout\ : std_logic;
SIGNAL \view|Add3~57_combout\ : std_logic;
SIGNAL \view|Add3~63_combout\ : std_logic;
SIGNAL \view|Add3~67_combout\ : std_logic;
SIGNAL \view|Add3~69_combout\ : std_logic;
SIGNAL \view|Add3~71_combout\ : std_logic;
SIGNAL \datapath|Add3~6_combout\ : std_logic;
SIGNAL \datapath|Add3~10_combout\ : std_logic;
SIGNAL \datapath|Add5~0_combout\ : std_logic;
SIGNAL \datapath|Add5~2_combout\ : std_logic;
SIGNAL \datapath|Add5~12_combout\ : std_logic;
SIGNAL \datapath|Add1~3\ : std_logic;
SIGNAL \datapath|Add1~5\ : std_logic;
SIGNAL \datapath|Add1~4_combout\ : std_logic;
SIGNAL \datapath|Add1~7\ : std_logic;
SIGNAL \datapath|Add1~6_combout\ : std_logic;
SIGNAL \datapath|Add1~9\ : std_logic;
SIGNAL \datapath|Add1~8_combout\ : std_logic;
SIGNAL \datapath|Add1~11\ : std_logic;
SIGNAL \datapath|Add1~10_combout\ : std_logic;
SIGNAL \datapath|Add1~13\ : std_logic;
SIGNAL \datapath|Add1~12_combout\ : std_logic;
SIGNAL \datapath|Add1~14_combout\ : std_logic;
SIGNAL \datapath|Add7~5\ : std_logic;
SIGNAL \datapath|Add7~7\ : std_logic;
SIGNAL \datapath|Add7~6_combout\ : std_logic;
SIGNAL \datapath|Add7~9\ : std_logic;
SIGNAL \datapath|Add7~8_combout\ : std_logic;
SIGNAL \datapath|Add7~11\ : std_logic;
SIGNAL \datapath|Add7~10_combout\ : std_logic;
SIGNAL \datapath|Add7~13\ : std_logic;
SIGNAL \datapath|Add7~12_combout\ : std_logic;
SIGNAL \datapath|Add7~14_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal6~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal1~0_combout\ : std_logic;
SIGNAL \vga|Equal0~0_combout\ : std_logic;
SIGNAL \vga|Equal0~4_combout\ : std_logic;
SIGNAL \vga|Equal2~4_combout\ : std_logic;
SIGNAL \vga|Equal1~3_combout\ : std_logic;
SIGNAL \vga|Equal3~0_combout\ : std_logic;
SIGNAL \vga|Selector3~4_combout\ : std_logic;
SIGNAL \vga|Add1~29_combout\ : std_logic;
SIGNAL \vga|x_end~1_combout\ : std_logic;
SIGNAL \vga|x_end~6_combout\ : std_logic;
SIGNAL \vga|x_end~8_combout\ : std_logic;
SIGNAL \vga|x_end~9_combout\ : std_logic;
SIGNAL \vga|y_end~7_combout\ : std_logic;
SIGNAL \vga|y_end~8_combout\ : std_logic;
SIGNAL \view|Mux10~0_combout\ : std_logic;
SIGNAL \view|Mux10~1_combout\ : std_logic;
SIGNAL \view|Mux32~3_combout\ : std_logic;
SIGNAL \view|Mux32~4_combout\ : std_logic;
SIGNAL \view|Mux32~5_combout\ : std_logic;
SIGNAL \view|Mux4~1_combout\ : std_logic;
SIGNAL \view|Mux4~3_combout\ : std_logic;
SIGNAL \view|Mux10~2_combout\ : std_logic;
SIGNAL \view|Mux4~8_combout\ : std_logic;
SIGNAL \view|Mux4~10_combout\ : std_logic;
SIGNAL \view|Mux32~9_combout\ : std_logic;
SIGNAL \view|Mux32~10_combout\ : std_logic;
SIGNAL \view|Mux4~12_combout\ : std_logic;
SIGNAL \view|Mux19~0_combout\ : std_logic;
SIGNAL \view|Mux25~1_combout\ : std_logic;
SIGNAL \view|Selector76~0_combout\ : std_logic;
SIGNAL \view|Selector81~0_combout\ : std_logic;
SIGNAL \view|Selector79~0_combout\ : std_logic;
SIGNAL \view|Selector77~0_combout\ : std_logic;
SIGNAL \view|Selector78~0_combout\ : std_logic;
SIGNAL \view|Selector78~1_combout\ : std_logic;
SIGNAL \view|Selector78~2_combout\ : std_logic;
SIGNAL \view|Selector91~0_combout\ : std_logic;
SIGNAL \view|Selector86~0_combout\ : std_logic;
SIGNAL \view|Selector87~0_combout\ : std_logic;
SIGNAL \view|Selector89~1_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[19]~regout\ : std_logic;
SIGNAL \frame_time_gen:counter[18]~regout\ : std_logic;
SIGNAL \frame_time_gen:counter[17]~regout\ : std_logic;
SIGNAL \frame_time_gen:counter[16]~regout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[13]~regout\ : std_logic;
SIGNAL \frame_time_gen:counter[6]~regout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~2_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~8_combout\ : std_logic;
SIGNAL \view|LessThan1~1_combout\ : std_logic;
SIGNAL \view|LessThan1~5_combout\ : std_logic;
SIGNAL \view|LessThan0~6_combout\ : std_logic;
SIGNAL \view|next_state.DRAWING~regout\ : std_logic;
SIGNAL \view|Add2~26_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~80_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~86_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~91_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~93_combout\ : std_logic;
SIGNAL \view|Add2~80_combout\ : std_logic;
SIGNAL \view|Add2~81_combout\ : std_logic;
SIGNAL \view|Add2~85_combout\ : std_logic;
SIGNAL \view|Add2~90_combout\ : std_logic;
SIGNAL \view|Add3~80_combout\ : std_logic;
SIGNAL \view|Add3~85_combout\ : std_logic;
SIGNAL \view|Add3~88_combout\ : std_logic;
SIGNAL \view|Add3~94_combout\ : std_logic;
SIGNAL \view|Add3~95_combout\ : std_logic;
SIGNAL \view|Selector65~0_combout\ : std_logic;
SIGNAL \view|Selector72~0_combout\ : std_logic;
SIGNAL \view|Selector72~1_combout\ : std_logic;
SIGNAL \view|next_state.WAITING~1_combout\ : std_logic;
SIGNAL \datapath|Mux39~0_combout\ : std_logic;
SIGNAL \datapath|Mux39~1_combout\ : std_logic;
SIGNAL \datapath|Mux39~2_combout\ : std_logic;
SIGNAL \datapath|Mux40~0_combout\ : std_logic;
SIGNAL \datapath|Mux40~1_combout\ : std_logic;
SIGNAL \datapath|Mux40~2_combout\ : std_logic;
SIGNAL \datapath|Mux41~0_combout\ : std_logic;
SIGNAL \datapath|Mux41~1_combout\ : std_logic;
SIGNAL \datapath|Mux41~2_combout\ : std_logic;
SIGNAL \datapath|Mux42~0_combout\ : std_logic;
SIGNAL \datapath|Mux42~1_combout\ : std_logic;
SIGNAL \datapath|Mux42~2_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[25]~regout\ : std_logic;
SIGNAL \game_tick_gen:counter[20]~regout\ : std_logic;
SIGNAL \game_tick_gen:counter[16]~regout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[7]~regout\ : std_logic;
SIGNAL \game_tick_gen:counter[5]~regout\ : std_logic;
SIGNAL \game_tick_gen:counter[3]~regout\ : std_logic;
SIGNAL \game_tick_gen:counter[2]~regout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \counter~16_combout\ : std_logic;
SIGNAL \counter~23_combout\ : std_logic;
SIGNAL \vga|Selector8~3_combout\ : std_logic;
SIGNAL \datapath|alien_grid[3][0].hitbox.up_left_x[6]~0_combout\ : std_logic;
SIGNAL \datapath|alien_grid[1][0].hitbox.up_left_x[5]~0_combout\ : std_logic;
SIGNAL \datapath|alien_grid[3][0].hitbox.up_left_x[5]~1_combout\ : std_logic;
SIGNAL \datapath|alien_grid[2][0].hitbox.up_left_x[2]~2_combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_DQ[0]~0\ : std_logic;
SIGNAL \SRAM_DQ[1]~1\ : std_logic;
SIGNAL \SRAM_DQ[2]~2\ : std_logic;
SIGNAL \SRAM_DQ[3]~3\ : std_logic;
SIGNAL \SRAM_DQ[4]~4\ : std_logic;
SIGNAL \SRAM_DQ[5]~5\ : std_logic;
SIGNAL \SRAM_DQ[6]~6\ : std_logic;
SIGNAL \SRAM_DQ[7]~7\ : std_logic;
SIGNAL \SRAM_DQ[8]~8\ : std_logic;
SIGNAL \SRAM_DQ[9]~9\ : std_logic;
SIGNAL \SRAM_DQ[10]~10\ : std_logic;
SIGNAL \SRAM_DQ[11]~11\ : std_logic;
SIGNAL \SRAM_DQ[12]~12\ : std_logic;
SIGNAL \SRAM_DQ[13]~13\ : std_logic;
SIGNAL \SRAM_DQ[14]~14\ : std_logic;
SIGNAL \SRAM_DQ[15]~15\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \pll|altpll_component|_clk0\ : std_logic;
SIGNAL \pll|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \view|reg_hitbox.size_y[0]~feeder_combout\ : std_logic;
SIGNAL \reset_sync_reg~feeder_combout\ : std_logic;
SIGNAL \reset_sync_reg~regout\ : std_logic;
SIGNAL \RESET_N~regout\ : std_logic;
SIGNAL \view|Selector94~1_combout\ : std_logic;
SIGNAL \RESET_N~clkctrl_outclk\ : std_logic;
SIGNAL \view|FB_CLEAR~0_combout\ : std_logic;
SIGNAL \view|FB_CLEAR~regout\ : std_logic;
SIGNAL \view|Selector69~0_combout\ : std_logic;
SIGNAL \view|Selector65~1_combout\ : std_logic;
SIGNAL \view|state.WAITING~regout\ : std_logic;
SIGNAL \view|Selector69~2_combout\ : std_logic;
SIGNAL \view|READY~regout\ : std_logic;
SIGNAL \view_control_unit|Selector1~0_combout\ : std_logic;
SIGNAL \view_control_unit|Selector1~1_combout\ : std_logic;
SIGNAL \view_control_unit|state.SHOW_SPRITES~regout\ : std_logic;
SIGNAL \view_control_unit|Add0~92_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[0]~regout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[1]~regout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[2]~regout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[3]~regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[15]~regout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[4]~regout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[7]~regout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[8]~regout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[11]~regout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[14]~regout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[12]~regout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[10]~regout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[9]~regout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \frame_time_gen:counter[5]~regout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \frame_time~regout\ : std_logic;
SIGNAL \view_control_unit|render_asap~0_combout\ : std_logic;
SIGNAL \view_control_unit|render_asap~regout\ : std_logic;
SIGNAL \view_control_unit|SHOW~0_combout\ : std_logic;
SIGNAL \view_control_unit|Selector2~0_combout\ : std_logic;
SIGNAL \view_control_unit|state.WAITING~regout\ : std_logic;
SIGNAL \view_control_unit|render_counter[0]~1_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~94_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~0_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~95_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~1\ : std_logic;
SIGNAL \view_control_unit|Add0~3\ : std_logic;
SIGNAL \view_control_unit|Add0~5\ : std_logic;
SIGNAL \view_control_unit|Add0~7\ : std_logic;
SIGNAL \view_control_unit|Add0~9\ : std_logic;
SIGNAL \view_control_unit|Add0~11\ : std_logic;
SIGNAL \view_control_unit|Add0~12_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~89_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~13\ : std_logic;
SIGNAL \view_control_unit|Add0~14_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~88_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~15\ : std_logic;
SIGNAL \view_control_unit|Add0~16_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~87_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~17\ : std_logic;
SIGNAL \view_control_unit|Add0~19\ : std_logic;
SIGNAL \view_control_unit|Add0~20_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~85_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~21\ : std_logic;
SIGNAL \view_control_unit|Add0~22_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~84_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~23\ : std_logic;
SIGNAL \view_control_unit|Add0~25\ : std_logic;
SIGNAL \view_control_unit|Add0~27\ : std_logic;
SIGNAL \view_control_unit|Add0~28_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~81_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~29\ : std_logic;
SIGNAL \view_control_unit|Add0~31\ : std_logic;
SIGNAL \view_control_unit|Add0~32_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~79_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~78_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~33\ : std_logic;
SIGNAL \view_control_unit|Add0~35\ : std_logic;
SIGNAL \view_control_unit|Add0~36_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~77_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~3_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~72_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~73_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~74_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~75_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~37\ : std_logic;
SIGNAL \view_control_unit|Add0~38_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~76_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~39\ : std_logic;
SIGNAL \view_control_unit|Add0~41\ : std_logic;
SIGNAL \view_control_unit|Add0~43\ : std_logic;
SIGNAL \view_control_unit|Add0~45\ : std_logic;
SIGNAL \view_control_unit|Add0~47\ : std_logic;
SIGNAL \view_control_unit|Add0~48_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~71_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~49\ : std_logic;
SIGNAL \view_control_unit|Add0~50_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~70_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~51\ : std_logic;
SIGNAL \view_control_unit|Add0~52_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~69_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~53\ : std_logic;
SIGNAL \view_control_unit|Add0~54_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~68_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~1_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~55\ : std_logic;
SIGNAL \view_control_unit|Add0~56_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~67_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~57\ : std_logic;
SIGNAL \view_control_unit|Add0~58_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~66_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~59\ : std_logic;
SIGNAL \view_control_unit|Add0~60_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~65_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~61\ : std_logic;
SIGNAL \view_control_unit|Add0~62_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~64_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~0_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~4_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~24_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~83_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~26_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~82_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~5_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~6_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~10_combout\ : std_logic;
SIGNAL \view_control_unit|Add0~90_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~7_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~9_combout\ : std_logic;
SIGNAL \view_control_unit|Selector5~10_combout\ : std_logic;
SIGNAL \view_control_unit|Selector3~0_combout\ : std_logic;
SIGNAL \view_control_unit|state.WAITING_2~regout\ : std_logic;
SIGNAL \view_control_unit|render_counter~0_combout\ : std_logic;
SIGNAL \view_control_unit|next_state.SHOW_SPRITES~regout\ : std_logic;
SIGNAL \view_control_unit|Selector0~0_combout\ : std_logic;
SIGNAL \view_control_unit|state.RENDER~regout\ : std_logic;
SIGNAL \view_control_unit|DRAW_SPRITE~regout\ : std_logic;
SIGNAL \view|show_asap~0_combout\ : std_logic;
SIGNAL \view|show_asap~regout\ : std_logic;
SIGNAL \view|next_state~14_combout\ : std_logic;
SIGNAL \view|next_state.CLEARING~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~3_combout\ : std_logic;
SIGNAL \vga|vga_timing|clock_count[0]~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~17\ : std_logic;
SIGNAL \vga|vga_timing|Add2~18_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~1\ : std_logic;
SIGNAL \vga|vga_timing|Add2~3\ : std_logic;
SIGNAL \vga|vga_timing|Add2~4_combout\ : std_logic;
SIGNAL \vga|vga_timing|clock_count[1]~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal0~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~5\ : std_logic;
SIGNAL \vga|vga_timing|Add2~7\ : std_logic;
SIGNAL \vga|vga_timing|Add2~8_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal3~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_counter~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~9\ : std_logic;
SIGNAL \vga|vga_timing|Add2~10_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_counter~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~11\ : std_logic;
SIGNAL \vga|vga_timing|Add2~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~13\ : std_logic;
SIGNAL \vga|vga_timing|Add2~15\ : std_logic;
SIGNAL \vga|vga_timing|Add2~16_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_counter~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal2~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~14_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal4~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal4~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|new_line~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|new_line~regout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~1\ : std_logic;
SIGNAL \vga|vga_timing|Add4~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~3\ : std_logic;
SIGNAL \vga|vga_timing|Add4~5\ : std_logic;
SIGNAL \vga|vga_timing|Add4~6_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~7\ : std_logic;
SIGNAL \vga|vga_timing|Add4~9\ : std_logic;
SIGNAL \vga|vga_timing|Add4~10_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~11\ : std_logic;
SIGNAL \vga|vga_timing|Add4~13\ : std_logic;
SIGNAL \vga|vga_timing|Add4~14_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~15\ : std_logic;
SIGNAL \vga|vga_timing|Add4~17\ : std_logic;
SIGNAL \vga|vga_timing|Add4~18_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~4_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal6~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~4_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal6~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal8~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal8~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal8~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_state~11_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_state~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_state.SYNC~regout\ : std_logic;
SIGNAL \view|next_state.WAITING~0_combout\ : std_logic;
SIGNAL \view|Selector73~0_combout\ : std_logic;
SIGNAL \view|Selector73~1_combout\ : std_logic;
SIGNAL \view|next_state.SHOWING~regout\ : std_logic;
SIGNAL \view|Selector67~0_combout\ : std_logic;
SIGNAL \view|state.SHOWING~regout\ : std_logic;
SIGNAL \view|next_state.CLEARING~1_combout\ : std_logic;
SIGNAL \view|next_state.CLEARING~regout\ : std_logic;
SIGNAL \view|Selector68~0_combout\ : std_logic;
SIGNAL \view|state.CLEARING~regout\ : std_logic;
SIGNAL \view|Selector66~0_combout\ : std_logic;
SIGNAL \view|state.DRAWING~regout\ : std_logic;
SIGNAL \view|Selector69~3_combout\ : std_logic;
SIGNAL \view|Selector64~0_combout\ : std_logic;
SIGNAL \view|Selector75~0_combout\ : std_logic;
SIGNAL \view|next_state.INIT~regout\ : std_logic;
SIGNAL \view|Selector69~4_combout\ : std_logic;
SIGNAL \view|state.INIT~regout\ : std_logic;
SIGNAL \view|Selector70~0_combout\ : std_logic;
SIGNAL \view|Selector70~1_combout\ : std_logic;
SIGNAL \view|Selector70~2_combout\ : std_logic;
SIGNAL \view|next_state.IDLE~regout\ : std_logic;
SIGNAL \view|Selector64~1_combout\ : std_logic;
SIGNAL \view|state.IDLE~regout\ : std_logic;
SIGNAL \view|reg_hitbox.size_y[0]~0_combout\ : std_logic;
SIGNAL \view|Add3~83_combout\ : std_logic;
SIGNAL \view|Add3~5_combout\ : std_logic;
SIGNAL \view|Add3~89_combout\ : std_logic;
SIGNAL \view|Add3~91_combout\ : std_logic;
SIGNAL \view|Add3~92_combout\ : std_logic;
SIGNAL \view|Add3~93_combout\ : std_logic;
SIGNAL \view|Add3~13_combout\ : std_logic;
SIGNAL \view|Add3~4_combout\ : std_logic;
SIGNAL \view|Add3~1\ : std_logic;
SIGNAL \view|Add3~3\ : std_logic;
SIGNAL \view|Add3~7\ : std_logic;
SIGNAL \view|Add3~10\ : std_logic;
SIGNAL \view|Add3~12\ : std_logic;
SIGNAL \view|Add3~16_combout\ : std_logic;
SIGNAL \view|Add3~30_combout\ : std_logic;
SIGNAL \view|Add3~17\ : std_logic;
SIGNAL \view|Add3~18_combout\ : std_logic;
SIGNAL \view|Add3~29_combout\ : std_logic;
SIGNAL \view|Add3~19\ : std_logic;
SIGNAL \view|Add3~20_combout\ : std_logic;
SIGNAL \view|Add3~28_combout\ : std_logic;
SIGNAL \view|Add3~21\ : std_logic;
SIGNAL \view|Add3~22_combout\ : std_logic;
SIGNAL \view|Add3~27_combout\ : std_logic;
SIGNAL \view|Add3~23\ : std_logic;
SIGNAL \view|Add3~25\ : std_logic;
SIGNAL \view|Add3~31_combout\ : std_logic;
SIGNAL \view|Add3~96_combout\ : std_logic;
SIGNAL \view|Add3~32\ : std_logic;
SIGNAL \view|Add3~34\ : std_logic;
SIGNAL \view|Add3~36\ : std_logic;
SIGNAL \view|Add3~38\ : std_logic;
SIGNAL \view|Add3~40\ : std_logic;
SIGNAL \view|Add3~42\ : std_logic;
SIGNAL \view|Add3~44\ : std_logic;
SIGNAL \view|Add3~46\ : std_logic;
SIGNAL \view|Add3~48\ : std_logic;
SIGNAL \view|Add3~50\ : std_logic;
SIGNAL \view|Add3~52\ : std_logic;
SIGNAL \view|Add3~54\ : std_logic;
SIGNAL \view|Add3~56\ : std_logic;
SIGNAL \view|Add3~58\ : std_logic;
SIGNAL \view|Add3~59_combout\ : std_logic;
SIGNAL \view|Add3~82_combout\ : std_logic;
SIGNAL \view|Add3~60\ : std_logic;
SIGNAL \view|Add3~61_combout\ : std_logic;
SIGNAL \view|Add3~81_combout\ : std_logic;
SIGNAL \view|LessThan0~2_combout\ : std_logic;
SIGNAL \view|Add3~62\ : std_logic;
SIGNAL \view|Add3~64\ : std_logic;
SIGNAL \view|Add3~65_combout\ : std_logic;
SIGNAL \view|Add3~79_combout\ : std_logic;
SIGNAL \view|Add3~78_combout\ : std_logic;
SIGNAL \view|Add3~76_combout\ : std_logic;
SIGNAL \view|LessThan0~1_combout\ : std_logic;
SIGNAL \view|Add3~6_combout\ : std_logic;
SIGNAL \view|Add3~8_combout\ : std_logic;
SIGNAL \view|Mux4~4_combout\ : std_logic;
SIGNAL \view|LessThan0~0_combout\ : std_logic;
SIGNAL \view|LessThan0~3_combout\ : std_logic;
SIGNAL \view|Add3~90_combout\ : std_logic;
SIGNAL \view|LessThan0~5_combout\ : std_logic;
SIGNAL \view|Add3~87_combout\ : std_logic;
SIGNAL \view|Add3~84_combout\ : std_logic;
SIGNAL \view|Add3~86_combout\ : std_logic;
SIGNAL \view|LessThan0~4_combout\ : std_logic;
SIGNAL \view|Add3~24_combout\ : std_logic;
SIGNAL \view|Add3~26_combout\ : std_logic;
SIGNAL \view|LessThan0~7_combout\ : std_logic;
SIGNAL \view|LessThan0~8_combout\ : std_logic;
SIGNAL \view|LessThan0~9_combout\ : std_logic;
SIGNAL \view|LessThan0~10_combout\ : std_logic;
SIGNAL \view|Add3~77_combout\ : std_logic;
SIGNAL \view|Add3~66\ : std_logic;
SIGNAL \view|Add3~68\ : std_logic;
SIGNAL \view|Add3~70\ : std_logic;
SIGNAL \view|Add3~72\ : std_logic;
SIGNAL \view|Add3~73_combout\ : std_logic;
SIGNAL \view|Add3~75_combout\ : std_logic;
SIGNAL \view|Add3~14_combout\ : std_logic;
SIGNAL \view|Mux4~5_combout\ : std_logic;
SIGNAL \view|Mux4~2_combout\ : std_logic;
SIGNAL \view|Mux4~6_combout\ : std_logic;
SIGNAL \view|Add2~3\ : std_logic;
SIGNAL \view|Add2~4_combout\ : std_logic;
SIGNAL \view|Add2~77_combout\ : std_logic;
SIGNAL \view|Add2~11_combout\ : std_logic;
SIGNAL \view|Add2~82_combout\ : std_logic;
SIGNAL \view|Add2~84_combout\ : std_logic;
SIGNAL \view|Add2~86_combout\ : std_logic;
SIGNAL \view|Add2~89_combout\ : std_logic;
SIGNAL \view|Add2~92_combout\ : std_logic;
SIGNAL \view|Add2~93_combout\ : std_logic;
SIGNAL \view|Add2~25_combout\ : std_logic;
SIGNAL \view|Add2~10_combout\ : std_logic;
SIGNAL \view|Add2~5\ : std_logic;
SIGNAL \view|Add2~7\ : std_logic;
SIGNAL \view|Add2~9\ : std_logic;
SIGNAL \view|Add2~13\ : std_logic;
SIGNAL \view|Add2~19\ : std_logic;
SIGNAL \view|Add2~22\ : std_logic;
SIGNAL \view|Add2~24\ : std_logic;
SIGNAL \view|Add2~28\ : std_logic;
SIGNAL \view|Add2~30_combout\ : std_logic;
SIGNAL \view|Add2~97_combout\ : std_logic;
SIGNAL \view|Add2~31\ : std_logic;
SIGNAL \view|Add2~32_combout\ : std_logic;
SIGNAL \view|Add2~96_combout\ : std_logic;
SIGNAL \view|Add2~33\ : std_logic;
SIGNAL \view|Add2~34_combout\ : std_logic;
SIGNAL \view|Add2~95_combout\ : std_logic;
SIGNAL \view|Add2~35\ : std_logic;
SIGNAL \view|Add2~36_combout\ : std_logic;
SIGNAL \view|Add2~94_combout\ : std_logic;
SIGNAL \view|Add2~37\ : std_logic;
SIGNAL \view|Add2~39\ : std_logic;
SIGNAL \view|Add2~41\ : std_logic;
SIGNAL \view|Add2~42_combout\ : std_logic;
SIGNAL \view|Add2~91_combout\ : std_logic;
SIGNAL \view|Add2~43\ : std_logic;
SIGNAL \view|Add2~45\ : std_logic;
SIGNAL \view|Add2~47\ : std_logic;
SIGNAL \view|Add2~48_combout\ : std_logic;
SIGNAL \view|Add2~88_combout\ : std_logic;
SIGNAL \view|Add2~49\ : std_logic;
SIGNAL \view|Add2~51\ : std_logic;
SIGNAL \view|Add2~53\ : std_logic;
SIGNAL \view|Add2~55\ : std_logic;
SIGNAL \view|Add2~57\ : std_logic;
SIGNAL \view|Add2~58_combout\ : std_logic;
SIGNAL \view|Add2~83_combout\ : std_logic;
SIGNAL \view|Add2~59\ : std_logic;
SIGNAL \view|Add2~61\ : std_logic;
SIGNAL \view|Add2~63\ : std_logic;
SIGNAL \view|Add2~65\ : std_logic;
SIGNAL \view|Add2~66_combout\ : std_logic;
SIGNAL \view|Add2~79_combout\ : std_logic;
SIGNAL \view|Add2~67\ : std_logic;
SIGNAL \view|Add2~69\ : std_logic;
SIGNAL \view|Add2~71\ : std_logic;
SIGNAL \view|Add2~72_combout\ : std_logic;
SIGNAL \view|Add2~98_combout\ : std_logic;
SIGNAL \view|Add2~73\ : std_logic;
SIGNAL \view|Add2~74_combout\ : std_logic;
SIGNAL \view|LessThan1~10_combout\ : std_logic;
SIGNAL \view|Add2~76_combout\ : std_logic;
SIGNAL \view|Add2~18_combout\ : std_logic;
SIGNAL \view|Add2~20_combout\ : std_logic;
SIGNAL \view|Add2~16_combout\ : std_logic;
SIGNAL \view|Add2~14_combout\ : std_logic;
SIGNAL \view|LessThan1~2_combout\ : std_logic;
SIGNAL \view|Add2~68_combout\ : std_logic;
SIGNAL \view|Add2~78_combout\ : std_logic;
SIGNAL \view|LessThan1~0_combout\ : std_logic;
SIGNAL \view|LessThan1~3_combout\ : std_logic;
SIGNAL \view|LessThan1~6_combout\ : std_logic;
SIGNAL \view|Add2~50_combout\ : std_logic;
SIGNAL \view|Add2~87_combout\ : std_logic;
SIGNAL \view|LessThan1~4_combout\ : std_logic;
SIGNAL \view|Add2~29_combout\ : std_logic;
SIGNAL \view|LessThan1~7_combout\ : std_logic;
SIGNAL \view|LessThan1~8_combout\ : std_logic;
SIGNAL \view|LessThan1~9_combout\ : std_logic;
SIGNAL \view|Add2~15_combout\ : std_logic;
SIGNAL \view|Mux32~6_combout\ : std_logic;
SIGNAL \datapath|alien_grid[0][0].current_index[0]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[1]~regout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[4]~regout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[6]~regout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[8]~regout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[10]~regout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[11]~regout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \counter~22_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[12]~regout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \counter~21_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[13]~regout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \counter~20_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[14]~regout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \counter~19_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[15]~regout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[17]~regout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \counter~15_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[21]~regout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \counter~14_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[22]~regout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \counter~13_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[23]~regout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[24]~regout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[18]~regout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \counter~17_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[19]~regout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[0]~regout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \game_tick_gen:counter[9]~regout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \game_tick~regout\ : std_logic;
SIGNAL \datapath|SPRITE.img_pixels[7][0]~feeder_combout\ : std_logic;
SIGNAL \datapath|reg_req~0_combout\ : std_logic;
SIGNAL \datapath|reg_req~regout\ : std_logic;
SIGNAL \datapath|process_0~0_combout\ : std_logic;
SIGNAL \datapath|SPRITE.img_pixels[7][0]~regout\ : std_logic;
SIGNAL \view|reg_sprite.img_pixels[10][0]~regout\ : std_logic;
SIGNAL \view|Add3~0_combout\ : std_logic;
SIGNAL \view|Add3~15_combout\ : std_logic;
SIGNAL \view|Mux7~0_combout\ : std_logic;
SIGNAL \view|Mux7~1_combout\ : std_logic;
SIGNAL \view|Mux4~0_combout\ : std_logic;
SIGNAL \view|Mux7~2_combout\ : std_logic;
SIGNAL \view|Mux32~7_combout\ : std_logic;
SIGNAL \view|Add2~6_combout\ : std_logic;
SIGNAL \view|Add2~17_combout\ : std_logic;
SIGNAL \view|Mux32~8_combout\ : std_logic;
SIGNAL \view|Mux32~11_combout\ : std_logic;
SIGNAL \view|Mux32~13_combout\ : std_logic;
SIGNAL \view|Mux4~11_combout\ : std_logic;
SIGNAL \view|Mux32~14_combout\ : std_logic;
SIGNAL \view|Mux32~15_combout\ : std_logic;
SIGNAL \view|Mux32~12_combout\ : std_logic;
SIGNAL \view|Mux32~16_combout\ : std_logic;
SIGNAL \view|Mux32~17_combout\ : std_logic;
SIGNAL \view|Mux19~1_combout\ : std_logic;
SIGNAL \view|Mux10~3_combout\ : std_logic;
SIGNAL \view|Mux19~2_combout\ : std_logic;
SIGNAL \view|Mux32~26_combout\ : std_logic;
SIGNAL \view|Mux32~18_combout\ : std_logic;
SIGNAL \view|Mux24~0_combout\ : std_logic;
SIGNAL \view|Mux24~1_combout\ : std_logic;
SIGNAL \view|Mux25~0_combout\ : std_logic;
SIGNAL \view|Mux25~2_combout\ : std_logic;
SIGNAL \view|Mux32~19_combout\ : std_logic;
SIGNAL \view|Mux32~20_combout\ : std_logic;
SIGNAL \view|Mux32~24_combout\ : std_logic;
SIGNAL \view|Mux4~9_combout\ : std_logic;
SIGNAL \view|Mux13~0_combout\ : std_logic;
SIGNAL \view|Mux4~7_combout\ : std_logic;
SIGNAL \view|Mux13~1_combout\ : std_logic;
SIGNAL \view|Mux32~23_combout\ : std_logic;
SIGNAL \view|Mux32~2_combout\ : std_logic;
SIGNAL \view|Mux32~27_combout\ : std_logic;
SIGNAL \view|Mux32~28_combout\ : std_logic;
SIGNAL \view|Mux32~21_combout\ : std_logic;
SIGNAL \view|Mux32~22_combout\ : std_logic;
SIGNAL \view|Mux32~25_combout\ : std_logic;
SIGNAL \view|Selector94~0_combout\ : std_logic;
SIGNAL \vga|latched_color[1]~feeder_combout\ : std_logic;
SIGNAL \vga|Selector4~0_combout\ : std_logic;
SIGNAL \vga|substate.INIT~regout\ : std_logic;
SIGNAL \vga|x_cursor[0]~10_combout\ : std_logic;
SIGNAL \vga|Selector2~1_combout\ : std_logic;
SIGNAL \vga|state.FILLING_RECT~regout\ : std_logic;
SIGNAL \vga|Equal0~6_combout\ : std_logic;
SIGNAL \vga|Selector6~0_combout\ : std_logic;
SIGNAL \vga|Selector6~1_combout\ : std_logic;
SIGNAL \vga|Selector6~2_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R1~regout\ : std_logic;
SIGNAL \vga|x_cursor[3]~12_combout\ : std_logic;
SIGNAL \vga|x_cursor[3]~13_combout\ : std_logic;
SIGNAL \view|FB_X0~0_combout\ : std_logic;
SIGNAL \view|FB_X0~1_combout\ : std_logic;
SIGNAL \vga|x_start~0_combout\ : std_logic;
SIGNAL \vga|y_end[8]~0_combout\ : std_logic;
SIGNAL \vga|Add1~0_combout\ : std_logic;
SIGNAL \vga|Add1~2_combout\ : std_logic;
SIGNAL \vga|x_cursor[3]~14_combout\ : std_logic;
SIGNAL \datapath|Add1~0_combout\ : std_logic;
SIGNAL \datapath|Add9~1_cout\ : std_logic;
SIGNAL \datapath|Add9~2_combout\ : std_logic;
SIGNAL \datapath|alien_grid[4][0].hitbox.up_left_x[3]~2_combout\ : std_logic;
SIGNAL \datapath|rendered_column~2_combout\ : std_logic;
SIGNAL \datapath|rendered_column~1_combout\ : std_logic;
SIGNAL \datapath|rendered_column~0_combout\ : std_logic;
SIGNAL \datapath|Add1~1\ : std_logic;
SIGNAL \datapath|Add1~2_combout\ : std_logic;
SIGNAL \datapath|Mux44~0_combout\ : std_logic;
SIGNAL \datapath|alien_grid[1][0].hitbox.up_left_x[1]~2_combout\ : std_logic;
SIGNAL \datapath|Add7~1\ : std_logic;
SIGNAL \datapath|Add7~2_combout\ : std_logic;
SIGNAL \datapath|alien_grid[3][0].hitbox.up_left_x[3]~3_combout\ : std_logic;
SIGNAL \datapath|Mux44~1_combout\ : std_logic;
SIGNAL \datapath|Mux44~2_combout\ : std_logic;
SIGNAL \datapath|Add3~0_combout\ : std_logic;
SIGNAL \datapath|Mux45~0_combout\ : std_logic;
SIGNAL \datapath|Add7~0_combout\ : std_logic;
SIGNAL \datapath|alien_grid[3][0].hitbox.up_left_x[2]~4_combout\ : std_logic;
SIGNAL \datapath|Mux45~1_combout\ : std_logic;
SIGNAL \datapath|Mux46~0_combout\ : std_logic;
SIGNAL \view|Add4~1\ : std_logic;
SIGNAL \view|Add4~3\ : std_logic;
SIGNAL \view|Add4~5\ : std_logic;
SIGNAL \view|Add4~6_combout\ : std_logic;
SIGNAL \view|Selector81~1_combout\ : std_logic;
SIGNAL \view|Selector81~2_combout\ : std_logic;
SIGNAL \vga|x_start~6_combout\ : std_logic;
SIGNAL \datapath|Add9~3\ : std_logic;
SIGNAL \datapath|Add9~4_combout\ : std_logic;
SIGNAL \datapath|Add3~1\ : std_logic;
SIGNAL \datapath|Add3~2_combout\ : std_logic;
SIGNAL \datapath|alien_grid[1][0].hitbox.up_left_x[3]~1_combout\ : std_logic;
SIGNAL \datapath|Add3~3\ : std_logic;
SIGNAL \datapath|Add3~4_combout\ : std_logic;
SIGNAL \datapath|Mux43~0_combout\ : std_logic;
SIGNAL \datapath|Add7~3\ : std_logic;
SIGNAL \datapath|Add7~4_combout\ : std_logic;
SIGNAL \datapath|alien_grid[3][0].hitbox.up_left_x[4]~2_combout\ : std_logic;
SIGNAL \datapath|Mux43~1_combout\ : std_logic;
SIGNAL \datapath|Mux43~2_combout\ : std_logic;
SIGNAL \view|Add4~7\ : std_logic;
SIGNAL \view|Add4~8_combout\ : std_logic;
SIGNAL \view|Selector80~1_combout\ : std_logic;
SIGNAL \view|Selector80~2_combout\ : std_logic;
SIGNAL \vga|x_start~5_combout\ : std_logic;
SIGNAL \vga|x_cursor[1]~21\ : std_logic;
SIGNAL \vga|x_cursor[2]~22_combout\ : std_logic;
SIGNAL \view|Add4~4_combout\ : std_logic;
SIGNAL \view|Selector82~1_combout\ : std_logic;
SIGNAL \view|Selector82~2_combout\ : std_logic;
SIGNAL \vga|x_start~3_combout\ : std_logic;
SIGNAL \vga|Add1~8_combout\ : std_logic;
SIGNAL \vga|x_cursor[2]~23\ : std_logic;
SIGNAL \vga|x_cursor[3]~24_combout\ : std_logic;
SIGNAL \vga|Add1~11_combout\ : std_logic;
SIGNAL \vga|Equal2~3_combout\ : std_logic;
SIGNAL \view|Add4~2_combout\ : std_logic;
SIGNAL \view|Selector83~1_combout\ : std_logic;
SIGNAL \view|Selector83~2_combout\ : std_logic;
SIGNAL \vga|x_start~4_combout\ : std_logic;
SIGNAL \vga|Equal2~2_combout\ : std_logic;
SIGNAL \datapath|Add9~5\ : std_logic;
SIGNAL \datapath|Add9~6_combout\ : std_logic;
SIGNAL \datapath|alien_grid[4][0].hitbox.up_left_x[5]~1_combout\ : std_logic;
SIGNAL \datapath|Add9~7\ : std_logic;
SIGNAL \datapath|Add9~8_combout\ : std_logic;
SIGNAL \datapath|Add9~9\ : std_logic;
SIGNAL \datapath|Add9~10_combout\ : std_logic;
SIGNAL \datapath|alien_grid[4][0].hitbox.up_left_x[7]~0_combout\ : std_logic;
SIGNAL \datapath|Add9~11\ : std_logic;
SIGNAL \datapath|Add9~12_combout\ : std_logic;
SIGNAL \datapath|Add9~13\ : std_logic;
SIGNAL \datapath|Add9~14_combout\ : std_logic;
SIGNAL \datapath|Add5~1\ : std_logic;
SIGNAL \datapath|Add5~3\ : std_logic;
SIGNAL \datapath|Add5~4_combout\ : std_logic;
SIGNAL \datapath|alien_grid[2][0].hitbox.up_left_x[4]~1_combout\ : std_logic;
SIGNAL \datapath|Add5~5\ : std_logic;
SIGNAL \datapath|Add5~6_combout\ : std_logic;
SIGNAL \datapath|Add5~7\ : std_logic;
SIGNAL \datapath|Add5~8_combout\ : std_logic;
SIGNAL \datapath|alien_grid[2][0].hitbox.up_left_x[6]~0_combout\ : std_logic;
SIGNAL \datapath|Add5~9\ : std_logic;
SIGNAL \datapath|Add5~10_combout\ : std_logic;
SIGNAL \datapath|Add5~11\ : std_logic;
SIGNAL \datapath|Add5~13\ : std_logic;
SIGNAL \datapath|Add5~14_combout\ : std_logic;
SIGNAL \datapath|Mux38~0_combout\ : std_logic;
SIGNAL \datapath|Add3~5\ : std_logic;
SIGNAL \datapath|Add3~7\ : std_logic;
SIGNAL \datapath|Add3~8_combout\ : std_logic;
SIGNAL \datapath|Add3~9\ : std_logic;
SIGNAL \datapath|Add3~11\ : std_logic;
SIGNAL \datapath|Add3~12_combout\ : std_logic;
SIGNAL \datapath|Add3~13\ : std_logic;
SIGNAL \datapath|Add3~14_combout\ : std_logic;
SIGNAL \datapath|Mux38~1_combout\ : std_logic;
SIGNAL \datapath|Mux38~2_combout\ : std_logic;
SIGNAL \view|Add4~9\ : std_logic;
SIGNAL \view|Add4~11\ : std_logic;
SIGNAL \view|Add4~13\ : std_logic;
SIGNAL \view|Add4~15\ : std_logic;
SIGNAL \view|Add4~17\ : std_logic;
SIGNAL \view|Add4~18_combout\ : std_logic;
SIGNAL \view|FB_X0~2_combout\ : std_logic;
SIGNAL \view|FB_X0~3_combout\ : std_logic;
SIGNAL \vga|x_end~0_combout\ : std_logic;
SIGNAL \vga|Equal2~1_combout\ : std_logic;
SIGNAL \vga|Equal2~5_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~1_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~2_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~0_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~3_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~regout\ : std_logic;
SIGNAL \view|Add4~14_combout\ : std_logic;
SIGNAL \view|Selector77~1_combout\ : std_logic;
SIGNAL \view|Selector77~2_combout\ : std_logic;
SIGNAL \vga|x_start~2_combout\ : std_logic;
SIGNAL \vga|x_cursor[3]~25\ : std_logic;
SIGNAL \vga|x_cursor[4]~26_combout\ : std_logic;
SIGNAL \vga|Add1~1\ : std_logic;
SIGNAL \vga|Add1~4\ : std_logic;
SIGNAL \vga|Add1~7\ : std_logic;
SIGNAL \vga|Add1~10\ : std_logic;
SIGNAL \vga|Add1~12_combout\ : std_logic;
SIGNAL \vga|Add1~14_combout\ : std_logic;
SIGNAL \vga|x_cursor[4]~27\ : std_logic;
SIGNAL \vga|x_cursor[5]~29\ : std_logic;
SIGNAL \vga|x_cursor[6]~31\ : std_logic;
SIGNAL \vga|x_cursor[7]~32_combout\ : std_logic;
SIGNAL \vga|Add1~13\ : std_logic;
SIGNAL \vga|Add1~16\ : std_logic;
SIGNAL \vga|Add1~19\ : std_logic;
SIGNAL \vga|Add1~21_combout\ : std_logic;
SIGNAL \vga|Add1~23_combout\ : std_logic;
SIGNAL \vga|x_cursor[7]~33\ : std_logic;
SIGNAL \vga|x_cursor[8]~34_combout\ : std_logic;
SIGNAL \view|Add4~16_combout\ : std_logic;
SIGNAL \view|Selector76~1_combout\ : std_logic;
SIGNAL \view|Selector76~2_combout\ : std_logic;
SIGNAL \vga|x_start~1_combout\ : std_logic;
SIGNAL \vga|Add1~22\ : std_logic;
SIGNAL \vga|Add1~24_combout\ : std_logic;
SIGNAL \vga|Add1~26_combout\ : std_logic;
SIGNAL \vga|Equal2~0_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~17_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~18_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~15_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~16_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~19_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~11\ : std_logic;
SIGNAL \vga|x_cursor[1]~20_combout\ : std_logic;
SIGNAL \vga|Add1~3_combout\ : std_logic;
SIGNAL \vga|Add1~5_combout\ : std_logic;
SIGNAL \view|Selector84~0_combout\ : std_logic;
SIGNAL \vga|x_end~3_combout\ : std_logic;
SIGNAL \view|Selector83~0_combout\ : std_logic;
SIGNAL \vga|x_end~2_combout\ : std_logic;
SIGNAL \vga|Equal0~1_combout\ : std_logic;
SIGNAL \view|Selector82~0_combout\ : std_logic;
SIGNAL \vga|x_end~5_combout\ : std_logic;
SIGNAL \vga|x_end~4_combout\ : std_logic;
SIGNAL \vga|Equal0~2_combout\ : std_logic;
SIGNAL \vga|x_cursor[5]~28_combout\ : std_logic;
SIGNAL \vga|Add1~15_combout\ : std_logic;
SIGNAL \view|Add4~10_combout\ : std_logic;
SIGNAL \view|Selector79~1_combout\ : std_logic;
SIGNAL \view|Selector79~2_combout\ : std_logic;
SIGNAL \vga|x_start~8_combout\ : std_logic;
SIGNAL \vga|Add1~17_combout\ : std_logic;
SIGNAL \view|Selector80~0_combout\ : std_logic;
SIGNAL \vga|x_end~7_combout\ : std_logic;
SIGNAL \vga|Equal0~3_combout\ : std_logic;
SIGNAL \vga|Equal0~5_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~10\ : std_logic;
SIGNAL \vga|y_cursor[1]~19\ : std_logic;
SIGNAL \vga|y_cursor[2]~20_combout\ : std_logic;
SIGNAL \view|Add5~1\ : std_logic;
SIGNAL \view|Add5~3\ : std_logic;
SIGNAL \view|Add5~4_combout\ : std_logic;
SIGNAL \view|Selector90~1_combout\ : std_logic;
SIGNAL \view|Selector90~2_combout\ : std_logic;
SIGNAL \vga|y_start~1_combout\ : std_logic;
SIGNAL \vga|y_cursor[1]~18_combout\ : std_logic;
SIGNAL \view|Add5~2_combout\ : std_logic;
SIGNAL \view|Selector91~1_combout\ : std_logic;
SIGNAL \view|Selector91~2_combout\ : std_logic;
SIGNAL \vga|y_start~2_combout\ : std_logic;
SIGNAL \vga|y_cursor[8]~11_combout\ : std_logic;
SIGNAL \vga|Add0~5_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~12_combout\ : std_logic;
SIGNAL \vga|y_cursor[8]~13_combout\ : std_logic;
SIGNAL \vga|y_cursor[8]~14_combout\ : std_logic;
SIGNAL \vga|y_cursor[7]~30_combout\ : std_logic;
SIGNAL \vga|y_cursor[5]~26_combout\ : std_logic;
SIGNAL \view|Add5~5\ : std_logic;
SIGNAL \view|Add5~7\ : std_logic;
SIGNAL \view|Add5~9\ : std_logic;
SIGNAL \view|Add5~10_combout\ : std_logic;
SIGNAL \view|FB_Y0~2_combout\ : std_logic;
SIGNAL \view|FB_Y0~3_combout\ : std_logic;
SIGNAL \vga|y_end~5_combout\ : std_logic;
SIGNAL \vga|Add0~17_combout\ : std_logic;
SIGNAL \vga|Add0~7\ : std_logic;
SIGNAL \vga|Add0~10\ : std_logic;
SIGNAL \vga|Add0~13\ : std_logic;
SIGNAL \vga|Add0~16\ : std_logic;
SIGNAL \vga|Add0~19\ : std_logic;
SIGNAL \vga|Add0~21_combout\ : std_logic;
SIGNAL \view|Add5~11\ : std_logic;
SIGNAL \view|Add5~13\ : std_logic;
SIGNAL \view|Add5~14_combout\ : std_logic;
SIGNAL \view|Selector86~1_combout\ : std_logic;
SIGNAL \view|Selector86~2_combout\ : std_logic;
SIGNAL \vga|y_start~5_combout\ : std_logic;
SIGNAL \vga|Add0~23_combout\ : std_logic;
SIGNAL \view|Add5~12_combout\ : std_logic;
SIGNAL \view|Selector87~1_combout\ : std_logic;
SIGNAL \view|Selector87~2_combout\ : std_logic;
SIGNAL \vga|y_start~6_combout\ : std_logic;
SIGNAL \vga|Equal3~3_combout\ : std_logic;
SIGNAL \vga|Equal3~1_combout\ : std_logic;
SIGNAL \view|Add5~8_combout\ : std_logic;
SIGNAL \view|Selector88~1_combout\ : std_logic;
SIGNAL \view|Selector88~2_combout\ : std_logic;
SIGNAL \vga|y_start~3_combout\ : std_logic;
SIGNAL \vga|y_cursor[3]~22_combout\ : std_logic;
SIGNAL \vga|Add0~9_combout\ : std_logic;
SIGNAL \view|Selector89~2_combout\ : std_logic;
SIGNAL \vga|y_start~4_combout\ : std_logic;
SIGNAL \vga|Add0~11_combout\ : std_logic;
SIGNAL \vga|Equal3~2_combout\ : std_logic;
SIGNAL \vga|Equal3~4_combout\ : std_logic;
SIGNAL \view|Add5~15\ : std_logic;
SIGNAL \view|Add5~16_combout\ : std_logic;
SIGNAL \view|Selector85~1_combout\ : std_logic;
SIGNAL \view|Selector85~2_combout\ : std_logic;
SIGNAL \vga|y_start~7_combout\ : std_logic;
SIGNAL \vga|Equal3~5_combout\ : std_logic;
SIGNAL \vga|y_cursor[8]~15_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~16_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~17_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~9_combout\ : std_logic;
SIGNAL \vga|Add0~0_combout\ : std_logic;
SIGNAL \view|Add5~0_combout\ : std_logic;
SIGNAL \view|FB_Y0~0_combout\ : std_logic;
SIGNAL \view|FB_Y0~1_combout\ : std_logic;
SIGNAL \vga|y_start~0_combout\ : std_logic;
SIGNAL \vga|Add0~2_combout\ : std_logic;
SIGNAL \vga|Add0~1\ : std_logic;
SIGNAL \vga|Add0~4\ : std_logic;
SIGNAL \vga|Add0~6_combout\ : std_logic;
SIGNAL \vga|Add0~8_combout\ : std_logic;
SIGNAL \vga|y_cursor[2]~21\ : std_logic;
SIGNAL \vga|y_cursor[3]~23\ : std_logic;
SIGNAL \vga|y_cursor[4]~24_combout\ : std_logic;
SIGNAL \vga|Add0~14_combout\ : std_logic;
SIGNAL \vga|y_cursor[4]~25\ : std_logic;
SIGNAL \vga|y_cursor[5]~27\ : std_logic;
SIGNAL \vga|y_cursor[6]~28_combout\ : std_logic;
SIGNAL \vga|Add0~18_combout\ : std_logic;
SIGNAL \vga|Add0~20_combout\ : std_logic;
SIGNAL \vga|y_cursor[6]~29\ : std_logic;
SIGNAL \vga|y_cursor[7]~31\ : std_logic;
SIGNAL \vga|y_cursor[8]~32_combout\ : std_logic;
SIGNAL \vga|Add0~22\ : std_logic;
SIGNAL \vga|Add0~24_combout\ : std_logic;
SIGNAL \vga|Add0~26_combout\ : std_logic;
SIGNAL \view|Selector88~0_combout\ : std_logic;
SIGNAL \vga|y_end~6_combout\ : std_logic;
SIGNAL \vga|Equal1~2_combout\ : std_logic;
SIGNAL \view|Selector92~0_combout\ : std_logic;
SIGNAL \vga|y_end~2_combout\ : std_logic;
SIGNAL \vga|y_end~1_combout\ : std_logic;
SIGNAL \vga|Equal1~0_combout\ : std_logic;
SIGNAL \view|Add5~6_combout\ : std_logic;
SIGNAL \view|Selector89~0_combout\ : std_logic;
SIGNAL \vga|y_end~3_combout\ : std_logic;
SIGNAL \view|Selector90~0_combout\ : std_logic;
SIGNAL \vga|y_end~4_combout\ : std_logic;
SIGNAL \vga|Equal1~1_combout\ : std_logic;
SIGNAL \vga|Equal1~4_combout\ : std_logic;
SIGNAL \view|Selector85~0_combout\ : std_logic;
SIGNAL \vga|y_end~9_combout\ : std_logic;
SIGNAL \vga|Equal1~5_combout\ : std_logic;
SIGNAL \vga|Selector3~5_combout\ : std_logic;
SIGNAL \vga|Selector3~2_combout\ : std_logic;
SIGNAL \vga|Selector2~0_combout\ : std_logic;
SIGNAL \vga|Selector1~0_combout\ : std_logic;
SIGNAL \vga|state.DRAWING_RECT~regout\ : std_logic;
SIGNAL \vga|Selector8~2_combout\ : std_logic;
SIGNAL \vga|fb_wr_req~regout\ : std_logic;
SIGNAL \vga|vga_timing|Equal1~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~6_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal2~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal2~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_state~11_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_state~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_state.DATA~regout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_WE_N~0_combout\ : std_logic;
SIGNAL \vga|Selector3~3_combout\ : std_logic;
SIGNAL \vga|Selector0~2_combout\ : std_logic;
SIGNAL \vga|Selector0~3_combout\ : std_logic;
SIGNAL \vga|state.IDLE~regout\ : std_logic;
SIGNAL \vga|y_end[8]~10_combout\ : std_logic;
SIGNAL \vga|latched_color[10]~feeder_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_state.DATA~regout\ : std_logic;
SIGNAL \vga|flip_on_next_vs~0_combout\ : std_logic;
SIGNAL \view|Selector69~1_combout\ : std_logic;
SIGNAL \view|FB_FLIP~regout\ : std_logic;
SIGNAL \vga|flip_on_next_vs~1_combout\ : std_logic;
SIGNAL \vga|flip_on_next_vs~regout\ : std_logic;
SIGNAL \vga|fb_buffer_idx~0_combout\ : std_logic;
SIGNAL \vga|fb_buffer_idx~regout\ : std_logic;
SIGNAL \vga|vga_fb|ram_rd_word[5]~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|BLANK~0_combout\ : std_logic;
SIGNAL \vga|VGA_R[0]~0_combout\ : std_logic;
SIGNAL \vga|vga_fb|ram_rd_word[6]~1_combout\ : std_logic;
SIGNAL \vga|VGA_R[2]~1_combout\ : std_logic;
SIGNAL \vga|vga_fb|ram_rd_word[7]~2_combout\ : std_logic;
SIGNAL \vga|VGA_R[3]~2_combout\ : std_logic;
SIGNAL \vga|vga_fb|ram_rd_word[3]~3_combout\ : std_logic;
SIGNAL \vga|VGA_G[0]~0_combout\ : std_logic;
SIGNAL \vga|vga_fb|ram_rd_word[4]~4_combout\ : std_logic;
SIGNAL \vga|VGA_G[3]~1_combout\ : std_logic;
SIGNAL \vga|vga_fb|ram_rd_word[0]~5_combout\ : std_logic;
SIGNAL \vga|VGA_B[0]~0_combout\ : std_logic;
SIGNAL \vga|vga_fb|ram_rd_word[1]~6_combout\ : std_logic;
SIGNAL \vga|VGA_B[2]~1_combout\ : std_logic;
SIGNAL \vga|vga_fb|ram_rd_word[2]~7_combout\ : std_logic;
SIGNAL \vga|VGA_B[3]~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal1~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_state.SYNC~regout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[0]~9_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_timing~0_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[0]~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[0]~10\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[1]~11_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[1]~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[1]~12\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[2]~13_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[2]~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[2]~14\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[3]~15_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[3]~3_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[3]~16\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[4]~17_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[4]~4_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[4]~18\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[5]~19_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[5]~5_combout\ : std_logic;
SIGNAL \vga|x_cursor[6]~30_combout\ : std_logic;
SIGNAL \vga|Add1~18_combout\ : std_logic;
SIGNAL \vga|x_start~7_combout\ : std_logic;
SIGNAL \vga|Add1~20_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[5]~20\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[6]~21_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[6]~6_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[6]~22\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[7]~23_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[7]~7_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[7]~24\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[8]~25_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[8]~8_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[0]~9_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal9~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_timing~0_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[9]~9_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[0]~10\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[1]~11_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[10]~10_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[1]~12\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[2]~13_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[11]~11_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[2]~14\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[3]~15_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[12]~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[3]~16\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[4]~17_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[13]~13_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[4]~18\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[5]~19_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[14]~14_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[5]~20\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[6]~21_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[15]~15_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[6]~22\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[7]~23_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[16]~16_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[7]~24\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[8]~25_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[17]~17_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_UB_N~0_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_LB_N~0_combout\ : std_logic;
SIGNAL \pll|altpll_component|_clk1\ : std_logic;
SIGNAL \pll|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \view_control_unit|SHOW~regout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \view_control_unit|render_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \datapath|rendered_column\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \view|FB_Y1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \datapath|alien_grid[0][0].current_index\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \datapath|alien_grid[4][0].hitbox.up_left_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \view|FB_Y0\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \view|FB_X1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \view|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \view|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \datapath|alien_grid[3][0].hitbox.up_left_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \datapath|alien_grid[2][0].hitbox.up_left_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \view|reg_hitbox.size_y\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \view|reg_hitbox.up_left_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \datapath|alien_grid[0][0].hitbox.up_left_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \view|FB_COLOR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \datapath|HITBOX.up_left_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \view|FB_X0\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \datapath|alien_grid[1][0].hitbox.up_left_x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \vga|y_start\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga|y_end\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga|y_cursor\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga|x_start\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|x_end\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|x_cursor\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|latched_color\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga|vga_timing|v_pixel\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga|vga_timing|v_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|vga_timing|h_pixel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|vga_timing|h_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|vga_timing|clock_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga|vga_fb|latched_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RESET_N~clkctrl_outclk\ : std_logic;
SIGNAL \view|ALT_INV_state.IDLE~regout\ : std_logic;
SIGNAL \view|ALT_INV_state.DRAWING~regout\ : std_logic;
SIGNAL \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|ALT_INV_BLANK~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|ALT_INV_v_state.SYNC~regout\ : std_logic;
SIGNAL \vga|vga_timing|ALT_INV_h_state.SYNC~regout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_WE_N <= ww_SRAM_WE_N;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\pll|altpll_component|_clk0\ <= \pll|altpll_component|pll_CLK_bus\(0);
\pll|altpll_component|_clk1\ <= \pll|altpll_component|pll_CLK_bus\(1);
\pll|altpll_component|pll~CLK2\ <= \pll|altpll_component|pll_CLK_bus\(2);

\pll|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pll|altpll_component|_clk0\);

\RESET_N~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET_N~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\pll|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pll|altpll_component|_clk1\);
\ALT_INV_RESET_N~clkctrl_outclk\ <= NOT \RESET_N~clkctrl_outclk\;
\view|ALT_INV_state.IDLE~regout\ <= NOT \view|state.IDLE~regout\;
\view|ALT_INV_state.DRAWING~regout\ <= NOT \view|state.DRAWING~regout\;
\vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\ <= NOT \vga|vga_fb|SRAM_WE_N~0_combout\;
\vga|vga_timing|ALT_INV_BLANK~0_combout\ <= NOT \vga|vga_timing|BLANK~0_combout\;
\vga|vga_timing|ALT_INV_v_state.SYNC~regout\ <= NOT \vga|vga_timing|v_state.SYNC~regout\;
\vga|vga_timing|ALT_INV_h_state.SYNC~regout\ <= NOT \vga|vga_timing|h_state.SYNC~regout\;

-- Location: LCFF_X21_Y9_N19
\vga|x_cursor[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[9]~36_combout\,
	sdata => \vga|Add1~29_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(9));

-- Location: LCCOMB_X22_Y9_N6
\vga|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~6_combout\ = (\vga|x_cursor\(2) & (\vga|Add1~4\ $ (GND))) # (!\vga|x_cursor\(2) & (!\vga|Add1~4\ & VCC))
-- \vga|Add1~7\ = CARRY((\vga|x_cursor\(2) & !\vga|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(2),
	datad => VCC,
	cin => \vga|Add1~4\,
	combout => \vga|Add1~6_combout\,
	cout => \vga|Add1~7\);

-- Location: LCCOMB_X22_Y9_N8
\vga|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~9_combout\ = (\vga|x_cursor\(3) & (!\vga|Add1~7\)) # (!\vga|x_cursor\(3) & ((\vga|Add1~7\) # (GND)))
-- \vga|Add1~10\ = CARRY((!\vga|Add1~7\) # (!\vga|x_cursor\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(3),
	datad => VCC,
	cin => \vga|Add1~7\,
	combout => \vga|Add1~9_combout\,
	cout => \vga|Add1~10\);

-- Location: LCCOMB_X21_Y9_N16
\vga|x_cursor[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[8]~34_combout\ = (\vga|x_cursor\(8) & ((GND) # (!\vga|x_cursor[7]~33\))) # (!\vga|x_cursor\(8) & (\vga|x_cursor[7]~33\ $ (GND)))
-- \vga|x_cursor[8]~35\ = CARRY((\vga|x_cursor\(8)) # (!\vga|x_cursor[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(8),
	datad => VCC,
	cin => \vga|x_cursor[7]~33\,
	combout => \vga|x_cursor[8]~34_combout\,
	cout => \vga|x_cursor[8]~35\);

-- Location: LCCOMB_X22_Y9_N18
\vga|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~24_combout\ = (\vga|x_cursor\(8) & (\vga|Add1~22\ $ (GND))) # (!\vga|x_cursor\(8) & (!\vga|Add1~22\ & VCC))
-- \vga|Add1~25\ = CARRY((\vga|x_cursor\(8) & !\vga|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(8),
	datad => VCC,
	cin => \vga|Add1~22\,
	combout => \vga|Add1~24_combout\,
	cout => \vga|Add1~25\);

-- Location: LCCOMB_X18_Y11_N2
\vga|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~3_combout\ = (\vga|y_cursor\(1) & (!\vga|Add0~1\)) # (!\vga|y_cursor\(1) & ((\vga|Add0~1\) # (GND)))
-- \vga|Add0~4\ = CARRY((!\vga|Add0~1\) # (!\vga|y_cursor\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(1),
	datad => VCC,
	cin => \vga|Add0~1\,
	combout => \vga|Add0~3_combout\,
	cout => \vga|Add0~4\);

-- Location: LCCOMB_X18_Y11_N8
\vga|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~12_combout\ = (\vga|y_cursor\(4) & (\vga|Add0~10\ $ (GND))) # (!\vga|y_cursor\(4) & (!\vga|Add0~10\ & VCC))
-- \vga|Add0~13\ = CARRY((\vga|y_cursor\(4) & !\vga|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(4),
	datad => VCC,
	cin => \vga|Add0~10\,
	combout => \vga|Add0~12_combout\,
	cout => \vga|Add0~13\);

-- Location: LCCOMB_X18_Y11_N10
\vga|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~15_combout\ = (\vga|y_cursor\(5) & (!\vga|Add0~13\)) # (!\vga|y_cursor\(5) & ((\vga|Add0~13\) # (GND)))
-- \vga|Add0~16\ = CARRY((!\vga|Add0~13\) # (!\vga|y_cursor\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(5),
	datad => VCC,
	cin => \vga|Add0~13\,
	combout => \vga|Add0~15_combout\,
	cout => \vga|Add0~16\);

-- Location: LCCOMB_X20_Y6_N12
\vga|vga_timing|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~8_combout\ = (\vga|vga_timing|v_counter\(4) & (\vga|vga_timing|Add4~7\ $ (GND))) # (!\vga|vga_timing|v_counter\(4) & (!\vga|vga_timing|Add4~7\ & VCC))
-- \vga|vga_timing|Add4~9\ = CARRY((\vga|vga_timing|v_counter\(4) & !\vga|vga_timing|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(4),
	datad => VCC,
	cin => \vga|vga_timing|Add4~7\,
	combout => \vga|vga_timing|Add4~8_combout\,
	cout => \vga|vga_timing|Add4~9\);

-- Location: LCCOMB_X20_Y6_N16
\vga|vga_timing|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~12_combout\ = (\vga|vga_timing|v_counter\(6) & (\vga|vga_timing|Add4~11\ $ (GND))) # (!\vga|vga_timing|v_counter\(6) & (!\vga|vga_timing|Add4~11\ & VCC))
-- \vga|vga_timing|Add4~13\ = CARRY((\vga|vga_timing|v_counter\(6) & !\vga|vga_timing|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(6),
	datad => VCC,
	cin => \vga|vga_timing|Add4~11\,
	combout => \vga|vga_timing|Add4~12_combout\,
	cout => \vga|vga_timing|Add4~13\);

-- Location: LCCOMB_X20_Y6_N20
\vga|vga_timing|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~16_combout\ = (\vga|vga_timing|v_counter\(8) & (\vga|vga_timing|Add4~15\ $ (GND))) # (!\vga|vga_timing|v_counter\(8) & (!\vga|vga_timing|Add4~15\ & VCC))
-- \vga|vga_timing|Add4~17\ = CARRY((\vga|vga_timing|v_counter\(8) & !\vga|vga_timing|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(8),
	datad => VCC,
	cin => \vga|vga_timing|Add4~15\,
	combout => \vga|vga_timing|Add4~16_combout\,
	cout => \vga|vga_timing|Add4~17\);

-- Location: LCCOMB_X21_Y9_N18
\vga|x_cursor[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[9]~36_combout\ = \vga|x_cursor[8]~35\ $ (!\vga|x_cursor\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|x_cursor\(9),
	cin => \vga|x_cursor[8]~35\,
	combout => \vga|x_cursor[9]~36_combout\);

-- Location: LCCOMB_X22_Y9_N20
\vga|Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~27_combout\ = \vga|Add1~25\ $ (\vga|x_cursor\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|x_cursor\(9),
	cin => \vga|Add1~25\,
	combout => \vga|Add1~27_combout\);

-- Location: LCCOMB_X22_Y10_N12
\view|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~0_combout\ = (\view|column\(0) & (\view|reg_hitbox.size_y\(0) $ (GND))) # (!\view|column\(0) & (!\view|reg_hitbox.size_y\(0) & VCC))
-- \view|Add4~1\ = CARRY((\view|column\(0) & !\view|reg_hitbox.size_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datab => \view|reg_hitbox.size_y\(0),
	datad => VCC,
	combout => \view|Add4~0_combout\,
	cout => \view|Add4~1\);

-- Location: LCCOMB_X22_Y10_N24
\view|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~12_combout\ = ((\view|reg_hitbox.up_left_x\(6) $ (\view|column\(6) $ (!\view|Add4~11\)))) # (GND)
-- \view|Add4~13\ = CARRY((\view|reg_hitbox.up_left_x\(6) & ((\view|column\(6)) # (!\view|Add4~11\))) # (!\view|reg_hitbox.up_left_x\(6) & (\view|column\(6) & !\view|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.up_left_x\(6),
	datab => \view|column\(6),
	datad => VCC,
	cin => \view|Add4~11\,
	combout => \view|Add4~12_combout\,
	cout => \view|Add4~13\);

-- Location: LCFF_X23_Y9_N11
\view|row[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~26_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(6));

-- Location: LCCOMB_X24_Y10_N0
\view|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~2_combout\ = \view|row\(0) $ (VCC)
-- \view|Add2~3\ = CARRY(\view|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(0),
	datad => VCC,
	combout => \view|Add2~2_combout\,
	cout => \view|Add2~3\);

-- Location: LCCOMB_X24_Y10_N6
\view|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~8_combout\ = (\view|row\(3) & (!\view|Add2~7\)) # (!\view|row\(3) & ((\view|Add2~7\) # (GND)))
-- \view|Add2~9\ = CARRY((!\view|Add2~7\) # (!\view|row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(3),
	datad => VCC,
	cin => \view|Add2~7\,
	combout => \view|Add2~8_combout\,
	cout => \view|Add2~9\);

-- Location: LCFF_X23_Y9_N13
\view|row[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~80_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(26));

-- Location: LCFF_X23_Y9_N31
\view|row[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~81_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(25));

-- Location: LCFF_X25_Y10_N7
\view|row[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~85_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(21));

-- Location: LCFF_X25_Y9_N5
\view|row[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~90_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(16));

-- Location: LCFF_X23_Y12_N17
\view|column[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~80_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(26));

-- Location: LCFF_X21_Y12_N11
\view|column[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~85_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(21));

-- Location: LCFF_X21_Y12_N1
\view|column[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~88_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(18));

-- Location: LCFF_X21_Y12_N29
\view|column[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~94_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(12));

-- Location: LCFF_X21_Y12_N31
\view|column[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~95_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(11));

-- Location: LCCOMB_X24_Y10_N8
\view|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~12_combout\ = (\view|row\(4) & (\view|Add2~9\ $ (GND))) # (!\view|row\(4) & (!\view|Add2~9\ & VCC))
-- \view|Add2~13\ = CARRY((\view|row\(4) & !\view|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(4),
	datad => VCC,
	cin => \view|Add2~9\,
	combout => \view|Add2~12_combout\,
	cout => \view|Add2~13\);

-- Location: LCCOMB_X22_Y13_N2
\view|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~2_combout\ = (\view|column\(1) & (!\view|Add3~1\)) # (!\view|column\(1) & ((\view|Add3~1\) # (GND)))
-- \view|Add3~3\ = CARRY((!\view|Add3~1\) # (!\view|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(1),
	datad => VCC,
	cin => \view|Add3~1\,
	combout => \view|Add3~2_combout\,
	cout => \view|Add3~3\);

-- Location: LCCOMB_X22_Y13_N6
\view|Add3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~9_combout\ = (\view|column\(3) & (!\view|Add3~7\)) # (!\view|column\(3) & ((\view|Add3~7\) # (GND)))
-- \view|Add3~10\ = CARRY((!\view|Add3~7\) # (!\view|column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(3),
	datad => VCC,
	cin => \view|Add3~7\,
	combout => \view|Add3~9_combout\,
	cout => \view|Add3~10\);

-- Location: LCCOMB_X22_Y13_N8
\view|Add3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~11_combout\ = (\view|column\(4) & (\view|Add3~10\ $ (GND))) # (!\view|column\(4) & (!\view|Add3~10\ & VCC))
-- \view|Add3~12\ = CARRY((\view|column\(4) & !\view|Add3~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(4),
	datad => VCC,
	cin => \view|Add3~10\,
	combout => \view|Add3~11_combout\,
	cout => \view|Add3~12\);

-- Location: LCCOMB_X24_Y10_N12
\view|Add2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~21_combout\ = (\view|row\(6) & (\view|Add2~19\ $ (GND))) # (!\view|row\(6) & (!\view|Add2~19\ & VCC))
-- \view|Add2~22\ = CARRY((\view|row\(6) & !\view|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(6),
	datad => VCC,
	cin => \view|Add2~19\,
	combout => \view|Add2~21_combout\,
	cout => \view|Add2~22\);

-- Location: LCCOMB_X24_Y10_N14
\view|Add2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~23_combout\ = (\view|row\(7) & (!\view|Add2~22\)) # (!\view|row\(7) & ((\view|Add2~22\) # (GND)))
-- \view|Add2~24\ = CARRY((!\view|Add2~22\) # (!\view|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(7),
	datad => VCC,
	cin => \view|Add2~22\,
	combout => \view|Add2~23_combout\,
	cout => \view|Add2~24\);

-- Location: LCCOMB_X24_Y10_N16
\view|Add2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~27_combout\ = (\view|row\(8) & (\view|Add2~24\ $ (GND))) # (!\view|row\(8) & (!\view|Add2~24\ & VCC))
-- \view|Add2~28\ = CARRY((\view|row\(8) & !\view|Add2~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(8),
	datad => VCC,
	cin => \view|Add2~24\,
	combout => \view|Add2~27_combout\,
	cout => \view|Add2~28\);

-- Location: LCCOMB_X44_Y11_N12
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \frame_time_gen:counter[0]~regout\ $ (VCC)
-- \Add0~1\ = CARRY(\frame_time_gen:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[0]~regout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X44_Y11_N24
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\frame_time_gen:counter[6]~regout\ & (\Add0~11\ $ (GND))) # (!\frame_time_gen:counter[6]~regout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\frame_time_gen:counter[6]~regout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[6]~regout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X44_Y10_N6
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\frame_time_gen:counter[13]~regout\ & (!\Add0~25\)) # (!\frame_time_gen:counter[13]~regout\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\frame_time_gen:counter[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[13]~regout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X44_Y10_N8
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\frame_time_gen:counter[14]~regout\ & (\Add0~27\ $ (GND))) # (!\frame_time_gen:counter[14]~regout\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\frame_time_gen:counter[14]~regout\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[14]~regout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X44_Y10_N10
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\frame_time_gen:counter[15]~regout\ & (!\Add0~29\)) # (!\frame_time_gen:counter[15]~regout\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\frame_time_gen:counter[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[15]~regout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X44_Y10_N12
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\frame_time_gen:counter[16]~regout\ & (\Add0~31\ $ (GND))) # (!\frame_time_gen:counter[16]~regout\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\frame_time_gen:counter[16]~regout\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[16]~regout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X44_Y10_N14
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\frame_time_gen:counter[17]~regout\ & (!\Add0~33\)) # (!\frame_time_gen:counter[17]~regout\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\frame_time_gen:counter[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[17]~regout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X44_Y10_N16
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\frame_time_gen:counter[18]~regout\ & (\Add0~35\ $ (GND))) # (!\frame_time_gen:counter[18]~regout\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\frame_time_gen:counter[18]~regout\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[18]~regout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X44_Y10_N18
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Add0~37\ $ (\frame_time_gen:counter[19]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \frame_time_gen:counter[19]~regout\,
	cin => \Add0~37\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X24_Y14_N2
\view_control_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~2_combout\ = (\view_control_unit|render_counter\(1) & (!\view_control_unit|Add0~1\)) # (!\view_control_unit|render_counter\(1) & ((\view_control_unit|Add0~1\) # (GND)))
-- \view_control_unit|Add0~3\ = CARRY((!\view_control_unit|Add0~1\) # (!\view_control_unit|render_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(1),
	datad => VCC,
	cin => \view_control_unit|Add0~1\,
	combout => \view_control_unit|Add0~2_combout\,
	cout => \view_control_unit|Add0~3\);

-- Location: LCCOMB_X24_Y14_N4
\view_control_unit|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~4_combout\ = (\view_control_unit|render_counter\(2) & (\view_control_unit|Add0~3\ $ (GND))) # (!\view_control_unit|render_counter\(2) & (!\view_control_unit|Add0~3\ & VCC))
-- \view_control_unit|Add0~5\ = CARRY((\view_control_unit|render_counter\(2) & !\view_control_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(2),
	datad => VCC,
	cin => \view_control_unit|Add0~3\,
	combout => \view_control_unit|Add0~4_combout\,
	cout => \view_control_unit|Add0~5\);

-- Location: LCCOMB_X24_Y14_N6
\view_control_unit|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~6_combout\ = (\view_control_unit|render_counter\(3) & (!\view_control_unit|Add0~5\)) # (!\view_control_unit|render_counter\(3) & ((\view_control_unit|Add0~5\) # (GND)))
-- \view_control_unit|Add0~7\ = CARRY((!\view_control_unit|Add0~5\) # (!\view_control_unit|render_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(3),
	datad => VCC,
	cin => \view_control_unit|Add0~5\,
	combout => \view_control_unit|Add0~6_combout\,
	cout => \view_control_unit|Add0~7\);

-- Location: LCCOMB_X24_Y14_N8
\view_control_unit|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~8_combout\ = (\view_control_unit|render_counter\(4) & (\view_control_unit|Add0~7\ $ (GND))) # (!\view_control_unit|render_counter\(4) & (!\view_control_unit|Add0~7\ & VCC))
-- \view_control_unit|Add0~9\ = CARRY((\view_control_unit|render_counter\(4) & !\view_control_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(4),
	datad => VCC,
	cin => \view_control_unit|Add0~7\,
	combout => \view_control_unit|Add0~8_combout\,
	cout => \view_control_unit|Add0~9\);

-- Location: LCCOMB_X24_Y14_N18
\view_control_unit|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~18_combout\ = (\view_control_unit|render_counter\(9) & (!\view_control_unit|Add0~17\)) # (!\view_control_unit|render_counter\(9) & ((\view_control_unit|Add0~17\) # (GND)))
-- \view_control_unit|Add0~19\ = CARRY((!\view_control_unit|Add0~17\) # (!\view_control_unit|render_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(9),
	datad => VCC,
	cin => \view_control_unit|Add0~17\,
	combout => \view_control_unit|Add0~18_combout\,
	cout => \view_control_unit|Add0~19\);

-- Location: LCCOMB_X24_Y14_N30
\view_control_unit|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~30_combout\ = (\view_control_unit|render_counter\(15) & (!\view_control_unit|Add0~29\)) # (!\view_control_unit|render_counter\(15) & ((\view_control_unit|Add0~29\) # (GND)))
-- \view_control_unit|Add0~31\ = CARRY((!\view_control_unit|Add0~29\) # (!\view_control_unit|render_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(15),
	datad => VCC,
	cin => \view_control_unit|Add0~29\,
	combout => \view_control_unit|Add0~30_combout\,
	cout => \view_control_unit|Add0~31\);

-- Location: LCCOMB_X24_Y13_N2
\view_control_unit|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~34_combout\ = (\view_control_unit|render_counter\(17) & (!\view_control_unit|Add0~33\)) # (!\view_control_unit|render_counter\(17) & ((\view_control_unit|Add0~33\) # (GND)))
-- \view_control_unit|Add0~35\ = CARRY((!\view_control_unit|Add0~33\) # (!\view_control_unit|render_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(17),
	datad => VCC,
	cin => \view_control_unit|Add0~33\,
	combout => \view_control_unit|Add0~34_combout\,
	cout => \view_control_unit|Add0~35\);

-- Location: LCCOMB_X24_Y13_N8
\view_control_unit|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~40_combout\ = (\view_control_unit|render_counter\(20) & (\view_control_unit|Add0~39\ $ (GND))) # (!\view_control_unit|render_counter\(20) & (!\view_control_unit|Add0~39\ & VCC))
-- \view_control_unit|Add0~41\ = CARRY((\view_control_unit|render_counter\(20) & !\view_control_unit|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(20),
	datad => VCC,
	cin => \view_control_unit|Add0~39\,
	combout => \view_control_unit|Add0~40_combout\,
	cout => \view_control_unit|Add0~41\);

-- Location: LCCOMB_X24_Y13_N10
\view_control_unit|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~42_combout\ = (\view_control_unit|render_counter\(21) & (!\view_control_unit|Add0~41\)) # (!\view_control_unit|render_counter\(21) & ((\view_control_unit|Add0~41\) # (GND)))
-- \view_control_unit|Add0~43\ = CARRY((!\view_control_unit|Add0~41\) # (!\view_control_unit|render_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(21),
	datad => VCC,
	cin => \view_control_unit|Add0~41\,
	combout => \view_control_unit|Add0~42_combout\,
	cout => \view_control_unit|Add0~43\);

-- Location: LCCOMB_X24_Y13_N12
\view_control_unit|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~44_combout\ = (\view_control_unit|render_counter\(22) & (\view_control_unit|Add0~43\ $ (GND))) # (!\view_control_unit|render_counter\(22) & (!\view_control_unit|Add0~43\ & VCC))
-- \view_control_unit|Add0~45\ = CARRY((\view_control_unit|render_counter\(22) & !\view_control_unit|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(22),
	datad => VCC,
	cin => \view_control_unit|Add0~43\,
	combout => \view_control_unit|Add0~44_combout\,
	cout => \view_control_unit|Add0~45\);

-- Location: LCCOMB_X24_Y13_N14
\view_control_unit|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~46_combout\ = (\view_control_unit|render_counter\(23) & (!\view_control_unit|Add0~45\)) # (!\view_control_unit|render_counter\(23) & ((\view_control_unit|Add0~45\) # (GND)))
-- \view_control_unit|Add0~47\ = CARRY((!\view_control_unit|Add0~45\) # (!\view_control_unit|render_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(23),
	datad => VCC,
	cin => \view_control_unit|Add0~45\,
	combout => \view_control_unit|Add0~46_combout\,
	cout => \view_control_unit|Add0~47\);

-- Location: LCCOMB_X24_Y10_N26
\view|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~38_combout\ = (\view|row\(13) & (!\view|Add2~37\)) # (!\view|row\(13) & ((\view|Add2~37\) # (GND)))
-- \view|Add2~39\ = CARRY((!\view|Add2~37\) # (!\view|row\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(13),
	datad => VCC,
	cin => \view|Add2~37\,
	combout => \view|Add2~38_combout\,
	cout => \view|Add2~39\);

-- Location: LCCOMB_X24_Y10_N28
\view|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~40_combout\ = (\view|row\(14) & (\view|Add2~39\ $ (GND))) # (!\view|row\(14) & (!\view|Add2~39\ & VCC))
-- \view|Add2~41\ = CARRY((\view|row\(14) & !\view|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(14),
	datad => VCC,
	cin => \view|Add2~39\,
	combout => \view|Add2~40_combout\,
	cout => \view|Add2~41\);

-- Location: LCCOMB_X24_Y9_N0
\view|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~44_combout\ = (\view|row\(16) & (\view|Add2~43\ $ (GND))) # (!\view|row\(16) & (!\view|Add2~43\ & VCC))
-- \view|Add2~45\ = CARRY((\view|row\(16) & !\view|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(16),
	datad => VCC,
	cin => \view|Add2~43\,
	combout => \view|Add2~44_combout\,
	cout => \view|Add2~45\);

-- Location: LCCOMB_X24_Y9_N2
\view|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~46_combout\ = (\view|row\(17) & (!\view|Add2~45\)) # (!\view|row\(17) & ((\view|Add2~45\) # (GND)))
-- \view|Add2~47\ = CARRY((!\view|Add2~45\) # (!\view|row\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(17),
	datad => VCC,
	cin => \view|Add2~45\,
	combout => \view|Add2~46_combout\,
	cout => \view|Add2~47\);

-- Location: LCCOMB_X24_Y9_N8
\view|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~52_combout\ = (\view|row\(20) & (\view|Add2~51\ $ (GND))) # (!\view|row\(20) & (!\view|Add2~51\ & VCC))
-- \view|Add2~53\ = CARRY((\view|row\(20) & !\view|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(20),
	datad => VCC,
	cin => \view|Add2~51\,
	combout => \view|Add2~52_combout\,
	cout => \view|Add2~53\);

-- Location: LCCOMB_X24_Y9_N10
\view|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~54_combout\ = (\view|row\(21) & (!\view|Add2~53\)) # (!\view|row\(21) & ((\view|Add2~53\) # (GND)))
-- \view|Add2~55\ = CARRY((!\view|Add2~53\) # (!\view|row\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(21),
	datad => VCC,
	cin => \view|Add2~53\,
	combout => \view|Add2~54_combout\,
	cout => \view|Add2~55\);

-- Location: LCCOMB_X24_Y9_N12
\view|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~56_combout\ = (\view|row\(22) & (\view|Add2~55\ $ (GND))) # (!\view|row\(22) & (!\view|Add2~55\ & VCC))
-- \view|Add2~57\ = CARRY((\view|row\(22) & !\view|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(22),
	datad => VCC,
	cin => \view|Add2~55\,
	combout => \view|Add2~56_combout\,
	cout => \view|Add2~57\);

-- Location: LCCOMB_X24_Y9_N16
\view|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~60_combout\ = (\view|row\(24) & (\view|Add2~59\ $ (GND))) # (!\view|row\(24) & (!\view|Add2~59\ & VCC))
-- \view|Add2~61\ = CARRY((\view|row\(24) & !\view|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(24),
	datad => VCC,
	cin => \view|Add2~59\,
	combout => \view|Add2~60_combout\,
	cout => \view|Add2~61\);

-- Location: LCCOMB_X24_Y9_N18
\view|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~62_combout\ = (\view|row\(25) & (!\view|Add2~61\)) # (!\view|row\(25) & ((\view|Add2~61\) # (GND)))
-- \view|Add2~63\ = CARRY((!\view|Add2~61\) # (!\view|row\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(25),
	datad => VCC,
	cin => \view|Add2~61\,
	combout => \view|Add2~62_combout\,
	cout => \view|Add2~63\);

-- Location: LCCOMB_X24_Y9_N20
\view|Add2~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~64_combout\ = (\view|row\(26) & (\view|Add2~63\ $ (GND))) # (!\view|row\(26) & (!\view|Add2~63\ & VCC))
-- \view|Add2~65\ = CARRY((\view|row\(26) & !\view|Add2~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(26),
	datad => VCC,
	cin => \view|Add2~63\,
	combout => \view|Add2~64_combout\,
	cout => \view|Add2~65\);

-- Location: LCCOMB_X24_Y9_N26
\view|Add2~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~70_combout\ = (\view|row\(29) & (!\view|Add2~69\)) # (!\view|row\(29) & ((\view|Add2~69\) # (GND)))
-- \view|Add2~71\ = CARRY((!\view|Add2~69\) # (!\view|row\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(29),
	datad => VCC,
	cin => \view|Add2~69\,
	combout => \view|Add2~70_combout\,
	cout => \view|Add2~71\);

-- Location: LCCOMB_X22_Y13_N22
\view|Add3~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~33_combout\ = (\view|column\(11) & (!\view|Add3~32\)) # (!\view|column\(11) & ((\view|Add3~32\) # (GND)))
-- \view|Add3~34\ = CARRY((!\view|Add3~32\) # (!\view|column\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(11),
	datad => VCC,
	cin => \view|Add3~32\,
	combout => \view|Add3~33_combout\,
	cout => \view|Add3~34\);

-- Location: LCCOMB_X22_Y13_N24
\view|Add3~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~35_combout\ = (\view|column\(12) & (\view|Add3~34\ $ (GND))) # (!\view|column\(12) & (!\view|Add3~34\ & VCC))
-- \view|Add3~36\ = CARRY((\view|column\(12) & !\view|Add3~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(12),
	datad => VCC,
	cin => \view|Add3~34\,
	combout => \view|Add3~35_combout\,
	cout => \view|Add3~36\);

-- Location: LCCOMB_X22_Y13_N26
\view|Add3~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~37_combout\ = (\view|column\(13) & (!\view|Add3~36\)) # (!\view|column\(13) & ((\view|Add3~36\) # (GND)))
-- \view|Add3~38\ = CARRY((!\view|Add3~36\) # (!\view|column\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(13),
	datad => VCC,
	cin => \view|Add3~36\,
	combout => \view|Add3~37_combout\,
	cout => \view|Add3~38\);

-- Location: LCCOMB_X22_Y13_N28
\view|Add3~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~39_combout\ = (\view|column\(14) & (\view|Add3~38\ $ (GND))) # (!\view|column\(14) & (!\view|Add3~38\ & VCC))
-- \view|Add3~40\ = CARRY((\view|column\(14) & !\view|Add3~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(14),
	datad => VCC,
	cin => \view|Add3~38\,
	combout => \view|Add3~39_combout\,
	cout => \view|Add3~40\);

-- Location: LCCOMB_X22_Y13_N30
\view|Add3~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~41_combout\ = (\view|column\(15) & (!\view|Add3~40\)) # (!\view|column\(15) & ((\view|Add3~40\) # (GND)))
-- \view|Add3~42\ = CARRY((!\view|Add3~40\) # (!\view|column\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(15),
	datad => VCC,
	cin => \view|Add3~40\,
	combout => \view|Add3~41_combout\,
	cout => \view|Add3~42\);

-- Location: LCCOMB_X22_Y12_N0
\view|Add3~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~43_combout\ = (\view|column\(16) & (\view|Add3~42\ $ (GND))) # (!\view|column\(16) & (!\view|Add3~42\ & VCC))
-- \view|Add3~44\ = CARRY((\view|column\(16) & !\view|Add3~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(16),
	datad => VCC,
	cin => \view|Add3~42\,
	combout => \view|Add3~43_combout\,
	cout => \view|Add3~44\);

-- Location: LCCOMB_X22_Y12_N2
\view|Add3~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~45_combout\ = (\view|column\(17) & (!\view|Add3~44\)) # (!\view|column\(17) & ((\view|Add3~44\) # (GND)))
-- \view|Add3~46\ = CARRY((!\view|Add3~44\) # (!\view|column\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(17),
	datad => VCC,
	cin => \view|Add3~44\,
	combout => \view|Add3~45_combout\,
	cout => \view|Add3~46\);

-- Location: LCCOMB_X22_Y12_N4
\view|Add3~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~47_combout\ = (\view|column\(18) & (\view|Add3~46\ $ (GND))) # (!\view|column\(18) & (!\view|Add3~46\ & VCC))
-- \view|Add3~48\ = CARRY((\view|column\(18) & !\view|Add3~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(18),
	datad => VCC,
	cin => \view|Add3~46\,
	combout => \view|Add3~47_combout\,
	cout => \view|Add3~48\);

-- Location: LCCOMB_X22_Y12_N6
\view|Add3~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~49_combout\ = (\view|column\(19) & (!\view|Add3~48\)) # (!\view|column\(19) & ((\view|Add3~48\) # (GND)))
-- \view|Add3~50\ = CARRY((!\view|Add3~48\) # (!\view|column\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(19),
	datad => VCC,
	cin => \view|Add3~48\,
	combout => \view|Add3~49_combout\,
	cout => \view|Add3~50\);

-- Location: LCCOMB_X22_Y12_N8
\view|Add3~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~51_combout\ = (\view|column\(20) & (\view|Add3~50\ $ (GND))) # (!\view|column\(20) & (!\view|Add3~50\ & VCC))
-- \view|Add3~52\ = CARRY((\view|column\(20) & !\view|Add3~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(20),
	datad => VCC,
	cin => \view|Add3~50\,
	combout => \view|Add3~51_combout\,
	cout => \view|Add3~52\);

-- Location: LCCOMB_X22_Y12_N10
\view|Add3~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~53_combout\ = (\view|column\(21) & (!\view|Add3~52\)) # (!\view|column\(21) & ((\view|Add3~52\) # (GND)))
-- \view|Add3~54\ = CARRY((!\view|Add3~52\) # (!\view|column\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(21),
	datad => VCC,
	cin => \view|Add3~52\,
	combout => \view|Add3~53_combout\,
	cout => \view|Add3~54\);

-- Location: LCCOMB_X22_Y12_N12
\view|Add3~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~55_combout\ = (\view|column\(22) & (\view|Add3~54\ $ (GND))) # (!\view|column\(22) & (!\view|Add3~54\ & VCC))
-- \view|Add3~56\ = CARRY((\view|column\(22) & !\view|Add3~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(22),
	datad => VCC,
	cin => \view|Add3~54\,
	combout => \view|Add3~55_combout\,
	cout => \view|Add3~56\);

-- Location: LCCOMB_X22_Y12_N14
\view|Add3~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~57_combout\ = (\view|column\(23) & (!\view|Add3~56\)) # (!\view|column\(23) & ((\view|Add3~56\) # (GND)))
-- \view|Add3~58\ = CARRY((!\view|Add3~56\) # (!\view|column\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(23),
	datad => VCC,
	cin => \view|Add3~56\,
	combout => \view|Add3~57_combout\,
	cout => \view|Add3~58\);

-- Location: LCCOMB_X22_Y12_N20
\view|Add3~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~63_combout\ = (\view|column\(26) & (\view|Add3~62\ $ (GND))) # (!\view|column\(26) & (!\view|Add3~62\ & VCC))
-- \view|Add3~64\ = CARRY((\view|column\(26) & !\view|Add3~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(26),
	datad => VCC,
	cin => \view|Add3~62\,
	combout => \view|Add3~63_combout\,
	cout => \view|Add3~64\);

-- Location: LCCOMB_X22_Y12_N24
\view|Add3~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~67_combout\ = (\view|column\(28) & (\view|Add3~66\ $ (GND))) # (!\view|column\(28) & (!\view|Add3~66\ & VCC))
-- \view|Add3~68\ = CARRY((\view|column\(28) & !\view|Add3~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(28),
	datad => VCC,
	cin => \view|Add3~66\,
	combout => \view|Add3~67_combout\,
	cout => \view|Add3~68\);

-- Location: LCCOMB_X22_Y12_N26
\view|Add3~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~69_combout\ = (\view|column\(29) & (!\view|Add3~68\)) # (!\view|column\(29) & ((\view|Add3~68\) # (GND)))
-- \view|Add3~70\ = CARRY((!\view|Add3~68\) # (!\view|column\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(29),
	datad => VCC,
	cin => \view|Add3~68\,
	combout => \view|Add3~69_combout\,
	cout => \view|Add3~70\);

-- Location: LCCOMB_X22_Y12_N28
\view|Add3~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~71_combout\ = (\view|column\(30) & (\view|Add3~70\ $ (GND))) # (!\view|column\(30) & (!\view|Add3~70\ & VCC))
-- \view|Add3~72\ = CARRY((\view|column\(30) & !\view|Add3~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(30),
	datad => VCC,
	cin => \view|Add3~70\,
	combout => \view|Add3~71_combout\,
	cout => \view|Add3~72\);

-- Location: LCCOMB_X31_Y11_N12
\datapath|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add3~6_combout\ = (\datapath|alien_grid[1][0].hitbox.up_left_x\(5) & ((\datapath|Add3~5\) # (GND))) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(5) & (!\datapath|Add3~5\))
-- \datapath|Add3~7\ = CARRY((\datapath|alien_grid[1][0].hitbox.up_left_x\(5)) # (!\datapath|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[1][0].hitbox.up_left_x\(5),
	datad => VCC,
	cin => \datapath|Add3~5\,
	combout => \datapath|Add3~6_combout\,
	cout => \datapath|Add3~7\);

-- Location: LCCOMB_X31_Y11_N16
\datapath|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add3~10_combout\ = (\datapath|alien_grid[1][0].hitbox.up_left_x\(7) & (!\datapath|Add3~9\)) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(7) & ((\datapath|Add3~9\) # (GND)))
-- \datapath|Add3~11\ = CARRY((!\datapath|Add3~9\) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[1][0].hitbox.up_left_x\(7),
	datad => VCC,
	cin => \datapath|Add3~9\,
	combout => \datapath|Add3~10_combout\,
	cout => \datapath|Add3~11\);

-- Location: LCCOMB_X29_Y11_N8
\datapath|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add5~0_combout\ = (\datapath|alien_grid[2][0].hitbox.up_left_x\(2) & (\datapath|alien_grid[0][0].current_index\(0) & VCC)) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(2) & (\datapath|alien_grid[0][0].current_index\(0) $ (VCC)))
-- \datapath|Add5~1\ = CARRY((!\datapath|alien_grid[2][0].hitbox.up_left_x\(2) & \datapath|alien_grid[0][0].current_index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[2][0].hitbox.up_left_x\(2),
	datab => \datapath|alien_grid[0][0].current_index\(0),
	datad => VCC,
	combout => \datapath|Add5~0_combout\,
	cout => \datapath|Add5~1\);

-- Location: LCCOMB_X29_Y11_N10
\datapath|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add5~2_combout\ = (\datapath|alien_grid[2][0].hitbox.up_left_x\(3) & (\datapath|Add5~1\ & VCC)) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(3) & (!\datapath|Add5~1\))
-- \datapath|Add5~3\ = CARRY((!\datapath|alien_grid[2][0].hitbox.up_left_x\(3) & !\datapath|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[2][0].hitbox.up_left_x\(3),
	datad => VCC,
	cin => \datapath|Add5~1\,
	combout => \datapath|Add5~2_combout\,
	cout => \datapath|Add5~3\);

-- Location: LCCOMB_X29_Y11_N20
\datapath|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add5~12_combout\ = (\datapath|alien_grid[2][0].hitbox.up_left_x\(8) & (\datapath|Add5~11\ $ (GND))) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(8) & (!\datapath|Add5~11\ & VCC))
-- \datapath|Add5~13\ = CARRY((\datapath|alien_grid[2][0].hitbox.up_left_x\(8) & !\datapath|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[2][0].hitbox.up_left_x\(8),
	datad => VCC,
	cin => \datapath|Add5~11\,
	combout => \datapath|Add5~12_combout\,
	cout => \datapath|Add5~13\);

-- Location: LCCOMB_X30_Y11_N8
\datapath|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~2_combout\ = (\datapath|alien_grid[0][0].hitbox.up_left_x\(3) & (\datapath|Add1~1\ & VCC)) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(3) & (!\datapath|Add1~1\))
-- \datapath|Add1~3\ = CARRY((!\datapath|alien_grid[0][0].hitbox.up_left_x\(3) & !\datapath|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[0][0].hitbox.up_left_x\(3),
	datad => VCC,
	cin => \datapath|Add1~1\,
	combout => \datapath|Add1~2_combout\,
	cout => \datapath|Add1~3\);

-- Location: LCCOMB_X30_Y11_N10
\datapath|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~4_combout\ = (\datapath|alien_grid[0][0].hitbox.up_left_x\(4) & (\datapath|Add1~3\ $ (GND))) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(4) & (!\datapath|Add1~3\ & VCC))
-- \datapath|Add1~5\ = CARRY((\datapath|alien_grid[0][0].hitbox.up_left_x\(4) & !\datapath|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[0][0].hitbox.up_left_x\(4),
	datad => VCC,
	cin => \datapath|Add1~3\,
	combout => \datapath|Add1~4_combout\,
	cout => \datapath|Add1~5\);

-- Location: LCCOMB_X30_Y11_N12
\datapath|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~6_combout\ = (\datapath|alien_grid[0][0].hitbox.up_left_x\(5) & (!\datapath|Add1~5\)) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(5) & ((\datapath|Add1~5\) # (GND)))
-- \datapath|Add1~7\ = CARRY((!\datapath|Add1~5\) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[0][0].hitbox.up_left_x\(5),
	datad => VCC,
	cin => \datapath|Add1~5\,
	combout => \datapath|Add1~6_combout\,
	cout => \datapath|Add1~7\);

-- Location: LCCOMB_X30_Y11_N14
\datapath|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~8_combout\ = (\datapath|alien_grid[0][0].hitbox.up_left_x\(6) & (\datapath|Add1~7\ $ (GND))) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(6) & (!\datapath|Add1~7\ & VCC))
-- \datapath|Add1~9\ = CARRY((\datapath|alien_grid[0][0].hitbox.up_left_x\(6) & !\datapath|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[0][0].hitbox.up_left_x\(6),
	datad => VCC,
	cin => \datapath|Add1~7\,
	combout => \datapath|Add1~8_combout\,
	cout => \datapath|Add1~9\);

-- Location: LCCOMB_X30_Y11_N16
\datapath|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~10_combout\ = (\datapath|alien_grid[0][0].hitbox.up_left_x\(7) & (!\datapath|Add1~9\)) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(7) & ((\datapath|Add1~9\) # (GND)))
-- \datapath|Add1~11\ = CARRY((!\datapath|Add1~9\) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[0][0].hitbox.up_left_x\(7),
	datad => VCC,
	cin => \datapath|Add1~9\,
	combout => \datapath|Add1~10_combout\,
	cout => \datapath|Add1~11\);

-- Location: LCCOMB_X30_Y11_N18
\datapath|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~12_combout\ = (\datapath|alien_grid[0][0].hitbox.up_left_x\(8) & (\datapath|Add1~11\ $ (GND))) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(8) & (!\datapath|Add1~11\ & VCC))
-- \datapath|Add1~13\ = CARRY((\datapath|alien_grid[0][0].hitbox.up_left_x\(8) & !\datapath|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[0][0].hitbox.up_left_x\(8),
	datad => VCC,
	cin => \datapath|Add1~11\,
	combout => \datapath|Add1~12_combout\,
	cout => \datapath|Add1~13\);

-- Location: LCCOMB_X30_Y11_N20
\datapath|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~14_combout\ = \datapath|alien_grid[0][0].hitbox.up_left_x\(9) $ (\datapath|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[0][0].hitbox.up_left_x\(9),
	cin => \datapath|Add1~13\,
	combout => \datapath|Add1~14_combout\);

-- Location: LCCOMB_X31_Y10_N6
\datapath|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~4_combout\ = (\datapath|alien_grid[3][0].hitbox.up_left_x\(4) & (!\datapath|Add7~3\ & VCC)) # (!\datapath|alien_grid[3][0].hitbox.up_left_x\(4) & (\datapath|Add7~3\ $ (GND)))
-- \datapath|Add7~5\ = CARRY((!\datapath|alien_grid[3][0].hitbox.up_left_x\(4) & !\datapath|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[3][0].hitbox.up_left_x\(4),
	datad => VCC,
	cin => \datapath|Add7~3\,
	combout => \datapath|Add7~4_combout\,
	cout => \datapath|Add7~5\);

-- Location: LCCOMB_X31_Y10_N8
\datapath|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~6_combout\ = (\datapath|alien_grid[3][0].hitbox.up_left_x\(5) & ((\datapath|Add7~5\) # (GND))) # (!\datapath|alien_grid[3][0].hitbox.up_left_x\(5) & (!\datapath|Add7~5\))
-- \datapath|Add7~7\ = CARRY((\datapath|alien_grid[3][0].hitbox.up_left_x\(5)) # (!\datapath|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[3][0].hitbox.up_left_x\(5),
	datad => VCC,
	cin => \datapath|Add7~5\,
	combout => \datapath|Add7~6_combout\,
	cout => \datapath|Add7~7\);

-- Location: LCCOMB_X31_Y10_N10
\datapath|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~8_combout\ = (\datapath|alien_grid[3][0].hitbox.up_left_x\(6) & (!\datapath|Add7~7\ & VCC)) # (!\datapath|alien_grid[3][0].hitbox.up_left_x\(6) & (\datapath|Add7~7\ $ (GND)))
-- \datapath|Add7~9\ = CARRY((!\datapath|alien_grid[3][0].hitbox.up_left_x\(6) & !\datapath|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[3][0].hitbox.up_left_x\(6),
	datad => VCC,
	cin => \datapath|Add7~7\,
	combout => \datapath|Add7~8_combout\,
	cout => \datapath|Add7~9\);

-- Location: LCCOMB_X31_Y10_N12
\datapath|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~10_combout\ = (\datapath|alien_grid[3][0].hitbox.up_left_x\(7) & (!\datapath|Add7~9\)) # (!\datapath|alien_grid[3][0].hitbox.up_left_x\(7) & ((\datapath|Add7~9\) # (GND)))
-- \datapath|Add7~11\ = CARRY((!\datapath|Add7~9\) # (!\datapath|alien_grid[3][0].hitbox.up_left_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[3][0].hitbox.up_left_x\(7),
	datad => VCC,
	cin => \datapath|Add7~9\,
	combout => \datapath|Add7~10_combout\,
	cout => \datapath|Add7~11\);

-- Location: LCCOMB_X31_Y10_N14
\datapath|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~12_combout\ = (\datapath|alien_grid[3][0].hitbox.up_left_x\(8) & (\datapath|Add7~11\ $ (GND))) # (!\datapath|alien_grid[3][0].hitbox.up_left_x\(8) & (!\datapath|Add7~11\ & VCC))
-- \datapath|Add7~13\ = CARRY((\datapath|alien_grid[3][0].hitbox.up_left_x\(8) & !\datapath|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[3][0].hitbox.up_left_x\(8),
	datad => VCC,
	cin => \datapath|Add7~11\,
	combout => \datapath|Add7~12_combout\,
	cout => \datapath|Add7~13\);

-- Location: LCCOMB_X31_Y10_N16
\datapath|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~14_combout\ = \datapath|alien_grid[3][0].hitbox.up_left_x\(9) $ (\datapath|Add7~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[3][0].hitbox.up_left_x\(9),
	cin => \datapath|Add7~13\,
	combout => \datapath|Add7~14_combout\);

-- Location: LCCOMB_X31_Y4_N10
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\game_tick_gen:counter[2]~regout\ & (\Add1~3\ $ (GND))) # (!\game_tick_gen:counter[2]~regout\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\game_tick_gen:counter[2]~regout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[2]~regout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X31_Y4_N12
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\game_tick_gen:counter[3]~regout\ & (!\Add1~5\)) # (!\game_tick_gen:counter[3]~regout\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\game_tick_gen:counter[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[3]~regout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X31_Y4_N16
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\game_tick_gen:counter[5]~regout\ & (!\Add1~9\)) # (!\game_tick_gen:counter[5]~regout\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\game_tick_gen:counter[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[5]~regout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X31_Y4_N20
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\game_tick_gen:counter[7]~regout\ & (!\Add1~13\)) # (!\game_tick_gen:counter[7]~regout\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\game_tick_gen:counter[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[7]~regout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X31_Y3_N6
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\game_tick_gen:counter[16]~regout\ & (\Add1~31\ $ (GND))) # (!\game_tick_gen:counter[16]~regout\ & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((\game_tick_gen:counter[16]~regout\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[16]~regout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X31_Y3_N14
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\game_tick_gen:counter[20]~regout\ & (\Add1~39\ $ (GND))) # (!\game_tick_gen:counter[20]~regout\ & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((\game_tick_gen:counter[20]~regout\ & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[20]~regout\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X31_Y3_N22
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\game_tick_gen:counter[24]~regout\ & (\Add1~47\ $ (GND))) # (!\game_tick_gen:counter[24]~regout\ & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((\game_tick_gen:counter[24]~regout\ & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[24]~regout\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X31_Y3_N24
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = \Add1~49\ $ (\game_tick_gen:counter[25]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_tick_gen:counter[25]~regout\,
	cin => \Add1~49\,
	combout => \Add1~50_combout\);

-- Location: LCFF_X20_Y6_N21
\vga|vga_timing|v_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~16_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(8));

-- Location: LCFF_X20_Y6_N17
\vga|vga_timing|v_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(6));

-- Location: LCFF_X20_Y6_N13
\vga|vga_timing|v_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(4));

-- Location: LCCOMB_X20_Y6_N2
\vga|vga_timing|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal6~0_combout\ = (!\vga|vga_timing|v_counter\(8) & (!\vga|vga_timing|v_counter\(7) & (!\vga|vga_timing|v_counter\(6) & !\vga|vga_timing|v_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(8),
	datab => \vga|vga_timing|v_counter\(7),
	datac => \vga|vga_timing|v_counter\(6),
	datad => \vga|vga_timing|v_counter\(4),
	combout => \vga|vga_timing|Equal6~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\vga|vga_timing|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal1~0_combout\ = (!\vga|vga_timing|h_counter\(5) & (!\vga|vga_timing|h_counter\(7) & \vga|vga_timing|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(5),
	datab => \vga|vga_timing|h_counter\(7),
	datad => \vga|vga_timing|Equal2~0_combout\,
	combout => \vga|vga_timing|Equal1~0_combout\);

-- Location: LCFF_X19_Y10_N17
\vga|x_end[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~1_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(8));

-- Location: LCCOMB_X19_Y9_N12
\vga|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~0_combout\ = (\vga|x_end\(9) & (\vga|x_cursor\(9) & (\vga|x_cursor\(8) $ (!\vga|x_end\(8))))) # (!\vga|x_end\(9) & (!\vga|x_cursor\(9) & (\vga|x_cursor\(8) $ (!\vga|x_end\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_end\(9),
	datab => \vga|x_cursor\(8),
	datac => \vga|x_end\(8),
	datad => \vga|x_cursor\(9),
	combout => \vga|Equal0~0_combout\);

-- Location: LCFF_X20_Y9_N25
\vga|x_end[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~6_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(5));

-- Location: LCFF_X20_Y9_N29
\vga|x_end[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~8_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(7));

-- Location: LCFF_X20_Y9_N7
\vga|x_end[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|x_end~9_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(6));

-- Location: LCCOMB_X20_Y9_N6
\vga|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~4_combout\ = (\vga|x_cursor\(7) & (\vga|x_end\(7) & (\vga|x_cursor\(6) $ (!\vga|x_end\(6))))) # (!\vga|x_cursor\(7) & (!\vga|x_end\(7) & (\vga|x_cursor\(6) $ (!\vga|x_end\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(7),
	datab => \vga|x_cursor\(6),
	datac => \vga|x_end\(6),
	datad => \vga|x_end\(7),
	combout => \vga|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y9_N16
\vga|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~4_combout\ = (\vga|x_start\(5) & (\vga|x_cursor\(5) & (\vga|x_cursor\(6) $ (!\vga|x_start\(6))))) # (!\vga|x_start\(5) & (!\vga|x_cursor\(5) & (\vga|x_cursor\(6) $ (!\vga|x_start\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_start\(5),
	datab => \vga|x_cursor\(6),
	datac => \vga|x_cursor\(5),
	datad => \vga|x_start\(6),
	combout => \vga|Equal2~4_combout\);

-- Location: LCFF_X20_Y11_N13
\vga|y_end[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~7_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(7));

-- Location: LCFF_X20_Y11_N7
\vga|y_end[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|y_end~8_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(6));

-- Location: LCCOMB_X20_Y11_N6
\vga|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~3_combout\ = (\vga|y_end\(7) & (\vga|y_cursor\(7) & (\vga|y_cursor\(6) $ (!\vga|y_end\(6))))) # (!\vga|y_end\(7) & (!\vga|y_cursor\(7) & (\vga|y_cursor\(6) $ (!\vga|y_end\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_end\(7),
	datab => \vga|y_cursor\(6),
	datac => \vga|y_end\(6),
	datad => \vga|y_cursor\(7),
	combout => \vga|Equal1~3_combout\);

-- Location: LCCOMB_X18_Y11_N20
\vga|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~0_combout\ = (\vga|y_end\(5) & (\vga|y_cursor\(5) & (\vga|y_start\(0) $ (!\vga|y_cursor\(0))))) # (!\vga|y_end\(5) & (!\vga|y_cursor\(5) & (\vga|y_start\(0) $ (!\vga|y_cursor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_end\(5),
	datab => \vga|y_start\(0),
	datac => \vga|y_cursor\(0),
	datad => \vga|y_cursor\(5),
	combout => \vga|Equal3~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
\vga|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector3~4_combout\ = (!\vga|state.IDLE~regout\ & ((\view|FB_COLOR\(10)) # (\view|FB_CLEAR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.IDLE~regout\,
	datac => \view|FB_COLOR\(10),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|Selector3~4_combout\);

-- Location: LCCOMB_X22_Y9_N28
\vga|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~29_combout\ = (\vga|x_cursor[3]~13_combout\ & (\vga|Add1~27_combout\)) # (!\vga|x_cursor[3]~13_combout\ & ((\vga|x_end\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[3]~13_combout\,
	datac => \vga|Add1~27_combout\,
	datad => \vga|x_end\(9),
	combout => \vga|Add1~29_combout\);

-- Location: LCFF_X20_Y10_N27
\view|FB_X1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector76~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(8));

-- Location: LCCOMB_X19_Y10_N16
\vga|x_end~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~1_combout\ = (\view|FB_X1\(8)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|FB_X1\(8),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~1_combout\);

-- Location: LCFF_X19_Y10_N11
\view|FB_X1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector81~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(3));

-- Location: LCFF_X20_Y10_N25
\view|FB_X1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector79~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(5));

-- Location: LCCOMB_X20_Y9_N24
\vga|x_end~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~6_combout\ = (\view|FB_X1\(5)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|FB_X1\(5),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~6_combout\);

-- Location: LCFF_X23_Y10_N19
\view|FB_X1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector77~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(7));

-- Location: LCCOMB_X20_Y9_N28
\vga|x_end~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~8_combout\ = (\view|FB_X1\(7)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X1\(7),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~8_combout\);

-- Location: LCFF_X23_Y10_N29
\view|FB_X1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector78~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(6));

-- Location: LCCOMB_X23_Y10_N6
\vga|x_end~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~9_combout\ = (\view|FB_X1\(6)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X1\(6),
	datac => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~9_combout\);

-- Location: LCFF_X21_Y11_N7
\view|FB_X0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector78~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(6));

-- Location: LCFF_X18_Y10_N13
\view|FB_Y1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector91~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y1\(1));

-- Location: LCFF_X20_Y10_N3
\view|FB_Y1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector86~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y1\(7));

-- Location: LCCOMB_X20_Y11_N12
\vga|y_end~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~7_combout\ = (\view|FB_CLEAR~regout\) # (\view|FB_Y1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_CLEAR~regout\,
	datad => \view|FB_Y1\(7),
	combout => \vga|y_end~7_combout\);

-- Location: LCFF_X19_Y10_N15
\view|FB_Y1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector87~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y1\(6));

-- Location: LCCOMB_X20_Y11_N14
\vga|y_end~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~8_combout\ = (\view|FB_CLEAR~regout\) # (\view|FB_Y1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_CLEAR~regout\,
	datad => \view|FB_Y1\(6),
	combout => \vga|y_end~8_combout\);

-- Location: LCCOMB_X24_Y12_N18
\view|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux10~0_combout\ = (\view|column\(4) & (((!\view|column\(1) & !\view|column\(2))) # (!\view|column\(3)))) # (!\view|column\(4) & ((\view|column\(3)) # ((\view|column\(1) & \view|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(4),
	datab => \view|column\(1),
	datac => \view|column\(3),
	datad => \view|column\(2),
	combout => \view|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y12_N12
\view|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux10~1_combout\ = (\view|column\(4) & (\view|column\(2) & ((\view|column\(1)) # (\view|column\(0))))) # (!\view|column\(4) & (!\view|column\(2) & ((!\view|column\(0)) # (!\view|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(4),
	datab => \view|column\(1),
	datac => \view|column\(0),
	datad => \view|column\(2),
	combout => \view|Mux10~1_combout\);

-- Location: LCCOMB_X24_Y12_N30
\view|Mux32~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~3_combout\ = (\view|Mux32~2_combout\ & ((\view|Mux10~0_combout\) # ((\view|Mux10~1_combout\ & \view|reg_sprite.img_pixels[10][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux10~1_combout\,
	datab => \view|Mux10~0_combout\,
	datac => \view|reg_sprite.img_pixels[10][0]~regout\,
	datad => \view|Mux32~2_combout\,
	combout => \view|Mux32~3_combout\);

-- Location: LCCOMB_X24_Y12_N24
\view|Mux32~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~4_combout\ = (\view|Mux32~3_combout\ & ((\view|row\(1) & ((!\view|row\(2)))) # (!\view|row\(1) & (!\view|row\(0) & \view|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(0),
	datab => \view|Mux32~3_combout\,
	datac => \view|row\(1),
	datad => \view|row\(2),
	combout => \view|Mux32~4_combout\);

-- Location: LCCOMB_X24_Y12_N10
\view|Mux32~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~5_combout\ = (!\view|row\(3) & (!\view|row\(4) & \view|row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(3),
	datac => \view|row\(4),
	datad => \view|row\(2),
	combout => \view|Mux32~5_combout\);

-- Location: LCCOMB_X25_Y11_N6
\view|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~1_combout\ = (\view|column\(2) & (\view|reg_sprite.img_pixels[10][0]~regout\ & ((\view|column\(1)) # (\view|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datab => \view|column\(2),
	datac => \view|reg_sprite.img_pixels[10][0]~regout\,
	datad => \view|column\(0),
	combout => \view|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y12_N12
\view|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~3_combout\ = (\view|column\(0) & (\view|column\(1) & \view|column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datac => \view|column\(1),
	datad => \view|column\(2),
	combout => \view|Mux4~3_combout\);

-- Location: LCCOMB_X24_Y12_N20
\view|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux10~2_combout\ = (!\view|column\(1) & !\view|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(1),
	datad => \view|column\(2),
	combout => \view|Mux10~2_combout\);

-- Location: LCCOMB_X25_Y11_N20
\view|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~8_combout\ = ((\view|reg_sprite.img_pixels[10][0]~regout\) # ((!\view|column\(1) & !\view|column\(0)))) # (!\view|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datab => \view|column\(2),
	datac => \view|reg_sprite.img_pixels[10][0]~regout\,
	datad => \view|column\(0),
	combout => \view|Mux4~8_combout\);

-- Location: LCCOMB_X25_Y11_N24
\view|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~10_combout\ = (\view|column\(2)) # ((!\view|column\(1) & !\view|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datac => \view|column\(2),
	datad => \view|column\(0),
	combout => \view|Mux4~10_combout\);

-- Location: LCCOMB_X25_Y11_N2
\view|Mux32~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~9_combout\ = (\view|column\(3) & ((\view|Mux4~10_combout\) # ((\view|column\(4))))) # (!\view|column\(3) & (((!\view|column\(4) & \view|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~10_combout\,
	datab => \view|column\(3),
	datac => \view|column\(4),
	datad => \view|Mux4~9_combout\,
	combout => \view|Mux32~9_combout\);

-- Location: LCCOMB_X25_Y11_N4
\view|Mux32~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~10_combout\ = (\view|Mux32~9_combout\ & ((\view|Mux4~8_combout\) # ((!\view|column\(4))))) # (!\view|Mux32~9_combout\ & (((\view|column\(4) & \view|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~8_combout\,
	datab => \view|Mux32~9_combout\,
	datac => \view|column\(4),
	datad => \view|Mux4~7_combout\,
	combout => \view|Mux32~10_combout\);

-- Location: LCCOMB_X25_Y12_N10
\view|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~12_combout\ = (\view|column\(2) & ((\view|reg_sprite.img_pixels[10][0]~regout\) # ((!\view|column\(0) & !\view|column\(1))))) # (!\view|column\(2) & (((\view|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datab => \view|reg_sprite.img_pixels[10][0]~regout\,
	datac => \view|column\(1),
	datad => \view|column\(2),
	combout => \view|Mux4~12_combout\);

-- Location: LCCOMB_X25_Y12_N24
\view|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux19~0_combout\ = (\view|column\(4) & (((!\view|column\(0) & !\view|column\(1))) # (!\view|column\(2)))) # (!\view|column\(4) & ((\view|column\(2)) # ((\view|column\(0) & \view|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datab => \view|column\(1),
	datac => \view|column\(4),
	datad => \view|column\(2),
	combout => \view|Mux19~0_combout\);

-- Location: LCCOMB_X26_Y10_N0
\view|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux25~1_combout\ = \view|column\(1) $ (\view|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|column\(1),
	datad => \view|column\(0),
	combout => \view|Mux25~1_combout\);

-- Location: LCFF_X22_Y10_N29
\view|reg_hitbox.up_left_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(8),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(8));

-- Location: LCFF_X22_Y10_N27
\view|reg_hitbox.up_left_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(7),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(7));

-- Location: LCFF_X22_Y10_N25
\view|reg_hitbox.up_left_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(6),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(6));

-- Location: LCFF_X22_Y10_N23
\view|reg_hitbox.up_left_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(5),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(5));

-- Location: LCCOMB_X20_Y10_N26
\view|Selector76~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector76~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add4~16_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~16_combout\,
	datab => \view|state.INIT~regout\,
	datad => \view|Selector94~0_combout\,
	combout => \view|Selector76~0_combout\);

-- Location: LCCOMB_X19_Y10_N10
\view|Selector81~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector81~0_combout\ = (\view|state.INIT~regout\) # ((\view|Selector94~0_combout\ & \view|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector94~0_combout\,
	datab => \view|state.INIT~regout\,
	datac => \view|Add4~6_combout\,
	combout => \view|Selector81~0_combout\);

-- Location: LCCOMB_X20_Y10_N24
\view|Selector79~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector79~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add4~10_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~10_combout\,
	datab => \view|state.INIT~regout\,
	datad => \view|Selector94~0_combout\,
	combout => \view|Selector79~0_combout\);

-- Location: LCCOMB_X23_Y10_N18
\view|Selector77~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector77~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add4~14_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Add4~14_combout\,
	datac => \view|Selector94~0_combout\,
	datad => \view|state.INIT~regout\,
	combout => \view|Selector77~0_combout\);

-- Location: LCCOMB_X23_Y10_N28
\view|Selector78~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector78~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add4~12_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Add4~12_combout\,
	datac => \view|Selector94~0_combout\,
	datad => \view|state.INIT~regout\,
	combout => \view|Selector78~0_combout\);

-- Location: LCCOMB_X23_Y10_N12
\view|Selector78~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector78~1_combout\ = (\view|Add4~12_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Add4~12_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector78~1_combout\);

-- Location: LCCOMB_X21_Y11_N6
\view|Selector78~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector78~2_combout\ = (\view|Selector78~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Selector78~1_combout\,
	combout => \view|Selector78~2_combout\);

-- Location: LCCOMB_X18_Y10_N12
\view|Selector91~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector91~0_combout\ = (\view|state.INIT~regout\) # ((\view|Selector94~0_combout\ & \view|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.INIT~regout\,
	datac => \view|Selector94~0_combout\,
	datad => \view|Add5~2_combout\,
	combout => \view|Selector91~0_combout\);

-- Location: LCCOMB_X20_Y10_N2
\view|Selector86~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector86~0_combout\ = (\view|state.INIT~regout\) # ((\view|Selector94~0_combout\ & \view|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector94~0_combout\,
	datab => \view|state.INIT~regout\,
	datad => \view|Add5~14_combout\,
	combout => \view|Selector86~0_combout\);

-- Location: LCCOMB_X19_Y10_N14
\view|Selector87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector87~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add5~12_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.INIT~regout\,
	datac => \view|Add5~12_combout\,
	datad => \view|Selector94~0_combout\,
	combout => \view|Selector87~0_combout\);

-- Location: LCCOMB_X21_Y11_N20
\view|Selector89~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector89~1_combout\ = (\view|state.DRAWING~regout\ & \view|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.DRAWING~regout\,
	datac => \view|Add5~6_combout\,
	combout => \view|Selector89~1_combout\);

-- Location: LCFF_X44_Y10_N29
\frame_time_gen:counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[19]~regout\);

-- Location: LCFF_X44_Y10_N31
\frame_time_gen:counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[18]~regout\);

-- Location: LCFF_X44_Y10_N15
\frame_time_gen:counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~34_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[17]~regout\);

-- Location: LCFF_X44_Y10_N13
\frame_time_gen:counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~32_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[16]~regout\);

-- Location: LCCOMB_X44_Y10_N24
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\frame_time_gen:counter[16]~regout\ & (\frame_time_gen:counter[19]~regout\ & (!\frame_time_gen:counter[17]~regout\ & \frame_time_gen:counter[18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[16]~regout\,
	datab => \frame_time_gen:counter[19]~regout\,
	datac => \frame_time_gen:counter[17]~regout\,
	datad => \frame_time_gen:counter[18]~regout\,
	combout => \Equal0~1_combout\);

-- Location: LCFF_X44_Y10_N21
\frame_time_gen:counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[13]~regout\);

-- Location: LCFF_X44_Y11_N25
\frame_time_gen:counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[6]~regout\);

-- Location: LCCOMB_X44_Y11_N8
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\frame_time_gen:counter[6]~regout\ & !\frame_time_gen:counter[7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frame_time_gen:counter[6]~regout\,
	datad => \frame_time_gen:counter[7]~regout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X25_Y13_N10
\view_control_unit|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~2_combout\ = (!\view_control_unit|render_counter\(23) & (!\view_control_unit|render_counter\(22) & (!\view_control_unit|render_counter\(21) & !\view_control_unit|render_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(23),
	datab => \view_control_unit|render_counter\(22),
	datac => \view_control_unit|render_counter\(21),
	datad => \view_control_unit|render_counter\(20),
	combout => \view_control_unit|Selector5~2_combout\);

-- Location: LCFF_X23_Y13_N11
\view_control_unit|render_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~80_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(15));

-- Location: LCFF_X23_Y14_N13
\view_control_unit|render_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~86_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(9));

-- Location: LCFF_X23_Y14_N1
\view_control_unit|render_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~91_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(4));

-- Location: LCFF_X23_Y14_N15
\view_control_unit|render_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~93_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(3));

-- Location: LCCOMB_X23_Y14_N20
\view_control_unit|Selector5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~8_combout\ = (!\view_control_unit|render_counter\(1) & (\view_control_unit|render_counter\(2) & (!\view_control_unit|render_counter\(3) & !\view_control_unit|render_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(1),
	datab => \view_control_unit|render_counter\(2),
	datac => \view_control_unit|render_counter\(3),
	datad => \view_control_unit|render_counter\(0),
	combout => \view_control_unit|Selector5~8_combout\);

-- Location: LCCOMB_X23_Y9_N6
\view|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~1_combout\ = (!\view|row\(26) & (!\view|row\(23) & (!\view|row\(24) & !\view|row\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(26),
	datab => \view|row\(23),
	datac => \view|row\(24),
	datad => \view|row\(25),
	combout => \view|LessThan1~1_combout\);

-- Location: LCCOMB_X25_Y9_N2
\view|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~5_combout\ = (!\view|row\(18) & (!\view|row\(17) & (!\view|row\(16) & !\view|row\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(18),
	datab => \view|row\(17),
	datac => \view|row\(16),
	datad => \view|row\(15),
	combout => \view|LessThan1~5_combout\);

-- Location: LCCOMB_X21_Y12_N20
\view|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~6_combout\ = (!\view|column\(12) & (!\view|column\(11) & (!\view|column\(14) & !\view|column\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(12),
	datab => \view|column\(11),
	datac => \view|column\(14),
	datad => \view|column\(13),
	combout => \view|LessThan0~6_combout\);

-- Location: LCFF_X22_Y11_N9
\view|next_state.DRAWING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector72~1_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|next_state.DRAWING~regout\);

-- Location: LCFF_X29_Y10_N11
\datapath|HITBOX.up_left_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux39~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(8));

-- Location: LCFF_X29_Y10_N13
\datapath|HITBOX.up_left_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux40~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(7));

-- Location: LCFF_X29_Y10_N31
\datapath|HITBOX.up_left_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux41~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(6));

-- Location: LCFF_X30_Y10_N19
\datapath|HITBOX.up_left_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux42~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(5));

-- Location: LCCOMB_X23_Y9_N10
\view|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~26_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~21_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|Add2~21_combout\,
	combout => \view|Add2~26_combout\);

-- Location: LCCOMB_X44_Y10_N28
\counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~38_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datad => \Equal0~6_combout\,
	combout => \counter~2_combout\);

-- Location: LCCOMB_X44_Y10_N30
\counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~36_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \Equal0~6_combout\,
	combout => \counter~3_combout\);

-- Location: LCCOMB_X44_Y10_N20
\counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add0~26_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => \Equal0~6_combout\,
	combout => \counter~5_combout\);

-- Location: LCCOMB_X23_Y13_N10
\view_control_unit|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~80_combout\ = (!\view_control_unit|state.SHOW_SPRITES~regout\ & \view_control_unit|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|state.SHOW_SPRITES~regout\,
	datac => \view_control_unit|Add0~30_combout\,
	combout => \view_control_unit|Add0~80_combout\);

-- Location: LCCOMB_X23_Y14_N12
\view_control_unit|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~86_combout\ = (\view_control_unit|Add0~18_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~18_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~86_combout\);

-- Location: LCCOMB_X23_Y14_N0
\view_control_unit|Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~91_combout\ = (\view_control_unit|Add0~8_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~8_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~91_combout\);

-- Location: LCCOMB_X23_Y14_N14
\view_control_unit|Add0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~93_combout\ = (\view_control_unit|Add0~6_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Add0~6_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~93_combout\);

-- Location: LCCOMB_X23_Y9_N12
\view|Add2~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~80_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~64_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|Add2~64_combout\,
	combout => \view|Add2~80_combout\);

-- Location: LCCOMB_X23_Y9_N30
\view|Add2~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~81_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~62_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|Add2~62_combout\,
	combout => \view|Add2~81_combout\);

-- Location: LCCOMB_X25_Y10_N6
\view|Add2~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~85_combout\ = (\view|Add2~54_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~54_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~85_combout\);

-- Location: LCCOMB_X25_Y9_N4
\view|Add2~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~90_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~44_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add2~44_combout\,
	datac => \view|LessThan1~9_combout\,
	datad => \view|row\(31),
	combout => \view|Add2~90_combout\);

-- Location: LCCOMB_X23_Y12_N16
\view|Add3~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~80_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~63_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|column\(31),
	datac => \view|Add3~63_combout\,
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~80_combout\);

-- Location: LCCOMB_X21_Y12_N10
\view|Add3~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~85_combout\ = (\view|Add3~53_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~53_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~85_combout\);

-- Location: LCCOMB_X21_Y12_N0
\view|Add3~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~88_combout\ = (\view|Add3~47_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~47_combout\,
	datab => \view|reg_hitbox.size_y\(0),
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~88_combout\);

-- Location: LCCOMB_X21_Y12_N28
\view|Add3~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~94_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~35_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add3~35_combout\,
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~94_combout\);

-- Location: LCCOMB_X21_Y12_N30
\view|Add3~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~95_combout\ = (\view|Add3~33_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~33_combout\,
	datab => \view|reg_hitbox.size_y\(0),
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~95_combout\);

-- Location: LCCOMB_X23_Y11_N24
\view|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector65~0_combout\ = (\view|state.WAITING~regout\) # ((\view|state.IDLE~regout\ & ((\view|show_asap~regout\) # (\view_control_unit|DRAW_SPRITE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|show_asap~regout\,
	datab => \view_control_unit|DRAW_SPRITE~regout\,
	datac => \view|state.IDLE~regout\,
	datad => \view|state.WAITING~regout\,
	combout => \view|Selector65~0_combout\);

-- Location: LCCOMB_X22_Y11_N20
\view|Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector72~0_combout\ = (\view|state.IDLE~regout\ & ((\view_control_unit|DRAW_SPRITE~regout\) # ((\view|next_state.DRAWING~regout\ & \view|Selector70~0_combout\)))) # (!\view|state.IDLE~regout\ & (((\view|next_state.DRAWING~regout\ & 
-- \view|Selector70~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.IDLE~regout\,
	datab => \view_control_unit|DRAW_SPRITE~regout\,
	datac => \view|next_state.DRAWING~regout\,
	datad => \view|Selector70~0_combout\,
	combout => \view|Selector72~0_combout\);

-- Location: LCCOMB_X22_Y11_N8
\view|Selector72~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector72~1_combout\ = (\view|Selector72~0_combout\) # ((\view|state.DRAWING~regout\ & ((\view|LessThan0~10_combout\) # (\view|LessThan1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector72~0_combout\,
	datab => \view|LessThan0~10_combout\,
	datac => \view|state.DRAWING~regout\,
	datad => \view|LessThan1~10_combout\,
	combout => \view|Selector72~1_combout\);

-- Location: LCCOMB_X23_Y11_N20
\view|next_state.WAITING~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|next_state.WAITING~1_combout\ = ((\view|state.WAITING~regout\) # ((\view|state.SHOWING~regout\ & !\vga|vga_timing|v_state.SYNC~regout\))) # (!\RESET_N~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOWING~regout\,
	datab => \RESET_N~regout\,
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \view|state.WAITING~regout\,
	combout => \view|next_state.WAITING~1_combout\);

-- Location: LCFF_X30_Y11_N21
\datapath|alien_grid[0][0].hitbox.up_left_x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add1~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].hitbox.up_left_x\(9));

-- Location: LCFF_X31_Y10_N17
\datapath|alien_grid[3][0].hitbox.up_left_x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add7~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[3][0].hitbox.up_left_x\(9));

-- Location: LCFF_X29_Y11_N21
\datapath|alien_grid[2][0].hitbox.up_left_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add5~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[2][0].hitbox.up_left_x\(8));

-- Location: LCFF_X30_Y11_N19
\datapath|alien_grid[0][0].hitbox.up_left_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add1~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].hitbox.up_left_x\(8));

-- Location: LCCOMB_X31_Y11_N0
\datapath|Mux39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux39~0_combout\ = (\datapath|rendered_column\(0) & (((\datapath|rendered_column\(1)) # (\datapath|alien_grid[1][0].hitbox.up_left_x\(8))))) # (!\datapath|rendered_column\(0) & (\datapath|alien_grid[0][0].hitbox.up_left_x\(8) & 
-- (!\datapath|rendered_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|alien_grid[0][0].hitbox.up_left_x\(8),
	datac => \datapath|rendered_column\(1),
	datad => \datapath|alien_grid[1][0].hitbox.up_left_x\(8),
	combout => \datapath|Mux39~0_combout\);

-- Location: LCFF_X31_Y10_N15
\datapath|alien_grid[3][0].hitbox.up_left_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add7~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[3][0].hitbox.up_left_x\(8));

-- Location: LCCOMB_X31_Y11_N26
\datapath|Mux39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux39~1_combout\ = (\datapath|rendered_column\(1) & ((\datapath|Mux39~0_combout\ & (\datapath|alien_grid[3][0].hitbox.up_left_x\(8))) # (!\datapath|Mux39~0_combout\ & ((\datapath|alien_grid[2][0].hitbox.up_left_x\(8)))))) # 
-- (!\datapath|rendered_column\(1) & (((\datapath|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[3][0].hitbox.up_left_x\(8),
	datab => \datapath|rendered_column\(1),
	datac => \datapath|alien_grid[2][0].hitbox.up_left_x\(8),
	datad => \datapath|Mux39~0_combout\,
	combout => \datapath|Mux39~1_combout\);

-- Location: LCCOMB_X29_Y10_N10
\datapath|Mux39~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux39~2_combout\ = (\datapath|rendered_column\(2) & (\datapath|alien_grid[4][0].hitbox.up_left_x\(8))) # (!\datapath|rendered_column\(2) & ((\datapath|Mux39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(2),
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(8),
	datac => \datapath|Mux39~1_combout\,
	combout => \datapath|Mux39~2_combout\);

-- Location: LCFF_X31_Y11_N17
\datapath|alien_grid[1][0].hitbox.up_left_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add3~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(7));

-- Location: LCFF_X30_Y11_N17
\datapath|alien_grid[0][0].hitbox.up_left_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add1~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].hitbox.up_left_x\(7));

-- Location: LCCOMB_X31_Y11_N28
\datapath|Mux40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux40~0_combout\ = (\datapath|rendered_column\(0) & (\datapath|rendered_column\(1))) # (!\datapath|rendered_column\(0) & ((\datapath|rendered_column\(1) & (\datapath|alien_grid[2][0].hitbox.up_left_x\(7))) # (!\datapath|rendered_column\(1) & 
-- ((\datapath|alien_grid[0][0].hitbox.up_left_x\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|rendered_column\(1),
	datac => \datapath|alien_grid[2][0].hitbox.up_left_x\(7),
	datad => \datapath|alien_grid[0][0].hitbox.up_left_x\(7),
	combout => \datapath|Mux40~0_combout\);

-- Location: LCFF_X31_Y10_N13
\datapath|alien_grid[3][0].hitbox.up_left_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add7~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[3][0].hitbox.up_left_x\(7));

-- Location: LCCOMB_X31_Y11_N22
\datapath|Mux40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux40~1_combout\ = (\datapath|rendered_column\(0) & ((\datapath|Mux40~0_combout\ & (\datapath|alien_grid[3][0].hitbox.up_left_x\(7))) # (!\datapath|Mux40~0_combout\ & ((\datapath|alien_grid[1][0].hitbox.up_left_x\(7)))))) # 
-- (!\datapath|rendered_column\(0) & (((\datapath|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|alien_grid[3][0].hitbox.up_left_x\(7),
	datac => \datapath|alien_grid[1][0].hitbox.up_left_x\(7),
	datad => \datapath|Mux40~0_combout\,
	combout => \datapath|Mux40~1_combout\);

-- Location: LCCOMB_X29_Y10_N12
\datapath|Mux40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux40~2_combout\ = (\datapath|rendered_column\(2) & (!\datapath|alien_grid[4][0].hitbox.up_left_x\(7))) # (!\datapath|rendered_column\(2) & ((\datapath|Mux40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(2),
	datac => \datapath|alien_grid[4][0].hitbox.up_left_x\(7),
	datad => \datapath|Mux40~1_combout\,
	combout => \datapath|Mux40~2_combout\);

-- Location: LCFF_X30_Y11_N15
\datapath|alien_grid[0][0].hitbox.up_left_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add1~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].hitbox.up_left_x\(6));

-- Location: LCCOMB_X30_Y11_N28
\datapath|Mux41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux41~0_combout\ = (\datapath|rendered_column\(0) & ((\datapath|alien_grid[1][0].hitbox.up_left_x\(6)) # ((\datapath|rendered_column\(1))))) # (!\datapath|rendered_column\(0) & (((\datapath|alien_grid[0][0].hitbox.up_left_x\(6) & 
-- !\datapath|rendered_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[1][0].hitbox.up_left_x\(6),
	datab => \datapath|alien_grid[0][0].hitbox.up_left_x\(6),
	datac => \datapath|rendered_column\(0),
	datad => \datapath|rendered_column\(1),
	combout => \datapath|Mux41~0_combout\);

-- Location: LCFF_X31_Y10_N1
\datapath|alien_grid[3][0].hitbox.up_left_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[3][0].hitbox.up_left_x[6]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[3][0].hitbox.up_left_x\(6));

-- Location: LCCOMB_X30_Y11_N30
\datapath|Mux41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux41~1_combout\ = (\datapath|rendered_column\(1) & ((\datapath|Mux41~0_combout\ & (!\datapath|alien_grid[3][0].hitbox.up_left_x\(6))) # (!\datapath|Mux41~0_combout\ & ((!\datapath|alien_grid[2][0].hitbox.up_left_x\(6)))))) # 
-- (!\datapath|rendered_column\(1) & (((\datapath|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[3][0].hitbox.up_left_x\(6),
	datab => \datapath|rendered_column\(1),
	datac => \datapath|alien_grid[2][0].hitbox.up_left_x\(6),
	datad => \datapath|Mux41~0_combout\,
	combout => \datapath|Mux41~1_combout\);

-- Location: LCCOMB_X29_Y10_N30
\datapath|Mux41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux41~2_combout\ = (\datapath|rendered_column\(2) & (\datapath|alien_grid[4][0].hitbox.up_left_x\(6))) # (!\datapath|rendered_column\(2) & ((\datapath|Mux41~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(2),
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(6),
	datac => \datapath|Mux41~1_combout\,
	combout => \datapath|Mux41~2_combout\);

-- Location: LCFF_X31_Y11_N25
\datapath|alien_grid[1][0].hitbox.up_left_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[1][0].hitbox.up_left_x[5]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(5));

-- Location: LCFF_X30_Y11_N13
\datapath|alien_grid[0][0].hitbox.up_left_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add1~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].hitbox.up_left_x\(5));

-- Location: LCCOMB_X30_Y10_N24
\datapath|Mux42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux42~0_combout\ = (\datapath|rendered_column\(0) & (((\datapath|rendered_column\(1))))) # (!\datapath|rendered_column\(0) & ((\datapath|rendered_column\(1) & (\datapath|alien_grid[2][0].hitbox.up_left_x\(5))) # (!\datapath|rendered_column\(1) & 
-- ((\datapath|alien_grid[0][0].hitbox.up_left_x\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|alien_grid[2][0].hitbox.up_left_x\(5),
	datac => \datapath|rendered_column\(1),
	datad => \datapath|alien_grid[0][0].hitbox.up_left_x\(5),
	combout => \datapath|Mux42~0_combout\);

-- Location: LCFF_X31_Y10_N19
\datapath|alien_grid[3][0].hitbox.up_left_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[3][0].hitbox.up_left_x[5]~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[3][0].hitbox.up_left_x\(5));

-- Location: LCCOMB_X30_Y10_N26
\datapath|Mux42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux42~1_combout\ = (\datapath|rendered_column\(0) & ((\datapath|Mux42~0_combout\ & (!\datapath|alien_grid[3][0].hitbox.up_left_x\(5))) # (!\datapath|Mux42~0_combout\ & ((!\datapath|alien_grid[1][0].hitbox.up_left_x\(5)))))) # 
-- (!\datapath|rendered_column\(0) & (((\datapath|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|alien_grid[3][0].hitbox.up_left_x\(5),
	datac => \datapath|Mux42~0_combout\,
	datad => \datapath|alien_grid[1][0].hitbox.up_left_x\(5),
	combout => \datapath|Mux42~1_combout\);

-- Location: LCCOMB_X30_Y10_N18
\datapath|Mux42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux42~2_combout\ = (\datapath|rendered_column\(2) & (!\datapath|alien_grid[4][0].hitbox.up_left_x\(5))) # (!\datapath|rendered_column\(2) & ((\datapath|Mux42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[4][0].hitbox.up_left_x\(5),
	datab => \datapath|Mux42~1_combout\,
	datac => \datapath|rendered_column\(2),
	combout => \datapath|Mux42~2_combout\);

-- Location: LCFF_X30_Y11_N11
\datapath|alien_grid[0][0].hitbox.up_left_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add1~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].hitbox.up_left_x\(4));

-- Location: LCFF_X29_Y11_N11
\datapath|alien_grid[2][0].hitbox.up_left_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add5~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[2][0].hitbox.up_left_x\(3));

-- Location: LCFF_X29_Y11_N29
\datapath|alien_grid[2][0].hitbox.up_left_x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[2][0].hitbox.up_left_x[2]~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[2][0].hitbox.up_left_x\(2));

-- Location: LCFF_X30_Y3_N11
\game_tick_gen:counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[25]~regout\);

-- Location: LCFF_X30_Y3_N13
\game_tick_gen:counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~16_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[20]~regout\);

-- Location: LCFF_X31_Y3_N7
\game_tick_gen:counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~32_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[16]~regout\);

-- Location: LCCOMB_X30_Y3_N24
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\game_tick_gen:counter[11]~regout\ & (\game_tick_gen:counter[12]~regout\ & (\game_tick_gen:counter[13]~regout\ & !\game_tick_gen:counter[10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[11]~regout\,
	datab => \game_tick_gen:counter[12]~regout\,
	datac => \game_tick_gen:counter[13]~regout\,
	datad => \game_tick_gen:counter[10]~regout\,
	combout => \Equal1~3_combout\);

-- Location: LCFF_X30_Y3_N5
\game_tick_gen:counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~23_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[7]~regout\);

-- Location: LCFF_X31_Y4_N17
\game_tick_gen:counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[5]~regout\);

-- Location: LCFF_X31_Y4_N13
\game_tick_gen:counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[3]~regout\);

-- Location: LCFF_X31_Y4_N11
\game_tick_gen:counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[2]~regout\);

-- Location: LCCOMB_X31_Y4_N2
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\game_tick_gen:counter[3]~regout\ & (\game_tick_gen:counter[4]~regout\ & (\game_tick_gen:counter[5]~regout\ & \game_tick_gen:counter[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[3]~regout\,
	datab => \game_tick_gen:counter[4]~regout\,
	datac => \game_tick_gen:counter[5]~regout\,
	datad => \game_tick_gen:counter[2]~regout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X30_Y3_N10
\counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (!\Equal1~8_combout\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~8_combout\,
	datad => \Add1~50_combout\,
	combout => \counter~12_combout\);

-- Location: LCCOMB_X30_Y3_N12
\counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~16_combout\ = (\Add1~40_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~40_combout\,
	datad => \Equal1~8_combout\,
	combout => \counter~16_combout\);

-- Location: LCCOMB_X30_Y3_N4
\counter~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~23_combout\ = (!\Equal1~8_combout\ & \Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~8_combout\,
	datad => \Add1~14_combout\,
	combout => \counter~23_combout\);

-- Location: LCCOMB_X19_Y9_N20
\vga|Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector8~3_combout\ = ((\vga|substate.DRAWING_R1~regout\ & ((!\vga|Equal1~5_combout\))) # (!\vga|substate.DRAWING_R1~regout\ & (!\vga|Equal3~5_combout\))) # (!\vga|y_cursor[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datab => \vga|Equal3~5_combout\,
	datac => \vga|y_cursor[8]~14_combout\,
	datad => \vga|Equal1~5_combout\,
	combout => \vga|Selector8~3_combout\);

-- Location: LCCOMB_X31_Y10_N0
\datapath|alien_grid[3][0].hitbox.up_left_x[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[3][0].hitbox.up_left_x[6]~0_combout\ = !\datapath|Add7~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add7~8_combout\,
	combout => \datapath|alien_grid[3][0].hitbox.up_left_x[6]~0_combout\);

-- Location: LCCOMB_X31_Y11_N24
\datapath|alien_grid[1][0].hitbox.up_left_x[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[1][0].hitbox.up_left_x[5]~0_combout\ = !\datapath|Add3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add3~6_combout\,
	combout => \datapath|alien_grid[1][0].hitbox.up_left_x[5]~0_combout\);

-- Location: LCCOMB_X31_Y10_N18
\datapath|alien_grid[3][0].hitbox.up_left_x[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[3][0].hitbox.up_left_x[5]~1_combout\ = !\datapath|Add7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Add7~6_combout\,
	combout => \datapath|alien_grid[3][0].hitbox.up_left_x[5]~1_combout\);

-- Location: LCCOMB_X29_Y11_N28
\datapath|alien_grid[2][0].hitbox.up_left_x[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[2][0].hitbox.up_left_x[2]~2_combout\ = !\datapath|Add5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Add5~0_combout\,
	combout => \datapath|alien_grid[2][0].hitbox.up_left_x[2]~2_combout\);

-- Location: CLKCTRL_G0
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(0),
	combout => \SRAM_DQ[0]~0\);

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(1),
	combout => \SRAM_DQ[1]~1\);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(2),
	combout => \SRAM_DQ[2]~2\);

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(3),
	combout => \SRAM_DQ[3]~3\);

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(4),
	combout => \SRAM_DQ[4]~4\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(10),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(5),
	combout => \SRAM_DQ[5]~5\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(10),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(6),
	combout => \SRAM_DQ[6]~6\);

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(10),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(7),
	combout => \SRAM_DQ[7]~7\);

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[8]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(8),
	combout => \SRAM_DQ[8]~8\);

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[9]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(9),
	combout => \SRAM_DQ[9]~9\);

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[10]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(10),
	combout => \SRAM_DQ[10]~10\);

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[11]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(11),
	combout => \SRAM_DQ[11]~11\);

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[12]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(1),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(12),
	combout => \SRAM_DQ[12]~12\);

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[13]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(10),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(13),
	combout => \SRAM_DQ[13]~13\);

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[14]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(10),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(14),
	combout => \SRAM_DQ[14]~14\);

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[15]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|latched_color\(10),
	oe => \vga|vga_fb|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(15),
	combout => \SRAM_DQ[15]~15\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PLL_1
\pll|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 8,
	c1_initial => 1,
	c1_low => 8,
	c1_mode => "even",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4185,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|pll_INCLK_bus\,
	clk => \pll|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\pll|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y10_N0
\view|reg_hitbox.size_y[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|reg_hitbox.size_y[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \view|reg_hitbox.size_y[0]~feeder_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCCOMB_X16_Y9_N24
\reset_sync_reg~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_sync_reg~feeder_combout\ = \SW~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(9),
	combout => \reset_sync_reg~feeder_combout\);

-- Location: LCFF_X16_Y9_N25
reset_sync_reg : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \reset_sync_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_sync_reg~regout\);

-- Location: LCFF_X19_Y9_N11
RESET_N : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \reset_sync_reg~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RESET_N~regout\);

-- Location: LCCOMB_X20_Y10_N8
\view|Selector94~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector94~1_combout\ = (\view|state.INIT~regout\) # (\view|Selector94~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.INIT~regout\,
	datad => \view|Selector94~0_combout\,
	combout => \view|Selector94~1_combout\);

-- Location: CLKCTRL_G9
\RESET_N~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET_N~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET_N~clkctrl_outclk\);

-- Location: LCFF_X20_Y10_N9
\view|FB_COLOR[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector94~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_COLOR\(10));

-- Location: LCCOMB_X23_Y10_N16
\view|FB_CLEAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_CLEAR~0_combout\ = !\view|state.CLEARING~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.CLEARING~regout\,
	combout => \view|FB_CLEAR~0_combout\);

-- Location: LCFF_X23_Y10_N17
\view|FB_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|FB_CLEAR~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_CLEAR~regout\);

-- Location: LCCOMB_X18_Y9_N14
\view|Selector69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector69~0_combout\ = (!\vga|state.IDLE~regout\ & (!\view|FB_COLOR\(10) & !\view|FB_CLEAR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.IDLE~regout\,
	datac => \view|FB_COLOR\(10),
	datad => \view|FB_CLEAR~regout\,
	combout => \view|Selector69~0_combout\);

-- Location: LCCOMB_X23_Y11_N6
\view|Selector65~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector65~1_combout\ = (\view|Selector69~3_combout\) # ((\view|Selector65~0_combout\ & !\view|Selector69~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector65~0_combout\,
	datab => \view|Selector69~3_combout\,
	datac => \view|Selector69~2_combout\,
	combout => \view|Selector65~1_combout\);

-- Location: LCFF_X23_Y11_N7
\view|state.WAITING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector65~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.WAITING~regout\);

-- Location: LCCOMB_X19_Y8_N4
\view|Selector69~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector69~2_combout\ = (!\view|FB_FLIP~regout\ & (\view|Selector69~0_combout\ & \view|state.WAITING~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_FLIP~regout\,
	datac => \view|Selector69~0_combout\,
	datad => \view|state.WAITING~regout\,
	combout => \view|Selector69~2_combout\);

-- Location: LCFF_X26_Y11_N25
\view|READY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|next_state~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|READY~regout\);

-- Location: LCCOMB_X26_Y11_N12
\view_control_unit|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector1~0_combout\ = (\view_control_unit|state.WAITING_2~regout\ & (\view|READY~regout\ & \view_control_unit|next_state.SHOW_SPRITES~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|state.WAITING_2~regout\,
	datac => \view|READY~regout\,
	datad => \view_control_unit|next_state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y11_N6
\view_control_unit|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector1~1_combout\ = (\view_control_unit|Selector1~0_combout\) # ((!\view_control_unit|render_asap~regout\ & \view_control_unit|state.SHOW_SPRITES~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_asap~regout\,
	datac => \view_control_unit|state.SHOW_SPRITES~regout\,
	datad => \view_control_unit|Selector1~0_combout\,
	combout => \view_control_unit|Selector1~1_combout\);

-- Location: LCFF_X26_Y11_N7
\view_control_unit|state.SHOW_SPRITES\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Selector1~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|state.SHOW_SPRITES~regout\);

-- Location: LCCOMB_X23_Y14_N4
\view_control_unit|Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~92_combout\ = (\view_control_unit|Add0~4_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Add0~4_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~92_combout\);

-- Location: LCCOMB_X44_Y11_N2
\counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~0_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Equal0~6_combout\,
	combout => \counter~1_combout\);

-- Location: LCFF_X44_Y11_N3
\frame_time_gen:counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[0]~regout\);

-- Location: LCCOMB_X44_Y11_N14
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\frame_time_gen:counter[1]~regout\ & (!\Add0~1\)) # (!\frame_time_gen:counter[1]~regout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\frame_time_gen:counter[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[1]~regout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCFF_X44_Y11_N15
\frame_time_gen:counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[1]~regout\);

-- Location: LCCOMB_X44_Y11_N16
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\frame_time_gen:counter[2]~regout\ & (\Add0~3\ $ (GND))) # (!\frame_time_gen:counter[2]~regout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\frame_time_gen:counter[2]~regout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[2]~regout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X44_Y11_N0
\counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (!\Equal0~6_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datac => \Add0~4_combout\,
	combout => \counter~0_combout\);

-- Location: LCFF_X44_Y11_N1
\frame_time_gen:counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[2]~regout\);

-- Location: LCCOMB_X44_Y11_N18
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\frame_time_gen:counter[3]~regout\ & (!\Add0~5\)) # (!\frame_time_gen:counter[3]~regout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\frame_time_gen:counter[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCFF_X44_Y11_N19
\frame_time_gen:counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[3]~regout\);

-- Location: LCCOMB_X44_Y11_N4
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\frame_time_gen:counter[2]~regout\ & (!\frame_time_gen:counter[3]~regout\ & (!\frame_time_gen:counter[1]~regout\ & !\frame_time_gen:counter[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[2]~regout\,
	datab => \frame_time_gen:counter[3]~regout\,
	datac => \frame_time_gen:counter[1]~regout\,
	datad => \frame_time_gen:counter[0]~regout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X44_Y10_N26
\counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~30_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datad => \Equal0~6_combout\,
	combout => \counter~4_combout\);

-- Location: LCFF_X44_Y10_N27
\frame_time_gen:counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[15]~regout\);

-- Location: LCCOMB_X44_Y11_N20
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\frame_time_gen:counter[4]~regout\ & (\Add0~7\ $ (GND))) # (!\frame_time_gen:counter[4]~regout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\frame_time_gen:counter[4]~regout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X45_Y11_N18
\counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (\Add0~8_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal0~6_combout\,
	combout => \counter~11_combout\);

-- Location: LCFF_X45_Y11_N19
\frame_time_gen:counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[4]~regout\);

-- Location: LCCOMB_X44_Y11_N22
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\frame_time_gen:counter[5]~regout\ & (!\Add0~9\)) # (!\frame_time_gen:counter[5]~regout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\frame_time_gen:counter[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[5]~regout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X44_Y11_N26
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\frame_time_gen:counter[7]~regout\ & (!\Add0~13\)) # (!\frame_time_gen:counter[7]~regout\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\frame_time_gen:counter[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[7]~regout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCFF_X44_Y11_N27
\frame_time_gen:counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[7]~regout\);

-- Location: LCCOMB_X44_Y11_N28
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\frame_time_gen:counter[8]~regout\ & (\Add0~15\ $ (GND))) # (!\frame_time_gen:counter[8]~regout\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\frame_time_gen:counter[8]~regout\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[8]~regout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X45_Y11_N30
\counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add0~16_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \Equal0~6_combout\,
	combout => \counter~9_combout\);

-- Location: LCFF_X45_Y11_N31
\frame_time_gen:counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[8]~regout\);

-- Location: LCCOMB_X44_Y11_N30
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\frame_time_gen:counter[9]~regout\ & (!\Add0~17\)) # (!\frame_time_gen:counter[9]~regout\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\frame_time_gen:counter[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[9]~regout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X44_Y10_N0
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\frame_time_gen:counter[10]~regout\ & (\Add0~19\ $ (GND))) # (!\frame_time_gen:counter[10]~regout\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\frame_time_gen:counter[10]~regout\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[10]~regout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X44_Y10_N2
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\frame_time_gen:counter[11]~regout\ & (!\Add0~21\)) # (!\frame_time_gen:counter[11]~regout\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\frame_time_gen:counter[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_time_gen:counter[11]~regout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCFF_X44_Y10_N3
\frame_time_gen:counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[11]~regout\);

-- Location: LCCOMB_X44_Y10_N4
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\frame_time_gen:counter[12]~regout\ & (\Add0~23\ $ (GND))) # (!\frame_time_gen:counter[12]~regout\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\frame_time_gen:counter[12]~regout\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[12]~regout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCFF_X44_Y10_N9
\frame_time_gen:counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~28_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[14]~regout\);

-- Location: LCCOMB_X45_Y11_N10
\counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~24_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \Equal0~6_combout\,
	combout => \counter~6_combout\);

-- Location: LCFF_X45_Y11_N11
\frame_time_gen:counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[12]~regout\);

-- Location: LCCOMB_X44_Y10_N22
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\frame_time_gen:counter[13]~regout\ & (\frame_time_gen:counter[15]~regout\ & (!\frame_time_gen:counter[14]~regout\ & \frame_time_gen:counter[12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[13]~regout\,
	datab => \frame_time_gen:counter[15]~regout\,
	datac => \frame_time_gen:counter[14]~regout\,
	datad => \frame_time_gen:counter[12]~regout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X45_Y11_N4
\counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~20_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \Equal0~6_combout\,
	combout => \counter~7_combout\);

-- Location: LCFF_X45_Y11_N5
\frame_time_gen:counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~7_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[10]~regout\);

-- Location: LCCOMB_X44_Y11_N6
\counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add0~18_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \Equal0~6_combout\,
	combout => \counter~8_combout\);

-- Location: LCFF_X44_Y11_N7
\frame_time_gen:counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[9]~regout\);

-- Location: LCCOMB_X45_Y11_N8
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\frame_time_gen:counter[11]~regout\ & (\frame_time_gen:counter[10]~regout\ & (\frame_time_gen:counter[9]~regout\ & \frame_time_gen:counter[8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time_gen:counter[11]~regout\,
	datab => \frame_time_gen:counter[10]~regout\,
	datac => \frame_time_gen:counter[9]~regout\,
	datad => \frame_time_gen:counter[8]~regout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X44_Y11_N10
\counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add0~10_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \Equal0~6_combout\,
	combout => \counter~10_combout\);

-- Location: LCFF_X44_Y11_N11
\frame_time_gen:counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time_gen:counter[5]~regout\);

-- Location: LCCOMB_X45_Y11_N28
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~4_combout\ & (\Equal0~3_combout\ & (\frame_time_gen:counter[5]~regout\ & \frame_time_gen:counter[4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~3_combout\,
	datac => \frame_time_gen:counter[5]~regout\,
	datad => \frame_time_gen:counter[4]~regout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X45_Y11_N0
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCFF_X45_Y11_N1
frame_time : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Equal0~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time~regout\);

-- Location: LCCOMB_X26_Y11_N20
\view_control_unit|render_asap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|render_asap~0_combout\ = (\view_control_unit|render_asap~regout\ & (!\view_control_unit|state.SHOW_SPRITES~regout\)) # (!\view_control_unit|render_asap~regout\ & ((\frame_time~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|state.SHOW_SPRITES~regout\,
	datab => \frame_time~regout\,
	datac => \view_control_unit|render_asap~regout\,
	combout => \view_control_unit|render_asap~0_combout\);

-- Location: LCFF_X26_Y11_N21
\view_control_unit|render_asap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|render_asap~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_asap~regout\);

-- Location: LCCOMB_X26_Y11_N18
\view_control_unit|SHOW~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|SHOW~0_combout\ = (\view_control_unit|render_asap~regout\ & \view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|render_asap~regout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|SHOW~0_combout\);

-- Location: LCCOMB_X26_Y11_N30
\view_control_unit|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector2~0_combout\ = (!\view_control_unit|SHOW~0_combout\ & (((\view_control_unit|state.WAITING~regout\ & !\view_control_unit|state.RENDER~regout\)) # (!\view|READY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|READY~regout\,
	datab => \view_control_unit|SHOW~0_combout\,
	datac => \view_control_unit|state.WAITING~regout\,
	datad => \view_control_unit|state.RENDER~regout\,
	combout => \view_control_unit|Selector2~0_combout\);

-- Location: LCFF_X26_Y11_N31
\view_control_unit|state.WAITING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Selector2~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|state.WAITING~regout\);

-- Location: LCCOMB_X26_Y11_N26
\view_control_unit|render_counter[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|render_counter[0]~1_combout\ = (!\view_control_unit|state.WAITING_2~regout\ & (\view_control_unit|state.WAITING~regout\ & ((\view_control_unit|render_asap~regout\) # (!\view_control_unit|state.SHOW_SPRITES~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|state.WAITING_2~regout\,
	datab => \view_control_unit|state.WAITING~regout\,
	datac => \view_control_unit|render_asap~regout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|render_counter[0]~1_combout\);

-- Location: LCFF_X23_Y14_N5
\view_control_unit|render_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~92_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(2));

-- Location: LCCOMB_X23_Y14_N16
\view_control_unit|Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~94_combout\ = (\view_control_unit|Add0~2_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Add0~2_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~94_combout\);

-- Location: LCFF_X23_Y14_N17
\view_control_unit|render_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~94_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(1));

-- Location: LCCOMB_X24_Y14_N0
\view_control_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~0_combout\ = \view_control_unit|render_counter\(0) $ (VCC)
-- \view_control_unit|Add0~1\ = CARRY(\view_control_unit|render_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(0),
	datad => VCC,
	combout => \view_control_unit|Add0~0_combout\,
	cout => \view_control_unit|Add0~1\);

-- Location: LCCOMB_X23_Y14_N18
\view_control_unit|Add0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~95_combout\ = (\view_control_unit|Add0~0_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~0_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~95_combout\);

-- Location: LCFF_X23_Y14_N19
\view_control_unit|render_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~95_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(0));

-- Location: LCCOMB_X24_Y14_N10
\view_control_unit|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~10_combout\ = (\view_control_unit|render_counter\(5) & (!\view_control_unit|Add0~9\)) # (!\view_control_unit|render_counter\(5) & ((\view_control_unit|Add0~9\) # (GND)))
-- \view_control_unit|Add0~11\ = CARRY((!\view_control_unit|Add0~9\) # (!\view_control_unit|render_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(5),
	datad => VCC,
	cin => \view_control_unit|Add0~9\,
	combout => \view_control_unit|Add0~10_combout\,
	cout => \view_control_unit|Add0~11\);

-- Location: LCCOMB_X24_Y14_N12
\view_control_unit|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~12_combout\ = (\view_control_unit|render_counter\(6) & (\view_control_unit|Add0~11\ $ (GND))) # (!\view_control_unit|render_counter\(6) & (!\view_control_unit|Add0~11\ & VCC))
-- \view_control_unit|Add0~13\ = CARRY((\view_control_unit|render_counter\(6) & !\view_control_unit|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(6),
	datad => VCC,
	cin => \view_control_unit|Add0~11\,
	combout => \view_control_unit|Add0~12_combout\,
	cout => \view_control_unit|Add0~13\);

-- Location: LCCOMB_X23_Y14_N28
\view_control_unit|Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~89_combout\ = (\view_control_unit|Add0~12_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~12_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~89_combout\);

-- Location: LCFF_X23_Y14_N29
\view_control_unit|render_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~89_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(6));

-- Location: LCCOMB_X24_Y14_N14
\view_control_unit|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~14_combout\ = (\view_control_unit|render_counter\(7) & (!\view_control_unit|Add0~13\)) # (!\view_control_unit|render_counter\(7) & ((\view_control_unit|Add0~13\) # (GND)))
-- \view_control_unit|Add0~15\ = CARRY((!\view_control_unit|Add0~13\) # (!\view_control_unit|render_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(7),
	datad => VCC,
	cin => \view_control_unit|Add0~13\,
	combout => \view_control_unit|Add0~14_combout\,
	cout => \view_control_unit|Add0~15\);

-- Location: LCCOMB_X23_Y14_N2
\view_control_unit|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~88_combout\ = (\view_control_unit|Add0~14_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~14_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~88_combout\);

-- Location: LCFF_X23_Y14_N3
\view_control_unit|render_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~88_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(7));

-- Location: LCCOMB_X24_Y14_N16
\view_control_unit|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~16_combout\ = (\view_control_unit|render_counter\(8) & (\view_control_unit|Add0~15\ $ (GND))) # (!\view_control_unit|render_counter\(8) & (!\view_control_unit|Add0~15\ & VCC))
-- \view_control_unit|Add0~17\ = CARRY((\view_control_unit|render_counter\(8) & !\view_control_unit|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(8),
	datad => VCC,
	cin => \view_control_unit|Add0~15\,
	combout => \view_control_unit|Add0~16_combout\,
	cout => \view_control_unit|Add0~17\);

-- Location: LCCOMB_X23_Y14_N6
\view_control_unit|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~87_combout\ = (\view_control_unit|Add0~16_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~16_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~87_combout\);

-- Location: LCFF_X23_Y14_N7
\view_control_unit|render_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~87_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(8));

-- Location: LCCOMB_X24_Y14_N20
\view_control_unit|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~20_combout\ = (\view_control_unit|render_counter\(10) & (\view_control_unit|Add0~19\ $ (GND))) # (!\view_control_unit|render_counter\(10) & (!\view_control_unit|Add0~19\ & VCC))
-- \view_control_unit|Add0~21\ = CARRY((\view_control_unit|render_counter\(10) & !\view_control_unit|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(10),
	datad => VCC,
	cin => \view_control_unit|Add0~19\,
	combout => \view_control_unit|Add0~20_combout\,
	cout => \view_control_unit|Add0~21\);

-- Location: LCCOMB_X23_Y14_N26
\view_control_unit|Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~85_combout\ = (\view_control_unit|Add0~20_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~20_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~85_combout\);

-- Location: LCFF_X23_Y14_N27
\view_control_unit|render_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~85_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(10));

-- Location: LCCOMB_X24_Y14_N22
\view_control_unit|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~22_combout\ = (\view_control_unit|render_counter\(11) & (!\view_control_unit|Add0~21\)) # (!\view_control_unit|render_counter\(11) & ((\view_control_unit|Add0~21\) # (GND)))
-- \view_control_unit|Add0~23\ = CARRY((!\view_control_unit|Add0~21\) # (!\view_control_unit|render_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(11),
	datad => VCC,
	cin => \view_control_unit|Add0~21\,
	combout => \view_control_unit|Add0~22_combout\,
	cout => \view_control_unit|Add0~23\);

-- Location: LCCOMB_X23_Y14_N24
\view_control_unit|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~84_combout\ = (\view_control_unit|Add0~22_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~22_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~84_combout\);

-- Location: LCFF_X23_Y14_N25
\view_control_unit|render_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~84_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(11));

-- Location: LCCOMB_X24_Y14_N24
\view_control_unit|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~24_combout\ = (\view_control_unit|render_counter\(12) & (\view_control_unit|Add0~23\ $ (GND))) # (!\view_control_unit|render_counter\(12) & (!\view_control_unit|Add0~23\ & VCC))
-- \view_control_unit|Add0~25\ = CARRY((\view_control_unit|render_counter\(12) & !\view_control_unit|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(12),
	datad => VCC,
	cin => \view_control_unit|Add0~23\,
	combout => \view_control_unit|Add0~24_combout\,
	cout => \view_control_unit|Add0~25\);

-- Location: LCCOMB_X24_Y14_N26
\view_control_unit|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~26_combout\ = (\view_control_unit|render_counter\(13) & (!\view_control_unit|Add0~25\)) # (!\view_control_unit|render_counter\(13) & ((\view_control_unit|Add0~25\) # (GND)))
-- \view_control_unit|Add0~27\ = CARRY((!\view_control_unit|Add0~25\) # (!\view_control_unit|render_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(13),
	datad => VCC,
	cin => \view_control_unit|Add0~25\,
	combout => \view_control_unit|Add0~26_combout\,
	cout => \view_control_unit|Add0~27\);

-- Location: LCCOMB_X24_Y14_N28
\view_control_unit|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~28_combout\ = (\view_control_unit|render_counter\(14) & (\view_control_unit|Add0~27\ $ (GND))) # (!\view_control_unit|render_counter\(14) & (!\view_control_unit|Add0~27\ & VCC))
-- \view_control_unit|Add0~29\ = CARRY((\view_control_unit|render_counter\(14) & !\view_control_unit|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(14),
	datad => VCC,
	cin => \view_control_unit|Add0~27\,
	combout => \view_control_unit|Add0~28_combout\,
	cout => \view_control_unit|Add0~29\);

-- Location: LCCOMB_X23_Y13_N4
\view_control_unit|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~81_combout\ = (!\view_control_unit|state.SHOW_SPRITES~regout\ & \view_control_unit|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|state.SHOW_SPRITES~regout\,
	datac => \view_control_unit|Add0~28_combout\,
	combout => \view_control_unit|Add0~81_combout\);

-- Location: LCFF_X23_Y13_N5
\view_control_unit|render_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~81_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(14));

-- Location: LCCOMB_X24_Y13_N0
\view_control_unit|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~32_combout\ = (\view_control_unit|render_counter\(16) & (\view_control_unit|Add0~31\ $ (GND))) # (!\view_control_unit|render_counter\(16) & (!\view_control_unit|Add0~31\ & VCC))
-- \view_control_unit|Add0~33\ = CARRY((\view_control_unit|render_counter\(16) & !\view_control_unit|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(16),
	datad => VCC,
	cin => \view_control_unit|Add0~31\,
	combout => \view_control_unit|Add0~32_combout\,
	cout => \view_control_unit|Add0~33\);

-- Location: LCCOMB_X25_Y13_N2
\view_control_unit|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~79_combout\ = (\view_control_unit|Add0~32_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~32_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~79_combout\);

-- Location: LCFF_X25_Y13_N3
\view_control_unit|render_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~79_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(16));

-- Location: LCCOMB_X25_Y13_N8
\view_control_unit|Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~78_combout\ = (\view_control_unit|Add0~34_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Add0~34_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~78_combout\);

-- Location: LCFF_X25_Y13_N9
\view_control_unit|render_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~78_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(17));

-- Location: LCCOMB_X24_Y13_N4
\view_control_unit|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~36_combout\ = (\view_control_unit|render_counter\(18) & (\view_control_unit|Add0~35\ $ (GND))) # (!\view_control_unit|render_counter\(18) & (!\view_control_unit|Add0~35\ & VCC))
-- \view_control_unit|Add0~37\ = CARRY((\view_control_unit|render_counter\(18) & !\view_control_unit|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(18),
	datad => VCC,
	cin => \view_control_unit|Add0~35\,
	combout => \view_control_unit|Add0~36_combout\,
	cout => \view_control_unit|Add0~37\);

-- Location: LCCOMB_X25_Y13_N30
\view_control_unit|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~77_combout\ = (\view_control_unit|Add0~36_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~36_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~77_combout\);

-- Location: LCFF_X25_Y13_N31
\view_control_unit|render_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~77_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(18));

-- Location: LCCOMB_X25_Y13_N4
\view_control_unit|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~3_combout\ = (!\view_control_unit|render_counter\(19) & (!\view_control_unit|render_counter\(16) & (!\view_control_unit|render_counter\(17) & !\view_control_unit|render_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(19),
	datab => \view_control_unit|render_counter\(16),
	datac => \view_control_unit|render_counter\(17),
	datad => \view_control_unit|render_counter\(18),
	combout => \view_control_unit|Selector5~3_combout\);

-- Location: LCCOMB_X25_Y13_N18
\view_control_unit|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~72_combout\ = (\view_control_unit|Add0~46_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Add0~46_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~72_combout\);

-- Location: LCFF_X25_Y13_N19
\view_control_unit|render_counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~72_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(23));

-- Location: LCCOMB_X25_Y13_N28
\view_control_unit|Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~73_combout\ = (\view_control_unit|Add0~44_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Add0~44_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~73_combout\);

-- Location: LCFF_X25_Y13_N29
\view_control_unit|render_counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~73_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(22));

-- Location: LCCOMB_X25_Y13_N22
\view_control_unit|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~74_combout\ = (\view_control_unit|Add0~42_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Add0~42_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~74_combout\);

-- Location: LCFF_X25_Y13_N23
\view_control_unit|render_counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~74_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(21));

-- Location: LCCOMB_X25_Y13_N0
\view_control_unit|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~75_combout\ = (\view_control_unit|Add0~40_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Add0~40_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~75_combout\);

-- Location: LCFF_X25_Y13_N1
\view_control_unit|render_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~75_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(20));

-- Location: LCCOMB_X24_Y13_N6
\view_control_unit|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~38_combout\ = (\view_control_unit|render_counter\(19) & (!\view_control_unit|Add0~37\)) # (!\view_control_unit|render_counter\(19) & ((\view_control_unit|Add0~37\) # (GND)))
-- \view_control_unit|Add0~39\ = CARRY((!\view_control_unit|Add0~37\) # (!\view_control_unit|render_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(19),
	datad => VCC,
	cin => \view_control_unit|Add0~37\,
	combout => \view_control_unit|Add0~38_combout\,
	cout => \view_control_unit|Add0~39\);

-- Location: LCCOMB_X25_Y13_N12
\view_control_unit|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~76_combout\ = (\view_control_unit|Add0~38_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~38_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~76_combout\);

-- Location: LCFF_X25_Y13_N13
\view_control_unit|render_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~76_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(19));

-- Location: LCCOMB_X24_Y13_N16
\view_control_unit|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~48_combout\ = (\view_control_unit|render_counter\(24) & (\view_control_unit|Add0~47\ $ (GND))) # (!\view_control_unit|render_counter\(24) & (!\view_control_unit|Add0~47\ & VCC))
-- \view_control_unit|Add0~49\ = CARRY((\view_control_unit|render_counter\(24) & !\view_control_unit|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(24),
	datad => VCC,
	cin => \view_control_unit|Add0~47\,
	combout => \view_control_unit|Add0~48_combout\,
	cout => \view_control_unit|Add0~49\);

-- Location: LCCOMB_X25_Y13_N14
\view_control_unit|Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~71_combout\ = (\view_control_unit|Add0~48_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~48_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~71_combout\);

-- Location: LCFF_X25_Y13_N15
\view_control_unit|render_counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~71_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(24));

-- Location: LCCOMB_X24_Y13_N18
\view_control_unit|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~50_combout\ = (\view_control_unit|render_counter\(25) & (!\view_control_unit|Add0~49\)) # (!\view_control_unit|render_counter\(25) & ((\view_control_unit|Add0~49\) # (GND)))
-- \view_control_unit|Add0~51\ = CARRY((!\view_control_unit|Add0~49\) # (!\view_control_unit|render_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(25),
	datad => VCC,
	cin => \view_control_unit|Add0~49\,
	combout => \view_control_unit|Add0~50_combout\,
	cout => \view_control_unit|Add0~51\);

-- Location: LCCOMB_X25_Y13_N20
\view_control_unit|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~70_combout\ = (\view_control_unit|Add0~50_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~50_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~70_combout\);

-- Location: LCFF_X25_Y13_N21
\view_control_unit|render_counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~70_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(25));

-- Location: LCCOMB_X24_Y13_N20
\view_control_unit|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~52_combout\ = (\view_control_unit|render_counter\(26) & (\view_control_unit|Add0~51\ $ (GND))) # (!\view_control_unit|render_counter\(26) & (!\view_control_unit|Add0~51\ & VCC))
-- \view_control_unit|Add0~53\ = CARRY((\view_control_unit|render_counter\(26) & !\view_control_unit|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(26),
	datad => VCC,
	cin => \view_control_unit|Add0~51\,
	combout => \view_control_unit|Add0~52_combout\,
	cout => \view_control_unit|Add0~53\);

-- Location: LCCOMB_X25_Y13_N26
\view_control_unit|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~69_combout\ = (\view_control_unit|Add0~52_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~52_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~69_combout\);

-- Location: LCFF_X25_Y13_N27
\view_control_unit|render_counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~69_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(26));

-- Location: LCCOMB_X24_Y13_N22
\view_control_unit|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~54_combout\ = (\view_control_unit|render_counter\(27) & (!\view_control_unit|Add0~53\)) # (!\view_control_unit|render_counter\(27) & ((\view_control_unit|Add0~53\) # (GND)))
-- \view_control_unit|Add0~55\ = CARRY((!\view_control_unit|Add0~53\) # (!\view_control_unit|render_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(27),
	datad => VCC,
	cin => \view_control_unit|Add0~53\,
	combout => \view_control_unit|Add0~54_combout\,
	cout => \view_control_unit|Add0~55\);

-- Location: LCCOMB_X25_Y13_N24
\view_control_unit|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~68_combout\ = (\view_control_unit|Add0~54_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~54_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~68_combout\);

-- Location: LCFF_X25_Y13_N25
\view_control_unit|render_counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~68_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(27));

-- Location: LCCOMB_X25_Y13_N16
\view_control_unit|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~1_combout\ = (!\view_control_unit|render_counter\(25) & (!\view_control_unit|render_counter\(26) & (!\view_control_unit|render_counter\(24) & !\view_control_unit|render_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(25),
	datab => \view_control_unit|render_counter\(26),
	datac => \view_control_unit|render_counter\(24),
	datad => \view_control_unit|render_counter\(27),
	combout => \view_control_unit|Selector5~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\view_control_unit|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~56_combout\ = (\view_control_unit|render_counter\(28) & (\view_control_unit|Add0~55\ $ (GND))) # (!\view_control_unit|render_counter\(28) & (!\view_control_unit|Add0~55\ & VCC))
-- \view_control_unit|Add0~57\ = CARRY((\view_control_unit|render_counter\(28) & !\view_control_unit|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(28),
	datad => VCC,
	cin => \view_control_unit|Add0~55\,
	combout => \view_control_unit|Add0~56_combout\,
	cout => \view_control_unit|Add0~57\);

-- Location: LCCOMB_X23_Y13_N6
\view_control_unit|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~67_combout\ = (\view_control_unit|Add0~56_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~56_combout\,
	datac => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~67_combout\);

-- Location: LCFF_X23_Y13_N7
\view_control_unit|render_counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~67_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(28));

-- Location: LCCOMB_X24_Y13_N26
\view_control_unit|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~58_combout\ = (\view_control_unit|render_counter\(29) & (!\view_control_unit|Add0~57\)) # (!\view_control_unit|render_counter\(29) & ((\view_control_unit|Add0~57\) # (GND)))
-- \view_control_unit|Add0~59\ = CARRY((!\view_control_unit|Add0~57\) # (!\view_control_unit|render_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(29),
	datad => VCC,
	cin => \view_control_unit|Add0~57\,
	combout => \view_control_unit|Add0~58_combout\,
	cout => \view_control_unit|Add0~59\);

-- Location: LCCOMB_X23_Y13_N28
\view_control_unit|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~66_combout\ = (!\view_control_unit|state.SHOW_SPRITES~regout\ & \view_control_unit|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|state.SHOW_SPRITES~regout\,
	datac => \view_control_unit|Add0~58_combout\,
	combout => \view_control_unit|Add0~66_combout\);

-- Location: LCFF_X23_Y13_N29
\view_control_unit|render_counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~66_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(29));

-- Location: LCCOMB_X24_Y13_N28
\view_control_unit|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~60_combout\ = (\view_control_unit|render_counter\(30) & (\view_control_unit|Add0~59\ $ (GND))) # (!\view_control_unit|render_counter\(30) & (!\view_control_unit|Add0~59\ & VCC))
-- \view_control_unit|Add0~61\ = CARRY((\view_control_unit|render_counter\(30) & !\view_control_unit|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|render_counter\(30),
	datad => VCC,
	cin => \view_control_unit|Add0~59\,
	combout => \view_control_unit|Add0~60_combout\,
	cout => \view_control_unit|Add0~61\);

-- Location: LCCOMB_X23_Y13_N18
\view_control_unit|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~65_combout\ = (!\view_control_unit|state.SHOW_SPRITES~regout\ & \view_control_unit|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|state.SHOW_SPRITES~regout\,
	datad => \view_control_unit|Add0~60_combout\,
	combout => \view_control_unit|Add0~65_combout\);

-- Location: LCFF_X23_Y13_N19
\view_control_unit|render_counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~65_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(30));

-- Location: LCCOMB_X24_Y13_N30
\view_control_unit|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~62_combout\ = \view_control_unit|render_counter\(31) $ (\view_control_unit|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(31),
	cin => \view_control_unit|Add0~61\,
	combout => \view_control_unit|Add0~62_combout\);

-- Location: LCCOMB_X23_Y13_N0
\view_control_unit|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~64_combout\ = (\view_control_unit|Add0~62_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~62_combout\,
	datac => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~64_combout\);

-- Location: LCFF_X23_Y13_N1
\view_control_unit|render_counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~64_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(31));

-- Location: LCCOMB_X23_Y13_N8
\view_control_unit|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~0_combout\ = (!\view_control_unit|render_counter\(28) & (!\view_control_unit|render_counter\(30) & (!\view_control_unit|render_counter\(29) & !\view_control_unit|render_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(28),
	datab => \view_control_unit|render_counter\(30),
	datac => \view_control_unit|render_counter\(29),
	datad => \view_control_unit|render_counter\(31),
	combout => \view_control_unit|Selector5~0_combout\);

-- Location: LCCOMB_X25_Y13_N6
\view_control_unit|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~4_combout\ = (\view_control_unit|Selector5~2_combout\ & (\view_control_unit|Selector5~3_combout\ & (\view_control_unit|Selector5~1_combout\ & \view_control_unit|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Selector5~2_combout\,
	datab => \view_control_unit|Selector5~3_combout\,
	datac => \view_control_unit|Selector5~1_combout\,
	datad => \view_control_unit|Selector5~0_combout\,
	combout => \view_control_unit|Selector5~4_combout\);

-- Location: LCCOMB_X23_Y13_N24
\view_control_unit|Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~83_combout\ = (\view_control_unit|Add0~24_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|Add0~24_combout\,
	datac => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~83_combout\);

-- Location: LCFF_X23_Y13_N25
\view_control_unit|render_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~83_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(12));

-- Location: LCCOMB_X23_Y13_N22
\view_control_unit|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~82_combout\ = (!\view_control_unit|state.SHOW_SPRITES~regout\ & \view_control_unit|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|state.SHOW_SPRITES~regout\,
	datac => \view_control_unit|Add0~26_combout\,
	combout => \view_control_unit|Add0~82_combout\);

-- Location: LCFF_X23_Y13_N23
\view_control_unit|render_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~82_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(13));

-- Location: LCCOMB_X23_Y13_N2
\view_control_unit|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~5_combout\ = (!\view_control_unit|render_counter\(15) & (!\view_control_unit|render_counter\(14) & (!\view_control_unit|render_counter\(12) & !\view_control_unit|render_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(15),
	datab => \view_control_unit|render_counter\(14),
	datac => \view_control_unit|render_counter\(12),
	datad => \view_control_unit|render_counter\(13),
	combout => \view_control_unit|Selector5~5_combout\);

-- Location: LCCOMB_X23_Y14_N8
\view_control_unit|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~6_combout\ = (!\view_control_unit|render_counter\(9) & (!\view_control_unit|render_counter\(10) & (!\view_control_unit|render_counter\(11) & !\view_control_unit|render_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(9),
	datab => \view_control_unit|render_counter\(10),
	datac => \view_control_unit|render_counter\(11),
	datad => \view_control_unit|render_counter\(8),
	combout => \view_control_unit|Selector5~6_combout\);

-- Location: LCCOMB_X23_Y14_N30
\view_control_unit|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Add0~90_combout\ = (\view_control_unit|Add0~10_combout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|Add0~10_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Add0~90_combout\);

-- Location: LCFF_X23_Y14_N31
\view_control_unit|render_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Add0~90_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|render_counter\(5));

-- Location: LCCOMB_X23_Y14_N10
\view_control_unit|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~7_combout\ = (!\view_control_unit|render_counter\(4) & (!\view_control_unit|render_counter\(7) & (!\view_control_unit|render_counter\(6) & !\view_control_unit|render_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_counter\(4),
	datab => \view_control_unit|render_counter\(7),
	datac => \view_control_unit|render_counter\(6),
	datad => \view_control_unit|render_counter\(5),
	combout => \view_control_unit|Selector5~7_combout\);

-- Location: LCCOMB_X23_Y14_N22
\view_control_unit|Selector5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~9_combout\ = (\view_control_unit|Selector5~8_combout\ & (\view_control_unit|Selector5~5_combout\ & (\view_control_unit|Selector5~6_combout\ & \view_control_unit|Selector5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|Selector5~8_combout\,
	datab => \view_control_unit|Selector5~5_combout\,
	datac => \view_control_unit|Selector5~6_combout\,
	datad => \view_control_unit|Selector5~7_combout\,
	combout => \view_control_unit|Selector5~9_combout\);

-- Location: LCCOMB_X26_Y11_N0
\view_control_unit|Selector5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector5~10_combout\ = (\view_control_unit|state.SHOW_SPRITES~regout\ & (!\view_control_unit|render_asap~regout\)) # (!\view_control_unit|state.SHOW_SPRITES~regout\ & (((\view_control_unit|Selector5~4_combout\ & 
-- \view_control_unit|Selector5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|render_asap~regout\,
	datab => \view_control_unit|Selector5~4_combout\,
	datac => \view_control_unit|Selector5~9_combout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Selector5~10_combout\);

-- Location: LCCOMB_X26_Y11_N10
\view_control_unit|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector3~0_combout\ = (!\view|READY~regout\ & !\view_control_unit|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|READY~regout\,
	datad => \view_control_unit|state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Selector3~0_combout\);

-- Location: LCFF_X26_Y11_N11
\view_control_unit|state.WAITING_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Selector3~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|state.WAITING_2~regout\);

-- Location: LCCOMB_X26_Y11_N8
\view_control_unit|render_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|render_counter~0_combout\ = (\view_control_unit|state.WAITING~regout\ & !\view_control_unit|state.WAITING_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view_control_unit|state.WAITING~regout\,
	datad => \view_control_unit|state.WAITING_2~regout\,
	combout => \view_control_unit|render_counter~0_combout\);

-- Location: LCFF_X26_Y11_N1
\view_control_unit|next_state.SHOW_SPRITES\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Selector5~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view_control_unit|render_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|next_state.SHOW_SPRITES~regout\);

-- Location: LCCOMB_X26_Y11_N28
\view_control_unit|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view_control_unit|Selector0~0_combout\ = (\view_control_unit|state.WAITING_2~regout\ & (\view|READY~regout\ & !\view_control_unit|next_state.SHOW_SPRITES~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|state.WAITING_2~regout\,
	datac => \view|READY~regout\,
	datad => \view_control_unit|next_state.SHOW_SPRITES~regout\,
	combout => \view_control_unit|Selector0~0_combout\);

-- Location: LCFF_X26_Y11_N29
\view_control_unit|state.RENDER\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|Selector0~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|state.RENDER~regout\);

-- Location: LCFF_X23_Y11_N23
\view_control_unit|DRAW_SPRITE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \view_control_unit|state.RENDER~regout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|DRAW_SPRITE~regout\);

-- Location: LCCOMB_X23_Y11_N8
\view|show_asap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|show_asap~0_combout\ = (\view|show_asap~regout\ & (((\view_control_unit|DRAW_SPRITE~regout\) # (!\view|state.IDLE~regout\)))) # (!\view|show_asap~regout\ & (\view_control_unit|SHOW~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view_control_unit|SHOW~regout\,
	datab => \view|state.IDLE~regout\,
	datac => \view|show_asap~regout\,
	datad => \view_control_unit|DRAW_SPRITE~regout\,
	combout => \view|show_asap~0_combout\);

-- Location: LCFF_X23_Y11_N9
\view|show_asap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|show_asap~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|show_asap~regout\);

-- Location: LCCOMB_X26_Y11_N24
\view|next_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|next_state~14_combout\ = (!\view_control_unit|DRAW_SPRITE~regout\ & !\view|show_asap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|DRAW_SPRITE~regout\,
	datad => \view|show_asap~regout\,
	combout => \view|next_state~14_combout\);

-- Location: LCCOMB_X23_Y10_N0
\view|next_state.CLEARING~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|next_state.CLEARING~0_combout\ = (!\view|state.DRAWING~regout\ & (!\view|state.INIT~regout\ & (\view|state.CLEARING~regout\ & \view|next_state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.DRAWING~regout\,
	datab => \view|state.INIT~regout\,
	datac => \view|state.CLEARING~regout\,
	datad => \view|next_state~14_combout\,
	combout => \view|next_state.CLEARING~0_combout\);

-- Location: LCCOMB_X20_Y6_N4
\vga|vga_timing|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~0_combout\ = \vga|vga_timing|v_counter\(0) $ (VCC)
-- \vga|vga_timing|Add4~1\ = CARRY(\vga|vga_timing|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(0),
	datad => VCC,
	combout => \vga|vga_timing|Add4~0_combout\,
	cout => \vga|vga_timing|Add4~1\);

-- Location: LCCOMB_X20_Y6_N28
\vga|vga_timing|v_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~3_combout\ = (\vga|vga_timing|Add4~0_combout\ & (((\vga|vga_timing|v_counter\(5)) # (!\vga|vga_timing|v_counter\(9))) # (!\vga|vga_timing|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal8~1_combout\,
	datab => \vga|vga_timing|Add4~0_combout\,
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|v_counter\(9),
	combout => \vga|vga_timing|v_counter~3_combout\);

-- Location: LCCOMB_X22_Y4_N2
\vga|vga_timing|clock_count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|clock_count[0]~1_combout\ = !\vga|vga_timing|clock_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|vga_timing|clock_count\(0),
	combout => \vga|vga_timing|clock_count[0]~1_combout\);

-- Location: LCFF_X22_Y4_N3
\vga|vga_timing|clock_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|clock_count[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|clock_count\(0));

-- Location: LCCOMB_X21_Y4_N26
\vga|vga_timing|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~16_combout\ = (\vga|vga_timing|h_counter\(8) & (\vga|vga_timing|Add2~15\ $ (GND))) # (!\vga|vga_timing|h_counter\(8) & (!\vga|vga_timing|Add2~15\ & VCC))
-- \vga|vga_timing|Add2~17\ = CARRY((\vga|vga_timing|h_counter\(8) & !\vga|vga_timing|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(8),
	datad => VCC,
	cin => \vga|vga_timing|Add2~15\,
	combout => \vga|vga_timing|Add2~16_combout\,
	cout => \vga|vga_timing|Add2~17\);

-- Location: LCCOMB_X21_Y4_N28
\vga|vga_timing|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~18_combout\ = \vga|vga_timing|h_counter\(9) $ (\vga|vga_timing|Add2~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(9),
	cin => \vga|vga_timing|Add2~17\,
	combout => \vga|vga_timing|Add2~18_combout\);

-- Location: LCCOMB_X21_Y4_N10
\vga|vga_timing|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~0_combout\ = \vga|vga_timing|h_counter\(0) $ (VCC)
-- \vga|vga_timing|Add2~1\ = CARRY(\vga|vga_timing|h_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(0),
	datad => VCC,
	combout => \vga|vga_timing|Add2~0_combout\,
	cout => \vga|vga_timing|Add2~1\);

-- Location: LCCOMB_X21_Y4_N12
\vga|vga_timing|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~2_combout\ = (\vga|vga_timing|h_counter\(1) & (!\vga|vga_timing|Add2~1\)) # (!\vga|vga_timing|h_counter\(1) & ((\vga|vga_timing|Add2~1\) # (GND)))
-- \vga|vga_timing|Add2~3\ = CARRY((!\vga|vga_timing|Add2~1\) # (!\vga|vga_timing|h_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(1),
	datad => VCC,
	cin => \vga|vga_timing|Add2~1\,
	combout => \vga|vga_timing|Add2~2_combout\,
	cout => \vga|vga_timing|Add2~3\);

-- Location: LCCOMB_X21_Y4_N14
\vga|vga_timing|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~4_combout\ = (\vga|vga_timing|h_counter\(2) & (\vga|vga_timing|Add2~3\ $ (GND))) # (!\vga|vga_timing|h_counter\(2) & (!\vga|vga_timing|Add2~3\ & VCC))
-- \vga|vga_timing|Add2~5\ = CARRY((\vga|vga_timing|h_counter\(2) & !\vga|vga_timing|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(2),
	datad => VCC,
	cin => \vga|vga_timing|Add2~3\,
	combout => \vga|vga_timing|Add2~4_combout\,
	cout => \vga|vga_timing|Add2~5\);

-- Location: LCCOMB_X22_Y4_N16
\vga|vga_timing|clock_count[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|clock_count[1]~0_combout\ = \vga|vga_timing|clock_count\(1) $ (\vga|vga_timing|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|vga_timing|clock_count\(1),
	datad => \vga|vga_timing|clock_count\(0),
	combout => \vga|vga_timing|clock_count[1]~0_combout\);

-- Location: LCFF_X22_Y4_N17
\vga|vga_timing|clock_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|clock_count[1]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|clock_count\(1));

-- Location: LCCOMB_X22_Y4_N20
\vga|vga_timing|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal0~0_combout\ = (\vga|vga_timing|clock_count\(0) & \vga|vga_timing|clock_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|clock_count\(0),
	datac => \vga|vga_timing|clock_count\(1),
	combout => \vga|vga_timing|Equal0~0_combout\);

-- Location: LCFF_X21_Y4_N15
\vga|vga_timing|h_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(2));

-- Location: LCCOMB_X21_Y4_N16
\vga|vga_timing|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~6_combout\ = (\vga|vga_timing|h_counter\(3) & (!\vga|vga_timing|Add2~5\)) # (!\vga|vga_timing|h_counter\(3) & ((\vga|vga_timing|Add2~5\) # (GND)))
-- \vga|vga_timing|Add2~7\ = CARRY((!\vga|vga_timing|Add2~5\) # (!\vga|vga_timing|h_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(3),
	datad => VCC,
	cin => \vga|vga_timing|Add2~5\,
	combout => \vga|vga_timing|Add2~6_combout\,
	cout => \vga|vga_timing|Add2~7\);

-- Location: LCCOMB_X21_Y4_N18
\vga|vga_timing|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~8_combout\ = (\vga|vga_timing|h_counter\(4) & (\vga|vga_timing|Add2~7\ $ (GND))) # (!\vga|vga_timing|h_counter\(4) & (!\vga|vga_timing|Add2~7\ & VCC))
-- \vga|vga_timing|Add2~9\ = CARRY((\vga|vga_timing|h_counter\(4) & !\vga|vga_timing|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(4),
	datad => VCC,
	cin => \vga|vga_timing|Add2~7\,
	combout => \vga|vga_timing|Add2~8_combout\,
	cout => \vga|vga_timing|Add2~9\);

-- Location: LCFF_X21_Y4_N19
\vga|vga_timing|h_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(4));

-- Location: LCCOMB_X22_Y4_N30
\vga|vga_timing|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal3~0_combout\ = (\vga|vga_timing|Equal1~0_combout\ & (\vga|vga_timing|h_counter\(4) & (\vga|vga_timing|h_counter\(8) & !\vga|vga_timing|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal1~0_combout\,
	datab => \vga|vga_timing|h_counter\(4),
	datac => \vga|vga_timing|h_counter\(8),
	datad => \vga|vga_timing|h_counter\(6),
	combout => \vga|vga_timing|Equal3~0_combout\);

-- Location: LCCOMB_X21_Y4_N4
\vga|vga_timing|h_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_counter~1_combout\ = (\vga|vga_timing|Add2~18_combout\ & ((!\vga|vga_timing|Equal3~0_combout\) # (!\vga|vga_timing|h_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|Add2~18_combout\,
	datac => \vga|vga_timing|h_counter\(9),
	datad => \vga|vga_timing|Equal3~0_combout\,
	combout => \vga|vga_timing|h_counter~1_combout\);

-- Location: LCFF_X21_Y4_N5
\vga|vga_timing|h_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_counter~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(9));

-- Location: LCCOMB_X21_Y4_N20
\vga|vga_timing|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~10_combout\ = (\vga|vga_timing|h_counter\(5) & (!\vga|vga_timing|Add2~9\)) # (!\vga|vga_timing|h_counter\(5) & ((\vga|vga_timing|Add2~9\) # (GND)))
-- \vga|vga_timing|Add2~11\ = CARRY((!\vga|vga_timing|Add2~9\) # (!\vga|vga_timing|h_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(5),
	datad => VCC,
	cin => \vga|vga_timing|Add2~9\,
	combout => \vga|vga_timing|Add2~10_combout\,
	cout => \vga|vga_timing|Add2~11\);

-- Location: LCCOMB_X21_Y4_N2
\vga|vga_timing|h_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_counter~0_combout\ = (\vga|vga_timing|Add2~10_combout\ & ((!\vga|vga_timing|Equal3~0_combout\) # (!\vga|vga_timing|h_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(9),
	datac => \vga|vga_timing|Add2~10_combout\,
	datad => \vga|vga_timing|Equal3~0_combout\,
	combout => \vga|vga_timing|h_counter~0_combout\);

-- Location: LCFF_X21_Y4_N3
\vga|vga_timing|h_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_counter~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(5));

-- Location: LCCOMB_X21_Y4_N22
\vga|vga_timing|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~12_combout\ = (\vga|vga_timing|h_counter\(6) & (\vga|vga_timing|Add2~11\ $ (GND))) # (!\vga|vga_timing|h_counter\(6) & (!\vga|vga_timing|Add2~11\ & VCC))
-- \vga|vga_timing|Add2~13\ = CARRY((\vga|vga_timing|h_counter\(6) & !\vga|vga_timing|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(6),
	datad => VCC,
	cin => \vga|vga_timing|Add2~11\,
	combout => \vga|vga_timing|Add2~12_combout\,
	cout => \vga|vga_timing|Add2~13\);

-- Location: LCFF_X21_Y4_N23
\vga|vga_timing|h_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(6));

-- Location: LCCOMB_X21_Y4_N24
\vga|vga_timing|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~14_combout\ = (\vga|vga_timing|h_counter\(7) & (!\vga|vga_timing|Add2~13\)) # (!\vga|vga_timing|h_counter\(7) & ((\vga|vga_timing|Add2~13\) # (GND)))
-- \vga|vga_timing|Add2~15\ = CARRY((!\vga|vga_timing|Add2~13\) # (!\vga|vga_timing|h_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(7),
	datad => VCC,
	cin => \vga|vga_timing|Add2~13\,
	combout => \vga|vga_timing|Add2~14_combout\,
	cout => \vga|vga_timing|Add2~15\);

-- Location: LCCOMB_X21_Y4_N6
\vga|vga_timing|h_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_counter~2_combout\ = (\vga|vga_timing|Add2~16_combout\ & ((!\vga|vga_timing|Equal3~0_combout\) # (!\vga|vga_timing|h_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|Add2~16_combout\,
	datac => \vga|vga_timing|h_counter\(9),
	datad => \vga|vga_timing|Equal3~0_combout\,
	combout => \vga|vga_timing|h_counter~2_combout\);

-- Location: LCFF_X21_Y4_N7
\vga|vga_timing|h_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_counter~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(8));

-- Location: LCCOMB_X22_Y4_N18
\vga|vga_timing|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal2~1_combout\ = (!\vga|vga_timing|h_counter\(4) & (!\vga|vga_timing|h_counter\(8) & (!\vga|vga_timing|h_counter\(9) & !\vga|vga_timing|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(4),
	datab => \vga|vga_timing|h_counter\(8),
	datac => \vga|vga_timing|h_counter\(9),
	datad => \vga|vga_timing|h_counter\(6),
	combout => \vga|vga_timing|Equal2~1_combout\);

-- Location: LCFF_X21_Y4_N25
\vga|vga_timing|h_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(7));

-- Location: LCCOMB_X21_Y4_N8
\vga|vga_timing|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal4~0_combout\ = (!\vga|vga_timing|h_counter\(3) & (!\vga|vga_timing|h_counter\(2) & (!\vga|vga_timing|h_counter\(7) & !\vga|vga_timing|h_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(3),
	datab => \vga|vga_timing|h_counter\(2),
	datac => \vga|vga_timing|h_counter\(7),
	datad => \vga|vga_timing|h_counter\(5),
	combout => \vga|vga_timing|Equal4~0_combout\);

-- Location: LCFF_X21_Y4_N11
\vga|vga_timing|h_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(0));

-- Location: LCCOMB_X21_Y4_N30
\vga|vga_timing|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal4~1_combout\ = (!\vga|vga_timing|h_counter\(1) & (\vga|vga_timing|Equal2~1_combout\ & (\vga|vga_timing|Equal4~0_combout\ & !\vga|vga_timing|h_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(1),
	datab => \vga|vga_timing|Equal2~1_combout\,
	datac => \vga|vga_timing|Equal4~0_combout\,
	datad => \vga|vga_timing|h_counter\(0),
	combout => \vga|vga_timing|Equal4~1_combout\);

-- Location: LCCOMB_X22_Y4_N12
\vga|vga_timing|new_line~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|new_line~2_combout\ = (\vga|vga_timing|clock_count\(1) & (\vga|vga_timing|clock_count\(0) & \vga|vga_timing|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|clock_count\(1),
	datab => \vga|vga_timing|clock_count\(0),
	datac => \vga|vga_timing|Equal4~1_combout\,
	combout => \vga|vga_timing|new_line~2_combout\);

-- Location: LCFF_X22_Y4_N13
\vga|vga_timing|new_line\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|new_line~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|new_line~regout\);

-- Location: LCFF_X20_Y6_N29
\vga|vga_timing|v_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(0));

-- Location: LCCOMB_X20_Y6_N6
\vga|vga_timing|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~2_combout\ = (\vga|vga_timing|v_counter\(1) & (!\vga|vga_timing|Add4~1\)) # (!\vga|vga_timing|v_counter\(1) & ((\vga|vga_timing|Add4~1\) # (GND)))
-- \vga|vga_timing|Add4~3\ = CARRY((!\vga|vga_timing|Add4~1\) # (!\vga|vga_timing|v_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(1),
	datad => VCC,
	cin => \vga|vga_timing|Add4~1\,
	combout => \vga|vga_timing|Add4~2_combout\,
	cout => \vga|vga_timing|Add4~3\);

-- Location: LCCOMB_X20_Y6_N26
\vga|vga_timing|v_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~1_combout\ = (\vga|vga_timing|Add4~2_combout\ & (((\vga|vga_timing|v_counter\(5)) # (!\vga|vga_timing|v_counter\(9))) # (!\vga|vga_timing|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal8~1_combout\,
	datab => \vga|vga_timing|v_counter\(9),
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|Add4~2_combout\,
	combout => \vga|vga_timing|v_counter~1_combout\);

-- Location: LCFF_X20_Y6_N27
\vga|vga_timing|v_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(1));

-- Location: LCCOMB_X20_Y6_N8
\vga|vga_timing|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~4_combout\ = (\vga|vga_timing|v_counter\(2) & (\vga|vga_timing|Add4~3\ $ (GND))) # (!\vga|vga_timing|v_counter\(2) & (!\vga|vga_timing|Add4~3\ & VCC))
-- \vga|vga_timing|Add4~5\ = CARRY((\vga|vga_timing|v_counter\(2) & !\vga|vga_timing|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(2),
	datad => VCC,
	cin => \vga|vga_timing|Add4~3\,
	combout => \vga|vga_timing|Add4~4_combout\,
	cout => \vga|vga_timing|Add4~5\);

-- Location: LCCOMB_X20_Y6_N10
\vga|vga_timing|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~6_combout\ = (\vga|vga_timing|v_counter\(3) & (!\vga|vga_timing|Add4~5\)) # (!\vga|vga_timing|v_counter\(3) & ((\vga|vga_timing|Add4~5\) # (GND)))
-- \vga|vga_timing|Add4~7\ = CARRY((!\vga|vga_timing|Add4~5\) # (!\vga|vga_timing|v_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(3),
	datad => VCC,
	cin => \vga|vga_timing|Add4~5\,
	combout => \vga|vga_timing|Add4~6_combout\,
	cout => \vga|vga_timing|Add4~7\);

-- Location: LCCOMB_X20_Y6_N0
\vga|vga_timing|v_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~2_combout\ = (\vga|vga_timing|Add4~6_combout\ & (((\vga|vga_timing|v_counter\(5)) # (!\vga|vga_timing|v_counter\(9))) # (!\vga|vga_timing|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal8~1_combout\,
	datab => \vga|vga_timing|v_counter\(9),
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|Add4~6_combout\,
	combout => \vga|vga_timing|v_counter~2_combout\);

-- Location: LCFF_X20_Y6_N1
\vga|vga_timing|v_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(3));

-- Location: LCCOMB_X20_Y6_N14
\vga|vga_timing|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~10_combout\ = (\vga|vga_timing|v_counter\(5) & (!\vga|vga_timing|Add4~9\)) # (!\vga|vga_timing|v_counter\(5) & ((\vga|vga_timing|Add4~9\) # (GND)))
-- \vga|vga_timing|Add4~11\ = CARRY((!\vga|vga_timing|Add4~9\) # (!\vga|vga_timing|v_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(5),
	datad => VCC,
	cin => \vga|vga_timing|Add4~9\,
	combout => \vga|vga_timing|Add4~10_combout\,
	cout => \vga|vga_timing|Add4~11\);

-- Location: LCFF_X20_Y6_N15
\vga|vga_timing|v_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(5));

-- Location: LCCOMB_X20_Y6_N18
\vga|vga_timing|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~14_combout\ = (\vga|vga_timing|v_counter\(7) & (!\vga|vga_timing|Add4~13\)) # (!\vga|vga_timing|v_counter\(7) & ((\vga|vga_timing|Add4~13\) # (GND)))
-- \vga|vga_timing|Add4~15\ = CARRY((!\vga|vga_timing|Add4~13\) # (!\vga|vga_timing|v_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(7),
	datad => VCC,
	cin => \vga|vga_timing|Add4~13\,
	combout => \vga|vga_timing|Add4~14_combout\,
	cout => \vga|vga_timing|Add4~15\);

-- Location: LCFF_X20_Y6_N19
\vga|vga_timing|v_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(7));

-- Location: LCCOMB_X20_Y6_N22
\vga|vga_timing|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~18_combout\ = \vga|vga_timing|Add4~17\ $ (\vga|vga_timing|v_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|vga_timing|v_counter\(9),
	cin => \vga|vga_timing|Add4~17\,
	combout => \vga|vga_timing|Add4~18_combout\);

-- Location: LCCOMB_X20_Y6_N30
\vga|vga_timing|v_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~4_combout\ = (\vga|vga_timing|Add4~18_combout\ & (((\vga|vga_timing|v_counter\(5)) # (!\vga|vga_timing|v_counter\(9))) # (!\vga|vga_timing|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal8~1_combout\,
	datab => \vga|vga_timing|v_counter\(5),
	datac => \vga|vga_timing|v_counter\(9),
	datad => \vga|vga_timing|Add4~18_combout\,
	combout => \vga|vga_timing|v_counter~4_combout\);

-- Location: LCFF_X20_Y6_N31
\vga|vga_timing|v_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(9));

-- Location: LCCOMB_X19_Y6_N26
\vga|vga_timing|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal6~1_combout\ = (\vga|vga_timing|Equal6~0_combout\ & (!\vga|vga_timing|v_counter\(9) & (!\vga|vga_timing|v_counter\(5) & !\vga|vga_timing|v_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal6~0_combout\,
	datab => \vga|vga_timing|v_counter\(9),
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|v_counter\(0),
	combout => \vga|vga_timing|Equal6~1_combout\);

-- Location: LCCOMB_X20_Y6_N24
\vga|vga_timing|v_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~0_combout\ = (\vga|vga_timing|Add4~4_combout\ & (((\vga|vga_timing|v_counter\(5)) # (!\vga|vga_timing|v_counter\(9))) # (!\vga|vga_timing|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal8~1_combout\,
	datab => \vga|vga_timing|Add4~4_combout\,
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|v_counter\(9),
	combout => \vga|vga_timing|v_counter~0_combout\);

-- Location: LCFF_X20_Y6_N25
\vga|vga_timing|v_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(2));

-- Location: LCCOMB_X19_Y6_N10
\vga|vga_timing|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal6~2_combout\ = (\vga|vga_timing|v_counter\(1) & (\vga|vga_timing|Equal6~1_combout\ & (\vga|vga_timing|v_counter\(3) & !\vga|vga_timing|v_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(1),
	datab => \vga|vga_timing|Equal6~1_combout\,
	datac => \vga|vga_timing|v_counter\(3),
	datad => \vga|vga_timing|v_counter\(2),
	combout => \vga|vga_timing|Equal6~2_combout\);

-- Location: LCCOMB_X19_Y6_N28
\vga|vga_timing|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal8~0_combout\ = (\vga|vga_timing|v_counter\(1) & (\vga|vga_timing|v_counter\(2) & \vga|vga_timing|v_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(1),
	datab => \vga|vga_timing|v_counter\(2),
	datac => \vga|vga_timing|v_counter\(3),
	combout => \vga|vga_timing|Equal8~0_combout\);

-- Location: LCCOMB_X19_Y6_N14
\vga|vga_timing|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal8~1_combout\ = (\vga|vga_timing|Equal6~0_combout\ & (\vga|vga_timing|Equal8~0_combout\ & !\vga|vga_timing|v_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal6~0_combout\,
	datab => \vga|vga_timing|Equal8~0_combout\,
	datad => \vga|vga_timing|v_counter\(0),
	combout => \vga|vga_timing|Equal8~1_combout\);

-- Location: LCCOMB_X19_Y6_N8
\vga|vga_timing|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal8~2_combout\ = (\vga|vga_timing|v_counter\(5) & !\vga|vga_timing|v_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|v_counter\(9),
	combout => \vga|vga_timing|Equal8~2_combout\);

-- Location: LCCOMB_X19_Y6_N0
\vga|vga_timing|v_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_state~11_combout\ = ((\vga|vga_timing|v_counter\(1) & ((\vga|vga_timing|v_counter\(2)) # (!\vga|vga_timing|v_counter\(3)))) # (!\vga|vga_timing|v_counter\(1) & (\vga|vga_timing|v_counter\(3) $ (\vga|vga_timing|v_counter\(2))))) # 
-- (!\vga|vga_timing|Equal6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(1),
	datab => \vga|vga_timing|Equal6~1_combout\,
	datac => \vga|vga_timing|v_counter\(3),
	datad => \vga|vga_timing|v_counter\(2),
	combout => \vga|vga_timing|v_state~11_combout\);

-- Location: LCCOMB_X19_Y6_N2
\vga|vga_timing|v_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_state~12_combout\ = (\vga|vga_timing|new_line~regout\ & (((\vga|vga_timing|Equal8~1_combout\ & \vga|vga_timing|Equal8~2_combout\)) # (!\vga|vga_timing|v_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|new_line~regout\,
	datab => \vga|vga_timing|Equal8~1_combout\,
	datac => \vga|vga_timing|Equal8~2_combout\,
	datad => \vga|vga_timing|v_state~11_combout\,
	combout => \vga|vga_timing|v_state~12_combout\);

-- Location: LCFF_X19_Y6_N11
\vga|vga_timing|v_state.SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Equal6~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|v_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_state.SYNC~regout\);

-- Location: LCCOMB_X23_Y11_N26
\view|next_state.WAITING~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|next_state.WAITING~0_combout\ = (!\view|state.WAITING~regout\ & ((\vga|vga_timing|v_state.SYNC~regout\) # (!\view|state.SHOWING~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOWING~regout\,
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \view|state.WAITING~regout\,
	combout => \view|next_state.WAITING~0_combout\);

-- Location: LCCOMB_X23_Y11_N30
\view|Selector73~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector73~0_combout\ = (!\view_control_unit|DRAW_SPRITE~regout\ & (\view|state.IDLE~regout\ & ((\view|show_asap~regout\) # (\view|next_state.SHOWING~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|show_asap~regout\,
	datab => \view_control_unit|DRAW_SPRITE~regout\,
	datac => \view|state.IDLE~regout\,
	datad => \view|next_state.SHOWING~regout\,
	combout => \view|Selector73~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\view|Selector73~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector73~1_combout\ = (\view|Selector73~0_combout\) # ((!\view|next_state.WAITING~0_combout\ & \view|next_state.SHOWING~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|next_state.WAITING~0_combout\,
	datac => \view|next_state.SHOWING~regout\,
	datad => \view|Selector73~0_combout\,
	combout => \view|Selector73~1_combout\);

-- Location: LCFF_X23_Y11_N29
\view|next_state.SHOWING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector73~1_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|next_state.SHOWING~regout\);

-- Location: LCCOMB_X23_Y11_N12
\view|Selector67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector67~0_combout\ = (!\view|Selector69~3_combout\ & ((\view|Selector69~2_combout\ & ((\view|next_state.SHOWING~regout\))) # (!\view|Selector69~2_combout\ & (\view|state.SHOWING~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector69~2_combout\,
	datab => \view|Selector69~3_combout\,
	datac => \view|state.SHOWING~regout\,
	datad => \view|next_state.SHOWING~regout\,
	combout => \view|Selector67~0_combout\);

-- Location: LCFF_X23_Y11_N13
\view|state.SHOWING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector67~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.SHOWING~regout\);

-- Location: LCCOMB_X23_Y11_N0
\view|next_state.CLEARING~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|next_state.CLEARING~1_combout\ = (\view|next_state.WAITING~1_combout\ & (((\view|next_state.CLEARING~regout\)))) # (!\view|next_state.WAITING~1_combout\ & ((\view|state.SHOWING~regout\) # ((\view|next_state.CLEARING~0_combout\ & 
-- \view|next_state.CLEARING~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|next_state.WAITING~1_combout\,
	datab => \view|next_state.CLEARING~0_combout\,
	datac => \view|next_state.CLEARING~regout\,
	datad => \view|state.SHOWING~regout\,
	combout => \view|next_state.CLEARING~1_combout\);

-- Location: LCFF_X23_Y11_N1
\view|next_state.CLEARING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|next_state.CLEARING~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|next_state.CLEARING~regout\);

-- Location: LCCOMB_X23_Y11_N16
\view|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector68~0_combout\ = (\view|Selector69~3_combout\) # ((!\view|next_state.CLEARING~regout\) # (!\view|Selector69~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Selector69~3_combout\,
	datac => \view|Selector69~2_combout\,
	datad => \view|next_state.CLEARING~regout\,
	combout => \view|Selector68~0_combout\);

-- Location: LCFF_X23_Y11_N17
\view|state.CLEARING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector68~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.CLEARING~regout\);

-- Location: LCCOMB_X23_Y10_N10
\view|Selector66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector66~0_combout\ = (\view|next_state.DRAWING~regout\ & (\view|Selector69~2_combout\ & !\view|Selector69~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|next_state.DRAWING~regout\,
	datac => \view|Selector69~2_combout\,
	datad => \view|Selector69~3_combout\,
	combout => \view|Selector66~0_combout\);

-- Location: LCFF_X23_Y10_N11
\view|state.DRAWING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector66~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.DRAWING~regout\);

-- Location: LCCOMB_X23_Y10_N22
\view|Selector69~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector69~3_combout\ = (\view|Selector69~1_combout\) # ((\view|state.INIT~regout\) # ((\view|state.DRAWING~regout\) # (!\view|state.CLEARING~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector69~1_combout\,
	datab => \view|state.INIT~regout\,
	datac => \view|state.CLEARING~regout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector69~3_combout\);

-- Location: LCCOMB_X23_Y11_N14
\view|Selector64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector64~0_combout\ = (!\view|show_asap~regout\ & (!\view_control_unit|DRAW_SPRITE~regout\ & \view|state.IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|show_asap~regout\,
	datab => \view_control_unit|DRAW_SPRITE~regout\,
	datac => \view|state.IDLE~regout\,
	combout => \view|Selector64~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\view|Selector75~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector75~0_combout\ = ((\view|next_state.INIT~regout\ & ((\view|Selector64~0_combout\) # (!\view|next_state.WAITING~0_combout\)))) # (!\view|state.CLEARING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.CLEARING~regout\,
	datab => \view|Selector64~0_combout\,
	datac => \view|next_state.INIT~regout\,
	datad => \view|next_state.WAITING~0_combout\,
	combout => \view|Selector75~0_combout\);

-- Location: LCFF_X23_Y11_N11
\view|next_state.INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector75~0_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|next_state.INIT~regout\);

-- Location: LCCOMB_X23_Y11_N18
\view|Selector69~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector69~4_combout\ = (!\view|Selector69~3_combout\ & (\view|Selector69~2_combout\ & \view|next_state.INIT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Selector69~3_combout\,
	datac => \view|Selector69~2_combout\,
	datad => \view|next_state.INIT~regout\,
	combout => \view|Selector69~4_combout\);

-- Location: LCFF_X23_Y11_N19
\view|state.INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector69~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.INIT~regout\);

-- Location: LCCOMB_X23_Y11_N22
\view|Selector70~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector70~0_combout\ = ((!\view|show_asap~regout\ & (!\view_control_unit|DRAW_SPRITE~regout\ & \view|state.IDLE~regout\))) # (!\view|next_state.WAITING~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|show_asap~regout\,
	datab => \view|next_state.WAITING~0_combout\,
	datac => \view_control_unit|DRAW_SPRITE~regout\,
	datad => \view|state.IDLE~regout\,
	combout => \view|Selector70~0_combout\);

-- Location: LCCOMB_X22_Y11_N14
\view|Selector70~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector70~1_combout\ = (\view|state.INIT~regout\) # ((!\view|next_state.IDLE~regout\ & \view|Selector70~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|next_state.IDLE~regout\,
	datac => \view|state.INIT~regout\,
	datad => \view|Selector70~0_combout\,
	combout => \view|Selector70~1_combout\);

-- Location: LCCOMB_X22_Y11_N18
\view|Selector70~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector70~2_combout\ = (!\view|Selector70~1_combout\ & ((\view|LessThan1~10_combout\) # ((\view|LessThan0~10_combout\) # (!\view|state.DRAWING~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|LessThan1~10_combout\,
	datab => \view|Selector70~1_combout\,
	datac => \view|state.DRAWING~regout\,
	datad => \view|LessThan0~10_combout\,
	combout => \view|Selector70~2_combout\);

-- Location: LCFF_X22_Y11_N19
\view|next_state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector70~2_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|next_state.IDLE~regout\);

-- Location: LCCOMB_X23_Y11_N2
\view|Selector64~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector64~1_combout\ = (!\view|Selector69~3_combout\ & ((\view|Selector69~2_combout\ & (!\view|next_state.IDLE~regout\)) # (!\view|Selector69~2_combout\ & ((\view|Selector64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector69~2_combout\,
	datab => \view|next_state.IDLE~regout\,
	datac => \view|Selector64~0_combout\,
	datad => \view|Selector69~3_combout\,
	combout => \view|Selector64~1_combout\);

-- Location: LCFF_X23_Y11_N3
\view|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector64~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.IDLE~regout\);

-- Location: LCCOMB_X23_Y11_N4
\view|reg_hitbox.size_y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|reg_hitbox.size_y[0]~0_combout\ = (\RESET_N~regout\ & (\view|state.IDLE~regout\ & \view_control_unit|DRAW_SPRITE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET_N~regout\,
	datac => \view|state.IDLE~regout\,
	datad => \view_control_unit|DRAW_SPRITE~regout\,
	combout => \view|reg_hitbox.size_y[0]~0_combout\);

-- Location: LCFF_X22_Y10_N1
\view|reg_hitbox.size_y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|reg_hitbox.size_y[0]~feeder_combout\,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.size_y\(0));

-- Location: LCCOMB_X23_Y12_N14
\view|Add3~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~83_combout\ = (\view|Add3~57_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~57_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~83_combout\);

-- Location: LCCOMB_X22_Y11_N6
\view|Add3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~5_combout\ = (\view|state.DRAWING~regout\) # (\view|state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.DRAWING~regout\,
	datad => \view|state.IDLE~regout\,
	combout => \view|Add3~5_combout\);

-- Location: LCFF_X23_Y12_N15
\view|column[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~83_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(23));

-- Location: LCCOMB_X21_Y12_N18
\view|Add3~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~89_combout\ = (\view|Add3~45_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~45_combout\,
	datab => \view|reg_hitbox.size_y\(0),
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~89_combout\);

-- Location: LCFF_X21_Y12_N19
\view|column[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~89_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(17));

-- Location: LCCOMB_X21_Y12_N22
\view|Add3~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~91_combout\ = (\view|Add3~41_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~41_combout\,
	datab => \view|reg_hitbox.size_y\(0),
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~91_combout\);

-- Location: LCFF_X21_Y12_N23
\view|column[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~91_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(15));

-- Location: LCCOMB_X21_Y12_N16
\view|Add3~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~92_combout\ = (\view|Add3~39_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~39_combout\,
	datab => \view|reg_hitbox.size_y\(0),
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~92_combout\);

-- Location: LCFF_X21_Y12_N17
\view|column[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~92_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(14));

-- Location: LCCOMB_X21_Y12_N26
\view|Add3~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~93_combout\ = (\view|Add3~37_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~37_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~93_combout\);

-- Location: LCFF_X21_Y12_N27
\view|column[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~93_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(13));

-- Location: LCCOMB_X22_Y11_N26
\view|Add3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~13_combout\ = (\view|Add3~11_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~11_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~13_combout\);

-- Location: LCFF_X22_Y11_N27
\view|column[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~13_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(4));

-- Location: LCCOMB_X22_Y11_N16
\view|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~4_combout\ = (\view|Add3~2_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~2_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~4_combout\);

-- Location: LCFF_X22_Y11_N17
\view|column[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(1));

-- Location: LCCOMB_X22_Y13_N0
\view|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~0_combout\ = \view|column\(0) $ (VCC)
-- \view|Add3~1\ = CARRY(\view|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datad => VCC,
	combout => \view|Add3~0_combout\,
	cout => \view|Add3~1\);

-- Location: LCCOMB_X22_Y13_N4
\view|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~6_combout\ = (\view|column\(2) & (\view|Add3~3\ $ (GND))) # (!\view|column\(2) & (!\view|Add3~3\ & VCC))
-- \view|Add3~7\ = CARRY((\view|column\(2) & !\view|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(2),
	datad => VCC,
	cin => \view|Add3~3\,
	combout => \view|Add3~6_combout\,
	cout => \view|Add3~7\);

-- Location: LCCOMB_X22_Y13_N10
\view|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~16_combout\ = (\view|column\(5) & (!\view|Add3~12\)) # (!\view|column\(5) & ((\view|Add3~12\) # (GND)))
-- \view|Add3~17\ = CARRY((!\view|Add3~12\) # (!\view|column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(5),
	datad => VCC,
	cin => \view|Add3~12\,
	combout => \view|Add3~16_combout\,
	cout => \view|Add3~17\);

-- Location: LCCOMB_X23_Y12_N6
\view|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~30_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~16_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|column\(31),
	datac => \view|Add3~16_combout\,
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~30_combout\);

-- Location: LCFF_X23_Y12_N7
\view|column[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~30_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(5));

-- Location: LCCOMB_X22_Y13_N12
\view|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~18_combout\ = (\view|column\(6) & (\view|Add3~17\ $ (GND))) # (!\view|column\(6) & (!\view|Add3~17\ & VCC))
-- \view|Add3~19\ = CARRY((\view|column\(6) & !\view|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(6),
	datad => VCC,
	cin => \view|Add3~17\,
	combout => \view|Add3~18_combout\,
	cout => \view|Add3~19\);

-- Location: LCCOMB_X23_Y12_N12
\view|Add3~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~29_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~18_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add3~18_combout\,
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~29_combout\);

-- Location: LCFF_X23_Y12_N13
\view|column[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~29_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(6));

-- Location: LCCOMB_X22_Y13_N14
\view|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~20_combout\ = (\view|column\(7) & (!\view|Add3~19\)) # (!\view|column\(7) & ((\view|Add3~19\) # (GND)))
-- \view|Add3~21\ = CARRY((!\view|Add3~19\) # (!\view|column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(7),
	datad => VCC,
	cin => \view|Add3~19\,
	combout => \view|Add3~20_combout\,
	cout => \view|Add3~21\);

-- Location: LCCOMB_X22_Y11_N0
\view|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~28_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~20_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|column\(31),
	datac => \view|Add3~20_combout\,
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~28_combout\);

-- Location: LCFF_X22_Y11_N1
\view|column[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~28_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(7));

-- Location: LCCOMB_X22_Y13_N16
\view|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~22_combout\ = (\view|column\(8) & (\view|Add3~21\ $ (GND))) # (!\view|column\(8) & (!\view|Add3~21\ & VCC))
-- \view|Add3~23\ = CARRY((\view|column\(8) & !\view|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(8),
	datad => VCC,
	cin => \view|Add3~21\,
	combout => \view|Add3~22_combout\,
	cout => \view|Add3~23\);

-- Location: LCCOMB_X23_Y12_N26
\view|Add3~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~27_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~22_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|column\(31),
	datac => \view|Add3~22_combout\,
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~27_combout\);

-- Location: LCFF_X23_Y12_N27
\view|column[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~27_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(8));

-- Location: LCCOMB_X22_Y13_N18
\view|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~24_combout\ = (\view|column\(9) & (!\view|Add3~23\)) # (!\view|column\(9) & ((\view|Add3~23\) # (GND)))
-- \view|Add3~25\ = CARRY((!\view|Add3~23\) # (!\view|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(9),
	datad => VCC,
	cin => \view|Add3~23\,
	combout => \view|Add3~24_combout\,
	cout => \view|Add3~25\);

-- Location: LCCOMB_X22_Y13_N20
\view|Add3~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~31_combout\ = (\view|column\(10) & (\view|Add3~25\ $ (GND))) # (!\view|column\(10) & (!\view|Add3~25\ & VCC))
-- \view|Add3~32\ = CARRY((\view|column\(10) & !\view|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(10),
	datad => VCC,
	cin => \view|Add3~25\,
	combout => \view|Add3~31_combout\,
	cout => \view|Add3~32\);

-- Location: LCCOMB_X22_Y11_N10
\view|Add3~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~96_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~31_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|column\(31),
	datac => \view|Add3~31_combout\,
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~96_combout\);

-- Location: LCFF_X22_Y11_N11
\view|column[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~96_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(10));

-- Location: LCCOMB_X22_Y12_N16
\view|Add3~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~59_combout\ = (\view|column\(24) & (\view|Add3~58\ $ (GND))) # (!\view|column\(24) & (!\view|Add3~58\ & VCC))
-- \view|Add3~60\ = CARRY((\view|column\(24) & !\view|Add3~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(24),
	datad => VCC,
	cin => \view|Add3~58\,
	combout => \view|Add3~59_combout\,
	cout => \view|Add3~60\);

-- Location: LCCOMB_X23_Y12_N28
\view|Add3~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~82_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~59_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add3~59_combout\,
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~82_combout\);

-- Location: LCFF_X23_Y12_N29
\view|column[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~82_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(24));

-- Location: LCCOMB_X22_Y12_N18
\view|Add3~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~61_combout\ = (\view|column\(25) & (!\view|Add3~60\)) # (!\view|column\(25) & ((\view|Add3~60\) # (GND)))
-- \view|Add3~62\ = CARRY((!\view|Add3~60\) # (!\view|column\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(25),
	datad => VCC,
	cin => \view|Add3~60\,
	combout => \view|Add3~61_combout\,
	cout => \view|Add3~62\);

-- Location: LCCOMB_X23_Y12_N18
\view|Add3~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~81_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~61_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add3~61_combout\,
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~81_combout\);

-- Location: LCFF_X23_Y12_N19
\view|column[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~81_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(25));

-- Location: LCCOMB_X23_Y12_N2
\view|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~2_combout\ = (!\view|column\(26) & (!\view|column\(24) & (!\view|column\(23) & !\view|column\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(26),
	datab => \view|column\(24),
	datac => \view|column\(23),
	datad => \view|column\(25),
	combout => \view|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y12_N22
\view|Add3~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~65_combout\ = (\view|column\(27) & (!\view|Add3~64\)) # (!\view|column\(27) & ((\view|Add3~64\) # (GND)))
-- \view|Add3~66\ = CARRY((!\view|Add3~64\) # (!\view|column\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(27),
	datad => VCC,
	cin => \view|Add3~64\,
	combout => \view|Add3~65_combout\,
	cout => \view|Add3~66\);

-- Location: LCCOMB_X23_Y12_N30
\view|Add3~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~79_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~65_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add3~65_combout\,
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~79_combout\);

-- Location: LCFF_X23_Y12_N31
\view|column[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~79_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(27));

-- Location: LCCOMB_X23_Y12_N20
\view|Add3~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~78_combout\ = (\view|Add3~67_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~67_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~78_combout\);

-- Location: LCFF_X23_Y12_N21
\view|column[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~78_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(28));

-- Location: LCCOMB_X23_Y12_N0
\view|Add3~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~76_combout\ = (\view|Add3~71_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~71_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~76_combout\);

-- Location: LCFF_X23_Y12_N1
\view|column[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~76_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(30));

-- Location: LCCOMB_X23_Y12_N24
\view|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~1_combout\ = (!\view|column\(29) & (!\view|column\(27) & (!\view|column\(28) & !\view|column\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(29),
	datab => \view|column\(27),
	datac => \view|column\(28),
	datad => \view|column\(30),
	combout => \view|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y12_N8
\view|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~8_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~6_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add3~6_combout\,
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~8_combout\);

-- Location: LCFF_X23_Y12_N9
\view|column[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(2));

-- Location: LCCOMB_X25_Y12_N22
\view|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~4_combout\ = (\view|column\(1) & \view|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|column\(1),
	datad => \view|column\(2),
	combout => \view|Mux4~4_combout\);

-- Location: LCCOMB_X25_Y12_N6
\view|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~0_combout\ = (((!\view|Mux4~4_combout\) # (!\view|column\(4))) # (!\view|column\(3))) # (!\view|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datab => \view|column\(3),
	datac => \view|column\(4),
	datad => \view|Mux4~4_combout\,
	combout => \view|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y12_N4
\view|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~3_combout\ = (\view|LessThan0~2_combout\ & (\view|LessThan0~1_combout\ & \view|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|LessThan0~2_combout\,
	datac => \view|LessThan0~1_combout\,
	datad => \view|LessThan0~0_combout\,
	combout => \view|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y12_N4
\view|Add3~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~90_combout\ = (\view|Add3~43_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~43_combout\,
	datab => \view|reg_hitbox.size_y\(0),
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~90_combout\);

-- Location: LCFF_X21_Y12_N5
\view|column[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~90_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(16));

-- Location: LCCOMB_X21_Y12_N2
\view|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~5_combout\ = (!\view|column\(18) & (!\view|column\(17) & (!\view|column\(16) & !\view|column\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(18),
	datab => \view|column\(17),
	datac => \view|column\(16),
	datad => \view|column\(15),
	combout => \view|LessThan0~5_combout\);

-- Location: LCCOMB_X21_Y12_N14
\view|Add3~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~87_combout\ = (\view|Add3~49_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~49_combout\,
	datab => \view|reg_hitbox.size_y\(0),
	datac => \view|column\(31),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~87_combout\);

-- Location: LCFF_X21_Y12_N15
\view|column[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~87_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(19));

-- Location: LCCOMB_X21_Y12_N8
\view|Add3~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~84_combout\ = (\view|Add3~55_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~55_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~84_combout\);

-- Location: LCFF_X21_Y12_N9
\view|column[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~84_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(22));

-- Location: LCCOMB_X21_Y12_N12
\view|Add3~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~86_combout\ = (\view|Add3~51_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~51_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~86_combout\);

-- Location: LCFF_X21_Y12_N13
\view|column[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~86_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(20));

-- Location: LCCOMB_X21_Y12_N24
\view|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~4_combout\ = (!\view|column\(21) & (!\view|column\(19) & (!\view|column\(22) & !\view|column\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(21),
	datab => \view|column\(19),
	datac => \view|column\(22),
	datad => \view|column\(20),
	combout => \view|LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y11_N30
\view|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~26_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add3~24_combout\ & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|column\(31),
	datac => \view|Add3~24_combout\,
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~26_combout\);

-- Location: LCFF_X22_Y11_N31
\view|column[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~26_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(9));

-- Location: LCCOMB_X22_Y11_N24
\view|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~7_combout\ = (!\view|column\(10) & (!\view|column\(7) & (!\view|column\(8) & !\view|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(10),
	datab => \view|column\(7),
	datac => \view|column\(8),
	datad => \view|column\(9),
	combout => \view|LessThan0~7_combout\);

-- Location: LCCOMB_X21_Y12_N6
\view|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~8_combout\ = (\view|LessThan0~6_combout\ & (\view|LessThan0~5_combout\ & (\view|LessThan0~4_combout\ & \view|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|LessThan0~6_combout\,
	datab => \view|LessThan0~5_combout\,
	datac => \view|LessThan0~4_combout\,
	datad => \view|LessThan0~7_combout\,
	combout => \view|LessThan0~8_combout\);

-- Location: LCCOMB_X23_Y12_N22
\view|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~9_combout\ = (!\view|column\(5) & (\view|LessThan0~3_combout\ & (\view|LessThan0~8_combout\ & !\view|column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(5),
	datab => \view|LessThan0~3_combout\,
	datac => \view|LessThan0~8_combout\,
	datad => \view|column\(6),
	combout => \view|LessThan0~9_combout\);

-- Location: LCCOMB_X22_Y11_N2
\view|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan0~10_combout\ = (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|LessThan0~10_combout\);

-- Location: LCCOMB_X23_Y12_N10
\view|Add3~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~77_combout\ = (\view|Add3~69_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~69_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~77_combout\);

-- Location: LCFF_X23_Y12_N11
\view|column[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~77_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(29));

-- Location: LCCOMB_X22_Y12_N30
\view|Add3~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~73_combout\ = \view|Add3~72\ $ (\view|column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \view|column\(31),
	cin => \view|Add3~72\,
	combout => \view|Add3~73_combout\);

-- Location: LCCOMB_X22_Y11_N22
\view|Add3~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~75_combout\ = (\view|LessThan0~10_combout\ & (\view|state.DRAWING~regout\ & \view|Add3~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|LessThan0~10_combout\,
	datac => \view|state.DRAWING~regout\,
	datad => \view|Add3~73_combout\,
	combout => \view|Add3~75_combout\);

-- Location: LCFF_X22_Y11_N23
\view|column[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~75_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(31));

-- Location: LCCOMB_X22_Y11_N12
\view|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~14_combout\ = (\view|Add3~9_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|column\(31)) # (\view|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~9_combout\,
	datab => \view|column\(31),
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|LessThan0~9_combout\,
	combout => \view|Add3~14_combout\);

-- Location: LCFF_X22_Y11_N13
\view|column[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(3));

-- Location: LCCOMB_X25_Y12_N8
\view|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~5_combout\ = (\view|column\(3) & (((\view|column\(4))))) # (!\view|column\(3) & ((\view|column\(4) & (\view|Mux4~3_combout\)) # (!\view|column\(4) & ((\view|Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~3_combout\,
	datab => \view|column\(3),
	datac => \view|column\(4),
	datad => \view|Mux4~4_combout\,
	combout => \view|Mux4~5_combout\);

-- Location: LCCOMB_X25_Y12_N2
\view|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~2_combout\ = (\view|column\(0)) # ((\view|column\(1)) # (\view|column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datac => \view|column\(1),
	datad => \view|column\(2),
	combout => \view|Mux4~2_combout\);

-- Location: LCCOMB_X24_Y12_N14
\view|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~6_combout\ = (\view|Mux4~5_combout\ & ((\view|Mux10~2_combout\) # ((!\view|column\(3))))) # (!\view|Mux4~5_combout\ & (((\view|column\(3) & !\view|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux10~2_combout\,
	datab => \view|Mux4~5_combout\,
	datac => \view|column\(3),
	datad => \view|Mux4~2_combout\,
	combout => \view|Mux4~6_combout\);

-- Location: LCCOMB_X24_Y10_N2
\view|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~4_combout\ = (\view|row\(1) & (!\view|Add2~3\)) # (!\view|row\(1) & ((\view|Add2~3\) # (GND)))
-- \view|Add2~5\ = CARRY((!\view|Add2~3\) # (!\view|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(1),
	datad => VCC,
	cin => \view|Add2~3\,
	combout => \view|Add2~4_combout\,
	cout => \view|Add2~5\);

-- Location: LCCOMB_X23_Y9_N22
\view|Add2~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~77_combout\ = (\view|Add2~70_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~70_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|reg_hitbox.size_y\(0),
	combout => \view|Add2~77_combout\);

-- Location: LCCOMB_X22_Y11_N28
\view|Add2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~11_combout\ = (\view|state.DRAWING~regout\ & (!\view|LessThan0~10_combout\)) # (!\view|state.DRAWING~regout\ & ((\view|state.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|LessThan0~10_combout\,
	datac => \view|state.DRAWING~regout\,
	datad => \view|state.IDLE~regout\,
	combout => \view|Add2~11_combout\);

-- Location: LCFF_X23_Y9_N23
\view|row[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~77_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(29));

-- Location: LCCOMB_X23_Y9_N16
\view|Add2~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~82_combout\ = (\view|Add2~60_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~60_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|reg_hitbox.size_y\(0),
	combout => \view|Add2~82_combout\);

-- Location: LCFF_X23_Y9_N17
\view|row[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~82_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(24));

-- Location: LCCOMB_X25_Y10_N12
\view|Add2~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~84_combout\ = (\view|Add2~56_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~56_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~84_combout\);

-- Location: LCFF_X25_Y10_N13
\view|row[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~84_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(22));

-- Location: LCCOMB_X25_Y10_N16
\view|Add2~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~86_combout\ = (\view|Add2~52_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~52_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~86_combout\);

-- Location: LCFF_X25_Y10_N17
\view|row[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~86_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(20));

-- Location: LCCOMB_X25_Y9_N18
\view|Add2~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~89_combout\ = (\view|Add2~46_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~46_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~89_combout\);

-- Location: LCFF_X25_Y9_N19
\view|row[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~89_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(17));

-- Location: LCCOMB_X25_Y10_N28
\view|Add2~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~92_combout\ = (\view|Add2~40_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~40_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~92_combout\);

-- Location: LCFF_X25_Y10_N29
\view|row[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~92_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(14));

-- Location: LCCOMB_X25_Y10_N14
\view|Add2~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~93_combout\ = (\view|Add2~38_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~38_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~93_combout\);

-- Location: LCFF_X25_Y10_N15
\view|row[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~93_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(13));

-- Location: LCCOMB_X25_Y10_N0
\view|Add2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~25_combout\ = (\view|Add2~23_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~23_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~25_combout\);

-- Location: LCFF_X25_Y10_N1
\view|row[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~25_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(7));

-- Location: LCCOMB_X25_Y9_N24
\view|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~10_combout\ = (\view|Add2~8_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~8_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~10_combout\);

-- Location: LCFF_X25_Y9_N25
\view|row[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(3));

-- Location: LCCOMB_X24_Y10_N4
\view|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~6_combout\ = (\view|row\(2) & (\view|Add2~5\ $ (GND))) # (!\view|row\(2) & (!\view|Add2~5\ & VCC))
-- \view|Add2~7\ = CARRY((\view|row\(2) & !\view|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(2),
	datad => VCC,
	cin => \view|Add2~5\,
	combout => \view|Add2~6_combout\,
	cout => \view|Add2~7\);

-- Location: LCCOMB_X24_Y10_N10
\view|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~18_combout\ = (\view|row\(5) & (!\view|Add2~13\)) # (!\view|row\(5) & ((\view|Add2~13\) # (GND)))
-- \view|Add2~19\ = CARRY((!\view|Add2~13\) # (!\view|row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(5),
	datad => VCC,
	cin => \view|Add2~13\,
	combout => \view|Add2~18_combout\,
	cout => \view|Add2~19\);

-- Location: LCCOMB_X24_Y10_N18
\view|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~30_combout\ = (\view|row\(9) & (!\view|Add2~28\)) # (!\view|row\(9) & ((\view|Add2~28\) # (GND)))
-- \view|Add2~31\ = CARRY((!\view|Add2~28\) # (!\view|row\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(9),
	datad => VCC,
	cin => \view|Add2~28\,
	combout => \view|Add2~30_combout\,
	cout => \view|Add2~31\);

-- Location: LCCOMB_X25_Y10_N30
\view|Add2~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~97_combout\ = (\view|Add2~30_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|LessThan1~9_combout\,
	datab => \view|Add2~30_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~97_combout\);

-- Location: LCFF_X25_Y10_N31
\view|row[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~97_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(9));

-- Location: LCCOMB_X24_Y10_N20
\view|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~32_combout\ = (\view|row\(10) & (\view|Add2~31\ $ (GND))) # (!\view|row\(10) & (!\view|Add2~31\ & VCC))
-- \view|Add2~33\ = CARRY((\view|row\(10) & !\view|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(10),
	datad => VCC,
	cin => \view|Add2~31\,
	combout => \view|Add2~32_combout\,
	cout => \view|Add2~33\);

-- Location: LCCOMB_X25_Y10_N20
\view|Add2~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~96_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~32_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|Add2~32_combout\,
	datad => \view|row\(31),
	combout => \view|Add2~96_combout\);

-- Location: LCFF_X25_Y10_N21
\view|row[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~96_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(10));

-- Location: LCCOMB_X24_Y10_N22
\view|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~34_combout\ = (\view|row\(11) & (!\view|Add2~33\)) # (!\view|row\(11) & ((\view|Add2~33\) # (GND)))
-- \view|Add2~35\ = CARRY((!\view|Add2~33\) # (!\view|row\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(11),
	datad => VCC,
	cin => \view|Add2~33\,
	combout => \view|Add2~34_combout\,
	cout => \view|Add2~35\);

-- Location: LCCOMB_X25_Y10_N10
\view|Add2~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~95_combout\ = (\view|Add2~34_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|LessThan1~9_combout\,
	datab => \view|Add2~34_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~95_combout\);

-- Location: LCFF_X25_Y10_N11
\view|row[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~95_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(11));

-- Location: LCCOMB_X24_Y10_N24
\view|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~36_combout\ = (\view|row\(12) & (\view|Add2~35\ $ (GND))) # (!\view|row\(12) & (!\view|Add2~35\ & VCC))
-- \view|Add2~37\ = CARRY((\view|row\(12) & !\view|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(12),
	datad => VCC,
	cin => \view|Add2~35\,
	combout => \view|Add2~36_combout\,
	cout => \view|Add2~37\);

-- Location: LCCOMB_X25_Y10_N24
\view|Add2~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~94_combout\ = (\view|Add2~36_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|LessThan1~9_combout\,
	datab => \view|Add2~36_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~94_combout\);

-- Location: LCFF_X25_Y10_N25
\view|row[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~94_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(12));

-- Location: LCCOMB_X24_Y10_N30
\view|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~42_combout\ = (\view|row\(15) & (!\view|Add2~41\)) # (!\view|row\(15) & ((\view|Add2~41\) # (GND)))
-- \view|Add2~43\ = CARRY((!\view|Add2~41\) # (!\view|row\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(15),
	datad => VCC,
	cin => \view|Add2~41\,
	combout => \view|Add2~42_combout\,
	cout => \view|Add2~43\);

-- Location: LCCOMB_X25_Y9_N6
\view|Add2~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~91_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~42_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|Add2~42_combout\,
	datad => \view|row\(31),
	combout => \view|Add2~91_combout\);

-- Location: LCFF_X25_Y9_N7
\view|row[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~91_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(15));

-- Location: LCCOMB_X24_Y9_N4
\view|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~48_combout\ = (\view|row\(18) & (\view|Add2~47\ $ (GND))) # (!\view|row\(18) & (!\view|Add2~47\ & VCC))
-- \view|Add2~49\ = CARRY((\view|row\(18) & !\view|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(18),
	datad => VCC,
	cin => \view|Add2~47\,
	combout => \view|Add2~48_combout\,
	cout => \view|Add2~49\);

-- Location: LCCOMB_X25_Y9_N8
\view|Add2~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~88_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~48_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add2~48_combout\,
	datac => \view|LessThan1~9_combout\,
	datad => \view|row\(31),
	combout => \view|Add2~88_combout\);

-- Location: LCFF_X25_Y9_N9
\view|row[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~88_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(18));

-- Location: LCCOMB_X24_Y9_N6
\view|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~50_combout\ = (\view|row\(19) & (!\view|Add2~49\)) # (!\view|row\(19) & ((\view|Add2~49\) # (GND)))
-- \view|Add2~51\ = CARRY((!\view|Add2~49\) # (!\view|row\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(19),
	datad => VCC,
	cin => \view|Add2~49\,
	combout => \view|Add2~50_combout\,
	cout => \view|Add2~51\);

-- Location: LCCOMB_X24_Y9_N14
\view|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~58_combout\ = (\view|row\(23) & (!\view|Add2~57\)) # (!\view|row\(23) & ((\view|Add2~57\) # (GND)))
-- \view|Add2~59\ = CARRY((!\view|Add2~57\) # (!\view|row\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(23),
	datad => VCC,
	cin => \view|Add2~57\,
	combout => \view|Add2~58_combout\,
	cout => \view|Add2~59\);

-- Location: LCCOMB_X23_Y9_N26
\view|Add2~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~83_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~58_combout\ & ((\view|row\(31)) # (\view|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add2~58_combout\,
	datac => \view|row\(31),
	datad => \view|LessThan1~9_combout\,
	combout => \view|Add2~83_combout\);

-- Location: LCFF_X23_Y9_N27
\view|row[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~83_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(23));

-- Location: LCCOMB_X24_Y9_N22
\view|Add2~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~66_combout\ = (\view|row\(27) & (!\view|Add2~65\)) # (!\view|row\(27) & ((\view|Add2~65\) # (GND)))
-- \view|Add2~67\ = CARRY((!\view|Add2~65\) # (!\view|row\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(27),
	datad => VCC,
	cin => \view|Add2~65\,
	combout => \view|Add2~66_combout\,
	cout => \view|Add2~67\);

-- Location: LCCOMB_X23_Y9_N18
\view|Add2~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~79_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~66_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|Add2~66_combout\,
	combout => \view|Add2~79_combout\);

-- Location: LCFF_X23_Y9_N19
\view|row[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~79_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(27));

-- Location: LCCOMB_X24_Y9_N24
\view|Add2~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~68_combout\ = (\view|row\(28) & (\view|Add2~67\ $ (GND))) # (!\view|row\(28) & (!\view|Add2~67\ & VCC))
-- \view|Add2~69\ = CARRY((\view|row\(28) & !\view|Add2~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(28),
	datad => VCC,
	cin => \view|Add2~67\,
	combout => \view|Add2~68_combout\,
	cout => \view|Add2~69\);

-- Location: LCCOMB_X24_Y9_N28
\view|Add2~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~72_combout\ = (\view|row\(30) & (\view|Add2~71\ $ (GND))) # (!\view|row\(30) & (!\view|Add2~71\ & VCC))
-- \view|Add2~73\ = CARRY((\view|row\(30) & !\view|Add2~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(30),
	datad => VCC,
	cin => \view|Add2~71\,
	combout => \view|Add2~72_combout\,
	cout => \view|Add2~73\);

-- Location: LCCOMB_X23_Y9_N28
\view|Add2~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~98_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~72_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|Add2~72_combout\,
	combout => \view|Add2~98_combout\);

-- Location: LCFF_X23_Y9_N29
\view|row[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~98_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(30));

-- Location: LCCOMB_X24_Y9_N30
\view|Add2~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~74_combout\ = \view|row\(31) $ (\view|Add2~73\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(31),
	cin => \view|Add2~73\,
	combout => \view|Add2~74_combout\);

-- Location: LCCOMB_X25_Y9_N28
\view|LessThan1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~10_combout\ = (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|LessThan1~10_combout\);

-- Location: LCCOMB_X25_Y9_N0
\view|Add2~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~76_combout\ = (\view|state.DRAWING~regout\ & (\view|Add2~74_combout\ & \view|LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.DRAWING~regout\,
	datac => \view|Add2~74_combout\,
	datad => \view|LessThan1~10_combout\,
	combout => \view|Add2~76_combout\);

-- Location: LCFF_X25_Y9_N1
\view|row[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~76_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(31));

-- Location: LCCOMB_X23_Y9_N0
\view|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~20_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~18_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|Add2~18_combout\,
	combout => \view|Add2~20_combout\);

-- Location: LCFF_X23_Y9_N1
\view|row[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~20_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(5));

-- Location: LCCOMB_X25_Y9_N16
\view|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~16_combout\ = (\view|Add2~2_combout\ & (\view|state.DRAWING~regout\ & \view|LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~2_combout\,
	datab => \view|state.DRAWING~regout\,
	datad => \view|LessThan1~10_combout\,
	combout => \view|Add2~16_combout\);

-- Location: LCFF_X25_Y9_N17
\view|row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~16_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(0));

-- Location: LCCOMB_X25_Y9_N10
\view|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~14_combout\ = (\view|Add2~12_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~12_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~14_combout\);

-- Location: LCFF_X25_Y9_N11
\view|row[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(4));

-- Location: LCCOMB_X24_Y11_N22
\view|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~2_combout\ = (((!\view|row\(4)) # (!\view|row\(1))) # (!\view|row\(0))) # (!\view|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(2),
	datab => \view|row\(0),
	datac => \view|row\(1),
	datad => \view|row\(4),
	combout => \view|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y9_N8
\view|Add2~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~78_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~68_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|row\(31),
	datad => \view|Add2~68_combout\,
	combout => \view|Add2~78_combout\);

-- Location: LCFF_X23_Y9_N9
\view|row[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~78_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(28));

-- Location: LCCOMB_X23_Y9_N4
\view|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~0_combout\ = (!\view|row\(27) & (!\view|row\(29) & (!\view|row\(28) & !\view|row\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(27),
	datab => \view|row\(29),
	datac => \view|row\(28),
	datad => \view|row\(30),
	combout => \view|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y9_N24
\view|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~3_combout\ = (\view|LessThan1~1_combout\ & (\view|LessThan1~0_combout\ & ((\view|LessThan1~2_combout\) # (!\view|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|LessThan1~1_combout\,
	datab => \view|LessThan1~2_combout\,
	datac => \view|LessThan1~0_combout\,
	datad => \view|row\(3),
	combout => \view|LessThan1~3_combout\);

-- Location: LCCOMB_X25_Y10_N26
\view|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~6_combout\ = (!\view|row\(11) & (!\view|row\(13) & (!\view|row\(12) & !\view|row\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(11),
	datab => \view|row\(13),
	datac => \view|row\(12),
	datad => \view|row\(14),
	combout => \view|LessThan1~6_combout\);

-- Location: LCCOMB_X25_Y10_N18
\view|Add2~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~87_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~50_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|Add2~50_combout\,
	datad => \view|row\(31),
	combout => \view|Add2~87_combout\);

-- Location: LCFF_X25_Y10_N19
\view|row[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~87_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(19));

-- Location: LCCOMB_X25_Y10_N8
\view|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~4_combout\ = (!\view|row\(21) & (!\view|row\(19) & (!\view|row\(20) & !\view|row\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(21),
	datab => \view|row\(19),
	datac => \view|row\(20),
	datad => \view|row\(22),
	combout => \view|LessThan1~4_combout\);

-- Location: LCCOMB_X25_Y10_N2
\view|Add2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~29_combout\ = (\view|Add2~27_combout\ & (\view|reg_hitbox.size_y\(0) & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~27_combout\,
	datab => \view|LessThan1~9_combout\,
	datac => \view|reg_hitbox.size_y\(0),
	datad => \view|row\(31),
	combout => \view|Add2~29_combout\);

-- Location: LCFF_X25_Y10_N3
\view|row[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~29_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(8));

-- Location: LCCOMB_X25_Y10_N4
\view|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~7_combout\ = (!\view|row\(7) & (!\view|row\(9) & (!\view|row\(10) & !\view|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(7),
	datab => \view|row\(9),
	datac => \view|row\(10),
	datad => \view|row\(8),
	combout => \view|LessThan1~7_combout\);

-- Location: LCCOMB_X25_Y10_N22
\view|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~8_combout\ = (\view|LessThan1~5_combout\ & (\view|LessThan1~6_combout\ & (\view|LessThan1~4_combout\ & \view|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|LessThan1~5_combout\,
	datab => \view|LessThan1~6_combout\,
	datac => \view|LessThan1~4_combout\,
	datad => \view|LessThan1~7_combout\,
	combout => \view|LessThan1~8_combout\);

-- Location: LCCOMB_X23_Y9_N2
\view|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|LessThan1~9_combout\ = (!\view|row\(6) & (!\view|row\(5) & (\view|LessThan1~3_combout\ & \view|LessThan1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(6),
	datab => \view|row\(5),
	datac => \view|LessThan1~3_combout\,
	datad => \view|LessThan1~8_combout\,
	combout => \view|LessThan1~9_combout\);

-- Location: LCCOMB_X25_Y9_N12
\view|Add2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~15_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~4_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|Add2~4_combout\,
	datac => \view|LessThan1~9_combout\,
	datad => \view|row\(31),
	combout => \view|Add2~15_combout\);

-- Location: LCFF_X25_Y9_N13
\view|row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(1));

-- Location: LCCOMB_X24_Y12_N16
\view|Mux32~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~6_combout\ = (\view|row\(1) & \view|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(1),
	datac => \view|row\(0),
	combout => \view|Mux32~6_combout\);

-- Location: LCCOMB_X30_Y10_N0
\datapath|alien_grid[0][0].current_index[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[0][0].current_index[0]~0_combout\ = !\datapath|alien_grid[0][0].current_index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|alien_grid[0][0].current_index\(0),
	combout => \datapath|alien_grid[0][0].current_index[0]~0_combout\);

-- Location: LCCOMB_X31_Y4_N6
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \game_tick_gen:counter[0]~regout\ $ (VCC)
-- \Add1~1\ = CARRY(\game_tick_gen:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[0]~regout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X31_Y4_N8
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\game_tick_gen:counter[1]~regout\ & (!\Add1~1\)) # (!\game_tick_gen:counter[1]~regout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\game_tick_gen:counter[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[1]~regout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCFF_X31_Y4_N9
\game_tick_gen:counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[1]~regout\);

-- Location: LCCOMB_X31_Y4_N14
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\game_tick_gen:counter[4]~regout\ & (\Add1~7\ $ (GND))) # (!\game_tick_gen:counter[4]~regout\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\game_tick_gen:counter[4]~regout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[4]~regout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCFF_X31_Y4_N15
\game_tick_gen:counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[4]~regout\);

-- Location: LCCOMB_X31_Y4_N18
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\game_tick_gen:counter[6]~regout\ & (\Add1~11\ $ (GND))) # (!\game_tick_gen:counter[6]~regout\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\game_tick_gen:counter[6]~regout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[6]~regout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCFF_X31_Y4_N19
\game_tick_gen:counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[6]~regout\);

-- Location: LCCOMB_X31_Y4_N22
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\game_tick_gen:counter[8]~regout\ & (\Add1~15\ $ (GND))) # (!\game_tick_gen:counter[8]~regout\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\game_tick_gen:counter[8]~regout\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[8]~regout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCFF_X31_Y4_N23
\game_tick_gen:counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~16_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[8]~regout\);

-- Location: LCCOMB_X31_Y4_N24
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\game_tick_gen:counter[9]~regout\ & (!\Add1~17\)) # (!\game_tick_gen:counter[9]~regout\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\game_tick_gen:counter[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[9]~regout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X31_Y4_N26
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\game_tick_gen:counter[10]~regout\ & (\Add1~19\ $ (GND))) # (!\game_tick_gen:counter[10]~regout\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\game_tick_gen:counter[10]~regout\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[10]~regout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCFF_X31_Y4_N27
\game_tick_gen:counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~20_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[10]~regout\);

-- Location: LCCOMB_X31_Y4_N28
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\game_tick_gen:counter[11]~regout\ & (!\Add1~21\)) # (!\game_tick_gen:counter[11]~regout\ & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!\game_tick_gen:counter[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[11]~regout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCFF_X31_Y4_N29
\game_tick_gen:counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~22_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[11]~regout\);

-- Location: LCCOMB_X31_Y4_N30
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\game_tick_gen:counter[12]~regout\ & (\Add1~23\ $ (GND))) # (!\game_tick_gen:counter[12]~regout\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\game_tick_gen:counter[12]~regout\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[12]~regout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X30_Y3_N22
\counter~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~22_combout\ = (!\Equal1~8_combout\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~8_combout\,
	datac => \Add1~24_combout\,
	combout => \counter~22_combout\);

-- Location: LCFF_X30_Y3_N23
\game_tick_gen:counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~22_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[12]~regout\);

-- Location: LCCOMB_X31_Y3_N0
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\game_tick_gen:counter[13]~regout\ & (!\Add1~25\)) # (!\game_tick_gen:counter[13]~regout\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\game_tick_gen:counter[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[13]~regout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X30_Y3_N28
\counter~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~21_combout\ = (\Add1~26_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~26_combout\,
	datad => \Equal1~8_combout\,
	combout => \counter~21_combout\);

-- Location: LCFF_X30_Y3_N29
\game_tick_gen:counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[13]~regout\);

-- Location: LCCOMB_X31_Y3_N2
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\game_tick_gen:counter[14]~regout\ & (\Add1~27\ $ (GND))) # (!\game_tick_gen:counter[14]~regout\ & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((\game_tick_gen:counter[14]~regout\ & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[14]~regout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X30_Y3_N18
\counter~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~20_combout\ = (!\Equal1~8_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~8_combout\,
	datad => \Add1~28_combout\,
	combout => \counter~20_combout\);

-- Location: LCFF_X30_Y3_N19
\game_tick_gen:counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~20_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[14]~regout\);

-- Location: LCCOMB_X31_Y3_N4
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\game_tick_gen:counter[15]~regout\ & (!\Add1~29\)) # (!\game_tick_gen:counter[15]~regout\ & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!\game_tick_gen:counter[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[15]~regout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X31_Y3_N28
\counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~19_combout\ = (!\Equal1~8_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datac => \Add1~30_combout\,
	combout => \counter~19_combout\);

-- Location: LCFF_X31_Y3_N29
\game_tick_gen:counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~19_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[15]~regout\);

-- Location: LCCOMB_X31_Y3_N8
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\game_tick_gen:counter[17]~regout\ & (!\Add1~33\)) # (!\game_tick_gen:counter[17]~regout\ & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!\game_tick_gen:counter[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[17]~regout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X31_Y3_N26
\counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (!\Equal1~8_combout\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datac => \Add1~34_combout\,
	combout => \counter~18_combout\);

-- Location: LCFF_X31_Y3_N27
\game_tick_gen:counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[17]~regout\);

-- Location: LCCOMB_X31_Y3_N10
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\game_tick_gen:counter[18]~regout\ & (\Add1~35\ $ (GND))) # (!\game_tick_gen:counter[18]~regout\ & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((\game_tick_gen:counter[18]~regout\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[18]~regout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X31_Y3_N12
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\game_tick_gen:counter[19]~regout\ & (!\Add1~37\)) # (!\game_tick_gen:counter[19]~regout\ & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!\game_tick_gen:counter[19]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[19]~regout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X31_Y3_N16
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\game_tick_gen:counter[21]~regout\ & (!\Add1~41\)) # (!\game_tick_gen:counter[21]~regout\ & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!\game_tick_gen:counter[21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_tick_gen:counter[21]~regout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X30_Y3_N26
\counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~15_combout\ = (\Add1~42_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~42_combout\,
	datad => \Equal1~8_combout\,
	combout => \counter~15_combout\);

-- Location: LCFF_X30_Y3_N27
\game_tick_gen:counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[21]~regout\);

-- Location: LCCOMB_X31_Y3_N18
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\game_tick_gen:counter[22]~regout\ & (\Add1~43\ $ (GND))) # (!\game_tick_gen:counter[22]~regout\ & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((\game_tick_gen:counter[22]~regout\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[22]~regout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X30_Y3_N14
\counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~14_combout\ = (!\Equal1~8_combout\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~8_combout\,
	datad => \Add1~44_combout\,
	combout => \counter~14_combout\);

-- Location: LCFF_X30_Y3_N15
\game_tick_gen:counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[22]~regout\);

-- Location: LCCOMB_X31_Y3_N20
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\game_tick_gen:counter[23]~regout\ & (!\Add1~45\)) # (!\game_tick_gen:counter[23]~regout\ & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!\game_tick_gen:counter[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[23]~regout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X30_Y3_N20
\counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~13_combout\ = (!\Equal1~8_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~8_combout\,
	datac => \Add1~46_combout\,
	combout => \counter~13_combout\);

-- Location: LCFF_X30_Y3_N21
\game_tick_gen:counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~13_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[23]~regout\);

-- Location: LCFF_X31_Y3_N23
\game_tick_gen:counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~48_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[24]~regout\);

-- Location: LCCOMB_X30_Y3_N8
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\game_tick_gen:counter[25]~regout\ & (\game_tick_gen:counter[22]~regout\ & (\game_tick_gen:counter[23]~regout\ & !\game_tick_gen:counter[24]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[25]~regout\,
	datab => \game_tick_gen:counter[22]~regout\,
	datac => \game_tick_gen:counter[23]~regout\,
	datad => \game_tick_gen:counter[24]~regout\,
	combout => \Equal1~0_combout\);

-- Location: LCFF_X31_Y3_N11
\game_tick_gen:counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~36_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[18]~regout\);

-- Location: LCCOMB_X30_Y3_N30
\counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~17_combout\ = (\Add1~38_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~38_combout\,
	datad => \Equal1~8_combout\,
	combout => \counter~17_combout\);

-- Location: LCFF_X30_Y3_N31
\game_tick_gen:counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[19]~regout\);

-- Location: LCCOMB_X30_Y3_N16
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\game_tick_gen:counter[20]~regout\ & (\game_tick_gen:counter[21]~regout\ & (!\game_tick_gen:counter[18]~regout\ & \game_tick_gen:counter[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[20]~regout\,
	datab => \game_tick_gen:counter[21]~regout\,
	datac => \game_tick_gen:counter[18]~regout\,
	datad => \game_tick_gen:counter[19]~regout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X31_Y3_N30
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\game_tick_gen:counter[16]~regout\ & (\game_tick_gen:counter[17]~regout\ & (\game_tick_gen:counter[14]~regout\ & \game_tick_gen:counter[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[16]~regout\,
	datab => \game_tick_gen:counter[17]~regout\,
	datac => \game_tick_gen:counter[14]~regout\,
	datad => \game_tick_gen:counter[15]~regout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X30_Y3_N2
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCFF_X31_Y4_N7
\game_tick_gen:counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[0]~regout\);

-- Location: LCCOMB_X31_Y4_N4
\Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\game_tick_gen:counter[1]~regout\ & \game_tick_gen:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_tick_gen:counter[1]~regout\,
	datad => \game_tick_gen:counter[0]~regout\,
	combout => \Equal1~7_combout\);

-- Location: LCFF_X31_Y4_N25
\game_tick_gen:counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add1~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick_gen:counter[9]~regout\);

-- Location: LCCOMB_X31_Y4_N0
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\game_tick_gen:counter[7]~regout\ & (!\game_tick_gen:counter[8]~regout\ & (!\game_tick_gen:counter[9]~regout\ & \game_tick_gen:counter[6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_tick_gen:counter[7]~regout\,
	datab => \game_tick_gen:counter[8]~regout\,
	datac => \game_tick_gen:counter[9]~regout\,
	datad => \game_tick_gen:counter[6]~regout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X30_Y3_N0
\Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~6_combout\ & (\Equal1~4_combout\ & (\Equal1~7_combout\ & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCFF_X30_Y3_N1
game_tick : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Equal1~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_tick~regout\);

-- Location: LCFF_X30_Y10_N1
\datapath|alien_grid[0][0].current_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[0][0].current_index[0]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].current_index\(0));

-- Location: LCCOMB_X30_Y10_N8
\datapath|SPRITE.img_pixels[7][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|SPRITE.img_pixels[7][0]~feeder_combout\ = \datapath|alien_grid[0][0].current_index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alien_grid[0][0].current_index\(0),
	combout => \datapath|SPRITE.img_pixels[7][0]~feeder_combout\);

-- Location: LCCOMB_X26_Y11_N22
\datapath|reg_req~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reg_req~0_combout\ = !\view_control_unit|DRAW_SPRITE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|DRAW_SPRITE~regout\,
	combout => \datapath|reg_req~0_combout\);

-- Location: LCFF_X26_Y11_N23
\datapath|reg_req\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|reg_req~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reg_req~regout\);

-- Location: LCCOMB_X26_Y11_N16
\datapath|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|process_0~0_combout\ = (\view_control_unit|DRAW_SPRITE~regout\ & \datapath|reg_req~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view_control_unit|DRAW_SPRITE~regout\,
	datad => \datapath|reg_req~regout\,
	combout => \datapath|process_0~0_combout\);

-- Location: LCFF_X30_Y10_N9
\datapath|SPRITE.img_pixels[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|SPRITE.img_pixels[7][0]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|SPRITE.img_pixels[7][0]~regout\);

-- Location: LCFF_X25_Y12_N17
\view|reg_sprite.img_pixels[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|SPRITE.img_pixels[7][0]~regout\,
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_sprite.img_pixels[10][0]~regout\);

-- Location: LCCOMB_X22_Y11_N4
\view|Add3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~15_combout\ = (\view|LessThan0~10_combout\ & (\view|state.DRAWING~regout\ & \view|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|LessThan0~10_combout\,
	datac => \view|state.DRAWING~regout\,
	datad => \view|Add3~0_combout\,
	combout => \view|Add3~15_combout\);

-- Location: LCFF_X22_Y11_N5
\view|column[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add3~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|Add3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|column\(0));

-- Location: LCCOMB_X25_Y11_N26
\view|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux7~0_combout\ = (\view|column\(3) & ((\view|column\(1)) # ((\view|column\(0))))) # (!\view|column\(3) & (\view|reg_sprite.img_pixels[10][0]~regout\ & ((!\view|column\(0)) # (!\view|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datab => \view|column\(3),
	datac => \view|reg_sprite.img_pixels[10][0]~regout\,
	datad => \view|column\(0),
	combout => \view|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y11_N28
\view|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux7~1_combout\ = (\view|column\(4) & (\view|column\(3))) # (!\view|column\(4) & (((!\view|column\(2) & \view|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(4),
	datab => \view|column\(3),
	datac => \view|column\(2),
	datad => \view|Mux7~0_combout\,
	combout => \view|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y11_N16
\view|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~0_combout\ = (\view|column\(2) & ((!\view|column\(0)) # (!\view|column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datac => \view|column\(2),
	datad => \view|column\(0),
	combout => \view|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y11_N0
\view|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux7~2_combout\ = (\view|Mux7~1_combout\ & ((\view|Mux4~1_combout\) # ((!\view|column\(4))))) # (!\view|Mux7~1_combout\ & (((\view|Mux4~0_combout\ & \view|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~1_combout\,
	datab => \view|Mux7~1_combout\,
	datac => \view|Mux4~0_combout\,
	datad => \view|column\(4),
	combout => \view|Mux7~2_combout\);

-- Location: LCCOMB_X24_Y12_N2
\view|Mux32~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~7_combout\ = (\view|Mux32~5_combout\ & ((\view|Mux32~6_combout\ & ((\view|Mux7~2_combout\))) # (!\view|Mux32~6_combout\ & (\view|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~5_combout\,
	datab => \view|Mux4~6_combout\,
	datac => \view|Mux32~6_combout\,
	datad => \view|Mux7~2_combout\,
	combout => \view|Mux32~7_combout\);

-- Location: LCCOMB_X25_Y9_N30
\view|Add2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~17_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|Add2~6_combout\ & ((\view|LessThan1~9_combout\) # (\view|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|LessThan1~9_combout\,
	datac => \view|Add2~6_combout\,
	datad => \view|row\(31),
	combout => \view|Add2~17_combout\);

-- Location: LCFF_X25_Y9_N31
\view|row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.DRAWING~regout\,
	ena => \view|Add2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|row\(2));

-- Location: LCCOMB_X24_Y11_N0
\view|Mux32~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~8_combout\ = (!\view|row\(4) & (\view|row\(3) & \view|row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(4),
	datab => \view|row\(3),
	datac => \view|row\(2),
	combout => \view|Mux32~8_combout\);

-- Location: LCCOMB_X24_Y11_N20
\view|Mux32~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~11_combout\ = (\view|Mux32~10_combout\ & (\view|row\(0) & (\view|row\(1) & \view|Mux32~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~10_combout\,
	datab => \view|row\(0),
	datac => \view|row\(1),
	datad => \view|Mux32~8_combout\,
	combout => \view|Mux32~11_combout\);

-- Location: LCCOMB_X24_Y12_N22
\view|Mux32~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~13_combout\ = (\view|column\(4) & (\view|column\(1) & (\view|column\(0) & \view|column\(2)))) # (!\view|column\(4) & ((\view|column\(1)) # ((\view|column\(0)) # (\view|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(4),
	datab => \view|column\(1),
	datac => \view|column\(0),
	datad => \view|column\(2),
	combout => \view|Mux32~13_combout\);

-- Location: LCCOMB_X25_Y12_N16
\view|Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~11_combout\ = (\view|column\(2) & (((\view|column\(1))))) # (!\view|column\(2) & (!\view|reg_sprite.img_pixels[10][0]~regout\ & ((!\view|column\(1)) # (!\view|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datab => \view|column\(1),
	datac => \view|reg_sprite.img_pixels[10][0]~regout\,
	datad => \view|column\(2),
	combout => \view|Mux4~11_combout\);

-- Location: LCCOMB_X25_Y12_N4
\view|Mux32~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~14_combout\ = (\view|column\(4) & (\view|Mux4~12_combout\)) # (!\view|column\(4) & ((\view|Mux4~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~12_combout\,
	datac => \view|Mux4~11_combout\,
	datad => \view|column\(4),
	combout => \view|Mux32~14_combout\);

-- Location: LCCOMB_X24_Y12_N8
\view|Mux32~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~15_combout\ = (\view|column\(4) & ((\view|column\(3) & ((!\view|Mux32~14_combout\))) # (!\view|column\(3) & (\view|Mux32~13_combout\)))) # (!\view|column\(4) & ((\view|column\(3) & (!\view|Mux32~13_combout\)) # (!\view|column\(3) & 
-- ((\view|Mux32~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(4),
	datab => \view|Mux32~13_combout\,
	datac => \view|column\(3),
	datad => \view|Mux32~14_combout\,
	combout => \view|Mux32~15_combout\);

-- Location: LCCOMB_X24_Y12_N4
\view|Mux32~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~12_combout\ = (\view|row\(4) & (\view|row\(1) & (!\view|row\(3) & \view|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(4),
	datab => \view|row\(1),
	datac => \view|row\(3),
	datad => \view|row\(2),
	combout => \view|Mux32~12_combout\);

-- Location: LCCOMB_X24_Y12_N26
\view|Mux32~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~16_combout\ = (\view|Mux32~15_combout\ & \view|Mux32~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Mux32~15_combout\,
	datac => \view|Mux32~12_combout\,
	combout => \view|Mux32~16_combout\);

-- Location: LCCOMB_X24_Y12_N28
\view|Mux32~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~17_combout\ = (\view|Mux32~4_combout\) # ((\view|Mux32~7_combout\) # ((\view|Mux32~11_combout\) # (\view|Mux32~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~4_combout\,
	datab => \view|Mux32~7_combout\,
	datac => \view|Mux32~11_combout\,
	datad => \view|Mux32~16_combout\,
	combout => \view|Mux32~17_combout\);

-- Location: LCCOMB_X25_Y12_N18
\view|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux19~1_combout\ = \view|column\(1) $ (!\view|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|column\(1),
	datad => \view|column\(2),
	combout => \view|Mux19~1_combout\);

-- Location: LCCOMB_X25_Y12_N14
\view|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux10~3_combout\ = \view|column\(3) $ (\view|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|column\(3),
	datac => \view|column\(4),
	combout => \view|Mux10~3_combout\);

-- Location: LCCOMB_X25_Y12_N28
\view|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux19~2_combout\ = (\view|Mux10~3_combout\) # ((\view|Mux19~0_combout\ & ((\view|Mux19~1_combout\) # (\view|reg_sprite.img_pixels[10][0]~regout\))) # (!\view|Mux19~0_combout\ & ((!\view|reg_sprite.img_pixels[10][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux19~0_combout\,
	datab => \view|Mux19~1_combout\,
	datac => \view|Mux10~3_combout\,
	datad => \view|reg_sprite.img_pixels[10][0]~regout\,
	combout => \view|Mux19~2_combout\);

-- Location: LCCOMB_X25_Y9_N22
\view|Mux32~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~26_combout\ = (!\view|row\(3) & (((\view|Mux19~2_combout\) # (!\view|row\(0))) # (!\view|row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(1),
	datab => \view|row\(0),
	datac => \view|row\(3),
	datad => \view|Mux19~2_combout\,
	combout => \view|Mux32~26_combout\);

-- Location: LCCOMB_X25_Y9_N26
\view|Mux32~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~18_combout\ = (!\view|row\(0) & !\view|row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(0),
	datad => \view|row\(1),
	combout => \view|Mux32~18_combout\);

-- Location: LCCOMB_X25_Y12_N30
\view|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux24~0_combout\ = (\view|column\(3) & (((\view|column\(4))))) # (!\view|column\(3) & ((\view|column\(4) & (\view|Mux4~3_combout\)) # (!\view|column\(4) & ((\view|Mux4~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~3_combout\,
	datab => \view|column\(3),
	datac => \view|Mux4~11_combout\,
	datad => \view|column\(4),
	combout => \view|Mux24~0_combout\);

-- Location: LCCOMB_X25_Y12_N0
\view|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux24~1_combout\ = (\view|Mux24~0_combout\ & (((!\view|column\(3))) # (!\view|Mux4~12_combout\))) # (!\view|Mux24~0_combout\ & (((\view|column\(3) & !\view|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~12_combout\,
	datab => \view|Mux24~0_combout\,
	datac => \view|column\(3),
	datad => \view|Mux4~2_combout\,
	combout => \view|Mux24~1_combout\);

-- Location: LCCOMB_X25_Y12_N26
\view|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux25~0_combout\ = (\view|column\(1) & (!\view|column\(2) & ((\view|column\(0)) # (\view|column\(3))))) # (!\view|column\(1) & (\view|column\(2) & ((!\view|column\(3)) # (!\view|column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(0),
	datab => \view|column\(3),
	datac => \view|column\(1),
	datad => \view|column\(2),
	combout => \view|Mux25~0_combout\);

-- Location: LCCOMB_X25_Y12_N20
\view|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux25~2_combout\ = (\view|Mux25~0_combout\ & ((\view|Mux10~3_combout\ $ (\view|reg_sprite.img_pixels[10][0]~regout\)))) # (!\view|Mux25~0_combout\ & (\view|Mux25~1_combout\ & (\view|Mux10~3_combout\ & !\view|reg_sprite.img_pixels[10][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux25~1_combout\,
	datab => \view|Mux25~0_combout\,
	datac => \view|Mux10~3_combout\,
	datad => \view|reg_sprite.img_pixels[10][0]~regout\,
	combout => \view|Mux25~2_combout\);

-- Location: LCCOMB_X25_Y9_N20
\view|Mux32~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~19_combout\ = (\view|row\(3) & ((\view|Mux32~18_combout\ & (\view|Mux24~1_combout\)) # (!\view|Mux32~18_combout\ & ((\view|Mux25~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(3),
	datab => \view|Mux32~18_combout\,
	datac => \view|Mux24~1_combout\,
	datad => \view|Mux25~2_combout\,
	combout => \view|Mux32~19_combout\);

-- Location: LCCOMB_X25_Y9_N14
\view|Mux32~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~20_combout\ = (\view|row\(4) & (!\view|row\(2) & ((\view|Mux32~26_combout\) # (\view|Mux32~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(4),
	datab => \view|Mux32~26_combout\,
	datac => \view|Mux32~19_combout\,
	datad => \view|row\(2),
	combout => \view|Mux32~20_combout\);

-- Location: LCCOMB_X24_Y11_N26
\view|Mux32~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~24_combout\ = (\view|row\(4) & (!\view|row\(3) & !\view|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(4),
	datab => \view|row\(3),
	datac => \view|row\(1),
	combout => \view|Mux32~24_combout\);

-- Location: LCCOMB_X25_Y11_N22
\view|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~9_combout\ = (\view|column\(2)) # ((\view|reg_sprite.img_pixels[10][0]~regout\) # ((\view|column\(1) & \view|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datab => \view|column\(2),
	datac => \view|reg_sprite.img_pixels[10][0]~regout\,
	datad => \view|column\(0),
	combout => \view|Mux4~9_combout\);

-- Location: LCCOMB_X25_Y11_N8
\view|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux13~0_combout\ = (\view|column\(3) & ((\view|Mux4~10_combout\) # ((\view|column\(4))))) # (!\view|column\(3) & (((!\view|column\(4) & \view|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~10_combout\,
	datab => \view|column\(3),
	datac => \view|column\(4),
	datad => \view|Mux4~9_combout\,
	combout => \view|Mux13~0_combout\);

-- Location: LCCOMB_X25_Y11_N10
\view|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux4~7_combout\ = ((\view|column\(1) & \view|column\(0))) # (!\view|column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datac => \view|column\(2),
	datad => \view|column\(0),
	combout => \view|Mux4~7_combout\);

-- Location: LCCOMB_X25_Y11_N18
\view|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux13~1_combout\ = (\view|Mux13~0_combout\ & ((\view|Mux4~8_combout\) # ((!\view|column\(4))))) # (!\view|Mux13~0_combout\ & (((\view|column\(4) & \view|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~8_combout\,
	datab => \view|Mux13~0_combout\,
	datac => \view|column\(4),
	datad => \view|Mux4~7_combout\,
	combout => \view|Mux13~1_combout\);

-- Location: LCCOMB_X24_Y11_N24
\view|Mux32~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~23_combout\ = (\view|Mux32~8_combout\ & (\view|Mux13~1_combout\ & (\view|row\(0) $ (\view|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~8_combout\,
	datab => \view|row\(0),
	datac => \view|row\(1),
	datad => \view|Mux13~1_combout\,
	combout => \view|Mux32~23_combout\);

-- Location: LCCOMB_X24_Y12_N0
\view|Mux32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~2_combout\ = (\view|row\(3) & !\view|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(3),
	datac => \view|row\(4),
	combout => \view|Mux32~2_combout\);

-- Location: LCCOMB_X25_Y11_N12
\view|Mux32~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~27_combout\ = (\view|column\(3) & ((\view|column\(1)) # ((\view|column\(0))))) # (!\view|column\(3) & (\view|reg_sprite.img_pixels[10][0]~regout\ & ((!\view|column\(0)) # (!\view|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datab => \view|column\(3),
	datac => \view|reg_sprite.img_pixels[10][0]~regout\,
	datad => \view|column\(0),
	combout => \view|Mux32~27_combout\);

-- Location: LCCOMB_X25_Y11_N14
\view|Mux32~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~28_combout\ = (\view|column\(4) & (\view|column\(3))) # (!\view|column\(4) & (((!\view|column\(2) & \view|Mux32~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(4),
	datab => \view|column\(3),
	datac => \view|column\(2),
	datad => \view|Mux32~27_combout\,
	combout => \view|Mux32~28_combout\);

-- Location: LCCOMB_X25_Y11_N30
\view|Mux32~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~21_combout\ = (\view|Mux32~28_combout\ & ((\view|Mux4~1_combout\) # ((!\view|column\(4))))) # (!\view|Mux32~28_combout\ & (((\view|Mux4~0_combout\ & \view|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux4~1_combout\,
	datab => \view|Mux32~28_combout\,
	datac => \view|Mux4~0_combout\,
	datad => \view|column\(4),
	combout => \view|Mux32~21_combout\);

-- Location: LCCOMB_X24_Y11_N30
\view|Mux32~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~22_combout\ = (!\view|row\(2) & (\view|Mux32~2_combout\ & (!\view|row\(1) & \view|Mux32~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(2),
	datab => \view|Mux32~2_combout\,
	datac => \view|row\(1),
	datad => \view|Mux32~21_combout\,
	combout => \view|Mux32~22_combout\);

-- Location: LCCOMB_X24_Y11_N28
\view|Mux32~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Mux32~25_combout\ = (\view|Mux32~23_combout\) # ((\view|Mux32~22_combout\) # ((\view|Mux19~2_combout\ & \view|Mux32~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux19~2_combout\,
	datab => \view|Mux32~24_combout\,
	datac => \view|Mux32~23_combout\,
	datad => \view|Mux32~22_combout\,
	combout => \view|Mux32~25_combout\);

-- Location: LCCOMB_X21_Y11_N22
\view|Selector94~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector94~0_combout\ = (\view|state.DRAWING~regout\ & ((\view|Mux32~17_combout\) # ((\view|Mux32~20_combout\) # (\view|Mux32~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.DRAWING~regout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Mux32~25_combout\,
	combout => \view|Selector94~0_combout\);

-- Location: LCFF_X21_Y11_N23
\view|FB_COLOR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector94~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_COLOR\(1));

-- Location: LCCOMB_X19_Y8_N6
\vga|latched_color[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|latched_color[1]~feeder_combout\ = \view|FB_COLOR\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|FB_COLOR\(1),
	combout => \vga|latched_color[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y9_N22
\vga|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector4~0_combout\ = (\vga|state.IDLE~regout\) # ((!\view|FB_COLOR\(10) & (\vga|substate.INIT~regout\ & !\view|FB_CLEAR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_COLOR\(10),
	datab => \vga|state.IDLE~regout\,
	datac => \vga|substate.INIT~regout\,
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|Selector4~0_combout\);

-- Location: LCFF_X18_Y9_N23
\vga|substate.INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector4~0_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|substate.INIT~regout\);

-- Location: LCCOMB_X21_Y9_N0
\vga|x_cursor[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~10_combout\ = \vga|x_cursor\(0) $ (VCC)
-- \vga|x_cursor[0]~11\ = CARRY(\vga|x_cursor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(0),
	datad => VCC,
	combout => \vga|x_cursor[0]~10_combout\,
	cout => \vga|x_cursor[0]~11\);

-- Location: LCCOMB_X18_Y9_N0
\vga|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector2~1_combout\ = (\vga|state.IDLE~regout\ & (((\vga|state.FILLING_RECT~regout\ & \vga|Selector2~0_combout\)))) # (!\vga|state.IDLE~regout\ & ((\view|FB_CLEAR~regout\) # ((\vga|state.FILLING_RECT~regout\ & \vga|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.IDLE~regout\,
	datab => \view|FB_CLEAR~regout\,
	datac => \vga|state.FILLING_RECT~regout\,
	datad => \vga|Selector2~0_combout\,
	combout => \vga|Selector2~1_combout\);

-- Location: LCFF_X18_Y9_N1
\vga|state.FILLING_RECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector2~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|state.FILLING_RECT~regout\);

-- Location: LCCOMB_X19_Y9_N22
\vga|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~6_combout\ = (\vga|Equal0~0_combout\ & \vga|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal0~0_combout\,
	datac => \vga|Equal0~5_combout\,
	combout => \vga|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y9_N24
\vga|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector6~0_combout\ = (\vga|state.DRAWING_RECT~regout\ & (((!\vga|Equal0~6_combout\) # (!\vga|vga_fb|SRAM_WE_N~0_combout\)) # (!\vga|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~5_combout\,
	datab => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datac => \vga|state.DRAWING_RECT~regout\,
	datad => \vga|Equal0~6_combout\,
	combout => \vga|Selector6~0_combout\);

-- Location: LCCOMB_X18_Y9_N16
\vga|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector6~1_combout\ = (\vga|substate.DRAWING_R1~regout\ & ((\vga|state.FILLING_RECT~regout\) # ((\view|Selector69~0_combout\) # (\vga|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datab => \vga|state.FILLING_RECT~regout\,
	datac => \view|Selector69~0_combout\,
	datad => \vga|Selector6~0_combout\,
	combout => \vga|Selector6~1_combout\);

-- Location: LCCOMB_X18_Y9_N8
\vga|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector6~2_combout\ = (\vga|Selector6~1_combout\) # ((!\vga|substate.INIT~regout\ & \vga|state.DRAWING_RECT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|substate.INIT~regout\,
	datac => \vga|Selector6~1_combout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|Selector6~2_combout\);

-- Location: LCFF_X18_Y9_N9
\vga|substate.DRAWING_R1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector6~2_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|substate.DRAWING_R1~regout\);

-- Location: LCCOMB_X18_Y9_N28
\vga|x_cursor[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[3]~12_combout\ = (\vga|substate.DRAWING_R1~regout\ & \vga|state.DRAWING_RECT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|substate.DRAWING_R1~regout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|x_cursor[3]~12_combout\);

-- Location: LCCOMB_X19_Y9_N16
\vga|x_cursor[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[3]~13_combout\ = (\vga|x_cursor[3]~12_combout\) # ((\vga|state.FILLING_RECT~regout\ & (\vga|substate.INIT~regout\ & !\vga|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.FILLING_RECT~regout\,
	datab => \vga|x_cursor[3]~12_combout\,
	datac => \vga|substate.INIT~regout\,
	datad => \vga|Equal0~6_combout\,
	combout => \vga|x_cursor[3]~13_combout\);

-- Location: LCCOMB_X22_Y10_N2
\view|FB_X0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_X0~0_combout\ = (\view|Add4~0_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~0_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|FB_X0~0_combout\);

-- Location: LCCOMB_X21_Y10_N18
\view|FB_X0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_X0~1_combout\ = (\view|FB_X0~0_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|FB_X0~0_combout\,
	combout => \view|FB_X0~1_combout\);

-- Location: LCFF_X21_Y10_N19
\view|FB_X0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|FB_X0~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(0));

-- Location: LCCOMB_X21_Y10_N8
\vga|x_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~0_combout\ = (\view|FB_X0\(0) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X0\(0),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~0_combout\);

-- Location: LCCOMB_X20_Y11_N26
\vga|y_end[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end[8]~0_combout\ = (\RESET_N~regout\ & (!\vga|state.IDLE~regout\ & ((\view|FB_COLOR\(10)) # (\view|FB_CLEAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~regout\,
	datab => \vga|state.IDLE~regout\,
	datac => \view|FB_COLOR\(10),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|y_end[8]~0_combout\);

-- Location: LCFF_X21_Y10_N9
\vga|x_start[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~0_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(0));

-- Location: LCCOMB_X22_Y9_N2
\vga|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~0_combout\ = \vga|x_cursor\(0) $ (VCC)
-- \vga|Add1~1\ = CARRY(\vga|x_cursor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(0),
	datad => VCC,
	combout => \vga|Add1~0_combout\,
	cout => \vga|Add1~1\);

-- Location: LCCOMB_X22_Y9_N24
\vga|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~2_combout\ = (\vga|x_cursor[3]~13_combout\ & ((\vga|Add1~0_combout\))) # (!\vga|x_cursor[3]~13_combout\ & (\vga|x_start\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[3]~13_combout\,
	datac => \vga|x_start\(0),
	datad => \vga|Add1~0_combout\,
	combout => \vga|Add1~2_combout\);

-- Location: LCCOMB_X19_Y11_N8
\vga|x_cursor[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[3]~14_combout\ = ((\vga|substate.DRAWING_R1~regout\) # (!\vga|state.DRAWING_RECT~regout\)) # (!\vga|substate.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|substate.INIT~regout\,
	datac => \vga|substate.DRAWING_R1~regout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|x_cursor[3]~14_combout\);

-- Location: LCCOMB_X30_Y11_N6
\datapath|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~0_combout\ = (\datapath|alien_grid[0][0].hitbox.up_left_x\(2) & (\datapath|alien_grid[0][0].current_index\(0) $ (VCC))) # (!\datapath|alien_grid[0][0].hitbox.up_left_x\(2) & (\datapath|alien_grid[0][0].current_index\(0) & VCC))
-- \datapath|Add1~1\ = CARRY((\datapath|alien_grid[0][0].hitbox.up_left_x\(2) & \datapath|alien_grid[0][0].current_index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[0][0].hitbox.up_left_x\(2),
	datab => \datapath|alien_grid[0][0].current_index\(0),
	datad => VCC,
	combout => \datapath|Add1~0_combout\,
	cout => \datapath|Add1~1\);

-- Location: LCFF_X30_Y11_N7
\datapath|alien_grid[0][0].hitbox.up_left_x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add1~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].hitbox.up_left_x\(2));

-- Location: LCCOMB_X29_Y10_N14
\datapath|Add9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~1_cout\ = CARRY((\datapath|alien_grid[0][0].current_index\(0) & \datapath|alien_grid[0][0].hitbox.up_left_x\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[0][0].current_index\(0),
	datab => \datapath|alien_grid[0][0].hitbox.up_left_x\(2),
	datad => VCC,
	cout => \datapath|Add9~1_cout\);

-- Location: LCCOMB_X29_Y10_N16
\datapath|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~2_combout\ = (\datapath|alien_grid[4][0].hitbox.up_left_x\(3) & (!\datapath|Add9~1_cout\)) # (!\datapath|alien_grid[4][0].hitbox.up_left_x\(3) & (\datapath|Add9~1_cout\ & VCC))
-- \datapath|Add9~3\ = CARRY((\datapath|alien_grid[4][0].hitbox.up_left_x\(3) & !\datapath|Add9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[4][0].hitbox.up_left_x\(3),
	datad => VCC,
	cin => \datapath|Add9~1_cout\,
	combout => \datapath|Add9~2_combout\,
	cout => \datapath|Add9~3\);

-- Location: LCCOMB_X29_Y10_N6
\datapath|alien_grid[4][0].hitbox.up_left_x[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[4][0].hitbox.up_left_x[3]~2_combout\ = !\datapath|Add9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Add9~2_combout\,
	combout => \datapath|alien_grid[4][0].hitbox.up_left_x[3]~2_combout\);

-- Location: LCFF_X29_Y10_N7
\datapath|alien_grid[4][0].hitbox.up_left_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[4][0].hitbox.up_left_x[3]~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[4][0].hitbox.up_left_x\(3));

-- Location: LCCOMB_X30_Y10_N6
\datapath|rendered_column~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rendered_column~2_combout\ = (\datapath|rendered_column\(0) & (\datapath|rendered_column\(1) & !\datapath|rendered_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|rendered_column\(1),
	datac => \datapath|rendered_column\(2),
	combout => \datapath|rendered_column~2_combout\);

-- Location: LCFF_X30_Y10_N7
\datapath|rendered_column[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|rendered_column~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rendered_column\(2));

-- Location: LCCOMB_X30_Y10_N12
\datapath|rendered_column~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rendered_column~1_combout\ = (!\datapath|rendered_column\(2) & (\datapath|rendered_column\(0) $ (\datapath|rendered_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|rendered_column\(2),
	datac => \datapath|rendered_column\(1),
	combout => \datapath|rendered_column~1_combout\);

-- Location: LCFF_X30_Y10_N13
\datapath|rendered_column[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|rendered_column~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rendered_column\(1));

-- Location: LCCOMB_X30_Y10_N10
\datapath|rendered_column~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|rendered_column~0_combout\ = (!\datapath|rendered_column\(2) & !\datapath|rendered_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|rendered_column\(2),
	datac => \datapath|rendered_column\(0),
	combout => \datapath|rendered_column~0_combout\);

-- Location: LCFF_X30_Y10_N11
\datapath|rendered_column[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|rendered_column~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|rendered_column\(0));

-- Location: LCFF_X30_Y11_N9
\datapath|alien_grid[0][0].hitbox.up_left_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add1~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[0][0].hitbox.up_left_x\(3));

-- Location: LCCOMB_X30_Y11_N4
\datapath|Mux44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux44~0_combout\ = (\datapath|rendered_column\(0) & (((\datapath|rendered_column\(1))) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(3)))) # (!\datapath|rendered_column\(0) & (((\datapath|alien_grid[0][0].hitbox.up_left_x\(3) & 
-- !\datapath|rendered_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[1][0].hitbox.up_left_x\(3),
	datab => \datapath|rendered_column\(0),
	datac => \datapath|alien_grid[0][0].hitbox.up_left_x\(3),
	datad => \datapath|rendered_column\(1),
	combout => \datapath|Mux44~0_combout\);

-- Location: LCCOMB_X31_Y10_N26
\datapath|alien_grid[1][0].hitbox.up_left_x[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[1][0].hitbox.up_left_x[1]~2_combout\ = !\datapath|alien_grid[1][0].hitbox.up_left_x\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|alien_grid[1][0].hitbox.up_left_x\(1),
	combout => \datapath|alien_grid[1][0].hitbox.up_left_x[1]~2_combout\);

-- Location: LCFF_X31_Y10_N27
\datapath|alien_grid[1][0].hitbox.up_left_x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[1][0].hitbox.up_left_x[1]~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(1));

-- Location: LCCOMB_X31_Y10_N2
\datapath|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~0_combout\ = (\datapath|alien_grid[3][0].hitbox.up_left_x\(2) & (!\datapath|alien_grid[1][0].hitbox.up_left_x\(1) & VCC)) # (!\datapath|alien_grid[3][0].hitbox.up_left_x\(2) & (\datapath|alien_grid[1][0].hitbox.up_left_x\(1) $ (GND)))
-- \datapath|Add7~1\ = CARRY((!\datapath|alien_grid[3][0].hitbox.up_left_x\(2) & !\datapath|alien_grid[1][0].hitbox.up_left_x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[3][0].hitbox.up_left_x\(2),
	datab => \datapath|alien_grid[1][0].hitbox.up_left_x\(1),
	datad => VCC,
	combout => \datapath|Add7~0_combout\,
	cout => \datapath|Add7~1\);

-- Location: LCCOMB_X31_Y10_N4
\datapath|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~2_combout\ = (\datapath|alien_grid[3][0].hitbox.up_left_x\(3) & (!\datapath|Add7~1\)) # (!\datapath|alien_grid[3][0].hitbox.up_left_x\(3) & (\datapath|Add7~1\ & VCC))
-- \datapath|Add7~3\ = CARRY((\datapath|alien_grid[3][0].hitbox.up_left_x\(3) & !\datapath|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[3][0].hitbox.up_left_x\(3),
	datad => VCC,
	cin => \datapath|Add7~1\,
	combout => \datapath|Add7~2_combout\,
	cout => \datapath|Add7~3\);

-- Location: LCCOMB_X31_Y10_N22
\datapath|alien_grid[3][0].hitbox.up_left_x[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[3][0].hitbox.up_left_x[3]~3_combout\ = !\datapath|Add7~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Add7~2_combout\,
	combout => \datapath|alien_grid[3][0].hitbox.up_left_x[3]~3_combout\);

-- Location: LCFF_X31_Y10_N23
\datapath|alien_grid[3][0].hitbox.up_left_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[3][0].hitbox.up_left_x[3]~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[3][0].hitbox.up_left_x\(3));

-- Location: LCCOMB_X30_Y11_N22
\datapath|Mux44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux44~1_combout\ = (\datapath|rendered_column\(1) & ((\datapath|Mux44~0_combout\ & ((!\datapath|alien_grid[3][0].hitbox.up_left_x\(3)))) # (!\datapath|Mux44~0_combout\ & (\datapath|alien_grid[2][0].hitbox.up_left_x\(3))))) # 
-- (!\datapath|rendered_column\(1) & (((\datapath|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[2][0].hitbox.up_left_x\(3),
	datab => \datapath|rendered_column\(1),
	datac => \datapath|Mux44~0_combout\,
	datad => \datapath|alien_grid[3][0].hitbox.up_left_x\(3),
	combout => \datapath|Mux44~1_combout\);

-- Location: LCCOMB_X29_Y10_N2
\datapath|Mux44~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux44~2_combout\ = (\datapath|rendered_column\(2) & (!\datapath|alien_grid[4][0].hitbox.up_left_x\(3))) # (!\datapath|rendered_column\(2) & ((\datapath|Mux44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(2),
	datac => \datapath|alien_grid[4][0].hitbox.up_left_x\(3),
	datad => \datapath|Mux44~1_combout\,
	combout => \datapath|Mux44~2_combout\);

-- Location: LCFF_X29_Y10_N3
\datapath|HITBOX.up_left_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux44~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(3));

-- Location: LCFF_X22_Y10_N19
\view|reg_hitbox.up_left_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(3),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(3));

-- Location: LCCOMB_X31_Y11_N6
\datapath|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add3~0_combout\ = (\datapath|alien_grid[1][0].hitbox.up_left_x\(2) & (\datapath|alien_grid[1][0].hitbox.up_left_x\(1) $ (GND))) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(2) & (!\datapath|alien_grid[1][0].hitbox.up_left_x\(1) & VCC))
-- \datapath|Add3~1\ = CARRY((\datapath|alien_grid[1][0].hitbox.up_left_x\(2) & !\datapath|alien_grid[1][0].hitbox.up_left_x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[1][0].hitbox.up_left_x\(2),
	datab => \datapath|alien_grid[1][0].hitbox.up_left_x\(1),
	datad => VCC,
	combout => \datapath|Add3~0_combout\,
	cout => \datapath|Add3~1\);

-- Location: LCFF_X31_Y11_N7
\datapath|alien_grid[1][0].hitbox.up_left_x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add3~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(2));

-- Location: LCCOMB_X30_Y10_N14
\datapath|Mux45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux45~0_combout\ = (\datapath|rendered_column\(0) & ((\datapath|rendered_column\(1)) # ((\datapath|alien_grid[1][0].hitbox.up_left_x\(2))))) # (!\datapath|rendered_column\(0) & (!\datapath|rendered_column\(1) & 
-- (\datapath|alien_grid[0][0].hitbox.up_left_x\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|rendered_column\(1),
	datac => \datapath|alien_grid[0][0].hitbox.up_left_x\(2),
	datad => \datapath|alien_grid[1][0].hitbox.up_left_x\(2),
	combout => \datapath|Mux45~0_combout\);

-- Location: LCCOMB_X31_Y10_N24
\datapath|alien_grid[3][0].hitbox.up_left_x[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[3][0].hitbox.up_left_x[2]~4_combout\ = !\datapath|Add7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add7~0_combout\,
	combout => \datapath|alien_grid[3][0].hitbox.up_left_x[2]~4_combout\);

-- Location: LCFF_X31_Y10_N25
\datapath|alien_grid[3][0].hitbox.up_left_x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[3][0].hitbox.up_left_x[2]~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[3][0].hitbox.up_left_x\(2));

-- Location: LCCOMB_X30_Y10_N28
\datapath|Mux45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux45~1_combout\ = (\datapath|rendered_column\(1) & ((\datapath|Mux45~0_combout\ & ((!\datapath|alien_grid[3][0].hitbox.up_left_x\(2)))) # (!\datapath|Mux45~0_combout\ & (!\datapath|alien_grid[2][0].hitbox.up_left_x\(2))))) # 
-- (!\datapath|rendered_column\(1) & (((\datapath|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[2][0].hitbox.up_left_x\(2),
	datab => \datapath|rendered_column\(1),
	datac => \datapath|Mux45~0_combout\,
	datad => \datapath|alien_grid[3][0].hitbox.up_left_x\(2),
	combout => \datapath|Mux45~1_combout\);

-- Location: LCFF_X30_Y10_N29
\datapath|HITBOX.up_left_x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux45~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(2));

-- Location: LCFF_X22_Y10_N17
\view|reg_hitbox.up_left_x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(2),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(2));

-- Location: LCCOMB_X30_Y10_N30
\datapath|Mux46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux46~0_combout\ = (\datapath|rendered_column\(0) & ((!\datapath|alien_grid[1][0].hitbox.up_left_x\(1)))) # (!\datapath|rendered_column\(0) & (\datapath|alien_grid[0][0].current_index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(0),
	datab => \datapath|alien_grid[0][0].current_index\(0),
	datac => \datapath|alien_grid[1][0].hitbox.up_left_x\(1),
	combout => \datapath|Mux46~0_combout\);

-- Location: LCFF_X30_Y10_N31
\datapath|HITBOX.up_left_x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux46~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(1));

-- Location: LCFF_X22_Y10_N15
\view|reg_hitbox.up_left_x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(1),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(1));

-- Location: LCCOMB_X22_Y10_N14
\view|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~2_combout\ = (\view|column\(1) & ((\view|reg_hitbox.up_left_x\(1) & (\view|Add4~1\ & VCC)) # (!\view|reg_hitbox.up_left_x\(1) & (!\view|Add4~1\)))) # (!\view|column\(1) & ((\view|reg_hitbox.up_left_x\(1) & (!\view|Add4~1\)) # 
-- (!\view|reg_hitbox.up_left_x\(1) & ((\view|Add4~1\) # (GND)))))
-- \view|Add4~3\ = CARRY((\view|column\(1) & (!\view|reg_hitbox.up_left_x\(1) & !\view|Add4~1\)) # (!\view|column\(1) & ((!\view|Add4~1\) # (!\view|reg_hitbox.up_left_x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(1),
	datab => \view|reg_hitbox.up_left_x\(1),
	datad => VCC,
	cin => \view|Add4~1\,
	combout => \view|Add4~2_combout\,
	cout => \view|Add4~3\);

-- Location: LCCOMB_X22_Y10_N16
\view|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~4_combout\ = ((\view|column\(2) $ (\view|reg_hitbox.up_left_x\(2) $ (!\view|Add4~3\)))) # (GND)
-- \view|Add4~5\ = CARRY((\view|column\(2) & ((\view|reg_hitbox.up_left_x\(2)) # (!\view|Add4~3\))) # (!\view|column\(2) & (\view|reg_hitbox.up_left_x\(2) & !\view|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(2),
	datab => \view|reg_hitbox.up_left_x\(2),
	datad => VCC,
	cin => \view|Add4~3\,
	combout => \view|Add4~4_combout\,
	cout => \view|Add4~5\);

-- Location: LCCOMB_X22_Y10_N18
\view|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~6_combout\ = (\view|column\(3) & ((\view|reg_hitbox.up_left_x\(3) & (\view|Add4~5\ & VCC)) # (!\view|reg_hitbox.up_left_x\(3) & (!\view|Add4~5\)))) # (!\view|column\(3) & ((\view|reg_hitbox.up_left_x\(3) & (!\view|Add4~5\)) # 
-- (!\view|reg_hitbox.up_left_x\(3) & ((\view|Add4~5\) # (GND)))))
-- \view|Add4~7\ = CARRY((\view|column\(3) & (!\view|reg_hitbox.up_left_x\(3) & !\view|Add4~5\)) # (!\view|column\(3) & ((!\view|Add4~5\) # (!\view|reg_hitbox.up_left_x\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(3),
	datab => \view|reg_hitbox.up_left_x\(3),
	datad => VCC,
	cin => \view|Add4~5\,
	combout => \view|Add4~6_combout\,
	cout => \view|Add4~7\);

-- Location: LCCOMB_X19_Y10_N2
\view|Selector81~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector81~1_combout\ = (\view|state.DRAWING~regout\ & \view|Add4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.DRAWING~regout\,
	datac => \view|Add4~6_combout\,
	combout => \view|Selector81~1_combout\);

-- Location: LCCOMB_X19_Y10_N24
\view|Selector81~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector81~2_combout\ = (\view|Selector81~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Selector81~1_combout\,
	datac => \view|Mux32~17_combout\,
	datad => \view|Mux32~20_combout\,
	combout => \view|Selector81~2_combout\);

-- Location: LCFF_X19_Y10_N25
\view|FB_X0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector81~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(3));

-- Location: LCCOMB_X19_Y10_N12
\vga|x_start~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~6_combout\ = (\view|FB_X0\(3) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|FB_X0\(3),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~6_combout\);

-- Location: LCFF_X19_Y10_N13
\vga|x_start[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~6_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(3));

-- Location: LCCOMB_X29_Y10_N18
\datapath|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~4_combout\ = (\datapath|alien_grid[4][0].hitbox.up_left_x\(4) & (\datapath|Add9~3\ $ (GND))) # (!\datapath|alien_grid[4][0].hitbox.up_left_x\(4) & (!\datapath|Add9~3\ & VCC))
-- \datapath|Add9~5\ = CARRY((\datapath|alien_grid[4][0].hitbox.up_left_x\(4) & !\datapath|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(4),
	datad => VCC,
	cin => \datapath|Add9~3\,
	combout => \datapath|Add9~4_combout\,
	cout => \datapath|Add9~5\);

-- Location: LCFF_X29_Y10_N19
\datapath|alien_grid[4][0].hitbox.up_left_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add9~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[4][0].hitbox.up_left_x\(4));

-- Location: LCCOMB_X31_Y11_N8
\datapath|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add3~2_combout\ = (\datapath|alien_grid[1][0].hitbox.up_left_x\(3) & (!\datapath|Add3~1\)) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(3) & (\datapath|Add3~1\ & VCC))
-- \datapath|Add3~3\ = CARRY((\datapath|alien_grid[1][0].hitbox.up_left_x\(3) & !\datapath|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[1][0].hitbox.up_left_x\(3),
	datad => VCC,
	cin => \datapath|Add3~1\,
	combout => \datapath|Add3~2_combout\,
	cout => \datapath|Add3~3\);

-- Location: LCCOMB_X31_Y11_N2
\datapath|alien_grid[1][0].hitbox.up_left_x[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[1][0].hitbox.up_left_x[3]~1_combout\ = !\datapath|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Add3~2_combout\,
	combout => \datapath|alien_grid[1][0].hitbox.up_left_x[3]~1_combout\);

-- Location: LCFF_X31_Y11_N3
\datapath|alien_grid[1][0].hitbox.up_left_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[1][0].hitbox.up_left_x[3]~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(3));

-- Location: LCCOMB_X31_Y11_N10
\datapath|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add3~4_combout\ = (\datapath|alien_grid[1][0].hitbox.up_left_x\(4) & (\datapath|Add3~3\ $ (GND))) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(4) & (!\datapath|Add3~3\ & VCC))
-- \datapath|Add3~5\ = CARRY((\datapath|alien_grid[1][0].hitbox.up_left_x\(4) & !\datapath|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[1][0].hitbox.up_left_x\(4),
	datad => VCC,
	cin => \datapath|Add3~3\,
	combout => \datapath|Add3~4_combout\,
	cout => \datapath|Add3~5\);

-- Location: LCFF_X31_Y11_N11
\datapath|alien_grid[1][0].hitbox.up_left_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add3~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(4));

-- Location: LCCOMB_X30_Y11_N24
\datapath|Mux43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux43~0_combout\ = (\datapath|rendered_column\(0) & (((\datapath|alien_grid[1][0].hitbox.up_left_x\(4)) # (\datapath|rendered_column\(1))))) # (!\datapath|rendered_column\(0) & (\datapath|alien_grid[0][0].hitbox.up_left_x\(4) & 
-- ((!\datapath|rendered_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[0][0].hitbox.up_left_x\(4),
	datab => \datapath|rendered_column\(0),
	datac => \datapath|alien_grid[1][0].hitbox.up_left_x\(4),
	datad => \datapath|rendered_column\(1),
	combout => \datapath|Mux43~0_combout\);

-- Location: LCCOMB_X31_Y10_N20
\datapath|alien_grid[3][0].hitbox.up_left_x[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[3][0].hitbox.up_left_x[4]~2_combout\ = !\datapath|Add7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add7~4_combout\,
	combout => \datapath|alien_grid[3][0].hitbox.up_left_x[4]~2_combout\);

-- Location: LCFF_X31_Y10_N21
\datapath|alien_grid[3][0].hitbox.up_left_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[3][0].hitbox.up_left_x[4]~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[3][0].hitbox.up_left_x\(4));

-- Location: LCCOMB_X30_Y11_N2
\datapath|Mux43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux43~1_combout\ = (\datapath|rendered_column\(1) & ((\datapath|Mux43~0_combout\ & ((!\datapath|alien_grid[3][0].hitbox.up_left_x\(4)))) # (!\datapath|Mux43~0_combout\ & (!\datapath|alien_grid[2][0].hitbox.up_left_x\(4))))) # 
-- (!\datapath|rendered_column\(1) & (((\datapath|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[2][0].hitbox.up_left_x\(4),
	datab => \datapath|rendered_column\(1),
	datac => \datapath|Mux43~0_combout\,
	datad => \datapath|alien_grid[3][0].hitbox.up_left_x\(4),
	combout => \datapath|Mux43~1_combout\);

-- Location: LCCOMB_X29_Y10_N0
\datapath|Mux43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux43~2_combout\ = (\datapath|rendered_column\(2) & (\datapath|alien_grid[4][0].hitbox.up_left_x\(4))) # (!\datapath|rendered_column\(2) & ((\datapath|Mux43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(2),
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(4),
	datac => \datapath|Mux43~1_combout\,
	combout => \datapath|Mux43~2_combout\);

-- Location: LCFF_X29_Y10_N1
\datapath|HITBOX.up_left_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux43~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(4));

-- Location: LCFF_X22_Y10_N21
\view|reg_hitbox.up_left_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(4),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(4));

-- Location: LCCOMB_X22_Y10_N20
\view|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~8_combout\ = ((\view|column\(4) $ (\view|reg_hitbox.up_left_x\(4) $ (!\view|Add4~7\)))) # (GND)
-- \view|Add4~9\ = CARRY((\view|column\(4) & ((\view|reg_hitbox.up_left_x\(4)) # (!\view|Add4~7\))) # (!\view|column\(4) & (\view|reg_hitbox.up_left_x\(4) & !\view|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|column\(4),
	datab => \view|reg_hitbox.up_left_x\(4),
	datad => VCC,
	cin => \view|Add4~7\,
	combout => \view|Add4~8_combout\,
	cout => \view|Add4~9\);

-- Location: LCCOMB_X22_Y10_N8
\view|Selector80~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector80~1_combout\ = (\view|Add4~8_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add4~8_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector80~1_combout\);

-- Location: LCCOMB_X21_Y10_N28
\view|Selector80~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector80~2_combout\ = (\view|Selector80~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Selector80~1_combout\,
	combout => \view|Selector80~2_combout\);

-- Location: LCFF_X21_Y10_N29
\view|FB_X0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector80~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(4));

-- Location: LCCOMB_X21_Y10_N20
\vga|x_start~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~5_combout\ = (\view|FB_X0\(4) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X0\(4),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~5_combout\);

-- Location: LCFF_X21_Y10_N21
\vga|x_start[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~5_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(4));

-- Location: LCCOMB_X21_Y9_N2
\vga|x_cursor[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[1]~20_combout\ = (\vga|x_cursor\(1) & (\vga|x_cursor[0]~11\ & VCC)) # (!\vga|x_cursor\(1) & (!\vga|x_cursor[0]~11\))
-- \vga|x_cursor[1]~21\ = CARRY((!\vga|x_cursor\(1) & !\vga|x_cursor[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(1),
	datad => VCC,
	cin => \vga|x_cursor[0]~11\,
	combout => \vga|x_cursor[1]~20_combout\,
	cout => \vga|x_cursor[1]~21\);

-- Location: LCCOMB_X21_Y9_N4
\vga|x_cursor[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[2]~22_combout\ = (\vga|x_cursor\(2) & ((GND) # (!\vga|x_cursor[1]~21\))) # (!\vga|x_cursor\(2) & (\vga|x_cursor[1]~21\ $ (GND)))
-- \vga|x_cursor[2]~23\ = CARRY((\vga|x_cursor\(2)) # (!\vga|x_cursor[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(2),
	datad => VCC,
	cin => \vga|x_cursor[1]~21\,
	combout => \vga|x_cursor[2]~22_combout\,
	cout => \vga|x_cursor[2]~23\);

-- Location: LCCOMB_X20_Y10_N16
\view|Selector82~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector82~1_combout\ = (\view|Add4~4_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add4~4_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector82~1_combout\);

-- Location: LCCOMB_X21_Y10_N2
\view|Selector82~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector82~2_combout\ = (\view|Selector82~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Selector82~1_combout\,
	combout => \view|Selector82~2_combout\);

-- Location: LCFF_X21_Y10_N3
\view|FB_X0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector82~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(2));

-- Location: LCCOMB_X21_Y10_N26
\vga|x_start~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~3_combout\ = (\view|FB_X0\(2) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X0\(2),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~3_combout\);

-- Location: LCFF_X21_Y10_N27
\vga|x_start[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~3_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(2));

-- Location: LCCOMB_X21_Y9_N30
\vga|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~8_combout\ = (\vga|x_cursor[3]~13_combout\ & (\vga|Add1~6_combout\)) # (!\vga|x_cursor[3]~13_combout\ & ((\vga|x_start\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add1~6_combout\,
	datab => \vga|x_cursor[3]~13_combout\,
	datad => \vga|x_start\(2),
	combout => \vga|Add1~8_combout\);

-- Location: LCFF_X21_Y9_N5
\vga|x_cursor[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[2]~22_combout\,
	sdata => \vga|Add1~8_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(2));

-- Location: LCCOMB_X21_Y9_N6
\vga|x_cursor[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[3]~24_combout\ = (\vga|x_cursor\(3) & (\vga|x_cursor[2]~23\ & VCC)) # (!\vga|x_cursor\(3) & (!\vga|x_cursor[2]~23\))
-- \vga|x_cursor[3]~25\ = CARRY((!\vga|x_cursor\(3) & !\vga|x_cursor[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(3),
	datad => VCC,
	cin => \vga|x_cursor[2]~23\,
	combout => \vga|x_cursor[3]~24_combout\,
	cout => \vga|x_cursor[3]~25\);

-- Location: LCCOMB_X21_Y9_N24
\vga|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~11_combout\ = (\vga|x_cursor[3]~13_combout\ & (\vga|Add1~9_combout\)) # (!\vga|x_cursor[3]~13_combout\ & ((\vga|x_start\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add1~9_combout\,
	datab => \vga|x_cursor[3]~13_combout\,
	datad => \vga|x_start\(3),
	combout => \vga|Add1~11_combout\);

-- Location: LCFF_X21_Y9_N7
\vga|x_cursor[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[3]~24_combout\,
	sdata => \vga|Add1~11_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(3));

-- Location: LCCOMB_X20_Y9_N14
\vga|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~3_combout\ = (\vga|x_cursor\(4) & (\vga|x_start\(4) & (\vga|x_start\(3) $ (!\vga|x_cursor\(3))))) # (!\vga|x_cursor\(4) & (!\vga|x_start\(4) & (\vga|x_start\(3) $ (!\vga|x_cursor\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(4),
	datab => \vga|x_start\(3),
	datac => \vga|x_start\(4),
	datad => \vga|x_cursor\(3),
	combout => \vga|Equal2~3_combout\);

-- Location: LCCOMB_X20_Y10_N10
\view|Selector83~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector83~1_combout\ = (\view|Add4~2_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add4~2_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector83~1_combout\);

-- Location: LCCOMB_X19_Y10_N30
\view|Selector83~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector83~2_combout\ = (\view|Selector83~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Selector83~1_combout\,
	datac => \view|Mux32~17_combout\,
	datad => \view|Mux32~20_combout\,
	combout => \view|Selector83~2_combout\);

-- Location: LCFF_X19_Y10_N31
\view|FB_X0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector83~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(1));

-- Location: LCCOMB_X19_Y10_N18
\vga|x_start~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~4_combout\ = (\view|FB_X0\(1) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X0\(1),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~4_combout\);

-- Location: LCFF_X19_Y10_N19
\vga|x_start[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~4_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(1));

-- Location: LCCOMB_X20_Y9_N20
\vga|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~2_combout\ = (\vga|x_cursor\(2) & (\vga|x_start\(2) & (\vga|x_cursor\(1) $ (!\vga|x_start\(1))))) # (!\vga|x_cursor\(2) & (!\vga|x_start\(2) & (\vga|x_cursor\(1) $ (!\vga|x_start\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(2),
	datab => \vga|x_cursor\(1),
	datac => \vga|x_start\(1),
	datad => \vga|x_start\(2),
	combout => \vga|Equal2~2_combout\);

-- Location: LCCOMB_X29_Y10_N20
\datapath|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~6_combout\ = (\datapath|alien_grid[4][0].hitbox.up_left_x\(5) & ((\datapath|Add9~5\) # (GND))) # (!\datapath|alien_grid[4][0].hitbox.up_left_x\(5) & (!\datapath|Add9~5\))
-- \datapath|Add9~7\ = CARRY((\datapath|alien_grid[4][0].hitbox.up_left_x\(5)) # (!\datapath|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(5),
	datad => VCC,
	cin => \datapath|Add9~5\,
	combout => \datapath|Add9~6_combout\,
	cout => \datapath|Add9~7\);

-- Location: LCCOMB_X30_Y10_N20
\datapath|alien_grid[4][0].hitbox.up_left_x[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[4][0].hitbox.up_left_x[5]~1_combout\ = !\datapath|Add9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add9~6_combout\,
	combout => \datapath|alien_grid[4][0].hitbox.up_left_x[5]~1_combout\);

-- Location: LCFF_X30_Y10_N21
\datapath|alien_grid[4][0].hitbox.up_left_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[4][0].hitbox.up_left_x[5]~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[4][0].hitbox.up_left_x\(5));

-- Location: LCCOMB_X29_Y10_N22
\datapath|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~8_combout\ = (\datapath|alien_grid[4][0].hitbox.up_left_x\(6) & (\datapath|Add9~7\ $ (GND))) # (!\datapath|alien_grid[4][0].hitbox.up_left_x\(6) & (!\datapath|Add9~7\ & VCC))
-- \datapath|Add9~9\ = CARRY((\datapath|alien_grid[4][0].hitbox.up_left_x\(6) & !\datapath|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(6),
	datad => VCC,
	cin => \datapath|Add9~7\,
	combout => \datapath|Add9~8_combout\,
	cout => \datapath|Add9~9\);

-- Location: LCFF_X29_Y10_N23
\datapath|alien_grid[4][0].hitbox.up_left_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add9~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[4][0].hitbox.up_left_x\(6));

-- Location: LCCOMB_X29_Y10_N24
\datapath|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~10_combout\ = (\datapath|alien_grid[4][0].hitbox.up_left_x\(7) & ((\datapath|Add9~9\) # (GND))) # (!\datapath|alien_grid[4][0].hitbox.up_left_x\(7) & (!\datapath|Add9~9\))
-- \datapath|Add9~11\ = CARRY((\datapath|alien_grid[4][0].hitbox.up_left_x\(7)) # (!\datapath|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(7),
	datad => VCC,
	cin => \datapath|Add9~9\,
	combout => \datapath|Add9~10_combout\,
	cout => \datapath|Add9~11\);

-- Location: LCCOMB_X29_Y10_N4
\datapath|alien_grid[4][0].hitbox.up_left_x[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[4][0].hitbox.up_left_x[7]~0_combout\ = !\datapath|Add9~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Add9~10_combout\,
	combout => \datapath|alien_grid[4][0].hitbox.up_left_x[7]~0_combout\);

-- Location: LCFF_X29_Y10_N5
\datapath|alien_grid[4][0].hitbox.up_left_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[4][0].hitbox.up_left_x[7]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[4][0].hitbox.up_left_x\(7));

-- Location: LCCOMB_X29_Y10_N26
\datapath|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~12_combout\ = (\datapath|alien_grid[4][0].hitbox.up_left_x\(8) & (\datapath|Add9~11\ $ (GND))) # (!\datapath|alien_grid[4][0].hitbox.up_left_x\(8) & (!\datapath|Add9~11\ & VCC))
-- \datapath|Add9~13\ = CARRY((\datapath|alien_grid[4][0].hitbox.up_left_x\(8) & !\datapath|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(8),
	datad => VCC,
	cin => \datapath|Add9~11\,
	combout => \datapath|Add9~12_combout\,
	cout => \datapath|Add9~13\);

-- Location: LCFF_X29_Y10_N27
\datapath|alien_grid[4][0].hitbox.up_left_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add9~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[4][0].hitbox.up_left_x\(8));

-- Location: LCCOMB_X29_Y10_N28
\datapath|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~14_combout\ = \datapath|Add9~13\ $ (\datapath|alien_grid[4][0].hitbox.up_left_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alien_grid[4][0].hitbox.up_left_x\(9),
	cin => \datapath|Add9~13\,
	combout => \datapath|Add9~14_combout\);

-- Location: LCFF_X29_Y10_N29
\datapath|alien_grid[4][0].hitbox.up_left_x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add9~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[4][0].hitbox.up_left_x\(9));

-- Location: LCCOMB_X29_Y11_N12
\datapath|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add5~4_combout\ = (\datapath|alien_grid[2][0].hitbox.up_left_x\(4) & (!\datapath|Add5~3\ & VCC)) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(4) & (\datapath|Add5~3\ $ (GND)))
-- \datapath|Add5~5\ = CARRY((!\datapath|alien_grid[2][0].hitbox.up_left_x\(4) & !\datapath|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[2][0].hitbox.up_left_x\(4),
	datad => VCC,
	cin => \datapath|Add5~3\,
	combout => \datapath|Add5~4_combout\,
	cout => \datapath|Add5~5\);

-- Location: LCCOMB_X29_Y11_N26
\datapath|alien_grid[2][0].hitbox.up_left_x[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[2][0].hitbox.up_left_x[4]~1_combout\ = !\datapath|Add5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add5~4_combout\,
	combout => \datapath|alien_grid[2][0].hitbox.up_left_x[4]~1_combout\);

-- Location: LCFF_X29_Y11_N27
\datapath|alien_grid[2][0].hitbox.up_left_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[2][0].hitbox.up_left_x[4]~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[2][0].hitbox.up_left_x\(4));

-- Location: LCCOMB_X29_Y11_N14
\datapath|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add5~6_combout\ = (\datapath|alien_grid[2][0].hitbox.up_left_x\(5) & (!\datapath|Add5~5\)) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(5) & ((\datapath|Add5~5\) # (GND)))
-- \datapath|Add5~7\ = CARRY((!\datapath|Add5~5\) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[2][0].hitbox.up_left_x\(5),
	datad => VCC,
	cin => \datapath|Add5~5\,
	combout => \datapath|Add5~6_combout\,
	cout => \datapath|Add5~7\);

-- Location: LCFF_X29_Y11_N15
\datapath|alien_grid[2][0].hitbox.up_left_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add5~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[2][0].hitbox.up_left_x\(5));

-- Location: LCCOMB_X29_Y11_N16
\datapath|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add5~8_combout\ = (\datapath|alien_grid[2][0].hitbox.up_left_x\(6) & (!\datapath|Add5~7\ & VCC)) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(6) & (\datapath|Add5~7\ $ (GND)))
-- \datapath|Add5~9\ = CARRY((!\datapath|alien_grid[2][0].hitbox.up_left_x\(6) & !\datapath|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[2][0].hitbox.up_left_x\(6),
	datad => VCC,
	cin => \datapath|Add5~7\,
	combout => \datapath|Add5~8_combout\,
	cout => \datapath|Add5~9\);

-- Location: LCCOMB_X29_Y11_N0
\datapath|alien_grid[2][0].hitbox.up_left_x[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alien_grid[2][0].hitbox.up_left_x[6]~0_combout\ = !\datapath|Add5~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Add5~8_combout\,
	combout => \datapath|alien_grid[2][0].hitbox.up_left_x[6]~0_combout\);

-- Location: LCFF_X29_Y11_N1
\datapath|alien_grid[2][0].hitbox.up_left_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|alien_grid[2][0].hitbox.up_left_x[6]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[2][0].hitbox.up_left_x\(6));

-- Location: LCCOMB_X29_Y11_N18
\datapath|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add5~10_combout\ = (\datapath|alien_grid[2][0].hitbox.up_left_x\(7) & (!\datapath|Add5~9\)) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(7) & ((\datapath|Add5~9\) # (GND)))
-- \datapath|Add5~11\ = CARRY((!\datapath|Add5~9\) # (!\datapath|alien_grid[2][0].hitbox.up_left_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[2][0].hitbox.up_left_x\(7),
	datad => VCC,
	cin => \datapath|Add5~9\,
	combout => \datapath|Add5~10_combout\,
	cout => \datapath|Add5~11\);

-- Location: LCFF_X29_Y11_N19
\datapath|alien_grid[2][0].hitbox.up_left_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add5~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[2][0].hitbox.up_left_x\(7));

-- Location: LCCOMB_X29_Y11_N22
\datapath|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add5~14_combout\ = \datapath|Add5~13\ $ (\datapath|alien_grid[2][0].hitbox.up_left_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \datapath|alien_grid[2][0].hitbox.up_left_x\(9),
	cin => \datapath|Add5~13\,
	combout => \datapath|Add5~14_combout\);

-- Location: LCFF_X29_Y11_N23
\datapath|alien_grid[2][0].hitbox.up_left_x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add5~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[2][0].hitbox.up_left_x\(9));

-- Location: LCCOMB_X30_Y11_N0
\datapath|Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux38~0_combout\ = (\datapath|rendered_column\(0) & (((\datapath|rendered_column\(1))))) # (!\datapath|rendered_column\(0) & ((\datapath|rendered_column\(1) & ((\datapath|alien_grid[2][0].hitbox.up_left_x\(9)))) # (!\datapath|rendered_column\(1) 
-- & (\datapath|alien_grid[0][0].hitbox.up_left_x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[0][0].hitbox.up_left_x\(9),
	datab => \datapath|alien_grid[2][0].hitbox.up_left_x\(9),
	datac => \datapath|rendered_column\(0),
	datad => \datapath|rendered_column\(1),
	combout => \datapath|Mux38~0_combout\);

-- Location: LCCOMB_X31_Y11_N14
\datapath|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add3~8_combout\ = (\datapath|alien_grid[1][0].hitbox.up_left_x\(6) & (\datapath|Add3~7\ $ (GND))) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(6) & (!\datapath|Add3~7\ & VCC))
-- \datapath|Add3~9\ = CARRY((\datapath|alien_grid[1][0].hitbox.up_left_x\(6) & !\datapath|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[1][0].hitbox.up_left_x\(6),
	datad => VCC,
	cin => \datapath|Add3~7\,
	combout => \datapath|Add3~8_combout\,
	cout => \datapath|Add3~9\);

-- Location: LCFF_X31_Y11_N15
\datapath|alien_grid[1][0].hitbox.up_left_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add3~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(6));

-- Location: LCCOMB_X31_Y11_N18
\datapath|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add3~12_combout\ = (\datapath|alien_grid[1][0].hitbox.up_left_x\(8) & (\datapath|Add3~11\ $ (GND))) # (!\datapath|alien_grid[1][0].hitbox.up_left_x\(8) & (!\datapath|Add3~11\ & VCC))
-- \datapath|Add3~13\ = CARRY((\datapath|alien_grid[1][0].hitbox.up_left_x\(8) & !\datapath|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alien_grid[1][0].hitbox.up_left_x\(8),
	datad => VCC,
	cin => \datapath|Add3~11\,
	combout => \datapath|Add3~12_combout\,
	cout => \datapath|Add3~13\);

-- Location: LCFF_X31_Y11_N19
\datapath|alien_grid[1][0].hitbox.up_left_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add3~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(8));

-- Location: LCCOMB_X31_Y11_N20
\datapath|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add3~14_combout\ = \datapath|alien_grid[1][0].hitbox.up_left_x\(9) $ (\datapath|Add3~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[1][0].hitbox.up_left_x\(9),
	cin => \datapath|Add3~13\,
	combout => \datapath|Add3~14_combout\);

-- Location: LCFF_X31_Y11_N21
\datapath|alien_grid[1][0].hitbox.up_left_x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Add3~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \game_tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alien_grid[1][0].hitbox.up_left_x\(9));

-- Location: LCCOMB_X30_Y11_N26
\datapath|Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux38~1_combout\ = (\datapath|Mux38~0_combout\ & ((\datapath|alien_grid[3][0].hitbox.up_left_x\(9)) # ((!\datapath|rendered_column\(0))))) # (!\datapath|Mux38~0_combout\ & (((\datapath|rendered_column\(0) & 
-- \datapath|alien_grid[1][0].hitbox.up_left_x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alien_grid[3][0].hitbox.up_left_x\(9),
	datab => \datapath|Mux38~0_combout\,
	datac => \datapath|rendered_column\(0),
	datad => \datapath|alien_grid[1][0].hitbox.up_left_x\(9),
	combout => \datapath|Mux38~1_combout\);

-- Location: LCCOMB_X29_Y10_N8
\datapath|Mux38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux38~2_combout\ = (\datapath|rendered_column\(2) & (\datapath|alien_grid[4][0].hitbox.up_left_x\(9))) # (!\datapath|rendered_column\(2) & ((\datapath|Mux38~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|rendered_column\(2),
	datab => \datapath|alien_grid[4][0].hitbox.up_left_x\(9),
	datad => \datapath|Mux38~1_combout\,
	combout => \datapath|Mux38~2_combout\);

-- Location: LCFF_X29_Y10_N9
\datapath|HITBOX.up_left_x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \datapath|Mux38~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|HITBOX.up_left_x\(9));

-- Location: LCFF_X22_Y10_N31
\view|reg_hitbox.up_left_x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \datapath|HITBOX.up_left_x\(9),
	sload => VCC,
	ena => \view|reg_hitbox.size_y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|reg_hitbox.up_left_x\(9));

-- Location: LCCOMB_X22_Y10_N22
\view|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~10_combout\ = (\view|reg_hitbox.up_left_x\(5) & ((\view|column\(5) & (\view|Add4~9\ & VCC)) # (!\view|column\(5) & (!\view|Add4~9\)))) # (!\view|reg_hitbox.up_left_x\(5) & ((\view|column\(5) & (!\view|Add4~9\)) # (!\view|column\(5) & 
-- ((\view|Add4~9\) # (GND)))))
-- \view|Add4~11\ = CARRY((\view|reg_hitbox.up_left_x\(5) & (!\view|column\(5) & !\view|Add4~9\)) # (!\view|reg_hitbox.up_left_x\(5) & ((!\view|Add4~9\) # (!\view|column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.up_left_x\(5),
	datab => \view|column\(5),
	datad => VCC,
	cin => \view|Add4~9\,
	combout => \view|Add4~10_combout\,
	cout => \view|Add4~11\);

-- Location: LCCOMB_X22_Y10_N26
\view|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~14_combout\ = (\view|reg_hitbox.up_left_x\(7) & ((\view|column\(7) & (\view|Add4~13\ & VCC)) # (!\view|column\(7) & (!\view|Add4~13\)))) # (!\view|reg_hitbox.up_left_x\(7) & ((\view|column\(7) & (!\view|Add4~13\)) # (!\view|column\(7) & 
-- ((\view|Add4~13\) # (GND)))))
-- \view|Add4~15\ = CARRY((\view|reg_hitbox.up_left_x\(7) & (!\view|column\(7) & !\view|Add4~13\)) # (!\view|reg_hitbox.up_left_x\(7) & ((!\view|Add4~13\) # (!\view|column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.up_left_x\(7),
	datab => \view|column\(7),
	datad => VCC,
	cin => \view|Add4~13\,
	combout => \view|Add4~14_combout\,
	cout => \view|Add4~15\);

-- Location: LCCOMB_X22_Y10_N28
\view|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~16_combout\ = ((\view|reg_hitbox.up_left_x\(8) $ (\view|column\(8) $ (!\view|Add4~15\)))) # (GND)
-- \view|Add4~17\ = CARRY((\view|reg_hitbox.up_left_x\(8) & ((\view|column\(8)) # (!\view|Add4~15\))) # (!\view|reg_hitbox.up_left_x\(8) & (\view|column\(8) & !\view|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.up_left_x\(8),
	datab => \view|column\(8),
	datad => VCC,
	cin => \view|Add4~15\,
	combout => \view|Add4~16_combout\,
	cout => \view|Add4~17\);

-- Location: LCCOMB_X22_Y10_N30
\view|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~18_combout\ = \view|reg_hitbox.up_left_x\(9) $ (\view|Add4~17\ $ (\view|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|reg_hitbox.up_left_x\(9),
	datad => \view|column\(9),
	cin => \view|Add4~17\,
	combout => \view|Add4~18_combout\);

-- Location: LCCOMB_X22_Y10_N4
\view|FB_X0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_X0~2_combout\ = (\view|state.DRAWING~regout\ & \view|Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.DRAWING~regout\,
	datad => \view|Add4~18_combout\,
	combout => \view|FB_X0~2_combout\);

-- Location: LCCOMB_X21_Y10_N4
\view|FB_X0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_X0~3_combout\ = (\view|FB_X0~2_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|FB_X0~2_combout\,
	combout => \view|FB_X0~3_combout\);

-- Location: LCFF_X21_Y10_N5
\view|FB_X0[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|FB_X0~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(9));

-- Location: LCCOMB_X21_Y10_N10
\vga|x_end~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~0_combout\ = (\view|FB_X0\(9) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|FB_X0\(9),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~0_combout\);

-- Location: LCFF_X21_Y10_N11
\vga|x_end[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~0_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(9));

-- Location: LCCOMB_X20_Y9_N10
\vga|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~1_combout\ = (\vga|x_cursor\(9) & (\vga|x_end\(9) & (\vga|x_cursor\(0) $ (!\vga|x_start\(0))))) # (!\vga|x_cursor\(9) & (!\vga|x_end\(9) & (\vga|x_cursor\(0) $ (!\vga|x_start\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(9),
	datab => \vga|x_cursor\(0),
	datac => \vga|x_end\(9),
	datad => \vga|x_start\(0),
	combout => \vga|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y9_N2
\vga|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~5_combout\ = (\vga|Equal2~4_combout\ & (\vga|Equal2~3_combout\ & (\vga|Equal2~2_combout\ & \vga|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal2~4_combout\,
	datab => \vga|Equal2~3_combout\,
	datac => \vga|Equal2~2_combout\,
	datad => \vga|Equal2~1_combout\,
	combout => \vga|Equal2~5_combout\);

-- Location: LCCOMB_X18_Y9_N2
\vga|substate.DRAWING_R2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING_R2~1_combout\ = ((\vga|substate.INIT~regout\ & ((\vga|state.IDLE~regout\) # (\vga|state.DRAWING_RECT~regout\)))) # (!\RESET_N~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.IDLE~regout\,
	datab => \vga|substate.INIT~regout\,
	datac => \RESET_N~regout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|substate.DRAWING_R2~1_combout\);

-- Location: LCCOMB_X18_Y9_N4
\vga|substate.DRAWING_R2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING_R2~2_combout\ = (\vga|substate.DRAWING_R2~regout\ & ((\vga|substate.DRAWING_R2~1_combout\) # ((\view|Selector69~0_combout\ & !\vga|state.DRAWING_RECT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R2~regout\,
	datab => \vga|substate.DRAWING_R2~1_combout\,
	datac => \view|Selector69~0_combout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|substate.DRAWING_R2~2_combout\);

-- Location: LCCOMB_X19_Y9_N30
\vga|substate.DRAWING_R2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING_R2~0_combout\ = (\vga|Equal1~5_combout\ & (\vga|vga_fb|SRAM_WE_N~0_combout\ & (\vga|substate.INIT~regout\ & \vga|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~5_combout\,
	datab => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datac => \vga|substate.INIT~regout\,
	datad => \vga|Equal0~6_combout\,
	combout => \vga|substate.DRAWING_R2~0_combout\);

-- Location: LCCOMB_X18_Y9_N12
\vga|substate.DRAWING_R2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING_R2~3_combout\ = (\vga|substate.DRAWING_R2~2_combout\) # ((\RESET_N~regout\ & (\vga|x_cursor[3]~12_combout\ & \vga|substate.DRAWING_R2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~regout\,
	datab => \vga|x_cursor[3]~12_combout\,
	datac => \vga|substate.DRAWING_R2~2_combout\,
	datad => \vga|substate.DRAWING_R2~0_combout\,
	combout => \vga|substate.DRAWING_R2~3_combout\);

-- Location: LCFF_X18_Y9_N13
\vga|substate.DRAWING_R2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|substate.DRAWING_R2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|substate.DRAWING_R2~regout\);

-- Location: LCCOMB_X22_Y10_N6
\view|Selector77~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector77~1_combout\ = (\view|Add4~14_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Add4~14_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector77~1_combout\);

-- Location: LCCOMB_X21_Y10_N24
\view|Selector77~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector77~2_combout\ = (\view|Selector77~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Selector77~1_combout\,
	combout => \view|Selector77~2_combout\);

-- Location: LCFF_X21_Y10_N25
\view|FB_X0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector77~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(7));

-- Location: LCCOMB_X21_Y10_N22
\vga|x_start~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~2_combout\ = (\view|FB_X0\(7) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|FB_X0\(7),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~2_combout\);

-- Location: LCFF_X21_Y10_N23
\vga|x_start[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~2_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(7));

-- Location: LCCOMB_X21_Y9_N8
\vga|x_cursor[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[4]~26_combout\ = (\vga|x_cursor\(4) & ((GND) # (!\vga|x_cursor[3]~25\))) # (!\vga|x_cursor\(4) & (\vga|x_cursor[3]~25\ $ (GND)))
-- \vga|x_cursor[4]~27\ = CARRY((\vga|x_cursor\(4)) # (!\vga|x_cursor[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(4),
	datad => VCC,
	cin => \vga|x_cursor[3]~25\,
	combout => \vga|x_cursor[4]~26_combout\,
	cout => \vga|x_cursor[4]~27\);

-- Location: LCCOMB_X22_Y9_N4
\vga|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~3_combout\ = (\vga|x_cursor\(1) & (!\vga|Add1~1\)) # (!\vga|x_cursor\(1) & ((\vga|Add1~1\) # (GND)))
-- \vga|Add1~4\ = CARRY((!\vga|Add1~1\) # (!\vga|x_cursor\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(1),
	datad => VCC,
	cin => \vga|Add1~1\,
	combout => \vga|Add1~3_combout\,
	cout => \vga|Add1~4\);

-- Location: LCCOMB_X22_Y9_N10
\vga|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~12_combout\ = (\vga|x_cursor\(4) & (\vga|Add1~10\ $ (GND))) # (!\vga|x_cursor\(4) & (!\vga|Add1~10\ & VCC))
-- \vga|Add1~13\ = CARRY((\vga|x_cursor\(4) & !\vga|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(4),
	datad => VCC,
	cin => \vga|Add1~10\,
	combout => \vga|Add1~12_combout\,
	cout => \vga|Add1~13\);

-- Location: LCCOMB_X21_Y9_N26
\vga|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~14_combout\ = (\vga|x_cursor[3]~13_combout\ & (\vga|Add1~12_combout\)) # (!\vga|x_cursor[3]~13_combout\ & ((\vga|x_start\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[3]~13_combout\,
	datac => \vga|Add1~12_combout\,
	datad => \vga|x_start\(4),
	combout => \vga|Add1~14_combout\);

-- Location: LCFF_X21_Y9_N9
\vga|x_cursor[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[4]~26_combout\,
	sdata => \vga|Add1~14_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(4));

-- Location: LCCOMB_X21_Y9_N10
\vga|x_cursor[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[5]~28_combout\ = (\vga|x_cursor\(5) & (\vga|x_cursor[4]~27\ & VCC)) # (!\vga|x_cursor\(5) & (!\vga|x_cursor[4]~27\))
-- \vga|x_cursor[5]~29\ = CARRY((!\vga|x_cursor\(5) & !\vga|x_cursor[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(5),
	datad => VCC,
	cin => \vga|x_cursor[4]~27\,
	combout => \vga|x_cursor[5]~28_combout\,
	cout => \vga|x_cursor[5]~29\);

-- Location: LCCOMB_X21_Y9_N12
\vga|x_cursor[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[6]~30_combout\ = (\vga|x_cursor\(6) & ((GND) # (!\vga|x_cursor[5]~29\))) # (!\vga|x_cursor\(6) & (\vga|x_cursor[5]~29\ $ (GND)))
-- \vga|x_cursor[6]~31\ = CARRY((\vga|x_cursor\(6)) # (!\vga|x_cursor[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(6),
	datad => VCC,
	cin => \vga|x_cursor[5]~29\,
	combout => \vga|x_cursor[6]~30_combout\,
	cout => \vga|x_cursor[6]~31\);

-- Location: LCCOMB_X21_Y9_N14
\vga|x_cursor[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[7]~32_combout\ = (\vga|x_cursor\(7) & (\vga|x_cursor[6]~31\ & VCC)) # (!\vga|x_cursor\(7) & (!\vga|x_cursor[6]~31\))
-- \vga|x_cursor[7]~33\ = CARRY((!\vga|x_cursor\(7) & !\vga|x_cursor[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(7),
	datad => VCC,
	cin => \vga|x_cursor[6]~31\,
	combout => \vga|x_cursor[7]~32_combout\,
	cout => \vga|x_cursor[7]~33\);

-- Location: LCCOMB_X22_Y9_N12
\vga|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~15_combout\ = (\vga|x_cursor\(5) & (!\vga|Add1~13\)) # (!\vga|x_cursor\(5) & ((\vga|Add1~13\) # (GND)))
-- \vga|Add1~16\ = CARRY((!\vga|Add1~13\) # (!\vga|x_cursor\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(5),
	datad => VCC,
	cin => \vga|Add1~13\,
	combout => \vga|Add1~15_combout\,
	cout => \vga|Add1~16\);

-- Location: LCCOMB_X22_Y9_N14
\vga|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~18_combout\ = (\vga|x_cursor\(6) & (\vga|Add1~16\ $ (GND))) # (!\vga|x_cursor\(6) & (!\vga|Add1~16\ & VCC))
-- \vga|Add1~19\ = CARRY((\vga|x_cursor\(6) & !\vga|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(6),
	datad => VCC,
	cin => \vga|Add1~16\,
	combout => \vga|Add1~18_combout\,
	cout => \vga|Add1~19\);

-- Location: LCCOMB_X22_Y9_N16
\vga|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~21_combout\ = (\vga|x_cursor\(7) & (!\vga|Add1~19\)) # (!\vga|x_cursor\(7) & ((\vga|Add1~19\) # (GND)))
-- \vga|Add1~22\ = CARRY((!\vga|Add1~19\) # (!\vga|x_cursor\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(7),
	datad => VCC,
	cin => \vga|Add1~19\,
	combout => \vga|Add1~21_combout\,
	cout => \vga|Add1~22\);

-- Location: LCCOMB_X22_Y9_N0
\vga|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~23_combout\ = (\vga|x_cursor[3]~13_combout\ & (\vga|Add1~21_combout\)) # (!\vga|x_cursor[3]~13_combout\ & ((\vga|x_start\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[3]~13_combout\,
	datac => \vga|Add1~21_combout\,
	datad => \vga|x_start\(7),
	combout => \vga|Add1~23_combout\);

-- Location: LCFF_X21_Y9_N15
\vga|x_cursor[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[7]~32_combout\,
	sdata => \vga|Add1~23_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(7));

-- Location: LCCOMB_X20_Y10_N14
\view|Selector76~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector76~1_combout\ = (\view|Add4~16_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add4~16_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector76~1_combout\);

-- Location: LCCOMB_X21_Y10_N30
\view|Selector76~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector76~2_combout\ = (\view|Selector76~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Selector76~1_combout\,
	combout => \view|Selector76~2_combout\);

-- Location: LCFF_X21_Y10_N31
\view|FB_X0[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector76~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(8));

-- Location: LCCOMB_X21_Y10_N12
\vga|x_start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~1_combout\ = (\view|FB_X0\(8) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X0\(8),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~1_combout\);

-- Location: LCFF_X21_Y10_N13
\vga|x_start[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~1_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(8));

-- Location: LCCOMB_X22_Y9_N26
\vga|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~26_combout\ = (\vga|x_cursor[3]~13_combout\ & ((\vga|Add1~24_combout\))) # (!\vga|x_cursor[3]~13_combout\ & (\vga|x_start\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_start\(8),
	datac => \vga|x_cursor[3]~13_combout\,
	datad => \vga|Add1~24_combout\,
	combout => \vga|Add1~26_combout\);

-- Location: LCFF_X21_Y9_N17
\vga|x_cursor[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[8]~34_combout\,
	sdata => \vga|Add1~26_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(8));

-- Location: LCCOMB_X21_Y10_N16
\vga|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~0_combout\ = (\vga|x_cursor\(7) & (\vga|x_start\(7) & (\vga|x_cursor\(8) $ (!\vga|x_start\(8))))) # (!\vga|x_cursor\(7) & (!\vga|x_start\(7) & (\vga|x_cursor\(8) $ (!\vga|x_start\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(7),
	datab => \vga|x_start\(7),
	datac => \vga|x_cursor\(8),
	datad => \vga|x_start\(8),
	combout => \vga|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y9_N12
\vga|x_cursor[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~17_combout\ = (!\vga|substate.DRAWING_R1~regout\ & (\vga|substate.DRAWING_R2~regout\ & ((!\vga|Equal2~0_combout\) # (!\vga|Equal2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datab => \vga|Equal2~5_combout\,
	datac => \vga|substate.DRAWING_R2~regout\,
	datad => \vga|Equal2~0_combout\,
	combout => \vga|x_cursor[0]~17_combout\);

-- Location: LCCOMB_X19_Y9_N2
\vga|x_cursor[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~18_combout\ = ((\vga|x_cursor[0]~17_combout\) # ((\vga|substate.DRAWING_R1~regout\ & !\vga|Equal0~6_combout\))) # (!\vga|state.DRAWING_RECT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datab => \vga|state.DRAWING_RECT~regout\,
	datac => \vga|x_cursor[0]~17_combout\,
	datad => \vga|Equal0~6_combout\,
	combout => \vga|x_cursor[0]~18_combout\);

-- Location: LCCOMB_X19_Y9_N10
\vga|x_cursor[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~15_combout\ = (\RESET_N~regout\ & \vga|state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET_N~regout\,
	datad => \vga|state.IDLE~regout\,
	combout => \vga|x_cursor[0]~15_combout\);

-- Location: LCCOMB_X19_Y11_N2
\vga|x_cursor[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~16_combout\ = ((!\vga|state.FILLING_RECT~regout\ & !\vga|state.DRAWING_RECT~regout\)) # (!\vga|substate.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.FILLING_RECT~regout\,
	datab => \vga|substate.INIT~regout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|x_cursor[0]~16_combout\);

-- Location: LCCOMB_X21_Y9_N28
\vga|x_cursor[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~19_combout\ = (\vga|x_cursor[0]~15_combout\ & ((\vga|x_cursor[0]~16_combout\) # ((\vga|vga_fb|SRAM_WE_N~0_combout\ & \vga|x_cursor[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datab => \vga|x_cursor[0]~18_combout\,
	datac => \vga|x_cursor[0]~15_combout\,
	datad => \vga|x_cursor[0]~16_combout\,
	combout => \vga|x_cursor[0]~19_combout\);

-- Location: LCFF_X21_Y9_N1
\vga|x_cursor[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[0]~10_combout\,
	sdata => \vga|Add1~2_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(0));

-- Location: LCCOMB_X22_Y9_N30
\vga|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~5_combout\ = (\vga|x_cursor[3]~13_combout\ & (\vga|Add1~3_combout\)) # (!\vga|x_cursor[3]~13_combout\ & ((\vga|x_start\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[3]~13_combout\,
	datac => \vga|Add1~3_combout\,
	datad => \vga|x_start\(1),
	combout => \vga|Add1~5_combout\);

-- Location: LCFF_X21_Y9_N3
\vga|x_cursor[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[1]~20_combout\,
	sdata => \vga|Add1~5_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(1));

-- Location: LCCOMB_X23_Y10_N2
\view|Selector84~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector84~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add4~0_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~0_combout\,
	datac => \view|Selector94~0_combout\,
	datad => \view|state.INIT~regout\,
	combout => \view|Selector84~0_combout\);

-- Location: LCFF_X23_Y10_N3
\view|FB_X1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector84~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(0));

-- Location: LCCOMB_X23_Y10_N20
\vga|x_end~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~3_combout\ = (\view|FB_X1\(0)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X1\(0),
	datac => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~3_combout\);

-- Location: LCFF_X20_Y9_N19
\vga|x_end[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|x_end~3_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(0));

-- Location: LCCOMB_X20_Y10_N20
\view|Selector83~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector83~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add4~2_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Add4~2_combout\,
	datac => \view|state.INIT~regout\,
	datad => \view|Selector94~0_combout\,
	combout => \view|Selector83~0_combout\);

-- Location: LCFF_X20_Y10_N21
\view|FB_X1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector83~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(1));

-- Location: LCCOMB_X20_Y9_N0
\vga|x_end~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~2_combout\ = (\view|FB_X1\(1)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|FB_X1\(1),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~2_combout\);

-- Location: LCFF_X20_Y9_N1
\vga|x_end[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~2_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(1));

-- Location: LCCOMB_X20_Y9_N18
\vga|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~1_combout\ = (\vga|x_cursor\(0) & (\vga|x_end\(0) & (\vga|x_cursor\(1) $ (!\vga|x_end\(1))))) # (!\vga|x_cursor\(0) & (!\vga|x_end\(0) & (\vga|x_cursor\(1) $ (!\vga|x_end\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(0),
	datab => \vga|x_cursor\(1),
	datac => \vga|x_end\(0),
	datad => \vga|x_end\(1),
	combout => \vga|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y10_N22
\view|Selector82~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector82~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add4~4_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~4_combout\,
	datab => \view|state.INIT~regout\,
	datad => \view|Selector94~0_combout\,
	combout => \view|Selector82~0_combout\);

-- Location: LCFF_X20_Y10_N23
\view|FB_X1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector82~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(2));

-- Location: LCCOMB_X20_Y9_N30
\vga|x_end~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~5_combout\ = (\view|FB_X1\(2)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X1\(2),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~5_combout\);

-- Location: LCFF_X20_Y9_N31
\vga|x_end[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~5_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(2));

-- Location: LCCOMB_X19_Y10_N4
\vga|x_end~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~4_combout\ = (\view|FB_X1\(3)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_X1\(3),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~4_combout\);

-- Location: LCFF_X20_Y9_N5
\vga|x_end[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|x_end~4_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(3));

-- Location: LCCOMB_X20_Y9_N4
\vga|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~2_combout\ = (\vga|x_cursor\(3) & (\vga|x_end\(3) & (\vga|x_end\(2) $ (!\vga|x_cursor\(2))))) # (!\vga|x_cursor\(3) & (!\vga|x_end\(3) & (\vga|x_end\(2) $ (!\vga|x_cursor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(3),
	datab => \vga|x_end\(2),
	datac => \vga|x_end\(3),
	datad => \vga|x_cursor\(2),
	combout => \vga|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y10_N10
\view|Selector79~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector79~1_combout\ = (\view|Add4~10_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Add4~10_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector79~1_combout\);

-- Location: LCCOMB_X21_Y11_N0
\view|Selector79~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector79~2_combout\ = (\view|Selector79~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~20_combout\) # (\view|Mux32~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Selector79~1_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Mux32~17_combout\,
	combout => \view|Selector79~2_combout\);

-- Location: LCFF_X21_Y11_N1
\view|FB_X0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector79~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X0\(5));

-- Location: LCCOMB_X21_Y11_N10
\vga|x_start~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~8_combout\ = (\view|FB_X0\(5) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X0\(5),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~8_combout\);

-- Location: LCFF_X21_Y11_N11
\vga|x_start[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~8_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(5));

-- Location: LCCOMB_X21_Y9_N20
\vga|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~17_combout\ = (\vga|x_cursor[3]~13_combout\ & (\vga|Add1~15_combout\)) # (!\vga|x_cursor[3]~13_combout\ & ((\vga|x_start\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[3]~13_combout\,
	datac => \vga|Add1~15_combout\,
	datad => \vga|x_start\(5),
	combout => \vga|Add1~17_combout\);

-- Location: LCFF_X21_Y9_N11
\vga|x_cursor[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[5]~28_combout\,
	sdata => \vga|Add1~17_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(5));

-- Location: LCCOMB_X23_Y10_N30
\view|Selector80~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector80~0_combout\ = (\view|state.INIT~regout\) # ((\view|Selector94~0_combout\ & \view|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Selector94~0_combout\,
	datac => \view|Add4~8_combout\,
	datad => \view|state.INIT~regout\,
	combout => \view|Selector80~0_combout\);

-- Location: LCFF_X23_Y10_N31
\view|FB_X1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector80~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_X1\(4));

-- Location: LCCOMB_X23_Y10_N8
\vga|x_end~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~7_combout\ = (\view|FB_X1\(4)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_X1\(4),
	datac => \view|FB_CLEAR~regout\,
	combout => \vga|x_end~7_combout\);

-- Location: LCFF_X20_Y9_N27
\vga|x_end[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|x_end~7_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(4));

-- Location: LCCOMB_X20_Y9_N26
\vga|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~3_combout\ = (\vga|x_end\(5) & (\vga|x_cursor\(5) & (\vga|x_end\(4) $ (!\vga|x_cursor\(4))))) # (!\vga|x_end\(5) & (!\vga|x_cursor\(5) & (\vga|x_end\(4) $ (!\vga|x_cursor\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_end\(5),
	datab => \vga|x_cursor\(5),
	datac => \vga|x_end\(4),
	datad => \vga|x_cursor\(4),
	combout => \vga|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y9_N8
\vga|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~5_combout\ = (\vga|Equal0~4_combout\ & (\vga|Equal0~1_combout\ & (\vga|Equal0~2_combout\ & \vga|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal0~4_combout\,
	datab => \vga|Equal0~1_combout\,
	datac => \vga|Equal0~2_combout\,
	datad => \vga|Equal0~3_combout\,
	combout => \vga|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y11_N10
\vga|y_cursor[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[0]~9_combout\ = \vga|y_cursor\(0) $ (VCC)
-- \vga|y_cursor[0]~10\ = CARRY(\vga|y_cursor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(0),
	datad => VCC,
	combout => \vga|y_cursor[0]~9_combout\,
	cout => \vga|y_cursor[0]~10\);

-- Location: LCCOMB_X19_Y11_N12
\vga|y_cursor[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[1]~18_combout\ = (\vga|y_cursor\(1) & (\vga|y_cursor[0]~10\ & VCC)) # (!\vga|y_cursor\(1) & (!\vga|y_cursor[0]~10\))
-- \vga|y_cursor[1]~19\ = CARRY((!\vga|y_cursor\(1) & !\vga|y_cursor[0]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(1),
	datad => VCC,
	cin => \vga|y_cursor[0]~10\,
	combout => \vga|y_cursor[1]~18_combout\,
	cout => \vga|y_cursor[1]~19\);

-- Location: LCCOMB_X19_Y11_N14
\vga|y_cursor[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[2]~20_combout\ = (\vga|y_cursor\(2) & ((GND) # (!\vga|y_cursor[1]~19\))) # (!\vga|y_cursor\(2) & (\vga|y_cursor[1]~19\ $ (GND)))
-- \vga|y_cursor[2]~21\ = CARRY((\vga|y_cursor\(2)) # (!\vga|y_cursor[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(2),
	datad => VCC,
	cin => \vga|y_cursor[1]~19\,
	combout => \vga|y_cursor[2]~20_combout\,
	cout => \vga|y_cursor[2]~21\);

-- Location: LCCOMB_X24_Y11_N2
\view|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~0_combout\ = (\view|reg_hitbox.size_y\(0) & (\view|row\(0) & VCC)) # (!\view|reg_hitbox.size_y\(0) & (\view|row\(0) $ (VCC)))
-- \view|Add5~1\ = CARRY((!\view|reg_hitbox.size_y\(0) & \view|row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|reg_hitbox.size_y\(0),
	datab => \view|row\(0),
	datad => VCC,
	combout => \view|Add5~0_combout\,
	cout => \view|Add5~1\);

-- Location: LCCOMB_X24_Y11_N4
\view|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~2_combout\ = (\view|row\(1) & (!\view|Add5~1\)) # (!\view|row\(1) & ((\view|Add5~1\) # (GND)))
-- \view|Add5~3\ = CARRY((!\view|Add5~1\) # (!\view|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(1),
	datad => VCC,
	cin => \view|Add5~1\,
	combout => \view|Add5~2_combout\,
	cout => \view|Add5~3\);

-- Location: LCCOMB_X24_Y11_N6
\view|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~4_combout\ = (\view|row\(2) & (\view|Add5~3\ $ (GND))) # (!\view|row\(2) & (!\view|Add5~3\ & VCC))
-- \view|Add5~5\ = CARRY((\view|row\(2) & !\view|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(2),
	datad => VCC,
	cin => \view|Add5~3\,
	combout => \view|Add5~4_combout\,
	cout => \view|Add5~5\);

-- Location: LCCOMB_X18_Y10_N24
\view|Selector90~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector90~1_combout\ = (\view|state.DRAWING~regout\ & \view|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.DRAWING~regout\,
	datad => \view|Add5~4_combout\,
	combout => \view|Selector90~1_combout\);

-- Location: LCCOMB_X18_Y10_N28
\view|Selector90~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector90~2_combout\ = (\view|Selector90~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Selector90~1_combout\,
	datad => \view|Mux32~20_combout\,
	combout => \view|Selector90~2_combout\);

-- Location: LCFF_X18_Y10_N29
\view|FB_Y0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector90~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(2));

-- Location: LCCOMB_X18_Y10_N2
\vga|y_start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~1_combout\ = (\view|FB_Y0\(2) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_Y0\(2),
	datac => \view|FB_CLEAR~regout\,
	combout => \vga|y_start~1_combout\);

-- Location: LCFF_X18_Y10_N3
\vga|y_start[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~1_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(2));

-- Location: LCCOMB_X18_Y10_N26
\view|Selector91~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector91~1_combout\ = (\view|state.DRAWING~regout\ & \view|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.DRAWING~regout\,
	datad => \view|Add5~2_combout\,
	combout => \view|Selector91~1_combout\);

-- Location: LCCOMB_X18_Y10_N30
\view|Selector91~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector91~2_combout\ = (\view|Selector91~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Selector91~1_combout\,
	datac => \view|Mux32~17_combout\,
	datad => \view|Mux32~20_combout\,
	combout => \view|Selector91~2_combout\);

-- Location: LCFF_X18_Y10_N31
\view|FB_Y0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector91~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(1));

-- Location: LCCOMB_X18_Y10_N20
\vga|y_start~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~2_combout\ = (\view|FB_Y0\(1) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_Y0\(1),
	datac => \view|FB_CLEAR~regout\,
	combout => \vga|y_start~2_combout\);

-- Location: LCFF_X18_Y10_N21
\vga|y_start[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~2_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(1));

-- Location: LCCOMB_X19_Y11_N28
\vga|y_cursor[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[8]~11_combout\ = (\vga|state.DRAWING_RECT~regout\ & ((\vga|substate.DRAWING_R1~regout\))) # (!\vga|state.DRAWING_RECT~regout\ & (\vga|substate.INIT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|substate.INIT~regout\,
	datac => \vga|substate.DRAWING_R1~regout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|y_cursor[8]~11_combout\);

-- Location: LCCOMB_X18_Y10_N0
\vga|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~5_combout\ = (\vga|y_cursor[8]~11_combout\ & (\vga|Add0~3_combout\)) # (!\vga|y_cursor[8]~11_combout\ & ((\vga|y_start\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add0~3_combout\,
	datac => \vga|y_start\(1),
	datad => \vga|y_cursor[8]~11_combout\,
	combout => \vga|Add0~5_combout\);

-- Location: LCCOMB_X19_Y9_N28
\vga|y_cursor[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[0]~12_combout\ = ((\vga|Equal0~6_combout\ & (\vga|vga_fb|SRAM_WE_N~0_combout\ & !\vga|Equal1~5_combout\))) # (!\vga|state.FILLING_RECT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.FILLING_RECT~regout\,
	datab => \vga|Equal0~6_combout\,
	datac => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datad => \vga|Equal1~5_combout\,
	combout => \vga|y_cursor[0]~12_combout\);

-- Location: LCCOMB_X20_Y9_N22
\vga|y_cursor[8]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[8]~13_combout\ = (!\vga|substate.DRAWING_R1~regout\ & (\vga|Equal2~5_combout\ & (\vga|substate.DRAWING_R2~regout\ & \vga|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datab => \vga|Equal2~5_combout\,
	datac => \vga|substate.DRAWING_R2~regout\,
	datad => \vga|Equal2~0_combout\,
	combout => \vga|y_cursor[8]~13_combout\);

-- Location: LCCOMB_X19_Y9_N6
\vga|y_cursor[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[8]~14_combout\ = (\vga|vga_fb|SRAM_WE_N~0_combout\ & ((\vga|y_cursor[8]~13_combout\) # ((\vga|substate.DRAWING_R1~regout\ & \vga|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datab => \vga|Equal0~6_combout\,
	datac => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datad => \vga|y_cursor[8]~13_combout\,
	combout => \vga|y_cursor[8]~14_combout\);

-- Location: LCCOMB_X19_Y11_N24
\vga|y_cursor[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[7]~30_combout\ = (\vga|y_cursor\(7) & (\vga|y_cursor[6]~29\ & VCC)) # (!\vga|y_cursor\(7) & (!\vga|y_cursor[6]~29\))
-- \vga|y_cursor[7]~31\ = CARRY((!\vga|y_cursor\(7) & !\vga|y_cursor[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(7),
	datad => VCC,
	cin => \vga|y_cursor[6]~29\,
	combout => \vga|y_cursor[7]~30_combout\,
	cout => \vga|y_cursor[7]~31\);

-- Location: LCCOMB_X19_Y11_N20
\vga|y_cursor[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[5]~26_combout\ = (\vga|y_cursor\(5) & (\vga|y_cursor[4]~25\ & VCC)) # (!\vga|y_cursor\(5) & (!\vga|y_cursor[4]~25\))
-- \vga|y_cursor[5]~27\ = CARRY((!\vga|y_cursor\(5) & !\vga|y_cursor[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(5),
	datad => VCC,
	cin => \vga|y_cursor[4]~25\,
	combout => \vga|y_cursor[5]~26_combout\,
	cout => \vga|y_cursor[5]~27\);

-- Location: LCCOMB_X24_Y11_N8
\view|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~6_combout\ = (\view|row\(3) & (!\view|Add5~5\)) # (!\view|row\(3) & ((\view|Add5~5\) # (GND)))
-- \view|Add5~7\ = CARRY((!\view|Add5~5\) # (!\view|row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(3),
	datad => VCC,
	cin => \view|Add5~5\,
	combout => \view|Add5~6_combout\,
	cout => \view|Add5~7\);

-- Location: LCCOMB_X24_Y11_N10
\view|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~8_combout\ = (\view|row\(4) & (\view|Add5~7\ $ (GND))) # (!\view|row\(4) & (!\view|Add5~7\ & VCC))
-- \view|Add5~9\ = CARRY((\view|row\(4) & !\view|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(4),
	datad => VCC,
	cin => \view|Add5~7\,
	combout => \view|Add5~8_combout\,
	cout => \view|Add5~9\);

-- Location: LCCOMB_X24_Y11_N12
\view|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~10_combout\ = (\view|row\(5) & (!\view|Add5~9\)) # (!\view|row\(5) & ((\view|Add5~9\) # (GND)))
-- \view|Add5~11\ = CARRY((!\view|Add5~9\) # (!\view|row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(5),
	datad => VCC,
	cin => \view|Add5~9\,
	combout => \view|Add5~10_combout\,
	cout => \view|Add5~11\);

-- Location: LCCOMB_X21_Y11_N16
\view|FB_Y0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_Y0~2_combout\ = (\view|state.DRAWING~regout\ & \view|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.DRAWING~regout\,
	datad => \view|Add5~10_combout\,
	combout => \view|FB_Y0~2_combout\);

-- Location: LCCOMB_X21_Y11_N4
\view|FB_Y0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_Y0~3_combout\ = (\view|FB_Y0~2_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|FB_Y0~2_combout\,
	combout => \view|FB_Y0~3_combout\);

-- Location: LCFF_X21_Y11_N5
\view|FB_Y0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|FB_Y0~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(5));

-- Location: LCCOMB_X20_Y11_N0
\vga|y_end~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~5_combout\ = (!\view|FB_CLEAR~regout\ & \view|FB_Y0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_CLEAR~regout\,
	datad => \view|FB_Y0\(5),
	combout => \vga|y_end~5_combout\);

-- Location: LCFF_X20_Y11_N1
\vga|y_end[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~5_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(5));

-- Location: LCCOMB_X18_Y11_N26
\vga|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~17_combout\ = (\vga|y_cursor[8]~11_combout\ & (\vga|Add0~15_combout\)) # (!\vga|y_cursor[8]~11_combout\ & ((\vga|y_end\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add0~15_combout\,
	datac => \vga|y_cursor[8]~11_combout\,
	datad => \vga|y_end\(5),
	combout => \vga|Add0~17_combout\);

-- Location: LCFF_X19_Y11_N21
\vga|y_cursor[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[5]~26_combout\,
	sdata => \vga|Add0~17_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(5));

-- Location: LCCOMB_X18_Y11_N4
\vga|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~6_combout\ = (\vga|y_cursor\(2) & (\vga|Add0~4\ $ (GND))) # (!\vga|y_cursor\(2) & (!\vga|Add0~4\ & VCC))
-- \vga|Add0~7\ = CARRY((\vga|y_cursor\(2) & !\vga|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(2),
	datad => VCC,
	cin => \vga|Add0~4\,
	combout => \vga|Add0~6_combout\,
	cout => \vga|Add0~7\);

-- Location: LCCOMB_X18_Y11_N6
\vga|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~9_combout\ = (\vga|y_cursor\(3) & (!\vga|Add0~7\)) # (!\vga|y_cursor\(3) & ((\vga|Add0~7\) # (GND)))
-- \vga|Add0~10\ = CARRY((!\vga|Add0~7\) # (!\vga|y_cursor\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(3),
	datad => VCC,
	cin => \vga|Add0~7\,
	combout => \vga|Add0~9_combout\,
	cout => \vga|Add0~10\);

-- Location: LCCOMB_X18_Y11_N12
\vga|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~18_combout\ = (\vga|y_cursor\(6) & (\vga|Add0~16\ $ (GND))) # (!\vga|y_cursor\(6) & (!\vga|Add0~16\ & VCC))
-- \vga|Add0~19\ = CARRY((\vga|y_cursor\(6) & !\vga|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(6),
	datad => VCC,
	cin => \vga|Add0~16\,
	combout => \vga|Add0~18_combout\,
	cout => \vga|Add0~19\);

-- Location: LCCOMB_X18_Y11_N14
\vga|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~21_combout\ = (\vga|y_cursor\(7) & (!\vga|Add0~19\)) # (!\vga|y_cursor\(7) & ((\vga|Add0~19\) # (GND)))
-- \vga|Add0~22\ = CARRY((!\vga|Add0~19\) # (!\vga|y_cursor\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(7),
	datad => VCC,
	cin => \vga|Add0~19\,
	combout => \vga|Add0~21_combout\,
	cout => \vga|Add0~22\);

-- Location: LCCOMB_X24_Y11_N14
\view|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~12_combout\ = (\view|row\(6) & (\view|Add5~11\ $ (GND))) # (!\view|row\(6) & (!\view|Add5~11\ & VCC))
-- \view|Add5~13\ = CARRY((\view|row\(6) & !\view|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|row\(6),
	datad => VCC,
	cin => \view|Add5~11\,
	combout => \view|Add5~12_combout\,
	cout => \view|Add5~13\);

-- Location: LCCOMB_X24_Y11_N16
\view|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~14_combout\ = (\view|row\(7) & (!\view|Add5~13\)) # (!\view|row\(7) & ((\view|Add5~13\) # (GND)))
-- \view|Add5~15\ = CARRY((!\view|Add5~13\) # (!\view|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|row\(7),
	datad => VCC,
	cin => \view|Add5~13\,
	combout => \view|Add5~14_combout\,
	cout => \view|Add5~15\);

-- Location: LCCOMB_X21_Y11_N14
\view|Selector86~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector86~1_combout\ = (\view|state.DRAWING~regout\ & \view|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.DRAWING~regout\,
	datad => \view|Add5~14_combout\,
	combout => \view|Selector86~1_combout\);

-- Location: LCCOMB_X21_Y11_N12
\view|Selector86~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector86~2_combout\ = (\view|Selector86~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Selector86~1_combout\,
	combout => \view|Selector86~2_combout\);

-- Location: LCFF_X21_Y11_N13
\view|FB_Y0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector86~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(7));

-- Location: LCCOMB_X20_Y11_N8
\vga|y_start~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~5_combout\ = (\view|FB_Y0\(7) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_Y0\(7),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|y_start~5_combout\);

-- Location: LCFF_X20_Y11_N9
\vga|y_start[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~5_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(7));

-- Location: LCCOMB_X18_Y11_N30
\vga|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~23_combout\ = (\vga|y_cursor[8]~11_combout\ & (\vga|Add0~21_combout\)) # (!\vga|y_cursor[8]~11_combout\ & ((\vga|y_start\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor[8]~11_combout\,
	datac => \vga|Add0~21_combout\,
	datad => \vga|y_start\(7),
	combout => \vga|Add0~23_combout\);

-- Location: LCFF_X19_Y11_N25
\vga|y_cursor[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[7]~30_combout\,
	sdata => \vga|Add0~23_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(7));

-- Location: LCCOMB_X19_Y10_N22
\view|Selector87~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector87~1_combout\ = (\view|state.DRAWING~regout\ & \view|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.DRAWING~regout\,
	datac => \view|Add5~12_combout\,
	combout => \view|Selector87~1_combout\);

-- Location: LCCOMB_X19_Y10_N8
\view|Selector87~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector87~2_combout\ = (\view|Selector87~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Selector87~1_combout\,
	datac => \view|Mux32~17_combout\,
	datad => \view|Mux32~20_combout\,
	combout => \view|Selector87~2_combout\);

-- Location: LCFF_X19_Y10_N9
\view|FB_Y0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector87~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(6));

-- Location: LCCOMB_X19_Y10_N0
\vga|y_start~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~6_combout\ = (\view|FB_Y0\(6) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|FB_Y0\(6),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|y_start~6_combout\);

-- Location: LCFF_X19_Y10_N1
\vga|y_start[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~6_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(6));

-- Location: LCCOMB_X18_Y11_N22
\vga|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~3_combout\ = (\vga|y_cursor\(6) & (\vga|y_start\(6) & (\vga|y_cursor\(7) $ (!\vga|y_start\(7))))) # (!\vga|y_cursor\(6) & (!\vga|y_start\(6) & (\vga|y_cursor\(7) $ (!\vga|y_start\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(6),
	datab => \vga|y_cursor\(7),
	datac => \vga|y_start\(6),
	datad => \vga|y_start\(7),
	combout => \vga|Equal3~3_combout\);

-- Location: LCCOMB_X18_Y10_N22
\vga|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~1_combout\ = (\vga|y_start\(1) & (\vga|y_cursor\(1) & (\vga|y_start\(2) $ (!\vga|y_cursor\(2))))) # (!\vga|y_start\(1) & (!\vga|y_cursor\(1) & (\vga|y_start\(2) $ (!\vga|y_cursor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_start\(1),
	datab => \vga|y_start\(2),
	datac => \vga|y_cursor\(2),
	datad => \vga|y_cursor\(1),
	combout => \vga|Equal3~1_combout\);

-- Location: LCCOMB_X21_Y11_N2
\view|Selector88~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector88~1_combout\ = (\view|state.DRAWING~regout\ & \view|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.DRAWING~regout\,
	datad => \view|Add5~8_combout\,
	combout => \view|Selector88~1_combout\);

-- Location: LCCOMB_X21_Y11_N24
\view|Selector88~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector88~2_combout\ = (\view|Selector88~1_combout\ & ((\view|Mux32~20_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~20_combout\,
	datab => \view|Selector88~1_combout\,
	datac => \view|Mux32~17_combout\,
	datad => \view|Mux32~25_combout\,
	combout => \view|Selector88~2_combout\);

-- Location: LCFF_X21_Y11_N25
\view|FB_Y0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector88~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(4));

-- Location: LCCOMB_X20_Y11_N30
\vga|y_start~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~3_combout\ = (!\view|FB_CLEAR~regout\ & \view|FB_Y0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_CLEAR~regout\,
	datad => \view|FB_Y0\(4),
	combout => \vga|y_start~3_combout\);

-- Location: LCFF_X20_Y11_N31
\vga|y_start[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~3_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(4));

-- Location: LCCOMB_X19_Y11_N16
\vga|y_cursor[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[3]~22_combout\ = (\vga|y_cursor\(3) & (\vga|y_cursor[2]~21\ & VCC)) # (!\vga|y_cursor\(3) & (!\vga|y_cursor[2]~21\))
-- \vga|y_cursor[3]~23\ = CARRY((!\vga|y_cursor\(3) & !\vga|y_cursor[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(3),
	datad => VCC,
	cin => \vga|y_cursor[2]~21\,
	combout => \vga|y_cursor[3]~22_combout\,
	cout => \vga|y_cursor[3]~23\);

-- Location: LCCOMB_X21_Y11_N26
\view|Selector89~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector89~2_combout\ = (\view|Selector89~1_combout\ & ((\view|Mux32~17_combout\) # ((\view|Mux32~20_combout\) # (\view|Mux32~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector89~1_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Mux32~25_combout\,
	combout => \view|Selector89~2_combout\);

-- Location: LCFF_X21_Y11_N27
\view|FB_Y0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector89~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(3));

-- Location: LCCOMB_X21_Y11_N28
\vga|y_start~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~4_combout\ = (\view|FB_Y0\(3) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_Y0\(3),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|y_start~4_combout\);

-- Location: LCFF_X21_Y11_N29
\vga|y_start[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~4_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(3));

-- Location: LCCOMB_X19_Y11_N4
\vga|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~11_combout\ = (\vga|y_cursor[8]~11_combout\ & (\vga|Add0~9_combout\)) # (!\vga|y_cursor[8]~11_combout\ & ((\vga|y_start\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor[8]~11_combout\,
	datac => \vga|Add0~9_combout\,
	datad => \vga|y_start\(3),
	combout => \vga|Add0~11_combout\);

-- Location: LCFF_X19_Y11_N17
\vga|y_cursor[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[3]~22_combout\,
	sdata => \vga|Add0~11_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(3));

-- Location: LCCOMB_X19_Y11_N30
\vga|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~2_combout\ = (\vga|y_start\(3) & (\vga|y_cursor\(3) & (\vga|y_start\(4) $ (!\vga|y_cursor\(4))))) # (!\vga|y_start\(3) & (!\vga|y_cursor\(3) & (\vga|y_start\(4) $ (!\vga|y_cursor\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_start\(3),
	datab => \vga|y_start\(4),
	datac => \vga|y_cursor\(3),
	datad => \vga|y_cursor\(4),
	combout => \vga|Equal3~2_combout\);

-- Location: LCCOMB_X18_Y11_N24
\vga|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~4_combout\ = (\vga|Equal3~0_combout\ & (\vga|Equal3~3_combout\ & (\vga|Equal3~1_combout\ & \vga|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal3~0_combout\,
	datab => \vga|Equal3~3_combout\,
	datac => \vga|Equal3~1_combout\,
	datad => \vga|Equal3~2_combout\,
	combout => \vga|Equal3~4_combout\);

-- Location: LCCOMB_X24_Y11_N18
\view|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~16_combout\ = \view|Add5~15\ $ (!\view|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \view|row\(8),
	cin => \view|Add5~15\,
	combout => \view|Add5~16_combout\);

-- Location: LCCOMB_X20_Y10_N28
\view|Selector85~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector85~1_combout\ = (\view|Add5~16_combout\ & \view|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add5~16_combout\,
	datad => \view|state.DRAWING~regout\,
	combout => \view|Selector85~1_combout\);

-- Location: LCCOMB_X21_Y10_N14
\view|Selector85~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector85~2_combout\ = (\view|Selector85~1_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|Mux32~17_combout\,
	datac => \view|Mux32~20_combout\,
	datad => \view|Selector85~1_combout\,
	combout => \view|Selector85~2_combout\);

-- Location: LCFF_X21_Y10_N15
\view|FB_Y0[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector85~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(8));

-- Location: LCCOMB_X21_Y10_N6
\vga|y_start~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~7_combout\ = (\view|FB_Y0\(8) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|FB_Y0\(8),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|y_start~7_combout\);

-- Location: LCFF_X21_Y10_N7
\vga|y_start[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~7_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(8));

-- Location: LCCOMB_X19_Y9_N8
\vga|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~5_combout\ = (\vga|Equal3~4_combout\ & (\vga|y_cursor\(8) $ (!\vga|y_start\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(8),
	datac => \vga|Equal3~4_combout\,
	datad => \vga|y_start\(8),
	combout => \vga|Equal3~5_combout\);

-- Location: LCCOMB_X19_Y9_N26
\vga|y_cursor[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[8]~15_combout\ = (\vga|substate.DRAWING_R1~regout\ & ((\vga|Equal1~5_combout\))) # (!\vga|substate.DRAWING_R1~regout\ & (\vga|Equal3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datac => \vga|Equal3~5_combout\,
	datad => \vga|Equal1~5_combout\,
	combout => \vga|y_cursor[8]~15_combout\);

-- Location: LCCOMB_X19_Y9_N4
\vga|y_cursor[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[0]~16_combout\ = (\vga|x_cursor[0]~15_combout\ & (((\vga|y_cursor[8]~14_combout\ & !\vga|y_cursor[8]~15_combout\)) # (!\vga|state.DRAWING_RECT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor[0]~15_combout\,
	datab => \vga|state.DRAWING_RECT~regout\,
	datac => \vga|y_cursor[8]~14_combout\,
	datad => \vga|y_cursor[8]~15_combout\,
	combout => \vga|y_cursor[0]~16_combout\);

-- Location: LCCOMB_X19_Y11_N0
\vga|y_cursor[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[0]~17_combout\ = (\vga|x_cursor[0]~15_combout\ & (((\vga|y_cursor[0]~12_combout\ & \vga|y_cursor[0]~16_combout\)) # (!\vga|substate.INIT~regout\))) # (!\vga|x_cursor[0]~15_combout\ & (((\vga|y_cursor[0]~12_combout\ & 
-- \vga|y_cursor[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor[0]~15_combout\,
	datab => \vga|substate.INIT~regout\,
	datac => \vga|y_cursor[0]~12_combout\,
	datad => \vga|y_cursor[0]~16_combout\,
	combout => \vga|y_cursor[0]~17_combout\);

-- Location: LCFF_X19_Y11_N13
\vga|y_cursor[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[1]~18_combout\,
	sdata => \vga|Add0~5_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(1));

-- Location: LCCOMB_X18_Y11_N0
\vga|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~0_combout\ = \vga|y_cursor\(0) $ (VCC)
-- \vga|Add0~1\ = CARRY(\vga|y_cursor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(0),
	datad => VCC,
	combout => \vga|Add0~0_combout\,
	cout => \vga|Add0~1\);

-- Location: LCCOMB_X19_Y10_N28
\view|FB_Y0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_Y0~0_combout\ = (\view|state.DRAWING~regout\ & \view|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.DRAWING~regout\,
	datad => \view|Add5~0_combout\,
	combout => \view|FB_Y0~0_combout\);

-- Location: LCCOMB_X19_Y10_N26
\view|FB_Y0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|FB_Y0~1_combout\ = (\view|FB_Y0~0_combout\ & ((\view|Mux32~25_combout\) # ((\view|Mux32~17_combout\) # (\view|Mux32~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Mux32~25_combout\,
	datab => \view|FB_Y0~0_combout\,
	datac => \view|Mux32~17_combout\,
	datad => \view|Mux32~20_combout\,
	combout => \view|FB_Y0~1_combout\);

-- Location: LCFF_X19_Y10_N27
\view|FB_Y0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|FB_Y0~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y0\(0));

-- Location: LCCOMB_X19_Y10_N6
\vga|y_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~0_combout\ = (\view|FB_Y0\(0) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_Y0\(0),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|y_start~0_combout\);

-- Location: LCFF_X19_Y10_N7
\vga|y_start[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~0_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(0));

-- Location: LCCOMB_X18_Y11_N18
\vga|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~2_combout\ = (\vga|y_cursor[8]~11_combout\ & (\vga|Add0~0_combout\)) # (!\vga|y_cursor[8]~11_combout\ & ((\vga|y_start\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|Add0~0_combout\,
	datac => \vga|y_cursor[8]~11_combout\,
	datad => \vga|y_start\(0),
	combout => \vga|Add0~2_combout\);

-- Location: LCFF_X19_Y11_N11
\vga|y_cursor[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[0]~9_combout\,
	sdata => \vga|Add0~2_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(0));

-- Location: LCCOMB_X18_Y10_N10
\vga|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~8_combout\ = (\vga|y_cursor[8]~11_combout\ & ((\vga|Add0~6_combout\))) # (!\vga|y_cursor[8]~11_combout\ & (\vga|y_start\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_start\(2),
	datac => \vga|Add0~6_combout\,
	datad => \vga|y_cursor[8]~11_combout\,
	combout => \vga|Add0~8_combout\);

-- Location: LCFF_X19_Y11_N15
\vga|y_cursor[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[2]~20_combout\,
	sdata => \vga|Add0~8_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(2));

-- Location: LCCOMB_X19_Y11_N18
\vga|y_cursor[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[4]~24_combout\ = (\vga|y_cursor\(4) & ((GND) # (!\vga|y_cursor[3]~23\))) # (!\vga|y_cursor\(4) & (\vga|y_cursor[3]~23\ $ (GND)))
-- \vga|y_cursor[4]~25\ = CARRY((\vga|y_cursor\(4)) # (!\vga|y_cursor[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(4),
	datad => VCC,
	cin => \vga|y_cursor[3]~23\,
	combout => \vga|y_cursor[4]~24_combout\,
	cout => \vga|y_cursor[4]~25\);

-- Location: LCCOMB_X19_Y11_N6
\vga|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~14_combout\ = (\vga|y_cursor[8]~11_combout\ & (\vga|Add0~12_combout\)) # (!\vga|y_cursor[8]~11_combout\ & ((\vga|y_start\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add0~12_combout\,
	datab => \vga|y_cursor[8]~11_combout\,
	datad => \vga|y_start\(4),
	combout => \vga|Add0~14_combout\);

-- Location: LCFF_X19_Y11_N19
\vga|y_cursor[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[4]~24_combout\,
	sdata => \vga|Add0~14_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(4));

-- Location: LCCOMB_X19_Y11_N22
\vga|y_cursor[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[6]~28_combout\ = (\vga|y_cursor\(6) & ((GND) # (!\vga|y_cursor[5]~27\))) # (!\vga|y_cursor\(6) & (\vga|y_cursor[5]~27\ $ (GND)))
-- \vga|y_cursor[6]~29\ = CARRY((\vga|y_cursor\(6)) # (!\vga|y_cursor[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(6),
	datad => VCC,
	cin => \vga|y_cursor[5]~27\,
	combout => \vga|y_cursor[6]~28_combout\,
	cout => \vga|y_cursor[6]~29\);

-- Location: LCCOMB_X18_Y11_N28
\vga|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~20_combout\ = (\vga|y_cursor[8]~11_combout\ & ((\vga|Add0~18_combout\))) # (!\vga|y_cursor[8]~11_combout\ & (\vga|y_start\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_start\(6),
	datac => \vga|y_cursor[8]~11_combout\,
	datad => \vga|Add0~18_combout\,
	combout => \vga|Add0~20_combout\);

-- Location: LCFF_X19_Y11_N23
\vga|y_cursor[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[6]~28_combout\,
	sdata => \vga|Add0~20_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(6));

-- Location: LCCOMB_X19_Y11_N26
\vga|y_cursor[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[8]~32_combout\ = \vga|y_cursor[7]~31\ $ (\vga|y_cursor\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|y_cursor\(8),
	cin => \vga|y_cursor[7]~31\,
	combout => \vga|y_cursor[8]~32_combout\);

-- Location: LCCOMB_X18_Y11_N16
\vga|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~24_combout\ = \vga|Add0~22\ $ (!\vga|y_cursor\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|y_cursor\(8),
	cin => \vga|Add0~22\,
	combout => \vga|Add0~24_combout\);

-- Location: LCCOMB_X21_Y10_N0
\vga|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~26_combout\ = (\vga|y_cursor[8]~11_combout\ & (\vga|Add0~24_combout\)) # (!\vga|y_cursor[8]~11_combout\ & ((\vga|y_start\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor[8]~11_combout\,
	datac => \vga|Add0~24_combout\,
	datad => \vga|y_start\(8),
	combout => \vga|Add0~26_combout\);

-- Location: LCFF_X19_Y11_N27
\vga|y_cursor[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[8]~32_combout\,
	sdata => \vga|Add0~26_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(8));

-- Location: LCCOMB_X21_Y11_N30
\view|Selector88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector88~0_combout\ = (\view|state.INIT~regout\) # ((\view|Selector94~0_combout\ & \view|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Selector94~0_combout\,
	datac => \view|state.INIT~regout\,
	datad => \view|Add5~8_combout\,
	combout => \view|Selector88~0_combout\);

-- Location: LCFF_X21_Y11_N31
\view|FB_Y1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector88~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y1\(4));

-- Location: LCCOMB_X20_Y11_N20
\vga|y_end~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~6_combout\ = (\view|FB_CLEAR~regout\) # (\view|FB_Y1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_CLEAR~regout\,
	datad => \view|FB_Y1\(4),
	combout => \vga|y_end~6_combout\);

-- Location: LCFF_X20_Y11_N19
\vga|y_end[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|y_end~6_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(4));

-- Location: LCCOMB_X20_Y11_N18
\vga|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~2_combout\ = (\vga|y_cursor\(5) & (\vga|y_end\(5) & (\vga|y_cursor\(4) $ (!\vga|y_end\(4))))) # (!\vga|y_cursor\(5) & (!\vga|y_end\(5) & (\vga|y_cursor\(4) $ (!\vga|y_end\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(5),
	datab => \vga|y_cursor\(4),
	datac => \vga|y_end\(4),
	datad => \vga|y_end\(5),
	combout => \vga|Equal1~2_combout\);

-- Location: LCCOMB_X19_Y10_N20
\view|Selector92~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector92~0_combout\ = (\view|state.INIT~regout\) # ((\view|Selector94~0_combout\ & \view|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector94~0_combout\,
	datac => \view|state.INIT~regout\,
	datad => \view|Add5~0_combout\,
	combout => \view|Selector92~0_combout\);

-- Location: LCFF_X19_Y10_N21
\view|FB_Y1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector92~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y1\(0));

-- Location: LCCOMB_X20_Y11_N2
\vga|y_end~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~2_combout\ = (\view|FB_CLEAR~regout\) # (\view|FB_Y1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_CLEAR~regout\,
	datac => \view|FB_Y1\(0),
	combout => \vga|y_end~2_combout\);

-- Location: LCFF_X20_Y11_N3
\vga|y_end[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~2_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(0));

-- Location: LCCOMB_X18_Y10_N6
\vga|y_end~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~1_combout\ = (\view|FB_Y1\(1)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_Y1\(1),
	datac => \view|FB_CLEAR~regout\,
	combout => \vga|y_end~1_combout\);

-- Location: LCFF_X20_Y11_N17
\vga|y_end[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|y_end~1_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(1));

-- Location: LCCOMB_X20_Y11_N16
\vga|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~0_combout\ = (\vga|y_cursor\(1) & (\vga|y_end\(1) & (\vga|y_end\(0) $ (!\vga|y_cursor\(0))))) # (!\vga|y_cursor\(1) & (!\vga|y_end\(1) & (\vga|y_end\(0) $ (!\vga|y_cursor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(1),
	datab => \vga|y_end\(0),
	datac => \vga|y_end\(1),
	datad => \vga|y_cursor\(0),
	combout => \vga|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y11_N18
\view|Selector89~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector89~0_combout\ = (\view|state.INIT~regout\) # ((\view|Selector94~0_combout\ & \view|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.INIT~regout\,
	datab => \view|Selector94~0_combout\,
	datac => \view|Add5~6_combout\,
	combout => \view|Selector89~0_combout\);

-- Location: LCFF_X21_Y11_N19
\view|FB_Y1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector89~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y1\(3));

-- Location: LCCOMB_X20_Y11_N4
\vga|y_end~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~3_combout\ = (\view|FB_CLEAR~regout\) # (\view|FB_Y1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_CLEAR~regout\,
	datad => \view|FB_Y1\(3),
	combout => \vga|y_end~3_combout\);

-- Location: LCFF_X20_Y11_N5
\vga|y_end[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~3_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(3));

-- Location: LCCOMB_X18_Y10_N16
\view|Selector90~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector90~0_combout\ = (\view|state.INIT~regout\) # ((\view|Selector94~0_combout\ & \view|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.INIT~regout\,
	datac => \view|Selector94~0_combout\,
	datad => \view|Add5~4_combout\,
	combout => \view|Selector90~0_combout\);

-- Location: LCFF_X18_Y10_N17
\view|FB_Y1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector90~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y1\(2));

-- Location: LCCOMB_X18_Y10_N18
\vga|y_end~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~4_combout\ = (\view|FB_CLEAR~regout\) # (\view|FB_Y1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_CLEAR~regout\,
	datac => \view|FB_Y1\(2),
	combout => \vga|y_end~4_combout\);

-- Location: LCFF_X20_Y11_N23
\vga|y_end[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|y_end~4_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(2));

-- Location: LCCOMB_X20_Y11_N22
\vga|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~1_combout\ = (\vga|y_cursor\(2) & (\vga|y_end\(2) & (\vga|y_end\(3) $ (!\vga|y_cursor\(3))))) # (!\vga|y_cursor\(2) & (!\vga|y_end\(2) & (\vga|y_end\(3) $ (!\vga|y_cursor\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(2),
	datab => \vga|y_end\(3),
	datac => \vga|y_end\(2),
	datad => \vga|y_cursor\(3),
	combout => \vga|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y11_N24
\vga|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~4_combout\ = (\vga|Equal1~3_combout\ & (\vga|Equal1~2_combout\ & (\vga|Equal1~0_combout\ & \vga|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~3_combout\,
	datab => \vga|Equal1~2_combout\,
	datac => \vga|Equal1~0_combout\,
	datad => \vga|Equal1~1_combout\,
	combout => \vga|Equal1~4_combout\);

-- Location: LCCOMB_X20_Y10_N12
\view|Selector85~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector85~0_combout\ = (\view|state.INIT~regout\) # ((\view|Add5~16_combout\ & \view|Selector94~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add5~16_combout\,
	datac => \view|state.INIT~regout\,
	datad => \view|Selector94~0_combout\,
	combout => \view|Selector85~0_combout\);

-- Location: LCFF_X20_Y10_N13
\view|FB_Y1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector85~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_Y1\(8));

-- Location: LCCOMB_X20_Y11_N10
\vga|y_end~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~9_combout\ = (\view|FB_Y1\(8)) # (\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|FB_Y1\(8),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|y_end~9_combout\);

-- Location: LCFF_X20_Y11_N11
\vga|y_end[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~9_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(8));

-- Location: LCCOMB_X20_Y11_N28
\vga|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~5_combout\ = (\vga|Equal1~4_combout\ & (\vga|y_cursor\(8) $ (!\vga|y_end\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(8),
	datac => \vga|Equal1~4_combout\,
	datad => \vga|y_end\(8),
	combout => \vga|Equal1~5_combout\);

-- Location: LCCOMB_X19_Y9_N14
\vga|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector3~5_combout\ = (\vga|Equal0~0_combout\ & (!\vga|state.DRAWING_RECT~regout\ & (\vga|Equal0~5_combout\ & \vga|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal0~0_combout\,
	datab => \vga|state.DRAWING_RECT~regout\,
	datac => \vga|Equal0~5_combout\,
	datad => \vga|Equal1~5_combout\,
	combout => \vga|Selector3~5_combout\);

-- Location: LCCOMB_X19_Y9_N18
\vga|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector3~2_combout\ = (\vga|state.DRAWING_RECT~regout\ & (\vga|Equal3~5_combout\ & \vga|y_cursor[8]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|state.DRAWING_RECT~regout\,
	datac => \vga|Equal3~5_combout\,
	datad => \vga|y_cursor[8]~13_combout\,
	combout => \vga|Selector3~2_combout\);

-- Location: LCCOMB_X18_Y9_N6
\vga|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector2~0_combout\ = (!\vga|Selector3~4_combout\ & (((!\vga|Selector3~5_combout\ & !\vga|Selector3~2_combout\)) # (!\vga|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Selector3~4_combout\,
	datab => \vga|Selector3~3_combout\,
	datac => \vga|Selector3~5_combout\,
	datad => \vga|Selector3~2_combout\,
	combout => \vga|Selector2~0_combout\);

-- Location: LCCOMB_X18_Y9_N26
\vga|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector1~0_combout\ = (\vga|Selector3~4_combout\ & (((\vga|state.DRAWING_RECT~regout\ & \vga|Selector2~0_combout\)) # (!\view|FB_CLEAR~regout\))) # (!\vga|Selector3~4_combout\ & (((\vga|state.DRAWING_RECT~regout\ & \vga|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Selector3~4_combout\,
	datab => \view|FB_CLEAR~regout\,
	datac => \vga|state.DRAWING_RECT~regout\,
	datad => \vga|Selector2~0_combout\,
	combout => \vga|Selector1~0_combout\);

-- Location: LCFF_X18_Y9_N27
\vga|state.DRAWING_RECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector1~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|state.DRAWING_RECT~regout\);

-- Location: LCCOMB_X19_Y9_N0
\vga|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector8~2_combout\ = (\vga|Selector8~3_combout\ & ((\vga|state.DRAWING_RECT~regout\) # ((!\vga|substate.DRAWING_R2~0_combout\ & \vga|state.FILLING_RECT~regout\)))) # (!\vga|Selector8~3_combout\ & (((!\vga|substate.DRAWING_R2~0_combout\ & 
-- \vga|state.FILLING_RECT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Selector8~3_combout\,
	datab => \vga|state.DRAWING_RECT~regout\,
	datac => \vga|substate.DRAWING_R2~0_combout\,
	datad => \vga|state.FILLING_RECT~regout\,
	combout => \vga|Selector8~2_combout\);

-- Location: LCFF_X19_Y9_N1
\vga|fb_wr_req\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector8~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|fb_wr_req~regout\);

-- Location: LCCOMB_X22_Y4_N8
\vga|vga_timing|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal1~1_combout\ = (!\vga|vga_timing|h_counter\(4) & (!\vga|vga_timing|h_counter\(8) & (!\vga|vga_timing|h_counter\(9) & \vga|vga_timing|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(4),
	datab => \vga|vga_timing|h_counter\(8),
	datac => \vga|vga_timing|h_counter\(9),
	datad => \vga|vga_timing|h_counter\(6),
	combout => \vga|vga_timing|Equal1~1_combout\);

-- Location: LCFF_X21_Y4_N17
\vga|vga_timing|h_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(3));

-- Location: LCFF_X21_Y4_N13
\vga|vga_timing|h_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(1));

-- Location: LCCOMB_X21_Y4_N0
\vga|vga_timing|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal2~0_combout\ = (\vga|vga_timing|h_counter\(0) & (\vga|vga_timing|h_counter\(2) & (\vga|vga_timing|h_counter\(3) & \vga|vga_timing|h_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(0),
	datab => \vga|vga_timing|h_counter\(2),
	datac => \vga|vga_timing|h_counter\(3),
	datad => \vga|vga_timing|h_counter\(1),
	combout => \vga|vga_timing|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y4_N28
\vga|vga_timing|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal2~2_combout\ = (\vga|vga_timing|h_counter\(5) & (\vga|vga_timing|h_counter\(7) & (\vga|vga_timing|Equal2~0_combout\ & \vga|vga_timing|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(5),
	datab => \vga|vga_timing|h_counter\(7),
	datac => \vga|vga_timing|Equal2~0_combout\,
	datad => \vga|vga_timing|Equal2~1_combout\,
	combout => \vga|vga_timing|Equal2~2_combout\);

-- Location: LCCOMB_X22_Y4_N0
\vga|vga_timing|h_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_state~11_combout\ = (!\vga|vga_timing|Equal4~1_combout\ & (!\vga|vga_timing|Equal2~2_combout\ & ((!\vga|vga_timing|Equal1~1_combout\) # (!\vga|vga_timing|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal1~0_combout\,
	datab => \vga|vga_timing|Equal1~1_combout\,
	datac => \vga|vga_timing|Equal4~1_combout\,
	datad => \vga|vga_timing|Equal2~2_combout\,
	combout => \vga|vga_timing|h_state~11_combout\);

-- Location: LCCOMB_X22_Y4_N22
\vga|vga_timing|h_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_state~12_combout\ = (\vga|vga_timing|Equal0~0_combout\ & (((!\vga|vga_timing|h_counter\(9) & \vga|vga_timing|Equal3~0_combout\)) # (!\vga|vga_timing|h_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state~11_combout\,
	datab => \vga|vga_timing|h_counter\(9),
	datac => \vga|vga_timing|Equal0~0_combout\,
	datad => \vga|vga_timing|Equal3~0_combout\,
	combout => \vga|vga_timing|h_state~12_combout\);

-- Location: LCFF_X22_Y4_N1
\vga|vga_timing|h_state.DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_state~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|h_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_state.DATA~regout\);

-- Location: LCCOMB_X19_Y6_N12
\vga|vga_fb|SRAM_WE_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_WE_N~0_combout\ = (\vga|fb_wr_req~regout\ & ((!\vga|vga_timing|h_state.DATA~regout\) # (!\vga|vga_timing|v_state.DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|fb_wr_req~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_WE_N~0_combout\);

-- Location: LCCOMB_X18_Y9_N18
\vga|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector3~3_combout\ = (\vga|state.IDLE~regout\ & (\vga|substate.INIT~regout\ & \vga|vga_fb|SRAM_WE_N~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.IDLE~regout\,
	datab => \vga|substate.INIT~regout\,
	datac => \vga|vga_fb|SRAM_WE_N~0_combout\,
	combout => \vga|Selector3~3_combout\);

-- Location: LCCOMB_X18_Y9_N24
\vga|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector0~2_combout\ = (\vga|state.IDLE~regout\ & (((!\vga|Selector3~5_combout\ & !\vga|Selector3~2_combout\)) # (!\vga|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.IDLE~regout\,
	datab => \vga|Selector3~3_combout\,
	datac => \vga|Selector3~5_combout\,
	datad => \vga|Selector3~2_combout\,
	combout => \vga|Selector0~2_combout\);

-- Location: LCCOMB_X18_Y9_N10
\vga|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector0~3_combout\ = (\vga|Selector0~2_combout\) # ((!\vga|state.IDLE~regout\ & ((\view|FB_COLOR\(10)) # (\view|FB_CLEAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_COLOR\(10),
	datab => \vga|Selector0~2_combout\,
	datac => \vga|state.IDLE~regout\,
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|Selector0~3_combout\);

-- Location: LCFF_X18_Y9_N11
\vga|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector0~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|state.IDLE~regout\);

-- Location: LCCOMB_X19_Y8_N18
\vga|y_end[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end[8]~10_combout\ = (!\vga|state.IDLE~regout\ & \RESET_N~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|state.IDLE~regout\,
	datac => \RESET_N~regout\,
	combout => \vga|y_end[8]~10_combout\);

-- Location: LCFF_X19_Y8_N7
\vga|latched_color[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|latched_color[1]~feeder_combout\,
	ena => \vga|y_end[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|latched_color\(1));

-- Location: LCCOMB_X19_Y8_N24
\vga|latched_color[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|latched_color[10]~feeder_combout\ = \view|FB_COLOR\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|FB_COLOR\(10),
	combout => \vga|latched_color[10]~feeder_combout\);

-- Location: LCFF_X19_Y8_N25
\vga|latched_color[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|latched_color[10]~feeder_combout\,
	ena => \vga|y_end[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|latched_color\(10));

-- Location: LCFF_X19_Y6_N1
\vga|vga_timing|v_state.DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_state~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|v_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_state.DATA~regout\);

-- Location: LCCOMB_X19_Y8_N28
\vga|flip_on_next_vs~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|flip_on_next_vs~0_combout\ = (\vga|flip_on_next_vs~regout\ & ((\vga|state.IDLE~regout\) # (!\vga|vga_timing|v_state.SYNC~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|state.IDLE~regout\,
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \vga|flip_on_next_vs~regout\,
	combout => \vga|flip_on_next_vs~0_combout\);

-- Location: LCCOMB_X23_Y10_N24
\view|Selector69~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector69~1_combout\ = (\vga|vga_timing|v_state.SYNC~regout\ & \view|state.SHOWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \view|state.SHOWING~regout\,
	combout => \view|Selector69~1_combout\);

-- Location: LCFF_X23_Y10_N25
\view|FB_FLIP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector69~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|FB_FLIP~regout\);

-- Location: LCCOMB_X19_Y8_N2
\vga|flip_on_next_vs~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|flip_on_next_vs~1_combout\ = (\vga|flip_on_next_vs~0_combout\) # ((\view|Selector69~0_combout\ & (!\vga|flip_on_next_vs~regout\ & \view|FB_FLIP~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector69~0_combout\,
	datab => \vga|flip_on_next_vs~0_combout\,
	datac => \vga|flip_on_next_vs~regout\,
	datad => \view|FB_FLIP~regout\,
	combout => \vga|flip_on_next_vs~1_combout\);

-- Location: LCFF_X19_Y8_N3
\vga|flip_on_next_vs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|flip_on_next_vs~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|flip_on_next_vs~regout\);

-- Location: LCCOMB_X19_Y8_N8
\vga|fb_buffer_idx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|fb_buffer_idx~0_combout\ = \vga|fb_buffer_idx~regout\ $ (((!\vga|state.IDLE~regout\ & (\vga|vga_timing|v_state.SYNC~regout\ & \vga|flip_on_next_vs~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.IDLE~regout\,
	datab => \vga|vga_timing|v_state.SYNC~regout\,
	datac => \vga|fb_buffer_idx~regout\,
	datad => \vga|flip_on_next_vs~regout\,
	combout => \vga|fb_buffer_idx~0_combout\);

-- Location: LCFF_X19_Y8_N9
\vga|fb_buffer_idx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|fb_buffer_idx~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|fb_buffer_idx~regout\);

-- Location: LCCOMB_X15_Y4_N8
\vga|vga_fb|ram_rd_word[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[5]~0_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[13]~13\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[5]~5\,
	datab => \vga|fb_buffer_idx~regout\,
	datac => \SRAM_DQ[13]~13\,
	combout => \vga|vga_fb|ram_rd_word[5]~0_combout\);

-- Location: LCCOMB_X19_Y6_N18
\vga|vga_timing|BLANK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|BLANK~0_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & \vga|vga_timing|h_state.DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_timing|BLANK~0_combout\);

-- Location: LCFF_X15_Y4_N9
\vga|vga_fb|latched_ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[5]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(5));

-- Location: LCCOMB_X15_Y4_N2
\vga|VGA_R[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_R[0]~0_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(5) & \vga|vga_timing|h_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(5),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|VGA_R[0]~0_combout\);

-- Location: LCCOMB_X15_Y4_N28
\vga|vga_fb|ram_rd_word[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[6]~1_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[14]~14\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[6]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[6]~6\,
	datab => \SRAM_DQ[14]~14\,
	datac => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[6]~1_combout\);

-- Location: LCFF_X15_Y4_N29
\vga|vga_fb|latched_ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[6]~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(6));

-- Location: LCCOMB_X15_Y4_N30
\vga|VGA_R[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_R[2]~1_combout\ = (\vga|vga_fb|latched_ram\(6) & (\vga|vga_timing|h_state.DATA~regout\ & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_fb|latched_ram\(6),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_R[2]~1_combout\);

-- Location: LCCOMB_X15_Y4_N0
\vga|vga_fb|ram_rd_word[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[7]~2_combout\ = (\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[15]~15\)) # (!\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[15]~15\,
	datab => \SRAM_DQ[7]~7\,
	datac => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[7]~2_combout\);

-- Location: LCFF_X15_Y4_N1
\vga|vga_fb|latched_ram[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[7]~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(7));

-- Location: LCCOMB_X15_Y4_N10
\vga|VGA_R[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_R[3]~2_combout\ = (\vga|vga_fb|latched_ram\(7) & (\vga|vga_timing|h_state.DATA~regout\ & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_fb|latched_ram\(7),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_R[3]~2_combout\);

-- Location: LCCOMB_X15_Y4_N12
\vga|vga_fb|ram_rd_word[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[3]~3_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[11]~11\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[3]~3\,
	datac => \vga|fb_buffer_idx~regout\,
	datad => \SRAM_DQ[11]~11\,
	combout => \vga|vga_fb|ram_rd_word[3]~3_combout\);

-- Location: LCFF_X15_Y4_N13
\vga|vga_fb|latched_ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[3]~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(3));

-- Location: LCCOMB_X15_Y4_N22
\vga|VGA_G[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_G[0]~0_combout\ = (\vga|vga_fb|latched_ram\(3) & (\vga|vga_timing|v_state.DATA~regout\ & \vga|vga_timing|h_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_fb|latched_ram\(3),
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|VGA_G[0]~0_combout\);

-- Location: LCCOMB_X15_Y4_N24
\vga|vga_fb|ram_rd_word[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[4]~4_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[12]~12\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[4]~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[4]~4\,
	datab => \vga|fb_buffer_idx~regout\,
	datac => \SRAM_DQ[12]~12\,
	combout => \vga|vga_fb|ram_rd_word[4]~4_combout\);

-- Location: LCFF_X15_Y4_N25
\vga|vga_fb|latched_ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[4]~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(4));

-- Location: LCCOMB_X15_Y4_N18
\vga|VGA_G[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_G[3]~1_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(4) & \vga|vga_timing|h_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(4),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|VGA_G[3]~1_combout\);

-- Location: LCCOMB_X15_Y4_N4
\vga|vga_fb|ram_rd_word[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[0]~5_combout\ = (\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[8]~8\)) # (!\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[0]~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[8]~8\,
	datab => \vga|fb_buffer_idx~regout\,
	datac => \SRAM_DQ[0]~0\,
	combout => \vga|vga_fb|ram_rd_word[0]~5_combout\);

-- Location: LCFF_X15_Y4_N5
\vga|vga_fb|latched_ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[0]~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(0));

-- Location: LCCOMB_X15_Y4_N14
\vga|VGA_B[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_B[0]~0_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(0) & \vga|vga_timing|h_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(0),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|VGA_B[0]~0_combout\);

-- Location: LCCOMB_X15_Y4_N16
\vga|vga_fb|ram_rd_word[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[1]~6_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[9]~9\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[1]~1\,
	datab => \SRAM_DQ[9]~9\,
	datac => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[1]~6_combout\);

-- Location: LCFF_X15_Y4_N17
\vga|vga_fb|latched_ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[1]~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(1));

-- Location: LCCOMB_X15_Y4_N26
\vga|VGA_B[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_B[2]~1_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(1) & \vga|vga_timing|h_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(1),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|VGA_B[2]~1_combout\);

-- Location: LCCOMB_X15_Y4_N20
\vga|vga_fb|ram_rd_word[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[2]~7_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[10]~10\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[2]~2\,
	datab => \vga|fb_buffer_idx~regout\,
	datac => \SRAM_DQ[10]~10\,
	combout => \vga|vga_fb|ram_rd_word[2]~7_combout\);

-- Location: LCFF_X15_Y4_N21
\vga|vga_fb|latched_ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[2]~7_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(2));

-- Location: LCCOMB_X15_Y4_N6
\vga|VGA_B[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_B[3]~2_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(2) & \vga|vga_timing|h_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(2),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|VGA_B[3]~2_combout\);

-- Location: LCCOMB_X22_Y4_N26
\vga|vga_timing|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal1~2_combout\ = (\vga|vga_timing|Equal2~0_combout\ & (\vga|vga_timing|Equal1~1_combout\ & (!\vga|vga_timing|h_counter\(5) & !\vga|vga_timing|h_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal2~0_combout\,
	datab => \vga|vga_timing|Equal1~1_combout\,
	datac => \vga|vga_timing|h_counter\(5),
	datad => \vga|vga_timing|h_counter\(7),
	combout => \vga|vga_timing|Equal1~2_combout\);

-- Location: LCFF_X22_Y4_N27
\vga|vga_timing|h_state.SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Equal1~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|h_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_state.SYNC~regout\);

-- Location: LCCOMB_X20_Y4_N2
\vga|vga_timing|h_pixel[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[0]~9_combout\ = \vga|vga_timing|h_pixel\(0) $ (VCC)
-- \vga|vga_timing|h_pixel[0]~10\ = CARRY(\vga|vga_timing|h_pixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_pixel\(0),
	datad => VCC,
	combout => \vga|vga_timing|h_pixel[0]~9_combout\,
	cout => \vga|vga_timing|h_pixel[0]~10\);

-- Location: LCCOMB_X22_Y4_N24
\vga|vga_timing|h_timing~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_timing~0_combout\ = (\vga|vga_timing|Equal4~1_combout\) # (!\vga|vga_timing|h_state.DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|vga_timing|Equal4~1_combout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_timing|h_timing~0_combout\);

-- Location: LCFF_X20_Y4_N3
\vga|vga_timing|h_pixel[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[0]~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(0));

-- Location: LCCOMB_X19_Y6_N20
\vga|vga_fb|SRAM_ADDR[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[0]~0_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|h_pixel\(0))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|x_cursor\(0)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|x_cursor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|h_pixel\(0),
	datac => \vga|x_cursor\(0),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[0]~0_combout\);

-- Location: LCCOMB_X20_Y4_N4
\vga|vga_timing|h_pixel[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[1]~11_combout\ = (\vga|vga_timing|h_pixel\(1) & (!\vga|vga_timing|h_pixel[0]~10\)) # (!\vga|vga_timing|h_pixel\(1) & ((\vga|vga_timing|h_pixel[0]~10\) # (GND)))
-- \vga|vga_timing|h_pixel[1]~12\ = CARRY((!\vga|vga_timing|h_pixel[0]~10\) # (!\vga|vga_timing|h_pixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_pixel\(1),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[0]~10\,
	combout => \vga|vga_timing|h_pixel[1]~11_combout\,
	cout => \vga|vga_timing|h_pixel[1]~12\);

-- Location: LCFF_X20_Y4_N5
\vga|vga_timing|h_pixel[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[1]~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(1));

-- Location: LCCOMB_X20_Y4_N0
\vga|vga_fb|SRAM_ADDR[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[1]~1_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(1)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(1))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|x_cursor\(1),
	datac => \vga|vga_timing|h_pixel\(1),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[1]~1_combout\);

-- Location: LCCOMB_X20_Y4_N6
\vga|vga_timing|h_pixel[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[2]~13_combout\ = (\vga|vga_timing|h_pixel\(2) & (\vga|vga_timing|h_pixel[1]~12\ $ (GND))) # (!\vga|vga_timing|h_pixel\(2) & (!\vga|vga_timing|h_pixel[1]~12\ & VCC))
-- \vga|vga_timing|h_pixel[2]~14\ = CARRY((\vga|vga_timing|h_pixel\(2) & !\vga|vga_timing|h_pixel[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(2),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[1]~12\,
	combout => \vga|vga_timing|h_pixel[2]~13_combout\,
	cout => \vga|vga_timing|h_pixel[2]~14\);

-- Location: LCFF_X20_Y4_N7
\vga|vga_timing|h_pixel[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[2]~13_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(2));

-- Location: LCCOMB_X20_Y4_N28
\vga|vga_fb|SRAM_ADDR[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[2]~2_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|h_pixel\(2))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|x_cursor\(2)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|x_cursor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(2),
	datab => \vga|x_cursor\(2),
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[2]~2_combout\);

-- Location: LCCOMB_X20_Y4_N8
\vga|vga_timing|h_pixel[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[3]~15_combout\ = (\vga|vga_timing|h_pixel\(3) & (!\vga|vga_timing|h_pixel[2]~14\)) # (!\vga|vga_timing|h_pixel\(3) & ((\vga|vga_timing|h_pixel[2]~14\) # (GND)))
-- \vga|vga_timing|h_pixel[3]~16\ = CARRY((!\vga|vga_timing|h_pixel[2]~14\) # (!\vga|vga_timing|h_pixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_pixel\(3),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[2]~14\,
	combout => \vga|vga_timing|h_pixel[3]~15_combout\,
	cout => \vga|vga_timing|h_pixel[3]~16\);

-- Location: LCFF_X20_Y4_N9
\vga|vga_timing|h_pixel[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[3]~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(3));

-- Location: LCCOMB_X20_Y4_N30
\vga|vga_fb|SRAM_ADDR[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[3]~3_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|h_pixel\(3))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|x_cursor\(3)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|x_cursor\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|h_pixel\(3),
	datac => \vga|x_cursor\(3),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[3]~3_combout\);

-- Location: LCCOMB_X20_Y4_N10
\vga|vga_timing|h_pixel[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[4]~17_combout\ = (\vga|vga_timing|h_pixel\(4) & (\vga|vga_timing|h_pixel[3]~16\ $ (GND))) # (!\vga|vga_timing|h_pixel\(4) & (!\vga|vga_timing|h_pixel[3]~16\ & VCC))
-- \vga|vga_timing|h_pixel[4]~18\ = CARRY((\vga|vga_timing|h_pixel\(4) & !\vga|vga_timing|h_pixel[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(4),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[3]~16\,
	combout => \vga|vga_timing|h_pixel[4]~17_combout\,
	cout => \vga|vga_timing|h_pixel[4]~18\);

-- Location: LCFF_X20_Y4_N11
\vga|vga_timing|h_pixel[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[4]~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(4));

-- Location: LCCOMB_X20_Y4_N24
\vga|vga_fb|SRAM_ADDR[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[4]~4_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|h_pixel\(4))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|x_cursor\(4)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|x_cursor\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(4),
	datab => \vga|x_cursor\(4),
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[4]~4_combout\);

-- Location: LCCOMB_X20_Y4_N12
\vga|vga_timing|h_pixel[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[5]~19_combout\ = (\vga|vga_timing|h_pixel\(5) & (!\vga|vga_timing|h_pixel[4]~18\)) # (!\vga|vga_timing|h_pixel\(5) & ((\vga|vga_timing|h_pixel[4]~18\) # (GND)))
-- \vga|vga_timing|h_pixel[5]~20\ = CARRY((!\vga|vga_timing|h_pixel[4]~18\) # (!\vga|vga_timing|h_pixel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(5),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[4]~18\,
	combout => \vga|vga_timing|h_pixel[5]~19_combout\,
	cout => \vga|vga_timing|h_pixel[5]~20\);

-- Location: LCFF_X20_Y4_N13
\vga|vga_timing|h_pixel[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[5]~19_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(5));

-- Location: LCCOMB_X20_Y4_N26
\vga|vga_fb|SRAM_ADDR[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[5]~5_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|h_pixel\(5))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|x_cursor\(5)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|x_cursor\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(5),
	datab => \vga|x_cursor\(5),
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[5]~5_combout\);

-- Location: LCCOMB_X21_Y11_N8
\vga|x_start~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~7_combout\ = (\view|FB_X0\(6) & !\view|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|FB_X0\(6),
	datad => \view|FB_CLEAR~regout\,
	combout => \vga|x_start~7_combout\);

-- Location: LCFF_X21_Y11_N9
\vga|x_start[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~7_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(6));

-- Location: LCCOMB_X21_Y9_N22
\vga|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~20_combout\ = (\vga|x_cursor[3]~13_combout\ & (\vga|Add1~18_combout\)) # (!\vga|x_cursor[3]~13_combout\ & ((\vga|x_start\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[3]~13_combout\,
	datac => \vga|Add1~18_combout\,
	datad => \vga|x_start\(6),
	combout => \vga|Add1~20_combout\);

-- Location: LCFF_X21_Y9_N13
\vga|x_cursor[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[6]~30_combout\,
	sdata => \vga|Add1~20_combout\,
	sload => \vga|x_cursor[3]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(6));

-- Location: LCCOMB_X20_Y4_N14
\vga|vga_timing|h_pixel[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[6]~21_combout\ = (\vga|vga_timing|h_pixel\(6) & (\vga|vga_timing|h_pixel[5]~20\ $ (GND))) # (!\vga|vga_timing|h_pixel\(6) & (!\vga|vga_timing|h_pixel[5]~20\ & VCC))
-- \vga|vga_timing|h_pixel[6]~22\ = CARRY((\vga|vga_timing|h_pixel\(6) & !\vga|vga_timing|h_pixel[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_pixel\(6),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[5]~20\,
	combout => \vga|vga_timing|h_pixel[6]~21_combout\,
	cout => \vga|vga_timing|h_pixel[6]~22\);

-- Location: LCFF_X20_Y4_N15
\vga|vga_timing|h_pixel[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[6]~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(6));

-- Location: LCCOMB_X20_Y4_N20
\vga|vga_fb|SRAM_ADDR[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[6]~6_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(6)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(6))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|x_cursor\(6),
	datac => \vga|vga_timing|h_pixel\(6),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[6]~6_combout\);

-- Location: LCCOMB_X20_Y4_N16
\vga|vga_timing|h_pixel[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[7]~23_combout\ = (\vga|vga_timing|h_pixel\(7) & (!\vga|vga_timing|h_pixel[6]~22\)) # (!\vga|vga_timing|h_pixel\(7) & ((\vga|vga_timing|h_pixel[6]~22\) # (GND)))
-- \vga|vga_timing|h_pixel[7]~24\ = CARRY((!\vga|vga_timing|h_pixel[6]~22\) # (!\vga|vga_timing|h_pixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(7),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[6]~22\,
	combout => \vga|vga_timing|h_pixel[7]~23_combout\,
	cout => \vga|vga_timing|h_pixel[7]~24\);

-- Location: LCFF_X20_Y4_N17
\vga|vga_timing|h_pixel[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[7]~23_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(7));

-- Location: LCCOMB_X20_Y4_N22
\vga|vga_fb|SRAM_ADDR[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[7]~7_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(7)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(7))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|x_cursor\(7),
	datac => \vga|vga_timing|h_pixel\(7),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[7]~7_combout\);

-- Location: LCCOMB_X20_Y4_N18
\vga|vga_timing|h_pixel[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[8]~25_combout\ = \vga|vga_timing|h_pixel[7]~24\ $ (!\vga|vga_timing|h_pixel\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|vga_timing|h_pixel\(8),
	cin => \vga|vga_timing|h_pixel[7]~24\,
	combout => \vga|vga_timing|h_pixel[8]~25_combout\);

-- Location: LCFF_X20_Y4_N19
\vga|vga_timing|h_pixel[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_pixel[8]~25_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|h_timing~0_combout\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_pixel\(8));

-- Location: LCCOMB_X19_Y6_N22
\vga|vga_fb|SRAM_ADDR[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[8]~8_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(8)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(8))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|x_cursor\(8),
	datac => \vga|vga_timing|h_pixel\(8),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[8]~8_combout\);

-- Location: LCCOMB_X18_Y6_N4
\vga|vga_timing|v_pixel[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[0]~9_combout\ = \vga|vga_timing|v_pixel\(0) $ (VCC)
-- \vga|vga_timing|v_pixel[0]~10\ = CARRY(\vga|vga_timing|v_pixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_pixel\(0),
	datad => VCC,
	combout => \vga|vga_timing|v_pixel[0]~9_combout\,
	cout => \vga|vga_timing|v_pixel[0]~10\);

-- Location: LCCOMB_X19_Y6_N4
\vga|vga_timing|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal9~0_combout\ = (!\vga|vga_timing|v_counter\(1) & (!\vga|vga_timing|v_counter\(2) & !\vga|vga_timing|v_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(1),
	datab => \vga|vga_timing|v_counter\(2),
	datac => \vga|vga_timing|v_counter\(3),
	combout => \vga|vga_timing|Equal9~0_combout\);

-- Location: LCCOMB_X19_Y6_N30
\vga|vga_timing|v_timing~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_timing~0_combout\ = ((\vga|vga_timing|Equal6~1_combout\ & \vga|vga_timing|Equal9~0_combout\)) # (!\vga|vga_timing|v_state.DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|Equal6~1_combout\,
	datac => \vga|vga_timing|Equal9~0_combout\,
	combout => \vga|vga_timing|v_timing~0_combout\);

-- Location: LCFF_X18_Y6_N5
\vga|vga_timing|v_pixel[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[0]~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(0));

-- Location: LCCOMB_X18_Y6_N0
\vga|vga_fb|SRAM_ADDR[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[9]~9_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_pixel\(0)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|y_cursor\(0))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|y_cursor\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(0),
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_timing|v_pixel\(0),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[9]~9_combout\);

-- Location: LCCOMB_X18_Y6_N6
\vga|vga_timing|v_pixel[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[1]~11_combout\ = (\vga|vga_timing|v_pixel\(1) & (!\vga|vga_timing|v_pixel[0]~10\)) # (!\vga|vga_timing|v_pixel\(1) & ((\vga|vga_timing|v_pixel[0]~10\) # (GND)))
-- \vga|vga_timing|v_pixel[1]~12\ = CARRY((!\vga|vga_timing|v_pixel[0]~10\) # (!\vga|vga_timing|v_pixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(1),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[0]~10\,
	combout => \vga|vga_timing|v_pixel[1]~11_combout\,
	cout => \vga|vga_timing|v_pixel[1]~12\);

-- Location: LCFF_X18_Y6_N7
\vga|vga_timing|v_pixel[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[1]~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(1));

-- Location: LCCOMB_X19_Y6_N16
\vga|vga_fb|SRAM_ADDR[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[10]~10_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_pixel\(1)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|y_cursor\(1))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|y_cursor\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|y_cursor\(1),
	datac => \vga|vga_timing|v_pixel\(1),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[10]~10_combout\);

-- Location: LCCOMB_X18_Y6_N8
\vga|vga_timing|v_pixel[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[2]~13_combout\ = (\vga|vga_timing|v_pixel\(2) & (\vga|vga_timing|v_pixel[1]~12\ $ (GND))) # (!\vga|vga_timing|v_pixel\(2) & (!\vga|vga_timing|v_pixel[1]~12\ & VCC))
-- \vga|vga_timing|v_pixel[2]~14\ = CARRY((\vga|vga_timing|v_pixel\(2) & !\vga|vga_timing|v_pixel[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_pixel\(2),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[1]~12\,
	combout => \vga|vga_timing|v_pixel[2]~13_combout\,
	cout => \vga|vga_timing|v_pixel[2]~14\);

-- Location: LCFF_X18_Y6_N9
\vga|vga_timing|v_pixel[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[2]~13_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(2));

-- Location: LCCOMB_X18_Y10_N8
\vga|vga_fb|SRAM_ADDR[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[11]~11_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(2))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(2)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|v_pixel\(2),
	datac => \vga|y_cursor\(2),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[11]~11_combout\);

-- Location: LCCOMB_X18_Y6_N10
\vga|vga_timing|v_pixel[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[3]~15_combout\ = (\vga|vga_timing|v_pixel\(3) & (!\vga|vga_timing|v_pixel[2]~14\)) # (!\vga|vga_timing|v_pixel\(3) & ((\vga|vga_timing|v_pixel[2]~14\) # (GND)))
-- \vga|vga_timing|v_pixel[3]~16\ = CARRY((!\vga|vga_timing|v_pixel[2]~14\) # (!\vga|vga_timing|v_pixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(3),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[2]~14\,
	combout => \vga|vga_timing|v_pixel[3]~15_combout\,
	cout => \vga|vga_timing|v_pixel[3]~16\);

-- Location: LCFF_X18_Y6_N11
\vga|vga_timing|v_pixel[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[3]~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(3));

-- Location: LCCOMB_X18_Y6_N26
\vga|vga_fb|SRAM_ADDR[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[12]~12_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(3))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(3)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(3),
	datab => \vga|y_cursor\(3),
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[12]~12_combout\);

-- Location: LCCOMB_X18_Y6_N12
\vga|vga_timing|v_pixel[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[4]~17_combout\ = (\vga|vga_timing|v_pixel\(4) & (\vga|vga_timing|v_pixel[3]~16\ $ (GND))) # (!\vga|vga_timing|v_pixel\(4) & (!\vga|vga_timing|v_pixel[3]~16\ & VCC))
-- \vga|vga_timing|v_pixel[4]~18\ = CARRY((\vga|vga_timing|v_pixel\(4) & !\vga|vga_timing|v_pixel[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(4),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[3]~16\,
	combout => \vga|vga_timing|v_pixel[4]~17_combout\,
	cout => \vga|vga_timing|v_pixel[4]~18\);

-- Location: LCFF_X18_Y6_N13
\vga|vga_timing|v_pixel[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[4]~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(4));

-- Location: LCCOMB_X18_Y6_N22
\vga|vga_fb|SRAM_ADDR[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[13]~13_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(4))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(4)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(4),
	datab => \vga|y_cursor\(4),
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[13]~13_combout\);

-- Location: LCCOMB_X18_Y6_N14
\vga|vga_timing|v_pixel[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[5]~19_combout\ = (\vga|vga_timing|v_pixel\(5) & (!\vga|vga_timing|v_pixel[4]~18\)) # (!\vga|vga_timing|v_pixel\(5) & ((\vga|vga_timing|v_pixel[4]~18\) # (GND)))
-- \vga|vga_timing|v_pixel[5]~20\ = CARRY((!\vga|vga_timing|v_pixel[4]~18\) # (!\vga|vga_timing|v_pixel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_pixel\(5),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[4]~18\,
	combout => \vga|vga_timing|v_pixel[5]~19_combout\,
	cout => \vga|vga_timing|v_pixel[5]~20\);

-- Location: LCFF_X18_Y6_N15
\vga|vga_timing|v_pixel[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[5]~19_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(5));

-- Location: LCCOMB_X18_Y6_N24
\vga|vga_fb|SRAM_ADDR[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[14]~14_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_pixel\(5)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|y_cursor\(5))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|y_cursor\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(5),
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_timing|v_pixel\(5),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[14]~14_combout\);

-- Location: LCCOMB_X18_Y6_N16
\vga|vga_timing|v_pixel[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[6]~21_combout\ = (\vga|vga_timing|v_pixel\(6) & (\vga|vga_timing|v_pixel[5]~20\ $ (GND))) # (!\vga|vga_timing|v_pixel\(6) & (!\vga|vga_timing|v_pixel[5]~20\ & VCC))
-- \vga|vga_timing|v_pixel[6]~22\ = CARRY((\vga|vga_timing|v_pixel\(6) & !\vga|vga_timing|v_pixel[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(6),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[5]~20\,
	combout => \vga|vga_timing|v_pixel[6]~21_combout\,
	cout => \vga|vga_timing|v_pixel[6]~22\);

-- Location: LCFF_X18_Y6_N17
\vga|vga_timing|v_pixel[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[6]~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(6));

-- Location: LCCOMB_X18_Y6_N2
\vga|vga_fb|SRAM_ADDR[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[15]~15_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_pixel\(6)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|y_cursor\(6))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|y_cursor\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(6),
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_timing|v_pixel\(6),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[15]~15_combout\);

-- Location: LCCOMB_X18_Y6_N18
\vga|vga_timing|v_pixel[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[7]~23_combout\ = (\vga|vga_timing|v_pixel\(7) & (!\vga|vga_timing|v_pixel[6]~22\)) # (!\vga|vga_timing|v_pixel\(7) & ((\vga|vga_timing|v_pixel[6]~22\) # (GND)))
-- \vga|vga_timing|v_pixel[7]~24\ = CARRY((!\vga|vga_timing|v_pixel[6]~22\) # (!\vga|vga_timing|v_pixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_pixel\(7),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[6]~22\,
	combout => \vga|vga_timing|v_pixel[7]~23_combout\,
	cout => \vga|vga_timing|v_pixel[7]~24\);

-- Location: LCFF_X18_Y6_N19
\vga|vga_timing|v_pixel[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[7]~23_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(7));

-- Location: LCCOMB_X18_Y6_N28
\vga|vga_fb|SRAM_ADDR[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[16]~16_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_pixel\(7)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|y_cursor\(7))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|y_cursor\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(7),
	datab => \vga|vga_timing|v_pixel\(7),
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[16]~16_combout\);

-- Location: LCCOMB_X18_Y6_N20
\vga|vga_timing|v_pixel[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[8]~25_combout\ = \vga|vga_timing|v_pixel\(8) $ (!\vga|vga_timing|v_pixel[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(8),
	cin => \vga|vga_timing|v_pixel[7]~24\,
	combout => \vga|vga_timing|v_pixel[8]~25_combout\);

-- Location: LCFF_X18_Y6_N21
\vga|vga_timing|v_pixel[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_pixel[8]~25_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \vga|vga_timing|v_timing~0_combout\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_pixel\(8));

-- Location: LCCOMB_X18_Y6_N30
\vga|vga_fb|SRAM_ADDR[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[17]~17_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_pixel\(8)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|y_cursor\(8))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|y_cursor\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(8),
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_timing|v_pixel\(8),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[17]~17_combout\);

-- Location: LCCOMB_X19_Y6_N6
\vga|vga_fb|SRAM_UB_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_UB_N~0_combout\ = (\vga|fb_buffer_idx~regout\ & (((!\vga|vga_timing|h_state.DATA~regout\)) # (!\vga|vga_timing|v_state.DATA~regout\))) # (!\vga|fb_buffer_idx~regout\ & (((\vga|vga_timing|v_state.DATA~regout\ & 
-- \vga|vga_timing|h_state.DATA~regout\)) # (!\vga|fb_wr_req~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|fb_buffer_idx~regout\,
	datac => \vga|fb_wr_req~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_UB_N~0_combout\);

-- Location: LCCOMB_X19_Y6_N24
\vga|vga_fb|SRAM_LB_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_LB_N~0_combout\ = (\vga|fb_buffer_idx~regout\ & (((\vga|vga_timing|v_state.DATA~regout\ & \vga|vga_timing|h_state.DATA~regout\)) # (!\vga|fb_wr_req~regout\))) # (!\vga|fb_buffer_idx~regout\ & (((!\vga|vga_timing|h_state.DATA~regout\)) # 
-- (!\vga|vga_timing|v_state.DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|fb_buffer_idx~regout\,
	datac => \vga|fb_wr_req~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_LB_N~0_combout\);

-- Location: CLKCTRL_G2
\pll|altpll_component|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll|altpll_component|_clk1~clkctrl_outclk\);

-- Location: LCFF_X26_Y11_N19
\view_control_unit|SHOW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view_control_unit|SHOW~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view_control_unit|SHOW~regout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
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
	datain => \vga|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
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
	datain => \vga|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
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
	datain => \vga|VGA_R[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
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
	datain => \vga|VGA_R[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
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
	datain => \vga|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
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
	datain => \vga|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
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
	datain => \vga|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
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
	datain => \vga|VGA_G[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
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
	datain => \vga|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
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
	datain => \vga|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
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
	datain => \vga|VGA_B[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
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
	datain => \vga|VGA_B[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
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
	datain => \vga|vga_timing|ALT_INV_h_state.SYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
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
	datain => \vga|vga_timing|ALT_INV_v_state.SYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[0]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(0));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[1]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(1));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[2]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(2));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[3]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[4]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(4));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[5]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(5));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[6]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(6));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[7]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(7));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[8]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(8));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[9]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(9));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[10]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(10));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[11]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(11));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[12]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(12));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[13]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(13));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[14]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[15]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(15));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[16]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(16));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[17]~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_ADDR[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(17));

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N~I\ : cycloneii_io
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
	padio => ww_SRAM_CE_N);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N~I\ : cycloneii_io
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
	datain => \vga|vga_timing|ALT_INV_BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N~I\ : cycloneii_io
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
	datain => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N);

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_UB_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_UB_N);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N~I\ : cycloneii_io
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
	datain => \vga|vga_fb|SRAM_LB_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_LB_N);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	padio => ww_LEDR(9));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => \view_control_unit|SHOW~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));
END structure;


