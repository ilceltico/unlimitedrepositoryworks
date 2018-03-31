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

-- DATE "03/31/2018 14:26:05"

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
SIGNAL \view|render_asap~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET_N~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll|altpll_component|_clk1\ : std_logic;
SIGNAL \pll|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \vga|Add1~3_combout\ : std_logic;
SIGNAL \vga|Add1~12_combout\ : std_logic;
SIGNAL \vga|Add0~3_combout\ : std_logic;
SIGNAL \vga|Add0~6_combout\ : std_logic;
SIGNAL \vga|Add0~9_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~6_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~2_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~11_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~16_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~20_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~21_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~37_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~41_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~49_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~51_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~53_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~59_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~63_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~65_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~69_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~71_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~75_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~34_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~40_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~48_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~54_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~60_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~66_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~71\ : std_logic;
SIGNAL \sprite_renderer|Add0~72_combout\ : std_logic;
SIGNAL \view|Add10~2_combout\ : std_logic;
SIGNAL \view|Add10~4_combout\ : std_logic;
SIGNAL \view|Add10~8_combout\ : std_logic;
SIGNAL \view|Add10~12_combout\ : std_logic;
SIGNAL \view|Add10~14_combout\ : std_logic;
SIGNAL \view|Add6~2_combout\ : std_logic;
SIGNAL \view|Add6~4_combout\ : std_logic;
SIGNAL \view|Add6~6_combout\ : std_logic;
SIGNAL \view|Add6~8_combout\ : std_logic;
SIGNAL \view|Add6~10_combout\ : std_logic;
SIGNAL \view|Add6~12_combout\ : std_logic;
SIGNAL \view|Add6~14_combout\ : std_logic;
SIGNAL \view|Add6~16_combout\ : std_logic;
SIGNAL \view|Add3~0_combout\ : std_logic;
SIGNAL \view|Add3~2_combout\ : std_logic;
SIGNAL \view|Add3~4_combout\ : std_logic;
SIGNAL \view|Add3~6_combout\ : std_logic;
SIGNAL \view|Add3~10_combout\ : std_logic;
SIGNAL \view|Add3~12_combout\ : std_logic;
SIGNAL \view|Add3~14_combout\ : std_logic;
SIGNAL \view|Add4~0_combout\ : std_logic;
SIGNAL \view|Add9~2_combout\ : std_logic;
SIGNAL \view|Add4~2_combout\ : std_logic;
SIGNAL \view|Add4~4_combout\ : std_logic;
SIGNAL \view|Add8~2_combout\ : std_logic;
SIGNAL \view|Add9~4_combout\ : std_logic;
SIGNAL \view|Add9~6_combout\ : std_logic;
SIGNAL \view|Add7~0_combout\ : std_logic;
SIGNAL \view|Add4~6_combout\ : std_logic;
SIGNAL \view|Add4~8_combout\ : std_logic;
SIGNAL \view|Add8~6_combout\ : std_logic;
SIGNAL \view|Add9~8_combout\ : std_logic;
SIGNAL \view|Add9~10_combout\ : std_logic;
SIGNAL \view|Add7~2_combout\ : std_logic;
SIGNAL \view|Add7~4_combout\ : std_logic;
SIGNAL \view|Add4~10_combout\ : std_logic;
SIGNAL \view|Add8~11\ : std_logic;
SIGNAL \view|Add9~12_combout\ : std_logic;
SIGNAL \view|Add9~15\ : std_logic;
SIGNAL \view|Add7~6_combout\ : std_logic;
SIGNAL \view|Add7~9\ : std_logic;
SIGNAL \view|Add8~12_combout\ : std_logic;
SIGNAL \view|Add9~16_combout\ : std_logic;
SIGNAL \view|Add7~10_combout\ : std_logic;
SIGNAL \view|Add2~7_combout\ : std_logic;
SIGNAL \view|Add2~9_combout\ : std_logic;
SIGNAL \view|Add2~17_combout\ : std_logic;
SIGNAL \view|Add2~33_combout\ : std_logic;
SIGNAL \view|Add2~35_combout\ : std_logic;
SIGNAL \view|Add2~52\ : std_logic;
SIGNAL \view|Add2~54\ : std_logic;
SIGNAL \view|Add2~53_combout\ : std_logic;
SIGNAL \view|Add2~56\ : std_logic;
SIGNAL \view|Add2~55_combout\ : std_logic;
SIGNAL \view|Add2~58\ : std_logic;
SIGNAL \view|Add2~57_combout\ : std_logic;
SIGNAL \view|Add2~60\ : std_logic;
SIGNAL \view|Add2~59_combout\ : std_logic;
SIGNAL \view|Add2~62\ : std_logic;
SIGNAL \view|Add2~61_combout\ : std_logic;
SIGNAL \view|Add2~63_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \vga|Equal0~4_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~15_combout\ : std_logic;
SIGNAL \vga|Equal2~3_combout\ : std_logic;
SIGNAL \vga|Equal1~2_combout\ : std_logic;
SIGNAL \vga|Equal1~3_combout\ : std_logic;
SIGNAL \vga|Equal1~4_combout\ : std_logic;
SIGNAL \vga|Equal1~5_combout\ : std_logic;
SIGNAL \vga|Equal1~6_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~15_combout\ : std_logic;
SIGNAL \vga|Equal3~0_combout\ : std_logic;
SIGNAL \vga|Equal3~1_combout\ : std_logic;
SIGNAL \vga|Equal3~2_combout\ : std_logic;
SIGNAL \vga|Equal3~3_combout\ : std_logic;
SIGNAL \vga|Equal3~4_combout\ : std_logic;
SIGNAL \vga|flip_on_next_vs~regout\ : std_logic;
SIGNAL \vga|Selector0~2_combout\ : std_logic;
SIGNAL \vga|Selector2~0_combout\ : std_logic;
SIGNAL \vga|x_end~8_combout\ : std_logic;
SIGNAL \vga|x_end~9_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~0_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~1_combout\ : std_logic;
SIGNAL \vga|y_end~1_combout\ : std_logic;
SIGNAL \vga|y_end~2_combout\ : std_logic;
SIGNAL \vga|y_end~3_combout\ : std_logic;
SIGNAL \vga|y_end~4_combout\ : std_logic;
SIGNAL \vga|y_end~6_combout\ : std_logic;
SIGNAL \vga|y_end~7_combout\ : std_logic;
SIGNAL \vga|y_end~8_combout\ : std_logic;
SIGNAL \vga|flip_on_next_vs~0_combout\ : std_logic;
SIGNAL \vga|flip_on_next_vs~1_combout\ : std_logic;
SIGNAL \sprite_renderer|Mux32~0_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~1_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~4_combout\ : std_logic;
SIGNAL \sprite_renderer|next_state.DRAWING~regout\ : std_logic;
SIGNAL \sprite_renderer|state.WAITING~regout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~0_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~6_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~34_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~23_combout\ : std_logic;
SIGNAL \sprite_renderer|next_state.SHOWING~regout\ : std_logic;
SIGNAL \view|Equal0~0_combout\ : std_logic;
SIGNAL \view|Equal0~7_combout\ : std_logic;
SIGNAL \view|Equal0~8_combout\ : std_logic;
SIGNAL \sprite_renderer|next_state.IDLE~regout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~10_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~80_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~81_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~83_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~84_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~86_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~95_combout\ : std_logic;
SIGNAL \sprite_renderer|next_state.WAITING~0_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector71~0_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector71~1_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector71~2_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector65~0_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector65~1_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~74_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~82_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~85_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~88_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~92_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~95_combout\ : std_logic;
SIGNAL \sprite_renderer|next_state.CLEARING~0_combout\ : std_logic;
SIGNAL \view|SPRITE_X~4_combout\ : std_logic;
SIGNAL \view|SPRITE_X~5_combout\ : std_logic;
SIGNAL \view|SPRITE_X~6_combout\ : std_logic;
SIGNAL \view|SPRITE_X~7_combout\ : std_logic;
SIGNAL \view|SPRITE_X~8_combout\ : std_logic;
SIGNAL \view|SPRITE_X~9_combout\ : std_logic;
SIGNAL \view|SPRITE_X~14_combout\ : std_logic;
SIGNAL \view|SPRITE_X~19_combout\ : std_logic;
SIGNAL \view|SPRITE_X~20_combout\ : std_logic;
SIGNAL \view|SPRITE_X~21_combout\ : std_logic;
SIGNAL \view|SPRITE_X~22_combout\ : std_logic;
SIGNAL \view|SPRITE_X~23_combout\ : std_logic;
SIGNAL \view|SPRITE_X~24_combout\ : std_logic;
SIGNAL \view|Selector8~1_combout\ : std_logic;
SIGNAL \view|SPRITE_Y[1]~2_combout\ : std_logic;
SIGNAL \view|SPRITE_Y[1]~3_combout\ : std_logic;
SIGNAL \view|SPRITE_Y[1]~4_combout\ : std_logic;
SIGNAL \view|SPRITE_Y[1]~5_combout\ : std_logic;
SIGNAL \view|SPRITE_Y[1]~6_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~7_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~8_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~9_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~11_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~13_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~14_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~15_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~16_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~17_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~18_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~19_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~20_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~21_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~26_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~29_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector72~0_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector72~1_combout\ : std_logic;
SIGNAL \view|Add2~65_combout\ : std_logic;
SIGNAL \view|Add2~66_combout\ : std_logic;
SIGNAL \view|Add2~67_combout\ : std_logic;
SIGNAL \view|Add2~68_combout\ : std_logic;
SIGNAL \view|Add2~70_combout\ : std_logic;
SIGNAL \view|Add2~79_combout\ : std_logic;
SIGNAL \view|Add2~88_combout\ : std_logic;
SIGNAL \view|Add2~92_combout\ : std_logic;
SIGNAL \view|Add2~93_combout\ : std_logic;
SIGNAL \view|SHOW~regout\ : std_logic;
SIGNAL \sprite_renderer|Selector69~0_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector69~1_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector69~2_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector69~3_combout\ : std_logic;
SIGNAL \frame_time~regout\ : std_logic;
SIGNAL \fps:counter[2]~regout\ : std_logic;
SIGNAL \fps:counter[3]~regout\ : std_logic;
SIGNAL \fps:counter[1]~regout\ : std_logic;
SIGNAL \fps:counter[0]~regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \fps:counter[19]~regout\ : std_logic;
SIGNAL \fps:counter[18]~regout\ : std_logic;
SIGNAL \fps:counter[17]~regout\ : std_logic;
SIGNAL \fps:counter[16]~regout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \fps:counter[15]~regout\ : std_logic;
SIGNAL \fps:counter[13]~regout\ : std_logic;
SIGNAL \fps:counter[12]~regout\ : std_logic;
SIGNAL \fps:counter[14]~regout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \fps:counter[10]~regout\ : std_logic;
SIGNAL \fps:counter[9]~regout\ : std_logic;
SIGNAL \fps:counter[8]~regout\ : std_logic;
SIGNAL \fps:counter[11]~regout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \fps:counter[5]~regout\ : std_logic;
SIGNAL \fps:counter[4]~regout\ : std_logic;
SIGNAL \fps:counter[7]~regout\ : std_logic;
SIGNAL \fps:counter[6]~regout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~100_combout\ : std_logic;
SIGNAL \view|render_asap~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \pll|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[8]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[7]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[3]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[2]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[5]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[4]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[1]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[2]~feeder_combout\ : std_logic;
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
SIGNAL \vga|vga_timing|Add2~1\ : std_logic;
SIGNAL \vga|vga_timing|Add2~2_combout\ : std_logic;
SIGNAL \reset_sync_reg~feeder_combout\ : std_logic;
SIGNAL \reset_sync_reg~regout\ : std_logic;
SIGNAL \RESET_N~regout\ : std_logic;
SIGNAL \RESET_N~clkctrl_outclk\ : std_logic;
SIGNAL \vga|vga_timing|clock_count[0]~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|clock_count[1]~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal0~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~3\ : std_logic;
SIGNAL \vga|vga_timing|Add2~5\ : std_logic;
SIGNAL \vga|vga_timing|Add2~6_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~7\ : std_logic;
SIGNAL \vga|vga_timing|Add2~9\ : std_logic;
SIGNAL \vga|vga_timing|Add2~10_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~15\ : std_logic;
SIGNAL \vga|vga_timing|Add2~17\ : std_logic;
SIGNAL \vga|vga_timing|Add2~18_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~16_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_counter~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~8_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal3~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_counter~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_counter~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~11\ : std_logic;
SIGNAL \vga|vga_timing|Add2~13\ : std_logic;
SIGNAL \vga|vga_timing|Add2~14_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal2~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal2~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add2~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal2~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal1~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal1~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_state~11_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_state~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_state.DATA~regout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~11\ : std_logic;
SIGNAL \vga|vga_timing|Add4~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|new_line~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|new_line~regout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~13\ : std_logic;
SIGNAL \vga|vga_timing|Add4~14_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~15\ : std_logic;
SIGNAL \vga|vga_timing|Add4~16_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal6~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~17\ : std_logic;
SIGNAL \vga|vga_timing|Add4~18_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~4_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~3_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~1\ : std_logic;
SIGNAL \vga|vga_timing|Add4~3\ : std_logic;
SIGNAL \vga|vga_timing|Add4~4_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal8~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal8~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_counter~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~5\ : std_logic;
SIGNAL \vga|vga_timing|Add4~7\ : std_logic;
SIGNAL \vga|vga_timing|Add4~8_combout\ : std_logic;
SIGNAL \vga|vga_timing|Add4~9\ : std_logic;
SIGNAL \vga|vga_timing|Add4~10_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal6~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_state~11_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal8~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_state~12_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_state.DATA~regout\ : std_logic;
SIGNAL \sprite_renderer|Add1~4_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal6~2_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_state.SYNC~regout\ : std_logic;
SIGNAL \sprite_renderer|Selector68~3_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector67~0_combout\ : std_logic;
SIGNAL \sprite_renderer|state.SHOWING~regout\ : std_logic;
SIGNAL \sprite_renderer|Selector68~1_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_FLIP~regout\ : std_logic;
SIGNAL \sprite_renderer|next_state.WAITING~1_combout\ : std_logic;
SIGNAL \sprite_renderer|next_state.CLEARING~1_combout\ : std_logic;
SIGNAL \sprite_renderer|next_state.CLEARING~regout\ : std_logic;
SIGNAL \sprite_renderer|state.CLEARING~0_combout\ : std_logic;
SIGNAL \sprite_renderer|state.CLEARING~regout\ : std_logic;
SIGNAL \sprite_renderer|FB_CLEAR~0_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_CLEAR~regout\ : std_logic;
SIGNAL \sprite_renderer|Selector68~0_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector68~2_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector66~0_combout\ : std_logic;
SIGNAL \sprite_renderer|state.DRAWING~regout\ : std_logic;
SIGNAL \sprite_renderer|Add1~6_combout\ : std_logic;
SIGNAL \sprite_renderer|READY~regout\ : std_logic;
SIGNAL \view|render_asap~0_combout\ : std_logic;
SIGNAL \view|render_asap~regout\ : std_logic;
SIGNAL \view|render_counter[31]~1_combout\ : std_logic;
SIGNAL \view|Selector23~0_combout\ : std_logic;
SIGNAL \view|state.WAITING_2~regout\ : std_logic;
SIGNAL \view|Selector21~0_combout\ : std_logic;
SIGNAL \view|state.SHOW_SPRITES~regout\ : std_logic;
SIGNAL \view|Selector24~2_combout\ : std_logic;
SIGNAL \view|SHOW~0_combout\ : std_logic;
SIGNAL \view|Selector22~0_combout\ : std_logic;
SIGNAL \view|state.WAITING~regout\ : std_logic;
SIGNAL \view|render_counter~2_combout\ : std_logic;
SIGNAL \view|next_state.RENDER~regout\ : std_logic;
SIGNAL \view|Selector20~0_combout\ : std_logic;
SIGNAL \view|state.RENDER~regout\ : std_logic;
SIGNAL \view|DRAW_SPRITE~regout\ : std_logic;
SIGNAL \sprite_renderer|show_asap~0_combout\ : std_logic;
SIGNAL \sprite_renderer|show_asap~regout\ : std_logic;
SIGNAL \sprite_renderer|Selector64~0_combout\ : std_logic;
SIGNAL \sprite_renderer|Selector64~1_combout\ : std_logic;
SIGNAL \sprite_renderer|state.IDLE~regout\ : std_logic;
SIGNAL \sprite_renderer|Add1~7_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~5\ : std_logic;
SIGNAL \sprite_renderer|Add1~8_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~10_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~19_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~2_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~18_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~9\ : std_logic;
SIGNAL \sprite_renderer|Add1~12\ : std_logic;
SIGNAL \sprite_renderer|Add1~14\ : std_logic;
SIGNAL \sprite_renderer|Add1~17\ : std_logic;
SIGNAL \sprite_renderer|Add1~21\ : std_logic;
SIGNAL \sprite_renderer|Add1~22_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~33_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~23\ : std_logic;
SIGNAL \sprite_renderer|Add1~24_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~32_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~25\ : std_logic;
SIGNAL \sprite_renderer|Add1~26_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~31_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~0_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~3_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~97_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~61_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~85_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~55_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~88_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~5_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~89_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~90_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~6_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~27\ : std_logic;
SIGNAL \sprite_renderer|Add1~29\ : std_logic;
SIGNAL \sprite_renderer|Add1~35_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~98_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~36\ : std_logic;
SIGNAL \sprite_renderer|Add1~38\ : std_logic;
SIGNAL \sprite_renderer|Add1~39_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~96_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~40\ : std_logic;
SIGNAL \sprite_renderer|Add1~42\ : std_logic;
SIGNAL \sprite_renderer|Add1~43_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~94_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~44\ : std_logic;
SIGNAL \sprite_renderer|Add1~45_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~93_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~7_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~8_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan0~9_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~91_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~46\ : std_logic;
SIGNAL \sprite_renderer|Add1~47_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~92_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~48\ : std_logic;
SIGNAL \sprite_renderer|Add1~50\ : std_logic;
SIGNAL \sprite_renderer|Add1~52\ : std_logic;
SIGNAL \sprite_renderer|Add1~54\ : std_logic;
SIGNAL \sprite_renderer|Add1~56\ : std_logic;
SIGNAL \sprite_renderer|Add1~57_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~87_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~58\ : std_logic;
SIGNAL \sprite_renderer|Add1~60\ : std_logic;
SIGNAL \sprite_renderer|Add1~62\ : std_logic;
SIGNAL \sprite_renderer|Add1~64\ : std_logic;
SIGNAL \sprite_renderer|Add1~66\ : std_logic;
SIGNAL \sprite_renderer|Add1~67_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~82_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~68\ : std_logic;
SIGNAL \sprite_renderer|Add1~70\ : std_logic;
SIGNAL \sprite_renderer|Add1~72\ : std_logic;
SIGNAL \sprite_renderer|Add1~73_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~79_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~74\ : std_logic;
SIGNAL \sprite_renderer|Add1~76\ : std_logic;
SIGNAL \sprite_renderer|Add1~77_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~99_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~13_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~15_combout\ : std_logic;
SIGNAL \view|Add2~0_combout\ : std_logic;
SIGNAL \view|Add2~95_combout\ : std_logic;
SIGNAL \view|render_counter[31]~0_combout\ : std_logic;
SIGNAL \view|Add2~1\ : std_logic;
SIGNAL \view|Add2~3\ : std_logic;
SIGNAL \view|Add2~4_combout\ : std_logic;
SIGNAL \view|Add2~6_combout\ : std_logic;
SIGNAL \view|Add2~5\ : std_logic;
SIGNAL \view|Add2~8\ : std_logic;
SIGNAL \view|Add2~10\ : std_logic;
SIGNAL \view|Add2~11_combout\ : std_logic;
SIGNAL \view|Add2~91_combout\ : std_logic;
SIGNAL \view|Add2~12\ : std_logic;
SIGNAL \view|Add2~13_combout\ : std_logic;
SIGNAL \view|Add2~90_combout\ : std_logic;
SIGNAL \view|Add2~14\ : std_logic;
SIGNAL \view|Add2~15_combout\ : std_logic;
SIGNAL \view|Add2~89_combout\ : std_logic;
SIGNAL \view|Add2~16\ : std_logic;
SIGNAL \view|Add2~18\ : std_logic;
SIGNAL \view|Add2~19_combout\ : std_logic;
SIGNAL \view|Add2~87_combout\ : std_logic;
SIGNAL \view|Add2~20\ : std_logic;
SIGNAL \view|Add2~21_combout\ : std_logic;
SIGNAL \view|Add2~86_combout\ : std_logic;
SIGNAL \view|Add2~22\ : std_logic;
SIGNAL \view|Add2~23_combout\ : std_logic;
SIGNAL \view|Add2~85_combout\ : std_logic;
SIGNAL \view|Equal0~6_combout\ : std_logic;
SIGNAL \view|Add2~80_combout\ : std_logic;
SIGNAL \view|Add2~24\ : std_logic;
SIGNAL \view|Add2~25_combout\ : std_logic;
SIGNAL \view|Add2~84_combout\ : std_logic;
SIGNAL \view|Add2~26\ : std_logic;
SIGNAL \view|Add2~27_combout\ : std_logic;
SIGNAL \view|Add2~83_combout\ : std_logic;
SIGNAL \view|Add2~28\ : std_logic;
SIGNAL \view|Add2~29_combout\ : std_logic;
SIGNAL \view|Add2~82_combout\ : std_logic;
SIGNAL \view|Add2~30\ : std_logic;
SIGNAL \view|Add2~31_combout\ : std_logic;
SIGNAL \view|Add2~81_combout\ : std_logic;
SIGNAL \view|Add2~32\ : std_logic;
SIGNAL \view|Add2~34\ : std_logic;
SIGNAL \view|Add2~36\ : std_logic;
SIGNAL \view|Add2~37_combout\ : std_logic;
SIGNAL \view|Add2~78_combout\ : std_logic;
SIGNAL \view|Add2~38\ : std_logic;
SIGNAL \view|Add2~39_combout\ : std_logic;
SIGNAL \view|Add2~77_combout\ : std_logic;
SIGNAL \view|Add2~40\ : std_logic;
SIGNAL \view|Add2~41_combout\ : std_logic;
SIGNAL \view|Add2~76_combout\ : std_logic;
SIGNAL \view|Add2~42\ : std_logic;
SIGNAL \view|Add2~44\ : std_logic;
SIGNAL \view|Add2~45_combout\ : std_logic;
SIGNAL \view|Add2~74_combout\ : std_logic;
SIGNAL \view|Add2~46\ : std_logic;
SIGNAL \view|Add2~47_combout\ : std_logic;
SIGNAL \view|Add2~73_combout\ : std_logic;
SIGNAL \view|Add2~48\ : std_logic;
SIGNAL \view|Add2~50\ : std_logic;
SIGNAL \view|Add2~51_combout\ : std_logic;
SIGNAL \view|Add2~71_combout\ : std_logic;
SIGNAL \view|Add2~49_combout\ : std_logic;
SIGNAL \view|Add2~72_combout\ : std_logic;
SIGNAL \view|Add2~69_combout\ : std_logic;
SIGNAL \view|Equal0~1_combout\ : std_logic;
SIGNAL \view|Add2~43_combout\ : std_logic;
SIGNAL \view|Add2~75_combout\ : std_logic;
SIGNAL \view|Equal0~2_combout\ : std_logic;
SIGNAL \view|Equal0~3_combout\ : std_logic;
SIGNAL \view|Equal0~4_combout\ : std_logic;
SIGNAL \view|Equal0~5_combout\ : std_logic;
SIGNAL \view|Equal0~9_combout\ : std_logic;
SIGNAL \view|SPRITE~0_combout\ : std_logic;
SIGNAL \view|SPRITE.img_pixels[3][10]~regout\ : std_logic;
SIGNAL \sprite_renderer|sprite_to_draw.color[6]~1_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_to_draw.color[6]~0_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[1]~13_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[1]~14_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~11_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~9_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~1\ : std_logic;
SIGNAL \sprite_renderer|Add0~3\ : std_logic;
SIGNAL \sprite_renderer|Add0~4_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~10_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~5\ : std_logic;
SIGNAL \sprite_renderer|Add0~6_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~8_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~7\ : std_logic;
SIGNAL \sprite_renderer|Add0~12_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~14_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~13\ : std_logic;
SIGNAL \sprite_renderer|Add0~16_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~18_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~17\ : std_logic;
SIGNAL \sprite_renderer|Add0~19_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~24_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~20\ : std_logic;
SIGNAL \sprite_renderer|Add0~22\ : std_logic;
SIGNAL \sprite_renderer|Add0~25_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~27_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~26\ : std_logic;
SIGNAL \sprite_renderer|Add0~28_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~80_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~29\ : std_logic;
SIGNAL \sprite_renderer|Add0~30_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~79_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~4_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~31\ : std_logic;
SIGNAL \sprite_renderer|Add0~32_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~96_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~33\ : std_logic;
SIGNAL \sprite_renderer|Add0~35\ : std_logic;
SIGNAL \sprite_renderer|Add0~36_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~94_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~37\ : std_logic;
SIGNAL \sprite_renderer|Add0~38_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~93_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~8_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~39\ : std_logic;
SIGNAL \sprite_renderer|Add0~41\ : std_logic;
SIGNAL \sprite_renderer|Add0~42_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~91_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~43\ : std_logic;
SIGNAL \sprite_renderer|Add0~45\ : std_logic;
SIGNAL \sprite_renderer|Add0~46_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~89_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~47\ : std_logic;
SIGNAL \sprite_renderer|Add0~49\ : std_logic;
SIGNAL \sprite_renderer|Add0~50_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~87_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~51\ : std_logic;
SIGNAL \sprite_renderer|Add0~52_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~86_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~53\ : std_logic;
SIGNAL \sprite_renderer|Add0~55\ : std_logic;
SIGNAL \sprite_renderer|Add0~57\ : std_logic;
SIGNAL \sprite_renderer|Add0~58_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~83_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~59\ : std_logic;
SIGNAL \sprite_renderer|Add0~61\ : std_logic;
SIGNAL \sprite_renderer|Add0~62_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~81_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~56_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~84_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~5_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~44_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~90_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~7_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~9_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~63\ : std_logic;
SIGNAL \sprite_renderer|Add0~64_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~78_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~77_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~65\ : std_logic;
SIGNAL \sprite_renderer|Add0~67\ : std_logic;
SIGNAL \sprite_renderer|Add0~68_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~76_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~69\ : std_logic;
SIGNAL \sprite_renderer|Add0~70_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~75_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~1_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~2_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~3_combout\ : std_logic;
SIGNAL \sprite_renderer|LessThan1~10_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~0_combout\ : std_logic;
SIGNAL \sprite_renderer|Add0~15_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[1]~12_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[1]~15_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[1]~15_wirecell_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_DRAW_RECT~regout\ : std_logic;
SIGNAL \vga|Selector0~3_combout\ : std_logic;
SIGNAL \vga|Selector1~0_combout\ : std_logic;
SIGNAL \vga|state.DRAWING_RECT~regout\ : std_logic;
SIGNAL \view|SPRITE_Y~1_combout\ : std_logic;
SIGNAL \view|x[0]~27_combout\ : std_logic;
SIGNAL \view|x[1]~10\ : std_logic;
SIGNAL \view|x[2]~11_combout\ : std_logic;
SIGNAL \view|x[2]~12\ : std_logic;
SIGNAL \view|x[3]~14\ : std_logic;
SIGNAL \view|x[4]~15_combout\ : std_logic;
SIGNAL \view|x[4]~16\ : std_logic;
SIGNAL \view|x[5]~17_combout\ : std_logic;
SIGNAL \view|x[5]~18\ : std_logic;
SIGNAL \view|x[6]~20\ : std_logic;
SIGNAL \view|x[7]~21_combout\ : std_logic;
SIGNAL \view|x[7]~22\ : std_logic;
SIGNAL \view|x[8]~23_combout\ : std_logic;
SIGNAL \view|x[6]~19_combout\ : std_logic;
SIGNAL \view|x[1]~9_combout\ : std_logic;
SIGNAL \view|Add4~1\ : std_logic;
SIGNAL \view|Add4~3\ : std_logic;
SIGNAL \view|Add4~5\ : std_logic;
SIGNAL \view|Add4~7\ : std_logic;
SIGNAL \view|Add4~9\ : std_logic;
SIGNAL \view|Add4~11\ : std_logic;
SIGNAL \view|Add4~13\ : std_logic;
SIGNAL \view|Add4~14_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~28_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~0_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~30_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[8]~feeder_combout\ : std_logic;
SIGNAL \view|Add4~12_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~22_combout\ : std_logic;
SIGNAL \view|Equal5~0_combout\ : std_logic;
SIGNAL \view|x[3]~13_combout\ : std_logic;
SIGNAL \view|Add7~1\ : std_logic;
SIGNAL \view|Add7~3\ : std_logic;
SIGNAL \view|Add7~5\ : std_logic;
SIGNAL \view|Add7~7\ : std_logic;
SIGNAL \view|Add7~8_combout\ : std_logic;
SIGNAL \view|Add8~1\ : std_logic;
SIGNAL \view|Add8~3\ : std_logic;
SIGNAL \view|Add8~5\ : std_logic;
SIGNAL \view|Add8~7\ : std_logic;
SIGNAL \view|Add8~9\ : std_logic;
SIGNAL \view|Add8~10_combout\ : std_logic;
SIGNAL \view|Add8~8_combout\ : std_logic;
SIGNAL \view|Add8~4_combout\ : std_logic;
SIGNAL \view|Add8~0_combout\ : std_logic;
SIGNAL \view|Add9~1_cout\ : std_logic;
SIGNAL \view|Add9~3\ : std_logic;
SIGNAL \view|Add9~5\ : std_logic;
SIGNAL \view|Add9~7\ : std_logic;
SIGNAL \view|Add9~9\ : std_logic;
SIGNAL \view|Add9~11\ : std_logic;
SIGNAL \view|Add9~13\ : std_logic;
SIGNAL \view|Add9~14_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~23_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~24_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[7]~feeder_combout\ : std_logic;
SIGNAL \view|Equal1~0_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~25_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~27_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[6]~feeder_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~10_combout\ : std_logic;
SIGNAL \view|SPRITE_Y~12_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[3]~feeder_combout\ : std_logic;
SIGNAL \view|Selector19~0_combout\ : std_logic;
SIGNAL \view|Selector19~1_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_y[0]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[0]~10\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[1]~12\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[2]~14\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[3]~16\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[4]~18\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[5]~20\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[6]~22\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[7]~24\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[8]~25_combout\ : std_logic;
SIGNAL \vga|y_end~9_combout\ : std_logic;
SIGNAL \vga|y_end[8]~0_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~9_combout\ : std_logic;
SIGNAL \vga|Add0~0_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[0]~9_combout\ : std_logic;
SIGNAL \vga|y_start~0_combout\ : std_logic;
SIGNAL \vga|y_cursor[1]~11_combout\ : std_logic;
SIGNAL \vga|Add0~2_combout\ : std_logic;
SIGNAL \vga|x_cursor[7]~14_combout\ : std_logic;
SIGNAL \vga|Selector4~0_combout\ : std_logic;
SIGNAL \vga|substate.INIT~regout\ : std_logic;
SIGNAL \vga|x_cursor[7]~36_combout\ : std_logic;
SIGNAL \vga|x_cursor[7]~12_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~10_combout\ : std_logic;
SIGNAL \vga|x_cursor[7]~13_combout\ : std_logic;
SIGNAL \vga|Add1~0_combout\ : std_logic;
SIGNAL \view|Selector9~0_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[0]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[0]~10_combout\ : std_logic;
SIGNAL \vga|x_start~0_combout\ : std_logic;
SIGNAL \vga|Add1~2_combout\ : std_logic;
SIGNAL \vga|Selector2~1_combout\ : std_logic;
SIGNAL \vga|state.FILLING_RECT~regout\ : std_logic;
SIGNAL \vga|x_cursor[0]~18_combout\ : std_logic;
SIGNAL \view|Add5~1\ : std_logic;
SIGNAL \view|Add5~3\ : std_logic;
SIGNAL \view|Add5~5\ : std_logic;
SIGNAL \view|Add5~7\ : std_logic;
SIGNAL \view|Add5~9\ : std_logic;
SIGNAL \view|Add5~10_combout\ : std_logic;
SIGNAL \view|Equal0~10_combout\ : std_logic;
SIGNAL \view|SPRITE_X~10_combout\ : std_logic;
SIGNAL \view|Add5~8_combout\ : std_logic;
SIGNAL \view|Add5~6_combout\ : std_logic;
SIGNAL \view|Add5~4_combout\ : std_logic;
SIGNAL \view|Add5~2_combout\ : std_logic;
SIGNAL \view|Add5~0_combout\ : std_logic;
SIGNAL \view|Add10~1_cout\ : std_logic;
SIGNAL \view|Add10~3\ : std_logic;
SIGNAL \view|Add10~5\ : std_logic;
SIGNAL \view|Add10~7\ : std_logic;
SIGNAL \view|Add10~9\ : std_logic;
SIGNAL \view|Add10~10_combout\ : std_logic;
SIGNAL \view|Equal6~0_combout\ : std_logic;
SIGNAL \view|Equal4~0_combout\ : std_logic;
SIGNAL \view|SPRITE_X~11_combout\ : std_logic;
SIGNAL \view|SPRITE_X~12_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[6]~feeder_combout\ : std_logic;
SIGNAL \view|Add3~1\ : std_logic;
SIGNAL \view|Add3~3\ : std_logic;
SIGNAL \view|Add3~5\ : std_logic;
SIGNAL \view|Add3~7\ : std_logic;
SIGNAL \view|Add3~8_combout\ : std_logic;
SIGNAL \view|SPRITE_X~13_combout\ : std_logic;
SIGNAL \view|SPRITE_X~15_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[5]~feeder_combout\ : std_logic;
SIGNAL \view|Add10~6_combout\ : std_logic;
SIGNAL \view|SPRITE_X~17_combout\ : std_logic;
SIGNAL \view|Add2~2_combout\ : std_logic;
SIGNAL \view|Add2~94_combout\ : std_logic;
SIGNAL \view|SPRITE_X[3]~0_combout\ : std_logic;
SIGNAL \view|SPRITE_X~16_combout\ : std_logic;
SIGNAL \view|SPRITE_X~18_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[4]~feeder_combout\ : std_logic;
SIGNAL \view|Selector8~0_combout\ : std_logic;
SIGNAL \view|Selector8~2_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[1]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[0]~11\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[1]~17\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[2]~19\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[3]~21\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[4]~23\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[5]~25\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[6]~27\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[7]~28_combout\ : std_logic;
SIGNAL \vga|x_start~2_combout\ : std_logic;
SIGNAL \vga|x_cursor[7]~32_combout\ : std_logic;
SIGNAL \vga|x_cursor[5]~28_combout\ : std_logic;
SIGNAL \vga|x_cursor[4]~26_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[4]~22_combout\ : std_logic;
SIGNAL \vga|x_start~5_combout\ : std_logic;
SIGNAL \vga|Add1~14_combout\ : std_logic;
SIGNAL \vga|Add1~1\ : std_logic;
SIGNAL \vga|Add1~4\ : std_logic;
SIGNAL \vga|Add1~7\ : std_logic;
SIGNAL \vga|Add1~10\ : std_logic;
SIGNAL \vga|Add1~13\ : std_logic;
SIGNAL \vga|Add1~15_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[5]~24_combout\ : std_logic;
SIGNAL \vga|x_start~8_combout\ : std_logic;
SIGNAL \vga|Add1~17_combout\ : std_logic;
SIGNAL \vga|Add1~16\ : std_logic;
SIGNAL \vga|Add1~19\ : std_logic;
SIGNAL \vga|Add1~21_combout\ : std_logic;
SIGNAL \vga|Add1~23_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[7]~29\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[8]~30_combout\ : std_logic;
SIGNAL \vga|x_start~1_combout\ : std_logic;
SIGNAL \vga|Equal2~0_combout\ : std_logic;
SIGNAL \view|x[8]~24\ : std_logic;
SIGNAL \view|x[9]~25_combout\ : std_logic;
SIGNAL \view|Add5~11\ : std_logic;
SIGNAL \view|Add5~13\ : std_logic;
SIGNAL \view|Add5~15\ : std_logic;
SIGNAL \view|Add5~16_combout\ : std_logic;
SIGNAL \view|SPRITE_X~1_combout\ : std_logic;
SIGNAL \view|Add3~9\ : std_logic;
SIGNAL \view|Add3~11\ : std_logic;
SIGNAL \view|Add3~13\ : std_logic;
SIGNAL \view|Add3~15\ : std_logic;
SIGNAL \view|Add3~16_combout\ : std_logic;
SIGNAL \view|Add6~1_cout\ : std_logic;
SIGNAL \view|Add6~3\ : std_logic;
SIGNAL \view|Add6~5\ : std_logic;
SIGNAL \view|Add6~7\ : std_logic;
SIGNAL \view|Add6~9\ : std_logic;
SIGNAL \view|Add6~11\ : std_logic;
SIGNAL \view|Add6~13\ : std_logic;
SIGNAL \view|Add6~15\ : std_logic;
SIGNAL \view|Add6~17\ : std_logic;
SIGNAL \view|Add6~18_combout\ : std_logic;
SIGNAL \view|Add5~14_combout\ : std_logic;
SIGNAL \view|Add5~12_combout\ : std_logic;
SIGNAL \view|Add10~11\ : std_logic;
SIGNAL \view|Add10~13\ : std_logic;
SIGNAL \view|Add10~15\ : std_logic;
SIGNAL \view|Add10~16_combout\ : std_logic;
SIGNAL \view|SPRITE_X~2_combout\ : std_logic;
SIGNAL \view|SPRITE_X~3_combout\ : std_logic;
SIGNAL \sprite_renderer|sprite_x[9]~feeder_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~28_combout\ : std_logic;
SIGNAL \sprite_renderer|Add1~30_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[8]~31\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[9]~32_combout\ : std_logic;
SIGNAL \vga|x_end~0_combout\ : std_logic;
SIGNAL \vga|Equal2~1_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[1]~16_combout\ : std_logic;
SIGNAL \vga|x_start~4_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[2]~18_combout\ : std_logic;
SIGNAL \vga|x_start~3_combout\ : std_logic;
SIGNAL \vga|Equal2~2_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[6]~26_combout\ : std_logic;
SIGNAL \vga|x_start~7_combout\ : std_logic;
SIGNAL \vga|Equal2~4_combout\ : std_logic;
SIGNAL \vga|Equal2~5_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~16_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~17_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~19_combout\ : std_logic;
SIGNAL \vga|x_cursor[0]~11\ : std_logic;
SIGNAL \vga|x_cursor[1]~20_combout\ : std_logic;
SIGNAL \vga|Add1~5_combout\ : std_logic;
SIGNAL \vga|x_cursor[1]~21\ : std_logic;
SIGNAL \vga|x_cursor[2]~23\ : std_logic;
SIGNAL \vga|x_cursor[3]~24_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_X0[3]~20_combout\ : std_logic;
SIGNAL \vga|x_start~6_combout\ : std_logic;
SIGNAL \vga|Add1~9_combout\ : std_logic;
SIGNAL \vga|Add1~11_combout\ : std_logic;
SIGNAL \vga|x_cursor[3]~25\ : std_logic;
SIGNAL \vga|x_cursor[4]~27\ : std_logic;
SIGNAL \vga|x_cursor[5]~29\ : std_logic;
SIGNAL \vga|x_cursor[6]~30_combout\ : std_logic;
SIGNAL \vga|Add1~18_combout\ : std_logic;
SIGNAL \vga|Add1~20_combout\ : std_logic;
SIGNAL \vga|x_cursor[6]~31\ : std_logic;
SIGNAL \vga|x_cursor[7]~33\ : std_logic;
SIGNAL \vga|x_cursor[8]~34_combout\ : std_logic;
SIGNAL \vga|Add1~22\ : std_logic;
SIGNAL \vga|Add1~24_combout\ : std_logic;
SIGNAL \vga|Add1~26_combout\ : std_logic;
SIGNAL \vga|x_cursor[8]~35\ : std_logic;
SIGNAL \vga|x_cursor[9]~37_combout\ : std_logic;
SIGNAL \vga|Add1~25\ : std_logic;
SIGNAL \vga|Add1~27_combout\ : std_logic;
SIGNAL \vga|Add1~29_combout\ : std_logic;
SIGNAL \vga|x_end~1_combout\ : std_logic;
SIGNAL \vga|Equal0~0_combout\ : std_logic;
SIGNAL \vga|x_end~5_combout\ : std_logic;
SIGNAL \vga|x_end~4_combout\ : std_logic;
SIGNAL \vga|Equal0~2_combout\ : std_logic;
SIGNAL \vga|x_end~6_combout\ : std_logic;
SIGNAL \vga|x_end~7_combout\ : std_logic;
SIGNAL \vga|Equal0~3_combout\ : std_logic;
SIGNAL \vga|x_end~2_combout\ : std_logic;
SIGNAL \vga|x_end~3_combout\ : std_logic;
SIGNAL \vga|Equal0~1_combout\ : std_logic;
SIGNAL \vga|Equal0~5_combout\ : std_logic;
SIGNAL \vga|Equal0~6_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~2_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING~0_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~3_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R2~regout\ : std_logic;
SIGNAL \vga|y_cursor[1]~12_combout\ : std_logic;
SIGNAL \vga|y_cursor[1]~13_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~14_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~17_combout\ : std_logic;
SIGNAL \vga|y_cursor[0]~10\ : std_logic;
SIGNAL \vga|y_cursor[1]~18_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[1]~11_combout\ : std_logic;
SIGNAL \vga|y_start~2_combout\ : std_logic;
SIGNAL \vga|Add0~5_combout\ : std_logic;
SIGNAL \vga|y_cursor[1]~19\ : std_logic;
SIGNAL \vga|y_cursor[2]~21\ : std_logic;
SIGNAL \vga|y_cursor[3]~22_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[3]~15_combout\ : std_logic;
SIGNAL \vga|y_start~4_combout\ : std_logic;
SIGNAL \vga|Add0~11_combout\ : std_logic;
SIGNAL \vga|y_cursor[3]~23\ : std_logic;
SIGNAL \vga|y_cursor[4]~25\ : std_logic;
SIGNAL \vga|y_cursor[5]~27\ : std_logic;
SIGNAL \vga|y_cursor[6]~28_combout\ : std_logic;
SIGNAL \vga|y_cursor[5]~26_combout\ : std_logic;
SIGNAL \vga|y_cursor[2]~20_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[2]~13_combout\ : std_logic;
SIGNAL \vga|y_start~1_combout\ : std_logic;
SIGNAL \vga|Add0~8_combout\ : std_logic;
SIGNAL \vga|Add0~1\ : std_logic;
SIGNAL \vga|Add0~4\ : std_logic;
SIGNAL \vga|Add0~7\ : std_logic;
SIGNAL \vga|Add0~10\ : std_logic;
SIGNAL \vga|Add0~13\ : std_logic;
SIGNAL \vga|Add0~15_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[5]~19_combout\ : std_logic;
SIGNAL \vga|y_end~5_combout\ : std_logic;
SIGNAL \vga|Add0~17_combout\ : std_logic;
SIGNAL \vga|Add0~16\ : std_logic;
SIGNAL \vga|Add0~18_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[6]~21_combout\ : std_logic;
SIGNAL \vga|y_start~6_combout\ : std_logic;
SIGNAL \vga|Add0~20_combout\ : std_logic;
SIGNAL \vga|y_cursor[6]~29\ : std_logic;
SIGNAL \vga|y_cursor[7]~31\ : std_logic;
SIGNAL \vga|y_cursor[8]~32_combout\ : std_logic;
SIGNAL \vga|y_start~7_combout\ : std_logic;
SIGNAL \vga|Add0~19\ : std_logic;
SIGNAL \vga|Add0~22\ : std_logic;
SIGNAL \vga|Add0~24_combout\ : std_logic;
SIGNAL \vga|Add0~26_combout\ : std_logic;
SIGNAL \vga|Equal1~7_combout\ : std_logic;
SIGNAL \vga|Selector0~0_combout\ : std_logic;
SIGNAL \vga|Equal3~5_combout\ : std_logic;
SIGNAL \vga|Selector0~1_combout\ : std_logic;
SIGNAL \vga|Selector0~4_combout\ : std_logic;
SIGNAL \vga|state.IDLE~regout\ : std_logic;
SIGNAL \vga|Selector6~0_combout\ : std_logic;
SIGNAL \vga|Equal1~8_combout\ : std_logic;
SIGNAL \vga|Selector6~1_combout\ : std_logic;
SIGNAL \vga|Selector6~2_combout\ : std_logic;
SIGNAL \vga|substate.DRAWING_R1~regout\ : std_logic;
SIGNAL \vga|y_cursor[1]~16_combout\ : std_logic;
SIGNAL \vga|Selector8~0_combout\ : std_logic;
SIGNAL \vga|Selector8~1_combout\ : std_logic;
SIGNAL \vga|fb_wr_req~regout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_WE_N~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \pll|altpll_component|_clk0\ : std_logic;
SIGNAL \pll|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \sprite_renderer|FB_COLOR~0_combout\ : std_logic;
SIGNAL \vga|latched_color[6]~feeder_combout\ : std_logic;
SIGNAL \vga|y_end[8]~10_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_COLOR~1_combout\ : std_logic;
SIGNAL \vga|latched_color[10]~feeder_combout\ : std_logic;
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
SIGNAL \vga|vga_timing|Add2~4_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal4~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|Equal4~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_timing~0_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[0]~0_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[0]~10\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[1]~11_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[1]~1_combout\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[1]~12\ : std_logic;
SIGNAL \vga|vga_timing|h_pixel[2]~13_combout\ : std_logic;
SIGNAL \vga|x_cursor[2]~22_combout\ : std_logic;
SIGNAL \vga|Add1~6_combout\ : std_logic;
SIGNAL \vga|Add1~8_combout\ : std_logic;
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
SIGNAL \vga|y_cursor[4]~24_combout\ : std_logic;
SIGNAL \vga|Add0~12_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[4]~17_combout\ : std_logic;
SIGNAL \vga|y_start~3_combout\ : std_logic;
SIGNAL \vga|Add0~14_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[13]~13_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[4]~18\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[5]~19_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[14]~14_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[5]~20\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[6]~21_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[15]~15_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[6]~22\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[7]~23_combout\ : std_logic;
SIGNAL \vga|y_cursor[7]~30_combout\ : std_logic;
SIGNAL \sprite_renderer|FB_Y0[7]~23_combout\ : std_logic;
SIGNAL \vga|y_start~5_combout\ : std_logic;
SIGNAL \vga|Add0~21_combout\ : std_logic;
SIGNAL \vga|Add0~23_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[16]~16_combout\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[7]~24\ : std_logic;
SIGNAL \vga|vga_timing|v_pixel[8]~25_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_ADDR[17]~17_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_UB_N~0_combout\ : std_logic;
SIGNAL \vga|vga_fb|SRAM_LB_N~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sprite_renderer|sprite_to_draw.color\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga|vga_timing|h_pixel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sprite_renderer|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \view|SPRITE_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|vga_timing|clock_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga|vga_fb|latched_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \vga|vga_timing|v_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|vga_timing|h_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sprite_renderer|FB_X0\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \view|x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sprite_renderer|sprite_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sprite_renderer|FB_COLOR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga|vga_timing|v_pixel\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sprite_renderer|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \view|render_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sprite_renderer|sprite_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sprite_renderer|FB_Y0\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \view|SPRITE_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|y_start\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga|y_end\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga|y_cursor\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga|x_start\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|x_end\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|x_cursor\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|latched_color\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_RESET_N~clkctrl_outclk\ : std_logic;
SIGNAL \view|ALT_INV_state.RENDER~regout\ : std_logic;
SIGNAL \sprite_renderer|ALT_INV_state.DRAWING~regout\ : std_logic;
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

\view|render_asap~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \view|render_asap~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\pll|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pll|altpll_component|_clk1\);

\RESET_N~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET_N~regout\);
\ALT_INV_RESET_N~clkctrl_outclk\ <= NOT \RESET_N~clkctrl_outclk\;
\view|ALT_INV_state.RENDER~regout\ <= NOT \view|state.RENDER~regout\;
\sprite_renderer|ALT_INV_state.DRAWING~regout\ <= NOT \sprite_renderer|state.DRAWING~regout\;
\vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\ <= NOT \vga|vga_fb|SRAM_WE_N~0_combout\;
\vga|vga_timing|ALT_INV_BLANK~0_combout\ <= NOT \vga|vga_timing|BLANK~0_combout\;
\vga|vga_timing|ALT_INV_v_state.SYNC~regout\ <= NOT \vga|vga_timing|v_state.SYNC~regout\;
\vga|vga_timing|ALT_INV_h_state.SYNC~regout\ <= NOT \vga|vga_timing|h_state.SYNC~regout\;

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
	pll_compensation_delay => 5937,
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

-- Location: LCCOMB_X20_Y13_N2
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

-- Location: LCCOMB_X20_Y13_N8
\vga|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~12_combout\ = (\vga|x_cursor\(4) & (\vga|Add1~10\ $ (GND))) # (!\vga|x_cursor\(4) & (!\vga|Add1~10\ & VCC))
-- \vga|Add1~13\ = CARRY((\vga|x_cursor\(4) & !\vga|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(4),
	datad => VCC,
	cin => \vga|Add1~10\,
	combout => \vga|Add1~12_combout\,
	cout => \vga|Add1~13\);

-- Location: LCCOMB_X23_Y10_N6
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

-- Location: LCCOMB_X23_Y10_N8
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

-- Location: LCCOMB_X23_Y10_N10
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

-- Location: LCCOMB_X23_Y5_N10
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

-- Location: LCCOMB_X23_Y5_N12
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

-- Location: LCCOMB_X23_Y5_N16
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

-- Location: LCFF_X24_Y11_N15
\sprite_renderer|column[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~34_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(5));

-- Location: LCFF_X21_Y14_N3
\sprite_renderer|row[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~23_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(7));

-- Location: LCFF_X25_Y12_N27
\sprite_renderer|column[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~100_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(30));

-- Location: LCFF_X25_Y12_N31
\sprite_renderer|column[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~80_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(28));

-- Location: LCFF_X24_Y10_N1
\sprite_renderer|column[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~81_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(27));

-- Location: LCFF_X24_Y10_N13
\sprite_renderer|column[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~83_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(25));

-- Location: LCFF_X24_Y10_N15
\sprite_renderer|column[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~84_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(24));

-- Location: LCFF_X24_Y10_N11
\sprite_renderer|column[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~86_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(22));

-- Location: LCFF_X24_Y11_N13
\sprite_renderer|column[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~95_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(13));

-- Location: LCFF_X21_Y14_N11
\sprite_renderer|row[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~82_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(25));

-- Location: LCFF_X21_Y14_N25
\sprite_renderer|row[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~85_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(22));

-- Location: LCFF_X21_Y14_N31
\sprite_renderer|row[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~88_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(19));

-- Location: LCFF_X21_Y15_N11
\sprite_renderer|row[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~92_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(15));

-- Location: LCFF_X21_Y15_N9
\sprite_renderer|row[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~95_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(12));

-- Location: LCCOMB_X22_Y15_N2
\sprite_renderer|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~2_combout\ = (\sprite_renderer|row\(1) & (!\sprite_renderer|Add0~1\)) # (!\sprite_renderer|row\(1) & ((\sprite_renderer|Add0~1\) # (GND)))
-- \sprite_renderer|Add0~3\ = CARRY((!\sprite_renderer|Add0~1\) # (!\sprite_renderer|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(1),
	datad => VCC,
	cin => \sprite_renderer|Add0~1\,
	combout => \sprite_renderer|Add0~2_combout\,
	cout => \sprite_renderer|Add0~3\);

-- Location: LCCOMB_X25_Y11_N4
\sprite_renderer|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~11_combout\ = (\sprite_renderer|column\(2) & (\sprite_renderer|Add1~9\ $ (GND))) # (!\sprite_renderer|column\(2) & (!\sprite_renderer|Add1~9\ & VCC))
-- \sprite_renderer|Add1~12\ = CARRY((\sprite_renderer|column\(2) & !\sprite_renderer|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(2),
	datad => VCC,
	cin => \sprite_renderer|Add1~9\,
	combout => \sprite_renderer|Add1~11_combout\,
	cout => \sprite_renderer|Add1~12\);

-- Location: LCCOMB_X25_Y11_N8
\sprite_renderer|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~16_combout\ = (\sprite_renderer|column\(4) & (\sprite_renderer|Add1~14\ $ (GND))) # (!\sprite_renderer|column\(4) & (!\sprite_renderer|Add1~14\ & VCC))
-- \sprite_renderer|Add1~17\ = CARRY((\sprite_renderer|column\(4) & !\sprite_renderer|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(4),
	datad => VCC,
	cin => \sprite_renderer|Add1~14\,
	combout => \sprite_renderer|Add1~16_combout\,
	cout => \sprite_renderer|Add1~17\);

-- Location: LCCOMB_X25_Y11_N10
\sprite_renderer|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~20_combout\ = (\sprite_renderer|column\(5) & (!\sprite_renderer|Add1~17\)) # (!\sprite_renderer|column\(5) & ((\sprite_renderer|Add1~17\) # (GND)))
-- \sprite_renderer|Add1~21\ = CARRY((!\sprite_renderer|Add1~17\) # (!\sprite_renderer|column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(5),
	datad => VCC,
	cin => \sprite_renderer|Add1~17\,
	combout => \sprite_renderer|Add1~20_combout\,
	cout => \sprite_renderer|Add1~21\);

-- Location: LCFF_X26_Y20_N11
\view|SPRITE_X[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_X~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(8));

-- Location: LCFF_X26_Y20_N13
\view|SPRITE_X[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_X~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(7));

-- Location: LCFF_X24_Y20_N25
\view|SPRITE_X[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_X~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(3));

-- Location: LCFF_X24_Y20_N27
\view|SPRITE_X[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_X~24_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(2));

-- Location: LCFF_X24_Y18_N7
\view|SPRITE_Y[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_Y~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(5));

-- Location: LCFF_X25_Y18_N25
\view|SPRITE_Y[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_Y~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(4));

-- Location: LCCOMB_X22_Y15_N14
\sprite_renderer|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~21_combout\ = (\sprite_renderer|row\(7) & (!\sprite_renderer|Add0~20\)) # (!\sprite_renderer|row\(7) & ((\sprite_renderer|Add0~20\) # (GND)))
-- \sprite_renderer|Add0~22\ = CARRY((!\sprite_renderer|Add0~20\) # (!\sprite_renderer|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(7),
	datad => VCC,
	cin => \sprite_renderer|Add0~20\,
	combout => \sprite_renderer|Add0~21_combout\,
	cout => \sprite_renderer|Add0~22\);

-- Location: LCCOMB_X25_Y11_N22
\sprite_renderer|Add1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~37_combout\ = (\sprite_renderer|column\(11) & (!\sprite_renderer|Add1~36\)) # (!\sprite_renderer|column\(11) & ((\sprite_renderer|Add1~36\) # (GND)))
-- \sprite_renderer|Add1~38\ = CARRY((!\sprite_renderer|Add1~36\) # (!\sprite_renderer|column\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(11),
	datad => VCC,
	cin => \sprite_renderer|Add1~36\,
	combout => \sprite_renderer|Add1~37_combout\,
	cout => \sprite_renderer|Add1~38\);

-- Location: LCCOMB_X25_Y11_N26
\sprite_renderer|Add1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~41_combout\ = (\sprite_renderer|column\(13) & (!\sprite_renderer|Add1~40\)) # (!\sprite_renderer|column\(13) & ((\sprite_renderer|Add1~40\) # (GND)))
-- \sprite_renderer|Add1~42\ = CARRY((!\sprite_renderer|Add1~40\) # (!\sprite_renderer|column\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(13),
	datad => VCC,
	cin => \sprite_renderer|Add1~40\,
	combout => \sprite_renderer|Add1~41_combout\,
	cout => \sprite_renderer|Add1~42\);

-- Location: LCCOMB_X25_Y10_N2
\sprite_renderer|Add1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~49_combout\ = (\sprite_renderer|column\(17) & (!\sprite_renderer|Add1~48\)) # (!\sprite_renderer|column\(17) & ((\sprite_renderer|Add1~48\) # (GND)))
-- \sprite_renderer|Add1~50\ = CARRY((!\sprite_renderer|Add1~48\) # (!\sprite_renderer|column\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(17),
	datad => VCC,
	cin => \sprite_renderer|Add1~48\,
	combout => \sprite_renderer|Add1~49_combout\,
	cout => \sprite_renderer|Add1~50\);

-- Location: LCCOMB_X25_Y10_N4
\sprite_renderer|Add1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~51_combout\ = (\sprite_renderer|column\(18) & (\sprite_renderer|Add1~50\ $ (GND))) # (!\sprite_renderer|column\(18) & (!\sprite_renderer|Add1~50\ & VCC))
-- \sprite_renderer|Add1~52\ = CARRY((\sprite_renderer|column\(18) & !\sprite_renderer|Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(18),
	datad => VCC,
	cin => \sprite_renderer|Add1~50\,
	combout => \sprite_renderer|Add1~51_combout\,
	cout => \sprite_renderer|Add1~52\);

-- Location: LCCOMB_X25_Y10_N6
\sprite_renderer|Add1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~53_combout\ = (\sprite_renderer|column\(19) & (!\sprite_renderer|Add1~52\)) # (!\sprite_renderer|column\(19) & ((\sprite_renderer|Add1~52\) # (GND)))
-- \sprite_renderer|Add1~54\ = CARRY((!\sprite_renderer|Add1~52\) # (!\sprite_renderer|column\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(19),
	datad => VCC,
	cin => \sprite_renderer|Add1~52\,
	combout => \sprite_renderer|Add1~53_combout\,
	cout => \sprite_renderer|Add1~54\);

-- Location: LCCOMB_X25_Y10_N12
\sprite_renderer|Add1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~59_combout\ = (\sprite_renderer|column\(22) & (\sprite_renderer|Add1~58\ $ (GND))) # (!\sprite_renderer|column\(22) & (!\sprite_renderer|Add1~58\ & VCC))
-- \sprite_renderer|Add1~60\ = CARRY((\sprite_renderer|column\(22) & !\sprite_renderer|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(22),
	datad => VCC,
	cin => \sprite_renderer|Add1~58\,
	combout => \sprite_renderer|Add1~59_combout\,
	cout => \sprite_renderer|Add1~60\);

-- Location: LCCOMB_X25_Y10_N16
\sprite_renderer|Add1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~63_combout\ = (\sprite_renderer|column\(24) & (\sprite_renderer|Add1~62\ $ (GND))) # (!\sprite_renderer|column\(24) & (!\sprite_renderer|Add1~62\ & VCC))
-- \sprite_renderer|Add1~64\ = CARRY((\sprite_renderer|column\(24) & !\sprite_renderer|Add1~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(24),
	datad => VCC,
	cin => \sprite_renderer|Add1~62\,
	combout => \sprite_renderer|Add1~63_combout\,
	cout => \sprite_renderer|Add1~64\);

-- Location: LCCOMB_X25_Y10_N18
\sprite_renderer|Add1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~65_combout\ = (\sprite_renderer|column\(25) & (!\sprite_renderer|Add1~64\)) # (!\sprite_renderer|column\(25) & ((\sprite_renderer|Add1~64\) # (GND)))
-- \sprite_renderer|Add1~66\ = CARRY((!\sprite_renderer|Add1~64\) # (!\sprite_renderer|column\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(25),
	datad => VCC,
	cin => \sprite_renderer|Add1~64\,
	combout => \sprite_renderer|Add1~65_combout\,
	cout => \sprite_renderer|Add1~66\);

-- Location: LCCOMB_X25_Y10_N22
\sprite_renderer|Add1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~69_combout\ = (\sprite_renderer|column\(27) & (!\sprite_renderer|Add1~68\)) # (!\sprite_renderer|column\(27) & ((\sprite_renderer|Add1~68\) # (GND)))
-- \sprite_renderer|Add1~70\ = CARRY((!\sprite_renderer|Add1~68\) # (!\sprite_renderer|column\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(27),
	datad => VCC,
	cin => \sprite_renderer|Add1~68\,
	combout => \sprite_renderer|Add1~69_combout\,
	cout => \sprite_renderer|Add1~70\);

-- Location: LCCOMB_X25_Y10_N24
\sprite_renderer|Add1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~71_combout\ = (\sprite_renderer|column\(28) & (\sprite_renderer|Add1~70\ $ (GND))) # (!\sprite_renderer|column\(28) & (!\sprite_renderer|Add1~70\ & VCC))
-- \sprite_renderer|Add1~72\ = CARRY((\sprite_renderer|column\(28) & !\sprite_renderer|Add1~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(28),
	datad => VCC,
	cin => \sprite_renderer|Add1~70\,
	combout => \sprite_renderer|Add1~71_combout\,
	cout => \sprite_renderer|Add1~72\);

-- Location: LCCOMB_X25_Y10_N28
\sprite_renderer|Add1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~75_combout\ = (\sprite_renderer|column\(30) & (\sprite_renderer|Add1~74\ $ (GND))) # (!\sprite_renderer|column\(30) & (!\sprite_renderer|Add1~74\ & VCC))
-- \sprite_renderer|Add1~76\ = CARRY((\sprite_renderer|column\(30) & !\sprite_renderer|Add1~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(30),
	datad => VCC,
	cin => \sprite_renderer|Add1~74\,
	combout => \sprite_renderer|Add1~75_combout\,
	cout => \sprite_renderer|Add1~76\);

-- Location: LCCOMB_X22_Y15_N24
\sprite_renderer|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~34_combout\ = (\sprite_renderer|row\(12) & (\sprite_renderer|Add0~33\ $ (GND))) # (!\sprite_renderer|row\(12) & (!\sprite_renderer|Add0~33\ & VCC))
-- \sprite_renderer|Add0~35\ = CARRY((\sprite_renderer|row\(12) & !\sprite_renderer|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(12),
	datad => VCC,
	cin => \sprite_renderer|Add0~33\,
	combout => \sprite_renderer|Add0~34_combout\,
	cout => \sprite_renderer|Add0~35\);

-- Location: LCCOMB_X22_Y15_N30
\sprite_renderer|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~40_combout\ = (\sprite_renderer|row\(15) & (!\sprite_renderer|Add0~39\)) # (!\sprite_renderer|row\(15) & ((\sprite_renderer|Add0~39\) # (GND)))
-- \sprite_renderer|Add0~41\ = CARRY((!\sprite_renderer|Add0~39\) # (!\sprite_renderer|row\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(15),
	datad => VCC,
	cin => \sprite_renderer|Add0~39\,
	combout => \sprite_renderer|Add0~40_combout\,
	cout => \sprite_renderer|Add0~41\);

-- Location: LCCOMB_X22_Y14_N6
\sprite_renderer|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~48_combout\ = (\sprite_renderer|row\(19) & (!\sprite_renderer|Add0~47\)) # (!\sprite_renderer|row\(19) & ((\sprite_renderer|Add0~47\) # (GND)))
-- \sprite_renderer|Add0~49\ = CARRY((!\sprite_renderer|Add0~47\) # (!\sprite_renderer|row\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(19),
	datad => VCC,
	cin => \sprite_renderer|Add0~47\,
	combout => \sprite_renderer|Add0~48_combout\,
	cout => \sprite_renderer|Add0~49\);

-- Location: LCCOMB_X22_Y14_N12
\sprite_renderer|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~54_combout\ = (\sprite_renderer|row\(22) & (\sprite_renderer|Add0~53\ $ (GND))) # (!\sprite_renderer|row\(22) & (!\sprite_renderer|Add0~53\ & VCC))
-- \sprite_renderer|Add0~55\ = CARRY((\sprite_renderer|row\(22) & !\sprite_renderer|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(22),
	datad => VCC,
	cin => \sprite_renderer|Add0~53\,
	combout => \sprite_renderer|Add0~54_combout\,
	cout => \sprite_renderer|Add0~55\);

-- Location: LCCOMB_X22_Y14_N18
\sprite_renderer|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~60_combout\ = (\sprite_renderer|row\(25) & (!\sprite_renderer|Add0~59\)) # (!\sprite_renderer|row\(25) & ((\sprite_renderer|Add0~59\) # (GND)))
-- \sprite_renderer|Add0~61\ = CARRY((!\sprite_renderer|Add0~59\) # (!\sprite_renderer|row\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(25),
	datad => VCC,
	cin => \sprite_renderer|Add0~59\,
	combout => \sprite_renderer|Add0~60_combout\,
	cout => \sprite_renderer|Add0~61\);

-- Location: LCCOMB_X22_Y14_N24
\sprite_renderer|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~66_combout\ = (\sprite_renderer|row\(28) & (\sprite_renderer|Add0~65\ $ (GND))) # (!\sprite_renderer|row\(28) & (!\sprite_renderer|Add0~65\ & VCC))
-- \sprite_renderer|Add0~67\ = CARRY((\sprite_renderer|row\(28) & !\sprite_renderer|Add0~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(28),
	datad => VCC,
	cin => \sprite_renderer|Add0~65\,
	combout => \sprite_renderer|Add0~66_combout\,
	cout => \sprite_renderer|Add0~67\);

-- Location: LCCOMB_X22_Y14_N28
\sprite_renderer|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~70_combout\ = (\sprite_renderer|row\(30) & (\sprite_renderer|Add0~69\ $ (GND))) # (!\sprite_renderer|row\(30) & (!\sprite_renderer|Add0~69\ & VCC))
-- \sprite_renderer|Add0~71\ = CARRY((\sprite_renderer|row\(30) & !\sprite_renderer|Add0~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(30),
	datad => VCC,
	cin => \sprite_renderer|Add0~69\,
	combout => \sprite_renderer|Add0~70_combout\,
	cout => \sprite_renderer|Add0~71\);

-- Location: LCCOMB_X22_Y14_N30
\sprite_renderer|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~72_combout\ = \sprite_renderer|Add0~71\ $ (\sprite_renderer|row\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sprite_renderer|row\(31),
	cin => \sprite_renderer|Add0~71\,
	combout => \sprite_renderer|Add0~72_combout\);

-- Location: LCCOMB_X26_Y20_N16
\view|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~2_combout\ = (\view|Add5~2_combout\ & ((\view|Add10~1_cout\) # (GND))) # (!\view|Add5~2_combout\ & (!\view|Add10~1_cout\))
-- \view|Add10~3\ = CARRY((\view|Add5~2_combout\) # (!\view|Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add5~2_combout\,
	datad => VCC,
	cin => \view|Add10~1_cout\,
	combout => \view|Add10~2_combout\,
	cout => \view|Add10~3\);

-- Location: LCCOMB_X26_Y20_N18
\view|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~4_combout\ = (\view|Add5~4_combout\ & (!\view|Add10~3\ & VCC)) # (!\view|Add5~4_combout\ & (\view|Add10~3\ $ (GND)))
-- \view|Add10~5\ = CARRY((!\view|Add5~4_combout\ & !\view|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add5~4_combout\,
	datad => VCC,
	cin => \view|Add10~3\,
	combout => \view|Add10~4_combout\,
	cout => \view|Add10~5\);

-- Location: LCCOMB_X26_Y20_N22
\view|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~8_combout\ = (\view|Add5~8_combout\ & (!\view|Add10~7\ & VCC)) # (!\view|Add5~8_combout\ & (\view|Add10~7\ $ (GND)))
-- \view|Add10~9\ = CARRY((!\view|Add5~8_combout\ & !\view|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add5~8_combout\,
	datad => VCC,
	cin => \view|Add10~7\,
	combout => \view|Add10~8_combout\,
	cout => \view|Add10~9\);

-- Location: LCCOMB_X26_Y20_N26
\view|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~12_combout\ = (\view|Add5~12_combout\ & (!\view|Add10~11\ & VCC)) # (!\view|Add5~12_combout\ & (\view|Add10~11\ $ (GND)))
-- \view|Add10~13\ = CARRY((!\view|Add5~12_combout\ & !\view|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add5~12_combout\,
	datad => VCC,
	cin => \view|Add10~11\,
	combout => \view|Add10~12_combout\,
	cout => \view|Add10~13\);

-- Location: LCCOMB_X26_Y20_N28
\view|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~14_combout\ = (\view|Add5~14_combout\ & ((\view|Add10~13\) # (GND))) # (!\view|Add5~14_combout\ & (!\view|Add10~13\))
-- \view|Add10~15\ = CARRY((\view|Add5~14_combout\) # (!\view|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add5~14_combout\,
	datad => VCC,
	cin => \view|Add10~13\,
	combout => \view|Add10~14_combout\,
	cout => \view|Add10~15\);

-- Location: LCCOMB_X25_Y20_N10
\view|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~2_combout\ = (\view|x\(1) & ((\view|Add6~1_cout\) # (GND))) # (!\view|x\(1) & (!\view|Add6~1_cout\))
-- \view|Add6~3\ = CARRY((\view|x\(1)) # (!\view|Add6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(1),
	datad => VCC,
	cin => \view|Add6~1_cout\,
	combout => \view|Add6~2_combout\,
	cout => \view|Add6~3\);

-- Location: LCCOMB_X25_Y20_N12
\view|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~4_combout\ = (\view|x\(2) & (!\view|Add6~3\ & VCC)) # (!\view|x\(2) & (\view|Add6~3\ $ (GND)))
-- \view|Add6~5\ = CARRY((!\view|x\(2) & !\view|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(2),
	datad => VCC,
	cin => \view|Add6~3\,
	combout => \view|Add6~4_combout\,
	cout => \view|Add6~5\);

-- Location: LCCOMB_X25_Y20_N14
\view|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~6_combout\ = (\view|x\(3) & ((\view|Add6~5\) # (GND))) # (!\view|x\(3) & (!\view|Add6~5\))
-- \view|Add6~7\ = CARRY((\view|x\(3)) # (!\view|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(3),
	datad => VCC,
	cin => \view|Add6~5\,
	combout => \view|Add6~6_combout\,
	cout => \view|Add6~7\);

-- Location: LCCOMB_X25_Y20_N16
\view|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~8_combout\ = (\view|x\(4) & (!\view|Add6~7\ & VCC)) # (!\view|x\(4) & (\view|Add6~7\ $ (GND)))
-- \view|Add6~9\ = CARRY((!\view|x\(4) & !\view|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(4),
	datad => VCC,
	cin => \view|Add6~7\,
	combout => \view|Add6~8_combout\,
	cout => \view|Add6~9\);

-- Location: LCCOMB_X25_Y20_N18
\view|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~10_combout\ = (\view|x\(5) & ((\view|Add6~9\) # (GND))) # (!\view|x\(5) & (!\view|Add6~9\))
-- \view|Add6~11\ = CARRY((\view|x\(5)) # (!\view|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(5),
	datad => VCC,
	cin => \view|Add6~9\,
	combout => \view|Add6~10_combout\,
	cout => \view|Add6~11\);

-- Location: LCCOMB_X25_Y20_N20
\view|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~12_combout\ = (\view|x\(6) & (!\view|Add6~11\ & VCC)) # (!\view|x\(6) & (\view|Add6~11\ $ (GND)))
-- \view|Add6~13\ = CARRY((!\view|x\(6) & !\view|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(6),
	datad => VCC,
	cin => \view|Add6~11\,
	combout => \view|Add6~12_combout\,
	cout => \view|Add6~13\);

-- Location: LCCOMB_X25_Y20_N22
\view|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~14_combout\ = (\view|x\(7) & ((\view|Add6~13\) # (GND))) # (!\view|x\(7) & (!\view|Add6~13\))
-- \view|Add6~15\ = CARRY((\view|x\(7)) # (!\view|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(7),
	datad => VCC,
	cin => \view|Add6~13\,
	combout => \view|Add6~14_combout\,
	cout => \view|Add6~15\);

-- Location: LCCOMB_X25_Y20_N24
\view|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~16_combout\ = (\view|x\(8) & (!\view|Add6~15\ & VCC)) # (!\view|x\(8) & (\view|Add6~15\ $ (GND)))
-- \view|Add6~17\ = CARRY((!\view|x\(8) & !\view|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(8),
	datad => VCC,
	cin => \view|Add6~15\,
	combout => \view|Add6~16_combout\,
	cout => \view|Add6~17\);

-- Location: LCCOMB_X24_Y20_N0
\view|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~0_combout\ = \view|x\(0) $ (VCC)
-- \view|Add3~1\ = CARRY(\view|x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(0),
	datad => VCC,
	combout => \view|Add3~0_combout\,
	cout => \view|Add3~1\);

-- Location: LCCOMB_X24_Y20_N2
\view|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~2_combout\ = (\view|x\(1) & (\view|Add3~1\ & VCC)) # (!\view|x\(1) & (!\view|Add3~1\))
-- \view|Add3~3\ = CARRY((!\view|x\(1) & !\view|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(1),
	datad => VCC,
	cin => \view|Add3~1\,
	combout => \view|Add3~2_combout\,
	cout => \view|Add3~3\);

-- Location: LCCOMB_X24_Y20_N4
\view|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~4_combout\ = (\view|x\(2) & ((GND) # (!\view|Add3~3\))) # (!\view|x\(2) & (\view|Add3~3\ $ (GND)))
-- \view|Add3~5\ = CARRY((\view|x\(2)) # (!\view|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(2),
	datad => VCC,
	cin => \view|Add3~3\,
	combout => \view|Add3~4_combout\,
	cout => \view|Add3~5\);

-- Location: LCCOMB_X24_Y20_N6
\view|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~6_combout\ = (\view|x\(3) & (!\view|Add3~5\)) # (!\view|x\(3) & ((\view|Add3~5\) # (GND)))
-- \view|Add3~7\ = CARRY((!\view|Add3~5\) # (!\view|x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(3),
	datad => VCC,
	cin => \view|Add3~5\,
	combout => \view|Add3~6_combout\,
	cout => \view|Add3~7\);

-- Location: LCCOMB_X24_Y20_N10
\view|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~10_combout\ = (\view|x\(5) & (\view|Add3~9\ & VCC)) # (!\view|x\(5) & (!\view|Add3~9\))
-- \view|Add3~11\ = CARRY((!\view|x\(5) & !\view|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(5),
	datad => VCC,
	cin => \view|Add3~9\,
	combout => \view|Add3~10_combout\,
	cout => \view|Add3~11\);

-- Location: LCCOMB_X24_Y20_N12
\view|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~12_combout\ = (\view|x\(6) & ((GND) # (!\view|Add3~11\))) # (!\view|x\(6) & (\view|Add3~11\ $ (GND)))
-- \view|Add3~13\ = CARRY((\view|x\(6)) # (!\view|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(6),
	datad => VCC,
	cin => \view|Add3~11\,
	combout => \view|Add3~12_combout\,
	cout => \view|Add3~13\);

-- Location: LCCOMB_X24_Y20_N14
\view|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~14_combout\ = (\view|x\(7) & (\view|Add3~13\ & VCC)) # (!\view|x\(7) & (!\view|Add3~13\))
-- \view|Add3~15\ = CARRY((!\view|x\(7) & !\view|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(7),
	datad => VCC,
	cin => \view|Add3~13\,
	combout => \view|Add3~14_combout\,
	cout => \view|Add3~15\);

-- Location: LCCOMB_X25_Y18_N2
\view|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~0_combout\ = \view|x\(1) $ (VCC)
-- \view|Add4~1\ = CARRY(\view|x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(1),
	datad => VCC,
	combout => \view|Add4~0_combout\,
	cout => \view|Add4~1\);

-- Location: LCCOMB_X26_Y19_N2
\view|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~2_combout\ = (\view|x\(1) & ((\view|Add9~1_cout\) # (GND))) # (!\view|x\(1) & (!\view|Add9~1_cout\))
-- \view|Add9~3\ = CARRY((\view|x\(1)) # (!\view|Add9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(1),
	datad => VCC,
	cin => \view|Add9~1_cout\,
	combout => \view|Add9~2_combout\,
	cout => \view|Add9~3\);

-- Location: LCCOMB_X25_Y18_N4
\view|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~2_combout\ = (\view|x\(2) & (\view|Add4~1\ & VCC)) # (!\view|x\(2) & (!\view|Add4~1\))
-- \view|Add4~3\ = CARRY((!\view|x\(2) & !\view|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(2),
	datad => VCC,
	cin => \view|Add4~1\,
	combout => \view|Add4~2_combout\,
	cout => \view|Add4~3\);

-- Location: LCCOMB_X25_Y18_N6
\view|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~4_combout\ = (\view|x\(3) & ((GND) # (!\view|Add4~3\))) # (!\view|x\(3) & (\view|Add4~3\ $ (GND)))
-- \view|Add4~5\ = CARRY((\view|x\(3)) # (!\view|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(3),
	datad => VCC,
	cin => \view|Add4~3\,
	combout => \view|Add4~4_combout\,
	cout => \view|Add4~5\);

-- Location: LCCOMB_X26_Y19_N20
\view|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add8~2_combout\ = (\view|x\(3) & ((\view|x\(1) & (\view|Add8~1\ & VCC)) # (!\view|x\(1) & (!\view|Add8~1\)))) # (!\view|x\(3) & ((\view|x\(1) & (!\view|Add8~1\)) # (!\view|x\(1) & ((\view|Add8~1\) # (GND)))))
-- \view|Add8~3\ = CARRY((\view|x\(3) & (!\view|x\(1) & !\view|Add8~1\)) # (!\view|x\(3) & ((!\view|Add8~1\) # (!\view|x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(3),
	datab => \view|x\(1),
	datad => VCC,
	cin => \view|Add8~1\,
	combout => \view|Add8~2_combout\,
	cout => \view|Add8~3\);

-- Location: LCCOMB_X26_Y19_N4
\view|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~4_combout\ = (\view|Add8~0_combout\ & (!\view|Add9~3\ & VCC)) # (!\view|Add8~0_combout\ & (\view|Add9~3\ $ (GND)))
-- \view|Add9~5\ = CARRY((!\view|Add8~0_combout\ & !\view|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add8~0_combout\,
	datad => VCC,
	cin => \view|Add9~3\,
	combout => \view|Add9~4_combout\,
	cout => \view|Add9~5\);

-- Location: LCCOMB_X26_Y19_N6
\view|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~6_combout\ = (\view|Add8~2_combout\ & ((\view|Add9~5\) # (GND))) # (!\view|Add8~2_combout\ & (!\view|Add9~5\))
-- \view|Add9~7\ = CARRY((\view|Add8~2_combout\) # (!\view|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add8~2_combout\,
	datad => VCC,
	cin => \view|Add9~5\,
	combout => \view|Add9~6_combout\,
	cout => \view|Add9~7\);

-- Location: LCCOMB_X24_Y18_N14
\view|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add7~0_combout\ = \view|x\(3) $ (VCC)
-- \view|Add7~1\ = CARRY(\view|x\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(3),
	datad => VCC,
	combout => \view|Add7~0_combout\,
	cout => \view|Add7~1\);

-- Location: LCCOMB_X25_Y18_N8
\view|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~6_combout\ = (\view|x\(4) & (\view|Add4~5\ & VCC)) # (!\view|x\(4) & (!\view|Add4~5\))
-- \view|Add4~7\ = CARRY((!\view|x\(4) & !\view|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(4),
	datad => VCC,
	cin => \view|Add4~5\,
	combout => \view|Add4~6_combout\,
	cout => \view|Add4~7\);

-- Location: LCCOMB_X25_Y18_N10
\view|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~8_combout\ = (\view|x\(5) & (\view|Add4~7\ $ (GND))) # (!\view|x\(5) & (!\view|Add4~7\ & VCC))
-- \view|Add4~9\ = CARRY((\view|x\(5) & !\view|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(5),
	datad => VCC,
	cin => \view|Add4~7\,
	combout => \view|Add4~8_combout\,
	cout => \view|Add4~9\);

-- Location: LCCOMB_X26_Y19_N24
\view|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add8~6_combout\ = (\view|x\(3) & ((\view|x\(5) & (\view|Add8~5\ & VCC)) # (!\view|x\(5) & (!\view|Add8~5\)))) # (!\view|x\(3) & ((\view|x\(5) & (!\view|Add8~5\)) # (!\view|x\(5) & ((\view|Add8~5\) # (GND)))))
-- \view|Add8~7\ = CARRY((\view|x\(3) & (!\view|x\(5) & !\view|Add8~5\)) # (!\view|x\(3) & ((!\view|Add8~5\) # (!\view|x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(3),
	datab => \view|x\(5),
	datad => VCC,
	cin => \view|Add8~5\,
	combout => \view|Add8~6_combout\,
	cout => \view|Add8~7\);

-- Location: LCCOMB_X26_Y19_N8
\view|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~8_combout\ = (\view|Add8~4_combout\ & (!\view|Add9~7\ & VCC)) # (!\view|Add8~4_combout\ & (\view|Add9~7\ $ (GND)))
-- \view|Add9~9\ = CARRY((!\view|Add8~4_combout\ & !\view|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add8~4_combout\,
	datad => VCC,
	cin => \view|Add9~7\,
	combout => \view|Add9~8_combout\,
	cout => \view|Add9~9\);

-- Location: LCCOMB_X26_Y19_N10
\view|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~10_combout\ = (\view|Add8~6_combout\ & ((\view|Add9~9\) # (GND))) # (!\view|Add8~6_combout\ & (!\view|Add9~9\))
-- \view|Add9~11\ = CARRY((\view|Add8~6_combout\) # (!\view|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add8~6_combout\,
	datad => VCC,
	cin => \view|Add9~9\,
	combout => \view|Add9~10_combout\,
	cout => \view|Add9~11\);

-- Location: LCCOMB_X24_Y18_N16
\view|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add7~2_combout\ = (\view|x\(4) & (!\view|Add7~1\)) # (!\view|x\(4) & ((\view|Add7~1\) # (GND)))
-- \view|Add7~3\ = CARRY((!\view|Add7~1\) # (!\view|x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(4),
	datad => VCC,
	cin => \view|Add7~1\,
	combout => \view|Add7~2_combout\,
	cout => \view|Add7~3\);

-- Location: LCCOMB_X24_Y18_N18
\view|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add7~4_combout\ = (\view|x\(5) & (\view|Add7~3\ $ (GND))) # (!\view|x\(5) & (!\view|Add7~3\ & VCC))
-- \view|Add7~5\ = CARRY((\view|x\(5) & !\view|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(5),
	datad => VCC,
	cin => \view|Add7~3\,
	combout => \view|Add7~4_combout\,
	cout => \view|Add7~5\);

-- Location: LCCOMB_X25_Y18_N12
\view|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~10_combout\ = (\view|x\(6) & (!\view|Add4~9\)) # (!\view|x\(6) & ((\view|Add4~9\) # (GND)))
-- \view|Add4~11\ = CARRY((!\view|Add4~9\) # (!\view|x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(6),
	datad => VCC,
	cin => \view|Add4~9\,
	combout => \view|Add4~10_combout\,
	cout => \view|Add4~11\);

-- Location: LCCOMB_X26_Y19_N28
\view|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add8~10_combout\ = (\view|x\(5) & ((\view|x\(7) & (\view|Add8~9\ & VCC)) # (!\view|x\(7) & (!\view|Add8~9\)))) # (!\view|x\(5) & ((\view|x\(7) & (!\view|Add8~9\)) # (!\view|x\(7) & ((\view|Add8~9\) # (GND)))))
-- \view|Add8~11\ = CARRY((\view|x\(5) & (!\view|x\(7) & !\view|Add8~9\)) # (!\view|x\(5) & ((!\view|Add8~9\) # (!\view|x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(5),
	datab => \view|x\(7),
	datad => VCC,
	cin => \view|Add8~9\,
	combout => \view|Add8~10_combout\,
	cout => \view|Add8~11\);

-- Location: LCCOMB_X26_Y19_N12
\view|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~12_combout\ = (\view|Add8~8_combout\ & (!\view|Add9~11\ & VCC)) # (!\view|Add8~8_combout\ & (\view|Add9~11\ $ (GND)))
-- \view|Add9~13\ = CARRY((!\view|Add8~8_combout\ & !\view|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add8~8_combout\,
	datad => VCC,
	cin => \view|Add9~11\,
	combout => \view|Add9~12_combout\,
	cout => \view|Add9~13\);

-- Location: LCCOMB_X26_Y19_N14
\view|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~14_combout\ = (\view|Add8~10_combout\ & ((\view|Add9~13\) # (GND))) # (!\view|Add8~10_combout\ & (!\view|Add9~13\))
-- \view|Add9~15\ = CARRY((\view|Add8~10_combout\) # (!\view|Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add8~10_combout\,
	datad => VCC,
	cin => \view|Add9~13\,
	combout => \view|Add9~14_combout\,
	cout => \view|Add9~15\);

-- Location: LCCOMB_X24_Y18_N20
\view|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add7~6_combout\ = (\view|x\(6) & (\view|Add7~5\ & VCC)) # (!\view|x\(6) & (!\view|Add7~5\))
-- \view|Add7~7\ = CARRY((!\view|x\(6) & !\view|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(6),
	datad => VCC,
	cin => \view|Add7~5\,
	combout => \view|Add7~6_combout\,
	cout => \view|Add7~7\);

-- Location: LCCOMB_X24_Y18_N22
\view|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add7~8_combout\ = (\view|x\(7) & ((GND) # (!\view|Add7~7\))) # (!\view|x\(7) & (\view|Add7~7\ $ (GND)))
-- \view|Add7~9\ = CARRY((\view|x\(7)) # (!\view|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(7),
	datad => VCC,
	cin => \view|Add7~7\,
	combout => \view|Add7~8_combout\,
	cout => \view|Add7~9\);

-- Location: LCCOMB_X26_Y19_N30
\view|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add8~12_combout\ = \view|x\(6) $ (\view|x\(8) $ (!\view|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(6),
	datab => \view|x\(8),
	cin => \view|Add8~11\,
	combout => \view|Add8~12_combout\);

-- Location: LCCOMB_X26_Y19_N16
\view|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~16_combout\ = \view|Add9~15\ $ (\view|Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \view|Add8~12_combout\,
	cin => \view|Add9~15\,
	combout => \view|Add9~16_combout\);

-- Location: LCCOMB_X24_Y18_N24
\view|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add7~10_combout\ = \view|x\(8) $ (\view|Add7~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(8),
	cin => \view|Add7~9\,
	combout => \view|Add7~10_combout\);

-- Location: LCCOMB_X31_Y18_N6
\view|Add2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~7_combout\ = (\view|render_counter\(3) & (!\view|Add2~5\)) # (!\view|render_counter\(3) & ((\view|Add2~5\) # (GND)))
-- \view|Add2~8\ = CARRY((!\view|Add2~5\) # (!\view|render_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(3),
	datad => VCC,
	cin => \view|Add2~5\,
	combout => \view|Add2~7_combout\,
	cout => \view|Add2~8\);

-- Location: LCCOMB_X31_Y18_N8
\view|Add2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~9_combout\ = (\view|render_counter\(4) & (\view|Add2~8\ $ (GND))) # (!\view|render_counter\(4) & (!\view|Add2~8\ & VCC))
-- \view|Add2~10\ = CARRY((\view|render_counter\(4) & !\view|Add2~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(4),
	datad => VCC,
	cin => \view|Add2~8\,
	combout => \view|Add2~9_combout\,
	cout => \view|Add2~10\);

-- Location: LCCOMB_X31_Y18_N16
\view|Add2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~17_combout\ = (\view|render_counter\(8) & (\view|Add2~16\ $ (GND))) # (!\view|render_counter\(8) & (!\view|Add2~16\ & VCC))
-- \view|Add2~18\ = CARRY((\view|render_counter\(8) & !\view|Add2~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(8),
	datad => VCC,
	cin => \view|Add2~16\,
	combout => \view|Add2~17_combout\,
	cout => \view|Add2~18\);

-- Location: LCCOMB_X31_Y17_N0
\view|Add2~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~33_combout\ = (\view|render_counter\(16) & (\view|Add2~32\ $ (GND))) # (!\view|render_counter\(16) & (!\view|Add2~32\ & VCC))
-- \view|Add2~34\ = CARRY((\view|render_counter\(16) & !\view|Add2~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(16),
	datad => VCC,
	cin => \view|Add2~32\,
	combout => \view|Add2~33_combout\,
	cout => \view|Add2~34\);

-- Location: LCCOMB_X31_Y17_N2
\view|Add2~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~35_combout\ = (\view|render_counter\(17) & (!\view|Add2~34\)) # (!\view|render_counter\(17) & ((\view|Add2~34\) # (GND)))
-- \view|Add2~36\ = CARRY((!\view|Add2~34\) # (!\view|render_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(17),
	datad => VCC,
	cin => \view|Add2~34\,
	combout => \view|Add2~35_combout\,
	cout => \view|Add2~36\);

-- Location: LCCOMB_X31_Y17_N18
\view|Add2~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~51_combout\ = (\view|render_counter\(25) & (!\view|Add2~50\)) # (!\view|render_counter\(25) & ((\view|Add2~50\) # (GND)))
-- \view|Add2~52\ = CARRY((!\view|Add2~50\) # (!\view|render_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(25),
	datad => VCC,
	cin => \view|Add2~50\,
	combout => \view|Add2~51_combout\,
	cout => \view|Add2~52\);

-- Location: LCCOMB_X31_Y17_N20
\view|Add2~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~53_combout\ = (\view|render_counter\(26) & (\view|Add2~52\ $ (GND))) # (!\view|render_counter\(26) & (!\view|Add2~52\ & VCC))
-- \view|Add2~54\ = CARRY((\view|render_counter\(26) & !\view|Add2~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(26),
	datad => VCC,
	cin => \view|Add2~52\,
	combout => \view|Add2~53_combout\,
	cout => \view|Add2~54\);

-- Location: LCCOMB_X31_Y17_N22
\view|Add2~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~55_combout\ = (\view|render_counter\(27) & (!\view|Add2~54\)) # (!\view|render_counter\(27) & ((\view|Add2~54\) # (GND)))
-- \view|Add2~56\ = CARRY((!\view|Add2~54\) # (!\view|render_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(27),
	datad => VCC,
	cin => \view|Add2~54\,
	combout => \view|Add2~55_combout\,
	cout => \view|Add2~56\);

-- Location: LCCOMB_X31_Y17_N24
\view|Add2~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~57_combout\ = (\view|render_counter\(28) & (\view|Add2~56\ $ (GND))) # (!\view|render_counter\(28) & (!\view|Add2~56\ & VCC))
-- \view|Add2~58\ = CARRY((\view|render_counter\(28) & !\view|Add2~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(28),
	datad => VCC,
	cin => \view|Add2~56\,
	combout => \view|Add2~57_combout\,
	cout => \view|Add2~58\);

-- Location: LCCOMB_X31_Y17_N26
\view|Add2~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~59_combout\ = (\view|render_counter\(29) & (!\view|Add2~58\)) # (!\view|render_counter\(29) & ((\view|Add2~58\) # (GND)))
-- \view|Add2~60\ = CARRY((!\view|Add2~58\) # (!\view|render_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(29),
	datad => VCC,
	cin => \view|Add2~58\,
	combout => \view|Add2~59_combout\,
	cout => \view|Add2~60\);

-- Location: LCCOMB_X31_Y17_N28
\view|Add2~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~61_combout\ = (\view|render_counter\(30) & (\view|Add2~60\ $ (GND))) # (!\view|render_counter\(30) & (!\view|Add2~60\ & VCC))
-- \view|Add2~62\ = CARRY((\view|render_counter\(30) & !\view|Add2~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(30),
	datad => VCC,
	cin => \view|Add2~60\,
	combout => \view|Add2~61_combout\,
	cout => \view|Add2~62\);

-- Location: LCCOMB_X31_Y17_N30
\view|Add2~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~63_combout\ = \view|Add2~62\ $ (\view|render_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \view|render_counter\(31),
	cin => \view|Add2~62\,
	combout => \view|Add2~63_combout\);

-- Location: LCCOMB_X27_Y13_N12
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \fps:counter[0]~regout\ $ (VCC)
-- \Add0~1\ = CARRY(\fps:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[0]~regout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X27_Y13_N14
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\fps:counter[1]~regout\ & (!\Add0~1\)) # (!\fps:counter[1]~regout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\fps:counter[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[1]~regout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y13_N16
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\fps:counter[2]~regout\ & (\Add0~3\ $ (GND))) # (!\fps:counter[2]~regout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\fps:counter[2]~regout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[2]~regout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y13_N18
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\fps:counter[3]~regout\ & (!\Add0~5\)) # (!\fps:counter[3]~regout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\fps:counter[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X27_Y13_N20
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\fps:counter[4]~regout\ & (\Add0~7\ $ (GND))) # (!\fps:counter[4]~regout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\fps:counter[4]~regout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X27_Y13_N22
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\fps:counter[5]~regout\ & (!\Add0~9\)) # (!\fps:counter[5]~regout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\fps:counter[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[5]~regout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X27_Y13_N24
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\fps:counter[6]~regout\ & (\Add0~11\ $ (GND))) # (!\fps:counter[6]~regout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\fps:counter[6]~regout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[6]~regout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X27_Y13_N26
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\fps:counter[7]~regout\ & (!\Add0~13\)) # (!\fps:counter[7]~regout\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\fps:counter[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[7]~regout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X27_Y13_N28
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\fps:counter[8]~regout\ & (\Add0~15\ $ (GND))) # (!\fps:counter[8]~regout\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\fps:counter[8]~regout\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[8]~regout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X27_Y13_N30
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\fps:counter[9]~regout\ & (!\Add0~17\)) # (!\fps:counter[9]~regout\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\fps:counter[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[9]~regout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X27_Y12_N0
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\fps:counter[10]~regout\ & (\Add0~19\ $ (GND))) # (!\fps:counter[10]~regout\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\fps:counter[10]~regout\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[10]~regout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X27_Y12_N2
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\fps:counter[11]~regout\ & (!\Add0~21\)) # (!\fps:counter[11]~regout\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\fps:counter[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[11]~regout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X27_Y12_N4
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\fps:counter[12]~regout\ & (\Add0~23\ $ (GND))) # (!\fps:counter[12]~regout\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\fps:counter[12]~regout\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[12]~regout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X27_Y12_N6
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\fps:counter[13]~regout\ & (!\Add0~25\)) # (!\fps:counter[13]~regout\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\fps:counter[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[13]~regout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X27_Y12_N8
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\fps:counter[14]~regout\ & (\Add0~27\ $ (GND))) # (!\fps:counter[14]~regout\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\fps:counter[14]~regout\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[14]~regout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X27_Y12_N10
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\fps:counter[15]~regout\ & (!\Add0~29\)) # (!\fps:counter[15]~regout\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\fps:counter[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[15]~regout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X27_Y12_N12
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\fps:counter[16]~regout\ & (\Add0~31\ $ (GND))) # (!\fps:counter[16]~regout\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\fps:counter[16]~regout\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[16]~regout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X27_Y12_N14
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\fps:counter[17]~regout\ & (!\Add0~33\)) # (!\fps:counter[17]~regout\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\fps:counter[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[17]~regout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X27_Y12_N16
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\fps:counter[18]~regout\ & (\Add0~35\ $ (GND))) # (!\fps:counter[18]~regout\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\fps:counter[18]~regout\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fps:counter[18]~regout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X27_Y12_N18
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \fps:counter[19]~regout\ $ (\Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[19]~regout\,
	cin => \Add0~37\,
	combout => \Add0~38_combout\);

-- Location: LCFF_X23_Y13_N7
\vga|x_end[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|x_end~8_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(7));

-- Location: LCFF_X23_Y13_N17
\vga|x_end[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~9_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(6));

-- Location: LCCOMB_X23_Y13_N6
\vga|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~4_combout\ = (\vga|x_end\(6) & (\vga|x_cursor\(6) & (\vga|x_cursor\(7) $ (!\vga|x_end\(7))))) # (!\vga|x_end\(6) & (!\vga|x_cursor\(6) & (\vga|x_cursor\(7) $ (!\vga|x_end\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_end\(6),
	datab => \vga|x_cursor\(7),
	datac => \vga|x_end\(7),
	datad => \vga|x_cursor\(6),
	combout => \vga|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y13_N30
\vga|x_cursor[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~15_combout\ = (!\vga|substate.DRAWING_R1~regout\ & \vga|substate.DRAWING_R2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|substate.DRAWING_R1~regout\,
	datad => \vga|substate.DRAWING_R2~regout\,
	combout => \vga|x_cursor[0]~15_combout\);

-- Location: LCCOMB_X20_Y13_N20
\vga|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~3_combout\ = (\vga|x_start\(4) & (\vga|x_cursor\(4) & (\vga|x_cursor\(3) $ (!\vga|x_start\(3))))) # (!\vga|x_start\(4) & (!\vga|x_cursor\(4) & (\vga|x_cursor\(3) $ (!\vga|x_start\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_start\(4),
	datab => \vga|x_cursor\(3),
	datac => \vga|x_cursor\(4),
	datad => \vga|x_start\(3),
	combout => \vga|Equal2~3_combout\);

-- Location: LCFF_X20_Y11_N11
\vga|y_end[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~1_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(1));

-- Location: LCFF_X20_Y11_N13
\vga|y_end[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~2_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(0));

-- Location: LCCOMB_X20_Y11_N6
\vga|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~2_combout\ = (\vga|y_end\(1) & (\vga|y_cursor\(1) & (\vga|y_cursor\(0) $ (!\vga|y_end\(0))))) # (!\vga|y_end\(1) & (!\vga|y_cursor\(1) & (\vga|y_cursor\(0) $ (!\vga|y_end\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_end\(1),
	datab => \vga|y_cursor\(0),
	datac => \vga|y_cursor\(1),
	datad => \vga|y_end\(0),
	combout => \vga|Equal1~2_combout\);

-- Location: LCFF_X20_Y11_N25
\vga|y_end[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~3_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(3));

-- Location: LCFF_X20_Y11_N19
\vga|y_end[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~4_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(2));

-- Location: LCCOMB_X20_Y11_N4
\vga|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~3_combout\ = (\vga|y_end\(3) & (\vga|y_cursor\(3) & (\vga|y_end\(2) $ (!\vga|y_cursor\(2))))) # (!\vga|y_end\(3) & (!\vga|y_cursor\(3) & (\vga|y_end\(2) $ (!\vga|y_cursor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_end\(3),
	datab => \vga|y_end\(2),
	datac => \vga|y_cursor\(3),
	datad => \vga|y_cursor\(2),
	combout => \vga|Equal1~3_combout\);

-- Location: LCFF_X20_Y11_N15
\vga|y_end[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~6_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(4));

-- Location: LCCOMB_X20_Y11_N16
\vga|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~4_combout\ = (\vga|y_cursor\(4) & (\vga|y_end\(4) & (\vga|y_cursor\(5) $ (!\vga|y_end\(5))))) # (!\vga|y_cursor\(4) & (!\vga|y_end\(4) & (\vga|y_cursor\(5) $ (!\vga|y_end\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(4),
	datab => \vga|y_cursor\(5),
	datac => \vga|y_end\(4),
	datad => \vga|y_end\(5),
	combout => \vga|Equal1~4_combout\);

-- Location: LCFF_X23_Y11_N5
\vga|y_end[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~7_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(7));

-- Location: LCFF_X23_Y11_N31
\vga|y_end[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~8_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(6));

-- Location: LCCOMB_X23_Y11_N8
\vga|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~5_combout\ = (\vga|y_cursor\(6) & (\vga|y_end\(6) & (\vga|y_cursor\(7) $ (!\vga|y_end\(7))))) # (!\vga|y_cursor\(6) & (!\vga|y_end\(6) & (\vga|y_cursor\(7) $ (!\vga|y_end\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(6),
	datab => \vga|y_cursor\(7),
	datac => \vga|y_end\(7),
	datad => \vga|y_end\(6),
	combout => \vga|Equal1~5_combout\);

-- Location: LCCOMB_X20_Y11_N2
\vga|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~6_combout\ = (\vga|Equal1~2_combout\ & (\vga|Equal1~3_combout\ & (\vga|Equal1~4_combout\ & \vga|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~2_combout\,
	datab => \vga|Equal1~3_combout\,
	datac => \vga|Equal1~4_combout\,
	datad => \vga|Equal1~5_combout\,
	combout => \vga|Equal1~6_combout\);

-- Location: LCCOMB_X21_Y11_N2
\vga|y_cursor[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[0]~15_combout\ = (\RESET_N~regout\ & (\vga|state.IDLE~regout\ & ((!\vga|x_cursor[7]~12_combout\) # (!\vga|Equal1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~regout\,
	datab => \vga|Equal1~8_combout\,
	datac => \vga|x_cursor[7]~12_combout\,
	datad => \vga|state.IDLE~regout\,
	combout => \vga|y_cursor[0]~15_combout\);

-- Location: LCCOMB_X23_Y11_N2
\vga|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~0_combout\ = (\vga|y_cursor\(5) & (\vga|y_end\(5) & (\vga|y_start\(0) $ (!\vga|y_cursor\(0))))) # (!\vga|y_cursor\(5) & (!\vga|y_end\(5) & (\vga|y_start\(0) $ (!\vga|y_cursor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(5),
	datab => \vga|y_start\(0),
	datac => \vga|y_cursor\(0),
	datad => \vga|y_end\(5),
	combout => \vga|Equal3~0_combout\);

-- Location: LCCOMB_X23_Y11_N24
\vga|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~1_combout\ = (\vga|y_start\(2) & (\vga|y_cursor\(2) & (\vga|y_cursor\(1) $ (!\vga|y_start\(1))))) # (!\vga|y_start\(2) & (!\vga|y_cursor\(2) & (\vga|y_cursor\(1) $ (!\vga|y_start\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_start\(2),
	datab => \vga|y_cursor\(2),
	datac => \vga|y_cursor\(1),
	datad => \vga|y_start\(1),
	combout => \vga|Equal3~1_combout\);

-- Location: LCCOMB_X22_Y11_N0
\vga|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~2_combout\ = (\vga|y_cursor\(4) & (\vga|y_start\(4) & (\vga|y_cursor\(3) $ (!\vga|y_start\(3))))) # (!\vga|y_cursor\(4) & (!\vga|y_start\(4) & (\vga|y_cursor\(3) $ (!\vga|y_start\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(4),
	datab => \vga|y_start\(4),
	datac => \vga|y_cursor\(3),
	datad => \vga|y_start\(3),
	combout => \vga|Equal3~2_combout\);

-- Location: LCCOMB_X23_Y11_N6
\vga|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~3_combout\ = (\vga|y_cursor\(6) & (\vga|y_start\(6) & (\vga|y_cursor\(7) $ (!\vga|y_start\(7))))) # (!\vga|y_cursor\(6) & (!\vga|y_start\(6) & (\vga|y_cursor\(7) $ (!\vga|y_start\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(6),
	datab => \vga|y_cursor\(7),
	datac => \vga|y_start\(7),
	datad => \vga|y_start\(6),
	combout => \vga|Equal3~3_combout\);

-- Location: LCCOMB_X23_Y11_N16
\vga|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~4_combout\ = (\vga|Equal3~2_combout\ & (\vga|Equal3~0_combout\ & (\vga|Equal3~1_combout\ & \vga|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal3~2_combout\,
	datab => \vga|Equal3~0_combout\,
	datac => \vga|Equal3~1_combout\,
	datad => \vga|Equal3~3_combout\,
	combout => \vga|Equal3~4_combout\);

-- Location: LCFF_X21_Y8_N27
\vga|flip_on_next_vs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|flip_on_next_vs~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|flip_on_next_vs~regout\);

-- Location: LCCOMB_X22_Y10_N24
\vga|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector0~2_combout\ = (\vga|substate.INIT~regout\ & (!\vga|vga_fb|SRAM_WE_N~0_combout\ & \vga|state.IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.INIT~regout\,
	datab => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datad => \vga|state.IDLE~regout\,
	combout => \vga|Selector0~2_combout\);

-- Location: LCCOMB_X22_Y10_N28
\vga|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector2~0_combout\ = (!\vga|Selector0~3_combout\ & ((!\vga|Selector0~1_combout\) # (!\vga|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|Selector0~3_combout\,
	datac => \vga|Selector0~2_combout\,
	datad => \vga|Selector0~1_combout\,
	combout => \vga|Selector2~0_combout\);

-- Location: LCCOMB_X20_Y13_N22
\vga|x_end~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~8_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(7),
	combout => \vga|x_end~8_combout\);

-- Location: LCCOMB_X23_Y13_N16
\vga|x_end~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~9_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(6),
	combout => \vga|x_end~9_combout\);

-- Location: LCCOMB_X21_Y11_N10
\vga|substate.DRAWING_R2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING_R2~0_combout\ = ((\vga|substate.INIT~regout\ & ((\vga|state.DRAWING_RECT~regout\) # (\vga|state.IDLE~regout\)))) # (!\RESET_N~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.DRAWING_RECT~regout\,
	datab => \vga|substate.INIT~regout\,
	datac => \RESET_N~regout\,
	datad => \vga|state.IDLE~regout\,
	combout => \vga|substate.DRAWING_R2~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\vga|substate.DRAWING_R2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING_R2~1_combout\ = (\vga|substate.DRAWING_R2~regout\ & ((\vga|substate.DRAWING_R2~0_combout\) # ((!\vga|state.DRAWING_RECT~regout\ & \sprite_renderer|Selector68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.DRAWING_RECT~regout\,
	datab => \vga|substate.DRAWING_R2~0_combout\,
	datac => \vga|substate.DRAWING_R2~regout\,
	datad => \sprite_renderer|Selector68~0_combout\,
	combout => \vga|substate.DRAWING_R2~1_combout\);

-- Location: LCCOMB_X20_Y11_N10
\vga|y_end~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~1_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_Y0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_Y0\(1),
	combout => \vga|y_end~1_combout\);

-- Location: LCCOMB_X20_Y11_N12
\vga|y_end~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~2_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_Y0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_Y0\(0),
	combout => \vga|y_end~2_combout\);

-- Location: LCCOMB_X20_Y11_N24
\vga|y_end~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~3_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_Y0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_Y0\(3),
	combout => \vga|y_end~3_combout\);

-- Location: LCCOMB_X20_Y11_N18
\vga|y_end~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~4_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_Y0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_Y0\(2),
	combout => \vga|y_end~4_combout\);

-- Location: LCCOMB_X20_Y11_N14
\vga|y_end~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~6_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_Y0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_Y0\(4),
	combout => \vga|y_end~6_combout\);

-- Location: LCCOMB_X23_Y11_N4
\vga|y_end~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~7_combout\ = (\sprite_renderer|FB_Y0\(7)) # (\sprite_renderer|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|FB_Y0\(7),
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|y_end~7_combout\);

-- Location: LCCOMB_X23_Y11_N30
\vga|y_end~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~8_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_Y0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_Y0\(6),
	combout => \vga|y_end~8_combout\);

-- Location: LCCOMB_X21_Y8_N20
\vga|flip_on_next_vs~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|flip_on_next_vs~0_combout\ = (\vga|flip_on_next_vs~regout\ & ((\vga|state.IDLE~regout\) # (!\vga|vga_timing|v_state.SYNC~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|flip_on_next_vs~regout\,
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \vga|state.IDLE~regout\,
	combout => \vga|flip_on_next_vs~0_combout\);

-- Location: LCCOMB_X21_Y8_N26
\vga|flip_on_next_vs~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|flip_on_next_vs~1_combout\ = (\vga|flip_on_next_vs~0_combout\) # ((\sprite_renderer|Selector68~0_combout\ & (!\vga|flip_on_next_vs~regout\ & \sprite_renderer|FB_FLIP~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|flip_on_next_vs~0_combout\,
	datab => \sprite_renderer|Selector68~0_combout\,
	datac => \vga|flip_on_next_vs~regout\,
	datad => \sprite_renderer|FB_FLIP~regout\,
	combout => \vga|flip_on_next_vs~1_combout\);

-- Location: LCCOMB_X22_Y12_N16
\sprite_renderer|Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Mux32~0_combout\ = (\sprite_renderer|row\(2)) # (\sprite_renderer|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(2),
	datac => \sprite_renderer|row\(3),
	combout => \sprite_renderer|Mux32~0_combout\);

-- Location: LCFF_X26_Y12_N3
\sprite_renderer|sprite_x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[8]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(8));

-- Location: LCFF_X24_Y12_N3
\sprite_renderer|sprite_x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[7]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(7));

-- Location: LCFF_X26_Y12_N9
\sprite_renderer|sprite_x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[3]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(3));

-- Location: LCFF_X24_Y12_N7
\sprite_renderer|sprite_x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[2]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(2));

-- Location: LCFF_X23_Y12_N3
\sprite_renderer|sprite_y[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[1]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(1));

-- Location: LCFF_X23_Y12_N7
\sprite_renderer|sprite_y[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[2]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(2));

-- Location: LCFF_X24_Y18_N3
\sprite_renderer|sprite_y[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[5]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(5));

-- Location: LCFF_X26_Y12_N11
\sprite_renderer|sprite_y[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[4]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(4));

-- Location: LCCOMB_X25_Y12_N24
\sprite_renderer|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~1_combout\ = (!\sprite_renderer|column\(29) & (!\sprite_renderer|column\(28) & (!\sprite_renderer|column\(30) & !\sprite_renderer|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(29),
	datab => \sprite_renderer|column\(28),
	datac => \sprite_renderer|column\(30),
	datad => \sprite_renderer|column\(9),
	combout => \sprite_renderer|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y10_N24
\sprite_renderer|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~4_combout\ = (!\sprite_renderer|column\(25) & (!\sprite_renderer|column\(26) & (!\sprite_renderer|column\(24) & !\sprite_renderer|column\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(25),
	datab => \sprite_renderer|column\(26),
	datac => \sprite_renderer|column\(24),
	datad => \sprite_renderer|column\(27),
	combout => \sprite_renderer|LessThan0~4_combout\);

-- Location: LCFF_X21_Y12_N9
\sprite_renderer|next_state.DRAWING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector71~2_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|next_state.DRAWING~regout\);

-- Location: LCFF_X21_Y12_N3
\sprite_renderer|state.WAITING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector65~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|state.WAITING~regout\);

-- Location: LCFF_X21_Y15_N5
\sprite_renderer|row[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~74_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(31));

-- Location: LCCOMB_X21_Y14_N0
\sprite_renderer|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~0_combout\ = (!\sprite_renderer|row\(6) & (!\sprite_renderer|row\(7) & (!\sprite_renderer|row\(5) & !\sprite_renderer|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(6),
	datab => \sprite_renderer|row\(7),
	datac => \sprite_renderer|row\(5),
	datad => \sprite_renderer|row\(8),
	combout => \sprite_renderer|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y14_N20
\sprite_renderer|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~6_combout\ = (!\sprite_renderer|row\(20) & (!\sprite_renderer|row\(19) & (!\sprite_renderer|row\(22) & !\sprite_renderer|row\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(20),
	datab => \sprite_renderer|row\(19),
	datac => \sprite_renderer|row\(22),
	datad => \sprite_renderer|row\(21),
	combout => \sprite_renderer|LessThan1~6_combout\);

-- Location: LCCOMB_X24_Y11_N14
\sprite_renderer|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~34_combout\ = (\sprite_renderer|Add1~20_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~20_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~34_combout\);

-- Location: LCFF_X27_Y18_N25
\view|SPRITE_Y[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_Y~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(1));

-- Location: LCFF_X27_Y18_N27
\view|SPRITE_Y[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_Y~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(2));

-- Location: LCCOMB_X21_Y14_N2
\sprite_renderer|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~23_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~21_combout\,
	combout => \sprite_renderer|Add0~23_combout\);

-- Location: LCFF_X21_Y12_N21
\sprite_renderer|next_state.SHOWING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector72~1_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|next_state.SHOWING~regout\);

-- Location: LCFF_X30_Y17_N9
\view|render_counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~65_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(31));

-- Location: LCFF_X30_Y17_N3
\view|render_counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~66_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(30));

-- Location: LCFF_X30_Y17_N29
\view|render_counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~67_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(29));

-- Location: LCFF_X30_Y17_N7
\view|render_counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~68_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(28));

-- Location: LCCOMB_X30_Y17_N24
\view|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~0_combout\ = (!\view|render_counter\(28) & (!\view|render_counter\(30) & (!\view|render_counter\(31) & !\view|render_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(28),
	datab => \view|render_counter\(30),
	datac => \view|render_counter\(31),
	datad => \view|render_counter\(29),
	combout => \view|Equal0~0_combout\);

-- Location: LCFF_X30_Y17_N13
\view|render_counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~70_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(26));

-- Location: LCFF_X32_Y18_N21
\view|render_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~79_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(17));

-- Location: LCFF_X32_Y18_N3
\view|render_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~88_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(8));

-- Location: LCFF_X30_Y18_N1
\view|render_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~92_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(4));

-- Location: LCCOMB_X30_Y18_N2
\view|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~7_combout\ = (!\view|render_counter\(7) & (!\view|render_counter\(5) & (!\view|render_counter\(6) & !\view|render_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(7),
	datab => \view|render_counter\(5),
	datac => \view|render_counter\(6),
	datad => \view|render_counter\(4),
	combout => \view|Equal0~7_combout\);

-- Location: LCFF_X30_Y18_N13
\view|render_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~93_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(3));

-- Location: LCCOMB_X30_Y18_N6
\view|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~8_combout\ = (\view|Equal0~7_combout\ & !\view|render_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Equal0~7_combout\,
	datad => \view|render_counter\(3),
	combout => \view|Equal0~8_combout\);

-- Location: LCFF_X21_Y12_N27
\sprite_renderer|next_state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector69~3_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|next_state.IDLE~regout\);

-- Location: LCCOMB_X24_Y11_N8
\sprite_renderer|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~10_combout\ = (\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|LessThan0~10_combout\);

-- Location: LCCOMB_X25_Y12_N30
\sprite_renderer|Add1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~80_combout\ = (\sprite_renderer|Add1~71_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~71_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~80_combout\);

-- Location: LCCOMB_X24_Y10_N0
\sprite_renderer|Add1~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~81_combout\ = (\sprite_renderer|Add1~69_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|Add1~69_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~81_combout\);

-- Location: LCCOMB_X24_Y10_N12
\sprite_renderer|Add1~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~83_combout\ = (\sprite_renderer|Add1~65_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add1~65_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~83_combout\);

-- Location: LCCOMB_X24_Y10_N14
\sprite_renderer|Add1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~84_combout\ = (\sprite_renderer|Add1~63_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~63_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~84_combout\);

-- Location: LCCOMB_X24_Y10_N10
\sprite_renderer|Add1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~86_combout\ = (\sprite_renderer|Add1~59_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~59_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~86_combout\);

-- Location: LCCOMB_X24_Y11_N12
\sprite_renderer|Add1~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~95_combout\ = (\sprite_renderer|Add1~41_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~41_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~95_combout\);

-- Location: LCCOMB_X22_Y12_N26
\sprite_renderer|next_state.WAITING~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|next_state.WAITING~0_combout\ = (!\sprite_renderer|state.WAITING~regout\ & ((\vga|vga_timing|v_state.SYNC~regout\) # (!\sprite_renderer|state.SHOWING~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.WAITING~regout\,
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \sprite_renderer|state.SHOWING~regout\,
	combout => \sprite_renderer|next_state.WAITING~0_combout\);

-- Location: LCCOMB_X21_Y12_N4
\sprite_renderer|Selector71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector71~0_combout\ = (\sprite_renderer|next_state.DRAWING~regout\ & (((!\sprite_renderer|show_asap~regout\ & \sprite_renderer|state.IDLE~regout\)) # (!\sprite_renderer|next_state.WAITING~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|next_state.WAITING~0_combout\,
	datab => \sprite_renderer|next_state.DRAWING~regout\,
	datac => \sprite_renderer|show_asap~regout\,
	datad => \sprite_renderer|state.IDLE~regout\,
	combout => \sprite_renderer|Selector71~0_combout\);

-- Location: LCCOMB_X21_Y12_N22
\sprite_renderer|Selector71~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector71~1_combout\ = (\sprite_renderer|Selector71~0_combout\) # ((\view|DRAW_SPRITE~regout\ & \sprite_renderer|state.IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|DRAW_SPRITE~regout\,
	datac => \sprite_renderer|Selector71~0_combout\,
	datad => \sprite_renderer|state.IDLE~regout\,
	combout => \sprite_renderer|Selector71~1_combout\);

-- Location: LCCOMB_X21_Y12_N8
\sprite_renderer|Selector71~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector71~2_combout\ = (\sprite_renderer|Selector71~1_combout\) # ((\sprite_renderer|state.DRAWING~regout\ & ((\sprite_renderer|LessThan1~10_combout\) # (\sprite_renderer|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Selector71~1_combout\,
	datab => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|LessThan0~10_combout\,
	datad => \sprite_renderer|state.DRAWING~regout\,
	combout => \sprite_renderer|Selector71~2_combout\);

-- Location: LCCOMB_X21_Y12_N24
\sprite_renderer|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector65~0_combout\ = (\sprite_renderer|state.WAITING~regout\) # ((\sprite_renderer|state.IDLE~regout\ & ((\sprite_renderer|show_asap~regout\) # (\view|DRAW_SPRITE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.WAITING~regout\,
	datab => \sprite_renderer|state.IDLE~regout\,
	datac => \sprite_renderer|show_asap~regout\,
	datad => \view|DRAW_SPRITE~regout\,
	combout => \sprite_renderer|Selector65~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\sprite_renderer|Selector65~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector65~1_combout\ = (\sprite_renderer|Selector68~3_combout\) # ((!\sprite_renderer|Selector68~2_combout\ & \sprite_renderer|Selector65~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|Selector68~2_combout\,
	datac => \sprite_renderer|Selector65~0_combout\,
	datad => \sprite_renderer|Selector68~3_combout\,
	combout => \sprite_renderer|Selector65~1_combout\);

-- Location: LCCOMB_X21_Y15_N4
\sprite_renderer|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~74_combout\ = (\sprite_renderer|state.DRAWING~regout\ & (\sprite_renderer|Add0~72_combout\ & \sprite_renderer|LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|state.DRAWING~regout\,
	datac => \sprite_renderer|Add0~72_combout\,
	datad => \sprite_renderer|LessThan1~10_combout\,
	combout => \sprite_renderer|Add0~74_combout\);

-- Location: LCCOMB_X21_Y14_N10
\sprite_renderer|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~82_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~60_combout\,
	combout => \sprite_renderer|Add0~82_combout\);

-- Location: LCCOMB_X21_Y14_N24
\sprite_renderer|Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~85_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~54_combout\,
	combout => \sprite_renderer|Add0~85_combout\);

-- Location: LCCOMB_X21_Y14_N30
\sprite_renderer|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~88_combout\ = (\sprite_renderer|Add0~48_combout\ & \sprite_renderer|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|Add0~48_combout\,
	datac => \sprite_renderer|LessThan1~10_combout\,
	combout => \sprite_renderer|Add0~88_combout\);

-- Location: LCCOMB_X21_Y15_N10
\sprite_renderer|Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~92_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~40_combout\,
	combout => \sprite_renderer|Add0~92_combout\);

-- Location: LCCOMB_X21_Y15_N8
\sprite_renderer|Add0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~95_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~34_combout\,
	combout => \sprite_renderer|Add0~95_combout\);

-- Location: LCCOMB_X22_Y12_N20
\sprite_renderer|next_state.CLEARING~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|next_state.CLEARING~0_combout\ = (!\sprite_renderer|state.DRAWING~regout\ & (!\view|DRAW_SPRITE~regout\ & (\sprite_renderer|state.CLEARING~regout\ & !\sprite_renderer|show_asap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.DRAWING~regout\,
	datab => \view|DRAW_SPRITE~regout\,
	datac => \sprite_renderer|state.CLEARING~regout\,
	datad => \sprite_renderer|show_asap~regout\,
	combout => \sprite_renderer|next_state.CLEARING~0_combout\);

-- Location: LCCOMB_X27_Y20_N2
\view|SPRITE_X~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~4_combout\ = (\view|Equal0~10_combout\ & ((\view|x\(8)) # ((\view|SPRITE_X[3]~0_combout\ & \view|Add5~14_combout\)))) # (!\view|Equal0~10_combout\ & (\view|SPRITE_X[3]~0_combout\ & (\view|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal0~10_combout\,
	datab => \view|SPRITE_X[3]~0_combout\,
	datac => \view|Add5~14_combout\,
	datad => \view|x\(8),
	combout => \view|SPRITE_X~4_combout\);

-- Location: LCCOMB_X26_Y20_N0
\view|SPRITE_X~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~5_combout\ = (\view|Equal6~0_combout\ & ((\view|Add10~14_combout\) # ((\view|Add6~16_combout\ & \view|Equal4~0_combout\)))) # (!\view|Equal6~0_combout\ & (\view|Add6~16_combout\ & (\view|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal6~0_combout\,
	datab => \view|Add6~16_combout\,
	datac => \view|Equal4~0_combout\,
	datad => \view|Add10~14_combout\,
	combout => \view|SPRITE_X~5_combout\);

-- Location: LCCOMB_X26_Y20_N10
\view|SPRITE_X~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~6_combout\ = (\view|SPRITE_X~5_combout\) # ((\view|SPRITE_X~4_combout\) # ((\view|Equal1~0_combout\ & \view|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal1~0_combout\,
	datab => \view|SPRITE_X~5_combout\,
	datac => \view|Add3~14_combout\,
	datad => \view|SPRITE_X~4_combout\,
	combout => \view|SPRITE_X~6_combout\);

-- Location: LCCOMB_X27_Y20_N4
\view|SPRITE_X~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~7_combout\ = (\view|SPRITE_X[3]~0_combout\ & ((\view|Add5~12_combout\) # ((\view|x\(7) & \view|Equal0~10_combout\)))) # (!\view|SPRITE_X[3]~0_combout\ & (((\view|x\(7) & \view|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_X[3]~0_combout\,
	datab => \view|Add5~12_combout\,
	datac => \view|x\(7),
	datad => \view|Equal0~10_combout\,
	combout => \view|SPRITE_X~7_combout\);

-- Location: LCCOMB_X26_Y20_N2
\view|SPRITE_X~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~8_combout\ = (\view|Equal6~0_combout\ & ((\view|Add10~12_combout\) # ((\view|Add6~14_combout\ & \view|Equal4~0_combout\)))) # (!\view|Equal6~0_combout\ & (\view|Add6~14_combout\ & (\view|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal6~0_combout\,
	datab => \view|Add6~14_combout\,
	datac => \view|Equal4~0_combout\,
	datad => \view|Add10~12_combout\,
	combout => \view|SPRITE_X~8_combout\);

-- Location: LCCOMB_X26_Y20_N12
\view|SPRITE_X~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~9_combout\ = (\view|SPRITE_X~8_combout\) # ((\view|SPRITE_X~7_combout\) # ((\view|Equal1~0_combout\ & \view|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal1~0_combout\,
	datab => \view|SPRITE_X~8_combout\,
	datac => \view|Add3~12_combout\,
	datad => \view|SPRITE_X~7_combout\,
	combout => \view|SPRITE_X~9_combout\);

-- Location: LCCOMB_X26_Y20_N4
\view|SPRITE_X~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~14_combout\ = (\view|Equal6~0_combout\ & ((\view|Add10~8_combout\) # ((\view|Add6~10_combout\ & \view|Equal4~0_combout\)))) # (!\view|Equal6~0_combout\ & (\view|Add6~10_combout\ & (\view|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal6~0_combout\,
	datab => \view|Add6~10_combout\,
	datac => \view|Equal4~0_combout\,
	datad => \view|Add10~8_combout\,
	combout => \view|SPRITE_X~14_combout\);

-- Location: LCCOMB_X24_Y20_N30
\view|SPRITE_X~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~19_combout\ = (\view|SPRITE_X[3]~0_combout\ & ((\view|Add5~4_combout\) # ((\view|Equal0~10_combout\ & \view|x\(3))))) # (!\view|SPRITE_X[3]~0_combout\ & (\view|Equal0~10_combout\ & (\view|x\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_X[3]~0_combout\,
	datab => \view|Equal0~10_combout\,
	datac => \view|x\(3),
	datad => \view|Add5~4_combout\,
	combout => \view|SPRITE_X~19_combout\);

-- Location: LCCOMB_X25_Y20_N30
\view|SPRITE_X~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~20_combout\ = (\view|Equal4~0_combout\ & ((\view|Add6~6_combout\) # ((\view|Equal6~0_combout\ & \view|Add10~4_combout\)))) # (!\view|Equal4~0_combout\ & (((\view|Equal6~0_combout\ & \view|Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal4~0_combout\,
	datab => \view|Add6~6_combout\,
	datac => \view|Equal6~0_combout\,
	datad => \view|Add10~4_combout\,
	combout => \view|SPRITE_X~20_combout\);

-- Location: LCCOMB_X24_Y20_N24
\view|SPRITE_X~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~21_combout\ = (\view|SPRITE_X~19_combout\) # ((\view|SPRITE_X~20_combout\) # ((\view|Add3~4_combout\ & \view|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_X~19_combout\,
	datab => \view|Add3~4_combout\,
	datac => \view|Equal1~0_combout\,
	datad => \view|SPRITE_X~20_combout\,
	combout => \view|SPRITE_X~21_combout\);

-- Location: LCCOMB_X27_Y20_N28
\view|SPRITE_X~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~22_combout\ = (\view|SPRITE_X[3]~0_combout\ & ((\view|Add5~2_combout\) # ((\view|x\(2) & \view|Equal0~10_combout\)))) # (!\view|SPRITE_X[3]~0_combout\ & (\view|x\(2) & ((\view|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_X[3]~0_combout\,
	datab => \view|x\(2),
	datac => \view|Add5~2_combout\,
	datad => \view|Equal0~10_combout\,
	combout => \view|SPRITE_X~22_combout\);

-- Location: LCCOMB_X25_Y20_N4
\view|SPRITE_X~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~23_combout\ = (\view|Equal6~0_combout\ & ((\view|Add10~2_combout\) # ((\view|Add6~4_combout\ & \view|Equal4~0_combout\)))) # (!\view|Equal6~0_combout\ & (\view|Add6~4_combout\ & ((\view|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal6~0_combout\,
	datab => \view|Add6~4_combout\,
	datac => \view|Add10~2_combout\,
	datad => \view|Equal4~0_combout\,
	combout => \view|SPRITE_X~23_combout\);

-- Location: LCCOMB_X24_Y20_N26
\view|SPRITE_X~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~24_combout\ = (\view|SPRITE_X~23_combout\) # ((\view|SPRITE_X~22_combout\) # ((\view|Add3~2_combout\ & \view|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_X~23_combout\,
	datab => \view|Add3~2_combout\,
	datac => \view|Equal1~0_combout\,
	datad => \view|SPRITE_X~22_combout\,
	combout => \view|SPRITE_X~24_combout\);

-- Location: LCCOMB_X25_Y20_N6
\view|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector8~1_combout\ = (\view|Add6~2_combout\ & ((\view|Equal4~0_combout\) # ((\view|Equal1~0_combout\ & \view|Add3~0_combout\)))) # (!\view|Add6~2_combout\ & (\view|Equal1~0_combout\ & (\view|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add6~2_combout\,
	datab => \view|Equal1~0_combout\,
	datac => \view|Add3~0_combout\,
	datad => \view|Equal4~0_combout\,
	combout => \view|Selector8~1_combout\);

-- Location: LCCOMB_X26_Y18_N4
\view|SPRITE_Y[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y[1]~2_combout\ = (\view|Equal0~9_combout\ & (((!\view|render_counter\(0)) # (!\view|render_counter\(2))) # (!\view|render_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|SPRITE_Y[1]~2_combout\);

-- Location: LCCOMB_X30_Y18_N30
\view|SPRITE_Y[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y[1]~3_combout\ = (\view|Equal0~6_combout\ & ((\view|render_counter\(1) & (\view|render_counter\(0) $ (\view|render_counter\(2)))) # (!\view|render_counter\(1) & (\view|render_counter\(0) & \view|render_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|render_counter\(0),
	datac => \view|Equal0~6_combout\,
	datad => \view|render_counter\(2),
	combout => \view|SPRITE_Y[1]~3_combout\);

-- Location: LCCOMB_X30_Y18_N16
\view|SPRITE_Y[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y[1]~4_combout\ = (\view|Equal0~8_combout\ & (\view|SPRITE_Y[1]~3_combout\ & (\view|Equal0~4_combout\ & \view|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal0~8_combout\,
	datab => \view|SPRITE_Y[1]~3_combout\,
	datac => \view|Equal0~4_combout\,
	datad => \view|Equal0~5_combout\,
	combout => \view|SPRITE_Y[1]~4_combout\);

-- Location: LCCOMB_X30_Y18_N26
\view|SPRITE_Y[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y[1]~5_combout\ = (!\view|render_counter\(1) & (\view|render_counter\(0) & \view|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|render_counter\(0),
	datac => \view|Equal0~6_combout\,
	combout => \view|SPRITE_Y[1]~5_combout\);

-- Location: LCCOMB_X30_Y18_N20
\view|SPRITE_Y[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y[1]~6_combout\ = (\view|Equal0~8_combout\ & (\view|SPRITE_Y[1]~5_combout\ & (\view|Equal0~4_combout\ & \view|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal0~8_combout\,
	datab => \view|SPRITE_Y[1]~5_combout\,
	datac => \view|Equal0~4_combout\,
	datad => \view|Equal0~5_combout\,
	combout => \view|SPRITE_Y[1]~6_combout\);

-- Location: LCCOMB_X27_Y18_N0
\view|SPRITE_Y~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~7_combout\ = (\view|SPRITE_Y[1]~6_combout\ & (((\view|Add4~0_combout\) # (\view|SPRITE_Y[1]~4_combout\)))) # (!\view|SPRITE_Y[1]~6_combout\ & (\view|x\(1) & ((!\view|SPRITE_Y[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(1),
	datab => \view|SPRITE_Y[1]~6_combout\,
	datac => \view|Add4~0_combout\,
	datad => \view|SPRITE_Y[1]~4_combout\,
	combout => \view|SPRITE_Y~7_combout\);

-- Location: LCCOMB_X27_Y18_N2
\view|SPRITE_Y~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~8_combout\ = (\view|SPRITE_Y~7_combout\ & (((\view|Add9~2_combout\) # (!\view|SPRITE_Y[1]~4_combout\)))) # (!\view|SPRITE_Y~7_combout\ & (\view|x\(0) & ((\view|SPRITE_Y[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(0),
	datab => \view|SPRITE_Y~7_combout\,
	datac => \view|Add9~2_combout\,
	datad => \view|SPRITE_Y[1]~4_combout\,
	combout => \view|SPRITE_Y~8_combout\);

-- Location: LCCOMB_X27_Y18_N24
\view|SPRITE_Y~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~9_combout\ = (\view|state.RENDER~regout\ & (\view|SPRITE_Y[1]~2_combout\ & \view|SPRITE_Y~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.RENDER~regout\,
	datac => \view|SPRITE_Y[1]~2_combout\,
	datad => \view|SPRITE_Y~8_combout\,
	combout => \view|SPRITE_Y~9_combout\);

-- Location: LCCOMB_X24_Y18_N12
\view|SPRITE_Y~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~11_combout\ = (\view|Equal4~0_combout\ & ((\view|Add7~0_combout\) # ((\view|Equal5~0_combout\ & \view|Add9~6_combout\)))) # (!\view|Equal4~0_combout\ & (\view|Equal5~0_combout\ & ((\view|Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal4~0_combout\,
	datab => \view|Equal5~0_combout\,
	datac => \view|Add7~0_combout\,
	datad => \view|Add9~6_combout\,
	combout => \view|SPRITE_Y~11_combout\);

-- Location: LCCOMB_X27_Y18_N28
\view|SPRITE_Y~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~13_combout\ = (\view|SPRITE_Y[1]~6_combout\ & (((\view|SPRITE_Y[1]~4_combout\)))) # (!\view|SPRITE_Y[1]~6_combout\ & ((\view|SPRITE_Y[1]~4_combout\ & (\view|x\(1))) # (!\view|SPRITE_Y[1]~4_combout\ & ((\view|x\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(1),
	datab => \view|SPRITE_Y[1]~6_combout\,
	datac => \view|x\(2),
	datad => \view|SPRITE_Y[1]~4_combout\,
	combout => \view|SPRITE_Y~13_combout\);

-- Location: LCCOMB_X27_Y18_N30
\view|SPRITE_Y~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~14_combout\ = (\view|SPRITE_Y~13_combout\ & (((\view|Add9~4_combout\) # (!\view|SPRITE_Y[1]~6_combout\)))) # (!\view|SPRITE_Y~13_combout\ & (\view|Add4~2_combout\ & ((\view|SPRITE_Y[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~2_combout\,
	datab => \view|SPRITE_Y~13_combout\,
	datac => \view|Add9~4_combout\,
	datad => \view|SPRITE_Y[1]~6_combout\,
	combout => \view|SPRITE_Y~14_combout\);

-- Location: LCCOMB_X27_Y18_N26
\view|SPRITE_Y~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~15_combout\ = (\view|state.RENDER~regout\ & (\view|SPRITE_Y[1]~2_combout\ & \view|SPRITE_Y~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.RENDER~regout\,
	datac => \view|SPRITE_Y[1]~2_combout\,
	datad => \view|SPRITE_Y~14_combout\,
	combout => \view|SPRITE_Y~15_combout\);

-- Location: LCCOMB_X25_Y18_N0
\view|SPRITE_Y~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~16_combout\ = (\view|Add4~8_combout\ & ((\view|Equal1~0_combout\) # ((!\view|SPRITE_Y~1_combout\ & \view|x\(4))))) # (!\view|Add4~8_combout\ & (!\view|SPRITE_Y~1_combout\ & ((\view|x\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~8_combout\,
	datab => \view|SPRITE_Y~1_combout\,
	datac => \view|Equal1~0_combout\,
	datad => \view|x\(4),
	combout => \view|SPRITE_Y~16_combout\);

-- Location: LCCOMB_X24_Y18_N26
\view|SPRITE_Y~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~17_combout\ = (\view|Equal4~0_combout\ & ((\view|Add7~4_combout\) # ((\view|Equal5~0_combout\ & \view|Add9~10_combout\)))) # (!\view|Equal4~0_combout\ & (((\view|Equal5~0_combout\ & \view|Add9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal4~0_combout\,
	datab => \view|Add7~4_combout\,
	datac => \view|Equal5~0_combout\,
	datad => \view|Add9~10_combout\,
	combout => \view|SPRITE_Y~17_combout\);

-- Location: LCCOMB_X24_Y18_N6
\view|SPRITE_Y~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~18_combout\ = (\view|SPRITE_Y~16_combout\) # ((\view|SPRITE_Y~17_combout\) # ((\view|x\(5) & !\view|SPRITE_Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(5),
	datab => \view|SPRITE_Y~16_combout\,
	datac => \view|SPRITE_Y~0_combout\,
	datad => \view|SPRITE_Y~17_combout\,
	combout => \view|SPRITE_Y~18_combout\);

-- Location: LCCOMB_X25_Y18_N26
\view|SPRITE_Y~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~19_combout\ = (\view|Equal1~0_combout\ & ((\view|Add4~6_combout\) # ((!\view|SPRITE_Y~1_combout\ & \view|x\(3))))) # (!\view|Equal1~0_combout\ & (!\view|SPRITE_Y~1_combout\ & ((\view|x\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal1~0_combout\,
	datab => \view|SPRITE_Y~1_combout\,
	datac => \view|Add4~6_combout\,
	datad => \view|x\(3),
	combout => \view|SPRITE_Y~19_combout\);

-- Location: LCCOMB_X24_Y18_N28
\view|SPRITE_Y~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~20_combout\ = (\view|Equal4~0_combout\ & ((\view|Add7~2_combout\) # ((\view|Equal5~0_combout\ & \view|Add9~8_combout\)))) # (!\view|Equal4~0_combout\ & (\view|Equal5~0_combout\ & ((\view|Add9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal4~0_combout\,
	datab => \view|Equal5~0_combout\,
	datac => \view|Add7~2_combout\,
	datad => \view|Add9~8_combout\,
	combout => \view|SPRITE_Y~20_combout\);

-- Location: LCCOMB_X25_Y18_N24
\view|SPRITE_Y~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~21_combout\ = (\view|SPRITE_Y~19_combout\) # ((\view|SPRITE_Y~20_combout\) # ((\view|x\(4) & !\view|SPRITE_Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(4),
	datab => \view|SPRITE_Y~19_combout\,
	datac => \view|SPRITE_Y~0_combout\,
	datad => \view|SPRITE_Y~20_combout\,
	combout => \view|SPRITE_Y~21_combout\);

-- Location: LCCOMB_X26_Y18_N12
\view|SPRITE_Y~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~26_combout\ = (\view|Equal4~0_combout\ & ((\view|Add7~6_combout\) # ((\view|Equal5~0_combout\ & \view|Add9~12_combout\)))) # (!\view|Equal4~0_combout\ & (((\view|Equal5~0_combout\ & \view|Add9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal4~0_combout\,
	datab => \view|Add7~6_combout\,
	datac => \view|Equal5~0_combout\,
	datad => \view|Add9~12_combout\,
	combout => \view|SPRITE_Y~26_combout\);

-- Location: LCCOMB_X24_Y18_N30
\view|SPRITE_Y~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~29_combout\ = (\view|Equal4~0_combout\ & ((\view|Add7~10_combout\) # ((\view|Equal5~0_combout\ & \view|Add9~16_combout\)))) # (!\view|Equal4~0_combout\ & (\view|Equal5~0_combout\ & ((\view|Add9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal4~0_combout\,
	datab => \view|Equal5~0_combout\,
	datac => \view|Add7~10_combout\,
	datad => \view|Add9~16_combout\,
	combout => \view|SPRITE_Y~29_combout\);

-- Location: LCCOMB_X21_Y12_N18
\sprite_renderer|Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector72~0_combout\ = (!\view|DRAW_SPRITE~regout\ & (\sprite_renderer|state.IDLE~regout\ & ((\sprite_renderer|next_state.SHOWING~regout\) # (\sprite_renderer|show_asap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|next_state.SHOWING~regout\,
	datab => \view|DRAW_SPRITE~regout\,
	datac => \sprite_renderer|show_asap~regout\,
	datad => \sprite_renderer|state.IDLE~regout\,
	combout => \sprite_renderer|Selector72~0_combout\);

-- Location: LCCOMB_X21_Y12_N20
\sprite_renderer|Selector72~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector72~1_combout\ = (\sprite_renderer|Selector72~0_combout\) # ((!\sprite_renderer|next_state.WAITING~0_combout\ & \sprite_renderer|next_state.SHOWING~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|next_state.WAITING~0_combout\,
	datac => \sprite_renderer|next_state.SHOWING~regout\,
	datad => \sprite_renderer|Selector72~0_combout\,
	combout => \sprite_renderer|Selector72~1_combout\);

-- Location: LCCOMB_X30_Y17_N8
\view|Add2~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~65_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~63_combout\,
	combout => \view|Add2~65_combout\);

-- Location: LCCOMB_X30_Y17_N2
\view|Add2~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~66_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~61_combout\,
	combout => \view|Add2~66_combout\);

-- Location: LCCOMB_X30_Y17_N28
\view|Add2~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~67_combout\ = (\view|Add2~59_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~59_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~67_combout\);

-- Location: LCCOMB_X30_Y17_N6
\view|Add2~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~68_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~57_combout\,
	combout => \view|Add2~68_combout\);

-- Location: LCCOMB_X30_Y17_N12
\view|Add2~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~70_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~53_combout\,
	combout => \view|Add2~70_combout\);

-- Location: LCCOMB_X32_Y18_N20
\view|Add2~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~79_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~35_combout\,
	combout => \view|Add2~79_combout\);

-- Location: LCCOMB_X32_Y18_N2
\view|Add2~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~88_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~17_combout\,
	combout => \view|Add2~88_combout\);

-- Location: LCCOMB_X30_Y18_N0
\view|Add2~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~92_combout\ = (\view|Add2~9_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~9_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~92_combout\);

-- Location: LCCOMB_X30_Y18_N12
\view|Add2~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~93_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~7_combout\,
	combout => \view|Add2~93_combout\);

-- Location: LCFF_X25_Y19_N13
\view|SHOW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SHOW~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SHOW~regout\);

-- Location: LCCOMB_X21_Y12_N10
\sprite_renderer|Selector69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector69~0_combout\ = ((!\sprite_renderer|next_state.IDLE~regout\ & (!\sprite_renderer|show_asap~regout\ & !\view|DRAW_SPRITE~regout\))) # (!\sprite_renderer|state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|next_state.IDLE~regout\,
	datab => \sprite_renderer|show_asap~regout\,
	datac => \view|DRAW_SPRITE~regout\,
	datad => \sprite_renderer|state.IDLE~regout\,
	combout => \sprite_renderer|Selector69~0_combout\);

-- Location: LCCOMB_X21_Y12_N12
\sprite_renderer|Selector69~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector69~1_combout\ = (\sprite_renderer|state.SHOWING~regout\ & (((!\vga|vga_timing|v_state.SYNC~regout\ & !\sprite_renderer|next_state.IDLE~regout\)))) # (!\sprite_renderer|state.SHOWING~regout\ & 
-- (((!\sprite_renderer|next_state.IDLE~regout\)) # (!\sprite_renderer|state.WAITING~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.WAITING~regout\,
	datab => \sprite_renderer|state.SHOWING~regout\,
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \sprite_renderer|next_state.IDLE~regout\,
	combout => \sprite_renderer|Selector69~1_combout\);

-- Location: LCCOMB_X21_Y12_N30
\sprite_renderer|Selector69~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector69~2_combout\ = (\sprite_renderer|Selector69~0_combout\ & \sprite_renderer|Selector69~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Selector69~0_combout\,
	datad => \sprite_renderer|Selector69~1_combout\,
	combout => \sprite_renderer|Selector69~2_combout\);

-- Location: LCCOMB_X21_Y12_N26
\sprite_renderer|Selector69~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector69~3_combout\ = ((\sprite_renderer|state.DRAWING~regout\ & ((\sprite_renderer|LessThan0~10_combout\) # (\sprite_renderer|LessThan1~10_combout\)))) # (!\sprite_renderer|Selector69~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan0~10_combout\,
	datab => \sprite_renderer|Selector69~2_combout\,
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|state.DRAWING~regout\,
	combout => \sprite_renderer|Selector69~3_combout\);

-- Location: LCFF_X26_Y12_N17
frame_time : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Equal0~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \frame_time~regout\);

-- Location: LCFF_X27_Y13_N9
\fps:counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[2]~regout\);

-- Location: LCFF_X27_Y13_N19
\fps:counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[3]~regout\);

-- Location: LCFF_X27_Y13_N15
\fps:counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[1]~regout\);

-- Location: LCFF_X27_Y13_N11
\fps:counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[0]~regout\);

-- Location: LCCOMB_X27_Y13_N4
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\fps:counter[0]~regout\ & (!\fps:counter[1]~regout\ & (\fps:counter[2]~regout\ & !\fps:counter[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[0]~regout\,
	datab => \fps:counter[1]~regout\,
	datac => \fps:counter[2]~regout\,
	datad => \fps:counter[3]~regout\,
	combout => \Equal0~0_combout\);

-- Location: LCFF_X27_Y12_N21
\fps:counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[19]~regout\);

-- Location: LCFF_X26_Y12_N19
\fps:counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[18]~regout\);

-- Location: LCFF_X27_Y12_N15
\fps:counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~34_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[17]~regout\);

-- Location: LCFF_X27_Y12_N13
\fps:counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~32_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[16]~regout\);

-- Location: LCCOMB_X27_Y12_N30
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\fps:counter[19]~regout\ & (\fps:counter[18]~regout\ & (!\fps:counter[17]~regout\ & !\fps:counter[16]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[19]~regout\,
	datab => \fps:counter[18]~regout\,
	datac => \fps:counter[17]~regout\,
	datad => \fps:counter[16]~regout\,
	combout => \Equal0~1_combout\);

-- Location: LCFF_X27_Y12_N25
\fps:counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[15]~regout\);

-- Location: LCFF_X27_Y12_N27
\fps:counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[13]~regout\);

-- Location: LCFF_X27_Y12_N29
\fps:counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[12]~regout\);

-- Location: LCFF_X27_Y12_N9
\fps:counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~28_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[14]~regout\);

-- Location: LCCOMB_X27_Y12_N22
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\fps:counter[15]~regout\ & (\fps:counter[13]~regout\ & (!\fps:counter[14]~regout\ & \fps:counter[12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[15]~regout\,
	datab => \fps:counter[13]~regout\,
	datac => \fps:counter[14]~regout\,
	datad => \fps:counter[12]~regout\,
	combout => \Equal0~2_combout\);

-- Location: LCFF_X26_Y12_N21
\fps:counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~7_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[10]~regout\);

-- Location: LCFF_X26_Y12_N31
\fps:counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[9]~regout\);

-- Location: LCFF_X26_Y12_N1
\fps:counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[8]~regout\);

-- Location: LCFF_X27_Y12_N3
\fps:counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[11]~regout\);

-- Location: LCCOMB_X26_Y12_N26
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\fps:counter[11]~regout\ & (\fps:counter[9]~regout\ & (\fps:counter[10]~regout\ & \fps:counter[8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[11]~regout\,
	datab => \fps:counter[9]~regout\,
	datac => \fps:counter[10]~regout\,
	datad => \fps:counter[8]~regout\,
	combout => \Equal0~3_combout\);

-- Location: LCFF_X27_Y13_N7
\fps:counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[5]~regout\);

-- Location: LCFF_X27_Y13_N1
\fps:counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \counter~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[4]~regout\);

-- Location: LCFF_X27_Y13_N27
\fps:counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[7]~regout\);

-- Location: LCFF_X27_Y13_N25
\fps:counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fps:counter[6]~regout\);

-- Location: LCCOMB_X27_Y13_N2
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\fps:counter[5]~regout\ & (!\fps:counter[7]~regout\ & (!\fps:counter[6]~regout\ & \fps:counter[4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fps:counter[5]~regout\,
	datab => \fps:counter[7]~regout\,
	datac => \fps:counter[6]~regout\,
	datad => \fps:counter[4]~regout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X26_Y12_N28
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~4_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X26_Y12_N16
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Equal0~0_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X27_Y13_N8
\counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~4_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Equal0~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \counter~0_combout\);

-- Location: LCCOMB_X27_Y13_N10
\counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~0_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~0_combout\,
	combout => \counter~1_combout\);

-- Location: LCCOMB_X27_Y12_N20
\counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~38_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~0_combout\,
	combout => \counter~2_combout\);

-- Location: LCCOMB_X26_Y12_N18
\counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~36_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~36_combout\,
	combout => \counter~3_combout\);

-- Location: LCCOMB_X27_Y12_N24
\counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~30_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Equal0~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \counter~4_combout\);

-- Location: LCCOMB_X27_Y12_N26
\counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add0~26_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Equal0~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \counter~5_combout\);

-- Location: LCCOMB_X27_Y12_N28
\counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~24_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add0~24_combout\,
	datad => \Equal0~5_combout\,
	combout => \counter~6_combout\);

-- Location: LCCOMB_X26_Y12_N20
\counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~20_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~20_combout\,
	combout => \counter~7_combout\);

-- Location: LCCOMB_X26_Y12_N30
\counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add0~18_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~18_combout\,
	combout => \counter~8_combout\);

-- Location: LCCOMB_X26_Y12_N0
\counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add0~16_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~16_combout\,
	combout => \counter~9_combout\);

-- Location: LCCOMB_X27_Y13_N6
\counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add0~10_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Add0~10_combout\,
	datac => \Equal0~0_combout\,
	combout => \counter~10_combout\);

-- Location: LCCOMB_X27_Y13_N0
\counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (\Add0~8_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datad => \Add0~8_combout\,
	combout => \counter~11_combout\);

-- Location: LCCOMB_X25_Y12_N26
\sprite_renderer|Add1~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~100_combout\ = (\sprite_renderer|Add1~75_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~75_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~100_combout\);

-- Location: CLKCTRL_G8
\view|render_asap~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \view|render_asap~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \view|render_asap~clkctrl_outclk\);

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

-- Location: LCCOMB_X26_Y12_N2
\sprite_renderer|sprite_x[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[8]~feeder_combout\ = \view|SPRITE_X\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_X\(8),
	combout => \sprite_renderer|sprite_x[8]~feeder_combout\);

-- Location: LCCOMB_X24_Y12_N2
\sprite_renderer|sprite_x[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[7]~feeder_combout\ = \view|SPRITE_X\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE_X\(7),
	combout => \sprite_renderer|sprite_x[7]~feeder_combout\);

-- Location: LCCOMB_X26_Y12_N8
\sprite_renderer|sprite_x[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[3]~feeder_combout\ = \view|SPRITE_X\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_X\(3),
	combout => \sprite_renderer|sprite_x[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y12_N6
\sprite_renderer|sprite_x[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[2]~feeder_combout\ = \view|SPRITE_X\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE_X\(2),
	combout => \sprite_renderer|sprite_x[2]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N2
\sprite_renderer|sprite_y[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[5]~feeder_combout\ = \view|SPRITE_Y\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_Y\(5),
	combout => \sprite_renderer|sprite_y[5]~feeder_combout\);

-- Location: LCCOMB_X26_Y12_N10
\sprite_renderer|sprite_y[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[4]~feeder_combout\ = \view|SPRITE_Y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_Y\(4),
	combout => \sprite_renderer|sprite_y[4]~feeder_combout\);

-- Location: LCCOMB_X23_Y12_N2
\sprite_renderer|sprite_y[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[1]~feeder_combout\ = \view|SPRITE_Y\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE_Y\(1),
	combout => \sprite_renderer|sprite_y[1]~feeder_combout\);

-- Location: LCCOMB_X23_Y12_N6
\sprite_renderer|sprite_y[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[2]~feeder_combout\ = \view|SPRITE_Y\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE_Y\(2),
	combout => \sprite_renderer|sprite_y[2]~feeder_combout\);

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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|vga_fb|SRAM_WE_N~0_combout\,
	oe => VCC,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|vga_fb|SRAM_WE_N~0_combout\,
	oe => VCC,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|vga_fb|SRAM_WE_N~0_combout\,
	oe => VCC,
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
	datain => \vga|latched_color\(6),
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	datain => \vga|latched_color\(6),
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|vga_fb|SRAM_WE_N~0_combout\,
	oe => VCC,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|vga_fb|SRAM_WE_N~0_combout\,
	oe => VCC,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga|vga_fb|SRAM_WE_N~0_combout\,
	oe => VCC,
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
	datain => \vga|latched_color\(6),
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	datain => \vga|latched_color\(6),
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
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
	oe => \vga|vga_fb|ALT_INV_SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(15),
	combout => \SRAM_DQ[15]~15\);

-- Location: LCCOMB_X19_Y5_N12
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

-- Location: LCCOMB_X19_Y5_N14
\vga|vga_timing|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~2_combout\ = (\vga|vga_timing|h_counter\(1) & (!\vga|vga_timing|Add2~1\)) # (!\vga|vga_timing|h_counter\(1) & ((\vga|vga_timing|Add2~1\) # (GND)))
-- \vga|vga_timing|Add2~3\ = CARRY((!\vga|vga_timing|Add2~1\) # (!\vga|vga_timing|h_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(1),
	datad => VCC,
	cin => \vga|vga_timing|Add2~1\,
	combout => \vga|vga_timing|Add2~2_combout\,
	cout => \vga|vga_timing|Add2~3\);

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

-- Location: LCCOMB_X21_Y11_N20
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

-- Location: LCFF_X21_Y11_N21
reset_sync_reg : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \reset_sync_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_sync_reg~regout\);

-- Location: LCFF_X21_Y11_N11
RESET_N : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \reset_sync_reg~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RESET_N~regout\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X20_Y5_N28
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

-- Location: LCFF_X20_Y5_N29
\vga|vga_timing|clock_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|clock_count[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|clock_count\(0));

-- Location: LCCOMB_X20_Y5_N2
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

-- Location: LCFF_X20_Y5_N3
\vga|vga_timing|clock_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|clock_count[1]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|clock_count\(1));

-- Location: LCCOMB_X20_Y5_N30
\vga|vga_timing|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal0~0_combout\ = (\vga|vga_timing|clock_count\(0) & \vga|vga_timing|clock_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|clock_count\(0),
	datad => \vga|vga_timing|clock_count\(1),
	combout => \vga|vga_timing|Equal0~0_combout\);

-- Location: LCFF_X19_Y5_N15
\vga|vga_timing|h_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(1));

-- Location: LCCOMB_X19_Y5_N16
\vga|vga_timing|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~4_combout\ = (\vga|vga_timing|h_counter\(2) & (\vga|vga_timing|Add2~3\ $ (GND))) # (!\vga|vga_timing|h_counter\(2) & (!\vga|vga_timing|Add2~3\ & VCC))
-- \vga|vga_timing|Add2~5\ = CARRY((\vga|vga_timing|h_counter\(2) & !\vga|vga_timing|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(2),
	datad => VCC,
	cin => \vga|vga_timing|Add2~3\,
	combout => \vga|vga_timing|Add2~4_combout\,
	cout => \vga|vga_timing|Add2~5\);

-- Location: LCCOMB_X19_Y5_N18
\vga|vga_timing|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~6_combout\ = (\vga|vga_timing|h_counter\(3) & (!\vga|vga_timing|Add2~5\)) # (!\vga|vga_timing|h_counter\(3) & ((\vga|vga_timing|Add2~5\) # (GND)))
-- \vga|vga_timing|Add2~7\ = CARRY((!\vga|vga_timing|Add2~5\) # (!\vga|vga_timing|h_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(3),
	datad => VCC,
	cin => \vga|vga_timing|Add2~5\,
	combout => \vga|vga_timing|Add2~6_combout\,
	cout => \vga|vga_timing|Add2~7\);

-- Location: LCFF_X19_Y5_N19
\vga|vga_timing|h_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(3));

-- Location: LCCOMB_X19_Y5_N20
\vga|vga_timing|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~8_combout\ = (\vga|vga_timing|h_counter\(4) & (\vga|vga_timing|Add2~7\ $ (GND))) # (!\vga|vga_timing|h_counter\(4) & (!\vga|vga_timing|Add2~7\ & VCC))
-- \vga|vga_timing|Add2~9\ = CARRY((\vga|vga_timing|h_counter\(4) & !\vga|vga_timing|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(4),
	datad => VCC,
	cin => \vga|vga_timing|Add2~7\,
	combout => \vga|vga_timing|Add2~8_combout\,
	cout => \vga|vga_timing|Add2~9\);

-- Location: LCCOMB_X19_Y5_N22
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

-- Location: LCCOMB_X19_Y5_N26
\vga|vga_timing|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~14_combout\ = (\vga|vga_timing|h_counter\(7) & (!\vga|vga_timing|Add2~13\)) # (!\vga|vga_timing|h_counter\(7) & ((\vga|vga_timing|Add2~13\) # (GND)))
-- \vga|vga_timing|Add2~15\ = CARRY((!\vga|vga_timing|Add2~13\) # (!\vga|vga_timing|h_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_counter\(7),
	datad => VCC,
	cin => \vga|vga_timing|Add2~13\,
	combout => \vga|vga_timing|Add2~14_combout\,
	cout => \vga|vga_timing|Add2~15\);

-- Location: LCCOMB_X19_Y5_N28
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

-- Location: LCCOMB_X19_Y5_N30
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

-- Location: LCCOMB_X19_Y5_N6
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

-- Location: LCFF_X19_Y5_N7
\vga|vga_timing|h_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_counter~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(8));

-- Location: LCFF_X19_Y5_N21
\vga|vga_timing|h_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(4));

-- Location: LCCOMB_X19_Y5_N24
\vga|vga_timing|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add2~12_combout\ = (\vga|vga_timing|h_counter\(6) & (\vga|vga_timing|Add2~11\ $ (GND))) # (!\vga|vga_timing|h_counter\(6) & (!\vga|vga_timing|Add2~11\ & VCC))
-- \vga|vga_timing|Add2~13\ = CARRY((\vga|vga_timing|h_counter\(6) & !\vga|vga_timing|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(6),
	datad => VCC,
	cin => \vga|vga_timing|Add2~11\,
	combout => \vga|vga_timing|Add2~12_combout\,
	cout => \vga|vga_timing|Add2~13\);

-- Location: LCFF_X19_Y5_N25
\vga|vga_timing|h_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(6));

-- Location: LCCOMB_X20_Y5_N24
\vga|vga_timing|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal3~0_combout\ = (\vga|vga_timing|Equal1~0_combout\ & (\vga|vga_timing|h_counter\(8) & (\vga|vga_timing|h_counter\(4) & !\vga|vga_timing|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal1~0_combout\,
	datab => \vga|vga_timing|h_counter\(8),
	datac => \vga|vga_timing|h_counter\(4),
	datad => \vga|vga_timing|h_counter\(6),
	combout => \vga|vga_timing|Equal3~0_combout\);

-- Location: LCCOMB_X19_Y5_N4
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

-- Location: LCFF_X19_Y5_N5
\vga|vga_timing|h_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_counter~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(9));

-- Location: LCCOMB_X19_Y5_N2
\vga|vga_timing|h_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_counter~0_combout\ = (\vga|vga_timing|Add2~10_combout\ & ((!\vga|vga_timing|Equal3~0_combout\) # (!\vga|vga_timing|h_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|Add2~10_combout\,
	datac => \vga|vga_timing|h_counter\(9),
	datad => \vga|vga_timing|Equal3~0_combout\,
	combout => \vga|vga_timing|h_counter~0_combout\);

-- Location: LCFF_X19_Y5_N3
\vga|vga_timing|h_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_counter~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(5));

-- Location: LCFF_X19_Y5_N27
\vga|vga_timing|h_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(7));

-- Location: LCCOMB_X20_Y5_N4
\vga|vga_timing|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal2~1_combout\ = (!\vga|vga_timing|h_counter\(4) & (!\vga|vga_timing|h_counter\(9) & (!\vga|vga_timing|h_counter\(8) & !\vga|vga_timing|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(4),
	datab => \vga|vga_timing|h_counter\(9),
	datac => \vga|vga_timing|h_counter\(8),
	datad => \vga|vga_timing|h_counter\(6),
	combout => \vga|vga_timing|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y5_N22
\vga|vga_timing|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal2~2_combout\ = (\vga|vga_timing|Equal2~0_combout\ & (\vga|vga_timing|h_counter\(7) & (\vga|vga_timing|Equal2~1_combout\ & \vga|vga_timing|h_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal2~0_combout\,
	datab => \vga|vga_timing|h_counter\(7),
	datac => \vga|vga_timing|Equal2~1_combout\,
	datad => \vga|vga_timing|h_counter\(5),
	combout => \vga|vga_timing|Equal2~2_combout\);

-- Location: LCFF_X19_Y5_N13
\vga|vga_timing|h_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(0));

-- Location: LCCOMB_X19_Y5_N8
\vga|vga_timing|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal2~0_combout\ = (\vga|vga_timing|h_counter\(2) & (\vga|vga_timing|h_counter\(3) & (\vga|vga_timing|h_counter\(1) & \vga|vga_timing|h_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(2),
	datab => \vga|vga_timing|h_counter\(3),
	datac => \vga|vga_timing|h_counter\(1),
	datad => \vga|vga_timing|h_counter\(0),
	combout => \vga|vga_timing|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y5_N16
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

-- Location: LCCOMB_X20_Y5_N18
\vga|vga_timing|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal1~1_combout\ = (!\vga|vga_timing|h_counter\(4) & (!\vga|vga_timing|h_counter\(9) & (!\vga|vga_timing|h_counter\(8) & \vga|vga_timing|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(4),
	datab => \vga|vga_timing|h_counter\(9),
	datac => \vga|vga_timing|h_counter\(8),
	datad => \vga|vga_timing|h_counter\(6),
	combout => \vga|vga_timing|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y5_N8
\vga|vga_timing|h_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_state~11_combout\ = (!\vga|vga_timing|Equal4~1_combout\ & (!\vga|vga_timing|Equal2~2_combout\ & ((!\vga|vga_timing|Equal1~1_combout\) # (!\vga|vga_timing|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal4~1_combout\,
	datab => \vga|vga_timing|Equal2~2_combout\,
	datac => \vga|vga_timing|Equal1~0_combout\,
	datad => \vga|vga_timing|Equal1~1_combout\,
	combout => \vga|vga_timing|h_state~11_combout\);

-- Location: LCCOMB_X20_Y5_N0
\vga|vga_timing|h_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_state~12_combout\ = (\vga|vga_timing|Equal0~0_combout\ & (((\vga|vga_timing|Equal3~0_combout\ & !\vga|vga_timing|h_counter\(9))) # (!\vga|vga_timing|h_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal3~0_combout\,
	datab => \vga|vga_timing|h_state~11_combout\,
	datac => \vga|vga_timing|h_counter\(9),
	datad => \vga|vga_timing|Equal0~0_combout\,
	combout => \vga|vga_timing|h_state~12_combout\);

-- Location: LCFF_X20_Y5_N9
\vga|vga_timing|h_state.DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|h_state~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|h_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_state.DATA~regout\);

-- Location: LCCOMB_X23_Y5_N20
\vga|vga_timing|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~10_combout\ = (\vga|vga_timing|v_counter\(5) & (!\vga|vga_timing|Add4~9\)) # (!\vga|vga_timing|v_counter\(5) & ((\vga|vga_timing|Add4~9\) # (GND)))
-- \vga|vga_timing|Add4~11\ = CARRY((!\vga|vga_timing|Add4~9\) # (!\vga|vga_timing|v_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(5),
	datad => VCC,
	cin => \vga|vga_timing|Add4~9\,
	combout => \vga|vga_timing|Add4~10_combout\,
	cout => \vga|vga_timing|Add4~11\);

-- Location: LCCOMB_X23_Y5_N22
\vga|vga_timing|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~12_combout\ = (\vga|vga_timing|v_counter\(6) & (\vga|vga_timing|Add4~11\ $ (GND))) # (!\vga|vga_timing|v_counter\(6) & (!\vga|vga_timing|Add4~11\ & VCC))
-- \vga|vga_timing|Add4~13\ = CARRY((\vga|vga_timing|v_counter\(6) & !\vga|vga_timing|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(6),
	datad => VCC,
	cin => \vga|vga_timing|Add4~11\,
	combout => \vga|vga_timing|Add4~12_combout\,
	cout => \vga|vga_timing|Add4~13\);

-- Location: LCCOMB_X20_Y5_N6
\vga|vga_timing|new_line~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|new_line~2_combout\ = (\vga|vga_timing|Equal4~1_combout\ & (\vga|vga_timing|clock_count\(0) & \vga|vga_timing|clock_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal4~1_combout\,
	datab => \vga|vga_timing|clock_count\(0),
	datad => \vga|vga_timing|clock_count\(1),
	combout => \vga|vga_timing|new_line~2_combout\);

-- Location: LCFF_X20_Y5_N7
\vga|vga_timing|new_line\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|new_line~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|new_line~regout\);

-- Location: LCFF_X23_Y5_N23
\vga|vga_timing|v_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(6));

-- Location: LCCOMB_X23_Y5_N24
\vga|vga_timing|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~14_combout\ = (\vga|vga_timing|v_counter\(7) & (!\vga|vga_timing|Add4~13\)) # (!\vga|vga_timing|v_counter\(7) & ((\vga|vga_timing|Add4~13\) # (GND)))
-- \vga|vga_timing|Add4~15\ = CARRY((!\vga|vga_timing|Add4~13\) # (!\vga|vga_timing|v_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(7),
	datad => VCC,
	cin => \vga|vga_timing|Add4~13\,
	combout => \vga|vga_timing|Add4~14_combout\,
	cout => \vga|vga_timing|Add4~15\);

-- Location: LCFF_X23_Y5_N25
\vga|vga_timing|v_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(7));

-- Location: LCCOMB_X23_Y5_N26
\vga|vga_timing|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~16_combout\ = (\vga|vga_timing|v_counter\(8) & (\vga|vga_timing|Add4~15\ $ (GND))) # (!\vga|vga_timing|v_counter\(8) & (!\vga|vga_timing|Add4~15\ & VCC))
-- \vga|vga_timing|Add4~17\ = CARRY((\vga|vga_timing|v_counter\(8) & !\vga|vga_timing|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(8),
	datad => VCC,
	cin => \vga|vga_timing|Add4~15\,
	combout => \vga|vga_timing|Add4~16_combout\,
	cout => \vga|vga_timing|Add4~17\);

-- Location: LCFF_X23_Y5_N27
\vga|vga_timing|v_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~16_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(8));

-- Location: LCCOMB_X23_Y5_N30
\vga|vga_timing|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal6~0_combout\ = (!\vga|vga_timing|v_counter\(6) & (!\vga|vga_timing|v_counter\(4) & (!\vga|vga_timing|v_counter\(7) & !\vga|vga_timing|v_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(6),
	datab => \vga|vga_timing|v_counter\(4),
	datac => \vga|vga_timing|v_counter\(7),
	datad => \vga|vga_timing|v_counter\(8),
	combout => \vga|vga_timing|Equal6~0_combout\);

-- Location: LCCOMB_X23_Y5_N28
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

-- Location: LCCOMB_X23_Y5_N6
\vga|vga_timing|v_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~4_combout\ = (\vga|vga_timing|Add4~18_combout\ & ((\vga|vga_timing|v_counter\(5)) # ((!\vga|vga_timing|v_counter\(9)) # (!\vga|vga_timing|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(5),
	datab => \vga|vga_timing|Equal8~1_combout\,
	datac => \vga|vga_timing|v_counter\(9),
	datad => \vga|vga_timing|Add4~18_combout\,
	combout => \vga|vga_timing|v_counter~4_combout\);

-- Location: LCFF_X23_Y5_N7
\vga|vga_timing|v_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(9));

-- Location: LCCOMB_X23_Y5_N8
\vga|vga_timing|v_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~3_combout\ = (\vga|vga_timing|Add4~0_combout\ & (((\vga|vga_timing|v_counter\(5)) # (!\vga|vga_timing|v_counter\(9))) # (!\vga|vga_timing|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Add4~0_combout\,
	datab => \vga|vga_timing|Equal8~1_combout\,
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|v_counter\(9),
	combout => \vga|vga_timing|v_counter~3_combout\);

-- Location: LCFF_X23_Y5_N9
\vga|vga_timing|v_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(0));

-- Location: LCCOMB_X23_Y5_N2
\vga|vga_timing|v_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~1_combout\ = (\vga|vga_timing|Add4~2_combout\ & (((\vga|vga_timing|v_counter\(5)) # (!\vga|vga_timing|v_counter\(9))) # (!\vga|vga_timing|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Add4~2_combout\,
	datab => \vga|vga_timing|Equal8~1_combout\,
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|v_counter\(9),
	combout => \vga|vga_timing|v_counter~1_combout\);

-- Location: LCFF_X23_Y5_N3
\vga|vga_timing|v_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(1));

-- Location: LCCOMB_X23_Y5_N14
\vga|vga_timing|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~4_combout\ = (\vga|vga_timing|v_counter\(2) & (\vga|vga_timing|Add4~3\ $ (GND))) # (!\vga|vga_timing|v_counter\(2) & (!\vga|vga_timing|Add4~3\ & VCC))
-- \vga|vga_timing|Add4~5\ = CARRY((\vga|vga_timing|v_counter\(2) & !\vga|vga_timing|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(2),
	datad => VCC,
	cin => \vga|vga_timing|Add4~3\,
	combout => \vga|vga_timing|Add4~4_combout\,
	cout => \vga|vga_timing|Add4~5\);

-- Location: LCCOMB_X23_Y5_N0
\vga|vga_timing|v_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~0_combout\ = (\vga|vga_timing|Add4~4_combout\ & ((\vga|vga_timing|v_counter\(5)) # ((!\vga|vga_timing|v_counter\(9)) # (!\vga|vga_timing|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(5),
	datab => \vga|vga_timing|Equal8~1_combout\,
	datac => \vga|vga_timing|Add4~4_combout\,
	datad => \vga|vga_timing|v_counter\(9),
	combout => \vga|vga_timing|v_counter~0_combout\);

-- Location: LCFF_X23_Y5_N1
\vga|vga_timing|v_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(2));

-- Location: LCCOMB_X22_Y5_N6
\vga|vga_timing|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal8~0_combout\ = (\vga|vga_timing|v_counter\(1) & (\vga|vga_timing|v_counter\(2) & \vga|vga_timing|v_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(1),
	datac => \vga|vga_timing|v_counter\(2),
	datad => \vga|vga_timing|v_counter\(3),
	combout => \vga|vga_timing|Equal8~0_combout\);

-- Location: LCCOMB_X22_Y5_N16
\vga|vga_timing|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal8~1_combout\ = (\vga|vga_timing|Equal6~0_combout\ & (!\vga|vga_timing|v_counter\(0) & \vga|vga_timing|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|Equal6~0_combout\,
	datac => \vga|vga_timing|v_counter\(0),
	datad => \vga|vga_timing|Equal8~0_combout\,
	combout => \vga|vga_timing|Equal8~1_combout\);

-- Location: LCCOMB_X23_Y5_N4
\vga|vga_timing|v_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_counter~2_combout\ = (\vga|vga_timing|Add4~6_combout\ & (((\vga|vga_timing|v_counter\(5)) # (!\vga|vga_timing|v_counter\(9))) # (!\vga|vga_timing|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Add4~6_combout\,
	datab => \vga|vga_timing|Equal8~1_combout\,
	datac => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|v_counter\(9),
	combout => \vga|vga_timing|v_counter~2_combout\);

-- Location: LCFF_X23_Y5_N5
\vga|vga_timing|v_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_counter~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(3));

-- Location: LCCOMB_X23_Y5_N18
\vga|vga_timing|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Add4~8_combout\ = (\vga|vga_timing|v_counter\(4) & (\vga|vga_timing|Add4~7\ $ (GND))) # (!\vga|vga_timing|v_counter\(4) & (!\vga|vga_timing|Add4~7\ & VCC))
-- \vga|vga_timing|Add4~9\ = CARRY((\vga|vga_timing|v_counter\(4) & !\vga|vga_timing|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(4),
	datad => VCC,
	cin => \vga|vga_timing|Add4~7\,
	combout => \vga|vga_timing|Add4~8_combout\,
	cout => \vga|vga_timing|Add4~9\);

-- Location: LCFF_X23_Y5_N19
\vga|vga_timing|v_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(4));

-- Location: LCFF_X23_Y5_N21
\vga|vga_timing|v_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add4~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|new_line~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_counter\(5));

-- Location: LCCOMB_X22_Y5_N12
\vga|vga_timing|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal6~1_combout\ = (!\vga|vga_timing|v_counter\(9) & (!\vga|vga_timing|v_counter\(5) & (!\vga|vga_timing|v_counter\(0) & \vga|vga_timing|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(9),
	datab => \vga|vga_timing|v_counter\(5),
	datac => \vga|vga_timing|v_counter\(0),
	datad => \vga|vga_timing|Equal6~0_combout\,
	combout => \vga|vga_timing|Equal6~1_combout\);

-- Location: LCCOMB_X22_Y5_N8
\vga|vga_timing|v_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_state~11_combout\ = ((\vga|vga_timing|v_counter\(1) & ((\vga|vga_timing|v_counter\(2)) # (!\vga|vga_timing|v_counter\(3)))) # (!\vga|vga_timing|v_counter\(1) & (\vga|vga_timing|v_counter\(2) $ (\vga|vga_timing|v_counter\(3))))) # 
-- (!\vga|vga_timing|Equal6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(1),
	datab => \vga|vga_timing|Equal6~1_combout\,
	datac => \vga|vga_timing|v_counter\(2),
	datad => \vga|vga_timing|v_counter\(3),
	combout => \vga|vga_timing|v_state~11_combout\);

-- Location: LCCOMB_X22_Y5_N2
\vga|vga_timing|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal8~2_combout\ = (\vga|vga_timing|v_counter\(5) & !\vga|vga_timing|v_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_counter\(5),
	datad => \vga|vga_timing|v_counter\(9),
	combout => \vga|vga_timing|Equal8~2_combout\);

-- Location: LCCOMB_X22_Y5_N28
\vga|vga_timing|v_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_state~12_combout\ = (\vga|vga_timing|new_line~regout\ & (((\vga|vga_timing|Equal8~1_combout\ & \vga|vga_timing|Equal8~2_combout\)) # (!\vga|vga_timing|v_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal8~1_combout\,
	datab => \vga|vga_timing|v_state~11_combout\,
	datac => \vga|vga_timing|new_line~regout\,
	datad => \vga|vga_timing|Equal8~2_combout\,
	combout => \vga|vga_timing|v_state~12_combout\);

-- Location: LCFF_X22_Y5_N9
\vga|vga_timing|v_state.DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|v_state~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|v_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_state.DATA~regout\);

-- Location: LCCOMB_X25_Y11_N0
\sprite_renderer|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~4_combout\ = \sprite_renderer|column\(0) $ (VCC)
-- \sprite_renderer|Add1~5\ = CARRY(\sprite_renderer|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(0),
	datad => VCC,
	combout => \sprite_renderer|Add1~4_combout\,
	cout => \sprite_renderer|Add1~5\);

-- Location: LCCOMB_X22_Y5_N10
\vga|vga_timing|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal6~2_combout\ = (\vga|vga_timing|v_counter\(1) & (\vga|vga_timing|Equal6~1_combout\ & (!\vga|vga_timing|v_counter\(2) & \vga|vga_timing|v_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(1),
	datab => \vga|vga_timing|Equal6~1_combout\,
	datac => \vga|vga_timing|v_counter\(2),
	datad => \vga|vga_timing|v_counter\(3),
	combout => \vga|vga_timing|Equal6~2_combout\);

-- Location: LCFF_X22_Y5_N11
\vga|vga_timing|v_state.SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Equal6~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|v_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|v_state.SYNC~regout\);

-- Location: LCCOMB_X22_Y12_N30
\sprite_renderer|Selector68~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector68~3_combout\ = ((\sprite_renderer|state.DRAWING~regout\) # ((\vga|vga_timing|v_state.SYNC~regout\ & \sprite_renderer|state.SHOWING~regout\))) # (!\sprite_renderer|state.CLEARING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.CLEARING~regout\,
	datab => \vga|vga_timing|v_state.SYNC~regout\,
	datac => \sprite_renderer|state.DRAWING~regout\,
	datad => \sprite_renderer|state.SHOWING~regout\,
	combout => \sprite_renderer|Selector68~3_combout\);

-- Location: LCCOMB_X22_Y12_N10
\sprite_renderer|Selector67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector67~0_combout\ = (!\sprite_renderer|Selector68~3_combout\ & ((\sprite_renderer|Selector68~2_combout\ & (\sprite_renderer|next_state.SHOWING~regout\)) # (!\sprite_renderer|Selector68~2_combout\ & 
-- ((\sprite_renderer|state.SHOWING~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|next_state.SHOWING~regout\,
	datab => \sprite_renderer|Selector68~2_combout\,
	datac => \sprite_renderer|state.SHOWING~regout\,
	datad => \sprite_renderer|Selector68~3_combout\,
	combout => \sprite_renderer|Selector67~0_combout\);

-- Location: LCFF_X22_Y12_N11
\sprite_renderer|state.SHOWING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector67~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|state.SHOWING~regout\);

-- Location: LCCOMB_X22_Y12_N22
\sprite_renderer|Selector68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector68~1_combout\ = (\vga|vga_timing|v_state.SYNC~regout\ & \sprite_renderer|state.SHOWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \sprite_renderer|state.SHOWING~regout\,
	combout => \sprite_renderer|Selector68~1_combout\);

-- Location: LCFF_X22_Y12_N23
\sprite_renderer|FB_FLIP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector68~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_FLIP~regout\);

-- Location: LCCOMB_X22_Y12_N14
\sprite_renderer|next_state.WAITING~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|next_state.WAITING~1_combout\ = (\sprite_renderer|state.WAITING~regout\) # (((!\vga|vga_timing|v_state.SYNC~regout\ & \sprite_renderer|state.SHOWING~regout\)) # (!\RESET_N~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.WAITING~regout\,
	datab => \RESET_N~regout\,
	datac => \vga|vga_timing|v_state.SYNC~regout\,
	datad => \sprite_renderer|state.SHOWING~regout\,
	combout => \sprite_renderer|next_state.WAITING~1_combout\);

-- Location: LCCOMB_X22_Y12_N8
\sprite_renderer|next_state.CLEARING~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|next_state.CLEARING~1_combout\ = (\sprite_renderer|next_state.WAITING~1_combout\ & (((\sprite_renderer|next_state.CLEARING~regout\)))) # (!\sprite_renderer|next_state.WAITING~1_combout\ & ((\sprite_renderer|state.SHOWING~regout\) # 
-- ((\sprite_renderer|next_state.CLEARING~0_combout\ & \sprite_renderer|next_state.CLEARING~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|next_state.CLEARING~0_combout\,
	datab => \sprite_renderer|next_state.WAITING~1_combout\,
	datac => \sprite_renderer|next_state.CLEARING~regout\,
	datad => \sprite_renderer|state.SHOWING~regout\,
	combout => \sprite_renderer|next_state.CLEARING~1_combout\);

-- Location: LCFF_X22_Y12_N9
\sprite_renderer|next_state.CLEARING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|next_state.CLEARING~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|next_state.CLEARING~regout\);

-- Location: LCCOMB_X22_Y12_N24
\sprite_renderer|state.CLEARING~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|state.CLEARING~0_combout\ = (\sprite_renderer|Selector68~3_combout\) # ((\sprite_renderer|Selector68~2_combout\ & (!\sprite_renderer|next_state.CLEARING~regout\)) # (!\sprite_renderer|Selector68~2_combout\ & 
-- ((\sprite_renderer|state.CLEARING~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Selector68~3_combout\,
	datab => \sprite_renderer|next_state.CLEARING~regout\,
	datac => \sprite_renderer|state.CLEARING~regout\,
	datad => \sprite_renderer|Selector68~2_combout\,
	combout => \sprite_renderer|state.CLEARING~0_combout\);

-- Location: LCFF_X22_Y12_N25
\sprite_renderer|state.CLEARING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|state.CLEARING~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|state.CLEARING~regout\);

-- Location: LCCOMB_X22_Y12_N0
\sprite_renderer|FB_CLEAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_CLEAR~0_combout\ = !\sprite_renderer|state.CLEARING~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|state.CLEARING~regout\,
	combout => \sprite_renderer|FB_CLEAR~0_combout\);

-- Location: LCFF_X22_Y12_N1
\sprite_renderer|FB_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_CLEAR~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_CLEAR~regout\);

-- Location: LCCOMB_X22_Y12_N12
\sprite_renderer|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector68~0_combout\ = (!\vga|state.IDLE~regout\ & (!\sprite_renderer|FB_DRAW_RECT~regout\ & !\sprite_renderer|FB_CLEAR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|state.IDLE~regout\,
	datac => \sprite_renderer|FB_DRAW_RECT~regout\,
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \sprite_renderer|Selector68~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\sprite_renderer|Selector68~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector68~2_combout\ = (\sprite_renderer|state.WAITING~regout\ & (!\sprite_renderer|FB_FLIP~regout\ & \sprite_renderer|Selector68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.WAITING~regout\,
	datab => \sprite_renderer|FB_FLIP~regout\,
	datad => \sprite_renderer|Selector68~0_combout\,
	combout => \sprite_renderer|Selector68~2_combout\);

-- Location: LCCOMB_X21_Y12_N0
\sprite_renderer|Selector66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector66~0_combout\ = (!\sprite_renderer|Selector68~3_combout\ & ((\sprite_renderer|Selector68~2_combout\ & (\sprite_renderer|next_state.DRAWING~regout\)) # (!\sprite_renderer|Selector68~2_combout\ & 
-- ((\sprite_renderer|state.DRAWING~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|next_state.DRAWING~regout\,
	datab => \sprite_renderer|Selector68~2_combout\,
	datac => \sprite_renderer|state.DRAWING~regout\,
	datad => \sprite_renderer|Selector68~3_combout\,
	combout => \sprite_renderer|Selector66~0_combout\);

-- Location: LCFF_X21_Y12_N1
\sprite_renderer|state.DRAWING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector66~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|state.DRAWING~regout\);

-- Location: LCCOMB_X25_Y12_N12
\sprite_renderer|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~6_combout\ = (\sprite_renderer|Add1~4_combout\ & (\sprite_renderer|state.DRAWING~regout\ & ((\sprite_renderer|LessThan0~9_combout\) # (\sprite_renderer|column\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan0~9_combout\,
	datab => \sprite_renderer|Add1~4_combout\,
	datac => \sprite_renderer|state.DRAWING~regout\,
	datad => \sprite_renderer|column\(31),
	combout => \sprite_renderer|Add1~6_combout\);

-- Location: LCFF_X21_Y12_N17
\sprite_renderer|READY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector64~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|READY~regout\);

-- Location: LCCOMB_X25_Y19_N24
\view|render_asap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|render_asap~0_combout\ = (\view|render_asap~regout\ & ((!\view|state.SHOW_SPRITES~regout\))) # (!\view|render_asap~regout\ & (\frame_time~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_time~regout\,
	datab => \view|state.SHOW_SPRITES~regout\,
	datac => \view|render_asap~regout\,
	combout => \view|render_asap~0_combout\);

-- Location: LCFF_X25_Y19_N25
\view|render_asap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|render_asap~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_asap~regout\);

-- Location: LCCOMB_X25_Y19_N4
\view|render_counter[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|render_counter[31]~1_combout\ = (!\view|render_asap~regout\ & \view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|render_asap~regout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|render_counter[31]~1_combout\);

-- Location: LCCOMB_X25_Y19_N30
\view|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector23~0_combout\ = (!\sprite_renderer|READY~regout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|READY~regout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Selector23~0_combout\);

-- Location: LCFF_X25_Y19_N31
\view|state.WAITING_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector23~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.WAITING_2~regout\);

-- Location: LCCOMB_X25_Y19_N18
\view|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector21~0_combout\ = (\view|render_counter[31]~1_combout\) # ((\view|next_state.RENDER~regout\ & (\sprite_renderer|READY~regout\ & \view|state.WAITING_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|next_state.RENDER~regout\,
	datab => \sprite_renderer|READY~regout\,
	datac => \view|render_counter[31]~1_combout\,
	datad => \view|state.WAITING_2~regout\,
	combout => \view|Selector21~0_combout\);

-- Location: LCFF_X25_Y19_N19
\view|state.SHOW_SPRITES\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector21~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.SHOW_SPRITES~regout\);

-- Location: LCCOMB_X25_Y19_N26
\view|Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector24~2_combout\ = (\view|state.SHOW_SPRITES~regout\ & ((!\view|render_asap~regout\))) # (!\view|state.SHOW_SPRITES~regout\ & (\view|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal6~0_combout\,
	datab => \view|state.SHOW_SPRITES~regout\,
	datac => \view|render_asap~regout\,
	combout => \view|Selector24~2_combout\);

-- Location: LCCOMB_X25_Y19_N12
\view|SHOW~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SHOW~0_combout\ = (\view|render_asap~regout\ & \view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|render_asap~regout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|SHOW~0_combout\);

-- Location: LCCOMB_X25_Y19_N28
\view|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector22~0_combout\ = (!\view|SHOW~0_combout\ & (((!\view|state.RENDER~regout\ & \view|state.WAITING~regout\)) # (!\sprite_renderer|READY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.RENDER~regout\,
	datab => \sprite_renderer|READY~regout\,
	datac => \view|state.WAITING~regout\,
	datad => \view|SHOW~0_combout\,
	combout => \view|Selector22~0_combout\);

-- Location: LCFF_X25_Y19_N29
\view|state.WAITING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector22~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.WAITING~regout\);

-- Location: LCCOMB_X25_Y19_N14
\view|render_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|render_counter~2_combout\ = (\view|state.WAITING~regout\ & !\view|state.WAITING_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.WAITING~regout\,
	datad => \view|state.WAITING_2~regout\,
	combout => \view|render_counter~2_combout\);

-- Location: LCFF_X25_Y19_N27
\view|next_state.RENDER\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector24~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|next_state.RENDER~regout\);

-- Location: LCCOMB_X25_Y19_N20
\view|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector20~0_combout\ = (\view|state.WAITING_2~regout\ & (\sprite_renderer|READY~regout\ & !\view|next_state.RENDER~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.WAITING_2~regout\,
	datab => \sprite_renderer|READY~regout\,
	datac => \view|next_state.RENDER~regout\,
	combout => \view|Selector20~0_combout\);

-- Location: LCFF_X25_Y19_N21
\view|state.RENDER\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector20~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|state.RENDER~regout\);

-- Location: LCFF_X21_Y12_N11
\view|DRAW_SPRITE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \view|state.RENDER~regout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|DRAW_SPRITE~regout\);

-- Location: LCCOMB_X21_Y12_N14
\sprite_renderer|show_asap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|show_asap~0_combout\ = (\sprite_renderer|show_asap~regout\ & (((\view|DRAW_SPRITE~regout\) # (!\sprite_renderer|state.IDLE~regout\)))) # (!\sprite_renderer|show_asap~regout\ & (\view|SHOW~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SHOW~regout\,
	datab => \view|DRAW_SPRITE~regout\,
	datac => \sprite_renderer|show_asap~regout\,
	datad => \sprite_renderer|state.IDLE~regout\,
	combout => \sprite_renderer|show_asap~0_combout\);

-- Location: LCFF_X21_Y12_N15
\sprite_renderer|show_asap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|show_asap~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|show_asap~regout\);

-- Location: LCCOMB_X21_Y12_N16
\sprite_renderer|Selector64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector64~0_combout\ = (!\view|DRAW_SPRITE~regout\ & (!\sprite_renderer|show_asap~regout\ & \sprite_renderer|state.IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|DRAW_SPRITE~regout\,
	datac => \sprite_renderer|show_asap~regout\,
	datad => \sprite_renderer|state.IDLE~regout\,
	combout => \sprite_renderer|Selector64~0_combout\);

-- Location: LCCOMB_X21_Y12_N28
\sprite_renderer|Selector64~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Selector64~1_combout\ = (!\sprite_renderer|Selector68~3_combout\ & ((\sprite_renderer|Selector68~2_combout\ & (!\sprite_renderer|next_state.IDLE~regout\)) # (!\sprite_renderer|Selector68~2_combout\ & 
-- ((\sprite_renderer|Selector64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|next_state.IDLE~regout\,
	datab => \sprite_renderer|Selector68~2_combout\,
	datac => \sprite_renderer|Selector64~0_combout\,
	datad => \sprite_renderer|Selector68~3_combout\,
	combout => \sprite_renderer|Selector64~1_combout\);

-- Location: LCFF_X21_Y12_N29
\sprite_renderer|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Selector64~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|state.IDLE~regout\);

-- Location: LCCOMB_X24_Y11_N4
\sprite_renderer|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~7_combout\ = (\sprite_renderer|state.DRAWING~regout\) # (\sprite_renderer|state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|state.DRAWING~regout\,
	datad => \sprite_renderer|state.IDLE~regout\,
	combout => \sprite_renderer|Add1~7_combout\);

-- Location: LCFF_X25_Y12_N13
\sprite_renderer|column[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(0));

-- Location: LCCOMB_X25_Y11_N2
\sprite_renderer|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~8_combout\ = (\sprite_renderer|column\(1) & (!\sprite_renderer|Add1~5\)) # (!\sprite_renderer|column\(1) & ((\sprite_renderer|Add1~5\) # (GND)))
-- \sprite_renderer|Add1~9\ = CARRY((!\sprite_renderer|Add1~5\) # (!\sprite_renderer|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(1),
	datad => VCC,
	cin => \sprite_renderer|Add1~5\,
	combout => \sprite_renderer|Add1~8_combout\,
	cout => \sprite_renderer|Add1~9\);

-- Location: LCCOMB_X25_Y12_N8
\sprite_renderer|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~10_combout\ = (\sprite_renderer|Add1~8_combout\ & ((\sprite_renderer|LessThan0~9_combout\) # (\sprite_renderer|column\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|Add1~8_combout\,
	datac => \sprite_renderer|LessThan0~9_combout\,
	datad => \sprite_renderer|column\(31),
	combout => \sprite_renderer|Add1~10_combout\);

-- Location: LCFF_X25_Y12_N9
\sprite_renderer|column[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(1));

-- Location: LCCOMB_X25_Y12_N14
\sprite_renderer|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~19_combout\ = (\sprite_renderer|Add1~11_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add1~11_combout\,
	datab => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~19_combout\);

-- Location: LCFF_X25_Y12_N15
\sprite_renderer|column[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~19_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(2));

-- Location: LCCOMB_X25_Y12_N2
\sprite_renderer|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~2_combout\ = (((!\sprite_renderer|column\(0)) # (!\sprite_renderer|column\(2))) # (!\sprite_renderer|column\(1))) # (!\sprite_renderer|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(3),
	datab => \sprite_renderer|column\(1),
	datac => \sprite_renderer|column\(2),
	datad => \sprite_renderer|column\(0),
	combout => \sprite_renderer|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y12_N4
\sprite_renderer|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~18_combout\ = (\sprite_renderer|Add1~16_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add1~16_combout\,
	datab => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~18_combout\);

-- Location: LCFF_X25_Y12_N5
\sprite_renderer|column[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(4));

-- Location: LCCOMB_X25_Y11_N6
\sprite_renderer|Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~13_combout\ = (\sprite_renderer|column\(3) & (!\sprite_renderer|Add1~12\)) # (!\sprite_renderer|column\(3) & ((\sprite_renderer|Add1~12\) # (GND)))
-- \sprite_renderer|Add1~14\ = CARRY((!\sprite_renderer|Add1~12\) # (!\sprite_renderer|column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(3),
	datad => VCC,
	cin => \sprite_renderer|Add1~12\,
	combout => \sprite_renderer|Add1~13_combout\,
	cout => \sprite_renderer|Add1~14\);

-- Location: LCCOMB_X25_Y11_N12
\sprite_renderer|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~22_combout\ = (\sprite_renderer|column\(6) & (\sprite_renderer|Add1~21\ $ (GND))) # (!\sprite_renderer|column\(6) & (!\sprite_renderer|Add1~21\ & VCC))
-- \sprite_renderer|Add1~23\ = CARRY((\sprite_renderer|column\(6) & !\sprite_renderer|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(6),
	datad => VCC,
	cin => \sprite_renderer|Add1~21\,
	combout => \sprite_renderer|Add1~22_combout\,
	cout => \sprite_renderer|Add1~23\);

-- Location: LCCOMB_X24_Y11_N28
\sprite_renderer|Add1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~33_combout\ = (\sprite_renderer|Add1~22_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~22_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~33_combout\);

-- Location: LCFF_X24_Y11_N29
\sprite_renderer|column[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~33_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(6));

-- Location: LCCOMB_X25_Y11_N14
\sprite_renderer|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~24_combout\ = (\sprite_renderer|column\(7) & (!\sprite_renderer|Add1~23\)) # (!\sprite_renderer|column\(7) & ((\sprite_renderer|Add1~23\) # (GND)))
-- \sprite_renderer|Add1~25\ = CARRY((!\sprite_renderer|Add1~23\) # (!\sprite_renderer|column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(7),
	datad => VCC,
	cin => \sprite_renderer|Add1~23\,
	combout => \sprite_renderer|Add1~24_combout\,
	cout => \sprite_renderer|Add1~25\);

-- Location: LCCOMB_X24_Y11_N2
\sprite_renderer|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~32_combout\ = (\sprite_renderer|Add1~24_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~24_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~32_combout\);

-- Location: LCFF_X24_Y11_N3
\sprite_renderer|column[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~32_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(7));

-- Location: LCCOMB_X25_Y11_N16
\sprite_renderer|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~26_combout\ = (\sprite_renderer|column\(8) & (\sprite_renderer|Add1~25\ $ (GND))) # (!\sprite_renderer|column\(8) & (!\sprite_renderer|Add1~25\ & VCC))
-- \sprite_renderer|Add1~27\ = CARRY((\sprite_renderer|column\(8) & !\sprite_renderer|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(8),
	datad => VCC,
	cin => \sprite_renderer|Add1~25\,
	combout => \sprite_renderer|Add1~26_combout\,
	cout => \sprite_renderer|Add1~27\);

-- Location: LCCOMB_X24_Y11_N0
\sprite_renderer|Add1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~31_combout\ = (\sprite_renderer|Add1~26_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~26_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~31_combout\);

-- Location: LCFF_X24_Y11_N1
\sprite_renderer|column[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~31_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(8));

-- Location: LCCOMB_X24_Y12_N30
\sprite_renderer|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~0_combout\ = (!\sprite_renderer|column\(5) & (!\sprite_renderer|column\(7) & (!\sprite_renderer|column\(6) & !\sprite_renderer|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(5),
	datab => \sprite_renderer|column\(7),
	datac => \sprite_renderer|column\(6),
	datad => \sprite_renderer|column\(8),
	combout => \sprite_renderer|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y12_N28
\sprite_renderer|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~3_combout\ = (\sprite_renderer|LessThan0~1_combout\ & (\sprite_renderer|LessThan0~0_combout\ & ((\sprite_renderer|LessThan0~2_combout\) # (!\sprite_renderer|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan0~1_combout\,
	datab => \sprite_renderer|LessThan0~2_combout\,
	datac => \sprite_renderer|LessThan0~0_combout\,
	datad => \sprite_renderer|column\(4),
	combout => \sprite_renderer|LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y12_N16
\sprite_renderer|Add1~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~97_combout\ = (\sprite_renderer|Add1~37_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add1~37_combout\,
	datab => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~97_combout\);

-- Location: LCFF_X25_Y12_N17
\sprite_renderer|column[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~97_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(11));

-- Location: LCCOMB_X25_Y10_N14
\sprite_renderer|Add1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~61_combout\ = (\sprite_renderer|column\(23) & (!\sprite_renderer|Add1~60\)) # (!\sprite_renderer|column\(23) & ((\sprite_renderer|Add1~60\) # (GND)))
-- \sprite_renderer|Add1~62\ = CARRY((!\sprite_renderer|Add1~60\) # (!\sprite_renderer|column\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(23),
	datad => VCC,
	cin => \sprite_renderer|Add1~60\,
	combout => \sprite_renderer|Add1~61_combout\,
	cout => \sprite_renderer|Add1~62\);

-- Location: LCCOMB_X24_Y10_N16
\sprite_renderer|Add1~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~85_combout\ = (\sprite_renderer|Add1~61_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~61_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~85_combout\);

-- Location: LCFF_X24_Y10_N17
\sprite_renderer|column[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~85_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(23));

-- Location: LCCOMB_X25_Y10_N8
\sprite_renderer|Add1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~55_combout\ = (\sprite_renderer|column\(20) & (\sprite_renderer|Add1~54\ $ (GND))) # (!\sprite_renderer|column\(20) & (!\sprite_renderer|Add1~54\ & VCC))
-- \sprite_renderer|Add1~56\ = CARRY((\sprite_renderer|column\(20) & !\sprite_renderer|Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(20),
	datad => VCC,
	cin => \sprite_renderer|Add1~54\,
	combout => \sprite_renderer|Add1~55_combout\,
	cout => \sprite_renderer|Add1~56\);

-- Location: LCCOMB_X24_Y10_N30
\sprite_renderer|Add1~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~88_combout\ = (\sprite_renderer|Add1~55_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~55_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~88_combout\);

-- Location: LCFF_X24_Y10_N31
\sprite_renderer|column[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~88_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(20));

-- Location: LCCOMB_X24_Y10_N26
\sprite_renderer|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~5_combout\ = (!\sprite_renderer|column\(22) & (!\sprite_renderer|column\(21) & (!\sprite_renderer|column\(23) & !\sprite_renderer|column\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(22),
	datab => \sprite_renderer|column\(21),
	datac => \sprite_renderer|column\(23),
	datad => \sprite_renderer|column\(20),
	combout => \sprite_renderer|LessThan0~5_combout\);

-- Location: LCCOMB_X24_Y10_N8
\sprite_renderer|Add1~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~89_combout\ = (\sprite_renderer|Add1~53_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add1~53_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~89_combout\);

-- Location: LCFF_X24_Y10_N9
\sprite_renderer|column[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~89_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(19));

-- Location: LCCOMB_X24_Y10_N2
\sprite_renderer|Add1~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~90_combout\ = (\sprite_renderer|Add1~51_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add1~51_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~90_combout\);

-- Location: LCFF_X24_Y10_N3
\sprite_renderer|column[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~90_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(18));

-- Location: LCCOMB_X24_Y10_N20
\sprite_renderer|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~6_combout\ = (!\sprite_renderer|column\(16) & (!\sprite_renderer|column\(17) & (!\sprite_renderer|column\(19) & !\sprite_renderer|column\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(16),
	datab => \sprite_renderer|column\(17),
	datac => \sprite_renderer|column\(19),
	datad => \sprite_renderer|column\(18),
	combout => \sprite_renderer|LessThan0~6_combout\);

-- Location: LCCOMB_X25_Y11_N18
\sprite_renderer|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~28_combout\ = (\sprite_renderer|column\(9) & (!\sprite_renderer|Add1~27\)) # (!\sprite_renderer|column\(9) & ((\sprite_renderer|Add1~27\) # (GND)))
-- \sprite_renderer|Add1~29\ = CARRY((!\sprite_renderer|Add1~27\) # (!\sprite_renderer|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(9),
	datad => VCC,
	cin => \sprite_renderer|Add1~27\,
	combout => \sprite_renderer|Add1~28_combout\,
	cout => \sprite_renderer|Add1~29\);

-- Location: LCCOMB_X25_Y11_N20
\sprite_renderer|Add1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~35_combout\ = (\sprite_renderer|column\(10) & (\sprite_renderer|Add1~29\ $ (GND))) # (!\sprite_renderer|column\(10) & (!\sprite_renderer|Add1~29\ & VCC))
-- \sprite_renderer|Add1~36\ = CARRY((\sprite_renderer|column\(10) & !\sprite_renderer|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(10),
	datad => VCC,
	cin => \sprite_renderer|Add1~29\,
	combout => \sprite_renderer|Add1~35_combout\,
	cout => \sprite_renderer|Add1~36\);

-- Location: LCCOMB_X25_Y12_N18
\sprite_renderer|Add1~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~98_combout\ = (\sprite_renderer|Add1~35_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~35_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~98_combout\);

-- Location: LCFF_X25_Y12_N19
\sprite_renderer|column[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~98_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(10));

-- Location: LCCOMB_X25_Y11_N24
\sprite_renderer|Add1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~39_combout\ = (\sprite_renderer|column\(12) & (\sprite_renderer|Add1~38\ $ (GND))) # (!\sprite_renderer|column\(12) & (!\sprite_renderer|Add1~38\ & VCC))
-- \sprite_renderer|Add1~40\ = CARRY((\sprite_renderer|column\(12) & !\sprite_renderer|Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(12),
	datad => VCC,
	cin => \sprite_renderer|Add1~38\,
	combout => \sprite_renderer|Add1~39_combout\,
	cout => \sprite_renderer|Add1~40\);

-- Location: LCCOMB_X24_Y11_N22
\sprite_renderer|Add1~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~96_combout\ = (\sprite_renderer|Add1~39_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|Add1~39_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~96_combout\);

-- Location: LCFF_X24_Y11_N23
\sprite_renderer|column[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~96_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(12));

-- Location: LCCOMB_X25_Y11_N28
\sprite_renderer|Add1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~43_combout\ = (\sprite_renderer|column\(14) & (\sprite_renderer|Add1~42\ $ (GND))) # (!\sprite_renderer|column\(14) & (!\sprite_renderer|Add1~42\ & VCC))
-- \sprite_renderer|Add1~44\ = CARRY((\sprite_renderer|column\(14) & !\sprite_renderer|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(14),
	datad => VCC,
	cin => \sprite_renderer|Add1~42\,
	combout => \sprite_renderer|Add1~43_combout\,
	cout => \sprite_renderer|Add1~44\);

-- Location: LCCOMB_X24_Y11_N26
\sprite_renderer|Add1~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~94_combout\ = (\sprite_renderer|Add1~43_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|Add1~43_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~94_combout\);

-- Location: LCFF_X24_Y11_N27
\sprite_renderer|column[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~94_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(14));

-- Location: LCCOMB_X25_Y11_N30
\sprite_renderer|Add1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~45_combout\ = (\sprite_renderer|column\(15) & (!\sprite_renderer|Add1~44\)) # (!\sprite_renderer|column\(15) & ((\sprite_renderer|Add1~44\) # (GND)))
-- \sprite_renderer|Add1~46\ = CARRY((!\sprite_renderer|Add1~44\) # (!\sprite_renderer|column\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(15),
	datad => VCC,
	cin => \sprite_renderer|Add1~44\,
	combout => \sprite_renderer|Add1~45_combout\,
	cout => \sprite_renderer|Add1~46\);

-- Location: LCCOMB_X24_Y11_N24
\sprite_renderer|Add1~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~93_combout\ = (\sprite_renderer|Add1~45_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|Add1~45_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~93_combout\);

-- Location: LCFF_X24_Y11_N25
\sprite_renderer|column[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~93_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(15));

-- Location: LCCOMB_X24_Y11_N18
\sprite_renderer|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~7_combout\ = (!\sprite_renderer|column\(13) & (!\sprite_renderer|column\(12) & (!\sprite_renderer|column\(15) & !\sprite_renderer|column\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(13),
	datab => \sprite_renderer|column\(12),
	datac => \sprite_renderer|column\(15),
	datad => \sprite_renderer|column\(14),
	combout => \sprite_renderer|LessThan0~7_combout\);

-- Location: LCCOMB_X24_Y10_N22
\sprite_renderer|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~8_combout\ = (\sprite_renderer|LessThan0~4_combout\ & (\sprite_renderer|LessThan0~5_combout\ & (\sprite_renderer|LessThan0~6_combout\ & \sprite_renderer|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan0~4_combout\,
	datab => \sprite_renderer|LessThan0~5_combout\,
	datac => \sprite_renderer|LessThan0~6_combout\,
	datad => \sprite_renderer|LessThan0~7_combout\,
	combout => \sprite_renderer|LessThan0~8_combout\);

-- Location: LCCOMB_X25_Y12_N22
\sprite_renderer|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan0~9_combout\ = (!\sprite_renderer|column\(10) & (\sprite_renderer|LessThan0~3_combout\ & (!\sprite_renderer|column\(11) & \sprite_renderer|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(10),
	datab => \sprite_renderer|LessThan0~3_combout\,
	datac => \sprite_renderer|column\(11),
	datad => \sprite_renderer|LessThan0~8_combout\,
	combout => \sprite_renderer|LessThan0~9_combout\);

-- Location: LCCOMB_X24_Y10_N4
\sprite_renderer|Add1~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~91_combout\ = (\sprite_renderer|Add1~49_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add1~49_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~91_combout\);

-- Location: LCFF_X24_Y10_N5
\sprite_renderer|column[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~91_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(17));

-- Location: LCCOMB_X25_Y10_N0
\sprite_renderer|Add1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~47_combout\ = (\sprite_renderer|column\(16) & (\sprite_renderer|Add1~46\ $ (GND))) # (!\sprite_renderer|column\(16) & (!\sprite_renderer|Add1~46\ & VCC))
-- \sprite_renderer|Add1~48\ = CARRY((\sprite_renderer|column\(16) & !\sprite_renderer|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(16),
	datad => VCC,
	cin => \sprite_renderer|Add1~46\,
	combout => \sprite_renderer|Add1~47_combout\,
	cout => \sprite_renderer|Add1~48\);

-- Location: LCCOMB_X24_Y10_N6
\sprite_renderer|Add1~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~92_combout\ = (\sprite_renderer|Add1~47_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~47_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~92_combout\);

-- Location: LCFF_X24_Y10_N7
\sprite_renderer|column[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~92_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(16));

-- Location: LCCOMB_X25_Y10_N10
\sprite_renderer|Add1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~57_combout\ = (\sprite_renderer|column\(21) & (!\sprite_renderer|Add1~56\)) # (!\sprite_renderer|column\(21) & ((\sprite_renderer|Add1~56\) # (GND)))
-- \sprite_renderer|Add1~58\ = CARRY((!\sprite_renderer|Add1~56\) # (!\sprite_renderer|column\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(21),
	datad => VCC,
	cin => \sprite_renderer|Add1~56\,
	combout => \sprite_renderer|Add1~57_combout\,
	cout => \sprite_renderer|Add1~58\);

-- Location: LCCOMB_X24_Y10_N28
\sprite_renderer|Add1~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~87_combout\ = (\sprite_renderer|Add1~57_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~57_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~87_combout\);

-- Location: LCFF_X24_Y10_N29
\sprite_renderer|column[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~87_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(21));

-- Location: LCCOMB_X25_Y10_N20
\sprite_renderer|Add1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~67_combout\ = (\sprite_renderer|column\(26) & (\sprite_renderer|Add1~66\ $ (GND))) # (!\sprite_renderer|column\(26) & (!\sprite_renderer|Add1~66\ & VCC))
-- \sprite_renderer|Add1~68\ = CARRY((\sprite_renderer|column\(26) & !\sprite_renderer|Add1~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(26),
	datad => VCC,
	cin => \sprite_renderer|Add1~66\,
	combout => \sprite_renderer|Add1~67_combout\,
	cout => \sprite_renderer|Add1~68\);

-- Location: LCCOMB_X24_Y10_N18
\sprite_renderer|Add1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~82_combout\ = (\sprite_renderer|Add1~67_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|Add1~67_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~82_combout\);

-- Location: LCFF_X24_Y10_N19
\sprite_renderer|column[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~82_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(26));

-- Location: LCCOMB_X25_Y10_N26
\sprite_renderer|Add1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~73_combout\ = (\sprite_renderer|column\(29) & (!\sprite_renderer|Add1~72\)) # (!\sprite_renderer|column\(29) & ((\sprite_renderer|Add1~72\) # (GND)))
-- \sprite_renderer|Add1~74\ = CARRY((!\sprite_renderer|Add1~72\) # (!\sprite_renderer|column\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(29),
	datad => VCC,
	cin => \sprite_renderer|Add1~72\,
	combout => \sprite_renderer|Add1~73_combout\,
	cout => \sprite_renderer|Add1~74\);

-- Location: LCCOMB_X25_Y12_N20
\sprite_renderer|Add1~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~79_combout\ = (\sprite_renderer|Add1~73_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~73_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~79_combout\);

-- Location: LCFF_X25_Y12_N21
\sprite_renderer|column[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~79_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(29));

-- Location: LCCOMB_X25_Y10_N30
\sprite_renderer|Add1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~77_combout\ = \sprite_renderer|Add1~76\ $ (\sprite_renderer|column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sprite_renderer|column\(31),
	cin => \sprite_renderer|Add1~76\,
	combout => \sprite_renderer|Add1~77_combout\);

-- Location: LCCOMB_X24_Y11_N16
\sprite_renderer|Add1~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~99_combout\ = (\sprite_renderer|state.DRAWING~regout\ & (\sprite_renderer|Add1~77_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.DRAWING~regout\,
	datab => \sprite_renderer|Add1~77_combout\,
	datac => \sprite_renderer|column\(31),
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~99_combout\);

-- Location: LCFF_X24_Y11_N17
\sprite_renderer|column[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~99_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(31));

-- Location: LCCOMB_X25_Y12_N10
\sprite_renderer|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~15_combout\ = (\sprite_renderer|Add1~13_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~13_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~15_combout\);

-- Location: LCFF_X25_Y12_N11
\sprite_renderer|column[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(3));

-- Location: LCCOMB_X31_Y18_N0
\view|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~0_combout\ = \view|render_counter\(0) $ (VCC)
-- \view|Add2~1\ = CARRY(\view|render_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(0),
	datad => VCC,
	combout => \view|Add2~0_combout\,
	cout => \view|Add2~1\);

-- Location: LCCOMB_X30_Y18_N28
\view|Add2~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~95_combout\ = (\view|Add2~0_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~0_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~95_combout\);

-- Location: LCCOMB_X25_Y19_N22
\view|render_counter[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|render_counter[31]~0_combout\ = (!\view|state.WAITING_2~regout\ & (\view|state.WAITING~regout\ & ((\view|render_asap~regout\) # (!\view|state.SHOW_SPRITES~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.WAITING_2~regout\,
	datab => \view|state.WAITING~regout\,
	datac => \view|render_asap~regout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|render_counter[31]~0_combout\);

-- Location: LCFF_X30_Y18_N29
\view|render_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~95_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(0));

-- Location: LCCOMB_X31_Y18_N2
\view|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~2_combout\ = (\view|render_counter\(1) & (!\view|Add2~1\)) # (!\view|render_counter\(1) & ((\view|Add2~1\) # (GND)))
-- \view|Add2~3\ = CARRY((!\view|Add2~1\) # (!\view|render_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datad => VCC,
	cin => \view|Add2~1\,
	combout => \view|Add2~2_combout\,
	cout => \view|Add2~3\);

-- Location: LCCOMB_X31_Y18_N4
\view|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~4_combout\ = (\view|render_counter\(2) & (\view|Add2~3\ $ (GND))) # (!\view|render_counter\(2) & (!\view|Add2~3\ & VCC))
-- \view|Add2~5\ = CARRY((\view|render_counter\(2) & !\view|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(2),
	datad => VCC,
	cin => \view|Add2~3\,
	combout => \view|Add2~4_combout\,
	cout => \view|Add2~5\);

-- Location: LCCOMB_X30_Y18_N24
\view|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~6_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~4_combout\,
	combout => \view|Add2~6_combout\);

-- Location: LCFF_X30_Y18_N25
\view|render_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(2));

-- Location: LCCOMB_X31_Y18_N10
\view|Add2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~11_combout\ = (\view|render_counter\(5) & (!\view|Add2~10\)) # (!\view|render_counter\(5) & ((\view|Add2~10\) # (GND)))
-- \view|Add2~12\ = CARRY((!\view|Add2~10\) # (!\view|render_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(5),
	datad => VCC,
	cin => \view|Add2~10\,
	combout => \view|Add2~11_combout\,
	cout => \view|Add2~12\);

-- Location: LCCOMB_X30_Y18_N22
\view|Add2~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~91_combout\ = (\view|Add2~11_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~11_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~91_combout\);

-- Location: LCFF_X30_Y18_N23
\view|render_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~91_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(5));

-- Location: LCCOMB_X31_Y18_N12
\view|Add2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~13_combout\ = (\view|render_counter\(6) & (\view|Add2~12\ $ (GND))) # (!\view|render_counter\(6) & (!\view|Add2~12\ & VCC))
-- \view|Add2~14\ = CARRY((\view|render_counter\(6) & !\view|Add2~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(6),
	datad => VCC,
	cin => \view|Add2~12\,
	combout => \view|Add2~13_combout\,
	cout => \view|Add2~14\);

-- Location: LCCOMB_X30_Y18_N4
\view|Add2~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~90_combout\ = (\view|Add2~13_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~13_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~90_combout\);

-- Location: LCFF_X30_Y18_N5
\view|render_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~90_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(6));

-- Location: LCCOMB_X31_Y18_N14
\view|Add2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~15_combout\ = (\view|render_counter\(7) & (!\view|Add2~14\)) # (!\view|render_counter\(7) & ((\view|Add2~14\) # (GND)))
-- \view|Add2~16\ = CARRY((!\view|Add2~14\) # (!\view|render_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(7),
	datad => VCC,
	cin => \view|Add2~14\,
	combout => \view|Add2~15_combout\,
	cout => \view|Add2~16\);

-- Location: LCCOMB_X30_Y18_N18
\view|Add2~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~89_combout\ = (\view|Add2~15_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~15_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~89_combout\);

-- Location: LCFF_X30_Y18_N19
\view|render_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~89_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(7));

-- Location: LCCOMB_X31_Y18_N18
\view|Add2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~19_combout\ = (\view|render_counter\(9) & (!\view|Add2~18\)) # (!\view|render_counter\(9) & ((\view|Add2~18\) # (GND)))
-- \view|Add2~20\ = CARRY((!\view|Add2~18\) # (!\view|render_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(9),
	datad => VCC,
	cin => \view|Add2~18\,
	combout => \view|Add2~19_combout\,
	cout => \view|Add2~20\);

-- Location: LCCOMB_X32_Y18_N24
\view|Add2~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~87_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~19_combout\,
	combout => \view|Add2~87_combout\);

-- Location: LCFF_X32_Y18_N25
\view|render_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~87_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(9));

-- Location: LCCOMB_X31_Y18_N20
\view|Add2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~21_combout\ = (\view|render_counter\(10) & (\view|Add2~20\ $ (GND))) # (!\view|render_counter\(10) & (!\view|Add2~20\ & VCC))
-- \view|Add2~22\ = CARRY((\view|render_counter\(10) & !\view|Add2~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(10),
	datad => VCC,
	cin => \view|Add2~20\,
	combout => \view|Add2~21_combout\,
	cout => \view|Add2~22\);

-- Location: LCCOMB_X32_Y18_N22
\view|Add2~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~86_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.SHOW_SPRITES~regout\,
	datac => \view|Add2~21_combout\,
	combout => \view|Add2~86_combout\);

-- Location: LCFF_X32_Y18_N23
\view|render_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~86_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(10));

-- Location: LCCOMB_X31_Y18_N22
\view|Add2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~23_combout\ = (\view|render_counter\(11) & (!\view|Add2~22\)) # (!\view|render_counter\(11) & ((\view|Add2~22\) # (GND)))
-- \view|Add2~24\ = CARRY((!\view|Add2~22\) # (!\view|render_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(11),
	datad => VCC,
	cin => \view|Add2~22\,
	combout => \view|Add2~23_combout\,
	cout => \view|Add2~24\);

-- Location: LCCOMB_X32_Y18_N28
\view|Add2~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~85_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~23_combout\,
	combout => \view|Add2~85_combout\);

-- Location: LCFF_X32_Y18_N29
\view|render_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~85_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(11));

-- Location: LCCOMB_X32_Y18_N4
\view|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~6_combout\ = (!\view|render_counter\(8) & (!\view|render_counter\(11) & (!\view|render_counter\(9) & !\view|render_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(8),
	datab => \view|render_counter\(11),
	datac => \view|render_counter\(9),
	datad => \view|render_counter\(10),
	combout => \view|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y18_N6
\view|Add2~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~80_combout\ = (\view|Add2~33_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~33_combout\,
	datac => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~80_combout\);

-- Location: LCFF_X32_Y18_N7
\view|render_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~80_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(16));

-- Location: LCCOMB_X31_Y18_N24
\view|Add2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~25_combout\ = (\view|render_counter\(12) & (\view|Add2~24\ $ (GND))) # (!\view|render_counter\(12) & (!\view|Add2~24\ & VCC))
-- \view|Add2~26\ = CARRY((\view|render_counter\(12) & !\view|Add2~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(12),
	datad => VCC,
	cin => \view|Add2~24\,
	combout => \view|Add2~25_combout\,
	cout => \view|Add2~26\);

-- Location: LCCOMB_X32_Y18_N0
\view|Add2~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~84_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~25_combout\,
	combout => \view|Add2~84_combout\);

-- Location: LCFF_X32_Y18_N1
\view|render_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~84_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(12));

-- Location: LCCOMB_X31_Y18_N26
\view|Add2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~27_combout\ = (\view|render_counter\(13) & (!\view|Add2~26\)) # (!\view|render_counter\(13) & ((\view|Add2~26\) # (GND)))
-- \view|Add2~28\ = CARRY((!\view|Add2~26\) # (!\view|render_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(13),
	datad => VCC,
	cin => \view|Add2~26\,
	combout => \view|Add2~27_combout\,
	cout => \view|Add2~28\);

-- Location: LCCOMB_X32_Y18_N14
\view|Add2~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~83_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~27_combout\,
	combout => \view|Add2~83_combout\);

-- Location: LCFF_X32_Y18_N15
\view|render_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~83_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(13));

-- Location: LCCOMB_X31_Y18_N28
\view|Add2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~29_combout\ = (\view|render_counter\(14) & (\view|Add2~28\ $ (GND))) # (!\view|render_counter\(14) & (!\view|Add2~28\ & VCC))
-- \view|Add2~30\ = CARRY((\view|render_counter\(14) & !\view|Add2~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(14),
	datad => VCC,
	cin => \view|Add2~28\,
	combout => \view|Add2~29_combout\,
	cout => \view|Add2~30\);

-- Location: LCCOMB_X32_Y18_N12
\view|Add2~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~82_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~29_combout\,
	combout => \view|Add2~82_combout\);

-- Location: LCFF_X32_Y18_N13
\view|render_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~82_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(14));

-- Location: LCCOMB_X31_Y18_N30
\view|Add2~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~31_combout\ = (\view|render_counter\(15) & (!\view|Add2~30\)) # (!\view|render_counter\(15) & ((\view|Add2~30\) # (GND)))
-- \view|Add2~32\ = CARRY((!\view|Add2~30\) # (!\view|render_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(15),
	datad => VCC,
	cin => \view|Add2~30\,
	combout => \view|Add2~31_combout\,
	cout => \view|Add2~32\);

-- Location: LCCOMB_X32_Y18_N10
\view|Add2~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~81_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|state.SHOW_SPRITES~regout\,
	datac => \view|Add2~31_combout\,
	combout => \view|Add2~81_combout\);

-- Location: LCFF_X32_Y18_N11
\view|render_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~81_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(15));

-- Location: LCCOMB_X31_Y17_N4
\view|Add2~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~37_combout\ = (\view|render_counter\(18) & (\view|Add2~36\ $ (GND))) # (!\view|render_counter\(18) & (!\view|Add2~36\ & VCC))
-- \view|Add2~38\ = CARRY((\view|render_counter\(18) & !\view|Add2~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(18),
	datad => VCC,
	cin => \view|Add2~36\,
	combout => \view|Add2~37_combout\,
	cout => \view|Add2~38\);

-- Location: LCCOMB_X32_Y18_N18
\view|Add2~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~78_combout\ = (\view|Add2~37_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Add2~37_combout\,
	datac => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~78_combout\);

-- Location: LCFF_X32_Y18_N19
\view|render_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~78_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(18));

-- Location: LCCOMB_X31_Y17_N6
\view|Add2~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~39_combout\ = (\view|render_counter\(19) & (!\view|Add2~38\)) # (!\view|render_counter\(19) & ((\view|Add2~38\) # (GND)))
-- \view|Add2~40\ = CARRY((!\view|Add2~38\) # (!\view|render_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(19),
	datad => VCC,
	cin => \view|Add2~38\,
	combout => \view|Add2~39_combout\,
	cout => \view|Add2~40\);

-- Location: LCCOMB_X32_Y18_N16
\view|Add2~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~77_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~39_combout\,
	combout => \view|Add2~77_combout\);

-- Location: LCFF_X32_Y18_N17
\view|render_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~77_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(19));

-- Location: LCCOMB_X31_Y17_N8
\view|Add2~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~41_combout\ = (\view|render_counter\(20) & (\view|Add2~40\ $ (GND))) # (!\view|render_counter\(20) & (!\view|Add2~40\ & VCC))
-- \view|Add2~42\ = CARRY((\view|render_counter\(20) & !\view|Add2~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(20),
	datad => VCC,
	cin => \view|Add2~40\,
	combout => \view|Add2~41_combout\,
	cout => \view|Add2~42\);

-- Location: LCCOMB_X30_Y17_N18
\view|Add2~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~76_combout\ = (\view|Add2~41_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~41_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~76_combout\);

-- Location: LCFF_X30_Y17_N19
\view|render_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~76_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(20));

-- Location: LCCOMB_X31_Y17_N10
\view|Add2~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~43_combout\ = (\view|render_counter\(21) & (!\view|Add2~42\)) # (!\view|render_counter\(21) & ((\view|Add2~42\) # (GND)))
-- \view|Add2~44\ = CARRY((!\view|Add2~42\) # (!\view|render_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(21),
	datad => VCC,
	cin => \view|Add2~42\,
	combout => \view|Add2~43_combout\,
	cout => \view|Add2~44\);

-- Location: LCCOMB_X31_Y17_N12
\view|Add2~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~45_combout\ = (\view|render_counter\(22) & (\view|Add2~44\ $ (GND))) # (!\view|render_counter\(22) & (!\view|Add2~44\ & VCC))
-- \view|Add2~46\ = CARRY((\view|render_counter\(22) & !\view|Add2~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(22),
	datad => VCC,
	cin => \view|Add2~44\,
	combout => \view|Add2~45_combout\,
	cout => \view|Add2~46\);

-- Location: LCCOMB_X30_Y17_N22
\view|Add2~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~74_combout\ = (\view|Add2~45_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~45_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~74_combout\);

-- Location: LCFF_X30_Y17_N23
\view|render_counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~74_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(22));

-- Location: LCCOMB_X31_Y17_N14
\view|Add2~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~47_combout\ = (\view|render_counter\(23) & (!\view|Add2~46\)) # (!\view|render_counter\(23) & ((\view|Add2~46\) # (GND)))
-- \view|Add2~48\ = CARRY((!\view|Add2~46\) # (!\view|render_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|render_counter\(23),
	datad => VCC,
	cin => \view|Add2~46\,
	combout => \view|Add2~47_combout\,
	cout => \view|Add2~48\);

-- Location: LCCOMB_X30_Y17_N4
\view|Add2~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~73_combout\ = (\view|Add2~47_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~47_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~73_combout\);

-- Location: LCFF_X30_Y17_N5
\view|render_counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~73_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(23));

-- Location: LCCOMB_X31_Y17_N16
\view|Add2~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~49_combout\ = (\view|render_counter\(24) & (\view|Add2~48\ $ (GND))) # (!\view|render_counter\(24) & (!\view|Add2~48\ & VCC))
-- \view|Add2~50\ = CARRY((\view|render_counter\(24) & !\view|Add2~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(24),
	datad => VCC,
	cin => \view|Add2~48\,
	combout => \view|Add2~49_combout\,
	cout => \view|Add2~50\);

-- Location: LCCOMB_X30_Y17_N30
\view|Add2~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~71_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~51_combout\,
	combout => \view|Add2~71_combout\);

-- Location: LCFF_X30_Y17_N31
\view|render_counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~71_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(25));

-- Location: LCCOMB_X30_Y17_N16
\view|Add2~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~72_combout\ = (\view|Add2~49_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~49_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~72_combout\);

-- Location: LCFF_X30_Y17_N17
\view|render_counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~72_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(24));

-- Location: LCCOMB_X30_Y17_N10
\view|Add2~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~69_combout\ = (\view|Add2~55_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add2~55_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~69_combout\);

-- Location: LCFF_X30_Y17_N11
\view|render_counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~69_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(27));

-- Location: LCCOMB_X30_Y17_N26
\view|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~1_combout\ = (!\view|render_counter\(26) & (!\view|render_counter\(25) & (!\view|render_counter\(24) & !\view|render_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(26),
	datab => \view|render_counter\(25),
	datac => \view|render_counter\(24),
	datad => \view|render_counter\(27),
	combout => \view|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y17_N0
\view|Add2~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~75_combout\ = (\view|Add2~43_combout\ & !\view|state.SHOW_SPRITES~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|Add2~43_combout\,
	datad => \view|state.SHOW_SPRITES~regout\,
	combout => \view|Add2~75_combout\);

-- Location: LCFF_X30_Y17_N1
\view|render_counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~75_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(21));

-- Location: LCCOMB_X30_Y17_N20
\view|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~2_combout\ = (!\view|render_counter\(22) & (!\view|render_counter\(21) & (!\view|render_counter\(23) & !\view|render_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(22),
	datab => \view|render_counter\(21),
	datac => \view|render_counter\(23),
	datad => \view|render_counter\(20),
	combout => \view|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y18_N8
\view|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~3_combout\ = (!\view|render_counter\(17) & (!\view|render_counter\(18) & (!\view|render_counter\(19) & !\view|render_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(17),
	datab => \view|render_counter\(18),
	datac => \view|render_counter\(19),
	datad => \view|render_counter\(16),
	combout => \view|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y17_N14
\view|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~4_combout\ = (\view|Equal0~0_combout\ & (\view|Equal0~1_combout\ & (\view|Equal0~2_combout\ & \view|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal0~0_combout\,
	datab => \view|Equal0~1_combout\,
	datac => \view|Equal0~2_combout\,
	datad => \view|Equal0~3_combout\,
	combout => \view|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y18_N26
\view|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~5_combout\ = (!\view|render_counter\(14) & (!\view|render_counter\(12) & (!\view|render_counter\(13) & !\view|render_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(14),
	datab => \view|render_counter\(12),
	datac => \view|render_counter\(13),
	datad => \view|render_counter\(15),
	combout => \view|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y18_N8
\view|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~9_combout\ = (\view|Equal0~8_combout\ & (\view|Equal0~6_combout\ & (\view|Equal0~4_combout\ & \view|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal0~8_combout\,
	datab => \view|Equal0~6_combout\,
	datac => \view|Equal0~4_combout\,
	datad => \view|Equal0~5_combout\,
	combout => \view|Equal0~9_combout\);

-- Location: LCCOMB_X26_Y18_N18
\view|SPRITE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE~0_combout\ = (!\view|render_counter\(2) & (\view|state.RENDER~regout\ & (\view|Equal0~9_combout\ & \view|render_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(2),
	datab => \view|state.RENDER~regout\,
	datac => \view|Equal0~9_combout\,
	datad => \view|render_counter\(0),
	combout => \view|SPRITE~0_combout\);

-- Location: LCFF_X26_Y18_N19
\view|SPRITE.img_pixels[3][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE.img_pixels[3][10]~regout\);

-- Location: LCCOMB_X26_Y12_N24
\sprite_renderer|sprite_to_draw.color[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_to_draw.color[6]~1_combout\ = !\view|SPRITE.img_pixels[3][10]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE.img_pixels[3][10]~regout\,
	combout => \sprite_renderer|sprite_to_draw.color[6]~1_combout\);

-- Location: LCCOMB_X21_Y12_N6
\sprite_renderer|sprite_to_draw.color[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_to_draw.color[6]~0_combout\ = (\RESET_N~regout\ & (\view|DRAW_SPRITE~regout\ & \sprite_renderer|state.IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~regout\,
	datac => \view|DRAW_SPRITE~regout\,
	datad => \sprite_renderer|state.IDLE~regout\,
	combout => \sprite_renderer|sprite_to_draw.color[6]~0_combout\);

-- Location: LCFF_X26_Y12_N25
\sprite_renderer|sprite_to_draw.color[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_to_draw.color[6]~1_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_to_draw.color\(6));

-- Location: LCCOMB_X25_Y12_N6
\sprite_renderer|FB_X0[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[1]~13_combout\ = (\sprite_renderer|column\(4) & (\sprite_renderer|column\(2) & \sprite_renderer|sprite_to_draw.color\(6))) # (!\sprite_renderer|column\(4) & ((\sprite_renderer|column\(2)) # 
-- (\sprite_renderer|sprite_to_draw.color\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(4),
	datac => \sprite_renderer|column\(2),
	datad => \sprite_renderer|sprite_to_draw.color\(6),
	combout => \sprite_renderer|FB_X0[1]~13_combout\);

-- Location: LCCOMB_X22_Y12_N4
\sprite_renderer|FB_X0[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[1]~14_combout\ = (\sprite_renderer|column\(3) & (!\sprite_renderer|column\(4) & ((\sprite_renderer|column\(1)) # (\sprite_renderer|FB_X0[1]~13_combout\)))) # (!\sprite_renderer|column\(3) & (\sprite_renderer|column\(4) & 
-- ((!\sprite_renderer|FB_X0[1]~13_combout\) # (!\sprite_renderer|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(1),
	datab => \sprite_renderer|column\(3),
	datac => \sprite_renderer|column\(4),
	datad => \sprite_renderer|FB_X0[1]~13_combout\,
	combout => \sprite_renderer|FB_X0[1]~14_combout\);

-- Location: LCCOMB_X23_Y14_N4
\sprite_renderer|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~11_combout\ = (\sprite_renderer|Add0~2_combout\ & \sprite_renderer|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add0~2_combout\,
	datac => \sprite_renderer|LessThan1~10_combout\,
	combout => \sprite_renderer|Add0~11_combout\);

-- Location: LCCOMB_X24_Y11_N6
\sprite_renderer|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~9_combout\ = (\sprite_renderer|state.DRAWING~regout\ & (!\sprite_renderer|column\(31) & ((!\sprite_renderer|LessThan0~9_combout\)))) # (!\sprite_renderer|state.DRAWING~regout\ & (((\sprite_renderer|state.IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(31),
	datab => \sprite_renderer|state.IDLE~regout\,
	datac => \sprite_renderer|state.DRAWING~regout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add0~9_combout\);

-- Location: LCFF_X23_Y14_N5
\sprite_renderer|row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(1));

-- Location: LCCOMB_X22_Y15_N0
\sprite_renderer|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~0_combout\ = \sprite_renderer|row\(0) $ (VCC)
-- \sprite_renderer|Add0~1\ = CARRY(\sprite_renderer|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(0),
	datad => VCC,
	combout => \sprite_renderer|Add0~0_combout\,
	cout => \sprite_renderer|Add0~1\);

-- Location: LCCOMB_X22_Y15_N4
\sprite_renderer|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~4_combout\ = (\sprite_renderer|row\(2) & (\sprite_renderer|Add0~3\ $ (GND))) # (!\sprite_renderer|row\(2) & (!\sprite_renderer|Add0~3\ & VCC))
-- \sprite_renderer|Add0~5\ = CARRY((\sprite_renderer|row\(2) & !\sprite_renderer|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(2),
	datad => VCC,
	cin => \sprite_renderer|Add0~3\,
	combout => \sprite_renderer|Add0~4_combout\,
	cout => \sprite_renderer|Add0~5\);

-- Location: LCCOMB_X23_Y14_N2
\sprite_renderer|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~10_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~4_combout\,
	combout => \sprite_renderer|Add0~10_combout\);

-- Location: LCFF_X23_Y14_N3
\sprite_renderer|row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(2));

-- Location: LCCOMB_X22_Y15_N6
\sprite_renderer|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~6_combout\ = (\sprite_renderer|row\(3) & (!\sprite_renderer|Add0~5\)) # (!\sprite_renderer|row\(3) & ((\sprite_renderer|Add0~5\) # (GND)))
-- \sprite_renderer|Add0~7\ = CARRY((!\sprite_renderer|Add0~5\) # (!\sprite_renderer|row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(3),
	datad => VCC,
	cin => \sprite_renderer|Add0~5\,
	combout => \sprite_renderer|Add0~6_combout\,
	cout => \sprite_renderer|Add0~7\);

-- Location: LCCOMB_X23_Y14_N0
\sprite_renderer|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~8_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~6_combout\,
	combout => \sprite_renderer|Add0~8_combout\);

-- Location: LCFF_X23_Y14_N1
\sprite_renderer|row[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(3));

-- Location: LCCOMB_X22_Y15_N8
\sprite_renderer|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~12_combout\ = (\sprite_renderer|row\(4) & (\sprite_renderer|Add0~7\ $ (GND))) # (!\sprite_renderer|row\(4) & (!\sprite_renderer|Add0~7\ & VCC))
-- \sprite_renderer|Add0~13\ = CARRY((\sprite_renderer|row\(4) & !\sprite_renderer|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(4),
	datad => VCC,
	cin => \sprite_renderer|Add0~7\,
	combout => \sprite_renderer|Add0~12_combout\,
	cout => \sprite_renderer|Add0~13\);

-- Location: LCCOMB_X23_Y14_N22
\sprite_renderer|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~14_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~12_combout\,
	combout => \sprite_renderer|Add0~14_combout\);

-- Location: LCFF_X23_Y14_N23
\sprite_renderer|row[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(4));

-- Location: LCCOMB_X22_Y15_N10
\sprite_renderer|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~16_combout\ = (\sprite_renderer|row\(5) & (!\sprite_renderer|Add0~13\)) # (!\sprite_renderer|row\(5) & ((\sprite_renderer|Add0~13\) # (GND)))
-- \sprite_renderer|Add0~17\ = CARRY((!\sprite_renderer|Add0~13\) # (!\sprite_renderer|row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(5),
	datad => VCC,
	cin => \sprite_renderer|Add0~13\,
	combout => \sprite_renderer|Add0~16_combout\,
	cout => \sprite_renderer|Add0~17\);

-- Location: LCCOMB_X21_Y14_N16
\sprite_renderer|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~18_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~16_combout\,
	combout => \sprite_renderer|Add0~18_combout\);

-- Location: LCFF_X21_Y14_N17
\sprite_renderer|row[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(5));

-- Location: LCCOMB_X22_Y15_N12
\sprite_renderer|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~19_combout\ = (\sprite_renderer|row\(6) & (\sprite_renderer|Add0~17\ $ (GND))) # (!\sprite_renderer|row\(6) & (!\sprite_renderer|Add0~17\ & VCC))
-- \sprite_renderer|Add0~20\ = CARRY((\sprite_renderer|row\(6) & !\sprite_renderer|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(6),
	datad => VCC,
	cin => \sprite_renderer|Add0~17\,
	combout => \sprite_renderer|Add0~19_combout\,
	cout => \sprite_renderer|Add0~20\);

-- Location: LCCOMB_X21_Y14_N12
\sprite_renderer|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~24_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~19_combout\,
	combout => \sprite_renderer|Add0~24_combout\);

-- Location: LCFF_X21_Y14_N13
\sprite_renderer|row[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~24_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(6));

-- Location: LCCOMB_X22_Y15_N16
\sprite_renderer|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~25_combout\ = (\sprite_renderer|row\(8) & (\sprite_renderer|Add0~22\ $ (GND))) # (!\sprite_renderer|row\(8) & (!\sprite_renderer|Add0~22\ & VCC))
-- \sprite_renderer|Add0~26\ = CARRY((\sprite_renderer|row\(8) & !\sprite_renderer|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(8),
	datad => VCC,
	cin => \sprite_renderer|Add0~22\,
	combout => \sprite_renderer|Add0~25_combout\,
	cout => \sprite_renderer|Add0~26\);

-- Location: LCCOMB_X21_Y14_N22
\sprite_renderer|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~27_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~25_combout\,
	combout => \sprite_renderer|Add0~27_combout\);

-- Location: LCFF_X21_Y14_N23
\sprite_renderer|row[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~27_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(8));

-- Location: LCCOMB_X22_Y15_N18
\sprite_renderer|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~28_combout\ = (\sprite_renderer|row\(9) & (!\sprite_renderer|Add0~26\)) # (!\sprite_renderer|row\(9) & ((\sprite_renderer|Add0~26\) # (GND)))
-- \sprite_renderer|Add0~29\ = CARRY((!\sprite_renderer|Add0~26\) # (!\sprite_renderer|row\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(9),
	datad => VCC,
	cin => \sprite_renderer|Add0~26\,
	combout => \sprite_renderer|Add0~28_combout\,
	cout => \sprite_renderer|Add0~29\);

-- Location: LCCOMB_X21_Y15_N18
\sprite_renderer|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~80_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~28_combout\,
	combout => \sprite_renderer|Add0~80_combout\);

-- Location: LCFF_X21_Y15_N19
\sprite_renderer|row[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~80_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(9));

-- Location: LCCOMB_X22_Y15_N20
\sprite_renderer|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~30_combout\ = (\sprite_renderer|row\(10) & (\sprite_renderer|Add0~29\ $ (GND))) # (!\sprite_renderer|row\(10) & (!\sprite_renderer|Add0~29\ & VCC))
-- \sprite_renderer|Add0~31\ = CARRY((\sprite_renderer|row\(10) & !\sprite_renderer|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(10),
	datad => VCC,
	cin => \sprite_renderer|Add0~29\,
	combout => \sprite_renderer|Add0~30_combout\,
	cout => \sprite_renderer|Add0~31\);

-- Location: LCCOMB_X21_Y15_N16
\sprite_renderer|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~79_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~30_combout\,
	combout => \sprite_renderer|Add0~79_combout\);

-- Location: LCFF_X21_Y15_N17
\sprite_renderer|row[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~79_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(10));

-- Location: LCCOMB_X21_Y15_N22
\sprite_renderer|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~4_combout\ = (!\sprite_renderer|row\(9) & !\sprite_renderer|row\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(9),
	datac => \sprite_renderer|row\(10),
	combout => \sprite_renderer|LessThan1~4_combout\);

-- Location: LCCOMB_X22_Y15_N22
\sprite_renderer|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~32_combout\ = (\sprite_renderer|row\(11) & (!\sprite_renderer|Add0~31\)) # (!\sprite_renderer|row\(11) & ((\sprite_renderer|Add0~31\) # (GND)))
-- \sprite_renderer|Add0~33\ = CARRY((!\sprite_renderer|Add0~31\) # (!\sprite_renderer|row\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(11),
	datad => VCC,
	cin => \sprite_renderer|Add0~31\,
	combout => \sprite_renderer|Add0~32_combout\,
	cout => \sprite_renderer|Add0~33\);

-- Location: LCCOMB_X21_Y15_N2
\sprite_renderer|Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~96_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~32_combout\,
	combout => \sprite_renderer|Add0~96_combout\);

-- Location: LCFF_X21_Y15_N3
\sprite_renderer|row[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~96_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(11));

-- Location: LCCOMB_X22_Y15_N26
\sprite_renderer|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~36_combout\ = (\sprite_renderer|row\(13) & (!\sprite_renderer|Add0~35\)) # (!\sprite_renderer|row\(13) & ((\sprite_renderer|Add0~35\) # (GND)))
-- \sprite_renderer|Add0~37\ = CARRY((!\sprite_renderer|Add0~35\) # (!\sprite_renderer|row\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(13),
	datad => VCC,
	cin => \sprite_renderer|Add0~35\,
	combout => \sprite_renderer|Add0~36_combout\,
	cout => \sprite_renderer|Add0~37\);

-- Location: LCCOMB_X21_Y15_N14
\sprite_renderer|Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~94_combout\ = (\sprite_renderer|Add0~36_combout\ & \sprite_renderer|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|Add0~36_combout\,
	datad => \sprite_renderer|LessThan1~10_combout\,
	combout => \sprite_renderer|Add0~94_combout\);

-- Location: LCFF_X21_Y15_N15
\sprite_renderer|row[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~94_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(13));

-- Location: LCCOMB_X22_Y15_N28
\sprite_renderer|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~38_combout\ = (\sprite_renderer|row\(14) & (\sprite_renderer|Add0~37\ $ (GND))) # (!\sprite_renderer|row\(14) & (!\sprite_renderer|Add0~37\ & VCC))
-- \sprite_renderer|Add0~39\ = CARRY((\sprite_renderer|row\(14) & !\sprite_renderer|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(14),
	datad => VCC,
	cin => \sprite_renderer|Add0~37\,
	combout => \sprite_renderer|Add0~38_combout\,
	cout => \sprite_renderer|Add0~39\);

-- Location: LCCOMB_X21_Y15_N28
\sprite_renderer|Add0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~93_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~38_combout\,
	combout => \sprite_renderer|Add0~93_combout\);

-- Location: LCFF_X21_Y15_N29
\sprite_renderer|row[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~93_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(14));

-- Location: LCCOMB_X21_Y15_N26
\sprite_renderer|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~8_combout\ = (!\sprite_renderer|row\(12) & (!\sprite_renderer|row\(11) & (!\sprite_renderer|row\(13) & !\sprite_renderer|row\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(12),
	datab => \sprite_renderer|row\(11),
	datac => \sprite_renderer|row\(13),
	datad => \sprite_renderer|row\(14),
	combout => \sprite_renderer|LessThan1~8_combout\);

-- Location: LCCOMB_X22_Y14_N0
\sprite_renderer|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~42_combout\ = (\sprite_renderer|row\(16) & (\sprite_renderer|Add0~41\ $ (GND))) # (!\sprite_renderer|row\(16) & (!\sprite_renderer|Add0~41\ & VCC))
-- \sprite_renderer|Add0~43\ = CARRY((\sprite_renderer|row\(16) & !\sprite_renderer|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(16),
	datad => VCC,
	cin => \sprite_renderer|Add0~41\,
	combout => \sprite_renderer|Add0~42_combout\,
	cout => \sprite_renderer|Add0~43\);

-- Location: LCCOMB_X21_Y15_N24
\sprite_renderer|Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~91_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~42_combout\,
	combout => \sprite_renderer|Add0~91_combout\);

-- Location: LCFF_X21_Y15_N25
\sprite_renderer|row[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~91_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(16));

-- Location: LCCOMB_X22_Y14_N2
\sprite_renderer|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~44_combout\ = (\sprite_renderer|row\(17) & (!\sprite_renderer|Add0~43\)) # (!\sprite_renderer|row\(17) & ((\sprite_renderer|Add0~43\) # (GND)))
-- \sprite_renderer|Add0~45\ = CARRY((!\sprite_renderer|Add0~43\) # (!\sprite_renderer|row\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(17),
	datad => VCC,
	cin => \sprite_renderer|Add0~43\,
	combout => \sprite_renderer|Add0~44_combout\,
	cout => \sprite_renderer|Add0~45\);

-- Location: LCCOMB_X22_Y14_N4
\sprite_renderer|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~46_combout\ = (\sprite_renderer|row\(18) & (\sprite_renderer|Add0~45\ $ (GND))) # (!\sprite_renderer|row\(18) & (!\sprite_renderer|Add0~45\ & VCC))
-- \sprite_renderer|Add0~47\ = CARRY((\sprite_renderer|row\(18) & !\sprite_renderer|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(18),
	datad => VCC,
	cin => \sprite_renderer|Add0~45\,
	combout => \sprite_renderer|Add0~46_combout\,
	cout => \sprite_renderer|Add0~47\);

-- Location: LCCOMB_X21_Y15_N12
\sprite_renderer|Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~89_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~46_combout\,
	combout => \sprite_renderer|Add0~89_combout\);

-- Location: LCFF_X21_Y15_N13
\sprite_renderer|row[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~89_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(18));

-- Location: LCCOMB_X22_Y14_N8
\sprite_renderer|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~50_combout\ = (\sprite_renderer|row\(20) & (\sprite_renderer|Add0~49\ $ (GND))) # (!\sprite_renderer|row\(20) & (!\sprite_renderer|Add0~49\ & VCC))
-- \sprite_renderer|Add0~51\ = CARRY((\sprite_renderer|row\(20) & !\sprite_renderer|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(20),
	datad => VCC,
	cin => \sprite_renderer|Add0~49\,
	combout => \sprite_renderer|Add0~50_combout\,
	cout => \sprite_renderer|Add0~51\);

-- Location: LCCOMB_X21_Y14_N4
\sprite_renderer|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~87_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~50_combout\,
	combout => \sprite_renderer|Add0~87_combout\);

-- Location: LCFF_X21_Y14_N5
\sprite_renderer|row[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~87_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(20));

-- Location: LCCOMB_X22_Y14_N10
\sprite_renderer|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~52_combout\ = (\sprite_renderer|row\(21) & (!\sprite_renderer|Add0~51\)) # (!\sprite_renderer|row\(21) & ((\sprite_renderer|Add0~51\) # (GND)))
-- \sprite_renderer|Add0~53\ = CARRY((!\sprite_renderer|Add0~51\) # (!\sprite_renderer|row\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(21),
	datad => VCC,
	cin => \sprite_renderer|Add0~51\,
	combout => \sprite_renderer|Add0~52_combout\,
	cout => \sprite_renderer|Add0~53\);

-- Location: LCCOMB_X21_Y14_N18
\sprite_renderer|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~86_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~52_combout\,
	combout => \sprite_renderer|Add0~86_combout\);

-- Location: LCFF_X21_Y14_N19
\sprite_renderer|row[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~86_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(21));

-- Location: LCCOMB_X22_Y14_N14
\sprite_renderer|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~56_combout\ = (\sprite_renderer|row\(23) & (!\sprite_renderer|Add0~55\)) # (!\sprite_renderer|row\(23) & ((\sprite_renderer|Add0~55\) # (GND)))
-- \sprite_renderer|Add0~57\ = CARRY((!\sprite_renderer|Add0~55\) # (!\sprite_renderer|row\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(23),
	datad => VCC,
	cin => \sprite_renderer|Add0~55\,
	combout => \sprite_renderer|Add0~56_combout\,
	cout => \sprite_renderer|Add0~57\);

-- Location: LCCOMB_X22_Y14_N16
\sprite_renderer|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~58_combout\ = (\sprite_renderer|row\(24) & (\sprite_renderer|Add0~57\ $ (GND))) # (!\sprite_renderer|row\(24) & (!\sprite_renderer|Add0~57\ & VCC))
-- \sprite_renderer|Add0~59\ = CARRY((\sprite_renderer|row\(24) & !\sprite_renderer|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(24),
	datad => VCC,
	cin => \sprite_renderer|Add0~57\,
	combout => \sprite_renderer|Add0~58_combout\,
	cout => \sprite_renderer|Add0~59\);

-- Location: LCCOMB_X21_Y14_N28
\sprite_renderer|Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~83_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~58_combout\,
	combout => \sprite_renderer|Add0~83_combout\);

-- Location: LCFF_X21_Y14_N29
\sprite_renderer|row[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~83_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(24));

-- Location: LCCOMB_X22_Y14_N20
\sprite_renderer|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~62_combout\ = (\sprite_renderer|row\(26) & (\sprite_renderer|Add0~61\ $ (GND))) # (!\sprite_renderer|row\(26) & (!\sprite_renderer|Add0~61\ & VCC))
-- \sprite_renderer|Add0~63\ = CARRY((\sprite_renderer|row\(26) & !\sprite_renderer|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(26),
	datad => VCC,
	cin => \sprite_renderer|Add0~61\,
	combout => \sprite_renderer|Add0~62_combout\,
	cout => \sprite_renderer|Add0~63\);

-- Location: LCCOMB_X21_Y14_N8
\sprite_renderer|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~81_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~62_combout\,
	combout => \sprite_renderer|Add0~81_combout\);

-- Location: LCFF_X21_Y14_N9
\sprite_renderer|row[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~81_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(26));

-- Location: LCCOMB_X21_Y14_N14
\sprite_renderer|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~84_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~56_combout\,
	combout => \sprite_renderer|Add0~84_combout\);

-- Location: LCFF_X21_Y14_N15
\sprite_renderer|row[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~84_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(23));

-- Location: LCCOMB_X21_Y14_N26
\sprite_renderer|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~5_combout\ = (!\sprite_renderer|row\(25) & (!\sprite_renderer|row\(24) & (!\sprite_renderer|row\(26) & !\sprite_renderer|row\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(25),
	datab => \sprite_renderer|row\(24),
	datac => \sprite_renderer|row\(26),
	datad => \sprite_renderer|row\(23),
	combout => \sprite_renderer|LessThan1~5_combout\);

-- Location: LCCOMB_X21_Y15_N30
\sprite_renderer|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~90_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~10_combout\,
	datac => \sprite_renderer|Add0~44_combout\,
	combout => \sprite_renderer|Add0~90_combout\);

-- Location: LCFF_X21_Y15_N31
\sprite_renderer|row[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~90_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(17));

-- Location: LCCOMB_X21_Y15_N0
\sprite_renderer|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~7_combout\ = (!\sprite_renderer|row\(15) & (!\sprite_renderer|row\(17) & (!\sprite_renderer|row\(18) & !\sprite_renderer|row\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(15),
	datab => \sprite_renderer|row\(17),
	datac => \sprite_renderer|row\(18),
	datad => \sprite_renderer|row\(16),
	combout => \sprite_renderer|LessThan1~7_combout\);

-- Location: LCCOMB_X21_Y15_N20
\sprite_renderer|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~9_combout\ = (\sprite_renderer|LessThan1~6_combout\ & (\sprite_renderer|LessThan1~8_combout\ & (\sprite_renderer|LessThan1~5_combout\ & \sprite_renderer|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~6_combout\,
	datab => \sprite_renderer|LessThan1~8_combout\,
	datac => \sprite_renderer|LessThan1~5_combout\,
	datad => \sprite_renderer|LessThan1~7_combout\,
	combout => \sprite_renderer|LessThan1~9_combout\);

-- Location: LCCOMB_X22_Y14_N22
\sprite_renderer|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~64_combout\ = (\sprite_renderer|row\(27) & (!\sprite_renderer|Add0~63\)) # (!\sprite_renderer|row\(27) & ((\sprite_renderer|Add0~63\) # (GND)))
-- \sprite_renderer|Add0~65\ = CARRY((!\sprite_renderer|Add0~63\) # (!\sprite_renderer|row\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(27),
	datad => VCC,
	cin => \sprite_renderer|Add0~63\,
	combout => \sprite_renderer|Add0~64_combout\,
	cout => \sprite_renderer|Add0~65\);

-- Location: LCCOMB_X23_Y14_N30
\sprite_renderer|Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~78_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~64_combout\,
	combout => \sprite_renderer|Add0~78_combout\);

-- Location: LCFF_X23_Y14_N31
\sprite_renderer|row[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~78_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(27));

-- Location: LCCOMB_X23_Y14_N20
\sprite_renderer|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~77_combout\ = (\sprite_renderer|Add0~66_combout\ & \sprite_renderer|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Add0~66_combout\,
	datac => \sprite_renderer|LessThan1~10_combout\,
	combout => \sprite_renderer|Add0~77_combout\);

-- Location: LCFF_X23_Y14_N21
\sprite_renderer|row[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~77_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(28));

-- Location: LCCOMB_X22_Y14_N26
\sprite_renderer|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~68_combout\ = (\sprite_renderer|row\(29) & (!\sprite_renderer|Add0~67\)) # (!\sprite_renderer|row\(29) & ((\sprite_renderer|Add0~67\) # (GND)))
-- \sprite_renderer|Add0~69\ = CARRY((!\sprite_renderer|Add0~67\) # (!\sprite_renderer|row\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|row\(29),
	datad => VCC,
	cin => \sprite_renderer|Add0~67\,
	combout => \sprite_renderer|Add0~68_combout\,
	cout => \sprite_renderer|Add0~69\);

-- Location: LCCOMB_X23_Y14_N10
\sprite_renderer|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~76_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~68_combout\,
	combout => \sprite_renderer|Add0~76_combout\);

-- Location: LCFF_X23_Y14_N11
\sprite_renderer|row[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~76_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(29));

-- Location: LCCOMB_X23_Y14_N8
\sprite_renderer|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~75_combout\ = (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~70_combout\,
	combout => \sprite_renderer|Add0~75_combout\);

-- Location: LCFF_X23_Y14_N9
\sprite_renderer|row[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~75_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(30));

-- Location: LCCOMB_X23_Y14_N26
\sprite_renderer|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~1_combout\ = (!\sprite_renderer|row\(29) & (!\sprite_renderer|row\(27) & (!\sprite_renderer|row\(30) & !\sprite_renderer|row\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(29),
	datab => \sprite_renderer|row\(27),
	datac => \sprite_renderer|row\(30),
	datad => \sprite_renderer|row\(28),
	combout => \sprite_renderer|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y14_N28
\sprite_renderer|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~2_combout\ = (((!\sprite_renderer|row\(2)) # (!\sprite_renderer|row\(0))) # (!\sprite_renderer|row\(3))) # (!\sprite_renderer|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(4),
	datab => \sprite_renderer|row\(3),
	datac => \sprite_renderer|row\(0),
	datad => \sprite_renderer|row\(2),
	combout => \sprite_renderer|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y14_N6
\sprite_renderer|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~3_combout\ = (\sprite_renderer|LessThan1~0_combout\ & (\sprite_renderer|LessThan1~1_combout\ & ((\sprite_renderer|LessThan1~2_combout\) # (!\sprite_renderer|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|LessThan1~0_combout\,
	datab => \sprite_renderer|LessThan1~1_combout\,
	datac => \sprite_renderer|row\(1),
	datad => \sprite_renderer|LessThan1~2_combout\,
	combout => \sprite_renderer|LessThan1~3_combout\);

-- Location: LCCOMB_X21_Y15_N6
\sprite_renderer|LessThan1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|LessThan1~10_combout\ = (\sprite_renderer|row\(31)) # ((\sprite_renderer|LessThan1~4_combout\ & (\sprite_renderer|LessThan1~9_combout\ & \sprite_renderer|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(31),
	datab => \sprite_renderer|LessThan1~4_combout\,
	datac => \sprite_renderer|LessThan1~9_combout\,
	datad => \sprite_renderer|LessThan1~3_combout\,
	combout => \sprite_renderer|LessThan1~10_combout\);

-- Location: LCCOMB_X23_Y14_N24
\sprite_renderer|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add0~15_combout\ = (\sprite_renderer|state.DRAWING~regout\ & (\sprite_renderer|LessThan1~10_combout\ & \sprite_renderer|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|state.DRAWING~regout\,
	datac => \sprite_renderer|LessThan1~10_combout\,
	datad => \sprite_renderer|Add0~0_combout\,
	combout => \sprite_renderer|Add0~15_combout\);

-- Location: LCFF_X23_Y14_N25
\sprite_renderer|row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add0~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \sprite_renderer|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|row\(0));

-- Location: LCCOMB_X22_Y12_N2
\sprite_renderer|FB_X0[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[1]~12_combout\ = (\sprite_renderer|row\(4) & (!\sprite_renderer|row\(0) & (\sprite_renderer|sprite_to_draw.color\(6) & !\sprite_renderer|row\(1)))) # (!\sprite_renderer|row\(4) & (\sprite_renderer|row\(0) & 
-- (!\sprite_renderer|sprite_to_draw.color\(6) & \sprite_renderer|row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(4),
	datab => \sprite_renderer|row\(0),
	datac => \sprite_renderer|sprite_to_draw.color\(6),
	datad => \sprite_renderer|row\(1),
	combout => \sprite_renderer|FB_X0[1]~12_combout\);

-- Location: LCCOMB_X22_Y12_N6
\sprite_renderer|FB_X0[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[1]~15_combout\ = ((!\sprite_renderer|Mux32~0_combout\ & (\sprite_renderer|FB_X0[1]~14_combout\ & \sprite_renderer|FB_X0[1]~12_combout\))) # (!\sprite_renderer|state.DRAWING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|Mux32~0_combout\,
	datab => \sprite_renderer|FB_X0[1]~14_combout\,
	datac => \sprite_renderer|state.DRAWING~regout\,
	datad => \sprite_renderer|FB_X0[1]~12_combout\,
	combout => \sprite_renderer|FB_X0[1]~15_combout\);

-- Location: LCCOMB_X22_Y12_N18
\sprite_renderer|FB_X0[1]~15_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[1]~15_wirecell_combout\ = !\sprite_renderer|FB_X0[1]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sprite_renderer|FB_X0[1]~15_combout\,
	combout => \sprite_renderer|FB_X0[1]~15_wirecell_combout\);

-- Location: LCFF_X22_Y12_N19
\sprite_renderer|FB_DRAW_RECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[1]~15_wirecell_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_DRAW_RECT~regout\);

-- Location: LCCOMB_X22_Y10_N26
\vga|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector0~3_combout\ = (!\vga|state.IDLE~regout\ & ((\sprite_renderer|FB_DRAW_RECT~regout\) # (\sprite_renderer|FB_CLEAR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|state.IDLE~regout\,
	datac => \sprite_renderer|FB_DRAW_RECT~regout\,
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|Selector0~3_combout\);

-- Location: LCCOMB_X22_Y10_N8
\vga|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector1~0_combout\ = (\vga|Selector2~0_combout\ & ((\vga|state.DRAWING_RECT~regout\) # ((\vga|Selector0~3_combout\ & !\sprite_renderer|FB_CLEAR~regout\)))) # (!\vga|Selector2~0_combout\ & (\vga|Selector0~3_combout\ & 
-- ((!\sprite_renderer|FB_CLEAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Selector2~0_combout\,
	datab => \vga|Selector0~3_combout\,
	datac => \vga|state.DRAWING_RECT~regout\,
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|Selector1~0_combout\);

-- Location: LCFF_X22_Y10_N9
\vga|state.DRAWING_RECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector1~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|state.DRAWING_RECT~regout\);

-- Location: LCCOMB_X26_Y18_N0
\view|SPRITE_Y~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~1_combout\ = ((\view|render_counter\(2) $ (!\view|render_counter\(0))) # (!\view|Equal0~9_combout\)) # (!\view|render_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|SPRITE_Y~1_combout\);

-- Location: LCCOMB_X27_Y18_N4
\view|x[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[0]~27_combout\ = !\view|x\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|x\(0),
	combout => \view|x[0]~27_combout\);

-- Location: LCFF_X27_Y18_N5
\view|x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[0]~27_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(0));

-- Location: LCCOMB_X27_Y18_N6
\view|x[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[1]~9_combout\ = (\view|x\(1) & (\view|x\(0) $ (VCC))) # (!\view|x\(1) & (\view|x\(0) & VCC))
-- \view|x[1]~10\ = CARRY((\view|x\(1) & \view|x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(1),
	datab => \view|x\(0),
	datad => VCC,
	combout => \view|x[1]~9_combout\,
	cout => \view|x[1]~10\);

-- Location: LCCOMB_X27_Y18_N8
\view|x[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[2]~11_combout\ = (\view|x\(2) & (!\view|x[1]~10\)) # (!\view|x\(2) & ((\view|x[1]~10\) # (GND)))
-- \view|x[2]~12\ = CARRY((!\view|x[1]~10\) # (!\view|x\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(2),
	datad => VCC,
	cin => \view|x[1]~10\,
	combout => \view|x[2]~11_combout\,
	cout => \view|x[2]~12\);

-- Location: LCFF_X27_Y18_N9
\view|x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[2]~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(2));

-- Location: LCCOMB_X27_Y18_N10
\view|x[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[3]~13_combout\ = (\view|x\(3) & (\view|x[2]~12\ $ (GND))) # (!\view|x\(3) & (!\view|x[2]~12\ & VCC))
-- \view|x[3]~14\ = CARRY((\view|x\(3) & !\view|x[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(3),
	datad => VCC,
	cin => \view|x[2]~12\,
	combout => \view|x[3]~13_combout\,
	cout => \view|x[3]~14\);

-- Location: LCCOMB_X27_Y18_N12
\view|x[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[4]~15_combout\ = (\view|x\(4) & (!\view|x[3]~14\)) # (!\view|x\(4) & ((\view|x[3]~14\) # (GND)))
-- \view|x[4]~16\ = CARRY((!\view|x[3]~14\) # (!\view|x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(4),
	datad => VCC,
	cin => \view|x[3]~14\,
	combout => \view|x[4]~15_combout\,
	cout => \view|x[4]~16\);

-- Location: LCFF_X27_Y18_N13
\view|x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[4]~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(4));

-- Location: LCCOMB_X27_Y18_N14
\view|x[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[5]~17_combout\ = (\view|x\(5) & (\view|x[4]~16\ $ (GND))) # (!\view|x\(5) & (!\view|x[4]~16\ & VCC))
-- \view|x[5]~18\ = CARRY((\view|x\(5) & !\view|x[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(5),
	datad => VCC,
	cin => \view|x[4]~16\,
	combout => \view|x[5]~17_combout\,
	cout => \view|x[5]~18\);

-- Location: LCFF_X27_Y18_N15
\view|x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[5]~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(5));

-- Location: LCCOMB_X27_Y18_N16
\view|x[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[6]~19_combout\ = (\view|x\(6) & (!\view|x[5]~18\)) # (!\view|x\(6) & ((\view|x[5]~18\) # (GND)))
-- \view|x[6]~20\ = CARRY((!\view|x[5]~18\) # (!\view|x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(6),
	datad => VCC,
	cin => \view|x[5]~18\,
	combout => \view|x[6]~19_combout\,
	cout => \view|x[6]~20\);

-- Location: LCCOMB_X27_Y18_N18
\view|x[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[7]~21_combout\ = (\view|x\(7) & (\view|x[6]~20\ $ (GND))) # (!\view|x\(7) & (!\view|x[6]~20\ & VCC))
-- \view|x[7]~22\ = CARRY((\view|x\(7) & !\view|x[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(7),
	datad => VCC,
	cin => \view|x[6]~20\,
	combout => \view|x[7]~21_combout\,
	cout => \view|x[7]~22\);

-- Location: LCFF_X27_Y18_N19
\view|x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[7]~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(7));

-- Location: LCCOMB_X27_Y18_N20
\view|x[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[8]~23_combout\ = (\view|x\(8) & (!\view|x[7]~22\)) # (!\view|x\(8) & ((\view|x[7]~22\) # (GND)))
-- \view|x[8]~24\ = CARRY((!\view|x[7]~22\) # (!\view|x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(8),
	datad => VCC,
	cin => \view|x[7]~22\,
	combout => \view|x[8]~23_combout\,
	cout => \view|x[8]~24\);

-- Location: LCFF_X27_Y18_N21
\view|x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[8]~23_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(8));

-- Location: LCFF_X27_Y18_N17
\view|x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[6]~19_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(6));

-- Location: LCFF_X27_Y18_N7
\view|x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[1]~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(1));

-- Location: LCCOMB_X25_Y18_N14
\view|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~12_combout\ = (\view|x\(7) & (\view|Add4~11\ $ (GND))) # (!\view|x\(7) & (!\view|Add4~11\ & VCC))
-- \view|Add4~13\ = CARRY((\view|x\(7) & !\view|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(7),
	datad => VCC,
	cin => \view|Add4~11\,
	combout => \view|Add4~12_combout\,
	cout => \view|Add4~13\);

-- Location: LCCOMB_X25_Y18_N16
\view|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add4~14_combout\ = \view|Add4~13\ $ (\view|x\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \view|x\(8),
	cin => \view|Add4~13\,
	combout => \view|Add4~14_combout\);

-- Location: LCCOMB_X25_Y18_N22
\view|SPRITE_Y~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~28_combout\ = (\view|Equal1~0_combout\ & ((\view|Add4~14_combout\) # ((!\view|SPRITE_Y~1_combout\ & \view|x\(7))))) # (!\view|Equal1~0_combout\ & (!\view|SPRITE_Y~1_combout\ & (\view|x\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal1~0_combout\,
	datab => \view|SPRITE_Y~1_combout\,
	datac => \view|x\(7),
	datad => \view|Add4~14_combout\,
	combout => \view|SPRITE_Y~28_combout\);

-- Location: LCCOMB_X26_Y18_N6
\view|SPRITE_Y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~0_combout\ = ((\view|render_counter\(2)) # (\view|render_counter\(0))) # (!\view|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|SPRITE_Y~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\view|SPRITE_Y~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~30_combout\ = (\view|SPRITE_Y~29_combout\) # ((\view|SPRITE_Y~28_combout\) # ((!\view|SPRITE_Y~0_combout\ & \view|x\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_Y~29_combout\,
	datab => \view|SPRITE_Y~28_combout\,
	datac => \view|SPRITE_Y~0_combout\,
	datad => \view|x\(8),
	combout => \view|SPRITE_Y~30_combout\);

-- Location: LCFF_X25_Y18_N21
\view|SPRITE_Y[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_Y~30_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(8));

-- Location: LCCOMB_X23_Y12_N30
\sprite_renderer|sprite_y[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[8]~feeder_combout\ = \view|SPRITE_Y\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_Y\(8),
	combout => \sprite_renderer|sprite_y[8]~feeder_combout\);

-- Location: LCFF_X23_Y12_N31
\sprite_renderer|sprite_y[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[8]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(8));

-- Location: LCCOMB_X25_Y18_N28
\view|SPRITE_Y~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~22_combout\ = (\view|Equal1~0_combout\ & ((\view|Add4~12_combout\) # ((!\view|SPRITE_Y~1_combout\ & \view|x\(6))))) # (!\view|Equal1~0_combout\ & (!\view|SPRITE_Y~1_combout\ & ((\view|x\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal1~0_combout\,
	datab => \view|SPRITE_Y~1_combout\,
	datac => \view|Add4~12_combout\,
	datad => \view|x\(6),
	combout => \view|SPRITE_Y~22_combout\);

-- Location: LCCOMB_X26_Y18_N14
\view|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal5~0_combout\ = (!\view|render_counter\(1) & (\view|Equal0~9_combout\ & (\view|render_counter\(2) & \view|render_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|Equal5~0_combout\);

-- Location: LCFF_X27_Y18_N11
\view|x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[3]~13_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(3));

-- Location: LCCOMB_X26_Y19_N18
\view|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add8~0_combout\ = (\view|x\(2) & (\view|x\(0) $ (VCC))) # (!\view|x\(2) & (\view|x\(0) & VCC))
-- \view|Add8~1\ = CARRY((\view|x\(2) & \view|x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(2),
	datab => \view|x\(0),
	datad => VCC,
	combout => \view|Add8~0_combout\,
	cout => \view|Add8~1\);

-- Location: LCCOMB_X26_Y19_N22
\view|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add8~4_combout\ = ((\view|x\(2) $ (\view|x\(4) $ (!\view|Add8~3\)))) # (GND)
-- \view|Add8~5\ = CARRY((\view|x\(2) & ((\view|x\(4)) # (!\view|Add8~3\))) # (!\view|x\(2) & (\view|x\(4) & !\view|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(2),
	datab => \view|x\(4),
	datad => VCC,
	cin => \view|Add8~3\,
	combout => \view|Add8~4_combout\,
	cout => \view|Add8~5\);

-- Location: LCCOMB_X26_Y19_N26
\view|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add8~8_combout\ = ((\view|x\(6) $ (\view|x\(4) $ (!\view|Add8~7\)))) # (GND)
-- \view|Add8~9\ = CARRY((\view|x\(6) & ((\view|x\(4)) # (!\view|Add8~7\))) # (!\view|x\(6) & (\view|x\(4) & !\view|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(6),
	datab => \view|x\(4),
	datad => VCC,
	cin => \view|Add8~7\,
	combout => \view|Add8~8_combout\,
	cout => \view|Add8~9\);

-- Location: LCCOMB_X26_Y19_N0
\view|Add9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add9~1_cout\ = CARRY(!\view|x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(0),
	datad => VCC,
	cout => \view|Add9~1_cout\);

-- Location: LCCOMB_X26_Y18_N24
\view|SPRITE_Y~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~23_combout\ = (\view|Equal4~0_combout\ & ((\view|Add7~8_combout\) # ((\view|Equal5~0_combout\ & \view|Add9~14_combout\)))) # (!\view|Equal4~0_combout\ & (\view|Equal5~0_combout\ & ((\view|Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal4~0_combout\,
	datab => \view|Equal5~0_combout\,
	datac => \view|Add7~8_combout\,
	datad => \view|Add9~14_combout\,
	combout => \view|SPRITE_Y~23_combout\);

-- Location: LCCOMB_X25_Y18_N18
\view|SPRITE_Y~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~24_combout\ = (\view|SPRITE_Y~22_combout\) # ((\view|SPRITE_Y~23_combout\) # ((\view|x\(7) & !\view|SPRITE_Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(7),
	datab => \view|SPRITE_Y~22_combout\,
	datac => \view|SPRITE_Y~0_combout\,
	datad => \view|SPRITE_Y~23_combout\,
	combout => \view|SPRITE_Y~24_combout\);

-- Location: LCFF_X25_Y18_N19
\view|SPRITE_Y[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_Y~24_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(7));

-- Location: LCCOMB_X23_Y12_N26
\sprite_renderer|sprite_y[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[7]~feeder_combout\ = \view|SPRITE_Y\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE_Y\(7),
	combout => \sprite_renderer|sprite_y[7]~feeder_combout\);

-- Location: LCFF_X23_Y12_N27
\sprite_renderer|sprite_y[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[7]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(7));

-- Location: LCCOMB_X26_Y18_N16
\view|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal1~0_combout\ = (!\view|render_counter\(1) & (\view|Equal0~9_combout\ & (!\view|render_counter\(2) & \view|render_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y18_N26
\view|SPRITE_Y~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~25_combout\ = (\view|Add4~10_combout\ & ((\view|Equal1~0_combout\) # ((\view|x\(5) & !\view|SPRITE_Y~1_combout\)))) # (!\view|Add4~10_combout\ & (\view|x\(5) & ((!\view|SPRITE_Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~10_combout\,
	datab => \view|x\(5),
	datac => \view|Equal1~0_combout\,
	datad => \view|SPRITE_Y~1_combout\,
	combout => \view|SPRITE_Y~25_combout\);

-- Location: LCCOMB_X26_Y18_N8
\view|SPRITE_Y~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~27_combout\ = (\view|SPRITE_Y~26_combout\) # ((\view|SPRITE_Y~25_combout\) # ((\view|x\(6) & !\view|SPRITE_Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_Y~26_combout\,
	datab => \view|SPRITE_Y~25_combout\,
	datac => \view|x\(6),
	datad => \view|SPRITE_Y~0_combout\,
	combout => \view|SPRITE_Y~27_combout\);

-- Location: LCFF_X26_Y18_N9
\view|SPRITE_Y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_Y~27_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(6));

-- Location: LCCOMB_X23_Y12_N4
\sprite_renderer|sprite_y[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[6]~feeder_combout\ = \view|SPRITE_Y\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_Y\(6),
	combout => \sprite_renderer|sprite_y[6]~feeder_combout\);

-- Location: LCFF_X23_Y12_N5
\sprite_renderer|sprite_y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[6]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(6));

-- Location: LCCOMB_X25_Y18_N30
\view|SPRITE_Y~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~10_combout\ = (\view|Add4~4_combout\ & ((\view|Equal1~0_combout\) # ((!\view|SPRITE_Y~1_combout\ & \view|x\(2))))) # (!\view|Add4~4_combout\ & (!\view|SPRITE_Y~1_combout\ & ((\view|x\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add4~4_combout\,
	datab => \view|SPRITE_Y~1_combout\,
	datac => \view|Equal1~0_combout\,
	datad => \view|x\(2),
	combout => \view|SPRITE_Y~10_combout\);

-- Location: LCCOMB_X24_Y18_N4
\view|SPRITE_Y~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_Y~12_combout\ = (\view|SPRITE_Y~11_combout\) # ((\view|SPRITE_Y~10_combout\) # ((\view|x\(3) & !\view|SPRITE_Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_Y~11_combout\,
	datab => \view|x\(3),
	datac => \view|SPRITE_Y~0_combout\,
	datad => \view|SPRITE_Y~10_combout\,
	combout => \view|SPRITE_Y~12_combout\);

-- Location: LCFF_X24_Y18_N5
\view|SPRITE_Y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_Y~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(3));

-- Location: LCCOMB_X23_Y12_N28
\sprite_renderer|sprite_y[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[3]~feeder_combout\ = \view|SPRITE_Y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_Y\(3),
	combout => \sprite_renderer|sprite_y[3]~feeder_combout\);

-- Location: LCFF_X23_Y12_N29
\sprite_renderer|sprite_y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[3]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(3));

-- Location: LCCOMB_X26_Y18_N10
\view|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector19~0_combout\ = ((\view|render_counter\(1) & ((\view|render_counter\(2)) # (\view|render_counter\(0))))) # (!\view|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|Selector19~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\view|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector19~1_combout\ = (\view|x\(0) & !\view|Selector19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(0),
	datac => \view|Selector19~0_combout\,
	combout => \view|Selector19~1_combout\);

-- Location: LCFF_X24_Y18_N11
\view|SPRITE_Y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector19~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_Y\(0));

-- Location: LCCOMB_X23_Y12_N0
\sprite_renderer|sprite_y[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_y[0]~feeder_combout\ = \view|SPRITE_Y\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE_Y\(0),
	combout => \sprite_renderer|sprite_y[0]~feeder_combout\);

-- Location: LCFF_X23_Y12_N1
\sprite_renderer|sprite_y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_y[0]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_y\(0));

-- Location: LCCOMB_X23_Y12_N8
\sprite_renderer|FB_Y0[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[0]~9_combout\ = (\sprite_renderer|row\(0) & (\sprite_renderer|sprite_y\(0) $ (VCC))) # (!\sprite_renderer|row\(0) & (\sprite_renderer|sprite_y\(0) & VCC))
-- \sprite_renderer|FB_Y0[0]~10\ = CARRY((\sprite_renderer|row\(0) & \sprite_renderer|sprite_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(0),
	datab => \sprite_renderer|sprite_y\(0),
	datad => VCC,
	combout => \sprite_renderer|FB_Y0[0]~9_combout\,
	cout => \sprite_renderer|FB_Y0[0]~10\);

-- Location: LCCOMB_X23_Y12_N10
\sprite_renderer|FB_Y0[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[1]~11_combout\ = (\sprite_renderer|sprite_y\(1) & ((\sprite_renderer|row\(1) & (\sprite_renderer|FB_Y0[0]~10\ & VCC)) # (!\sprite_renderer|row\(1) & (!\sprite_renderer|FB_Y0[0]~10\)))) # (!\sprite_renderer|sprite_y\(1) & 
-- ((\sprite_renderer|row\(1) & (!\sprite_renderer|FB_Y0[0]~10\)) # (!\sprite_renderer|row\(1) & ((\sprite_renderer|FB_Y0[0]~10\) # (GND)))))
-- \sprite_renderer|FB_Y0[1]~12\ = CARRY((\sprite_renderer|sprite_y\(1) & (!\sprite_renderer|row\(1) & !\sprite_renderer|FB_Y0[0]~10\)) # (!\sprite_renderer|sprite_y\(1) & ((!\sprite_renderer|FB_Y0[0]~10\) # (!\sprite_renderer|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_y\(1),
	datab => \sprite_renderer|row\(1),
	datad => VCC,
	cin => \sprite_renderer|FB_Y0[0]~10\,
	combout => \sprite_renderer|FB_Y0[1]~11_combout\,
	cout => \sprite_renderer|FB_Y0[1]~12\);

-- Location: LCCOMB_X23_Y12_N12
\sprite_renderer|FB_Y0[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[2]~13_combout\ = ((\sprite_renderer|sprite_y\(2) $ (\sprite_renderer|row\(2) $ (!\sprite_renderer|FB_Y0[1]~12\)))) # (GND)
-- \sprite_renderer|FB_Y0[2]~14\ = CARRY((\sprite_renderer|sprite_y\(2) & ((\sprite_renderer|row\(2)) # (!\sprite_renderer|FB_Y0[1]~12\))) # (!\sprite_renderer|sprite_y\(2) & (\sprite_renderer|row\(2) & !\sprite_renderer|FB_Y0[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_y\(2),
	datab => \sprite_renderer|row\(2),
	datad => VCC,
	cin => \sprite_renderer|FB_Y0[1]~12\,
	combout => \sprite_renderer|FB_Y0[2]~13_combout\,
	cout => \sprite_renderer|FB_Y0[2]~14\);

-- Location: LCCOMB_X23_Y12_N14
\sprite_renderer|FB_Y0[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[3]~15_combout\ = (\sprite_renderer|row\(3) & ((\sprite_renderer|sprite_y\(3) & (\sprite_renderer|FB_Y0[2]~14\ & VCC)) # (!\sprite_renderer|sprite_y\(3) & (!\sprite_renderer|FB_Y0[2]~14\)))) # (!\sprite_renderer|row\(3) & 
-- ((\sprite_renderer|sprite_y\(3) & (!\sprite_renderer|FB_Y0[2]~14\)) # (!\sprite_renderer|sprite_y\(3) & ((\sprite_renderer|FB_Y0[2]~14\) # (GND)))))
-- \sprite_renderer|FB_Y0[3]~16\ = CARRY((\sprite_renderer|row\(3) & (!\sprite_renderer|sprite_y\(3) & !\sprite_renderer|FB_Y0[2]~14\)) # (!\sprite_renderer|row\(3) & ((!\sprite_renderer|FB_Y0[2]~14\) # (!\sprite_renderer|sprite_y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(3),
	datab => \sprite_renderer|sprite_y\(3),
	datad => VCC,
	cin => \sprite_renderer|FB_Y0[2]~14\,
	combout => \sprite_renderer|FB_Y0[3]~15_combout\,
	cout => \sprite_renderer|FB_Y0[3]~16\);

-- Location: LCCOMB_X23_Y12_N16
\sprite_renderer|FB_Y0[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[4]~17_combout\ = ((\sprite_renderer|sprite_y\(4) $ (\sprite_renderer|row\(4) $ (!\sprite_renderer|FB_Y0[3]~16\)))) # (GND)
-- \sprite_renderer|FB_Y0[4]~18\ = CARRY((\sprite_renderer|sprite_y\(4) & ((\sprite_renderer|row\(4)) # (!\sprite_renderer|FB_Y0[3]~16\))) # (!\sprite_renderer|sprite_y\(4) & (\sprite_renderer|row\(4) & !\sprite_renderer|FB_Y0[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_y\(4),
	datab => \sprite_renderer|row\(4),
	datad => VCC,
	cin => \sprite_renderer|FB_Y0[3]~16\,
	combout => \sprite_renderer|FB_Y0[4]~17_combout\,
	cout => \sprite_renderer|FB_Y0[4]~18\);

-- Location: LCCOMB_X23_Y12_N18
\sprite_renderer|FB_Y0[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[5]~19_combout\ = (\sprite_renderer|sprite_y\(5) & ((\sprite_renderer|row\(5) & (\sprite_renderer|FB_Y0[4]~18\ & VCC)) # (!\sprite_renderer|row\(5) & (!\sprite_renderer|FB_Y0[4]~18\)))) # (!\sprite_renderer|sprite_y\(5) & 
-- ((\sprite_renderer|row\(5) & (!\sprite_renderer|FB_Y0[4]~18\)) # (!\sprite_renderer|row\(5) & ((\sprite_renderer|FB_Y0[4]~18\) # (GND)))))
-- \sprite_renderer|FB_Y0[5]~20\ = CARRY((\sprite_renderer|sprite_y\(5) & (!\sprite_renderer|row\(5) & !\sprite_renderer|FB_Y0[4]~18\)) # (!\sprite_renderer|sprite_y\(5) & ((!\sprite_renderer|FB_Y0[4]~18\) # (!\sprite_renderer|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_y\(5),
	datab => \sprite_renderer|row\(5),
	datad => VCC,
	cin => \sprite_renderer|FB_Y0[4]~18\,
	combout => \sprite_renderer|FB_Y0[5]~19_combout\,
	cout => \sprite_renderer|FB_Y0[5]~20\);

-- Location: LCCOMB_X23_Y12_N20
\sprite_renderer|FB_Y0[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[6]~21_combout\ = ((\sprite_renderer|row\(6) $ (\sprite_renderer|sprite_y\(6) $ (!\sprite_renderer|FB_Y0[5]~20\)))) # (GND)
-- \sprite_renderer|FB_Y0[6]~22\ = CARRY((\sprite_renderer|row\(6) & ((\sprite_renderer|sprite_y\(6)) # (!\sprite_renderer|FB_Y0[5]~20\))) # (!\sprite_renderer|row\(6) & (\sprite_renderer|sprite_y\(6) & !\sprite_renderer|FB_Y0[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(6),
	datab => \sprite_renderer|sprite_y\(6),
	datad => VCC,
	cin => \sprite_renderer|FB_Y0[5]~20\,
	combout => \sprite_renderer|FB_Y0[6]~21_combout\,
	cout => \sprite_renderer|FB_Y0[6]~22\);

-- Location: LCCOMB_X23_Y12_N22
\sprite_renderer|FB_Y0[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[7]~23_combout\ = (\sprite_renderer|row\(7) & ((\sprite_renderer|sprite_y\(7) & (\sprite_renderer|FB_Y0[6]~22\ & VCC)) # (!\sprite_renderer|sprite_y\(7) & (!\sprite_renderer|FB_Y0[6]~22\)))) # (!\sprite_renderer|row\(7) & 
-- ((\sprite_renderer|sprite_y\(7) & (!\sprite_renderer|FB_Y0[6]~22\)) # (!\sprite_renderer|sprite_y\(7) & ((\sprite_renderer|FB_Y0[6]~22\) # (GND)))))
-- \sprite_renderer|FB_Y0[7]~24\ = CARRY((\sprite_renderer|row\(7) & (!\sprite_renderer|sprite_y\(7) & !\sprite_renderer|FB_Y0[6]~22\)) # (!\sprite_renderer|row\(7) & ((!\sprite_renderer|FB_Y0[6]~22\) # (!\sprite_renderer|sprite_y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(7),
	datab => \sprite_renderer|sprite_y\(7),
	datad => VCC,
	cin => \sprite_renderer|FB_Y0[6]~22\,
	combout => \sprite_renderer|FB_Y0[7]~23_combout\,
	cout => \sprite_renderer|FB_Y0[7]~24\);

-- Location: LCCOMB_X23_Y12_N24
\sprite_renderer|FB_Y0[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_Y0[8]~25_combout\ = \sprite_renderer|row\(8) $ (\sprite_renderer|FB_Y0[7]~24\ $ (!\sprite_renderer|sprite_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|row\(8),
	datad => \sprite_renderer|sprite_y\(8),
	cin => \sprite_renderer|FB_Y0[7]~24\,
	combout => \sprite_renderer|FB_Y0[8]~25_combout\);

-- Location: LCFF_X23_Y12_N25
\sprite_renderer|FB_Y0[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[8]~25_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(8));

-- Location: LCCOMB_X20_Y11_N20
\vga|y_end~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~9_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_Y0\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_Y0\(8),
	combout => \vga|y_end~9_combout\);

-- Location: LCCOMB_X22_Y10_N18
\vga|y_end[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end[8]~0_combout\ = (!\vga|state.IDLE~regout\ & (\RESET_N~regout\ & ((\sprite_renderer|FB_DRAW_RECT~regout\) # (\sprite_renderer|FB_CLEAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|FB_DRAW_RECT~regout\,
	datab => \vga|state.IDLE~regout\,
	datac => \RESET_N~regout\,
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|y_end[8]~0_combout\);

-- Location: LCFF_X20_Y11_N21
\vga|y_end[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~9_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(8));

-- Location: LCCOMB_X22_Y11_N2
\vga|y_cursor[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[0]~9_combout\ = \vga|y_cursor\(0) $ (VCC)
-- \vga|y_cursor[0]~10\ = CARRY(\vga|y_cursor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(0),
	datad => VCC,
	combout => \vga|y_cursor[0]~9_combout\,
	cout => \vga|y_cursor[0]~10\);

-- Location: LCCOMB_X23_Y10_N4
\vga|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~0_combout\ = \vga|y_cursor\(0) $ (VCC)
-- \vga|Add0~1\ = CARRY(\vga|y_cursor\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(0),
	datad => VCC,
	combout => \vga|Add0~0_combout\,
	cout => \vga|Add0~1\);

-- Location: LCFF_X23_Y12_N9
\sprite_renderer|FB_Y0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[0]~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(0));

-- Location: LCCOMB_X23_Y11_N0
\vga|y_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~0_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_Y0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_Y0\(0),
	combout => \vga|y_start~0_combout\);

-- Location: LCFF_X23_Y11_N1
\vga|y_start[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~0_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(0));

-- Location: LCCOMB_X22_Y10_N16
\vga|y_cursor[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[1]~11_combout\ = (\vga|state.DRAWING_RECT~regout\ & ((\vga|substate.DRAWING_R1~regout\))) # (!\vga|state.DRAWING_RECT~regout\ & (\vga|substate.INIT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.INIT~regout\,
	datab => \vga|state.DRAWING_RECT~regout\,
	datac => \vga|substate.DRAWING_R1~regout\,
	combout => \vga|y_cursor[1]~11_combout\);

-- Location: LCCOMB_X23_Y10_N0
\vga|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~2_combout\ = (\vga|y_cursor[1]~11_combout\ & (\vga|Add0~0_combout\)) # (!\vga|y_cursor[1]~11_combout\ & ((\vga|y_start\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|Add0~0_combout\,
	datac => \vga|y_start\(0),
	datad => \vga|y_cursor[1]~11_combout\,
	combout => \vga|Add0~2_combout\);

-- Location: LCCOMB_X22_Y10_N0
\vga|x_cursor[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[7]~14_combout\ = ((\vga|substate.DRAWING_R1~regout\) # (!\vga|state.DRAWING_RECT~regout\)) # (!\vga|substate.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.INIT~regout\,
	datab => \vga|state.DRAWING_RECT~regout\,
	datac => \vga|substate.DRAWING_R1~regout\,
	combout => \vga|x_cursor[7]~14_combout\);

-- Location: LCCOMB_X21_Y8_N24
\vga|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector4~0_combout\ = (\vga|state.IDLE~regout\) # ((!\sprite_renderer|FB_DRAW_RECT~regout\ & (!\sprite_renderer|FB_CLEAR~regout\ & \vga|substate.INIT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|FB_DRAW_RECT~regout\,
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \vga|substate.INIT~regout\,
	datad => \vga|state.IDLE~regout\,
	combout => \vga|Selector4~0_combout\);

-- Location: LCFF_X21_Y8_N25
\vga|substate.INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector4~0_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|substate.INIT~regout\);

-- Location: LCCOMB_X21_Y11_N26
\vga|x_cursor[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[7]~36_combout\ = (\vga|substate.INIT~regout\ & \vga|state.DRAWING_RECT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|substate.INIT~regout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|x_cursor[7]~36_combout\);

-- Location: LCCOMB_X22_Y10_N4
\vga|x_cursor[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[7]~12_combout\ = (\vga|state.FILLING_RECT~regout\ & \vga|substate.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.FILLING_RECT~regout\,
	datad => \vga|substate.INIT~regout\,
	combout => \vga|x_cursor[7]~12_combout\);

-- Location: LCCOMB_X21_Y13_N2
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

-- Location: LCCOMB_X22_Y13_N30
\vga|x_cursor[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[7]~13_combout\ = (\vga|x_cursor[7]~12_combout\ & (((\vga|state.DRAWING_RECT~regout\ & \vga|substate.DRAWING_R1~regout\)) # (!\vga|Equal0~6_combout\))) # (!\vga|x_cursor[7]~12_combout\ & (((\vga|state.DRAWING_RECT~regout\ & 
-- \vga|substate.DRAWING_R1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor[7]~12_combout\,
	datab => \vga|Equal0~6_combout\,
	datac => \vga|state.DRAWING_RECT~regout\,
	datad => \vga|substate.DRAWING_R1~regout\,
	combout => \vga|x_cursor[7]~13_combout\);

-- Location: LCCOMB_X20_Y13_N0
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

-- Location: LCCOMB_X24_Y18_N0
\view|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector9~0_combout\ = (\view|x\(0) & ((\view|Equal4~0_combout\) # ((!\view|SPRITE_Y~1_combout\) # (!\view|SPRITE_Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal4~0_combout\,
	datab => \view|SPRITE_Y~0_combout\,
	datac => \view|x\(0),
	datad => \view|SPRITE_Y~1_combout\,
	combout => \view|Selector9~0_combout\);

-- Location: LCFF_X24_Y18_N1
\view|SPRITE_X[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector9~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(0));

-- Location: LCCOMB_X24_Y18_N8
\sprite_renderer|sprite_x[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[0]~feeder_combout\ = \view|SPRITE_X\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_X\(0),
	combout => \sprite_renderer|sprite_x[0]~feeder_combout\);

-- Location: LCFF_X24_Y18_N9
\sprite_renderer|sprite_x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[0]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(0));

-- Location: LCCOMB_X24_Y12_N10
\sprite_renderer|FB_X0[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[0]~10_combout\ = (\sprite_renderer|column\(0) & (\sprite_renderer|sprite_x\(0) $ (VCC))) # (!\sprite_renderer|column\(0) & (\sprite_renderer|sprite_x\(0) & VCC))
-- \sprite_renderer|FB_X0[0]~11\ = CARRY((\sprite_renderer|column\(0) & \sprite_renderer|sprite_x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(0),
	datab => \sprite_renderer|sprite_x\(0),
	datad => VCC,
	combout => \sprite_renderer|FB_X0[0]~10_combout\,
	cout => \sprite_renderer|FB_X0[0]~11\);

-- Location: LCFF_X24_Y12_N11
\sprite_renderer|FB_X0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[0]~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(0));

-- Location: LCCOMB_X23_Y13_N24
\vga|x_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~0_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_X0\(0),
	combout => \vga|x_start~0_combout\);

-- Location: LCFF_X23_Y13_N25
\vga|x_start[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~0_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(0));

-- Location: LCCOMB_X21_Y13_N24
\vga|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~2_combout\ = (\vga|x_cursor[7]~13_combout\ & (\vga|Add1~0_combout\)) # (!\vga|x_cursor[7]~13_combout\ & ((\vga|x_start\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[7]~13_combout\,
	datac => \vga|Add1~0_combout\,
	datad => \vga|x_start\(0),
	combout => \vga|Add1~2_combout\);

-- Location: LCCOMB_X22_Y10_N10
\vga|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector2~1_combout\ = (\vga|Selector2~0_combout\ & ((\vga|state.FILLING_RECT~regout\) # ((!\vga|state.IDLE~regout\ & \sprite_renderer|FB_CLEAR~regout\)))) # (!\vga|Selector2~0_combout\ & (!\vga|state.IDLE~regout\ & 
-- ((\sprite_renderer|FB_CLEAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Selector2~0_combout\,
	datab => \vga|state.IDLE~regout\,
	datac => \vga|state.FILLING_RECT~regout\,
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|Selector2~1_combout\);

-- Location: LCFF_X22_Y10_N11
\vga|state.FILLING_RECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector2~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|state.FILLING_RECT~regout\);

-- Location: LCCOMB_X22_Y10_N22
\vga|x_cursor[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~18_combout\ = ((!\vga|state.DRAWING_RECT~regout\ & !\vga|state.FILLING_RECT~regout\)) # (!\vga|substate.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.INIT~regout\,
	datac => \vga|state.DRAWING_RECT~regout\,
	datad => \vga|state.FILLING_RECT~regout\,
	combout => \vga|x_cursor[0]~18_combout\);

-- Location: LCCOMB_X27_Y20_N6
\view|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~0_combout\ = (\view|x\(1) & (\view|x\(0) $ (VCC))) # (!\view|x\(1) & (\view|x\(0) & VCC))
-- \view|Add5~1\ = CARRY((\view|x\(1) & \view|x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(1),
	datab => \view|x\(0),
	datad => VCC,
	combout => \view|Add5~0_combout\,
	cout => \view|Add5~1\);

-- Location: LCCOMB_X27_Y20_N8
\view|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~2_combout\ = (\view|x\(1) & ((\view|x\(2) & (\view|Add5~1\ & VCC)) # (!\view|x\(2) & (!\view|Add5~1\)))) # (!\view|x\(1) & ((\view|x\(2) & (!\view|Add5~1\)) # (!\view|x\(2) & ((\view|Add5~1\) # (GND)))))
-- \view|Add5~3\ = CARRY((\view|x\(1) & (!\view|x\(2) & !\view|Add5~1\)) # (!\view|x\(1) & ((!\view|Add5~1\) # (!\view|x\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(1),
	datab => \view|x\(2),
	datad => VCC,
	cin => \view|Add5~1\,
	combout => \view|Add5~2_combout\,
	cout => \view|Add5~3\);

-- Location: LCCOMB_X27_Y20_N10
\view|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~4_combout\ = ((\view|x\(3) $ (\view|x\(2) $ (!\view|Add5~3\)))) # (GND)
-- \view|Add5~5\ = CARRY((\view|x\(3) & ((\view|x\(2)) # (!\view|Add5~3\))) # (!\view|x\(3) & (\view|x\(2) & !\view|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(3),
	datab => \view|x\(2),
	datad => VCC,
	cin => \view|Add5~3\,
	combout => \view|Add5~4_combout\,
	cout => \view|Add5~5\);

-- Location: LCCOMB_X27_Y20_N12
\view|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~6_combout\ = (\view|x\(3) & ((\view|x\(4) & (\view|Add5~5\ & VCC)) # (!\view|x\(4) & (!\view|Add5~5\)))) # (!\view|x\(3) & ((\view|x\(4) & (!\view|Add5~5\)) # (!\view|x\(4) & ((\view|Add5~5\) # (GND)))))
-- \view|Add5~7\ = CARRY((\view|x\(3) & (!\view|x\(4) & !\view|Add5~5\)) # (!\view|x\(3) & ((!\view|Add5~5\) # (!\view|x\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(3),
	datab => \view|x\(4),
	datad => VCC,
	cin => \view|Add5~5\,
	combout => \view|Add5~6_combout\,
	cout => \view|Add5~7\);

-- Location: LCCOMB_X27_Y20_N14
\view|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~8_combout\ = ((\view|x\(5) $ (\view|x\(4) $ (!\view|Add5~7\)))) # (GND)
-- \view|Add5~9\ = CARRY((\view|x\(5) & ((\view|x\(4)) # (!\view|Add5~7\))) # (!\view|x\(5) & (\view|x\(4) & !\view|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(5),
	datab => \view|x\(4),
	datad => VCC,
	cin => \view|Add5~7\,
	combout => \view|Add5~8_combout\,
	cout => \view|Add5~9\);

-- Location: LCCOMB_X27_Y20_N16
\view|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~10_combout\ = (\view|x\(6) & ((\view|x\(5) & (\view|Add5~9\ & VCC)) # (!\view|x\(5) & (!\view|Add5~9\)))) # (!\view|x\(6) & ((\view|x\(5) & (!\view|Add5~9\)) # (!\view|x\(5) & ((\view|Add5~9\) # (GND)))))
-- \view|Add5~11\ = CARRY((\view|x\(6) & (!\view|x\(5) & !\view|Add5~9\)) # (!\view|x\(6) & ((!\view|Add5~9\) # (!\view|x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(6),
	datab => \view|x\(5),
	datad => VCC,
	cin => \view|Add5~9\,
	combout => \view|Add5~10_combout\,
	cout => \view|Add5~11\);

-- Location: LCCOMB_X26_Y18_N2
\view|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal0~10_combout\ = (!\view|render_counter\(1) & (\view|Equal0~9_combout\ & (!\view|render_counter\(2) & !\view|render_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|Equal0~10_combout\);

-- Location: LCCOMB_X24_Y20_N28
\view|SPRITE_X~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~10_combout\ = (\view|SPRITE_X[3]~0_combout\ & ((\view|Add5~10_combout\) # ((\view|Equal0~10_combout\ & \view|x\(6))))) # (!\view|SPRITE_X[3]~0_combout\ & (((\view|Equal0~10_combout\ & \view|x\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_X[3]~0_combout\,
	datab => \view|Add5~10_combout\,
	datac => \view|Equal0~10_combout\,
	datad => \view|x\(6),
	combout => \view|SPRITE_X~10_combout\);

-- Location: LCCOMB_X26_Y20_N14
\view|Add10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~1_cout\ = CARRY((!\view|x\(0) & !\view|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(0),
	datab => \view|Add5~0_combout\,
	datad => VCC,
	cout => \view|Add10~1_cout\);

-- Location: LCCOMB_X26_Y20_N20
\view|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~6_combout\ = (\view|Add5~6_combout\ & ((\view|Add10~5\) # (GND))) # (!\view|Add5~6_combout\ & (!\view|Add10~5\))
-- \view|Add10~7\ = CARRY((\view|Add5~6_combout\) # (!\view|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|Add5~6_combout\,
	datad => VCC,
	cin => \view|Add10~5\,
	combout => \view|Add10~6_combout\,
	cout => \view|Add10~7\);

-- Location: LCCOMB_X26_Y20_N24
\view|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~10_combout\ = (\view|Add5~10_combout\ & ((\view|Add10~9\) # (GND))) # (!\view|Add5~10_combout\ & (!\view|Add10~9\))
-- \view|Add10~11\ = CARRY((\view|Add5~10_combout\) # (!\view|Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add5~10_combout\,
	datad => VCC,
	cin => \view|Add10~9\,
	combout => \view|Add10~10_combout\,
	cout => \view|Add10~11\);

-- Location: LCCOMB_X26_Y18_N22
\view|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal6~0_combout\ = (\view|render_counter\(1) & (\view|Equal0~9_combout\ & (\view|render_counter\(2) & !\view|render_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|Equal6~0_combout\);

-- Location: LCCOMB_X26_Y18_N20
\view|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Equal4~0_combout\ = (!\view|render_counter\(1) & (\view|Equal0~9_combout\ & (\view|render_counter\(2) & !\view|render_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|render_counter\(1),
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(0),
	combout => \view|Equal4~0_combout\);

-- Location: LCCOMB_X25_Y20_N2
\view|SPRITE_X~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~11_combout\ = (\view|Add6~12_combout\ & ((\view|Equal4~0_combout\) # ((\view|Add10~10_combout\ & \view|Equal6~0_combout\)))) # (!\view|Add6~12_combout\ & (\view|Add10~10_combout\ & (\view|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add6~12_combout\,
	datab => \view|Add10~10_combout\,
	datac => \view|Equal6~0_combout\,
	datad => \view|Equal4~0_combout\,
	combout => \view|SPRITE_X~11_combout\);

-- Location: LCCOMB_X24_Y20_N18
\view|SPRITE_X~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~12_combout\ = (\view|SPRITE_X~10_combout\) # ((\view|SPRITE_X~11_combout\) # ((\view|Add3~10_combout\ & \view|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~10_combout\,
	datab => \view|SPRITE_X~10_combout\,
	datac => \view|Equal1~0_combout\,
	datad => \view|SPRITE_X~11_combout\,
	combout => \view|SPRITE_X~12_combout\);

-- Location: LCFF_X24_Y20_N19
\view|SPRITE_X[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_X~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(6));

-- Location: LCCOMB_X24_Y12_N4
\sprite_renderer|sprite_x[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[6]~feeder_combout\ = \view|SPRITE_X\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE_X\(6),
	combout => \sprite_renderer|sprite_x[6]~feeder_combout\);

-- Location: LCFF_X24_Y12_N5
\sprite_renderer|sprite_x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[6]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(6));

-- Location: LCCOMB_X24_Y20_N8
\view|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~8_combout\ = (\view|x\(4) & (\view|Add3~7\ $ (GND))) # (!\view|x\(4) & (!\view|Add3~7\ & VCC))
-- \view|Add3~9\ = CARRY((\view|x\(4) & !\view|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(4),
	datad => VCC,
	cin => \view|Add3~7\,
	combout => \view|Add3~8_combout\,
	cout => \view|Add3~9\);

-- Location: LCCOMB_X27_Y20_N0
\view|SPRITE_X~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~13_combout\ = (\view|SPRITE_X[3]~0_combout\ & ((\view|Add5~8_combout\) # ((\view|x\(5) & \view|Equal0~10_combout\)))) # (!\view|SPRITE_X[3]~0_combout\ & (\view|x\(5) & ((\view|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_X[3]~0_combout\,
	datab => \view|x\(5),
	datac => \view|Add5~8_combout\,
	datad => \view|Equal0~10_combout\,
	combout => \view|SPRITE_X~13_combout\);

-- Location: LCCOMB_X24_Y20_N20
\view|SPRITE_X~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~15_combout\ = (\view|SPRITE_X~14_combout\) # ((\view|SPRITE_X~13_combout\) # ((\view|Add3~8_combout\ & \view|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|SPRITE_X~14_combout\,
	datab => \view|Add3~8_combout\,
	datac => \view|SPRITE_X~13_combout\,
	datad => \view|Equal1~0_combout\,
	combout => \view|SPRITE_X~15_combout\);

-- Location: LCFF_X24_Y20_N21
\view|SPRITE_X[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_X~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(5));

-- Location: LCCOMB_X26_Y12_N4
\sprite_renderer|sprite_x[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[5]~feeder_combout\ = \view|SPRITE_X\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_X\(5),
	combout => \sprite_renderer|sprite_x[5]~feeder_combout\);

-- Location: LCFF_X26_Y12_N5
\sprite_renderer|sprite_x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[5]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(5));

-- Location: LCCOMB_X25_Y20_N28
\view|SPRITE_X~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~17_combout\ = (\view|Add6~8_combout\ & ((\view|Equal4~0_combout\) # ((\view|Add10~6_combout\ & \view|Equal6~0_combout\)))) # (!\view|Add6~8_combout\ & (\view|Add10~6_combout\ & (\view|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add6~8_combout\,
	datab => \view|Add10~6_combout\,
	datac => \view|Equal6~0_combout\,
	datad => \view|Equal4~0_combout\,
	combout => \view|SPRITE_X~17_combout\);

-- Location: LCCOMB_X30_Y18_N10
\view|Add2~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add2~94_combout\ = (!\view|state.SHOW_SPRITES~regout\ & \view|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|state.SHOW_SPRITES~regout\,
	datad => \view|Add2~2_combout\,
	combout => \view|Add2~94_combout\);

-- Location: LCFF_X30_Y18_N11
\view|render_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Add2~94_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \view|render_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|render_counter\(1));

-- Location: LCCOMB_X26_Y18_N28
\view|SPRITE_X[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X[3]~0_combout\ = (\view|Equal0~9_combout\ & (!\view|render_counter\(2) & \view|render_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|Equal0~9_combout\,
	datac => \view|render_counter\(2),
	datad => \view|render_counter\(1),
	combout => \view|SPRITE_X[3]~0_combout\);

-- Location: LCCOMB_X27_Y20_N26
\view|SPRITE_X~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~16_combout\ = (\view|Equal0~10_combout\ & ((\view|x\(4)) # ((\view|SPRITE_X[3]~0_combout\ & \view|Add5~6_combout\)))) # (!\view|Equal0~10_combout\ & (((\view|SPRITE_X[3]~0_combout\ & \view|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal0~10_combout\,
	datab => \view|x\(4),
	datac => \view|SPRITE_X[3]~0_combout\,
	datad => \view|Add5~6_combout\,
	combout => \view|SPRITE_X~16_combout\);

-- Location: LCCOMB_X24_Y20_N22
\view|SPRITE_X~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~18_combout\ = (\view|SPRITE_X~17_combout\) # ((\view|SPRITE_X~16_combout\) # ((\view|Add3~6_combout\ & \view|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add3~6_combout\,
	datab => \view|SPRITE_X~17_combout\,
	datac => \view|Equal1~0_combout\,
	datad => \view|SPRITE_X~16_combout\,
	combout => \view|SPRITE_X~18_combout\);

-- Location: LCFF_X24_Y20_N23
\view|SPRITE_X[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_X~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(4));

-- Location: LCCOMB_X26_Y12_N22
\sprite_renderer|sprite_x[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[4]~feeder_combout\ = \view|SPRITE_X\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_X\(4),
	combout => \sprite_renderer|sprite_x[4]~feeder_combout\);

-- Location: LCFF_X26_Y12_N23
\sprite_renderer|sprite_x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[4]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(4));

-- Location: LCCOMB_X27_Y20_N30
\view|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector8~0_combout\ = (\view|x\(1) & ((\view|Equal0~10_combout\) # (\view|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal0~10_combout\,
	datab => \view|Equal6~0_combout\,
	datad => \view|x\(1),
	combout => \view|Selector8~0_combout\);

-- Location: LCCOMB_X25_Y20_N0
\view|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Selector8~2_combout\ = (\view|Selector8~1_combout\) # ((\view|Selector8~0_combout\) # ((\view|SPRITE_X[3]~0_combout\ & \view|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Selector8~1_combout\,
	datab => \view|Selector8~0_combout\,
	datac => \view|SPRITE_X[3]~0_combout\,
	datad => \view|Add5~0_combout\,
	combout => \view|Selector8~2_combout\);

-- Location: LCFF_X25_Y20_N1
\view|SPRITE_X[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|Selector8~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(1));

-- Location: LCCOMB_X24_Y12_N8
\sprite_renderer|sprite_x[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[1]~feeder_combout\ = \view|SPRITE_X\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \view|SPRITE_X\(1),
	combout => \sprite_renderer|sprite_x[1]~feeder_combout\);

-- Location: LCFF_X24_Y12_N9
\sprite_renderer|sprite_x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[1]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(1));

-- Location: LCCOMB_X24_Y12_N12
\sprite_renderer|FB_X0[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[1]~16_combout\ = (\sprite_renderer|column\(1) & ((\sprite_renderer|sprite_x\(1) & (\sprite_renderer|FB_X0[0]~11\ & VCC)) # (!\sprite_renderer|sprite_x\(1) & (!\sprite_renderer|FB_X0[0]~11\)))) # (!\sprite_renderer|column\(1) & 
-- ((\sprite_renderer|sprite_x\(1) & (!\sprite_renderer|FB_X0[0]~11\)) # (!\sprite_renderer|sprite_x\(1) & ((\sprite_renderer|FB_X0[0]~11\) # (GND)))))
-- \sprite_renderer|FB_X0[1]~17\ = CARRY((\sprite_renderer|column\(1) & (!\sprite_renderer|sprite_x\(1) & !\sprite_renderer|FB_X0[0]~11\)) # (!\sprite_renderer|column\(1) & ((!\sprite_renderer|FB_X0[0]~11\) # (!\sprite_renderer|sprite_x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(1),
	datab => \sprite_renderer|sprite_x\(1),
	datad => VCC,
	cin => \sprite_renderer|FB_X0[0]~11\,
	combout => \sprite_renderer|FB_X0[1]~16_combout\,
	cout => \sprite_renderer|FB_X0[1]~17\);

-- Location: LCCOMB_X24_Y12_N14
\sprite_renderer|FB_X0[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[2]~18_combout\ = ((\sprite_renderer|sprite_x\(2) $ (\sprite_renderer|column\(2) $ (!\sprite_renderer|FB_X0[1]~17\)))) # (GND)
-- \sprite_renderer|FB_X0[2]~19\ = CARRY((\sprite_renderer|sprite_x\(2) & ((\sprite_renderer|column\(2)) # (!\sprite_renderer|FB_X0[1]~17\))) # (!\sprite_renderer|sprite_x\(2) & (\sprite_renderer|column\(2) & !\sprite_renderer|FB_X0[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_x\(2),
	datab => \sprite_renderer|column\(2),
	datad => VCC,
	cin => \sprite_renderer|FB_X0[1]~17\,
	combout => \sprite_renderer|FB_X0[2]~18_combout\,
	cout => \sprite_renderer|FB_X0[2]~19\);

-- Location: LCCOMB_X24_Y12_N16
\sprite_renderer|FB_X0[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[3]~20_combout\ = (\sprite_renderer|sprite_x\(3) & ((\sprite_renderer|column\(3) & (\sprite_renderer|FB_X0[2]~19\ & VCC)) # (!\sprite_renderer|column\(3) & (!\sprite_renderer|FB_X0[2]~19\)))) # (!\sprite_renderer|sprite_x\(3) & 
-- ((\sprite_renderer|column\(3) & (!\sprite_renderer|FB_X0[2]~19\)) # (!\sprite_renderer|column\(3) & ((\sprite_renderer|FB_X0[2]~19\) # (GND)))))
-- \sprite_renderer|FB_X0[3]~21\ = CARRY((\sprite_renderer|sprite_x\(3) & (!\sprite_renderer|column\(3) & !\sprite_renderer|FB_X0[2]~19\)) # (!\sprite_renderer|sprite_x\(3) & ((!\sprite_renderer|FB_X0[2]~19\) # (!\sprite_renderer|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_x\(3),
	datab => \sprite_renderer|column\(3),
	datad => VCC,
	cin => \sprite_renderer|FB_X0[2]~19\,
	combout => \sprite_renderer|FB_X0[3]~20_combout\,
	cout => \sprite_renderer|FB_X0[3]~21\);

-- Location: LCCOMB_X24_Y12_N18
\sprite_renderer|FB_X0[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[4]~22_combout\ = ((\sprite_renderer|column\(4) $ (\sprite_renderer|sprite_x\(4) $ (!\sprite_renderer|FB_X0[3]~21\)))) # (GND)
-- \sprite_renderer|FB_X0[4]~23\ = CARRY((\sprite_renderer|column\(4) & ((\sprite_renderer|sprite_x\(4)) # (!\sprite_renderer|FB_X0[3]~21\))) # (!\sprite_renderer|column\(4) & (\sprite_renderer|sprite_x\(4) & !\sprite_renderer|FB_X0[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(4),
	datab => \sprite_renderer|sprite_x\(4),
	datad => VCC,
	cin => \sprite_renderer|FB_X0[3]~21\,
	combout => \sprite_renderer|FB_X0[4]~22_combout\,
	cout => \sprite_renderer|FB_X0[4]~23\);

-- Location: LCCOMB_X24_Y12_N20
\sprite_renderer|FB_X0[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[5]~24_combout\ = (\sprite_renderer|column\(5) & ((\sprite_renderer|sprite_x\(5) & (\sprite_renderer|FB_X0[4]~23\ & VCC)) # (!\sprite_renderer|sprite_x\(5) & (!\sprite_renderer|FB_X0[4]~23\)))) # (!\sprite_renderer|column\(5) & 
-- ((\sprite_renderer|sprite_x\(5) & (!\sprite_renderer|FB_X0[4]~23\)) # (!\sprite_renderer|sprite_x\(5) & ((\sprite_renderer|FB_X0[4]~23\) # (GND)))))
-- \sprite_renderer|FB_X0[5]~25\ = CARRY((\sprite_renderer|column\(5) & (!\sprite_renderer|sprite_x\(5) & !\sprite_renderer|FB_X0[4]~23\)) # (!\sprite_renderer|column\(5) & ((!\sprite_renderer|FB_X0[4]~23\) # (!\sprite_renderer|sprite_x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(5),
	datab => \sprite_renderer|sprite_x\(5),
	datad => VCC,
	cin => \sprite_renderer|FB_X0[4]~23\,
	combout => \sprite_renderer|FB_X0[5]~24_combout\,
	cout => \sprite_renderer|FB_X0[5]~25\);

-- Location: LCCOMB_X24_Y12_N22
\sprite_renderer|FB_X0[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[6]~26_combout\ = ((\sprite_renderer|column\(6) $ (\sprite_renderer|sprite_x\(6) $ (!\sprite_renderer|FB_X0[5]~25\)))) # (GND)
-- \sprite_renderer|FB_X0[6]~27\ = CARRY((\sprite_renderer|column\(6) & ((\sprite_renderer|sprite_x\(6)) # (!\sprite_renderer|FB_X0[5]~25\))) # (!\sprite_renderer|column\(6) & (\sprite_renderer|sprite_x\(6) & !\sprite_renderer|FB_X0[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|column\(6),
	datab => \sprite_renderer|sprite_x\(6),
	datad => VCC,
	cin => \sprite_renderer|FB_X0[5]~25\,
	combout => \sprite_renderer|FB_X0[6]~26_combout\,
	cout => \sprite_renderer|FB_X0[6]~27\);

-- Location: LCCOMB_X24_Y12_N24
\sprite_renderer|FB_X0[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[7]~28_combout\ = (\sprite_renderer|sprite_x\(7) & ((\sprite_renderer|column\(7) & (\sprite_renderer|FB_X0[6]~27\ & VCC)) # (!\sprite_renderer|column\(7) & (!\sprite_renderer|FB_X0[6]~27\)))) # (!\sprite_renderer|sprite_x\(7) & 
-- ((\sprite_renderer|column\(7) & (!\sprite_renderer|FB_X0[6]~27\)) # (!\sprite_renderer|column\(7) & ((\sprite_renderer|FB_X0[6]~27\) # (GND)))))
-- \sprite_renderer|FB_X0[7]~29\ = CARRY((\sprite_renderer|sprite_x\(7) & (!\sprite_renderer|column\(7) & !\sprite_renderer|FB_X0[6]~27\)) # (!\sprite_renderer|sprite_x\(7) & ((!\sprite_renderer|FB_X0[6]~27\) # (!\sprite_renderer|column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_x\(7),
	datab => \sprite_renderer|column\(7),
	datad => VCC,
	cin => \sprite_renderer|FB_X0[6]~27\,
	combout => \sprite_renderer|FB_X0[7]~28_combout\,
	cout => \sprite_renderer|FB_X0[7]~29\);

-- Location: LCFF_X24_Y12_N25
\sprite_renderer|FB_X0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[7]~28_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(7));

-- Location: LCCOMB_X20_Y13_N28
\vga|x_start~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~2_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(7),
	combout => \vga|x_start~2_combout\);

-- Location: LCFF_X20_Y13_N29
\vga|x_start[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~2_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(7));

-- Location: LCCOMB_X21_Y13_N16
\vga|x_cursor[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[7]~32_combout\ = (\vga|x_cursor\(7) & (\vga|x_cursor[6]~31\ & VCC)) # (!\vga|x_cursor\(7) & (!\vga|x_cursor[6]~31\))
-- \vga|x_cursor[7]~33\ = CARRY((!\vga|x_cursor\(7) & !\vga|x_cursor[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(7),
	datad => VCC,
	cin => \vga|x_cursor[6]~31\,
	combout => \vga|x_cursor[7]~32_combout\,
	cout => \vga|x_cursor[7]~33\);

-- Location: LCCOMB_X21_Y13_N12
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

-- Location: LCCOMB_X21_Y13_N10
\vga|x_cursor[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[4]~26_combout\ = (\vga|x_cursor\(4) & ((GND) # (!\vga|x_cursor[3]~25\))) # (!\vga|x_cursor\(4) & (\vga|x_cursor[3]~25\ $ (GND)))
-- \vga|x_cursor[4]~27\ = CARRY((\vga|x_cursor\(4)) # (!\vga|x_cursor[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(4),
	datad => VCC,
	cin => \vga|x_cursor[3]~25\,
	combout => \vga|x_cursor[4]~26_combout\,
	cout => \vga|x_cursor[4]~27\);

-- Location: LCFF_X24_Y12_N19
\sprite_renderer|FB_X0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[4]~22_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(4));

-- Location: LCCOMB_X20_Y13_N24
\vga|x_start~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~5_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(4),
	combout => \vga|x_start~5_combout\);

-- Location: LCFF_X20_Y13_N25
\vga|x_start[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~5_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(4));

-- Location: LCCOMB_X21_Y13_N22
\vga|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~14_combout\ = (\vga|x_cursor[7]~13_combout\ & (\vga|Add1~12_combout\)) # (!\vga|x_cursor[7]~13_combout\ & ((\vga|x_start\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add1~12_combout\,
	datab => \vga|x_start\(4),
	datad => \vga|x_cursor[7]~13_combout\,
	combout => \vga|Add1~14_combout\);

-- Location: LCFF_X21_Y13_N11
\vga|x_cursor[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[4]~26_combout\,
	sdata => \vga|Add1~14_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(4));

-- Location: LCCOMB_X20_Y13_N4
\vga|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~6_combout\ = (\vga|x_cursor\(2) & (\vga|Add1~4\ $ (GND))) # (!\vga|x_cursor\(2) & (!\vga|Add1~4\ & VCC))
-- \vga|Add1~7\ = CARRY((\vga|x_cursor\(2) & !\vga|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(2),
	datad => VCC,
	cin => \vga|Add1~4\,
	combout => \vga|Add1~6_combout\,
	cout => \vga|Add1~7\);

-- Location: LCCOMB_X20_Y13_N6
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

-- Location: LCCOMB_X20_Y13_N10
\vga|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~15_combout\ = (\vga|x_cursor\(5) & (!\vga|Add1~13\)) # (!\vga|x_cursor\(5) & ((\vga|Add1~13\) # (GND)))
-- \vga|Add1~16\ = CARRY((!\vga|Add1~13\) # (!\vga|x_cursor\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(5),
	datad => VCC,
	cin => \vga|Add1~13\,
	combout => \vga|Add1~15_combout\,
	cout => \vga|Add1~16\);

-- Location: LCFF_X24_Y12_N21
\sprite_renderer|FB_X0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[5]~24_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(5));

-- Location: LCCOMB_X23_Y13_N0
\vga|x_start~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~8_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(5),
	combout => \vga|x_start~8_combout\);

-- Location: LCFF_X23_Y13_N1
\vga|x_start[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~8_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(5));

-- Location: LCCOMB_X22_Y13_N12
\vga|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~17_combout\ = (\vga|x_cursor[7]~13_combout\ & (\vga|Add1~15_combout\)) # (!\vga|x_cursor[7]~13_combout\ & ((\vga|x_start\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|Add1~15_combout\,
	datac => \vga|x_start\(5),
	datad => \vga|x_cursor[7]~13_combout\,
	combout => \vga|Add1~17_combout\);

-- Location: LCFF_X21_Y13_N13
\vga|x_cursor[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[5]~28_combout\,
	sdata => \vga|Add1~17_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(5));

-- Location: LCCOMB_X20_Y13_N12
\vga|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~18_combout\ = (\vga|x_cursor\(6) & (\vga|Add1~16\ $ (GND))) # (!\vga|x_cursor\(6) & (!\vga|Add1~16\ & VCC))
-- \vga|Add1~19\ = CARRY((\vga|x_cursor\(6) & !\vga|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(6),
	datad => VCC,
	cin => \vga|Add1~16\,
	combout => \vga|Add1~18_combout\,
	cout => \vga|Add1~19\);

-- Location: LCCOMB_X20_Y13_N14
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

-- Location: LCCOMB_X22_Y13_N14
\vga|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~23_combout\ = (\vga|x_cursor[7]~13_combout\ & (\vga|Add1~21_combout\)) # (!\vga|x_cursor[7]~13_combout\ & ((\vga|x_start\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|Add1~21_combout\,
	datac => \vga|x_start\(7),
	datad => \vga|x_cursor[7]~13_combout\,
	combout => \vga|Add1~23_combout\);

-- Location: LCFF_X21_Y13_N17
\vga|x_cursor[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[7]~32_combout\,
	sdata => \vga|Add1~23_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(7));

-- Location: LCCOMB_X24_Y12_N26
\sprite_renderer|FB_X0[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[8]~30_combout\ = ((\sprite_renderer|sprite_x\(8) $ (\sprite_renderer|column\(8) $ (!\sprite_renderer|FB_X0[7]~29\)))) # (GND)
-- \sprite_renderer|FB_X0[8]~31\ = CARRY((\sprite_renderer|sprite_x\(8) & ((\sprite_renderer|column\(8)) # (!\sprite_renderer|FB_X0[7]~29\))) # (!\sprite_renderer|sprite_x\(8) & (\sprite_renderer|column\(8) & !\sprite_renderer|FB_X0[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_x\(8),
	datab => \sprite_renderer|column\(8),
	datad => VCC,
	cin => \sprite_renderer|FB_X0[7]~29\,
	combout => \sprite_renderer|FB_X0[8]~30_combout\,
	cout => \sprite_renderer|FB_X0[8]~31\);

-- Location: LCFF_X24_Y12_N27
\sprite_renderer|FB_X0[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[8]~30_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(8));

-- Location: LCCOMB_X22_Y10_N20
\vga|x_start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~1_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(8),
	combout => \vga|x_start~1_combout\);

-- Location: LCFF_X22_Y10_N21
\vga|x_start[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~1_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(8));

-- Location: LCCOMB_X20_Y13_N30
\vga|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~0_combout\ = (\vga|x_cursor\(8) & (\vga|x_start\(8) & (\vga|x_start\(7) $ (!\vga|x_cursor\(7))))) # (!\vga|x_cursor\(8) & (!\vga|x_start\(8) & (\vga|x_start\(7) $ (!\vga|x_cursor\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(8),
	datab => \vga|x_start\(7),
	datac => \vga|x_cursor\(7),
	datad => \vga|x_start\(8),
	combout => \vga|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y18_N22
\view|x[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|x[9]~25_combout\ = \view|x[8]~24\ $ (!\view|x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \view|x\(9),
	cin => \view|x[8]~24\,
	combout => \view|x[9]~25_combout\);

-- Location: LCFF_X27_Y18_N23
\view|x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \view|render_asap~clkctrl_outclk\,
	datain => \view|x[9]~25_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|x\(9));

-- Location: LCCOMB_X27_Y20_N18
\view|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~12_combout\ = ((\view|x\(6) $ (\view|x\(7) $ (!\view|Add5~11\)))) # (GND)
-- \view|Add5~13\ = CARRY((\view|x\(6) & ((\view|x\(7)) # (!\view|Add5~11\))) # (!\view|x\(6) & (\view|x\(7) & !\view|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(6),
	datab => \view|x\(7),
	datad => VCC,
	cin => \view|Add5~11\,
	combout => \view|Add5~12_combout\,
	cout => \view|Add5~13\);

-- Location: LCCOMB_X27_Y20_N20
\view|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~14_combout\ = (\view|x\(8) & ((\view|x\(7) & (\view|Add5~13\ & VCC)) # (!\view|x\(7) & (!\view|Add5~13\)))) # (!\view|x\(8) & ((\view|x\(7) & (!\view|Add5~13\)) # (!\view|x\(7) & ((\view|Add5~13\) # (GND)))))
-- \view|Add5~15\ = CARRY((\view|x\(8) & (!\view|x\(7) & !\view|Add5~13\)) # (!\view|x\(8) & ((!\view|Add5~13\) # (!\view|x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(8),
	datab => \view|x\(7),
	datad => VCC,
	cin => \view|Add5~13\,
	combout => \view|Add5~14_combout\,
	cout => \view|Add5~15\);

-- Location: LCCOMB_X27_Y20_N22
\view|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add5~16_combout\ = \view|x\(9) $ (\view|Add5~15\ $ (!\view|x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(9),
	datad => \view|x\(8),
	cin => \view|Add5~15\,
	combout => \view|Add5~16_combout\);

-- Location: LCCOMB_X27_Y20_N24
\view|SPRITE_X~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~1_combout\ = (\view|Equal0~10_combout\ & ((\view|x\(9)) # ((\view|Add5~16_combout\ & \view|SPRITE_X[3]~0_combout\)))) # (!\view|Equal0~10_combout\ & (((\view|Add5~16_combout\ & \view|SPRITE_X[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal0~10_combout\,
	datab => \view|x\(9),
	datac => \view|Add5~16_combout\,
	datad => \view|SPRITE_X[3]~0_combout\,
	combout => \view|SPRITE_X~1_combout\);

-- Location: LCCOMB_X24_Y20_N16
\view|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add3~16_combout\ = \view|x\(8) $ (\view|Add3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(8),
	cin => \view|Add3~15\,
	combout => \view|Add3~16_combout\);

-- Location: LCCOMB_X25_Y20_N8
\view|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~1_cout\ = CARRY(!\view|x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \view|x\(0),
	datad => VCC,
	cout => \view|Add6~1_cout\);

-- Location: LCCOMB_X25_Y20_N26
\view|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add6~18_combout\ = \view|x\(9) $ (!\view|Add6~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|x\(9),
	cin => \view|Add6~17\,
	combout => \view|Add6~18_combout\);

-- Location: LCCOMB_X26_Y20_N30
\view|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|Add10~16_combout\ = \view|Add5~16_combout\ $ (\view|Add10~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \view|Add5~16_combout\,
	cin => \view|Add10~15\,
	combout => \view|Add10~16_combout\);

-- Location: LCCOMB_X26_Y20_N6
\view|SPRITE_X~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~2_combout\ = (\view|Equal6~0_combout\ & ((\view|Add10~16_combout\) # ((\view|Add6~18_combout\ & \view|Equal4~0_combout\)))) # (!\view|Equal6~0_combout\ & (\view|Add6~18_combout\ & (\view|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal6~0_combout\,
	datab => \view|Add6~18_combout\,
	datac => \view|Equal4~0_combout\,
	datad => \view|Add10~16_combout\,
	combout => \view|SPRITE_X~2_combout\);

-- Location: LCCOMB_X26_Y20_N8
\view|SPRITE_X~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \view|SPRITE_X~3_combout\ = (\view|SPRITE_X~1_combout\) # ((\view|SPRITE_X~2_combout\) # ((\view|Equal1~0_combout\ & \view|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \view|Equal1~0_combout\,
	datab => \view|SPRITE_X~1_combout\,
	datac => \view|Add3~16_combout\,
	datad => \view|SPRITE_X~2_combout\,
	combout => \view|SPRITE_X~3_combout\);

-- Location: LCFF_X26_Y20_N9
\view|SPRITE_X[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \view|SPRITE_X~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \view|ALT_INV_state.RENDER~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \view|SPRITE_X\(9));

-- Location: LCCOMB_X24_Y12_N0
\sprite_renderer|sprite_x[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|sprite_x[9]~feeder_combout\ = \view|SPRITE_X\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \view|SPRITE_X\(9),
	combout => \sprite_renderer|sprite_x[9]~feeder_combout\);

-- Location: LCFF_X24_Y12_N1
\sprite_renderer|sprite_x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|sprite_x[9]~feeder_combout\,
	ena => \sprite_renderer|sprite_to_draw.color[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|sprite_x\(9));

-- Location: LCCOMB_X25_Y12_N0
\sprite_renderer|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|Add1~30_combout\ = (\sprite_renderer|Add1~28_combout\ & ((\sprite_renderer|column\(31)) # (\sprite_renderer|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|column\(31),
	datac => \sprite_renderer|Add1~28_combout\,
	datad => \sprite_renderer|LessThan0~9_combout\,
	combout => \sprite_renderer|Add1~30_combout\);

-- Location: LCFF_X25_Y12_N1
\sprite_renderer|column[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|Add1~30_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|ALT_INV_state.DRAWING~regout\,
	ena => \sprite_renderer|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|column\(9));

-- Location: LCCOMB_X24_Y12_N28
\sprite_renderer|FB_X0[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_X0[9]~32_combout\ = \sprite_renderer|sprite_x\(9) $ (\sprite_renderer|FB_X0[8]~31\ $ (\sprite_renderer|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|sprite_x\(9),
	datad => \sprite_renderer|column\(9),
	cin => \sprite_renderer|FB_X0[8]~31\,
	combout => \sprite_renderer|FB_X0[9]~32_combout\);

-- Location: LCFF_X24_Y12_N29
\sprite_renderer|FB_X0[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[9]~32_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(9));

-- Location: LCCOMB_X22_Y13_N16
\vga|x_end~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~0_combout\ = (\sprite_renderer|FB_X0\(9) & !\sprite_renderer|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|FB_X0\(9),
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|x_end~0_combout\);

-- Location: LCFF_X22_Y13_N17
\vga|x_end[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~0_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(9));

-- Location: LCCOMB_X22_Y13_N0
\vga|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~1_combout\ = (\vga|x_cursor\(9) & (\vga|x_end\(9) & (\vga|x_start\(0) $ (!\vga|x_cursor\(0))))) # (!\vga|x_cursor\(9) & (!\vga|x_end\(9) & (\vga|x_start\(0) $ (!\vga|x_cursor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(9),
	datab => \vga|x_start\(0),
	datac => \vga|x_end\(9),
	datad => \vga|x_cursor\(0),
	combout => \vga|Equal2~1_combout\);

-- Location: LCFF_X24_Y12_N13
\sprite_renderer|FB_X0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[1]~16_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(1));

-- Location: LCCOMB_X20_Y11_N28
\vga|x_start~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~4_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(1),
	combout => \vga|x_start~4_combout\);

-- Location: LCFF_X20_Y11_N29
\vga|x_start[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~4_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(1));

-- Location: LCFF_X24_Y12_N15
\sprite_renderer|FB_X0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[2]~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(2));

-- Location: LCCOMB_X23_Y13_N12
\vga|x_start~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~3_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_X0\(2),
	combout => \vga|x_start~3_combout\);

-- Location: LCFF_X23_Y13_N13
\vga|x_start[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~3_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(2));

-- Location: LCCOMB_X21_Y13_N0
\vga|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~2_combout\ = (\vga|x_cursor\(2) & (\vga|x_start\(2) & (\vga|x_start\(1) $ (!\vga|x_cursor\(1))))) # (!\vga|x_cursor\(2) & (!\vga|x_start\(2) & (\vga|x_start\(1) $ (!\vga|x_cursor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(2),
	datab => \vga|x_start\(1),
	datac => \vga|x_cursor\(1),
	datad => \vga|x_start\(2),
	combout => \vga|Equal2~2_combout\);

-- Location: LCFF_X24_Y12_N23
\sprite_renderer|FB_X0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[6]~26_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(6));

-- Location: LCCOMB_X23_Y13_N22
\vga|x_start~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~7_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(6),
	combout => \vga|x_start~7_combout\);

-- Location: LCFF_X23_Y13_N23
\vga|x_start[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~7_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(6));

-- Location: LCCOMB_X22_Y13_N2
\vga|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~4_combout\ = (\vga|x_cursor\(6) & (\vga|x_start\(6) & (\vga|x_start\(5) $ (!\vga|x_cursor\(5))))) # (!\vga|x_cursor\(6) & (!\vga|x_start\(6) & (\vga|x_start\(5) $ (!\vga|x_cursor\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(6),
	datab => \vga|x_start\(5),
	datac => \vga|x_cursor\(5),
	datad => \vga|x_start\(6),
	combout => \vga|Equal2~4_combout\);

-- Location: LCCOMB_X22_Y13_N20
\vga|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal2~5_combout\ = (\vga|Equal2~3_combout\ & (\vga|Equal2~1_combout\ & (\vga|Equal2~2_combout\ & \vga|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal2~3_combout\,
	datab => \vga|Equal2~1_combout\,
	datac => \vga|Equal2~2_combout\,
	datad => \vga|Equal2~4_combout\,
	combout => \vga|Equal2~5_combout\);

-- Location: LCCOMB_X22_Y13_N22
\vga|x_cursor[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~16_combout\ = ((\vga|x_cursor[0]~15_combout\ & ((!\vga|Equal2~5_combout\) # (!\vga|Equal2~0_combout\)))) # (!\vga|state.DRAWING_RECT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor[0]~15_combout\,
	datab => \vga|Equal2~0_combout\,
	datac => \vga|Equal2~5_combout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|x_cursor[0]~16_combout\);

-- Location: LCCOMB_X22_Y13_N24
\vga|x_cursor[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~17_combout\ = (!\vga|vga_fb|SRAM_WE_N~0_combout\ & ((\vga|x_cursor[0]~16_combout\) # ((\vga|substate.DRAWING_R1~regout\ & !\vga|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datab => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datac => \vga|Equal0~6_combout\,
	datad => \vga|x_cursor[0]~16_combout\,
	combout => \vga|x_cursor[0]~17_combout\);

-- Location: LCCOMB_X21_Y13_N26
\vga|x_cursor[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[0]~19_combout\ = (\vga|state.IDLE~regout\ & (\RESET_N~regout\ & ((\vga|x_cursor[0]~18_combout\) # (\vga|x_cursor[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.IDLE~regout\,
	datab => \vga|x_cursor[0]~18_combout\,
	datac => \RESET_N~regout\,
	datad => \vga|x_cursor[0]~17_combout\,
	combout => \vga|x_cursor[0]~19_combout\);

-- Location: LCFF_X21_Y13_N3
\vga|x_cursor[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[0]~10_combout\,
	sdata => \vga|Add1~2_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(0));

-- Location: LCCOMB_X21_Y13_N4
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

-- Location: LCCOMB_X20_Y11_N30
\vga|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~5_combout\ = (\vga|x_cursor[7]~13_combout\ & (\vga|Add1~3_combout\)) # (!\vga|x_cursor[7]~13_combout\ & ((\vga|x_start\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add1~3_combout\,
	datac => \vga|x_start\(1),
	datad => \vga|x_cursor[7]~13_combout\,
	combout => \vga|Add1~5_combout\);

-- Location: LCFF_X21_Y13_N5
\vga|x_cursor[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[1]~20_combout\,
	sdata => \vga|Add1~5_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(1));

-- Location: LCCOMB_X21_Y13_N6
\vga|x_cursor[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[2]~22_combout\ = (\vga|x_cursor\(2) & ((GND) # (!\vga|x_cursor[1]~21\))) # (!\vga|x_cursor\(2) & (\vga|x_cursor[1]~21\ $ (GND)))
-- \vga|x_cursor[2]~23\ = CARRY((\vga|x_cursor\(2)) # (!\vga|x_cursor[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(2),
	datad => VCC,
	cin => \vga|x_cursor[1]~21\,
	combout => \vga|x_cursor[2]~22_combout\,
	cout => \vga|x_cursor[2]~23\);

-- Location: LCCOMB_X21_Y13_N8
\vga|x_cursor[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[3]~24_combout\ = (\vga|x_cursor\(3) & (\vga|x_cursor[2]~23\ & VCC)) # (!\vga|x_cursor\(3) & (!\vga|x_cursor[2]~23\))
-- \vga|x_cursor[3]~25\ = CARRY((!\vga|x_cursor\(3) & !\vga|x_cursor[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(3),
	datad => VCC,
	cin => \vga|x_cursor[2]~23\,
	combout => \vga|x_cursor[3]~24_combout\,
	cout => \vga|x_cursor[3]~25\);

-- Location: LCFF_X24_Y12_N17
\sprite_renderer|FB_X0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_X0[3]~20_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_X0\(3));

-- Location: LCCOMB_X20_Y13_N26
\vga|x_start~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_start~6_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_X0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(3),
	combout => \vga|x_start~6_combout\);

-- Location: LCFF_X20_Y13_N27
\vga|x_start[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_start~6_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_start\(3));

-- Location: LCCOMB_X22_Y13_N26
\vga|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~11_combout\ = (\vga|x_cursor[7]~13_combout\ & ((\vga|Add1~9_combout\))) # (!\vga|x_cursor[7]~13_combout\ & (\vga|x_start\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_start\(3),
	datac => \vga|Add1~9_combout\,
	datad => \vga|x_cursor[7]~13_combout\,
	combout => \vga|Add1~11_combout\);

-- Location: LCFF_X21_Y13_N9
\vga|x_cursor[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[3]~24_combout\,
	sdata => \vga|Add1~11_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(3));

-- Location: LCCOMB_X21_Y13_N14
\vga|x_cursor[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[6]~30_combout\ = (\vga|x_cursor\(6) & ((GND) # (!\vga|x_cursor[5]~29\))) # (!\vga|x_cursor\(6) & (\vga|x_cursor[5]~29\ $ (GND)))
-- \vga|x_cursor[6]~31\ = CARRY((\vga|x_cursor\(6)) # (!\vga|x_cursor[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(6),
	datad => VCC,
	cin => \vga|x_cursor[5]~29\,
	combout => \vga|x_cursor[6]~30_combout\,
	cout => \vga|x_cursor[6]~31\);

-- Location: LCCOMB_X20_Y11_N0
\vga|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~20_combout\ = (\vga|x_cursor[7]~13_combout\ & ((\vga|Add1~18_combout\))) # (!\vga|x_cursor[7]~13_combout\ & (\vga|x_start\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_start\(6),
	datac => \vga|Add1~18_combout\,
	datad => \vga|x_cursor[7]~13_combout\,
	combout => \vga|Add1~20_combout\);

-- Location: LCFF_X21_Y13_N15
\vga|x_cursor[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[6]~30_combout\,
	sdata => \vga|Add1~20_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(6));

-- Location: LCCOMB_X21_Y13_N18
\vga|x_cursor[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[8]~34_combout\ = (\vga|x_cursor\(8) & ((GND) # (!\vga|x_cursor[7]~33\))) # (!\vga|x_cursor\(8) & (\vga|x_cursor[7]~33\ $ (GND)))
-- \vga|x_cursor[8]~35\ = CARRY((\vga|x_cursor\(8)) # (!\vga|x_cursor[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor\(8),
	datad => VCC,
	cin => \vga|x_cursor[7]~33\,
	combout => \vga|x_cursor[8]~34_combout\,
	cout => \vga|x_cursor[8]~35\);

-- Location: LCCOMB_X20_Y13_N16
\vga|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~24_combout\ = (\vga|x_cursor\(8) & (\vga|Add1~22\ $ (GND))) # (!\vga|x_cursor\(8) & (!\vga|Add1~22\ & VCC))
-- \vga|Add1~25\ = CARRY((\vga|x_cursor\(8) & !\vga|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(8),
	datad => VCC,
	cin => \vga|Add1~22\,
	combout => \vga|Add1~24_combout\,
	cout => \vga|Add1~25\);

-- Location: LCCOMB_X22_Y13_N8
\vga|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~26_combout\ = (\vga|x_cursor[7]~13_combout\ & (\vga|Add1~24_combout\)) # (!\vga|x_cursor[7]~13_combout\ & ((\vga|x_start\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|Add1~24_combout\,
	datac => \vga|x_start\(8),
	datad => \vga|x_cursor[7]~13_combout\,
	combout => \vga|Add1~26_combout\);

-- Location: LCFF_X21_Y13_N19
\vga|x_cursor[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[8]~34_combout\,
	sdata => \vga|Add1~26_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(8));

-- Location: LCCOMB_X21_Y13_N20
\vga|x_cursor[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_cursor[9]~37_combout\ = \vga|x_cursor\(9) $ (!\vga|x_cursor[8]~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(9),
	cin => \vga|x_cursor[8]~35\,
	combout => \vga|x_cursor[9]~37_combout\);

-- Location: LCCOMB_X20_Y13_N18
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

-- Location: LCCOMB_X22_Y13_N6
\vga|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~29_combout\ = (\vga|x_cursor[7]~13_combout\ & ((\vga|Add1~27_combout\))) # (!\vga|x_cursor[7]~13_combout\ & (\vga|x_end\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_end\(9),
	datab => \vga|Add1~27_combout\,
	datad => \vga|x_cursor[7]~13_combout\,
	combout => \vga|Add1~29_combout\);

-- Location: LCFF_X21_Y13_N21
\vga|x_cursor[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[9]~37_combout\,
	sdata => \vga|Add1~29_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(9));

-- Location: LCCOMB_X22_Y10_N14
\vga|x_end~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~1_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(8),
	combout => \vga|x_end~1_combout\);

-- Location: LCFF_X22_Y10_N15
\vga|x_end[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~1_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(8));

-- Location: LCCOMB_X22_Y13_N18
\vga|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~0_combout\ = (\vga|x_end\(9) & (\vga|x_cursor\(9) & (\vga|x_cursor\(8) $ (!\vga|x_end\(8))))) # (!\vga|x_end\(9) & (!\vga|x_cursor\(9) & (\vga|x_cursor\(8) $ (!\vga|x_end\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_end\(9),
	datab => \vga|x_cursor\(8),
	datac => \vga|x_cursor\(9),
	datad => \vga|x_end\(8),
	combout => \vga|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\vga|x_end~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~5_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_X0\(2),
	combout => \vga|x_end~5_combout\);

-- Location: LCFF_X23_Y13_N9
\vga|x_end[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~5_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(2));

-- Location: LCCOMB_X23_Y13_N20
\vga|x_end~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~4_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(3),
	combout => \vga|x_end~4_combout\);

-- Location: LCFF_X23_Y13_N31
\vga|x_end[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|x_end~4_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(3));

-- Location: LCCOMB_X23_Y13_N30
\vga|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~2_combout\ = (\vga|x_cursor\(2) & (\vga|x_end\(2) & (\vga|x_end\(3) $ (!\vga|x_cursor\(3))))) # (!\vga|x_cursor\(2) & (!\vga|x_end\(2) & (\vga|x_end\(3) $ (!\vga|x_cursor\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(2),
	datab => \vga|x_end\(2),
	datac => \vga|x_end\(3),
	datad => \vga|x_cursor\(3),
	combout => \vga|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y13_N26
\vga|x_end~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~6_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_X0\(5),
	combout => \vga|x_end~6_combout\);

-- Location: LCFF_X23_Y13_N27
\vga|x_end[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~6_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(5));

-- Location: LCCOMB_X23_Y13_N14
\vga|x_end~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~7_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_X0\(4),
	combout => \vga|x_end~7_combout\);

-- Location: LCFF_X23_Y13_N5
\vga|x_end[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|x_end~7_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(4));

-- Location: LCCOMB_X23_Y13_N4
\vga|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~3_combout\ = (\vga|x_cursor\(4) & (\vga|x_end\(4) & (\vga|x_end\(5) $ (!\vga|x_cursor\(5))))) # (!\vga|x_cursor\(4) & (!\vga|x_end\(4) & (\vga|x_end\(5) $ (!\vga|x_cursor\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(4),
	datab => \vga|x_end\(5),
	datac => \vga|x_end\(4),
	datad => \vga|x_cursor\(5),
	combout => \vga|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y13_N18
\vga|x_end~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~2_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_X0\(1),
	combout => \vga|x_end~2_combout\);

-- Location: LCFF_X23_Y13_N11
\vga|x_end[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga|x_end~2_combout\,
	sload => VCC,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(1));

-- Location: LCCOMB_X23_Y13_N28
\vga|x_end~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|x_end~3_combout\ = (\sprite_renderer|FB_CLEAR~regout\) # (\sprite_renderer|FB_X0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_X0\(0),
	combout => \vga|x_end~3_combout\);

-- Location: LCFF_X23_Y13_N29
\vga|x_end[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_end~3_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_end\(0));

-- Location: LCCOMB_X23_Y13_N10
\vga|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~1_combout\ = (\vga|x_cursor\(1) & (\vga|x_end\(1) & (\vga|x_cursor\(0) $ (!\vga|x_end\(0))))) # (!\vga|x_cursor\(1) & (!\vga|x_end\(1) & (\vga|x_cursor\(0) $ (!\vga|x_end\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(1),
	datab => \vga|x_cursor\(0),
	datac => \vga|x_end\(1),
	datad => \vga|x_end\(0),
	combout => \vga|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y13_N2
\vga|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~5_combout\ = (\vga|Equal0~4_combout\ & (\vga|Equal0~2_combout\ & (\vga|Equal0~3_combout\ & \vga|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal0~4_combout\,
	datab => \vga|Equal0~2_combout\,
	datac => \vga|Equal0~3_combout\,
	datad => \vga|Equal0~1_combout\,
	combout => \vga|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y13_N4
\vga|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal0~6_combout\ = (\vga|Equal0~0_combout\ & \vga|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|Equal0~0_combout\,
	datad => \vga|Equal0~5_combout\,
	combout => \vga|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y11_N18
\vga|substate.DRAWING_R2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING_R2~2_combout\ = (\vga|Equal1~6_combout\ & (\vga|x_cursor[7]~36_combout\ & (\RESET_N~regout\ & !\vga|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~6_combout\,
	datab => \vga|x_cursor[7]~36_combout\,
	datac => \RESET_N~regout\,
	datad => \vga|Equal1~7_combout\,
	combout => \vga|substate.DRAWING_R2~2_combout\);

-- Location: LCCOMB_X21_Y11_N6
\vga|substate.DRAWING~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING~0_combout\ = (!\vga|vga_fb|SRAM_WE_N~0_combout\ & (\vga|Equal0~5_combout\ & \vga|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datac => \vga|Equal0~5_combout\,
	datad => \vga|Equal0~0_combout\,
	combout => \vga|substate.DRAWING~0_combout\);

-- Location: LCCOMB_X21_Y11_N24
\vga|substate.DRAWING_R2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|substate.DRAWING_R2~3_combout\ = (\vga|substate.DRAWING_R2~1_combout\) # ((\vga|substate.DRAWING_R2~2_combout\ & (\vga|substate.DRAWING_R1~regout\ & \vga|substate.DRAWING~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R2~1_combout\,
	datab => \vga|substate.DRAWING_R2~2_combout\,
	datac => \vga|substate.DRAWING_R1~regout\,
	datad => \vga|substate.DRAWING~0_combout\,
	combout => \vga|substate.DRAWING_R2~3_combout\);

-- Location: LCFF_X21_Y11_N25
\vga|substate.DRAWING_R2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|substate.DRAWING_R2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|substate.DRAWING_R2~regout\);

-- Location: LCCOMB_X22_Y13_N10
\vga|y_cursor[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[1]~12_combout\ = (\vga|Equal2~0_combout\ & (\vga|substate.DRAWING_R2~regout\ & (\vga|Equal2~5_combout\ & !\vga|substate.DRAWING_R1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal2~0_combout\,
	datab => \vga|substate.DRAWING_R2~regout\,
	datac => \vga|Equal2~5_combout\,
	datad => \vga|substate.DRAWING_R1~regout\,
	combout => \vga|y_cursor[1]~12_combout\);

-- Location: LCCOMB_X22_Y13_N28
\vga|y_cursor[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[1]~13_combout\ = (!\vga|vga_fb|SRAM_WE_N~0_combout\ & ((\vga|y_cursor[1]~12_combout\) # ((\vga|substate.DRAWING_R1~regout\ & \vga|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING_R1~regout\,
	datab => \vga|vga_fb|SRAM_WE_N~0_combout\,
	datac => \vga|Equal0~6_combout\,
	datad => \vga|y_cursor[1]~12_combout\,
	combout => \vga|y_cursor[1]~13_combout\);

-- Location: LCCOMB_X21_Y11_N30
\vga|y_cursor[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[0]~14_combout\ = (\vga|substate.DRAWING~0_combout\ & (((\vga|y_cursor[1]~13_combout\)) # (!\vga|x_cursor[7]~36_combout\))) # (!\vga|substate.DRAWING~0_combout\ & (!\vga|x_cursor[7]~12_combout\ & ((\vga|y_cursor[1]~13_combout\) # 
-- (!\vga|x_cursor[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING~0_combout\,
	datab => \vga|x_cursor[7]~36_combout\,
	datac => \vga|x_cursor[7]~12_combout\,
	datad => \vga|y_cursor[1]~13_combout\,
	combout => \vga|y_cursor[0]~14_combout\);

-- Location: LCCOMB_X21_Y11_N14
\vga|y_cursor[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[0]~17_combout\ = (\vga|y_cursor[0]~15_combout\ & (\vga|y_cursor[0]~14_combout\ & ((!\vga|x_cursor[7]~36_combout\) # (!\vga|y_cursor[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor[0]~15_combout\,
	datab => \vga|y_cursor[1]~16_combout\,
	datac => \vga|y_cursor[0]~14_combout\,
	datad => \vga|x_cursor[7]~36_combout\,
	combout => \vga|y_cursor[0]~17_combout\);

-- Location: LCFF_X22_Y11_N3
\vga|y_cursor[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[0]~9_combout\,
	sdata => \vga|Add0~2_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(0));

-- Location: LCCOMB_X22_Y11_N4
\vga|y_cursor[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[1]~18_combout\ = (\vga|y_cursor\(1) & (\vga|y_cursor[0]~10\ & VCC)) # (!\vga|y_cursor\(1) & (!\vga|y_cursor[0]~10\))
-- \vga|y_cursor[1]~19\ = CARRY((!\vga|y_cursor\(1) & !\vga|y_cursor[0]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(1),
	datad => VCC,
	cin => \vga|y_cursor[0]~10\,
	combout => \vga|y_cursor[1]~18_combout\,
	cout => \vga|y_cursor[1]~19\);

-- Location: LCFF_X23_Y12_N11
\sprite_renderer|FB_Y0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[1]~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(1));

-- Location: LCCOMB_X23_Y11_N22
\vga|y_start~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~2_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_Y0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_Y0\(1),
	combout => \vga|y_start~2_combout\);

-- Location: LCFF_X23_Y11_N23
\vga|y_start[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~2_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(1));

-- Location: LCCOMB_X23_Y10_N26
\vga|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~5_combout\ = (\vga|y_cursor[1]~11_combout\ & (\vga|Add0~3_combout\)) # (!\vga|y_cursor[1]~11_combout\ & ((\vga|y_start\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add0~3_combout\,
	datab => \vga|y_cursor[1]~11_combout\,
	datad => \vga|y_start\(1),
	combout => \vga|Add0~5_combout\);

-- Location: LCFF_X22_Y11_N5
\vga|y_cursor[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[1]~18_combout\,
	sdata => \vga|Add0~5_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(1));

-- Location: LCCOMB_X22_Y11_N6
\vga|y_cursor[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[2]~20_combout\ = (\vga|y_cursor\(2) & ((GND) # (!\vga|y_cursor[1]~19\))) # (!\vga|y_cursor\(2) & (\vga|y_cursor[1]~19\ $ (GND)))
-- \vga|y_cursor[2]~21\ = CARRY((\vga|y_cursor\(2)) # (!\vga|y_cursor[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(2),
	datad => VCC,
	cin => \vga|y_cursor[1]~19\,
	combout => \vga|y_cursor[2]~20_combout\,
	cout => \vga|y_cursor[2]~21\);

-- Location: LCCOMB_X22_Y11_N8
\vga|y_cursor[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[3]~22_combout\ = (\vga|y_cursor\(3) & (\vga|y_cursor[2]~21\ & VCC)) # (!\vga|y_cursor\(3) & (!\vga|y_cursor[2]~21\))
-- \vga|y_cursor[3]~23\ = CARRY((!\vga|y_cursor\(3) & !\vga|y_cursor[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor\(3),
	datad => VCC,
	cin => \vga|y_cursor[2]~21\,
	combout => \vga|y_cursor[3]~22_combout\,
	cout => \vga|y_cursor[3]~23\);

-- Location: LCFF_X23_Y12_N15
\sprite_renderer|FB_Y0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[3]~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(3));

-- Location: LCCOMB_X22_Y11_N22
\vga|y_start~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~4_combout\ = (\sprite_renderer|FB_Y0\(3) & !\sprite_renderer|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_Y0\(3),
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|y_start~4_combout\);

-- Location: LCFF_X22_Y11_N23
\vga|y_start[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~4_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(3));

-- Location: LCCOMB_X22_Y11_N26
\vga|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~11_combout\ = (\vga|y_cursor[1]~11_combout\ & (\vga|Add0~9_combout\)) # (!\vga|y_cursor[1]~11_combout\ & ((\vga|y_start\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add0~9_combout\,
	datab => \vga|y_cursor[1]~11_combout\,
	datad => \vga|y_start\(3),
	combout => \vga|Add0~11_combout\);

-- Location: LCFF_X22_Y11_N9
\vga|y_cursor[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[3]~22_combout\,
	sdata => \vga|Add0~11_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(3));

-- Location: LCCOMB_X22_Y11_N10
\vga|y_cursor[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[4]~24_combout\ = (\vga|y_cursor\(4) & ((GND) # (!\vga|y_cursor[3]~23\))) # (!\vga|y_cursor\(4) & (\vga|y_cursor[3]~23\ $ (GND)))
-- \vga|y_cursor[4]~25\ = CARRY((\vga|y_cursor\(4)) # (!\vga|y_cursor[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(4),
	datad => VCC,
	cin => \vga|y_cursor[3]~23\,
	combout => \vga|y_cursor[4]~24_combout\,
	cout => \vga|y_cursor[4]~25\);

-- Location: LCCOMB_X22_Y11_N12
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

-- Location: LCCOMB_X22_Y11_N14
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

-- Location: LCFF_X23_Y12_N13
\sprite_renderer|FB_Y0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[2]~13_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(2));

-- Location: LCCOMB_X23_Y11_N20
\vga|y_start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~1_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_Y0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_Y0\(2),
	combout => \vga|y_start~1_combout\);

-- Location: LCFF_X23_Y11_N21
\vga|y_start[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~1_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(2));

-- Location: LCCOMB_X23_Y11_N12
\vga|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~8_combout\ = (\vga|y_cursor[1]~11_combout\ & (\vga|Add0~6_combout\)) # (!\vga|y_cursor[1]~11_combout\ & ((\vga|y_start\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add0~6_combout\,
	datac => \vga|y_start\(2),
	datad => \vga|y_cursor[1]~11_combout\,
	combout => \vga|Add0~8_combout\);

-- Location: LCFF_X22_Y11_N7
\vga|y_cursor[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[2]~20_combout\,
	sdata => \vga|Add0~8_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(2));

-- Location: LCCOMB_X23_Y10_N12
\vga|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~12_combout\ = (\vga|y_cursor\(4) & (\vga|Add0~10\ $ (GND))) # (!\vga|y_cursor\(4) & (!\vga|Add0~10\ & VCC))
-- \vga|Add0~13\ = CARRY((\vga|y_cursor\(4) & !\vga|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(4),
	datad => VCC,
	cin => \vga|Add0~10\,
	combout => \vga|Add0~12_combout\,
	cout => \vga|Add0~13\);

-- Location: LCCOMB_X23_Y10_N14
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

-- Location: LCFF_X23_Y12_N19
\sprite_renderer|FB_Y0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[5]~19_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(5));

-- Location: LCCOMB_X23_Y11_N10
\vga|y_end~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end~5_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_Y0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_Y0\(5),
	combout => \vga|y_end~5_combout\);

-- Location: LCFF_X23_Y11_N11
\vga|y_end[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_end~5_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_end\(5));

-- Location: LCCOMB_X23_Y11_N14
\vga|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~17_combout\ = (\vga|y_cursor[1]~11_combout\ & (\vga|Add0~15_combout\)) # (!\vga|y_cursor[1]~11_combout\ & ((\vga|y_end\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor[1]~11_combout\,
	datac => \vga|Add0~15_combout\,
	datad => \vga|y_end\(5),
	combout => \vga|Add0~17_combout\);

-- Location: LCFF_X22_Y11_N13
\vga|y_cursor[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[5]~26_combout\,
	sdata => \vga|Add0~17_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(5));

-- Location: LCCOMB_X23_Y10_N16
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

-- Location: LCFF_X23_Y12_N21
\sprite_renderer|FB_Y0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[6]~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(6));

-- Location: LCCOMB_X23_Y11_N28
\vga|y_start~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~6_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_Y0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datac => \sprite_renderer|FB_Y0\(6),
	combout => \vga|y_start~6_combout\);

-- Location: LCFF_X23_Y11_N29
\vga|y_start[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~6_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(6));

-- Location: LCCOMB_X23_Y10_N30
\vga|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~20_combout\ = (\vga|y_cursor[1]~11_combout\ & (\vga|Add0~18_combout\)) # (!\vga|y_cursor[1]~11_combout\ & ((\vga|y_start\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor[1]~11_combout\,
	datac => \vga|Add0~18_combout\,
	datad => \vga|y_start\(6),
	combout => \vga|Add0~20_combout\);

-- Location: LCFF_X22_Y11_N15
\vga|y_cursor[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[6]~28_combout\,
	sdata => \vga|Add0~20_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(6));

-- Location: LCCOMB_X22_Y11_N16
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

-- Location: LCCOMB_X22_Y11_N18
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

-- Location: LCCOMB_X20_Y11_N22
\vga|y_start~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~7_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_Y0\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_Y0\(8),
	combout => \vga|y_start~7_combout\);

-- Location: LCFF_X20_Y11_N23
\vga|y_start[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~7_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(8));

-- Location: LCCOMB_X23_Y10_N18
\vga|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~21_combout\ = (\vga|y_cursor\(7) & (!\vga|Add0~19\)) # (!\vga|y_cursor\(7) & ((\vga|Add0~19\) # (GND)))
-- \vga|Add0~22\ = CARRY((!\vga|Add0~19\) # (!\vga|y_cursor\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor\(7),
	datad => VCC,
	cin => \vga|Add0~19\,
	combout => \vga|Add0~21_combout\,
	cout => \vga|Add0~22\);

-- Location: LCCOMB_X23_Y10_N20
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

-- Location: LCCOMB_X22_Y11_N30
\vga|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~26_combout\ = (\vga|y_cursor[1]~11_combout\ & ((\vga|Add0~24_combout\))) # (!\vga|y_cursor[1]~11_combout\ & (\vga|y_start\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor[1]~11_combout\,
	datac => \vga|y_start\(8),
	datad => \vga|Add0~24_combout\,
	combout => \vga|Add0~26_combout\);

-- Location: LCFF_X22_Y11_N19
\vga|y_cursor[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[8]~32_combout\,
	sdata => \vga|Add0~26_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(8));

-- Location: LCCOMB_X22_Y11_N24
\vga|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~7_combout\ = \vga|y_end\(8) $ (\vga|y_cursor\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|y_end\(8),
	datad => \vga|y_cursor\(8),
	combout => \vga|Equal1~7_combout\);

-- Location: LCCOMB_X21_Y11_N16
\vga|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector0~0_combout\ = (\vga|Equal1~6_combout\ & (!\vga|Equal1~7_combout\ & (\vga|Equal0~5_combout\ & \vga|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~6_combout\,
	datab => \vga|Equal1~7_combout\,
	datac => \vga|Equal0~5_combout\,
	datad => \vga|Equal0~0_combout\,
	combout => \vga|Selector0~0_combout\);

-- Location: LCCOMB_X23_Y11_N18
\vga|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal3~5_combout\ = (\vga|Equal3~4_combout\ & (\vga|y_cursor\(8) $ (!\vga|y_start\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal3~4_combout\,
	datab => \vga|y_cursor\(8),
	datac => \vga|y_start\(8),
	combout => \vga|Equal3~5_combout\);

-- Location: LCCOMB_X22_Y10_N30
\vga|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector0~1_combout\ = (\vga|state.DRAWING_RECT~regout\ & (\vga|y_cursor[1]~12_combout\ & ((\vga|Equal3~5_combout\)))) # (!\vga|state.DRAWING_RECT~regout\ & (((\vga|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|y_cursor[1]~12_combout\,
	datab => \vga|state.DRAWING_RECT~regout\,
	datac => \vga|Selector0~0_combout\,
	datad => \vga|Equal3~5_combout\,
	combout => \vga|Selector0~1_combout\);

-- Location: LCCOMB_X22_Y10_N2
\vga|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector0~4_combout\ = (\vga|Selector0~3_combout\) # ((\vga|state.IDLE~regout\ & ((!\vga|Selector0~1_combout\) # (!\vga|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Selector0~2_combout\,
	datab => \vga|Selector0~3_combout\,
	datac => \vga|state.IDLE~regout\,
	datad => \vga|Selector0~1_combout\,
	combout => \vga|Selector0~4_combout\);

-- Location: LCFF_X22_Y10_N3
\vga|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector0~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|state.IDLE~regout\);

-- Location: LCCOMB_X22_Y10_N12
\vga|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector6~0_combout\ = (\vga|state.FILLING_RECT~regout\) # ((!\vga|state.IDLE~regout\ & (!\sprite_renderer|FB_DRAW_RECT~regout\ & !\sprite_renderer|FB_CLEAR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.FILLING_RECT~regout\,
	datab => \vga|state.IDLE~regout\,
	datac => \sprite_renderer|FB_DRAW_RECT~regout\,
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|Selector6~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\vga|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Equal1~8_combout\ = (\vga|Equal1~6_combout\ & (\vga|y_end\(8) $ (!\vga|y_cursor\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~6_combout\,
	datac => \vga|y_end\(8),
	datad => \vga|y_cursor\(8),
	combout => \vga|Equal1~8_combout\);

-- Location: LCCOMB_X21_Y11_N28
\vga|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector6~1_combout\ = (\vga|Selector6~0_combout\) # ((\vga|state.DRAWING_RECT~regout\ & ((!\vga|Equal1~8_combout\) # (!\vga|substate.DRAWING~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.DRAWING_RECT~regout\,
	datab => \vga|Selector6~0_combout\,
	datac => \vga|substate.DRAWING~0_combout\,
	datad => \vga|Equal1~8_combout\,
	combout => \vga|Selector6~1_combout\);

-- Location: LCCOMB_X21_Y8_N22
\vga|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector6~2_combout\ = (\vga|substate.INIT~regout\ & (\vga|Selector6~1_combout\ & (\vga|substate.DRAWING_R1~regout\))) # (!\vga|substate.INIT~regout\ & ((\vga|state.DRAWING_RECT~regout\) # ((\vga|Selector6~1_combout\ & 
-- \vga|substate.DRAWING_R1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.INIT~regout\,
	datab => \vga|Selector6~1_combout\,
	datac => \vga|substate.DRAWING_R1~regout\,
	datad => \vga|state.DRAWING_RECT~regout\,
	combout => \vga|Selector6~2_combout\);

-- Location: LCFF_X21_Y8_N23
\vga|substate.DRAWING_R1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector6~2_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|substate.DRAWING_R1~regout\);

-- Location: LCCOMB_X21_Y11_N0
\vga|y_cursor[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_cursor[1]~16_combout\ = (\vga|substate.DRAWING_R1~regout\ & ((\vga|Equal1~8_combout\))) # (!\vga|substate.DRAWING_R1~regout\ & (\vga|Equal3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|substate.DRAWING_R1~regout\,
	datac => \vga|Equal3~5_combout\,
	datad => \vga|Equal1~8_combout\,
	combout => \vga|y_cursor[1]~16_combout\);

-- Location: LCCOMB_X21_Y11_N4
\vga|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector8~0_combout\ = (\vga|state.FILLING_RECT~regout\ & (((!\vga|Equal1~8_combout\) # (!\vga|substate.INIT~regout\)) # (!\vga|substate.DRAWING~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|substate.DRAWING~0_combout\,
	datab => \vga|substate.INIT~regout\,
	datac => \vga|state.FILLING_RECT~regout\,
	datad => \vga|Equal1~8_combout\,
	combout => \vga|Selector8~0_combout\);

-- Location: LCCOMB_X21_Y11_N8
\vga|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Selector8~1_combout\ = (\vga|Selector8~0_combout\) # ((\vga|state.DRAWING_RECT~regout\ & ((!\vga|y_cursor[1]~13_combout\) # (!\vga|y_cursor[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|state.DRAWING_RECT~regout\,
	datab => \vga|y_cursor[1]~16_combout\,
	datac => \vga|Selector8~0_combout\,
	datad => \vga|y_cursor[1]~13_combout\,
	combout => \vga|Selector8~1_combout\);

-- Location: LCFF_X21_Y11_N9
\vga|fb_wr_req\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|Selector8~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|fb_wr_req~regout\);

-- Location: LCCOMB_X21_Y8_N6
\vga|vga_fb|SRAM_WE_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_WE_N~0_combout\ = ((\vga|vga_timing|h_state.DATA~regout\ & \vga|vga_timing|v_state.DATA~regout\)) # (!\vga|fb_wr_req~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|fb_wr_req~regout\,
	combout => \vga|vga_fb|SRAM_WE_N~0_combout\);

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

-- Location: LCCOMB_X26_Y12_N12
\sprite_renderer|FB_COLOR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_COLOR~0_combout\ = (\sprite_renderer|sprite_to_draw.color\(6) & !\sprite_renderer|FB_X0[1]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_to_draw.color\(6),
	datac => \sprite_renderer|FB_X0[1]~15_combout\,
	combout => \sprite_renderer|FB_COLOR~0_combout\);

-- Location: LCFF_X26_Y12_N13
\sprite_renderer|FB_COLOR[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_COLOR~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_COLOR\(6));

-- Location: LCCOMB_X23_Y8_N8
\vga|latched_color[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|latched_color[6]~feeder_combout\ = \sprite_renderer|FB_COLOR\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sprite_renderer|FB_COLOR\(6),
	combout => \vga|latched_color[6]~feeder_combout\);

-- Location: LCCOMB_X22_Y10_N6
\vga|y_end[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_end[8]~10_combout\ = (\RESET_N~regout\ & !\vga|state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET_N~regout\,
	datad => \vga|state.IDLE~regout\,
	combout => \vga|y_end[8]~10_combout\);

-- Location: LCFF_X23_Y8_N9
\vga|latched_color[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|latched_color[6]~feeder_combout\,
	ena => \vga|y_end[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|latched_color\(6));

-- Location: LCCOMB_X26_Y12_N6
\sprite_renderer|FB_COLOR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sprite_renderer|FB_COLOR~1_combout\ = (!\sprite_renderer|sprite_to_draw.color\(6) & !\sprite_renderer|FB_X0[1]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sprite_renderer|sprite_to_draw.color\(6),
	datac => \sprite_renderer|FB_X0[1]~15_combout\,
	combout => \sprite_renderer|FB_COLOR~1_combout\);

-- Location: LCFF_X26_Y12_N7
\sprite_renderer|FB_COLOR[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_COLOR~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_COLOR\(10));

-- Location: LCCOMB_X23_Y8_N18
\vga|latched_color[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|latched_color[10]~feeder_combout\ = \sprite_renderer|FB_COLOR\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sprite_renderer|FB_COLOR\(10),
	combout => \vga|latched_color[10]~feeder_combout\);

-- Location: LCFF_X23_Y8_N19
\vga|latched_color[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|latched_color[10]~feeder_combout\,
	ena => \vga|y_end[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|latched_color\(10));

-- Location: LCCOMB_X21_Y8_N0
\vga|fb_buffer_idx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|fb_buffer_idx~0_combout\ = \vga|fb_buffer_idx~regout\ $ (((\vga|flip_on_next_vs~regout\ & (\vga|vga_timing|v_state.SYNC~regout\ & !\vga|state.IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|flip_on_next_vs~regout\,
	datab => \vga|vga_timing|v_state.SYNC~regout\,
	datac => \vga|fb_buffer_idx~regout\,
	datad => \vga|state.IDLE~regout\,
	combout => \vga|fb_buffer_idx~0_combout\);

-- Location: LCFF_X21_Y8_N1
\vga|fb_buffer_idx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|fb_buffer_idx~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|fb_buffer_idx~regout\);

-- Location: LCCOMB_X15_Y8_N16
\vga|vga_fb|ram_rd_word[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[5]~0_combout\ = (\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[13]~13\)) # (!\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[5]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[13]~13\,
	datac => \SRAM_DQ[5]~5\,
	datad => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[5]~0_combout\);

-- Location: LCCOMB_X20_Y5_N12
\vga|vga_timing|BLANK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|BLANK~0_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & \vga|vga_timing|v_state.DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|vga_timing|BLANK~0_combout\);

-- Location: LCFF_X15_Y8_N17
\vga|vga_fb|latched_ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[5]~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(5));

-- Location: LCCOMB_X15_Y8_N26
\vga|VGA_R[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_R[0]~0_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(5) & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(5),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_R[0]~0_combout\);

-- Location: LCCOMB_X15_Y8_N12
\vga|vga_fb|ram_rd_word[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[6]~1_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[14]~14\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[6]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[6]~6\,
	datab => \SRAM_DQ[14]~14\,
	datad => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[6]~1_combout\);

-- Location: LCFF_X15_Y8_N13
\vga|vga_fb|latched_ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[6]~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(6));

-- Location: LCCOMB_X15_Y8_N6
\vga|VGA_R[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_R[2]~1_combout\ = (\vga|vga_fb|latched_ram\(6) & (\vga|vga_timing|v_state.DATA~regout\ & \vga|vga_timing|h_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_fb|latched_ram\(6),
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|VGA_R[2]~1_combout\);

-- Location: LCCOMB_X15_Y8_N0
\vga|vga_fb|ram_rd_word[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[7]~2_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[15]~15\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[7]~7\,
	datac => \SRAM_DQ[15]~15\,
	datad => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[7]~2_combout\);

-- Location: LCFF_X15_Y8_N1
\vga|vga_fb|latched_ram[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[7]~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(7));

-- Location: LCCOMB_X15_Y8_N2
\vga|VGA_R[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_R[3]~2_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(7) & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datab => \vga|vga_fb|latched_ram\(7),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_R[3]~2_combout\);

-- Location: LCCOMB_X15_Y8_N4
\vga|vga_fb|ram_rd_word[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[3]~3_combout\ = (\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[11]~11\)) # (!\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[11]~11\,
	datac => \SRAM_DQ[3]~3\,
	datad => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[3]~3_combout\);

-- Location: LCFF_X15_Y8_N5
\vga|vga_fb|latched_ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[3]~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(3));

-- Location: LCCOMB_X15_Y8_N14
\vga|VGA_G[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_G[0]~0_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(3) & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(3),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_G[0]~0_combout\);

-- Location: LCCOMB_X15_Y8_N8
\vga|vga_fb|ram_rd_word[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[4]~4_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[12]~12\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[4]~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[4]~4\,
	datac => \SRAM_DQ[12]~12\,
	datad => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[4]~4_combout\);

-- Location: LCFF_X15_Y8_N9
\vga|vga_fb|latched_ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[4]~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(4));

-- Location: LCCOMB_X15_Y8_N18
\vga|VGA_G[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_G[3]~1_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(4) & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(4),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_G[3]~1_combout\);

-- Location: LCCOMB_X15_Y8_N20
\vga|vga_fb|ram_rd_word[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[0]~5_combout\ = (\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[8]~8\))) # (!\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[0]~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[0]~0\,
	datac => \SRAM_DQ[8]~8\,
	datad => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[0]~5_combout\);

-- Location: LCFF_X15_Y8_N21
\vga|vga_fb|latched_ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[0]~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(0));

-- Location: LCCOMB_X15_Y8_N22
\vga|VGA_B[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_B[0]~0_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(0) & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(0),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_B[0]~0_combout\);

-- Location: LCCOMB_X15_Y8_N24
\vga|vga_fb|ram_rd_word[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[1]~6_combout\ = (\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[9]~9\)) # (!\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[9]~9\,
	datac => \SRAM_DQ[1]~1\,
	datad => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[1]~6_combout\);

-- Location: LCFF_X15_Y8_N25
\vga|vga_fb|latched_ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[1]~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(1));

-- Location: LCCOMB_X15_Y8_N10
\vga|VGA_B[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_B[2]~1_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(1) & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_fb|latched_ram\(1),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_B[2]~1_combout\);

-- Location: LCCOMB_X15_Y8_N28
\vga|vga_fb|ram_rd_word[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|ram_rd_word[2]~7_combout\ = (\vga|fb_buffer_idx~regout\ & (\SRAM_DQ[10]~10\)) # (!\vga|fb_buffer_idx~regout\ & ((\SRAM_DQ[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[10]~10\,
	datac => \SRAM_DQ[2]~2\,
	datad => \vga|fb_buffer_idx~regout\,
	combout => \vga|vga_fb|ram_rd_word[2]~7_combout\);

-- Location: LCFF_X15_Y8_N29
\vga|vga_fb|latched_ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_fb|ram_rd_word[2]~7_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|BLANK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_fb|latched_ram\(2));

-- Location: LCCOMB_X15_Y8_N30
\vga|VGA_B[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|VGA_B[3]~2_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_fb|latched_ram\(2) & \vga|vga_timing|v_state.DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datab => \vga|vga_fb|latched_ram\(2),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|VGA_B[3]~2_combout\);

-- Location: LCCOMB_X20_Y5_N10
\vga|vga_timing|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal1~2_combout\ = (\vga|vga_timing|Equal2~0_combout\ & (!\vga|vga_timing|h_counter\(7) & (!\vga|vga_timing|h_counter\(5) & \vga|vga_timing|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal2~0_combout\,
	datab => \vga|vga_timing|h_counter\(7),
	datac => \vga|vga_timing|h_counter\(5),
	datad => \vga|vga_timing|Equal1~1_combout\,
	combout => \vga|vga_timing|Equal1~2_combout\);

-- Location: LCFF_X20_Y5_N11
\vga|vga_timing|h_state.SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Equal1~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|h_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_state.SYNC~regout\);

-- Location: LCCOMB_X22_Y8_N0
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

-- Location: LCFF_X19_Y5_N17
\vga|vga_timing|h_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|vga_timing|Add2~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \vga|vga_timing|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|vga_timing|h_counter\(2));

-- Location: LCCOMB_X19_Y5_N0
\vga|vga_timing|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal4~0_combout\ = (!\vga|vga_timing|h_counter\(3) & (!\vga|vga_timing|h_counter\(5) & (!\vga|vga_timing|h_counter\(2) & !\vga|vga_timing|h_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(3),
	datab => \vga|vga_timing|h_counter\(5),
	datac => \vga|vga_timing|h_counter\(2),
	datad => \vga|vga_timing|h_counter\(7),
	combout => \vga|vga_timing|Equal4~0_combout\);

-- Location: LCCOMB_X19_Y5_N10
\vga|vga_timing|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal4~1_combout\ = (!\vga|vga_timing|h_counter\(0) & (\vga|vga_timing|Equal4~0_combout\ & (!\vga|vga_timing|h_counter\(1) & \vga|vga_timing|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_counter\(0),
	datab => \vga|vga_timing|Equal4~0_combout\,
	datac => \vga|vga_timing|h_counter\(1),
	datad => \vga|vga_timing|Equal2~1_combout\,
	combout => \vga|vga_timing|Equal4~1_combout\);

-- Location: LCCOMB_X22_Y8_N30
\vga|vga_timing|h_timing~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_timing~0_combout\ = (\vga|vga_timing|Equal4~1_combout\) # (!\vga|vga_timing|h_state.DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_timing|Equal4~1_combout\,
	combout => \vga|vga_timing|h_timing~0_combout\);

-- Location: LCFF_X22_Y8_N1
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

-- Location: LCCOMB_X22_Y8_N18
\vga|vga_fb|SRAM_ADDR[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[0]~0_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(0)))) # (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(0))))) # 
-- (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(0),
	datab => \vga|vga_timing|h_pixel\(0),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[0]~0_combout\);

-- Location: LCCOMB_X22_Y8_N2
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

-- Location: LCFF_X22_Y8_N3
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

-- Location: LCCOMB_X21_Y8_N8
\vga|vga_fb|SRAM_ADDR[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[1]~1_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|h_pixel\(1))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|x_cursor\(1)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|x_cursor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(1),
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|x_cursor\(1),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[1]~1_combout\);

-- Location: LCCOMB_X22_Y8_N4
\vga|vga_timing|h_pixel[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[2]~13_combout\ = (\vga|vga_timing|h_pixel\(2) & (\vga|vga_timing|h_pixel[1]~12\ $ (GND))) # (!\vga|vga_timing|h_pixel\(2) & (!\vga|vga_timing|h_pixel[1]~12\ & VCC))
-- \vga|vga_timing|h_pixel[2]~14\ = CARRY((\vga|vga_timing|h_pixel\(2) & !\vga|vga_timing|h_pixel[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_pixel\(2),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[1]~12\,
	combout => \vga|vga_timing|h_pixel[2]~13_combout\,
	cout => \vga|vga_timing|h_pixel[2]~14\);

-- Location: LCFF_X22_Y8_N5
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

-- Location: LCCOMB_X21_Y13_N28
\vga|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add1~8_combout\ = (\vga|x_cursor[7]~13_combout\ & (\vga|Add1~6_combout\)) # (!\vga|x_cursor[7]~13_combout\ & ((\vga|x_start\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|x_cursor[7]~13_combout\,
	datac => \vga|Add1~6_combout\,
	datad => \vga|x_start\(2),
	combout => \vga|Add1~8_combout\);

-- Location: LCFF_X21_Y13_N7
\vga|x_cursor[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|x_cursor[2]~22_combout\,
	sdata => \vga|Add1~8_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|x_cursor[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|x_cursor\(2));

-- Location: LCCOMB_X22_Y8_N20
\vga|vga_fb|SRAM_ADDR[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[2]~2_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|h_pixel\(2))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|x_cursor\(2)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|x_cursor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_timing|h_pixel\(2),
	datad => \vga|x_cursor\(2),
	combout => \vga|vga_fb|SRAM_ADDR[2]~2_combout\);

-- Location: LCCOMB_X22_Y8_N6
\vga|vga_timing|h_pixel[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[3]~15_combout\ = (\vga|vga_timing|h_pixel\(3) & (!\vga|vga_timing|h_pixel[2]~14\)) # (!\vga|vga_timing|h_pixel\(3) & ((\vga|vga_timing|h_pixel[2]~14\) # (GND)))
-- \vga|vga_timing|h_pixel[3]~16\ = CARRY((!\vga|vga_timing|h_pixel[2]~14\) # (!\vga|vga_timing|h_pixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(3),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[2]~14\,
	combout => \vga|vga_timing|h_pixel[3]~15_combout\,
	cout => \vga|vga_timing|h_pixel[3]~16\);

-- Location: LCFF_X22_Y8_N7
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

-- Location: LCCOMB_X21_Y8_N10
\vga|vga_fb|SRAM_ADDR[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[3]~3_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(3)))) # (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(3))))) # 
-- (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_state.DATA~regout\,
	datab => \vga|x_cursor\(3),
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_pixel\(3),
	combout => \vga|vga_fb|SRAM_ADDR[3]~3_combout\);

-- Location: LCCOMB_X22_Y8_N8
\vga|vga_timing|h_pixel[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[4]~17_combout\ = (\vga|vga_timing|h_pixel\(4) & (\vga|vga_timing|h_pixel[3]~16\ $ (GND))) # (!\vga|vga_timing|h_pixel\(4) & (!\vga|vga_timing|h_pixel[3]~16\ & VCC))
-- \vga|vga_timing|h_pixel[4]~18\ = CARRY((\vga|vga_timing|h_pixel\(4) & !\vga|vga_timing|h_pixel[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_pixel\(4),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[3]~16\,
	combout => \vga|vga_timing|h_pixel[4]~17_combout\,
	cout => \vga|vga_timing|h_pixel[4]~18\);

-- Location: LCFF_X22_Y8_N9
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

-- Location: LCCOMB_X22_Y8_N22
\vga|vga_fb|SRAM_ADDR[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[4]~4_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(4)))) # (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(4))))) # 
-- (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(4),
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_timing|h_pixel\(4),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[4]~4_combout\);

-- Location: LCCOMB_X22_Y8_N10
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

-- Location: LCFF_X22_Y8_N11
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

-- Location: LCCOMB_X22_Y8_N24
\vga|vga_fb|SRAM_ADDR[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[5]~5_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(5)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(5))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|x_cursor\(5),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|vga_timing|h_pixel\(5),
	combout => \vga|vga_fb|SRAM_ADDR[5]~5_combout\);

-- Location: LCCOMB_X22_Y8_N12
\vga|vga_timing|h_pixel[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[6]~21_combout\ = (\vga|vga_timing|h_pixel\(6) & (\vga|vga_timing|h_pixel[5]~20\ $ (GND))) # (!\vga|vga_timing|h_pixel\(6) & (!\vga|vga_timing|h_pixel[5]~20\ & VCC))
-- \vga|vga_timing|h_pixel[6]~22\ = CARRY((\vga|vga_timing|h_pixel\(6) & !\vga|vga_timing|h_pixel[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(6),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[5]~20\,
	combout => \vga|vga_timing|h_pixel[6]~21_combout\,
	cout => \vga|vga_timing|h_pixel[6]~22\);

-- Location: LCFF_X22_Y8_N13
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

-- Location: LCCOMB_X22_Y8_N26
\vga|vga_fb|SRAM_ADDR[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[6]~6_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(6)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(6))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|x_cursor\(6),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|vga_timing|h_pixel\(6),
	combout => \vga|vga_fb|SRAM_ADDR[6]~6_combout\);

-- Location: LCCOMB_X22_Y8_N14
\vga|vga_timing|h_pixel[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[7]~23_combout\ = (\vga|vga_timing|h_pixel\(7) & (!\vga|vga_timing|h_pixel[6]~22\)) # (!\vga|vga_timing|h_pixel\(7) & ((\vga|vga_timing|h_pixel[6]~22\) # (GND)))
-- \vga|vga_timing|h_pixel[7]~24\ = CARRY((!\vga|vga_timing|h_pixel[6]~22\) # (!\vga|vga_timing|h_pixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|h_pixel\(7),
	datad => VCC,
	cin => \vga|vga_timing|h_pixel[6]~22\,
	combout => \vga|vga_timing|h_pixel[7]~23_combout\,
	cout => \vga|vga_timing|h_pixel[7]~24\);

-- Location: LCFF_X22_Y8_N15
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

-- Location: LCCOMB_X21_Y8_N28
\vga|vga_fb|SRAM_ADDR[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[7]~7_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(7)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(7))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(7),
	datab => \vga|vga_timing|v_state.DATA~regout\,
	datac => \vga|vga_timing|h_pixel\(7),
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[7]~7_combout\);

-- Location: LCCOMB_X22_Y8_N16
\vga|vga_timing|h_pixel[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|h_pixel[8]~25_combout\ = \vga|vga_timing|h_pixel\(8) $ (!\vga|vga_timing|h_pixel[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|h_pixel\(8),
	cin => \vga|vga_timing|h_pixel[7]~24\,
	combout => \vga|vga_timing|h_pixel[8]~25_combout\);

-- Location: LCFF_X22_Y8_N17
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

-- Location: LCCOMB_X22_Y8_N28
\vga|vga_fb|SRAM_ADDR[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[8]~8_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_pixel\(8)))) # (!\vga|vga_timing|v_state.DATA~regout\ & (\vga|x_cursor\(8))))) # 
-- (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|x_cursor\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|x_cursor\(8),
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_timing|h_pixel\(8),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[8]~8_combout\);

-- Location: LCCOMB_X20_Y8_N10
\vga|vga_timing|v_pixel[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[0]~9_combout\ = \vga|vga_timing|v_pixel\(0) $ (VCC)
-- \vga|vga_timing|v_pixel[0]~10\ = CARRY(\vga|vga_timing|v_pixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(0),
	datad => VCC,
	combout => \vga|vga_timing|v_pixel[0]~9_combout\,
	cout => \vga|vga_timing|v_pixel[0]~10\);

-- Location: LCCOMB_X22_Y5_N30
\vga|vga_timing|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|Equal9~0_combout\ = (!\vga|vga_timing|v_counter\(1) & (!\vga|vga_timing|v_counter\(2) & !\vga|vga_timing|v_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_counter\(1),
	datac => \vga|vga_timing|v_counter\(2),
	datad => \vga|vga_timing|v_counter\(3),
	combout => \vga|vga_timing|Equal9~0_combout\);

-- Location: LCCOMB_X22_Y5_N24
\vga|vga_timing|v_timing~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_timing~0_combout\ = ((\vga|vga_timing|Equal6~1_combout\ & \vga|vga_timing|Equal9~0_combout\)) # (!\vga|vga_timing|v_state.DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|Equal6~1_combout\,
	datab => \vga|vga_timing|Equal9~0_combout\,
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|vga_timing|v_timing~0_combout\);

-- Location: LCFF_X20_Y8_N11
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

-- Location: LCCOMB_X20_Y8_N8
\vga|vga_fb|SRAM_ADDR[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[9]~9_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(0))) # (!\vga|vga_timing|v_state.DATA~regout\ & ((\vga|y_cursor\(0)))))) # 
-- (!\vga|vga_timing|h_state.DATA~regout\ & (((\vga|y_cursor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(0),
	datab => \vga|y_cursor\(0),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[9]~9_combout\);

-- Location: LCCOMB_X20_Y8_N12
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

-- Location: LCFF_X20_Y8_N13
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

-- Location: LCCOMB_X20_Y11_N8
\vga|vga_fb|SRAM_ADDR[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[10]~10_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_pixel\(1)))) # (!\vga|vga_timing|h_state.DATA~regout\ & (\vga|y_cursor\(1))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|y_cursor\(1),
	datad => \vga|vga_timing|v_pixel\(1),
	combout => \vga|vga_fb|SRAM_ADDR[10]~10_combout\);

-- Location: LCCOMB_X20_Y8_N14
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

-- Location: LCFF_X20_Y8_N15
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

-- Location: LCCOMB_X20_Y11_N26
\vga|vga_fb|SRAM_ADDR[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[11]~11_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(2))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(2)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_timing|v_pixel\(2),
	datad => \vga|y_cursor\(2),
	combout => \vga|vga_fb|SRAM_ADDR[11]~11_combout\);

-- Location: LCCOMB_X20_Y8_N16
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

-- Location: LCFF_X20_Y8_N17
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

-- Location: LCCOMB_X20_Y8_N2
\vga|vga_fb|SRAM_ADDR[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[12]~12_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(3))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(3)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_timing|v_pixel\(3),
	datad => \vga|y_cursor\(3),
	combout => \vga|vga_fb|SRAM_ADDR[12]~12_combout\);

-- Location: LCCOMB_X20_Y8_N18
\vga|vga_timing|v_pixel[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[4]~17_combout\ = (\vga|vga_timing|v_pixel\(4) & (\vga|vga_timing|v_pixel[3]~16\ $ (GND))) # (!\vga|vga_timing|v_pixel\(4) & (!\vga|vga_timing|v_pixel[3]~16\ & VCC))
-- \vga|vga_timing|v_pixel[4]~18\ = CARRY((\vga|vga_timing|v_pixel\(4) & !\vga|vga_timing|v_pixel[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_pixel\(4),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[3]~16\,
	combout => \vga|vga_timing|v_pixel[4]~17_combout\,
	cout => \vga|vga_timing|v_pixel[4]~18\);

-- Location: LCFF_X20_Y8_N19
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

-- Location: LCFF_X23_Y12_N17
\sprite_renderer|FB_Y0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[4]~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(4));

-- Location: LCCOMB_X22_Y11_N28
\vga|y_start~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~3_combout\ = (!\sprite_renderer|FB_CLEAR~regout\ & \sprite_renderer|FB_Y0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sprite_renderer|FB_CLEAR~regout\,
	datad => \sprite_renderer|FB_Y0\(4),
	combout => \vga|y_start~3_combout\);

-- Location: LCFF_X22_Y11_N29
\vga|y_start[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~3_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(4));

-- Location: LCCOMB_X22_Y11_N20
\vga|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~14_combout\ = (\vga|y_cursor[1]~11_combout\ & (\vga|Add0~12_combout\)) # (!\vga|y_cursor[1]~11_combout\ & ((\vga|y_start\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor[1]~11_combout\,
	datac => \vga|Add0~12_combout\,
	datad => \vga|y_start\(4),
	combout => \vga|Add0~14_combout\);

-- Location: LCFF_X22_Y11_N11
\vga|y_cursor[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[4]~24_combout\,
	sdata => \vga|Add0~14_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(4));

-- Location: LCCOMB_X20_Y8_N28
\vga|vga_fb|SRAM_ADDR[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[13]~13_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(4))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(4)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|v_pixel\(4),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|y_cursor\(4),
	combout => \vga|vga_fb|SRAM_ADDR[13]~13_combout\);

-- Location: LCCOMB_X20_Y8_N20
\vga|vga_timing|v_pixel[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[5]~19_combout\ = (\vga|vga_timing|v_pixel\(5) & (!\vga|vga_timing|v_pixel[4]~18\)) # (!\vga|vga_timing|v_pixel\(5) & ((\vga|vga_timing|v_pixel[4]~18\) # (GND)))
-- \vga|vga_timing|v_pixel[5]~20\ = CARRY((!\vga|vga_timing|v_pixel[4]~18\) # (!\vga|vga_timing|v_pixel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(5),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[4]~18\,
	combout => \vga|vga_timing|v_pixel[5]~19_combout\,
	cout => \vga|vga_timing|v_pixel[5]~20\);

-- Location: LCFF_X20_Y8_N21
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

-- Location: LCCOMB_X20_Y8_N6
\vga|vga_fb|SRAM_ADDR[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[14]~14_combout\ = (\vga|vga_timing|h_state.DATA~regout\ & ((\vga|vga_timing|v_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(5))) # (!\vga|vga_timing|v_state.DATA~regout\ & ((\vga|y_cursor\(5)))))) # 
-- (!\vga|vga_timing|h_state.DATA~regout\ & (((\vga|y_cursor\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(5),
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|y_cursor\(5),
	datad => \vga|vga_timing|v_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_ADDR[14]~14_combout\);

-- Location: LCCOMB_X20_Y8_N22
\vga|vga_timing|v_pixel[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[6]~21_combout\ = (\vga|vga_timing|v_pixel\(6) & (\vga|vga_timing|v_pixel[5]~20\ $ (GND))) # (!\vga|vga_timing|v_pixel\(6) & (!\vga|vga_timing|v_pixel[5]~20\ & VCC))
-- \vga|vga_timing|v_pixel[6]~22\ = CARRY((\vga|vga_timing|v_pixel\(6) & !\vga|vga_timing|v_pixel[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|vga_timing|v_pixel\(6),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[5]~20\,
	combout => \vga|vga_timing|v_pixel[6]~21_combout\,
	cout => \vga|vga_timing|v_pixel[6]~22\);

-- Location: LCFF_X20_Y8_N23
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

-- Location: LCCOMB_X20_Y8_N0
\vga|vga_fb|SRAM_ADDR[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[15]~15_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(6))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(6)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|v_pixel\(6),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|y_cursor\(6),
	combout => \vga|vga_fb|SRAM_ADDR[15]~15_combout\);

-- Location: LCCOMB_X20_Y8_N24
\vga|vga_timing|v_pixel[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[7]~23_combout\ = (\vga|vga_timing|v_pixel\(7) & (!\vga|vga_timing|v_pixel[6]~22\)) # (!\vga|vga_timing|v_pixel\(7) & ((\vga|vga_timing|v_pixel[6]~22\) # (GND)))
-- \vga|vga_timing|v_pixel[7]~24\ = CARRY((!\vga|vga_timing|v_pixel[6]~22\) # (!\vga|vga_timing|v_pixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_pixel\(7),
	datad => VCC,
	cin => \vga|vga_timing|v_pixel[6]~22\,
	combout => \vga|vga_timing|v_pixel[7]~23_combout\,
	cout => \vga|vga_timing|v_pixel[7]~24\);

-- Location: LCFF_X20_Y8_N25
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

-- Location: LCFF_X23_Y12_N23
\sprite_renderer|FB_Y0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk1~clkctrl_outclk\,
	datain => \sprite_renderer|FB_Y0[7]~23_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \sprite_renderer|FB_X0[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sprite_renderer|FB_Y0\(7));

-- Location: LCCOMB_X23_Y11_N26
\vga|y_start~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|y_start~5_combout\ = (\sprite_renderer|FB_Y0\(7) & !\sprite_renderer|FB_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sprite_renderer|FB_Y0\(7),
	datad => \sprite_renderer|FB_CLEAR~regout\,
	combout => \vga|y_start~5_combout\);

-- Location: LCFF_X23_Y11_N27
\vga|y_start[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_start~5_combout\,
	ena => \vga|y_end[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_start\(7));

-- Location: LCCOMB_X23_Y10_N24
\vga|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|Add0~23_combout\ = (\vga|y_cursor[1]~11_combout\ & ((\vga|Add0~21_combout\))) # (!\vga|y_cursor[1]~11_combout\ & (\vga|y_start\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|y_cursor[1]~11_combout\,
	datac => \vga|y_start\(7),
	datad => \vga|Add0~21_combout\,
	combout => \vga|Add0~23_combout\);

-- Location: LCFF_X22_Y11_N17
\vga|y_cursor[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga|y_cursor[7]~30_combout\,
	sdata => \vga|Add0~23_combout\,
	sload => \vga|x_cursor[7]~14_combout\,
	ena => \vga|y_cursor[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga|y_cursor\(7));

-- Location: LCCOMB_X20_Y8_N4
\vga|vga_fb|SRAM_ADDR[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[16]~16_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(7))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(7)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|h_state.DATA~regout\,
	datac => \vga|vga_timing|v_pixel\(7),
	datad => \vga|y_cursor\(7),
	combout => \vga|vga_fb|SRAM_ADDR[16]~16_combout\);

-- Location: LCCOMB_X20_Y8_N26
\vga|vga_timing|v_pixel[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_timing|v_pixel[8]~25_combout\ = \vga|vga_timing|v_pixel[7]~24\ $ (!\vga|vga_timing|v_pixel\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|vga_timing|v_pixel\(8),
	cin => \vga|vga_timing|v_pixel[7]~24\,
	combout => \vga|vga_timing|v_pixel[8]~25_combout\);

-- Location: LCFF_X20_Y8_N27
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

-- Location: LCCOMB_X20_Y8_N30
\vga|vga_fb|SRAM_ADDR[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_ADDR[17]~17_combout\ = (\vga|vga_timing|v_state.DATA~regout\ & ((\vga|vga_timing|h_state.DATA~regout\ & (\vga|vga_timing|v_pixel\(8))) # (!\vga|vga_timing|h_state.DATA~regout\ & ((\vga|y_cursor\(8)))))) # 
-- (!\vga|vga_timing|v_state.DATA~regout\ & (((\vga|y_cursor\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|vga_timing|v_state.DATA~regout\,
	datab => \vga|vga_timing|v_pixel\(8),
	datac => \vga|vga_timing|h_state.DATA~regout\,
	datad => \vga|y_cursor\(8),
	combout => \vga|vga_fb|SRAM_ADDR[17]~17_combout\);

-- Location: LCCOMB_X21_Y8_N2
\vga|vga_fb|SRAM_UB_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_UB_N~0_combout\ = (\vga|fb_buffer_idx~regout\ & (((!\vga|vga_timing|h_state.DATA~regout\) # (!\vga|vga_timing|v_state.DATA~regout\)))) # (!\vga|fb_buffer_idx~regout\ & (((\vga|vga_timing|v_state.DATA~regout\ & 
-- \vga|vga_timing|h_state.DATA~regout\)) # (!\vga|fb_wr_req~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|fb_wr_req~regout\,
	datab => \vga|fb_buffer_idx~regout\,
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_UB_N~0_combout\);

-- Location: LCCOMB_X21_Y8_N12
\vga|vga_fb|SRAM_LB_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga|vga_fb|SRAM_LB_N~0_combout\ = (\vga|fb_buffer_idx~regout\ & (((\vga|vga_timing|v_state.DATA~regout\ & \vga|vga_timing|h_state.DATA~regout\)) # (!\vga|fb_wr_req~regout\))) # (!\vga|fb_buffer_idx~regout\ & (((!\vga|vga_timing|h_state.DATA~regout\) # 
-- (!\vga|vga_timing|v_state.DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|fb_wr_req~regout\,
	datab => \vga|fb_buffer_idx~regout\,
	datac => \vga|vga_timing|v_state.DATA~regout\,
	datad => \vga|vga_timing|h_state.DATA~regout\,
	combout => \vga|vga_fb|SRAM_LB_N~0_combout\);

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
	datain => \vga|vga_fb|SRAM_WE_N~0_combout\,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));
END structure;


