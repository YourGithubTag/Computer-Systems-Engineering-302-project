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

-- DATE "05/20/2020 11:06:43"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uProject IS
    PORT (
	red_out : OUT std_logic;
	\50mCLK\ : IN std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	sw2 : IN std_logic;
	sw3 : IN std_logic;
	sw4 : IN std_logic;
	sw5 : IN std_logic;
	sw6 : IN std_logic;
	sw7 : IN std_logic;
	sw8 : IN std_logic;
	sw9 : IN std_logic;
	sw1 : IN std_logic;
	sw0 : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END uProject;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 50mCLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw8	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw7	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw6	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw5	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw4	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw3	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uProject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL \ww_50mCLK\ : std_logic;
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_sw2 : std_logic;
SIGNAL ww_sw3 : std_logic;
SIGNAL ww_sw4 : std_logic;
SIGNAL ww_sw5 : std_logic;
SIGNAL ww_sw6 : std_logic;
SIGNAL ww_sw7 : std_logic;
SIGNAL ww_sw8 : std_logic;
SIGNAL ww_sw9 : std_logic;
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|Add1~2_combout\ : std_logic;
SIGNAL \inst4|Add1~8_combout\ : std_logic;
SIGNAL \inst4|Add1~10_combout\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_cout\ : std_logic;
SIGNAL \inst4|LessThan0~3_cout\ : std_logic;
SIGNAL \inst4|LessThan0~5_cout\ : std_logic;
SIGNAL \inst4|LessThan0~7_cout\ : std_logic;
SIGNAL \inst4|LessThan0~9_cout\ : std_logic;
SIGNAL \inst4|LessThan0~11_cout\ : std_logic;
SIGNAL \inst4|LessThan0~13_cout\ : std_logic;
SIGNAL \inst4|LessThan0~15_cout\ : std_logic;
SIGNAL \inst4|LessThan0~17_cout\ : std_logic;
SIGNAL \inst4|LessThan0~18_combout\ : std_logic;
SIGNAL \inst4|Add2~0_combout\ : std_logic;
SIGNAL \inst4|Add2~9\ : std_logic;
SIGNAL \inst4|Add2~11\ : std_logic;
SIGNAL \inst4|Add2~10_combout\ : std_logic;
SIGNAL \inst4|Add2~12_combout\ : std_logic;
SIGNAL \inst4|Add3~4_combout\ : std_logic;
SIGNAL \inst4|Add3~8_combout\ : std_logic;
SIGNAL \inst4|Add10~18_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~2_combout\ : std_logic;
SIGNAL \inst7|Mux0~3_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|countValuex2[2]~1_combout\ : std_logic;
SIGNAL \inst4|Add12~1_combout\ : std_logic;
SIGNAL \inst4|Add12~2_combout\ : std_logic;
SIGNAL \inst4|Add12~4_combout\ : std_logic;
SIGNAL \inst4|Add12~5_combout\ : std_logic;
SIGNAL \inst4|Add12~6_combout\ : std_logic;
SIGNAL \inst4|Add10~0_combout\ : std_logic;
SIGNAL \inst4|Add10~2_combout\ : std_logic;
SIGNAL \inst4|Add10~4_combout\ : std_logic;
SIGNAL \inst4|Add10~5_combout\ : std_logic;
SIGNAL \inst4|Add10~8_combout\ : std_logic;
SIGNAL \inst4|Add10~9_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|process_0~12_combout\ : std_logic;
SIGNAL \inst4|ball_y_motionminus~1_combout\ : std_logic;
SIGNAL \inst4|LessThan4~0_combout\ : std_logic;
SIGNAL \inst4|LessThan4~1_combout\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \sw7~input_o\ : std_logic;
SIGNAL \sw5~input_o\ : std_logic;
SIGNAL \sw4~input_o\ : std_logic;
SIGNAL \inst|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \50mCLK~input_o\ : std_logic;
SIGNAL \inst5|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|h_count~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|h_count~1_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|h_count~0_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|video_on_h~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|process_0~9_combout\ : std_logic;
SIGNAL \inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|process_0~11_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|v_count[8]~1_combout\ : std_logic;
SIGNAL \inst|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|v_count~10_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|video_on_v~q\ : std_logic;
SIGNAL \inst|blue_out~0_combout\ : std_logic;
SIGNAL \inst|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst|pixel_row[4]~feeder_combout\ : std_logic;
SIGNAL \inst|pixel_row[5]~feeder_combout\ : std_logic;
SIGNAL \inst|pixel_row[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst|red_out~0_combout\ : std_logic;
SIGNAL \inst|red_out~q\ : std_logic;
SIGNAL \inst|green_out~q\ : std_logic;
SIGNAL \sw2~input_o\ : std_logic;
SIGNAL \inst4|ball_x_motion[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|Add12~7_combout\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \inst4|Add12~8_combout\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \inst4|ball_x_motion[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Add12~9_combout\ : std_logic;
SIGNAL \inst4|Add12~11_cout\ : std_logic;
SIGNAL \inst4|Add12~13\ : std_logic;
SIGNAL \inst4|Add12~15\ : std_logic;
SIGNAL \inst4|Add12~17\ : std_logic;
SIGNAL \inst4|Add12~18_combout\ : std_logic;
SIGNAL \inst4|ball_x_pos[3]~2_combout\ : std_logic;
SIGNAL \inst4|Add12~19\ : std_logic;
SIGNAL \inst4|Add12~20_combout\ : std_logic;
SIGNAL \inst4|Add12~21\ : std_logic;
SIGNAL \inst4|Add12~22_combout\ : std_logic;
SIGNAL \inst4|Add12~3_combout\ : std_logic;
SIGNAL \inst4|Add12~23\ : std_logic;
SIGNAL \inst4|Add12~25\ : std_logic;
SIGNAL \inst4|Add12~26_combout\ : std_logic;
SIGNAL \inst4|ball_x_pos[7]~0_combout\ : std_logic;
SIGNAL \inst4|Add12~27\ : std_logic;
SIGNAL \inst4|Add12~28_combout\ : std_logic;
SIGNAL \inst4|LessThan7~1_combout\ : std_logic;
SIGNAL \inst4|Add12~16_combout\ : std_logic;
SIGNAL \inst4|Add12~12_combout\ : std_logic;
SIGNAL \inst4|Add12~14_combout\ : std_logic;
SIGNAL \inst4|LessThan7~0_combout\ : std_logic;
SIGNAL \inst4|LessThan7~2_combout\ : std_logic;
SIGNAL \inst4|Add12~24_combout\ : std_logic;
SIGNAL \inst4|ball_x_pos[6]~1_combout\ : std_logic;
SIGNAL \inst4|LessThan6~0_combout\ : std_logic;
SIGNAL \inst4|ball_x_motionminus~0_combout\ : std_logic;
SIGNAL \inst4|ball_x_motionminus~q\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \inst4|Add12~0_combout\ : std_logic;
SIGNAL \inst4|Add12~29\ : std_logic;
SIGNAL \inst4|Add12~30_combout\ : std_logic;
SIGNAL \inst4|Add1~1\ : std_logic;
SIGNAL \inst4|Add1~3\ : std_logic;
SIGNAL \inst4|Add1~5\ : std_logic;
SIGNAL \inst4|Add1~7\ : std_logic;
SIGNAL \inst4|Add1~9\ : std_logic;
SIGNAL \inst4|Add1~11\ : std_logic;
SIGNAL \inst4|Add1~12_combout\ : std_logic;
SIGNAL \inst|pixel_column[8]~feeder_combout\ : std_logic;
SIGNAL \inst4|Add1~6_combout\ : std_logic;
SIGNAL \inst4|Add1~4_combout\ : std_logic;
SIGNAL \inst4|Add1~0_combout\ : std_logic;
SIGNAL \inst4|LessThan1~1_cout\ : std_logic;
SIGNAL \inst4|LessThan1~3_cout\ : std_logic;
SIGNAL \inst4|LessThan1~5_cout\ : std_logic;
SIGNAL \inst4|LessThan1~7_cout\ : std_logic;
SIGNAL \inst4|LessThan1~9_cout\ : std_logic;
SIGNAL \inst4|LessThan1~11_cout\ : std_logic;
SIGNAL \inst4|LessThan1~13_cout\ : std_logic;
SIGNAL \inst4|LessThan1~15_cout\ : std_logic;
SIGNAL \inst4|LessThan1~17_cout\ : std_logic;
SIGNAL \inst4|LessThan1~18_combout\ : std_logic;
SIGNAL \sw6~input_o\ : std_logic;
SIGNAL \inst4|Add10~3_combout\ : std_logic;
SIGNAL \sw3~input_o\ : std_logic;
SIGNAL \inst4|Add10~6_combout\ : std_logic;
SIGNAL \inst4|Add10~7_combout\ : std_logic;
SIGNAL \inst4|Add10~11_cout\ : std_logic;
SIGNAL \inst4|Add10~12_combout\ : std_logic;
SIGNAL \inst4|Add10~13\ : std_logic;
SIGNAL \inst4|Add10~14_combout\ : std_logic;
SIGNAL \inst4|Add10~15\ : std_logic;
SIGNAL \inst4|Add10~17\ : std_logic;
SIGNAL \inst4|Add10~19\ : std_logic;
SIGNAL \inst4|Add10~20_combout\ : std_logic;
SIGNAL \inst4|Add10~21\ : std_logic;
SIGNAL \inst4|Add10~22_combout\ : std_logic;
SIGNAL \inst4|Add10~23\ : std_logic;
SIGNAL \inst4|Add10~25\ : std_logic;
SIGNAL \inst4|Add10~26_combout\ : std_logic;
SIGNAL \inst4|ball_y_pos[7]~0_combout\ : std_logic;
SIGNAL \inst4|Add10~27\ : std_logic;
SIGNAL \inst4|Add10~28_combout\ : std_logic;
SIGNAL \inst4|LessThan4~2_combout\ : std_logic;
SIGNAL \inst4|ball_y_motionminus~0_combout\ : std_logic;
SIGNAL \inst4|ball_y_motionminus~2_combout\ : std_logic;
SIGNAL \inst4|ball_y_motionminus~3_combout\ : std_logic;
SIGNAL \inst4|ball_y_motionminus~q\ : std_logic;
SIGNAL \sw8~input_o\ : std_logic;
SIGNAL \inst4|Add10~1_combout\ : std_logic;
SIGNAL \inst4|Add10~29\ : std_logic;
SIGNAL \inst4|Add10~30_combout\ : std_logic;
SIGNAL \inst4|Add2~1\ : std_logic;
SIGNAL \inst4|Add2~3\ : std_logic;
SIGNAL \inst4|Add2~5\ : std_logic;
SIGNAL \inst4|Add2~7\ : std_logic;
SIGNAL \inst4|Add2~8_combout\ : std_logic;
SIGNAL \inst4|Add2~6_combout\ : std_logic;
SIGNAL \inst4|Add2~4_combout\ : std_logic;
SIGNAL \inst4|Add2~2_combout\ : std_logic;
SIGNAL \inst4|ball_y_pos[3]~2_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|v_count~11_combout\ : std_logic;
SIGNAL \inst4|LessThan2~1_cout\ : std_logic;
SIGNAL \inst4|LessThan2~3_cout\ : std_logic;
SIGNAL \inst4|LessThan2~5_cout\ : std_logic;
SIGNAL \inst4|LessThan2~7_cout\ : std_logic;
SIGNAL \inst4|LessThan2~9_cout\ : std_logic;
SIGNAL \inst4|LessThan2~11_cout\ : std_logic;
SIGNAL \inst4|LessThan2~13_cout\ : std_logic;
SIGNAL \inst4|LessThan2~15_cout\ : std_logic;
SIGNAL \inst4|LessThan2~17_cout\ : std_logic;
SIGNAL \inst4|LessThan2~18_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|Add1~13\ : std_logic;
SIGNAL \inst4|Add1~14_combout\ : std_logic;
SIGNAL \inst4|Add10~24_combout\ : std_logic;
SIGNAL \inst4|ball_y_pos[6]~1_combout\ : std_logic;
SIGNAL \inst4|Add10~16_combout\ : std_logic;
SIGNAL \inst4|Add3~1\ : std_logic;
SIGNAL \inst4|Add3~3\ : std_logic;
SIGNAL \inst4|Add3~5\ : std_logic;
SIGNAL \inst4|Add3~7\ : std_logic;
SIGNAL \inst4|Add3~9\ : std_logic;
SIGNAL \inst4|Add3~11\ : std_logic;
SIGNAL \inst4|Add3~12_combout\ : std_logic;
SIGNAL \inst|blue_out~1_combout\ : std_logic;
SIGNAL \inst4|Add3~10_combout\ : std_logic;
SIGNAL \inst4|Add3~6_combout\ : std_logic;
SIGNAL \inst4|Add3~2_combout\ : std_logic;
SIGNAL \inst4|Add3~0_combout\ : std_logic;
SIGNAL \inst4|LessThan3~1_cout\ : std_logic;
SIGNAL \inst4|LessThan3~3_cout\ : std_logic;
SIGNAL \inst4|LessThan3~5_cout\ : std_logic;
SIGNAL \inst4|LessThan3~7_cout\ : std_logic;
SIGNAL \inst4|LessThan3~9_cout\ : std_logic;
SIGNAL \inst4|LessThan3~11_cout\ : std_logic;
SIGNAL \inst4|LessThan3~13_cout\ : std_logic;
SIGNAL \inst4|LessThan3~15_cout\ : std_logic;
SIGNAL \inst4|LessThan3~16_combout\ : std_logic;
SIGNAL \inst|blue_out~2_combout\ : std_logic;
SIGNAL \inst|blue_out~3_combout\ : std_logic;
SIGNAL \inst|blue_out~q\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|horiz_sync~q\ : std_logic;
SIGNAL \inst|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|vert_sync~q\ : std_logic;
SIGNAL \inst|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|vert_sync_out~q\ : std_logic;
SIGNAL \inst4|countValuex[0]~5_combout\ : std_logic;
SIGNAL \inst4|countValuex[3]~2_combout\ : std_logic;
SIGNAL \inst4|Add6~0_combout\ : std_logic;
SIGNAL \inst4|countValuex[2]~4_combout\ : std_logic;
SIGNAL \inst4|countValuex[3]~3_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|LED_out[1]~6_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|LED_out[2]~11_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|LED_out[3]~7_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|LED_out[4]~8_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|LED_out[5]~12_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|LED_out[6]~9_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|LED_out[7]~10_combout\ : std_logic;
SIGNAL \inst4|countValuex2[0]~3_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Add7~0_combout\ : std_logic;
SIGNAL \inst4|countValuex2[2]~0_combout\ : std_logic;
SIGNAL \inst4|countValuex2[3]~2_combout\ : std_logic;
SIGNAL \inst4|sevenseg2|LED_out[1]~6_combout\ : std_logic;
SIGNAL \inst4|sevenseg2|LED_out[2]~11_combout\ : std_logic;
SIGNAL \inst4|sevenseg2|LED_out[3]~7_combout\ : std_logic;
SIGNAL \inst4|sevenseg2|LED_out[4]~8_combout\ : std_logic;
SIGNAL \inst4|sevenseg2|LED_out[5]~12_combout\ : std_logic;
SIGNAL \inst4|sevenseg2|LED_out[6]~9_combout\ : std_logic;
SIGNAL \inst4|sevenseg2|LED_out[7]~10_combout\ : std_logic;
SIGNAL \inst|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|ball_x_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|countValuex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|ball_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|countValuex2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|sevenseg2|ALT_INV_LED_out[4]~8_combout\ : std_logic;
SIGNAL \inst4|sevenseg1|ALT_INV_LED_out[4]~8_combout\ : std_logic;

BEGIN

red_out <= ww_red_out;
\ww_50mCLK\ <= \50mCLK\;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
ww_sw2 <= sw2;
ww_sw3 <= sw3;
ww_sw4 <= sw4;
ww_sw5 <= sw5;
ww_sw6 <= sw6;
ww_sw7 <= sw7;
ww_sw8 <= sw8;
ww_sw9 <= sw9;
ww_sw1 <= sw1;
ww_sw0 <= sw0;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|pixel_row\(8) & \inst|pixel_row\(7) & \inst|pixel_row\(6) & \inst|pixel_row\(5) & \inst|pixel_row\(4) & \inst|pixel_row\(3) & \inst|pixel_row\(2) & 
\inst|pixel_row\(1));

\inst7|altsyncram_component|auto_generated|q_a\(0) <= \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst7|altsyncram_component|auto_generated|q_a\(1) <= \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst7|altsyncram_component|auto_generated|q_a\(2) <= \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst7|altsyncram_component|auto_generated|q_a\(3) <= \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst7|altsyncram_component|auto_generated|q_a\(4) <= \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst7|altsyncram_component|auto_generated|q_a\(5) <= \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst7|altsyncram_component|auto_generated|q_a\(6) <= \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst7|altsyncram_component|auto_generated|q_a\(7) <= \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst5|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \50mCLK~input_o\);

\inst5|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst5|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst5|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst5|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst5|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|vert_sync_out~q\);

\inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst4|sevenseg2|ALT_INV_LED_out[4]~8_combout\ <= NOT \inst4|sevenseg2|LED_out[4]~8_combout\;
\inst4|sevenseg1|ALT_INV_LED_out[4]~8_combout\ <= NOT \inst4|sevenseg1|LED_out[4]~8_combout\;

-- Location: M9K_X25_Y24_N0
\inst7|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:inst7|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y25_N12
\inst4|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~2_combout\ = (\inst4|ball_x_pos\(4) & (\inst4|Add1~1\ & VCC)) # (!\inst4|ball_x_pos\(4) & (!\inst4|Add1~1\))
-- \inst4|Add1~3\ = CARRY((!\inst4|ball_x_pos\(4) & !\inst4|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_pos\(4),
	datad => VCC,
	cin => \inst4|Add1~1\,
	combout => \inst4|Add1~2_combout\,
	cout => \inst4|Add1~3\);

-- Location: LCCOMB_X22_Y25_N18
\inst4|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~8_combout\ = (\inst4|ball_x_pos\(7) & (!\inst4|Add1~7\ & VCC)) # (!\inst4|ball_x_pos\(7) & (\inst4|Add1~7\ $ (GND)))
-- \inst4|Add1~9\ = CARRY((!\inst4|ball_x_pos\(7) & !\inst4|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_pos\(7),
	datad => VCC,
	cin => \inst4|Add1~7\,
	combout => \inst4|Add1~8_combout\,
	cout => \inst4|Add1~9\);

-- Location: LCCOMB_X22_Y25_N20
\inst4|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~10_combout\ = (\inst4|ball_x_pos\(8) & (!\inst4|Add1~9\)) # (!\inst4|ball_x_pos\(8) & ((\inst4|Add1~9\) # (GND)))
-- \inst4|Add1~11\ = CARRY((!\inst4|Add1~9\) # (!\inst4|ball_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_pos\(8),
	datad => VCC,
	cin => \inst4|Add1~9\,
	combout => \inst4|Add1~10_combout\,
	cout => \inst4|Add1~11\);

-- Location: LCCOMB_X24_Y24_N8
\inst4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = (\inst|pixel_column\(2) & (\inst|pixel_column\(3) $ (VCC))) # (!\inst|pixel_column\(2) & (\inst|pixel_column\(3) & VCC))
-- \inst4|Add0~1\ = CARRY((\inst|pixel_column\(2) & \inst|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst|pixel_column\(3),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X24_Y24_N10
\inst4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst|pixel_column\(4) & (\inst4|Add0~1\ & VCC)) # (!\inst|pixel_column\(4) & (!\inst4|Add0~1\))
-- \inst4|Add0~3\ = CARRY((!\inst|pixel_column\(4) & !\inst4|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(4),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X24_Y24_N12
\inst4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst|pixel_column\(5) & (\inst4|Add0~3\ $ (GND))) # (!\inst|pixel_column\(5) & (!\inst4|Add0~3\ & VCC))
-- \inst4|Add0~5\ = CARRY((\inst|pixel_column\(5) & !\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(5),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: LCCOMB_X24_Y24_N14
\inst4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst|pixel_column\(6) & (!\inst4|Add0~5\)) # (!\inst|pixel_column\(6) & ((\inst4|Add0~5\) # (GND)))
-- \inst4|Add0~7\ = CARRY((!\inst4|Add0~5\) # (!\inst|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(6),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: LCCOMB_X24_Y24_N16
\inst4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst|pixel_column\(7) & (\inst4|Add0~7\ $ (GND))) # (!\inst|pixel_column\(7) & (!\inst4|Add0~7\ & VCC))
-- \inst4|Add0~9\ = CARRY((\inst|pixel_column\(7) & !\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(7),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X24_Y24_N18
\inst4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst|pixel_column\(8) & (!\inst4|Add0~9\)) # (!\inst|pixel_column\(8) & ((\inst4|Add0~9\) # (GND)))
-- \inst4|Add0~11\ = CARRY((!\inst4|Add0~9\) # (!\inst|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(8),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: LCCOMB_X24_Y24_N20
\inst4|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst|pixel_column\(9) & (\inst4|Add0~11\ $ (GND))) # (!\inst|pixel_column\(9) & (!\inst4|Add0~11\ & VCC))
-- \inst4|Add0~13\ = CARRY((\inst|pixel_column\(9) & !\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: LCCOMB_X24_Y25_N0
\inst4|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_cout\ = CARRY((!\inst|pixel_column\(0) & \inst4|ball_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(0),
	datab => \inst4|ball_x_pos\(0),
	datad => VCC,
	cout => \inst4|LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y25_N2
\inst4|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_cout\ = CARRY((\inst4|ball_x_pos\(1) & (\inst|pixel_column\(1) & !\inst4|LessThan0~1_cout\)) # (!\inst4|ball_x_pos\(1) & ((\inst|pixel_column\(1)) # (!\inst4|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(1),
	datab => \inst|pixel_column\(1),
	datad => VCC,
	cin => \inst4|LessThan0~1_cout\,
	cout => \inst4|LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y25_N4
\inst4|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_cout\ = CARRY((\inst4|ball_x_pos\(2) & ((\inst|pixel_column\(2)) # (!\inst4|LessThan0~3_cout\))) # (!\inst4|ball_x_pos\(2) & (\inst|pixel_column\(2) & !\inst4|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(2),
	datab => \inst|pixel_column\(2),
	datad => VCC,
	cin => \inst4|LessThan0~3_cout\,
	cout => \inst4|LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y25_N6
\inst4|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~7_cout\ = CARRY((\inst4|Add0~0_combout\ & ((\inst4|ball_x_pos\(3)) # (!\inst4|LessThan0~5_cout\))) # (!\inst4|Add0~0_combout\ & (\inst4|ball_x_pos\(3) & !\inst4|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~0_combout\,
	datab => \inst4|ball_x_pos\(3),
	datad => VCC,
	cin => \inst4|LessThan0~5_cout\,
	cout => \inst4|LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y25_N8
\inst4|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~9_cout\ = CARRY((\inst4|Add0~2_combout\ & (\inst4|ball_x_pos\(4) & !\inst4|LessThan0~7_cout\)) # (!\inst4|Add0~2_combout\ & ((\inst4|ball_x_pos\(4)) # (!\inst4|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~2_combout\,
	datab => \inst4|ball_x_pos\(4),
	datad => VCC,
	cin => \inst4|LessThan0~7_cout\,
	cout => \inst4|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y25_N10
\inst4|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~11_cout\ = CARRY((\inst4|Add0~4_combout\ & ((!\inst4|LessThan0~9_cout\) # (!\inst4|ball_x_pos\(5)))) # (!\inst4|Add0~4_combout\ & (!\inst4|ball_x_pos\(5) & !\inst4|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~4_combout\,
	datab => \inst4|ball_x_pos\(5),
	datad => VCC,
	cin => \inst4|LessThan0~9_cout\,
	cout => \inst4|LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y25_N12
\inst4|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~13_cout\ = CARRY((\inst4|Add0~6_combout\ & (!\inst4|ball_x_pos\(6) & !\inst4|LessThan0~11_cout\)) # (!\inst4|Add0~6_combout\ & ((!\inst4|LessThan0~11_cout\) # (!\inst4|ball_x_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~6_combout\,
	datab => \inst4|ball_x_pos\(6),
	datad => VCC,
	cin => \inst4|LessThan0~11_cout\,
	cout => \inst4|LessThan0~13_cout\);

-- Location: LCCOMB_X24_Y25_N14
\inst4|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~15_cout\ = CARRY((\inst4|ball_x_pos\(7) & ((\inst4|Add0~8_combout\) # (!\inst4|LessThan0~13_cout\))) # (!\inst4|ball_x_pos\(7) & (\inst4|Add0~8_combout\ & !\inst4|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(7),
	datab => \inst4|Add0~8_combout\,
	datad => VCC,
	cin => \inst4|LessThan0~13_cout\,
	cout => \inst4|LessThan0~15_cout\);

-- Location: LCCOMB_X24_Y25_N16
\inst4|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~17_cout\ = CARRY((\inst4|ball_x_pos\(8) & ((!\inst4|LessThan0~15_cout\) # (!\inst4|Add0~10_combout\))) # (!\inst4|ball_x_pos\(8) & (!\inst4|Add0~10_combout\ & !\inst4|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(8),
	datab => \inst4|Add0~10_combout\,
	datad => VCC,
	cin => \inst4|LessThan0~15_cout\,
	cout => \inst4|LessThan0~17_cout\);

-- Location: LCCOMB_X24_Y25_N18
\inst4|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~18_combout\ = (\inst4|Add0~12_combout\ & (\inst4|LessThan0~17_cout\ & \inst4|ball_x_pos\(9))) # (!\inst4|Add0~12_combout\ & ((\inst4|LessThan0~17_cout\) # (\inst4|ball_x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~12_combout\,
	datad => \inst4|ball_x_pos\(9),
	cin => \inst4|LessThan0~17_cout\,
	combout => \inst4|LessThan0~18_combout\);

-- Location: LCCOMB_X29_Y24_N4
\inst4|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add2~0_combout\ = (\inst|pixel_row\(3) & (\inst|pixel_row\(2) $ (VCC))) # (!\inst|pixel_row\(3) & (\inst|pixel_row\(2) & VCC))
-- \inst4|Add2~1\ = CARRY((\inst|pixel_row\(3) & \inst|pixel_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(3),
	datab => \inst|pixel_row\(2),
	datad => VCC,
	combout => \inst4|Add2~0_combout\,
	cout => \inst4|Add2~1\);

-- Location: LCCOMB_X29_Y24_N12
\inst4|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add2~8_combout\ = (\inst|pixel_row\(7) & (\inst4|Add2~7\ $ (GND))) # (!\inst|pixel_row\(7) & (!\inst4|Add2~7\ & VCC))
-- \inst4|Add2~9\ = CARRY((\inst|pixel_row\(7) & !\inst4|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(7),
	datad => VCC,
	cin => \inst4|Add2~7\,
	combout => \inst4|Add2~8_combout\,
	cout => \inst4|Add2~9\);

-- Location: LCCOMB_X29_Y24_N14
\inst4|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add2~10_combout\ = (\inst|pixel_row\(8) & (!\inst4|Add2~9\)) # (!\inst|pixel_row\(8) & ((\inst4|Add2~9\) # (GND)))
-- \inst4|Add2~11\ = CARRY((!\inst4|Add2~9\) # (!\inst|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(8),
	datad => VCC,
	cin => \inst4|Add2~9\,
	combout => \inst4|Add2~10_combout\,
	cout => \inst4|Add2~11\);

-- Location: LCCOMB_X29_Y24_N16
\inst4|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add2~12_combout\ = !\inst4|Add2~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Add2~11\,
	combout => \inst4|Add2~12_combout\);

-- Location: LCCOMB_X26_Y24_N22
\inst4|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~4_combout\ = (\inst4|ball_y_pos\(5) & (\inst4|Add3~3\ $ (GND))) # (!\inst4|ball_y_pos\(5) & (!\inst4|Add3~3\ & VCC))
-- \inst4|Add3~5\ = CARRY((\inst4|ball_y_pos\(5) & !\inst4|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_pos\(5),
	datad => VCC,
	cin => \inst4|Add3~3\,
	combout => \inst4|Add3~4_combout\,
	cout => \inst4|Add3~5\);

-- Location: LCCOMB_X26_Y24_N26
\inst4|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~8_combout\ = (\inst4|ball_y_pos\(7) & (!\inst4|Add3~7\ & VCC)) # (!\inst4|ball_y_pos\(7) & (\inst4|Add3~7\ $ (GND)))
-- \inst4|Add3~9\ = CARRY((!\inst4|ball_y_pos\(7) & !\inst4|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_pos\(7),
	datad => VCC,
	cin => \inst4|Add3~7\,
	combout => \inst4|Add3~8_combout\,
	cout => \inst4|Add3~9\);

-- Location: LCCOMB_X27_Y24_N12
\inst4|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~18_combout\ = ((\inst4|ball_y_pos\(3) $ (\inst4|Add10~6_combout\ $ (\inst4|Add10~17\)))) # (GND)
-- \inst4|Add10~19\ = CARRY((\inst4|ball_y_pos\(3) & (\inst4|Add10~6_combout\ & !\inst4|Add10~17\)) # (!\inst4|ball_y_pos\(3) & ((\inst4|Add10~6_combout\) # (!\inst4|Add10~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(3),
	datab => \inst4|Add10~6_combout\,
	datad => VCC,
	cin => \inst4|Add10~17\,
	combout => \inst4|Add10~18_combout\,
	cout => \inst4|Add10~19\);

-- Location: LCCOMB_X30_Y24_N14
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|v_count\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|v_count\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|v_count\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X30_Y24_N16
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|v_count\(3) & (!\inst|Add1~5\)) # (!\inst|v_count\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X30_Y24_N18
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|v_count\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|v_count\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|v_count\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X30_Y24_N20
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|v_count\(5) & (!\inst|Add1~9\)) # (!\inst|v_count\(5) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X30_Y24_N24
\inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|v_count\(7) & (!\inst|Add1~13\)) # (!\inst|v_count\(7) & ((\inst|Add1~13\) # (GND)))
-- \inst|Add1~15\ = CARRY((!\inst|Add1~13\) # (!\inst|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X30_Y24_N26
\inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|v_count\(8) & (\inst|Add1~15\ $ (GND))) # (!\inst|v_count\(8) & (!\inst|Add1~15\ & VCC))
-- \inst|Add1~17\ = CARRY((\inst|v_count\(8) & !\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(8),
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: FF_X24_Y25_N25
\inst|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(1),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(1));

-- Location: LCCOMB_X24_Y25_N30
\inst7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst|pixel_column\(1) & ((\inst7|altsyncram_component|auto_generated|q_a\(2)) # ((\inst|pixel_column\(2))))) # (!\inst|pixel_column\(1) & (((\inst7|altsyncram_component|auto_generated|q_a\(3) & !\inst|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst7|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|pixel_column\(1),
	datad => \inst|pixel_column\(2),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y25_N0
\inst7|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~2_combout\ = (\inst|pixel_column\(2) & ((\inst7|altsyncram_component|auto_generated|q_a\(5)) # ((\inst|pixel_column\(1))))) # (!\inst|pixel_column\(2) & (((\inst7|altsyncram_component|auto_generated|q_a\(7) & !\inst|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst7|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst|pixel_column\(2),
	datad => \inst|pixel_column\(1),
	combout => \inst7|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y25_N22
\inst7|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~3_combout\ = (\inst|pixel_column\(1) & ((\inst7|Mux0~2_combout\ & ((\inst7|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst7|Mux0~2_combout\ & (\inst7|altsyncram_component|auto_generated|q_a\(6))))) # (!\inst|pixel_column\(1) & 
-- (((\inst7|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst|pixel_column\(1),
	datac => \inst7|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst7|Mux0~2_combout\,
	combout => \inst7|Mux0~3_combout\);

-- Location: FF_X24_Y25_N27
\inst|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(0),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(0));

-- Location: LCCOMB_X21_Y25_N6
\inst4|sevenseg1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|Equal0~0_combout\ = (\inst4|countValuex\(1) & \inst4|countValuex\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datad => \inst4|countValuex\(0),
	combout => \inst4|sevenseg1|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y27_N12
\inst4|countValuex2[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|countValuex2[2]~1_combout\ = (\inst4|countValuex2\(0) & \inst4|countValuex2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|countValuex2\(0),
	datad => \inst4|countValuex2\(1),
	combout => \inst4|countValuex2[2]~1_combout\);

-- Location: LCCOMB_X26_Y25_N28
\inst4|Add12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~1_combout\ = \inst4|ball_x_motion\(8) $ (\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_motion\(8),
	datab => \inst4|ball_x_motionminus~q\,
	combout => \inst4|Add12~1_combout\);

-- Location: FF_X27_Y24_N3
\inst4|ball_x_motion[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sw7~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(7));

-- Location: LCCOMB_X27_Y25_N6
\inst4|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~2_combout\ = \inst4|ball_x_motion\(7) $ (\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_motion\(7),
	datad => \inst4|ball_x_motionminus~q\,
	combout => \inst4|Add12~2_combout\);

-- Location: FF_X27_Y25_N21
\inst4|ball_x_motion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sw5~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(5));

-- Location: LCCOMB_X27_Y25_N14
\inst4|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~4_combout\ = \inst4|ball_x_motionminus~q\ $ (\inst4|ball_x_motion\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_motionminus~q\,
	datac => \inst4|ball_x_motion\(5),
	combout => \inst4|Add12~4_combout\);

-- Location: FF_X27_Y25_N13
\inst4|ball_x_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sw4~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(4));

-- Location: LCCOMB_X27_Y25_N18
\inst4|Add12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~5_combout\ = \inst4|ball_x_motion\(4) $ (\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_motion\(4),
	datab => \inst4|ball_x_motionminus~q\,
	combout => \inst4|Add12~5_combout\);

-- Location: LCCOMB_X23_Y25_N2
\inst4|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~6_combout\ = \inst4|ball_x_motion\(3) $ (\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ball_x_motion\(3),
	datad => \inst4|ball_x_motionminus~q\,
	combout => \inst4|Add12~6_combout\);

-- Location: LCCOMB_X27_Y25_N12
\inst4|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~0_combout\ = \inst4|ball_y_motionminus~q\ $ (\inst4|ball_x_motion\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_motionminus~q\,
	datad => \inst4|ball_x_motion\(9),
	combout => \inst4|Add10~0_combout\);

-- Location: LCCOMB_X27_Y24_N28
\inst4|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~2_combout\ = \inst4|ball_y_motionminus~q\ $ (\inst4|ball_x_motion\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_motionminus~q\,
	datad => \inst4|ball_x_motion\(7),
	combout => \inst4|Add10~2_combout\);

-- Location: LCCOMB_X27_Y25_N28
\inst4|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~4_combout\ = \inst4|ball_x_motion\(5) $ (\inst4|ball_y_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_motion\(5),
	datac => \inst4|ball_y_motionminus~q\,
	combout => \inst4|Add10~4_combout\);

-- Location: LCCOMB_X27_Y25_N30
\inst4|Add10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~5_combout\ = \inst4|ball_x_motion\(4) $ (\inst4|ball_y_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_motion\(4),
	datac => \inst4|ball_y_motionminus~q\,
	combout => \inst4|Add10~5_combout\);

-- Location: LCCOMB_X26_Y25_N24
\inst4|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~8_combout\ = \inst4|ball_y_motionminus~q\ $ (\inst4|ball_x_motion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ball_y_motionminus~q\,
	datad => \inst4|ball_x_motion\(1),
	combout => \inst4|Add10~8_combout\);

-- Location: LCCOMB_X27_Y25_N4
\inst4|Add10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~9_combout\ = \inst4|ball_x_motion\(0) $ (\inst4|ball_y_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ball_x_motion\(0),
	datad => \inst4|ball_y_motionminus~q\,
	combout => \inst4|Add10~9_combout\);

-- Location: LCCOMB_X30_Y24_N2
\inst|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (!\inst|v_count\(4) & (!\inst|v_count\(5) & ((!\inst|v_count\(3)) # (!\inst|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(4),
	datab => \inst|v_count\(2),
	datac => \inst|v_count\(5),
	datad => \inst|v_count\(3),
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X27_Y25_N26
\inst|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~12_combout\ = (((!\inst|h_count\(7) & !\inst|h_count\(8))) # (!\inst|v_count\(9))) # (!\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(9),
	datab => \inst|h_count\(7),
	datac => \inst|h_count\(8),
	datad => \inst|v_count\(9),
	combout => \inst|process_0~12_combout\);

-- Location: LCCOMB_X27_Y25_N10
\inst4|ball_y_motionminus~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_y_motionminus~1_combout\ = ((\inst4|ball_y_pos\(2) & ((\inst4|ball_y_pos\(1)) # (\inst4|ball_y_pos\(0))))) # (!\inst4|ball_y_pos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(1),
	datab => \inst4|ball_y_pos\(3),
	datac => \inst4|ball_y_pos\(2),
	datad => \inst4|ball_y_pos\(0),
	combout => \inst4|ball_y_motionminus~1_combout\);

-- Location: LCCOMB_X26_Y25_N30
\inst4|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan4~0_combout\ = (\inst4|ball_y_pos\(3)) # ((!\inst4|ball_y_pos\(2) & ((!\inst4|ball_y_pos\(1)) # (!\inst4|ball_y_pos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(3),
	datab => \inst4|ball_y_pos\(0),
	datac => \inst4|ball_y_pos\(1),
	datad => \inst4|ball_y_pos\(2),
	combout => \inst4|LessThan4~0_combout\);

-- Location: LCCOMB_X26_Y25_N26
\inst4|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan4~1_combout\ = (\inst4|LessThan4~0_combout\ & (!\inst4|ball_y_pos\(4) & !\inst4|ball_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan4~0_combout\,
	datab => \inst4|ball_y_pos\(4),
	datad => \inst4|ball_y_pos\(5),
	combout => \inst4|LessThan4~1_combout\);

-- Location: IOIBUF_X0_Y23_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw7,
	o => \sw7~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\sw5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw5,
	o => \sw5~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\sw4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw4,
	o => \sw4~input_o\);

-- Location: CLKCTRL_G9
\inst|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|vert_sync_out~clkctrl_outclk\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red_out~q\,
	devoe => ww_devoe,
	o => ww_red_out);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green_out~q\,
	devoe => ww_devoe,
	o => ww_green_out);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|blue_out~q\,
	devoe => ww_devoe,
	o => ww_blue_out);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg1|LED_out[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg1|LED_out[2]~11_combout\,
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg1|LED_out[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg1|ALT_INV_LED_out[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg1|LED_out[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg1|LED_out[6]~9_combout\,
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg1|LED_out[7]~10_combout\,
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg2|LED_out[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg2|LED_out[2]~11_combout\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg2|LED_out[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg2|ALT_INV_LED_out[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg2|LED_out[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg2|LED_out[6]~9_combout\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sevenseg2|LED_out[7]~10_combout\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOIBUF_X41_Y15_N1
\50mCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_50mCLK\,
	o => \50mCLK~input_o\);

-- Location: PLL_2
\inst5|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
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
	clk0_counter => "c0",
	clk0_divide_by => 2,
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
	pll_compensation_delay => 5738,
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
	areset => GND,
	fbin => \inst5|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst5|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst5|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst5|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y23_N6
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|h_count\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X24_Y23_N8
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|h_count\(1) & (!\inst|Add0~1\)) # (!\inst|h_count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X24_Y23_N9
\inst|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(1));

-- Location: LCCOMB_X24_Y23_N10
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|h_count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|h_count\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|h_count\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X24_Y23_N11
\inst|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(2));

-- Location: LCCOMB_X24_Y23_N12
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|h_count\(3) & (!\inst|Add0~5\)) # (!\inst|h_count\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X24_Y23_N13
\inst|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(3));

-- Location: LCCOMB_X24_Y23_N14
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|h_count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|h_count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|h_count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X24_Y23_N15
\inst|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(4));

-- Location: LCCOMB_X24_Y23_N16
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|h_count\(5) & (!\inst|Add0~9\)) # (!\inst|h_count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X24_Y23_N18
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|h_count\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|h_count\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|h_count\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X24_Y23_N20
\inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|h_count\(7) & (!\inst|Add0~13\)) # (!\inst|h_count\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X24_Y23_N21
\inst|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(7));

-- Location: LCCOMB_X24_Y23_N22
\inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|h_count\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|h_count\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|h_count\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X26_Y23_N0
\inst|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~2_combout\ = (\inst|Add0~10_combout\ & !\inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~10_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|h_count~2_combout\);

-- Location: FF_X26_Y23_N1
\inst|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(5));

-- Location: LCCOMB_X26_Y26_N0
\inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|h_count\(2) & (!\inst|h_count\(5) & (!\inst|h_count\(7) & \inst|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datab => \inst|h_count\(5),
	datac => \inst|h_count\(7),
	datad => \inst|h_count\(8),
	combout => \inst|Equal0~1_combout\);

-- Location: FF_X24_Y23_N19
\inst|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(6));

-- Location: LCCOMB_X26_Y26_N30
\inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & (!\inst|h_count\(6) & \inst|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|h_count\(6),
	datad => \inst|h_count\(9),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y23_N10
\inst|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~1_combout\ = (\inst|Add0~16_combout\ & !\inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~16_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|h_count~1_combout\);

-- Location: FF_X26_Y23_N11
\inst|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(8));

-- Location: LCCOMB_X24_Y23_N24
\inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = \inst|Add0~17\ $ (\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|h_count\(9),
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\);

-- Location: LCCOMB_X26_Y23_N4
\inst|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~0_combout\ = (\inst|Add0~18_combout\ & !\inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~18_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|h_count~0_combout\);

-- Location: FF_X26_Y23_N5
\inst|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(9));

-- Location: LCCOMB_X26_Y26_N4
\inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = ((!\inst|h_count\(8) & !\inst|h_count\(7))) # (!\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datac => \inst|h_count\(7),
	datad => \inst|h_count\(9),
	combout => \inst|process_0~0_combout\);

-- Location: FF_X24_Y24_N31
\inst|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(3),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(3));

-- Location: FF_X26_Y26_N9
\inst|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|video_on_h~q\);

-- Location: FF_X24_Y23_N7
\inst|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(0));

-- Location: LCCOMB_X24_Y23_N28
\inst|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~9_combout\ = ((!\inst|h_count\(2) & ((!\inst|h_count\(0)) # (!\inst|h_count\(1))))) # (!\inst|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datab => \inst|h_count\(2),
	datac => \inst|h_count\(1),
	datad => \inst|h_count\(0),
	combout => \inst|process_0~9_combout\);

-- Location: LCCOMB_X24_Y23_N26
\inst|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~10_combout\ = (\inst|h_count\(5) & \inst|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(5),
	datac => \inst|h_count\(4),
	combout => \inst|process_0~10_combout\);

-- Location: LCCOMB_X24_Y23_N0
\inst|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~11_combout\ = (!\inst|h_count\(6) & (!\inst|h_count\(8) & ((\inst|process_0~9_combout\) # (!\inst|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(6),
	datab => \inst|process_0~9_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|h_count\(8),
	combout => \inst|process_0~11_combout\);

-- Location: LCCOMB_X24_Y23_N30
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|h_count\(3) & (\inst|h_count\(4) & (\inst|h_count\(1) & \inst|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datab => \inst|h_count\(4),
	datac => \inst|h_count\(1),
	datad => \inst|h_count\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y26_N12
\inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|h_count\(2)) # (((\inst|h_count\(8)) # (!\inst|h_count\(7))) # (!\inst|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datab => \inst|h_count\(5),
	datac => \inst|h_count\(7),
	datad => \inst|h_count\(8),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y26_N6
\inst|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = ((\inst|h_count\(6)) # ((\inst|Equal1~0_combout\) # (!\inst|Equal0~0_combout\))) # (!\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(9),
	datab => \inst|h_count\(6),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y24_N24
\inst|v_count[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[8]~1_combout\ = ((!\inst|process_0~12_combout\ & (!\inst|process_0~11_combout\ & !\inst|process_0~8_combout\))) # (!\inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datab => \inst|process_0~11_combout\,
	datac => \inst|process_0~8_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|v_count[8]~1_combout\);

-- Location: LCCOMB_X30_Y24_N30
\inst|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[7]~5_combout\ = (\inst|Add1~14_combout\ & ((\inst|v_count[2]~0_combout\) # ((\inst|v_count\(7) & !\inst|v_count[8]~1_combout\)))) # (!\inst|Add1~14_combout\ & (((\inst|v_count\(7) & !\inst|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~14_combout\,
	datab => \inst|v_count[2]~0_combout\,
	datac => \inst|v_count\(7),
	datad => \inst|v_count[8]~1_combout\,
	combout => \inst|v_count[7]~5_combout\);

-- Location: FF_X30_Y24_N31
\inst|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(7));

-- Location: LCCOMB_X30_Y24_N4
\inst|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[5]~3_combout\ = (\inst|Add1~10_combout\ & ((\inst|v_count[2]~0_combout\) # ((\inst|v_count\(5) & !\inst|v_count[8]~1_combout\)))) # (!\inst|Add1~10_combout\ & (((\inst|v_count\(5) & !\inst|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~10_combout\,
	datab => \inst|v_count[2]~0_combout\,
	datac => \inst|v_count\(5),
	datad => \inst|v_count[8]~1_combout\,
	combout => \inst|v_count[5]~3_combout\);

-- Location: FF_X30_Y24_N5
\inst|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(5));

-- Location: LCCOMB_X31_Y24_N12
\inst|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[3]~8_combout\ = (\inst|Add1~6_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[8]~1_combout\ & \inst|v_count\(3))))) # (!\inst|Add1~6_combout\ & (!\inst|v_count[8]~1_combout\ & (\inst|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|v_count[8]~1_combout\,
	datac => \inst|v_count\(3),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[3]~8_combout\);

-- Location: FF_X31_Y24_N13
\inst|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(3));

-- Location: LCCOMB_X30_Y24_N0
\inst|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[2]~9_combout\ = (\inst|Add1~4_combout\ & ((\inst|v_count[2]~0_combout\) # ((\inst|v_count\(2) & !\inst|v_count[8]~1_combout\)))) # (!\inst|Add1~4_combout\ & (((\inst|v_count\(2) & !\inst|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst|v_count[2]~0_combout\,
	datac => \inst|v_count\(2),
	datad => \inst|v_count[8]~1_combout\,
	combout => \inst|v_count[2]~9_combout\);

-- Location: FF_X30_Y24_N1
\inst|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(2));

-- Location: LCCOMB_X30_Y24_N10
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|v_count\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X30_Y24_N12
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|v_count\(1) & (!\inst|Add1~1\)) # (!\inst|v_count\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X31_Y24_N22
\inst|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~10_combout\ = (\inst|Add1~2_combout\ & ((\inst|process_0~12_combout\) # ((\inst|process_0~11_combout\) # (\inst|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datab => \inst|process_0~11_combout\,
	datac => \inst|process_0~8_combout\,
	datad => \inst|Add1~2_combout\,
	combout => \inst|v_count~10_combout\);

-- Location: FF_X31_Y24_N23
\inst|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count~10_combout\,
	ena => \inst|v_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(1));

-- Location: LCCOMB_X30_Y24_N22
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|v_count\(6) & (\inst|Add1~11\ $ (GND))) # (!\inst|v_count\(6) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|v_count\(6) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X29_Y24_N2
\inst|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[6]~4_combout\ = (\inst|v_count[8]~1_combout\ & (\inst|v_count[2]~0_combout\ & ((\inst|Add1~12_combout\)))) # (!\inst|v_count[8]~1_combout\ & ((\inst|v_count\(6)) # ((\inst|v_count[2]~0_combout\ & \inst|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count[8]~1_combout\,
	datab => \inst|v_count[2]~0_combout\,
	datac => \inst|v_count\(6),
	datad => \inst|Add1~12_combout\,
	combout => \inst|v_count[6]~4_combout\);

-- Location: FF_X29_Y24_N3
\inst|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(6));

-- Location: LCCOMB_X29_Y24_N24
\inst|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = (\inst|process_0~7_combout\ & (!\inst|v_count\(8) & (!\inst|v_count\(7) & !\inst|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~7_combout\,
	datab => \inst|v_count\(8),
	datac => \inst|v_count\(7),
	datad => \inst|v_count\(6),
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X31_Y24_N2
\inst|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[2]~0_combout\ = (!\inst|Equal1~1_combout\ & ((\inst|process_0~12_combout\) # ((\inst|process_0~11_combout\) # (\inst|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datab => \inst|process_0~11_combout\,
	datac => \inst|process_0~8_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|v_count[2]~0_combout\);

-- Location: LCCOMB_X30_Y24_N8
\inst|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[8]~6_combout\ = (\inst|Add1~16_combout\ & ((\inst|v_count[2]~0_combout\) # ((\inst|v_count\(8) & !\inst|v_count[8]~1_combout\)))) # (!\inst|Add1~16_combout\ & (((\inst|v_count\(8) & !\inst|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~16_combout\,
	datab => \inst|v_count[2]~0_combout\,
	datac => \inst|v_count\(8),
	datad => \inst|v_count[8]~1_combout\,
	combout => \inst|v_count[8]~6_combout\);

-- Location: FF_X30_Y24_N9
\inst|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(8));

-- Location: LCCOMB_X29_Y24_N20
\inst|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~0_combout\ = (\inst|v_count\(5) & (\inst|v_count\(8) & (\inst|v_count\(7) & \inst|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(5),
	datab => \inst|v_count\(8),
	datac => \inst|v_count\(7),
	datad => \inst|v_count\(6),
	combout => \inst|LessThan7~0_combout\);

-- Location: LCCOMB_X30_Y24_N28
\inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = \inst|v_count\(9) $ (\inst|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(9),
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\);

-- Location: LCCOMB_X29_Y24_N0
\inst|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[9]~2_combout\ = (\inst|v_count[8]~1_combout\ & (\inst|v_count[2]~0_combout\ & ((\inst|Add1~18_combout\)))) # (!\inst|v_count[8]~1_combout\ & ((\inst|v_count\(9)) # ((\inst|v_count[2]~0_combout\ & \inst|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count[8]~1_combout\,
	datab => \inst|v_count[2]~0_combout\,
	datac => \inst|v_count\(9),
	datad => \inst|Add1~18_combout\,
	combout => \inst|v_count[9]~2_combout\);

-- Location: FF_X29_Y24_N1
\inst|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(9));

-- Location: LCCOMB_X29_Y24_N26
\inst|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~1_combout\ = (!\inst|LessThan7~0_combout\ & !\inst|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan7~0_combout\,
	datad => \inst|v_count\(9),
	combout => \inst|LessThan7~1_combout\);

-- Location: FF_X26_Y24_N21
\inst|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|video_on_v~q\);

-- Location: LCCOMB_X26_Y26_N8
\inst|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out~0_combout\ = (\inst|video_on_h~q\ & \inst|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|video_on_h~q\,
	datad => \inst|video_on_v~q\,
	combout => \inst|blue_out~0_combout\);

-- Location: LCCOMB_X28_Y24_N28
\inst|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[1]~feeder_combout\ = \inst|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|v_count\(1),
	combout => \inst|pixel_row[1]~feeder_combout\);

-- Location: FF_X28_Y24_N29
\inst|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_row[1]~feeder_combout\,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(1));

-- Location: FF_X28_Y24_N27
\inst|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(2),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(2));

-- Location: FF_X28_Y24_N1
\inst|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(3),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(3));

-- Location: LCCOMB_X30_Y24_N6
\inst|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[4]~7_combout\ = (\inst|Add1~8_combout\ & ((\inst|v_count[2]~0_combout\) # ((\inst|v_count\(4) & !\inst|v_count[8]~1_combout\)))) # (!\inst|Add1~8_combout\ & (((\inst|v_count\(4) & !\inst|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datab => \inst|v_count[2]~0_combout\,
	datac => \inst|v_count\(4),
	datad => \inst|v_count[8]~1_combout\,
	combout => \inst|v_count[4]~7_combout\);

-- Location: FF_X30_Y24_N7
\inst|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(4));

-- Location: LCCOMB_X29_Y24_N28
\inst|pixel_row[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[4]~feeder_combout\ = \inst|v_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|v_count\(4),
	combout => \inst|pixel_row[4]~feeder_combout\);

-- Location: FF_X29_Y24_N29
\inst|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_row[4]~feeder_combout\,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(4));

-- Location: LCCOMB_X29_Y24_N22
\inst|pixel_row[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[5]~feeder_combout\ = \inst|v_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|v_count\(5),
	combout => \inst|pixel_row[5]~feeder_combout\);

-- Location: FF_X29_Y24_N23
\inst|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_row[5]~feeder_combout\,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(5));

-- Location: LCCOMB_X29_Y24_N18
\inst|pixel_row[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[6]~feeder_combout\ = \inst|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|v_count\(6),
	combout => \inst|pixel_row[6]~feeder_combout\);

-- Location: FF_X29_Y24_N19
\inst|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_row[6]~feeder_combout\,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(6));

-- Location: FF_X29_Y24_N25
\inst|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(7),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(7));

-- Location: FF_X29_Y24_N15
\inst|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(8),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(8));

-- Location: FF_X26_Y26_N27
\inst|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(2),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(2));

-- Location: LCCOMB_X24_Y24_N0
\inst7|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = (\inst7|Mux0~0_combout\ & (((\inst7|altsyncram_component|auto_generated|q_a\(0)) # (!\inst|pixel_column\(2))))) # (!\inst7|Mux0~0_combout\ & (\inst7|altsyncram_component|auto_generated|q_a\(1) & (\inst|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~0_combout\,
	datab => \inst7|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst|pixel_column\(2),
	datad => \inst7|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst7|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y25_N20
\inst|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_out~0_combout\ = (\inst|blue_out~0_combout\ & ((\inst|pixel_column\(3) & ((\inst7|Mux0~1_combout\))) # (!\inst|pixel_column\(3) & (\inst7|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~3_combout\,
	datab => \inst|pixel_column\(3),
	datac => \inst|blue_out~0_combout\,
	datad => \inst7|Mux0~1_combout\,
	combout => \inst|red_out~0_combout\);

-- Location: FF_X29_Y25_N5
\inst|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|red_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_out~q\);

-- Location: FF_X29_Y25_N31
\inst|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|red_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|green_out~q\);

-- Location: FF_X26_Y25_N21
\inst|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(9),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(9));

-- Location: IOIBUF_X0_Y25_N22
\sw2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2,
	o => \sw2~input_o\);

-- Location: LCCOMB_X26_Y25_N12
\inst4|ball_x_motion[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_x_motion[2]~feeder_combout\ = \sw2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw2~input_o\,
	combout => \inst4|ball_x_motion[2]~feeder_combout\);

-- Location: FF_X26_Y25_N13
\inst4|ball_x_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|ball_x_motion[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(2));

-- Location: LCCOMB_X26_Y25_N2
\inst4|Add12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~7_combout\ = \inst4|ball_x_motion\(2) $ (\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ball_x_motion\(2),
	datad => \inst4|ball_x_motionminus~q\,
	combout => \inst4|Add12~7_combout\);

-- Location: IOIBUF_X0_Y27_N1
\sw1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: FF_X26_Y25_N5
\inst4|ball_x_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sw1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(1));

-- Location: LCCOMB_X26_Y25_N10
\inst4|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~8_combout\ = \inst4|ball_x_motion\(1) $ (\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ball_x_motion\(1),
	datad => \inst4|ball_x_motionminus~q\,
	combout => \inst4|Add12~8_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: LCCOMB_X27_Y25_N8
\inst4|ball_x_motion[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_x_motion[0]~feeder_combout\ = \sw0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw0~input_o\,
	combout => \inst4|ball_x_motion[0]~feeder_combout\);

-- Location: FF_X27_Y25_N9
\inst4|ball_x_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|ball_x_motion[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(0));

-- Location: LCCOMB_X27_Y25_N2
\inst4|Add12~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~9_combout\ = \inst4|ball_x_motion\(0) $ (\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ball_x_motion\(0),
	datad => \inst4|ball_x_motionminus~q\,
	combout => \inst4|Add12~9_combout\);

-- Location: LCCOMB_X23_Y25_N8
\inst4|Add12~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~11_cout\ = CARRY(\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_motionminus~q\,
	datad => VCC,
	cout => \inst4|Add12~11_cout\);

-- Location: LCCOMB_X23_Y25_N10
\inst4|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~12_combout\ = (\inst4|ball_x_pos\(0) & ((\inst4|Add12~9_combout\ & (\inst4|Add12~11_cout\ & VCC)) # (!\inst4|Add12~9_combout\ & (!\inst4|Add12~11_cout\)))) # (!\inst4|ball_x_pos\(0) & ((\inst4|Add12~9_combout\ & (!\inst4|Add12~11_cout\)) # 
-- (!\inst4|Add12~9_combout\ & ((\inst4|Add12~11_cout\) # (GND)))))
-- \inst4|Add12~13\ = CARRY((\inst4|ball_x_pos\(0) & (!\inst4|Add12~9_combout\ & !\inst4|Add12~11_cout\)) # (!\inst4|ball_x_pos\(0) & ((!\inst4|Add12~11_cout\) # (!\inst4|Add12~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(0),
	datab => \inst4|Add12~9_combout\,
	datad => VCC,
	cin => \inst4|Add12~11_cout\,
	combout => \inst4|Add12~12_combout\,
	cout => \inst4|Add12~13\);

-- Location: LCCOMB_X23_Y25_N12
\inst4|Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~14_combout\ = ((\inst4|ball_x_pos\(1) $ (\inst4|Add12~8_combout\ $ (!\inst4|Add12~13\)))) # (GND)
-- \inst4|Add12~15\ = CARRY((\inst4|ball_x_pos\(1) & ((\inst4|Add12~8_combout\) # (!\inst4|Add12~13\))) # (!\inst4|ball_x_pos\(1) & (\inst4|Add12~8_combout\ & !\inst4|Add12~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(1),
	datab => \inst4|Add12~8_combout\,
	datad => VCC,
	cin => \inst4|Add12~13\,
	combout => \inst4|Add12~14_combout\,
	cout => \inst4|Add12~15\);

-- Location: LCCOMB_X23_Y25_N14
\inst4|Add12~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~16_combout\ = (\inst4|ball_x_pos\(2) & ((\inst4|Add12~7_combout\ & (\inst4|Add12~15\ & VCC)) # (!\inst4|Add12~7_combout\ & (!\inst4|Add12~15\)))) # (!\inst4|ball_x_pos\(2) & ((\inst4|Add12~7_combout\ & (!\inst4|Add12~15\)) # 
-- (!\inst4|Add12~7_combout\ & ((\inst4|Add12~15\) # (GND)))))
-- \inst4|Add12~17\ = CARRY((\inst4|ball_x_pos\(2) & (!\inst4|Add12~7_combout\ & !\inst4|Add12~15\)) # (!\inst4|ball_x_pos\(2) & ((!\inst4|Add12~15\) # (!\inst4|Add12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(2),
	datab => \inst4|Add12~7_combout\,
	datad => VCC,
	cin => \inst4|Add12~15\,
	combout => \inst4|Add12~16_combout\,
	cout => \inst4|Add12~17\);

-- Location: LCCOMB_X23_Y25_N16
\inst4|Add12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~18_combout\ = ((\inst4|Add12~6_combout\ $ (\inst4|ball_x_pos\(3) $ (\inst4|Add12~17\)))) # (GND)
-- \inst4|Add12~19\ = CARRY((\inst4|Add12~6_combout\ & ((!\inst4|Add12~17\) # (!\inst4|ball_x_pos\(3)))) # (!\inst4|Add12~6_combout\ & (!\inst4|ball_x_pos\(3) & !\inst4|Add12~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add12~6_combout\,
	datab => \inst4|ball_x_pos\(3),
	datad => VCC,
	cin => \inst4|Add12~17\,
	combout => \inst4|Add12~18_combout\,
	cout => \inst4|Add12~19\);

-- Location: LCCOMB_X23_Y25_N4
\inst4|ball_x_pos[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_x_pos[3]~2_combout\ = !\inst4|Add12~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add12~18_combout\,
	combout => \inst4|ball_x_pos[3]~2_combout\);

-- Location: FF_X23_Y25_N5
\inst4|ball_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|ball_x_pos[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(3));

-- Location: LCCOMB_X23_Y25_N18
\inst4|Add12~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~20_combout\ = (\inst4|Add12~5_combout\ & ((\inst4|ball_x_pos\(4) & (\inst4|Add12~19\ & VCC)) # (!\inst4|ball_x_pos\(4) & (!\inst4|Add12~19\)))) # (!\inst4|Add12~5_combout\ & ((\inst4|ball_x_pos\(4) & (!\inst4|Add12~19\)) # 
-- (!\inst4|ball_x_pos\(4) & ((\inst4|Add12~19\) # (GND)))))
-- \inst4|Add12~21\ = CARRY((\inst4|Add12~5_combout\ & (!\inst4|ball_x_pos\(4) & !\inst4|Add12~19\)) # (!\inst4|Add12~5_combout\ & ((!\inst4|Add12~19\) # (!\inst4|ball_x_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add12~5_combout\,
	datab => \inst4|ball_x_pos\(4),
	datad => VCC,
	cin => \inst4|Add12~19\,
	combout => \inst4|Add12~20_combout\,
	cout => \inst4|Add12~21\);

-- Location: FF_X23_Y25_N19
\inst4|ball_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add12~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(4));

-- Location: LCCOMB_X23_Y25_N20
\inst4|Add12~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~22_combout\ = ((\inst4|Add12~4_combout\ $ (\inst4|ball_x_pos\(5) $ (!\inst4|Add12~21\)))) # (GND)
-- \inst4|Add12~23\ = CARRY((\inst4|Add12~4_combout\ & ((\inst4|ball_x_pos\(5)) # (!\inst4|Add12~21\))) # (!\inst4|Add12~4_combout\ & (\inst4|ball_x_pos\(5) & !\inst4|Add12~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add12~4_combout\,
	datab => \inst4|ball_x_pos\(5),
	datad => VCC,
	cin => \inst4|Add12~21\,
	combout => \inst4|Add12~22_combout\,
	cout => \inst4|Add12~23\);

-- Location: FF_X23_Y25_N21
\inst4|ball_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add12~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(5));

-- Location: LCCOMB_X26_Y25_N18
\inst4|Add12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~3_combout\ = \inst4|ball_x_motion\(6) $ (\inst4|ball_x_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_motion\(6),
	datab => \inst4|ball_x_motionminus~q\,
	combout => \inst4|Add12~3_combout\);

-- Location: LCCOMB_X23_Y25_N22
\inst4|Add12~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~24_combout\ = (\inst4|ball_x_pos\(6) & ((\inst4|Add12~3_combout\ & (!\inst4|Add12~23\)) # (!\inst4|Add12~3_combout\ & ((\inst4|Add12~23\) # (GND))))) # (!\inst4|ball_x_pos\(6) & ((\inst4|Add12~3_combout\ & (\inst4|Add12~23\ & VCC)) # 
-- (!\inst4|Add12~3_combout\ & (!\inst4|Add12~23\))))
-- \inst4|Add12~25\ = CARRY((\inst4|ball_x_pos\(6) & ((!\inst4|Add12~23\) # (!\inst4|Add12~3_combout\))) # (!\inst4|ball_x_pos\(6) & (!\inst4|Add12~3_combout\ & !\inst4|Add12~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(6),
	datab => \inst4|Add12~3_combout\,
	datad => VCC,
	cin => \inst4|Add12~23\,
	combout => \inst4|Add12~24_combout\,
	cout => \inst4|Add12~25\);

-- Location: LCCOMB_X23_Y25_N24
\inst4|Add12~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~26_combout\ = ((\inst4|Add12~2_combout\ $ (\inst4|ball_x_pos\(7) $ (\inst4|Add12~25\)))) # (GND)
-- \inst4|Add12~27\ = CARRY((\inst4|Add12~2_combout\ & ((!\inst4|Add12~25\) # (!\inst4|ball_x_pos\(7)))) # (!\inst4|Add12~2_combout\ & (!\inst4|ball_x_pos\(7) & !\inst4|Add12~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add12~2_combout\,
	datab => \inst4|ball_x_pos\(7),
	datad => VCC,
	cin => \inst4|Add12~25\,
	combout => \inst4|Add12~26_combout\,
	cout => \inst4|Add12~27\);

-- Location: LCCOMB_X23_Y25_N0
\inst4|ball_x_pos[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_x_pos[7]~0_combout\ = !\inst4|Add12~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Add12~26_combout\,
	combout => \inst4|ball_x_pos[7]~0_combout\);

-- Location: FF_X23_Y25_N1
\inst4|ball_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|ball_x_pos[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(7));

-- Location: LCCOMB_X23_Y25_N26
\inst4|Add12~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~28_combout\ = (\inst4|Add12~1_combout\ & ((\inst4|ball_x_pos\(8) & (\inst4|Add12~27\ & VCC)) # (!\inst4|ball_x_pos\(8) & (!\inst4|Add12~27\)))) # (!\inst4|Add12~1_combout\ & ((\inst4|ball_x_pos\(8) & (!\inst4|Add12~27\)) # 
-- (!\inst4|ball_x_pos\(8) & ((\inst4|Add12~27\) # (GND)))))
-- \inst4|Add12~29\ = CARRY((\inst4|Add12~1_combout\ & (!\inst4|ball_x_pos\(8) & !\inst4|Add12~27\)) # (!\inst4|Add12~1_combout\ & ((!\inst4|Add12~27\) # (!\inst4|ball_x_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add12~1_combout\,
	datab => \inst4|ball_x_pos\(8),
	datad => VCC,
	cin => \inst4|Add12~27\,
	combout => \inst4|Add12~28_combout\,
	cout => \inst4|Add12~29\);

-- Location: FF_X23_Y25_N27
\inst4|ball_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add12~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(8));

-- Location: LCCOMB_X22_Y25_N26
\inst4|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan7~1_combout\ = ((\inst4|ball_x_pos\(8)) # ((!\inst4|ball_x_pos\(3) & \inst4|ball_x_pos\(4)))) # (!\inst4|ball_x_pos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(3),
	datab => \inst4|ball_x_pos\(4),
	datac => \inst4|ball_x_pos\(7),
	datad => \inst4|ball_x_pos\(8),
	combout => \inst4|LessThan7~1_combout\);

-- Location: FF_X23_Y25_N15
\inst4|ball_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add12~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(2));

-- Location: FF_X23_Y25_N7
\inst4|ball_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	asdata => \inst4|Add12~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(0));

-- Location: FF_X23_Y25_N13
\inst4|ball_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add12~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(1));

-- Location: LCCOMB_X23_Y25_N6
\inst4|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan7~0_combout\ = (\inst4|ball_x_pos\(4) & (\inst4|ball_x_pos\(2) & ((\inst4|ball_x_pos\(0)) # (\inst4|ball_x_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(4),
	datab => \inst4|ball_x_pos\(2),
	datac => \inst4|ball_x_pos\(0),
	datad => \inst4|ball_x_pos\(1),
	combout => \inst4|LessThan7~0_combout\);

-- Location: LCCOMB_X22_Y25_N28
\inst4|LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan7~2_combout\ = ((\inst4|ball_x_pos\(5)) # ((\inst4|LessThan7~1_combout\) # (\inst4|LessThan7~0_combout\))) # (!\inst4|ball_x_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(6),
	datab => \inst4|ball_x_pos\(5),
	datac => \inst4|LessThan7~1_combout\,
	datad => \inst4|LessThan7~0_combout\,
	combout => \inst4|LessThan7~2_combout\);

-- Location: LCCOMB_X23_Y25_N30
\inst4|ball_x_pos[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_x_pos[6]~1_combout\ = !\inst4|Add12~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add12~24_combout\,
	combout => \inst4|ball_x_pos[6]~1_combout\);

-- Location: FF_X23_Y25_N31
\inst4|ball_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|ball_x_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(6));

-- Location: LCCOMB_X22_Y25_N8
\inst4|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan6~0_combout\ = (\inst4|ball_x_pos\(5) & (!\inst4|ball_x_pos\(7) & (!\inst4|ball_x_pos\(6) & \inst4|ball_x_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(5),
	datab => \inst4|ball_x_pos\(7),
	datac => \inst4|ball_x_pos\(6),
	datad => \inst4|ball_x_pos\(8),
	combout => \inst4|LessThan6~0_combout\);

-- Location: LCCOMB_X27_Y25_N16
\inst4|ball_x_motionminus~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_x_motionminus~0_combout\ = (\inst4|ball_x_pos\(9)) # ((\inst4|LessThan6~0_combout\) # ((\inst4|LessThan7~2_combout\ & \inst4|ball_x_motionminus~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(9),
	datab => \inst4|LessThan7~2_combout\,
	datac => \inst4|ball_x_motionminus~q\,
	datad => \inst4|LessThan6~0_combout\,
	combout => \inst4|ball_x_motionminus~0_combout\);

-- Location: FF_X27_Y25_N17
\inst4|ball_x_motionminus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|ball_x_motionminus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motionminus~q\);

-- Location: IOIBUF_X0_Y25_N1
\sw9~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

-- Location: FF_X26_Y25_N15
\inst4|ball_x_motion[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sw9~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(9));

-- Location: LCCOMB_X26_Y25_N16
\inst4|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~0_combout\ = \inst4|ball_x_motionminus~q\ $ (\inst4|ball_x_motion\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_motionminus~q\,
	datad => \inst4|ball_x_motion\(9),
	combout => \inst4|Add12~0_combout\);

-- Location: LCCOMB_X23_Y25_N28
\inst4|Add12~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add12~30_combout\ = \inst4|ball_x_pos\(9) $ (\inst4|Add12~29\ $ (!\inst4|Add12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_pos\(9),
	datad => \inst4|Add12~0_combout\,
	cin => \inst4|Add12~29\,
	combout => \inst4|Add12~30_combout\);

-- Location: FF_X23_Y25_N29
\inst4|ball_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add12~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_pos\(9));

-- Location: LCCOMB_X22_Y25_N10
\inst4|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~0_combout\ = (\inst4|ball_x_pos\(3) & (\inst4|ball_x_pos\(2) & VCC)) # (!\inst4|ball_x_pos\(3) & (\inst4|ball_x_pos\(2) $ (VCC)))
-- \inst4|Add1~1\ = CARRY((!\inst4|ball_x_pos\(3) & \inst4|ball_x_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(3),
	datab => \inst4|ball_x_pos\(2),
	datad => VCC,
	combout => \inst4|Add1~0_combout\,
	cout => \inst4|Add1~1\);

-- Location: LCCOMB_X22_Y25_N14
\inst4|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~4_combout\ = (\inst4|ball_x_pos\(5) & (\inst4|Add1~3\ $ (GND))) # (!\inst4|ball_x_pos\(5) & (!\inst4|Add1~3\ & VCC))
-- \inst4|Add1~5\ = CARRY((\inst4|ball_x_pos\(5) & !\inst4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_pos\(5),
	datad => VCC,
	cin => \inst4|Add1~3\,
	combout => \inst4|Add1~4_combout\,
	cout => \inst4|Add1~5\);

-- Location: LCCOMB_X22_Y25_N16
\inst4|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~6_combout\ = (\inst4|ball_x_pos\(6) & ((\inst4|Add1~5\) # (GND))) # (!\inst4|ball_x_pos\(6) & (!\inst4|Add1~5\))
-- \inst4|Add1~7\ = CARRY((\inst4|ball_x_pos\(6)) # (!\inst4|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(6),
	datad => VCC,
	cin => \inst4|Add1~5\,
	combout => \inst4|Add1~6_combout\,
	cout => \inst4|Add1~7\);

-- Location: LCCOMB_X22_Y25_N22
\inst4|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~12_combout\ = (\inst4|ball_x_pos\(9) & (\inst4|Add1~11\ $ (GND))) # (!\inst4|ball_x_pos\(9) & (!\inst4|Add1~11\ & VCC))
-- \inst4|Add1~13\ = CARRY((\inst4|ball_x_pos\(9) & !\inst4|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_pos\(9),
	datad => VCC,
	cin => \inst4|Add1~11\,
	combout => \inst4|Add1~12_combout\,
	cout => \inst4|Add1~13\);

-- Location: LCCOMB_X24_Y24_N28
\inst|pixel_column[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_column[8]~feeder_combout\ = \inst|h_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|h_count\(8),
	combout => \inst|pixel_column[8]~feeder_combout\);

-- Location: FF_X24_Y24_N29
\inst|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_column[8]~feeder_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(8));

-- Location: FF_X26_Y26_N29
\inst|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(7),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(7));

-- Location: FF_X23_Y24_N7
\inst|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(4),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(4));

-- Location: LCCOMB_X23_Y24_N10
\inst4|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~1_cout\ = CARRY((\inst|pixel_column\(0) & !\inst4|ball_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(0),
	datab => \inst4|ball_x_pos\(0),
	datad => VCC,
	cout => \inst4|LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y24_N12
\inst4|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~3_cout\ = CARRY((\inst|pixel_column\(1) & (\inst4|ball_x_pos\(1) & !\inst4|LessThan1~1_cout\)) # (!\inst|pixel_column\(1) & ((\inst4|ball_x_pos\(1)) # (!\inst4|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(1),
	datab => \inst4|ball_x_pos\(1),
	datad => VCC,
	cin => \inst4|LessThan1~1_cout\,
	cout => \inst4|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y24_N14
\inst4|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~5_cout\ = CARRY((\inst|pixel_column\(2) & ((\inst4|ball_x_pos\(2)) # (!\inst4|LessThan1~3_cout\))) # (!\inst|pixel_column\(2) & (\inst4|ball_x_pos\(2) & !\inst4|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst4|ball_x_pos\(2),
	datad => VCC,
	cin => \inst4|LessThan1~3_cout\,
	cout => \inst4|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y24_N16
\inst4|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~7_cout\ = CARRY((\inst|pixel_column\(3) & (\inst4|Add1~0_combout\ & !\inst4|LessThan1~5_cout\)) # (!\inst|pixel_column\(3) & ((\inst4|Add1~0_combout\) # (!\inst4|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(3),
	datab => \inst4|Add1~0_combout\,
	datad => VCC,
	cin => \inst4|LessThan1~5_cout\,
	cout => \inst4|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y24_N18
\inst4|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~9_cout\ = CARRY((\inst4|Add1~2_combout\ & (\inst|pixel_column\(4) & !\inst4|LessThan1~7_cout\)) # (!\inst4|Add1~2_combout\ & ((\inst|pixel_column\(4)) # (!\inst4|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~2_combout\,
	datab => \inst|pixel_column\(4),
	datad => VCC,
	cin => \inst4|LessThan1~7_cout\,
	cout => \inst4|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y24_N20
\inst4|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~11_cout\ = CARRY((\inst|pixel_column\(5) & (\inst4|Add1~4_combout\ & !\inst4|LessThan1~9_cout\)) # (!\inst|pixel_column\(5) & ((\inst4|Add1~4_combout\) # (!\inst4|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(5),
	datab => \inst4|Add1~4_combout\,
	datad => VCC,
	cin => \inst4|LessThan1~9_cout\,
	cout => \inst4|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y24_N22
\inst4|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~13_cout\ = CARRY((\inst|pixel_column\(6) & ((!\inst4|LessThan1~11_cout\) # (!\inst4|Add1~6_combout\))) # (!\inst|pixel_column\(6) & (!\inst4|Add1~6_combout\ & !\inst4|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(6),
	datab => \inst4|Add1~6_combout\,
	datad => VCC,
	cin => \inst4|LessThan1~11_cout\,
	cout => \inst4|LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y24_N24
\inst4|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~15_cout\ = CARRY((\inst4|Add1~8_combout\ & ((!\inst4|LessThan1~13_cout\) # (!\inst|pixel_column\(7)))) # (!\inst4|Add1~8_combout\ & (!\inst|pixel_column\(7) & !\inst4|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~8_combout\,
	datab => \inst|pixel_column\(7),
	datad => VCC,
	cin => \inst4|LessThan1~13_cout\,
	cout => \inst4|LessThan1~15_cout\);

-- Location: LCCOMB_X23_Y24_N26
\inst4|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~17_cout\ = CARRY((\inst4|Add1~10_combout\ & (\inst|pixel_column\(8) & !\inst4|LessThan1~15_cout\)) # (!\inst4|Add1~10_combout\ & ((\inst|pixel_column\(8)) # (!\inst4|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~10_combout\,
	datab => \inst|pixel_column\(8),
	datad => VCC,
	cin => \inst4|LessThan1~15_cout\,
	cout => \inst4|LessThan1~17_cout\);

-- Location: LCCOMB_X23_Y24_N28
\inst4|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~18_combout\ = (\inst|pixel_column\(9) & ((\inst4|LessThan1~17_cout\) # (!\inst4|Add1~12_combout\))) # (!\inst|pixel_column\(9) & (\inst4|LessThan1~17_cout\ & !\inst4|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(9),
	datad => \inst4|Add1~12_combout\,
	cin => \inst4|LessThan1~17_cout\,
	combout => \inst4|LessThan1~18_combout\);

-- Location: IOIBUF_X0_Y25_N15
\sw6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw6,
	o => \sw6~input_o\);

-- Location: FF_X26_Y25_N17
\inst4|ball_x_motion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sw6~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(6));

-- Location: LCCOMB_X26_Y25_N20
\inst4|Add10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~3_combout\ = \inst4|ball_x_motion\(6) $ (\inst4|ball_y_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_x_motion\(6),
	datad => \inst4|ball_y_motionminus~q\,
	combout => \inst4|Add10~3_combout\);

-- Location: IOIBUF_X0_Y23_N8
\sw3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw3,
	o => \sw3~input_o\);

-- Location: FF_X23_Y25_N3
\inst4|ball_x_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sw3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(3));

-- Location: LCCOMB_X27_Y24_N2
\inst4|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~6_combout\ = \inst4|ball_y_motionminus~q\ $ (\inst4|ball_x_motion\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_motionminus~q\,
	datad => \inst4|ball_x_motion\(3),
	combout => \inst4|Add10~6_combout\);

-- Location: LCCOMB_X26_Y25_N14
\inst4|Add10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~7_combout\ = \inst4|ball_x_motion\(2) $ (\inst4|ball_y_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_motion\(2),
	datab => \inst4|ball_y_motionminus~q\,
	combout => \inst4|Add10~7_combout\);

-- Location: LCCOMB_X27_Y24_N4
\inst4|Add10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~11_cout\ = CARRY(\inst4|ball_y_motionminus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_motionminus~q\,
	datad => VCC,
	cout => \inst4|Add10~11_cout\);

-- Location: LCCOMB_X27_Y24_N6
\inst4|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~12_combout\ = (\inst4|Add10~9_combout\ & ((\inst4|ball_y_pos\(0) & (\inst4|Add10~11_cout\ & VCC)) # (!\inst4|ball_y_pos\(0) & (!\inst4|Add10~11_cout\)))) # (!\inst4|Add10~9_combout\ & ((\inst4|ball_y_pos\(0) & (!\inst4|Add10~11_cout\)) # 
-- (!\inst4|ball_y_pos\(0) & ((\inst4|Add10~11_cout\) # (GND)))))
-- \inst4|Add10~13\ = CARRY((\inst4|Add10~9_combout\ & (!\inst4|ball_y_pos\(0) & !\inst4|Add10~11_cout\)) # (!\inst4|Add10~9_combout\ & ((!\inst4|Add10~11_cout\) # (!\inst4|ball_y_pos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add10~9_combout\,
	datab => \inst4|ball_y_pos\(0),
	datad => VCC,
	cin => \inst4|Add10~11_cout\,
	combout => \inst4|Add10~12_combout\,
	cout => \inst4|Add10~13\);

-- Location: FF_X27_Y24_N29
\inst4|ball_y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	asdata => \inst4|Add10~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(0));

-- Location: LCCOMB_X27_Y24_N8
\inst4|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~14_combout\ = ((\inst4|Add10~8_combout\ $ (\inst4|ball_y_pos\(1) $ (!\inst4|Add10~13\)))) # (GND)
-- \inst4|Add10~15\ = CARRY((\inst4|Add10~8_combout\ & ((\inst4|ball_y_pos\(1)) # (!\inst4|Add10~13\))) # (!\inst4|Add10~8_combout\ & (\inst4|ball_y_pos\(1) & !\inst4|Add10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add10~8_combout\,
	datab => \inst4|ball_y_pos\(1),
	datad => VCC,
	cin => \inst4|Add10~13\,
	combout => \inst4|Add10~14_combout\,
	cout => \inst4|Add10~15\);

-- Location: FF_X27_Y24_N9
\inst4|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add10~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(1));

-- Location: LCCOMB_X27_Y24_N10
\inst4|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~16_combout\ = (\inst4|ball_y_pos\(2) & ((\inst4|Add10~7_combout\ & (\inst4|Add10~15\ & VCC)) # (!\inst4|Add10~7_combout\ & (!\inst4|Add10~15\)))) # (!\inst4|ball_y_pos\(2) & ((\inst4|Add10~7_combout\ & (!\inst4|Add10~15\)) # 
-- (!\inst4|Add10~7_combout\ & ((\inst4|Add10~15\) # (GND)))))
-- \inst4|Add10~17\ = CARRY((\inst4|ball_y_pos\(2) & (!\inst4|Add10~7_combout\ & !\inst4|Add10~15\)) # (!\inst4|ball_y_pos\(2) & ((!\inst4|Add10~15\) # (!\inst4|Add10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(2),
	datab => \inst4|Add10~7_combout\,
	datad => VCC,
	cin => \inst4|Add10~15\,
	combout => \inst4|Add10~16_combout\,
	cout => \inst4|Add10~17\);

-- Location: LCCOMB_X27_Y24_N14
\inst4|Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~20_combout\ = (\inst4|Add10~5_combout\ & ((\inst4|ball_y_pos\(4) & (\inst4|Add10~19\ & VCC)) # (!\inst4|ball_y_pos\(4) & (!\inst4|Add10~19\)))) # (!\inst4|Add10~5_combout\ & ((\inst4|ball_y_pos\(4) & (!\inst4|Add10~19\)) # 
-- (!\inst4|ball_y_pos\(4) & ((\inst4|Add10~19\) # (GND)))))
-- \inst4|Add10~21\ = CARRY((\inst4|Add10~5_combout\ & (!\inst4|ball_y_pos\(4) & !\inst4|Add10~19\)) # (!\inst4|Add10~5_combout\ & ((!\inst4|Add10~19\) # (!\inst4|ball_y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add10~5_combout\,
	datab => \inst4|ball_y_pos\(4),
	datad => VCC,
	cin => \inst4|Add10~19\,
	combout => \inst4|Add10~20_combout\,
	cout => \inst4|Add10~21\);

-- Location: FF_X27_Y24_N15
\inst4|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add10~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(4));

-- Location: LCCOMB_X27_Y24_N16
\inst4|Add10~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~22_combout\ = ((\inst4|Add10~4_combout\ $ (\inst4|ball_y_pos\(5) $ (!\inst4|Add10~21\)))) # (GND)
-- \inst4|Add10~23\ = CARRY((\inst4|Add10~4_combout\ & ((\inst4|ball_y_pos\(5)) # (!\inst4|Add10~21\))) # (!\inst4|Add10~4_combout\ & (\inst4|ball_y_pos\(5) & !\inst4|Add10~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add10~4_combout\,
	datab => \inst4|ball_y_pos\(5),
	datad => VCC,
	cin => \inst4|Add10~21\,
	combout => \inst4|Add10~22_combout\,
	cout => \inst4|Add10~23\);

-- Location: FF_X27_Y24_N17
\inst4|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add10~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(5));

-- Location: LCCOMB_X27_Y24_N18
\inst4|Add10~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~24_combout\ = (\inst4|ball_y_pos\(6) & ((\inst4|Add10~3_combout\ & (!\inst4|Add10~23\)) # (!\inst4|Add10~3_combout\ & ((\inst4|Add10~23\) # (GND))))) # (!\inst4|ball_y_pos\(6) & ((\inst4|Add10~3_combout\ & (\inst4|Add10~23\ & VCC)) # 
-- (!\inst4|Add10~3_combout\ & (!\inst4|Add10~23\))))
-- \inst4|Add10~25\ = CARRY((\inst4|ball_y_pos\(6) & ((!\inst4|Add10~23\) # (!\inst4|Add10~3_combout\))) # (!\inst4|ball_y_pos\(6) & (!\inst4|Add10~3_combout\ & !\inst4|Add10~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(6),
	datab => \inst4|Add10~3_combout\,
	datad => VCC,
	cin => \inst4|Add10~23\,
	combout => \inst4|Add10~24_combout\,
	cout => \inst4|Add10~25\);

-- Location: LCCOMB_X27_Y24_N20
\inst4|Add10~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~26_combout\ = ((\inst4|Add10~2_combout\ $ (\inst4|ball_y_pos\(7) $ (\inst4|Add10~25\)))) # (GND)
-- \inst4|Add10~27\ = CARRY((\inst4|Add10~2_combout\ & ((!\inst4|Add10~25\) # (!\inst4|ball_y_pos\(7)))) # (!\inst4|Add10~2_combout\ & (!\inst4|ball_y_pos\(7) & !\inst4|Add10~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add10~2_combout\,
	datab => \inst4|ball_y_pos\(7),
	datad => VCC,
	cin => \inst4|Add10~25\,
	combout => \inst4|Add10~26_combout\,
	cout => \inst4|Add10~27\);

-- Location: LCCOMB_X27_Y24_N0
\inst4|ball_y_pos[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_y_pos[7]~0_combout\ = !\inst4|Add10~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Add10~26_combout\,
	combout => \inst4|ball_y_pos[7]~0_combout\);

-- Location: FF_X27_Y24_N1
\inst4|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|ball_y_pos[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(7));

-- Location: LCCOMB_X27_Y24_N22
\inst4|Add10~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~28_combout\ = (\inst4|ball_y_pos\(8) & ((\inst4|Add10~1_combout\ & (\inst4|Add10~27\ & VCC)) # (!\inst4|Add10~1_combout\ & (!\inst4|Add10~27\)))) # (!\inst4|ball_y_pos\(8) & ((\inst4|Add10~1_combout\ & (!\inst4|Add10~27\)) # 
-- (!\inst4|Add10~1_combout\ & ((\inst4|Add10~27\) # (GND)))))
-- \inst4|Add10~29\ = CARRY((\inst4|ball_y_pos\(8) & (!\inst4|Add10~1_combout\ & !\inst4|Add10~27\)) # (!\inst4|ball_y_pos\(8) & ((!\inst4|Add10~27\) # (!\inst4|Add10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(8),
	datab => \inst4|Add10~1_combout\,
	datad => VCC,
	cin => \inst4|Add10~27\,
	combout => \inst4|Add10~28_combout\,
	cout => \inst4|Add10~29\);

-- Location: FF_X27_Y24_N23
\inst4|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add10~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(8));

-- Location: LCCOMB_X26_Y25_N4
\inst4|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan4~2_combout\ = (\inst4|ball_y_pos\(6)) # ((\inst4|ball_y_pos\(7)) # (!\inst4|ball_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(6),
	datab => \inst4|ball_y_pos\(8),
	datad => \inst4|ball_y_pos\(7),
	combout => \inst4|LessThan4~2_combout\);

-- Location: LCCOMB_X27_Y25_N0
\inst4|ball_y_motionminus~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_y_motionminus~0_combout\ = ((\inst4|ball_y_pos\(8)) # ((\inst4|ball_y_pos\(5)) # (!\inst4|ball_y_pos\(7)))) # (!\inst4|ball_y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(6),
	datab => \inst4|ball_y_pos\(8),
	datac => \inst4|ball_y_pos\(5),
	datad => \inst4|ball_y_pos\(7),
	combout => \inst4|ball_y_motionminus~0_combout\);

-- Location: LCCOMB_X27_Y25_N24
\inst4|ball_y_motionminus~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_y_motionminus~2_combout\ = (\inst4|ball_y_motionminus~q\ & ((\inst4|ball_y_motionminus~0_combout\) # ((\inst4|ball_y_motionminus~1_combout\ & \inst4|ball_y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_motionminus~1_combout\,
	datab => \inst4|ball_y_motionminus~q\,
	datac => \inst4|ball_y_pos\(4),
	datad => \inst4|ball_y_motionminus~0_combout\,
	combout => \inst4|ball_y_motionminus~2_combout\);

-- Location: LCCOMB_X26_Y25_N8
\inst4|ball_y_motionminus~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_y_motionminus~3_combout\ = (\inst4|ball_y_pos\(9)) # ((\inst4|ball_y_motionminus~2_combout\) # ((!\inst4|LessThan4~1_combout\ & !\inst4|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan4~1_combout\,
	datab => \inst4|LessThan4~2_combout\,
	datac => \inst4|ball_y_pos\(9),
	datad => \inst4|ball_y_motionminus~2_combout\,
	combout => \inst4|ball_y_motionminus~3_combout\);

-- Location: FF_X26_Y25_N9
\inst4|ball_y_motionminus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|ball_y_motionminus~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_motionminus~q\);

-- Location: IOIBUF_X0_Y26_N1
\sw8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw8,
	o => \sw8~input_o\);

-- Location: FF_X26_Y25_N27
\inst4|ball_x_motion[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sw8~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_x_motion\(8));

-- Location: LCCOMB_X26_Y25_N6
\inst4|Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~1_combout\ = \inst4|ball_y_motionminus~q\ $ (\inst4|ball_x_motion\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_motionminus~q\,
	datac => \inst4|ball_x_motion\(8),
	combout => \inst4|Add10~1_combout\);

-- Location: LCCOMB_X27_Y24_N24
\inst4|Add10~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add10~30_combout\ = \inst4|Add10~0_combout\ $ (\inst4|ball_y_pos\(9) $ (!\inst4|Add10~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add10~0_combout\,
	datab => \inst4|ball_y_pos\(9),
	cin => \inst4|Add10~29\,
	combout => \inst4|Add10~30_combout\);

-- Location: FF_X27_Y24_N25
\inst4|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add10~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(9));

-- Location: LCCOMB_X29_Y24_N6
\inst4|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add2~2_combout\ = (\inst|pixel_row\(4) & (\inst4|Add2~1\ & VCC)) # (!\inst|pixel_row\(4) & (!\inst4|Add2~1\))
-- \inst4|Add2~3\ = CARRY((!\inst|pixel_row\(4) & !\inst4|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(4),
	datad => VCC,
	cin => \inst4|Add2~1\,
	combout => \inst4|Add2~2_combout\,
	cout => \inst4|Add2~3\);

-- Location: LCCOMB_X29_Y24_N8
\inst4|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add2~4_combout\ = (\inst|pixel_row\(5) & (\inst4|Add2~3\ $ (GND))) # (!\inst|pixel_row\(5) & (!\inst4|Add2~3\ & VCC))
-- \inst4|Add2~5\ = CARRY((\inst|pixel_row\(5) & !\inst4|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(5),
	datad => VCC,
	cin => \inst4|Add2~3\,
	combout => \inst4|Add2~4_combout\,
	cout => \inst4|Add2~5\);

-- Location: LCCOMB_X29_Y24_N10
\inst4|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add2~6_combout\ = (\inst|pixel_row\(6) & (!\inst4|Add2~5\)) # (!\inst|pixel_row\(6) & ((\inst4|Add2~5\) # (GND)))
-- \inst4|Add2~7\ = CARRY((!\inst4|Add2~5\) # (!\inst|pixel_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(6),
	datad => VCC,
	cin => \inst4|Add2~5\,
	combout => \inst4|Add2~6_combout\,
	cout => \inst4|Add2~7\);

-- Location: LCCOMB_X27_Y24_N30
\inst4|ball_y_pos[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_y_pos[3]~2_combout\ = !\inst4|Add10~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add10~18_combout\,
	combout => \inst4|ball_y_pos[3]~2_combout\);

-- Location: FF_X27_Y24_N31
\inst4|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|ball_y_pos[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(3));

-- Location: LCCOMB_X31_Y24_N8
\inst|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~11_combout\ = (\inst|Add1~0_combout\ & ((\inst|process_0~12_combout\) # ((\inst|process_0~11_combout\) # (\inst|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datab => \inst|process_0~11_combout\,
	datac => \inst|process_0~8_combout\,
	datad => \inst|Add1~0_combout\,
	combout => \inst|v_count~11_combout\);

-- Location: FF_X31_Y24_N9
\inst|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count~11_combout\,
	ena => \inst|v_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(0));

-- Location: FF_X28_Y24_N3
\inst|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(0),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(0));

-- Location: LCCOMB_X28_Y24_N6
\inst4|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~1_cout\ = CARRY((\inst4|ball_y_pos\(0) & !\inst|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(0),
	datab => \inst|pixel_row\(0),
	datad => VCC,
	cout => \inst4|LessThan2~1_cout\);

-- Location: LCCOMB_X28_Y24_N8
\inst4|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~3_cout\ = CARRY((\inst4|ball_y_pos\(1) & (\inst|pixel_row\(1) & !\inst4|LessThan2~1_cout\)) # (!\inst4|ball_y_pos\(1) & ((\inst|pixel_row\(1)) # (!\inst4|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(1),
	datab => \inst|pixel_row\(1),
	datad => VCC,
	cin => \inst4|LessThan2~1_cout\,
	cout => \inst4|LessThan2~3_cout\);

-- Location: LCCOMB_X28_Y24_N10
\inst4|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~5_cout\ = CARRY((\inst4|ball_y_pos\(2) & ((\inst|pixel_row\(2)) # (!\inst4|LessThan2~3_cout\))) # (!\inst4|ball_y_pos\(2) & (\inst|pixel_row\(2) & !\inst4|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(2),
	datab => \inst|pixel_row\(2),
	datad => VCC,
	cin => \inst4|LessThan2~3_cout\,
	cout => \inst4|LessThan2~5_cout\);

-- Location: LCCOMB_X28_Y24_N12
\inst4|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~7_cout\ = CARRY((\inst4|Add2~0_combout\ & ((\inst4|ball_y_pos\(3)) # (!\inst4|LessThan2~5_cout\))) # (!\inst4|Add2~0_combout\ & (\inst4|ball_y_pos\(3) & !\inst4|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~0_combout\,
	datab => \inst4|ball_y_pos\(3),
	datad => VCC,
	cin => \inst4|LessThan2~5_cout\,
	cout => \inst4|LessThan2~7_cout\);

-- Location: LCCOMB_X28_Y24_N14
\inst4|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~9_cout\ = CARRY((\inst4|ball_y_pos\(4) & ((!\inst4|LessThan2~7_cout\) # (!\inst4|Add2~2_combout\))) # (!\inst4|ball_y_pos\(4) & (!\inst4|Add2~2_combout\ & !\inst4|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(4),
	datab => \inst4|Add2~2_combout\,
	datad => VCC,
	cin => \inst4|LessThan2~7_cout\,
	cout => \inst4|LessThan2~9_cout\);

-- Location: LCCOMB_X28_Y24_N16
\inst4|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~11_cout\ = CARRY((\inst4|ball_y_pos\(5) & (\inst4|Add2~4_combout\ & !\inst4|LessThan2~9_cout\)) # (!\inst4|ball_y_pos\(5) & ((\inst4|Add2~4_combout\) # (!\inst4|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(5),
	datab => \inst4|Add2~4_combout\,
	datad => VCC,
	cin => \inst4|LessThan2~9_cout\,
	cout => \inst4|LessThan2~11_cout\);

-- Location: LCCOMB_X28_Y24_N18
\inst4|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~13_cout\ = CARRY((\inst4|ball_y_pos\(6) & (!\inst4|Add2~6_combout\ & !\inst4|LessThan2~11_cout\)) # (!\inst4|ball_y_pos\(6) & ((!\inst4|LessThan2~11_cout\) # (!\inst4|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(6),
	datab => \inst4|Add2~6_combout\,
	datad => VCC,
	cin => \inst4|LessThan2~11_cout\,
	cout => \inst4|LessThan2~13_cout\);

-- Location: LCCOMB_X28_Y24_N20
\inst4|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~15_cout\ = CARRY((\inst4|ball_y_pos\(7) & ((\inst4|Add2~8_combout\) # (!\inst4|LessThan2~13_cout\))) # (!\inst4|ball_y_pos\(7) & (\inst4|Add2~8_combout\ & !\inst4|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(7),
	datab => \inst4|Add2~8_combout\,
	datad => VCC,
	cin => \inst4|LessThan2~13_cout\,
	cout => \inst4|LessThan2~15_cout\);

-- Location: LCCOMB_X28_Y24_N22
\inst4|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~17_cout\ = CARRY((\inst4|Add2~10_combout\ & (\inst4|ball_y_pos\(8) & !\inst4|LessThan2~15_cout\)) # (!\inst4|Add2~10_combout\ & ((\inst4|ball_y_pos\(8)) # (!\inst4|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~10_combout\,
	datab => \inst4|ball_y_pos\(8),
	datad => VCC,
	cin => \inst4|LessThan2~15_cout\,
	cout => \inst4|LessThan2~17_cout\);

-- Location: LCCOMB_X28_Y24_N24
\inst4|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~18_combout\ = (\inst4|Add2~12_combout\ & (\inst4|LessThan2~17_cout\ & \inst4|ball_y_pos\(9))) # (!\inst4|Add2~12_combout\ & ((\inst4|LessThan2~17_cout\) # (\inst4|ball_y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~12_combout\,
	datad => \inst4|ball_y_pos\(9),
	cin => \inst4|LessThan2~17_cout\,
	combout => \inst4|LessThan2~18_combout\);

-- Location: FF_X24_Y24_N3
\inst|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(6),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(6));

-- Location: FF_X24_Y24_N5
\inst|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(5),
	sload => VCC,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(5));

-- Location: LCCOMB_X24_Y24_N22
\inst4|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = \inst4|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\);

-- Location: LCCOMB_X22_Y25_N24
\inst4|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~14_combout\ = \inst4|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Add1~13\,
	combout => \inst4|Add1~14_combout\);

-- Location: LCCOMB_X27_Y24_N26
\inst4|ball_y_pos[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ball_y_pos[6]~1_combout\ = !\inst4|Add10~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Add10~24_combout\,
	combout => \inst4|ball_y_pos[6]~1_combout\);

-- Location: FF_X27_Y24_N27
\inst4|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|ball_y_pos[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(6));

-- Location: FF_X27_Y24_N11
\inst4|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add10~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ball_y_pos\(2));

-- Location: LCCOMB_X26_Y24_N18
\inst4|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~0_combout\ = (\inst4|ball_y_pos\(3) & (\inst4|ball_y_pos\(2) & VCC)) # (!\inst4|ball_y_pos\(3) & (\inst4|ball_y_pos\(2) $ (VCC)))
-- \inst4|Add3~1\ = CARRY((!\inst4|ball_y_pos\(3) & \inst4|ball_y_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_y_pos\(3),
	datab => \inst4|ball_y_pos\(2),
	datad => VCC,
	combout => \inst4|Add3~0_combout\,
	cout => \inst4|Add3~1\);

-- Location: LCCOMB_X26_Y24_N20
\inst4|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~2_combout\ = (\inst4|ball_y_pos\(4) & (\inst4|Add3~1\ & VCC)) # (!\inst4|ball_y_pos\(4) & (!\inst4|Add3~1\))
-- \inst4|Add3~3\ = CARRY((!\inst4|ball_y_pos\(4) & !\inst4|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_pos\(4),
	datad => VCC,
	cin => \inst4|Add3~1\,
	combout => \inst4|Add3~2_combout\,
	cout => \inst4|Add3~3\);

-- Location: LCCOMB_X26_Y24_N24
\inst4|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~6_combout\ = (\inst4|ball_y_pos\(6) & ((\inst4|Add3~5\) # (GND))) # (!\inst4|ball_y_pos\(6) & (!\inst4|Add3~5\))
-- \inst4|Add3~7\ = CARRY((\inst4|ball_y_pos\(6)) # (!\inst4|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_pos\(6),
	datad => VCC,
	cin => \inst4|Add3~5\,
	combout => \inst4|Add3~6_combout\,
	cout => \inst4|Add3~7\);

-- Location: LCCOMB_X26_Y24_N28
\inst4|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~10_combout\ = (\inst4|ball_y_pos\(8) & (!\inst4|Add3~9\)) # (!\inst4|ball_y_pos\(8) & ((\inst4|Add3~9\) # (GND)))
-- \inst4|Add3~11\ = CARRY((!\inst4|Add3~9\) # (!\inst4|ball_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ball_y_pos\(8),
	datad => VCC,
	cin => \inst4|Add3~9\,
	combout => \inst4|Add3~10_combout\,
	cout => \inst4|Add3~11\);

-- Location: LCCOMB_X26_Y24_N30
\inst4|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~12_combout\ = \inst4|Add3~11\ $ (!\inst4|ball_y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ball_y_pos\(9),
	cin => \inst4|Add3~11\,
	combout => \inst4|Add3~12_combout\);

-- Location: LCCOMB_X23_Y24_N8
\inst|blue_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out~1_combout\ = (\inst4|Add2~12_combout\) # ((\inst4|Add0~14_combout\) # ((\inst4|Add1~14_combout\) # (\inst4|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~12_combout\,
	datab => \inst4|Add0~14_combout\,
	datac => \inst4|Add1~14_combout\,
	datad => \inst4|Add3~12_combout\,
	combout => \inst|blue_out~1_combout\);

-- Location: LCCOMB_X26_Y24_N0
\inst4|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~1_cout\ = CARRY((\inst|pixel_row\(0) & !\inst4|ball_y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(0),
	datab => \inst4|ball_y_pos\(0),
	datad => VCC,
	cout => \inst4|LessThan3~1_cout\);

-- Location: LCCOMB_X26_Y24_N2
\inst4|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~3_cout\ = CARRY((\inst|pixel_row\(1) & (\inst4|ball_y_pos\(1) & !\inst4|LessThan3~1_cout\)) # (!\inst|pixel_row\(1) & ((\inst4|ball_y_pos\(1)) # (!\inst4|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(1),
	datab => \inst4|ball_y_pos\(1),
	datad => VCC,
	cin => \inst4|LessThan3~1_cout\,
	cout => \inst4|LessThan3~3_cout\);

-- Location: LCCOMB_X26_Y24_N4
\inst4|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~5_cout\ = CARRY((\inst|pixel_row\(2) & ((\inst4|ball_y_pos\(2)) # (!\inst4|LessThan3~3_cout\))) # (!\inst|pixel_row\(2) & (\inst4|ball_y_pos\(2) & !\inst4|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(2),
	datab => \inst4|ball_y_pos\(2),
	datad => VCC,
	cin => \inst4|LessThan3~3_cout\,
	cout => \inst4|LessThan3~5_cout\);

-- Location: LCCOMB_X26_Y24_N6
\inst4|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~7_cout\ = CARRY((\inst|pixel_row\(3) & (\inst4|Add3~0_combout\ & !\inst4|LessThan3~5_cout\)) # (!\inst|pixel_row\(3) & ((\inst4|Add3~0_combout\) # (!\inst4|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(3),
	datab => \inst4|Add3~0_combout\,
	datad => VCC,
	cin => \inst4|LessThan3~5_cout\,
	cout => \inst4|LessThan3~7_cout\);

-- Location: LCCOMB_X26_Y24_N8
\inst4|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~9_cout\ = CARRY((\inst|pixel_row\(4) & ((!\inst4|LessThan3~7_cout\) # (!\inst4|Add3~2_combout\))) # (!\inst|pixel_row\(4) & (!\inst4|Add3~2_combout\ & !\inst4|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(4),
	datab => \inst4|Add3~2_combout\,
	datad => VCC,
	cin => \inst4|LessThan3~7_cout\,
	cout => \inst4|LessThan3~9_cout\);

-- Location: LCCOMB_X26_Y24_N10
\inst4|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~11_cout\ = CARRY((\inst4|Add3~4_combout\ & ((!\inst4|LessThan3~9_cout\) # (!\inst|pixel_row\(5)))) # (!\inst4|Add3~4_combout\ & (!\inst|pixel_row\(5) & !\inst4|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~4_combout\,
	datab => \inst|pixel_row\(5),
	datad => VCC,
	cin => \inst4|LessThan3~9_cout\,
	cout => \inst4|LessThan3~11_cout\);

-- Location: LCCOMB_X26_Y24_N12
\inst4|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~13_cout\ = CARRY((\inst|pixel_row\(6) & ((!\inst4|LessThan3~11_cout\) # (!\inst4|Add3~6_combout\))) # (!\inst|pixel_row\(6) & (!\inst4|Add3~6_combout\ & !\inst4|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(6),
	datab => \inst4|Add3~6_combout\,
	datad => VCC,
	cin => \inst4|LessThan3~11_cout\,
	cout => \inst4|LessThan3~13_cout\);

-- Location: LCCOMB_X26_Y24_N14
\inst4|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~15_cout\ = CARRY((\inst4|Add3~8_combout\ & ((!\inst4|LessThan3~13_cout\) # (!\inst|pixel_row\(7)))) # (!\inst4|Add3~8_combout\ & (!\inst|pixel_row\(7) & !\inst4|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~8_combout\,
	datab => \inst|pixel_row\(7),
	datad => VCC,
	cin => \inst4|LessThan3~13_cout\,
	cout => \inst4|LessThan3~15_cout\);

-- Location: LCCOMB_X26_Y24_N16
\inst4|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~16_combout\ = (\inst|pixel_row\(8) & ((!\inst4|Add3~10_combout\) # (!\inst4|LessThan3~15_cout\))) # (!\inst|pixel_row\(8) & (!\inst4|LessThan3~15_cout\ & !\inst4|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(8),
	datad => \inst4|Add3~10_combout\,
	cin => \inst4|LessThan3~15_cout\,
	combout => \inst4|LessThan3~16_combout\);

-- Location: LCCOMB_X23_Y24_N2
\inst|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out~2_combout\ = (\inst4|LessThan0~18_combout\) # ((\inst4|LessThan2~18_combout\) # ((\inst|blue_out~1_combout\) # (\inst4|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~18_combout\,
	datab => \inst4|LessThan2~18_combout\,
	datac => \inst|blue_out~1_combout\,
	datad => \inst4|LessThan3~16_combout\,
	combout => \inst|blue_out~2_combout\);

-- Location: LCCOMB_X23_Y24_N0
\inst|blue_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_out~3_combout\ = (!\pb2~input_o\ & (\inst|blue_out~0_combout\ & ((\inst4|LessThan1~18_combout\) # (\inst|blue_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \inst4|LessThan1~18_combout\,
	datac => \inst|blue_out~0_combout\,
	datad => \inst|blue_out~2_combout\,
	combout => \inst|blue_out~3_combout\);

-- Location: FF_X23_Y24_N1
\inst|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|blue_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|blue_out~q\);

-- Location: LCCOMB_X24_Y23_N4
\inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|h_count\(2)) # ((\inst|h_count\(0) & (\inst|h_count\(1) & !\inst|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(0),
	datab => \inst|h_count\(1),
	datac => \inst|h_count\(5),
	datad => \inst|h_count\(2),
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X24_Y23_N2
\inst|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst|h_count\(4) & ((\inst|process_0~2_combout\) # (\inst|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~2_combout\,
	datac => \inst|h_count\(4),
	datad => \inst|h_count\(3),
	combout => \inst|process_0~3_combout\);

-- Location: LCCOMB_X26_Y26_N2
\inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (!\inst|h_count\(8) & (\inst|h_count\(7) & \inst|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datac => \inst|h_count\(7),
	datad => \inst|h_count\(9),
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X26_Y26_N22
\inst|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = ((\inst|h_count\(6) & (\inst|process_0~3_combout\ & \inst|h_count\(5))) # (!\inst|h_count\(6) & (!\inst|process_0~3_combout\ & !\inst|h_count\(5)))) # (!\inst|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(6),
	datab => \inst|process_0~3_combout\,
	datac => \inst|h_count\(5),
	datad => \inst|process_0~1_combout\,
	combout => \inst|process_0~4_combout\);

-- Location: FF_X26_Y26_N23
\inst|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|horiz_sync~q\);

-- Location: LCCOMB_X40_Y18_N16
\inst|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|horiz_sync_out~feeder_combout\ = \inst|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|horiz_sync~q\,
	combout => \inst|horiz_sync_out~feeder_combout\);

-- Location: FF_X40_Y18_N17
\inst|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|horiz_sync_out~q\);

-- Location: LCCOMB_X28_Y24_N4
\inst|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = ((\inst|v_count\(0) $ (!\inst|v_count\(1))) # (!\inst|v_count\(2))) # (!\inst|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(3),
	datab => \inst|v_count\(0),
	datac => \inst|v_count\(2),
	datad => \inst|v_count\(1),
	combout => \inst|process_0~5_combout\);

-- Location: LCCOMB_X29_Y24_N30
\inst|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\inst|v_count\(4)) # (((\inst|process_0~5_combout\) # (\inst|v_count\(9))) # (!\inst|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(4),
	datab => \inst|LessThan7~0_combout\,
	datac => \inst|process_0~5_combout\,
	datad => \inst|v_count\(9),
	combout => \inst|process_0~6_combout\);

-- Location: FF_X29_Y24_N31
\inst|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N16
\inst|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|vert_sync_out~feeder_combout\ = \inst|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|vert_sync~q\,
	combout => \inst|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N17
\inst|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vert_sync_out~q\);

-- Location: LCCOMB_X21_Y25_N18
\inst4|countValuex[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|countValuex[0]~5_combout\ = !\inst4|countValuex\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|countValuex\(0),
	combout => \inst4|countValuex[0]~5_combout\);

-- Location: LCCOMB_X21_Y25_N28
\inst4|countValuex[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|countValuex[3]~2_combout\ = (\inst4|ball_x_pos\(9)) # ((\inst4|LessThan6~0_combout\) # (!\inst4|LessThan7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ball_x_pos\(9),
	datac => \inst4|LessThan6~0_combout\,
	datad => \inst4|LessThan7~2_combout\,
	combout => \inst4|countValuex[3]~2_combout\);

-- Location: FF_X21_Y25_N19
\inst4|countValuex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|countValuex[0]~5_combout\,
	ena => \inst4|countValuex[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|countValuex\(0));

-- Location: LCCOMB_X21_Y25_N12
\inst4|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add6~0_combout\ = \inst4|countValuex\(1) $ (\inst4|countValuex\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|countValuex\(1),
	datad => \inst4|countValuex\(0),
	combout => \inst4|Add6~0_combout\);

-- Location: FF_X21_Y25_N13
\inst4|countValuex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add6~0_combout\,
	ena => \inst4|countValuex[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|countValuex\(1));

-- Location: LCCOMB_X21_Y25_N24
\inst4|countValuex[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|countValuex[2]~4_combout\ = \inst4|countValuex\(2) $ (((\inst4|countValuex\(1) & (\inst4|countValuex\(0) & \inst4|countValuex[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(0),
	datac => \inst4|countValuex\(2),
	datad => \inst4|countValuex[3]~2_combout\,
	combout => \inst4|countValuex[2]~4_combout\);

-- Location: FF_X21_Y25_N25
\inst4|countValuex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|countValuex[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|countValuex\(2));

-- Location: LCCOMB_X21_Y25_N26
\inst4|countValuex[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|countValuex[3]~3_combout\ = \inst4|countValuex\(3) $ (((\inst4|sevenseg1|Equal0~0_combout\ & (\inst4|countValuex\(2) & \inst4|countValuex[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sevenseg1|Equal0~0_combout\,
	datab => \inst4|countValuex\(2),
	datac => \inst4|countValuex\(3),
	datad => \inst4|countValuex[3]~2_combout\,
	combout => \inst4|countValuex[3]~3_combout\);

-- Location: FF_X21_Y25_N27
\inst4|countValuex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|countValuex[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|countValuex\(3));

-- Location: LCCOMB_X21_Y25_N20
\inst4|sevenseg1|LED_out[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|LED_out[1]~6_combout\ = (\inst4|countValuex\(0) & (!\inst4|countValuex\(3) & (\inst4|countValuex\(1) $ (!\inst4|countValuex\(2))))) # (!\inst4|countValuex\(0) & (!\inst4|countValuex\(1) & (\inst4|countValuex\(2) $ 
-- (!\inst4|countValuex\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(2),
	datac => \inst4|countValuex\(3),
	datad => \inst4|countValuex\(0),
	combout => \inst4|sevenseg1|LED_out[1]~6_combout\);

-- Location: LCCOMB_X21_Y24_N20
\inst4|sevenseg1|LED_out[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|LED_out[2]~11_combout\ = (\inst4|countValuex\(1) & (!\inst4|countValuex\(3) & ((\inst4|countValuex\(0)) # (!\inst4|countValuex\(2))))) # (!\inst4|countValuex\(1) & (\inst4|countValuex\(0) & (\inst4|countValuex\(3) $ 
-- (!\inst4|countValuex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(3),
	datac => \inst4|countValuex\(0),
	datad => \inst4|countValuex\(2),
	combout => \inst4|sevenseg1|LED_out[2]~11_combout\);

-- Location: LCCOMB_X21_Y25_N14
\inst4|sevenseg1|LED_out[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|LED_out[3]~7_combout\ = (\inst4|countValuex\(1) & (((!\inst4|countValuex\(3) & \inst4|countValuex\(0))))) # (!\inst4|countValuex\(1) & ((\inst4|countValuex\(2) & (!\inst4|countValuex\(3))) # (!\inst4|countValuex\(2) & 
-- ((\inst4|countValuex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(2),
	datac => \inst4|countValuex\(3),
	datad => \inst4|countValuex\(0),
	combout => \inst4|sevenseg1|LED_out[3]~7_combout\);

-- Location: LCCOMB_X21_Y25_N16
\inst4|sevenseg1|LED_out[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|LED_out[4]~8_combout\ = (\inst4|countValuex\(1) & ((\inst4|countValuex\(2) & ((!\inst4|countValuex\(0)))) # (!\inst4|countValuex\(2) & ((\inst4|countValuex\(0)) # (!\inst4|countValuex\(3)))))) # (!\inst4|countValuex\(1) & 
-- ((\inst4|countValuex\(3)) # (\inst4|countValuex\(2) $ (!\inst4|countValuex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(2),
	datac => \inst4|countValuex\(3),
	datad => \inst4|countValuex\(0),
	combout => \inst4|sevenseg1|LED_out[4]~8_combout\);

-- Location: LCCOMB_X21_Y25_N4
\inst4|sevenseg1|LED_out[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|LED_out[5]~12_combout\ = (\inst4|countValuex\(2) & (\inst4|countValuex\(3) & ((\inst4|countValuex\(1)) # (!\inst4|countValuex\(0))))) # (!\inst4|countValuex\(2) & (\inst4|countValuex\(1) & (!\inst4|countValuex\(3) & 
-- !\inst4|countValuex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(2),
	datac => \inst4|countValuex\(3),
	datad => \inst4|countValuex\(0),
	combout => \inst4|sevenseg1|LED_out[5]~12_combout\);

-- Location: LCCOMB_X21_Y25_N22
\inst4|sevenseg1|LED_out[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|LED_out[6]~9_combout\ = (\inst4|countValuex\(1) & ((\inst4|countValuex\(0) & ((\inst4|countValuex\(3)))) # (!\inst4|countValuex\(0) & (\inst4|countValuex\(2))))) # (!\inst4|countValuex\(1) & (\inst4|countValuex\(2) & 
-- (\inst4|countValuex\(3) $ (\inst4|countValuex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(2),
	datac => \inst4|countValuex\(3),
	datad => \inst4|countValuex\(0),
	combout => \inst4|sevenseg1|LED_out[6]~9_combout\);

-- Location: LCCOMB_X21_Y25_N8
\inst4|sevenseg1|LED_out[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|LED_out[7]~10_combout\ = (\inst4|countValuex\(2) & (!\inst4|countValuex\(1) & (\inst4|countValuex\(3) $ (!\inst4|countValuex\(0))))) # (!\inst4|countValuex\(2) & (\inst4|countValuex\(0) & (\inst4|countValuex\(1) $ 
-- (!\inst4|countValuex\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(2),
	datac => \inst4|countValuex\(3),
	datad => \inst4|countValuex\(0),
	combout => \inst4|sevenseg1|LED_out[7]~10_combout\);

-- Location: LCCOMB_X21_Y27_N14
\inst4|countValuex2[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|countValuex2[0]~3_combout\ = !\inst4|countValuex2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|countValuex2\(0),
	combout => \inst4|countValuex2[0]~3_combout\);

-- Location: LCCOMB_X21_Y25_N30
\inst4|sevenseg1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg1|Equal0~1_combout\ = (\inst4|countValuex\(1) & (\inst4|countValuex\(2) & (\inst4|countValuex\(3) & \inst4|countValuex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex\(1),
	datab => \inst4|countValuex\(2),
	datac => \inst4|countValuex\(3),
	datad => \inst4|countValuex\(0),
	combout => \inst4|sevenseg1|Equal0~1_combout\);

-- Location: FF_X21_Y27_N15
\inst4|countValuex2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|countValuex2[0]~3_combout\,
	ena => \inst4|sevenseg1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|countValuex2\(0));

-- Location: LCCOMB_X21_Y27_N0
\inst4|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add7~0_combout\ = \inst4|countValuex2\(0) $ (\inst4|countValuex2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|countValuex2\(0),
	datac => \inst4|countValuex2\(1),
	combout => \inst4|Add7~0_combout\);

-- Location: FF_X21_Y27_N1
\inst4|countValuex2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|Add7~0_combout\,
	ena => \inst4|sevenseg1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|countValuex2\(1));

-- Location: LCCOMB_X21_Y27_N24
\inst4|countValuex2[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|countValuex2[2]~0_combout\ = \inst4|countValuex2\(2) $ (((\inst4|sevenseg1|Equal0~1_combout\ & (\inst4|countValuex2\(0) & \inst4|countValuex2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sevenseg1|Equal0~1_combout\,
	datab => \inst4|countValuex2\(0),
	datac => \inst4|countValuex2\(2),
	datad => \inst4|countValuex2\(1),
	combout => \inst4|countValuex2[2]~0_combout\);

-- Location: FF_X21_Y27_N25
\inst4|countValuex2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|countValuex2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|countValuex2\(2));

-- Location: LCCOMB_X21_Y27_N6
\inst4|countValuex2[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|countValuex2[3]~2_combout\ = \inst4|countValuex2\(3) $ (((\inst4|countValuex2[2]~1_combout\ & (\inst4|countValuex2\(2) & \inst4|sevenseg1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex2[2]~1_combout\,
	datab => \inst4|countValuex2\(2),
	datac => \inst4|countValuex2\(3),
	datad => \inst4|sevenseg1|Equal0~1_combout\,
	combout => \inst4|countValuex2[3]~2_combout\);

-- Location: FF_X21_Y27_N7
\inst4|countValuex2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst4|countValuex2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|countValuex2\(3));

-- Location: LCCOMB_X22_Y27_N20
\inst4|sevenseg2|LED_out[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg2|LED_out[1]~6_combout\ = (\inst4|countValuex2\(0) & (!\inst4|countValuex2\(3) & (\inst4|countValuex2\(1) $ (!\inst4|countValuex2\(2))))) # (!\inst4|countValuex2\(0) & (!\inst4|countValuex2\(1) & (\inst4|countValuex2\(2) $ 
-- (!\inst4|countValuex2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex2\(1),
	datab => \inst4|countValuex2\(2),
	datac => \inst4|countValuex2\(3),
	datad => \inst4|countValuex2\(0),
	combout => \inst4|sevenseg2|LED_out[1]~6_combout\);

-- Location: LCCOMB_X22_Y27_N6
\inst4|sevenseg2|LED_out[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg2|LED_out[2]~11_combout\ = (\inst4|countValuex2\(1) & (!\inst4|countValuex2\(3) & ((\inst4|countValuex2\(0)) # (!\inst4|countValuex2\(2))))) # (!\inst4|countValuex2\(1) & (\inst4|countValuex2\(0) & (\inst4|countValuex2\(2) $ 
-- (!\inst4|countValuex2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex2\(1),
	datab => \inst4|countValuex2\(2),
	datac => \inst4|countValuex2\(3),
	datad => \inst4|countValuex2\(0),
	combout => \inst4|sevenseg2|LED_out[2]~11_combout\);

-- Location: LCCOMB_X22_Y27_N2
\inst4|sevenseg2|LED_out[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg2|LED_out[3]~7_combout\ = (\inst4|countValuex2\(1) & (((!\inst4|countValuex2\(3) & \inst4|countValuex2\(0))))) # (!\inst4|countValuex2\(1) & ((\inst4|countValuex2\(2) & (!\inst4|countValuex2\(3))) # (!\inst4|countValuex2\(2) & 
-- ((\inst4|countValuex2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex2\(1),
	datab => \inst4|countValuex2\(2),
	datac => \inst4|countValuex2\(3),
	datad => \inst4|countValuex2\(0),
	combout => \inst4|sevenseg2|LED_out[3]~7_combout\);

-- Location: LCCOMB_X22_Y27_N0
\inst4|sevenseg2|LED_out[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg2|LED_out[4]~8_combout\ = (\inst4|countValuex2\(1) & ((\inst4|countValuex2\(2) & ((!\inst4|countValuex2\(0)))) # (!\inst4|countValuex2\(2) & ((\inst4|countValuex2\(0)) # (!\inst4|countValuex2\(3)))))) # (!\inst4|countValuex2\(1) & 
-- ((\inst4|countValuex2\(3)) # (\inst4|countValuex2\(2) $ (!\inst4|countValuex2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex2\(1),
	datab => \inst4|countValuex2\(2),
	datac => \inst4|countValuex2\(3),
	datad => \inst4|countValuex2\(0),
	combout => \inst4|sevenseg2|LED_out[4]~8_combout\);

-- Location: LCCOMB_X22_Y27_N4
\inst4|sevenseg2|LED_out[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg2|LED_out[5]~12_combout\ = (\inst4|countValuex2\(2) & (\inst4|countValuex2\(3) & ((\inst4|countValuex2\(1)) # (!\inst4|countValuex2\(0))))) # (!\inst4|countValuex2\(2) & (\inst4|countValuex2\(1) & (!\inst4|countValuex2\(3) & 
-- !\inst4|countValuex2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex2\(1),
	datab => \inst4|countValuex2\(2),
	datac => \inst4|countValuex2\(3),
	datad => \inst4|countValuex2\(0),
	combout => \inst4|sevenseg2|LED_out[5]~12_combout\);

-- Location: LCCOMB_X22_Y27_N10
\inst4|sevenseg2|LED_out[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg2|LED_out[6]~9_combout\ = (\inst4|countValuex2\(1) & ((\inst4|countValuex2\(0) & ((\inst4|countValuex2\(3)))) # (!\inst4|countValuex2\(0) & (\inst4|countValuex2\(2))))) # (!\inst4|countValuex2\(1) & (\inst4|countValuex2\(2) & 
-- (\inst4|countValuex2\(3) $ (\inst4|countValuex2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex2\(1),
	datab => \inst4|countValuex2\(2),
	datac => \inst4|countValuex2\(3),
	datad => \inst4|countValuex2\(0),
	combout => \inst4|sevenseg2|LED_out[6]~9_combout\);

-- Location: LCCOMB_X22_Y27_N12
\inst4|sevenseg2|LED_out[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|sevenseg2|LED_out[7]~10_combout\ = (\inst4|countValuex2\(2) & (!\inst4|countValuex2\(1) & (\inst4|countValuex2\(3) $ (!\inst4|countValuex2\(0))))) # (!\inst4|countValuex2\(2) & (\inst4|countValuex2\(0) & (\inst4|countValuex2\(1) $ 
-- (!\inst4|countValuex2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countValuex2\(1),
	datab => \inst4|countValuex2\(2),
	datac => \inst4|countValuex2\(3),
	datad => \inst4|countValuex2\(0),
	combout => \inst4|sevenseg2|LED_out[7]~10_combout\);

-- Location: IOIBUF_X0_Y23_N15
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);
END structure;


