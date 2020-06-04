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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/04/2020 14:43:38"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TextDisplay IS
    PORT (
	clk : IN std_logic;
	vert_sync : IN std_logic;
	hit_points : IN std_logic_vector(31 DOWNTO 0);
	score : IN std_logic_vector(31 DOWNTO 0);
	game_state : IN std_logic_vector(3 DOWNTO 0);
	pixel_row : IN std_logic_vector(9 DOWNTO 0);
	pixel_col : IN std_logic_vector(9 DOWNTO 0);
	pixel_on : OUT std_logic
	);
END TextDisplay;

-- Design Ports Information
-- vert_sync	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[6]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[8]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[10]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[11]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[13]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[15]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[16]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[17]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[19]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[20]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[21]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[22]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[23]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[24]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[25]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[26]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[27]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[28]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[29]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[30]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hit_points[31]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[9]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[12]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[13]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[14]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[15]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[16]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[17]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[18]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[19]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[20]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[21]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[22]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[23]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[24]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[25]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[26]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[27]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[28]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[29]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[30]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score[31]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_state[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_state[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_state[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_state[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[3]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[5]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[8]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[8]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[9]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_on	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TextDisplay IS
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
SIGNAL ww_vert_sync : std_logic;
SIGNAL ww_hit_points : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_score : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_game_state : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pixel_row : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pixel_col : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pixel_on : std_logic;
SIGNAL \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \welcome_text|Mux0~2_combout\ : std_logic;
SIGNAL \vert_sync~input_o\ : std_logic;
SIGNAL \hit_points[0]~input_o\ : std_logic;
SIGNAL \hit_points[1]~input_o\ : std_logic;
SIGNAL \hit_points[2]~input_o\ : std_logic;
SIGNAL \hit_points[3]~input_o\ : std_logic;
SIGNAL \hit_points[4]~input_o\ : std_logic;
SIGNAL \hit_points[5]~input_o\ : std_logic;
SIGNAL \hit_points[6]~input_o\ : std_logic;
SIGNAL \hit_points[7]~input_o\ : std_logic;
SIGNAL \hit_points[8]~input_o\ : std_logic;
SIGNAL \hit_points[9]~input_o\ : std_logic;
SIGNAL \hit_points[10]~input_o\ : std_logic;
SIGNAL \hit_points[11]~input_o\ : std_logic;
SIGNAL \hit_points[12]~input_o\ : std_logic;
SIGNAL \hit_points[13]~input_o\ : std_logic;
SIGNAL \hit_points[14]~input_o\ : std_logic;
SIGNAL \hit_points[15]~input_o\ : std_logic;
SIGNAL \hit_points[16]~input_o\ : std_logic;
SIGNAL \hit_points[17]~input_o\ : std_logic;
SIGNAL \hit_points[18]~input_o\ : std_logic;
SIGNAL \hit_points[19]~input_o\ : std_logic;
SIGNAL \hit_points[20]~input_o\ : std_logic;
SIGNAL \hit_points[21]~input_o\ : std_logic;
SIGNAL \hit_points[22]~input_o\ : std_logic;
SIGNAL \hit_points[23]~input_o\ : std_logic;
SIGNAL \hit_points[24]~input_o\ : std_logic;
SIGNAL \hit_points[25]~input_o\ : std_logic;
SIGNAL \hit_points[26]~input_o\ : std_logic;
SIGNAL \hit_points[27]~input_o\ : std_logic;
SIGNAL \hit_points[28]~input_o\ : std_logic;
SIGNAL \hit_points[29]~input_o\ : std_logic;
SIGNAL \hit_points[30]~input_o\ : std_logic;
SIGNAL \hit_points[31]~input_o\ : std_logic;
SIGNAL \score[0]~input_o\ : std_logic;
SIGNAL \score[1]~input_o\ : std_logic;
SIGNAL \score[2]~input_o\ : std_logic;
SIGNAL \score[3]~input_o\ : std_logic;
SIGNAL \score[4]~input_o\ : std_logic;
SIGNAL \score[5]~input_o\ : std_logic;
SIGNAL \score[6]~input_o\ : std_logic;
SIGNAL \score[7]~input_o\ : std_logic;
SIGNAL \score[8]~input_o\ : std_logic;
SIGNAL \score[9]~input_o\ : std_logic;
SIGNAL \score[10]~input_o\ : std_logic;
SIGNAL \score[11]~input_o\ : std_logic;
SIGNAL \score[12]~input_o\ : std_logic;
SIGNAL \score[13]~input_o\ : std_logic;
SIGNAL \score[14]~input_o\ : std_logic;
SIGNAL \score[15]~input_o\ : std_logic;
SIGNAL \score[16]~input_o\ : std_logic;
SIGNAL \score[17]~input_o\ : std_logic;
SIGNAL \score[18]~input_o\ : std_logic;
SIGNAL \score[19]~input_o\ : std_logic;
SIGNAL \score[20]~input_o\ : std_logic;
SIGNAL \score[21]~input_o\ : std_logic;
SIGNAL \score[22]~input_o\ : std_logic;
SIGNAL \score[23]~input_o\ : std_logic;
SIGNAL \score[24]~input_o\ : std_logic;
SIGNAL \score[25]~input_o\ : std_logic;
SIGNAL \score[26]~input_o\ : std_logic;
SIGNAL \score[27]~input_o\ : std_logic;
SIGNAL \score[28]~input_o\ : std_logic;
SIGNAL \score[29]~input_o\ : std_logic;
SIGNAL \score[30]~input_o\ : std_logic;
SIGNAL \score[31]~input_o\ : std_logic;
SIGNAL \game_state[0]~input_o\ : std_logic;
SIGNAL \game_state[1]~input_o\ : std_logic;
SIGNAL \game_state[2]~input_o\ : std_logic;
SIGNAL \game_state[3]~input_o\ : std_logic;
SIGNAL \pixel_row[3]~input_o\ : std_logic;
SIGNAL \pixel_row[4]~input_o\ : std_logic;
SIGNAL \pixel_row[5]~input_o\ : std_logic;
SIGNAL \pixel_row[6]~input_o\ : std_logic;
SIGNAL \pixel_row[7]~input_o\ : std_logic;
SIGNAL \pixel_row[8]~input_o\ : std_logic;
SIGNAL \pixel_row[9]~input_o\ : std_logic;
SIGNAL \pixel_col[3]~input_o\ : std_logic;
SIGNAL \pixel_col[4]~input_o\ : std_logic;
SIGNAL \pixel_col[5]~input_o\ : std_logic;
SIGNAL \pixel_col[6]~input_o\ : std_logic;
SIGNAL \pixel_col[7]~input_o\ : std_logic;
SIGNAL \pixel_col[8]~input_o\ : std_logic;
SIGNAL \pixel_col[9]~input_o\ : std_logic;
SIGNAL \pixel_col[0]~input_o\ : std_logic;
SIGNAL \pixel_on~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pixel_row[0]~input_o\ : std_logic;
SIGNAL \pixel_row[1]~input_o\ : std_logic;
SIGNAL \pixel_row[2]~input_o\ : std_logic;
SIGNAL \pixel_col[1]~input_o\ : std_logic;
SIGNAL \welcome_text|Mux0~0_combout\ : std_logic;
SIGNAL \welcome_text|Mux0~1_combout\ : std_logic;
SIGNAL \pixel_col[2]~input_o\ : std_logic;
SIGNAL \welcome_text|Mux0~3_combout\ : std_logic;
SIGNAL \welcome_text|Mux0~4_combout\ : std_logic;
SIGNAL \welcome_text|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_vert_sync <= vert_sync;
ww_hit_points <= hit_points;
ww_score <= score;
ww_game_state <= game_state;
ww_pixel_row <= pixel_row;
ww_pixel_col <= pixel_col;
pixel_on <= ww_pixel_on;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\pixel_row[2]~input_o\ & \pixel_row[1]~input_o\ & \pixel_row[0]~input_o\);

\welcome_text|altsyncram_component|auto_generated|q_a\(0) <= \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\welcome_text|altsyncram_component|auto_generated|q_a\(1) <= \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\welcome_text|altsyncram_component|auto_generated|q_a\(2) <= \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\welcome_text|altsyncram_component|auto_generated|q_a\(3) <= \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\welcome_text|altsyncram_component|auto_generated|q_a\(4) <= \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\welcome_text|altsyncram_component|auto_generated|q_a\(5) <= \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\welcome_text|altsyncram_component|auto_generated|q_a\(6) <= \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\welcome_text|altsyncram_component|auto_generated|q_a\(7) <= \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: M9K_X13_Y1_N0
\welcome_text|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000063001DC007F001AC00630018C0063",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:welcome_text|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 3,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y1_N12
\welcome_text|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \welcome_text|Mux0~2_combout\ = (\pixel_col[1]~input_o\ & (((\pixel_col[0]~input_o\)))) # (!\pixel_col[1]~input_o\ & ((\pixel_col[0]~input_o\ & (\welcome_text|altsyncram_component|auto_generated|q_a\(6))) # (!\pixel_col[0]~input_o\ & 
-- ((\welcome_text|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_col[1]~input_o\,
	datab => \welcome_text|altsyncram_component|auto_generated|q_a\(6),
	datac => \welcome_text|altsyncram_component|auto_generated|q_a\(7),
	datad => \pixel_col[0]~input_o\,
	combout => \welcome_text|Mux0~2_combout\);

-- Location: IOIBUF_X11_Y0_N15
\pixel_col[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(0),
	o => \pixel_col[0]~input_o\);

-- Location: IOOBUF_X11_Y0_N23
\pixel_on~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \welcome_text|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \pixel_on~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X11_Y0_N1
\pixel_row[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(0),
	o => \pixel_row[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\pixel_row[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(1),
	o => \pixel_row[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\pixel_row[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(2),
	o => \pixel_row[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\pixel_col[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(1),
	o => \pixel_col[1]~input_o\);

-- Location: LCCOMB_X12_Y1_N16
\welcome_text|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \welcome_text|Mux0~0_combout\ = (\pixel_col[0]~input_o\ & (((\pixel_col[1]~input_o\)))) # (!\pixel_col[0]~input_o\ & ((\pixel_col[1]~input_o\ & ((\welcome_text|altsyncram_component|auto_generated|q_a\(1)))) # (!\pixel_col[1]~input_o\ & 
-- (\welcome_text|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_col[0]~input_o\,
	datab => \welcome_text|altsyncram_component|auto_generated|q_a\(3),
	datac => \pixel_col[1]~input_o\,
	datad => \welcome_text|altsyncram_component|auto_generated|q_a\(1),
	combout => \welcome_text|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y1_N2
\welcome_text|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \welcome_text|Mux0~1_combout\ = (\pixel_col[0]~input_o\ & ((\welcome_text|Mux0~0_combout\ & ((\welcome_text|altsyncram_component|auto_generated|q_a\(0)))) # (!\welcome_text|Mux0~0_combout\ & (\welcome_text|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\pixel_col[0]~input_o\ & (\welcome_text|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_col[0]~input_o\,
	datab => \welcome_text|Mux0~0_combout\,
	datac => \welcome_text|altsyncram_component|auto_generated|q_a\(2),
	datad => \welcome_text|altsyncram_component|auto_generated|q_a\(0),
	combout => \welcome_text|Mux0~1_combout\);

-- Location: IOIBUF_X11_Y0_N29
\pixel_col[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(2),
	o => \pixel_col[2]~input_o\);

-- Location: LCCOMB_X12_Y1_N6
\welcome_text|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \welcome_text|Mux0~3_combout\ = (\welcome_text|Mux0~2_combout\ & (((\welcome_text|altsyncram_component|auto_generated|q_a\(4)) # (!\pixel_col[1]~input_o\)))) # (!\welcome_text|Mux0~2_combout\ & (\welcome_text|altsyncram_component|auto_generated|q_a\(5) & 
-- (\pixel_col[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \welcome_text|Mux0~2_combout\,
	datab => \welcome_text|altsyncram_component|auto_generated|q_a\(5),
	datac => \pixel_col[1]~input_o\,
	datad => \welcome_text|altsyncram_component|auto_generated|q_a\(4),
	combout => \welcome_text|Mux0~3_combout\);

-- Location: LCCOMB_X12_Y1_N24
\welcome_text|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \welcome_text|Mux0~4_combout\ = (\pixel_col[2]~input_o\ & (\welcome_text|Mux0~1_combout\)) # (!\pixel_col[2]~input_o\ & ((\welcome_text|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \welcome_text|Mux0~1_combout\,
	datac => \pixel_col[2]~input_o\,
	datad => \welcome_text|Mux0~3_combout\,
	combout => \welcome_text|Mux0~4_combout\);

-- Location: IOIBUF_X0_Y14_N15
\vert_sync~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vert_sync,
	o => \vert_sync~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\hit_points[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(0),
	o => \hit_points[0]~input_o\);

-- Location: IOIBUF_X37_Y29_N29
\hit_points[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(1),
	o => \hit_points[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\hit_points[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(2),
	o => \hit_points[2]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\hit_points[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(3),
	o => \hit_points[3]~input_o\);

-- Location: IOIBUF_X41_Y24_N22
\hit_points[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(4),
	o => \hit_points[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\hit_points[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(5),
	o => \hit_points[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\hit_points[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(6),
	o => \hit_points[6]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\hit_points[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(7),
	o => \hit_points[7]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\hit_points[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(8),
	o => \hit_points[8]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\hit_points[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(9),
	o => \hit_points[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\hit_points[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(10),
	o => \hit_points[10]~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\hit_points[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(11),
	o => \hit_points[11]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\hit_points[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(12),
	o => \hit_points[12]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\hit_points[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(13),
	o => \hit_points[13]~input_o\);

-- Location: IOIBUF_X35_Y29_N8
\hit_points[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(14),
	o => \hit_points[14]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\hit_points[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(15),
	o => \hit_points[15]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\hit_points[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(16),
	o => \hit_points[16]~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\hit_points[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(17),
	o => \hit_points[17]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\hit_points[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(18),
	o => \hit_points[18]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\hit_points[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(19),
	o => \hit_points[19]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\hit_points[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(20),
	o => \hit_points[20]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\hit_points[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(21),
	o => \hit_points[21]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\hit_points[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(22),
	o => \hit_points[22]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\hit_points[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(23),
	o => \hit_points[23]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\hit_points[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(24),
	o => \hit_points[24]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\hit_points[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(25),
	o => \hit_points[25]~input_o\);

-- Location: IOIBUF_X41_Y18_N8
\hit_points[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(26),
	o => \hit_points[26]~input_o\);

-- Location: IOIBUF_X41_Y26_N8
\hit_points[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(27),
	o => \hit_points[27]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\hit_points[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(28),
	o => \hit_points[28]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\hit_points[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(29),
	o => \hit_points[29]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\hit_points[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(30),
	o => \hit_points[30]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\hit_points[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hit_points(31),
	o => \hit_points[31]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\score[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(0),
	o => \score[0]~input_o\);

-- Location: IOIBUF_X41_Y2_N15
\score[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(1),
	o => \score[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\score[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(2),
	o => \score[2]~input_o\);

-- Location: IOIBUF_X41_Y12_N1
\score[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(3),
	o => \score[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\score[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(4),
	o => \score[4]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\score[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(5),
	o => \score[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\score[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(6),
	o => \score[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\score[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(7),
	o => \score[7]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\score[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(8),
	o => \score[8]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\score[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(9),
	o => \score[9]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\score[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(10),
	o => \score[10]~input_o\);

-- Location: IOIBUF_X41_Y27_N1
\score[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(11),
	o => \score[11]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\score[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(12),
	o => \score[12]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\score[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(13),
	o => \score[13]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\score[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(14),
	o => \score[14]~input_o\);

-- Location: IOIBUF_X41_Y24_N8
\score[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(15),
	o => \score[15]~input_o\);

-- Location: IOIBUF_X41_Y12_N22
\score[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(16),
	o => \score[16]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\score[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(17),
	o => \score[17]~input_o\);

-- Location: IOIBUF_X5_Y29_N8
\score[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(18),
	o => \score[18]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\score[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(19),
	o => \score[19]~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\score[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(20),
	o => \score[20]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\score[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(21),
	o => \score[21]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\score[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(22),
	o => \score[22]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\score[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(23),
	o => \score[23]~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\score[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(24),
	o => \score[24]~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\score[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(25),
	o => \score[25]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\score[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(26),
	o => \score[26]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\score[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(27),
	o => \score[27]~input_o\);

-- Location: IOIBUF_X41_Y6_N22
\score[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(28),
	o => \score[28]~input_o\);

-- Location: IOIBUF_X41_Y20_N8
\score[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(29),
	o => \score[29]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\score[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(30),
	o => \score[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\score[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score(31),
	o => \score[31]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\game_state[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_game_state(0),
	o => \game_state[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\game_state[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_game_state(1),
	o => \game_state[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\game_state[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_game_state(2),
	o => \game_state[2]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\game_state[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_game_state(3),
	o => \game_state[3]~input_o\);

-- Location: IOIBUF_X41_Y5_N22
\pixel_row[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(3),
	o => \pixel_row[3]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\pixel_row[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(4),
	o => \pixel_row[4]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\pixel_row[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(5),
	o => \pixel_row[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\pixel_row[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(6),
	o => \pixel_row[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\pixel_row[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(7),
	o => \pixel_row[7]~input_o\);

-- Location: IOIBUF_X41_Y22_N1
\pixel_row[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(8),
	o => \pixel_row[8]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\pixel_row[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(9),
	o => \pixel_row[9]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\pixel_col[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(3),
	o => \pixel_col[3]~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\pixel_col[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(4),
	o => \pixel_col[4]~input_o\);

-- Location: IOIBUF_X37_Y29_N22
\pixel_col[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(5),
	o => \pixel_col[5]~input_o\);

-- Location: IOIBUF_X11_Y29_N22
\pixel_col[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(6),
	o => \pixel_col[6]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\pixel_col[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(7),
	o => \pixel_col[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\pixel_col[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(8),
	o => \pixel_col[8]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\pixel_col[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(9),
	o => \pixel_col[9]~input_o\);

ww_pixel_on <= \pixel_on~output_o\;
END structure;


