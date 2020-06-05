-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Modified by Cecil Symes, csym531

-- Handles the current gamestate

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gamestate_controller is
	port(
		clk : in std_logic;
		left_click, right_click : in std_logic;
		push_button0, push_button1, push_button2 : in std_logic;
		game_over : in std_logic;
		gamestate_out : out std_logic_vector(3 downto 0)
	);
end entity gamestate_controller;

architecture behaviour of gamestate_controller is
	signal gamestate : std_logic_vector(3 downto 0) := "0000";
	
	signal prev_push0, prev_push1, prev_push2 : std_logic := '1';
begin
	
	control_state : process (clk)
	begin
		if rising_edge(clk) then
			case gamestate is
				when "0000" => -- Main Menu, "0000"
					-- Go to Singleplayer Initial
					if ((push_button1 = '1') and (prev_push1 = '0')) then
						gamestate <= "0101";
					end if;
					
					-- Go to Training Initial
					if ((push_button2 = '1') and (prev_push2 = '0')) then
						gamestate <= "0001";
					end if;
					
				when "0001" => -- Training Initial, "0001"
					-- Go to Training Active
					if (((push_button1 = '1') and (prev_push1 = '0')) or ((push_button2 = '1') and (prev_push2 = '0'))) then
						gamestate <= "0010";
					end if;
					
					-- Go to Main Menu
					if ((push_button0 = '1') and (prev_push0 = '0')) then
						gamestate <= "0000";
					end if;
					
				when "0010" => -- Training Active, "0010"
					-- Go to Training Paused
					if (((push_button1 = '1') and (prev_push1 = '0')) or ((push_button2 = '1') and (prev_push2 = '0'))) then
						gamestate <= "0011";
					end if;
					
					-- Go to Training Game Over
					if (game_over = '1') then
						gamestate <= "0100";
					end if;
					
				when "0011" => -- Training Paused, "0011"
					-- Go to Training Active
					if (((push_button1 = '1') and (prev_push1 = '0')) or ((push_button2 = '1') and (prev_push2 = '0'))) then
						gamestate <= "0010";
					end if;
					
					-- Go to Main Menu
					if ((push_button0 = '1') and (prev_push0 = '0')) then
						gamestate <= "0000";
					end if;
					
				when "0100" => -- Training Game Over, "0100"
					-- Go to Training Initial
					if (((push_button0 = '1') and (prev_push0 = '0')) or ((push_button1 = '1') and (prev_push1 = '0')) or ((push_button2 = '1') and (prev_push2 = '0'))) then
						gamestate <= "0001";
					end if;
					
				when "0101" => -- Singleplayer Initial, "0101"
					-- Go to Singleplayer Active
					if (((push_button1 = '1') and (prev_push1 = '0')) or ((push_button2 = '1') and (prev_push2 = '0'))) then
						gamestate <= "0110";
					end if;
					
					-- Go to Main Menu
					if ((push_button0 = '1') and (prev_push0 = '0')) then
						gamestate <= "0000";
					end if;
					
				when "0110" => -- Singleplayer Active, "0110"
					-- Go to Singleplayer Paused
					if (((push_button1 = '1') and (prev_push1 = '0')) or ((push_button2 = '1') and (prev_push2 = '0'))) then
						gamestate <= "0111";
					end if;
					
					-- Go to Singleplayer Game Over
					if (game_over = '1') then
						gamestate <= "1000";
					end if;
					
				when "0111" => -- Singleplayer Paused, "0111"
					-- Go to Singleplayer Active
					if (((push_button1 = '1') and (prev_push1 = '0')) or ((push_button2 = '1') and (prev_push2 = '0'))) then
						gamestate <= "0110";
					end if;
					
					-- Go to Main Menu
					if ((push_button0 = '1') and (prev_push0 = '0')) then
						gamestate <= "0000";
					end if;
					
				when "1000" => -- Singleplayer Game Over, "1000"
					-- Go to Singleplayer Initial
					if (((push_button0 = '1') and (prev_push0 = '0')) or ((push_button1 = '1') and (prev_push1 = '0')) or ((push_button2 = '1') and (prev_push2 = '0'))) then
						gamestate <= "0101";
					end if;
				when others => gamestate <= "0000";
			end case;
			gamestate_out <= gamestate;
			
			-- Markers that indicate the switch has been pushed since last clock cycle
			prev_push0 <= push_button0;
			prev_push1 <= push_button1;
			prev_push2 <= push_button2;
			
		end if;
	end process control_state;
	
end architecture behaviour;