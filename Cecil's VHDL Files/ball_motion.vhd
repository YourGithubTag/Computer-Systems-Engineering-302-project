-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Written by Cecil Symes, csym531

-- ball_motion takes mouse inputs and determines the ball's motion to take on the next frame

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ball_motion is
	port(clk : in std_logic;
		game_state : in std_logic_vector(3 downto 0);
		jump : in std_logic;
		x_motion_out, y_motion_out : out std_logic_vector(9 downto 0);
		landed, roofed : in std_logic);
end entity ball_motion;

architecture behaviour of ball_motion is
	----- INTERNAL SIGNAL DECLARATIONS -----
	-- Gravity is a constant decided on through experimentation
	-- It is applied on every relevant frame
	signal gravity : signed(9 downto 0) := "0000000001"; -- Value of +1
	
	-- Motion to be applied to the ball on the next applicable frame
	-- x_motion: positive is upwards, negative downwards
	-- y_motion: positive is right, negative is left
	signal x_motion, y_motion : signed(9 downto 0) := "0000000000";
	
	-- Records whether jump has been held since previous frame
	signal prev_jump : std_logic := '0';
	
	-- Momentum to add on jump
	signal jump_momentum : signed(9 downto 0) := "1111100000"; -- Value of -32
begin

	-- Motion is only calculated during certain states
	-- Motion is updated during States 2 & 6
	-- Motion is held but not updated during states 3 & 7
	-- Motion is cleared back to zero in all other states
	motion_calc : process (clk)
	begin
		if rising_edge(clk) then
			-- Training Active & Singleplayer Active, calculate and update motion as ingame
			if ((game_state = "0010") or (game_state = "0110")) then
				-- Check if hit roof
				if (roofed = '1') then
					y_motion <= "0000000000";
				end if;
				
				-- If on the ground, then zero motion and do not apply gravity
				if (landed = '1') then
					y_motion <= "0000000000";
				else
					-- Apply gravity on every frame when not landed, and when under speed cap of 30
					if (y_motion < to_signed(30, 10)) then
						y_motion <= y_motion + gravity;
					end if;
				end if;
				
				-- Check to see if the player is jumping
				if (jump = '1') then
					-- If jump hasn't been held since previous frame, then add jump momentum to x_motion
					if (prev_jump = '0') then 
						prev_jump <= '1';
						y_motion <= y_motion + jump_momentum;
					end if;
				else
					-- prev_jump is set to zero if no jump is input on frame
					prev_jump <= '0';
				end if;
			
			-- Training Paused & Singleplayer Paused hold motion, do not clear
			elsif ((game_state = "0011") or (game_state = "0111")) then
				x_motion <= x_motion;
				y_motion <= y_motion;
				prev_jump <= prev_jump;
				
			-- All other states set motion to zero
			else
				x_motion <= "0000000000";
				y_motion <= "0000000000";
				prev_jump <= '0';
			end if;
		end if;
	end process motion_calc;

	-- Assign x_motion and y_motion to their respective outputs
	x_motion_out <= std_logic_vector(x_motion);
	y_motion_out <= std_logic_vector(y_motion);
	
end architecture behaviour;