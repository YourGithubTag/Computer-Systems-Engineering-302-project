-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Modified by Cecil Symes, csym531

-- Added functionality to take mouse input, determine the ball's motion, collision with boundaries


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;



ENTITY ball IS
	PORT
		(SIGNAL clk 								: IN std_logic;
		SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL ball_onOut			            : OUT std_logic;
		SIGNAL BirdX								: OUT std_logic_vector(9 DOWNTO 0);
		signal frame_clk 							: in std_logic;
		signal jump 								: in std_logic;
		signal game_state 						: in std_logic_vector(3 downto 0));		
END ball;

architecture behavior of ball is

SIGNAL ball_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_x_pos	: std_logic_vector(9 DOWNTO 0) := "0010000000"; -- Initialised to column 128
SIGNAL ball_y_pos	: std_logic_vector(9 DOWNTO 0) := "0011110000"; -- Initialised to row 240

	----- INTERNAL SIGNAL DECLARATIONS -----
	-- Gravity is a constant decided on through experimentation
	-- It is applied on every relevant frame
	signal gravity : signed(9 downto 0) := "0000000001"; -- Value of +1
	
	-- Records whether jump has been held since previous frame
	signal prev_jump : std_logic := '0';
	
	-- Motion to be applied to the ball on the next applicable frame
	-- x_motion: positive is upwards, negative downwards
	-- y_motion: positive is right, negative is left
	signal x_motion, y_motion : signed(9 downto 0) := "0000000000";
	
	-- Momentum to add on jump
	signal jump_momentum : signed(9 downto 0) := "1111101100"; -- Value of -20

BEGIN           

size <= "0000001000";
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball


ball_on <= '1' when (
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
				-- Apply gravity if not on ground, and under 30 speed cap
				if (y_motion < to_signed(30, 10)) then
					y_motion <= y_motion + gravity;
				end if;
			
				-- Check to see if the player is jumping
				if (jump = '1') then
					if (prev_jump = '0') then
						-- If jump hasn't been held since previous frame, add jump_momentum
						y_motion <= y_motion + jump_momentum;
						prev_jump <= '1';
					end if;
				else
					-- prev_jump is set to zero if no jump is input on frame
					prev_jump <= '0';
				end if;
				
				-- Check if will collide with top
				if (to_signed(0, 10) > (signed(ball_y_pos) - signed(size) + signed(y_motion))) then
					ball_y_pos <= size;
					y_motion <= to_signed(0, 10);
				-- Check if will collide with bottom
				elsif (to_signed(480, 10) < (signed(ball_y_pos) + signed(size) + signed(y_motion))) then
					ball_y_pos <= std_logic_vector(to_unsigned(480, 10) - unsigned(size));
					y_motion <= to_signed(0, 10);
				else
				-- Calculate new ball position
					ball_y_pos <= std_logic_vector(signed(ball_y_pos) + signed(y_motion));
				end if;
				
			-- Training Paused & Singleplayer Paused hold position, do not clear
			elsif ((game_state = "0011") or (game_state = "0111")) then
				ball_x_pos <= ball_x_pos;
				ball_y_pos <= ball_y_pos;
				
			-- All other states set square to 2/5 along, halfway up screen
			else
				ball_x_pos <= "0010000000"; -- Column 128
				ball_y_pos <= "0011110000"; -- Row 240
			end if;
			
		end if;
	end process position_calc;

ball_onOut <= ball_on;
BirdX <= ball_x_pos;

END behavior;

