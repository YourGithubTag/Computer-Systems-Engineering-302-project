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

-- DATE "06/04/2020 15:29:18"

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
	pixel_row : IN std_logic_vector(9 DOWNTO 0);
	pixel_col : IN std_logic_vector(9 DOWNTO 0);
	pixel_on : OUT std_logic
	);
END TextDisplay;

-- Design Ports Information
-- vert_sync	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[7]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[9]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[9]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_on	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_col[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_pixel_row : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pixel_col : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pixel_on : std_logic;
SIGNAL \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \welcome_text|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \welcome_text|Mux0~2_combout\ : std_logic;
SIGNAL \vert_sync~input_o\ : std_logic;
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
SIGNAL \pixel_on~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pixel_row[0]~input_o\ : std_logic;
SIGNAL \pixel_row[1]~input_o\ : std_logic;
SIGNAL \pixel_row[2]~input_o\ : std_logic;
SIGNAL \pixel_col[1]~input_o\ : std_logic;
SIGNAL \welcome_text|Mux0~3_combout\ : std_logic;
SIGNAL \pixel_col[2]~input_o\ : std_logic;
SIGNAL \pixel_col[0]~input_o\ : std_logic;
SIGNAL \welcome_text|Mux0~0_combout\ : std_logic;
SIGNAL \welcome_text|Mux0~1_combout\ : std_logic;
SIGNAL \welcome_text|Mux0~4_combout\ : std_logic;
SIGNAL \welcome_text|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_vert_sync <= vert_sync;
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

-- Location: M9K_X13_Y2_N0
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

-- Location: LCCOMB_X12_Y2_N12
\welcome_text|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \welcome_text|Mux0~2_combout\ = (\pixel_col[1]~input_o\ & (((\pixel_col[0]~input_o\)))) # (!\pixel_col[1]~input_o\ & ((\pixel_col[0]~input_o\ & ((\welcome_text|altsyncram_component|auto_generated|q_a\(6)))) # (!\pixel_col[0]~input_o\ & 
-- (\welcome_text|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \welcome_text|altsyncram_component|auto_generated|q_a\(7),
	datab => \pixel_col[1]~input_o\,
	datac => \welcome_text|altsyncram_component|auto_generated|q_a\(6),
	datad => \pixel_col[0]~input_o\,
	combout => \welcome_text|Mux0~2_combout\);

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOIBUF_X14_Y0_N22
\pixel_row[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(0),
	o => \pixel_row[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\pixel_row[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(1),
	o => \pixel_row[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\pixel_row[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(2),
	o => \pixel_row[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\pixel_col[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(1),
	o => \pixel_col[1]~input_o\);

-- Location: LCCOMB_X12_Y2_N6
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

-- Location: IOIBUF_X11_Y0_N22
\pixel_col[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(2),
	o => \pixel_col[2]~input_o\);

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

-- Location: LCCOMB_X12_Y2_N24
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

-- Location: LCCOMB_X12_Y2_N2
\welcome_text|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \welcome_text|Mux0~1_combout\ = (\pixel_col[0]~input_o\ & ((\welcome_text|Mux0~0_combout\ & (\welcome_text|altsyncram_component|auto_generated|q_a\(0))) # (!\welcome_text|Mux0~0_combout\ & ((\welcome_text|altsyncram_component|auto_generated|q_a\(2)))))) # 
-- (!\pixel_col[0]~input_o\ & (((\welcome_text|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \welcome_text|altsyncram_component|auto_generated|q_a\(0),
	datab => \pixel_col[0]~input_o\,
	datac => \welcome_text|altsyncram_component|auto_generated|q_a\(2),
	datad => \welcome_text|Mux0~0_combout\,
	combout => \welcome_text|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y2_N8
\welcome_text|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \welcome_text|Mux0~4_combout\ = (\pixel_col[2]~input_o\ & ((\welcome_text|Mux0~1_combout\))) # (!\pixel_col[2]~input_o\ & (\welcome_text|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \welcome_text|Mux0~3_combout\,
	datab => \pixel_col[2]~input_o\,
	datad => \welcome_text|Mux0~1_combout\,
	combout => \welcome_text|Mux0~4_combout\);

-- Location: IOIBUF_X21_Y29_N15
\vert_sync~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vert_sync,
	o => \vert_sync~input_o\);

-- Location: IOIBUF_X37_Y29_N1
\pixel_row[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(3),
	o => \pixel_row[3]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\pixel_row[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(4),
	o => \pixel_row[4]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\pixel_row[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(5),
	o => \pixel_row[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\pixel_row[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(6),
	o => \pixel_row[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\pixel_row[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(7),
	o => \pixel_row[7]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\pixel_row[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(8),
	o => \pixel_row[8]~input_o\);

-- Location: IOIBUF_X41_Y7_N8
\pixel_row[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(9),
	o => \pixel_row[9]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\pixel_col[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(3),
	o => \pixel_col[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\pixel_col[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(4),
	o => \pixel_col[4]~input_o\);

-- Location: IOIBUF_X41_Y25_N1
\pixel_col[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(5),
	o => \pixel_col[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\pixel_col[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(6),
	o => \pixel_col[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\pixel_col[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(7),
	o => \pixel_col[7]~input_o\);

-- Location: IOIBUF_X41_Y24_N15
\pixel_col[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_col(8),
	o => \pixel_col[8]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
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


