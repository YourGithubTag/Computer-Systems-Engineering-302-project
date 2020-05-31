LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;



ENTITY ball IS
	PORT
		(SIGNAL clk 						: IN std_logic;
		SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL red, green, blue 			: OUT std_logic;
		signal x_motion, y_motion : in std_logic_vector(9 downto 0);
		signal frame_clk : in std_logic;
		signal game_state : in std_logic_vector(3 downto 0);
		signal landed, roofed : out std_logic);		
END ball;

architecture behavior of ball is

SIGNAL ball_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_x_pos	: std_logic_vector(9 DOWNTO 0) := "0001000000"; -- Initialised to column 64
SIGNAL ball_y_pos	: std_logic_vector(9 DOWNTO 0) := "0011110000"; -- Initialised to row 240

BEGIN           

size <= "0000001000";
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball


ball_on <= '1' when (
	-- In correct state
	((game_state = "0010") or (game_state = "0110") or (game_state = "0011") or (game_state = "0111")) and
	-- Check if pixel_column is within ball boundary
	(unsigned(ball_x_pos) <= unsigned(pixel_column) + unsigned(size)) and
	(unsigned(pixel_column) <= unsigned(ball_x_pos) + unsigned(size)) and
	-- y_pos - size <= pixel_row <= y_pos + size
	(unsigned(ball_y_pos) <= unsigned(pixel_row) + unsigned(size)) and
	(unsigned(pixel_row) <= unsigned(ball_y_pos) + unsigned(size)) )
	else '0';

	-- Position is only calculated during certain states
	-- Position is updated during States 2 & 6
	-- Position is held but not updated during states 3 & 7
	-- Position is centred in all other states
	position_calc : process (frame_clk)
	begin
		if rising_edge(frame_clk) then
			-- Training Active & Singleplayer Active, calculate and update position as ingame
			if ((game_state = "0010") or (game_state = "0110")) then
				ball_x_pos <= std_logic_vector(signed(ball_x_pos) + signed(x_motion));
				ball_y_pos <= std_logic_vector(signed(ball_y_pos) + signed(y_motion));
				
			-- Training Paused & Singleplayer Paused hold position, do not clear
			elsif ((game_state = "0011") or (game_state = "0111")) then
				ball_x_pos <= ball_x_pos;
				ball_y_pos <= ball_y_pos;
				
			-- All other states set motion to centre of screen
			else
				ball_x_pos <= "0101000000";
				ball_y_pos <= "0011110000";
			end if;
			
			-- Collision code
			-- Collision with bottom & top
			landed <= '0';
			if (to_unsigned(480, 10) < unsigned(ball_y_pos) + unsigned(size)) then
				ball_y_pos <= std_logic_vector(to_unsigned(480, 10) - unsigned(size));
				landed <= '1';
			end if;
			
			roofed <= '0';
			if ((signed(ball_y_pos) + signed(size)) < to_signed(0, 10)) then
				roofed <= '1';
				ball_y_pos <= size;
			end if;
			
		end if;
	end process position_calc;

-- Colours for pixel data on video signal
-- Keeping background white and square in red
Red <=  '1';
-- Turn off Green and Blue when displaying square
Green <= not ball_on;
Blue <=  not ball_on;

END behavior;

