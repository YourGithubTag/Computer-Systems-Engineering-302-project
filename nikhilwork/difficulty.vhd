-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Written by Cecil Symes, csym531

-- Outputs a difficulty rating based on time passed

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity difficulty is
	port(
		clk : in std_logic;
		score_inc : in std_logic;
		gamestate : in std_logic_vector(3 downto 0);
		digit0, digit1, digit2, digit3 : out std_logic_vector(3 downto 0);
		difficulty : out std_logic_vector(2 downto 0)
	);
end entity difficulty;

architecture behaviour of difficulty is
	component bcd4digit_counter is
		port(
			clk : in std_logic;
			digit0, digit1, digit2, digit3 : out std_logic_vector(3 downto 0)
		);
	end component bcd4digit_counter;

	signal prev_score : std_logic := '0';
	signal score : unsigned(7 downto 0);
	signal difficulty_int :std_logic_vector(2 downto 0);
begin
	
	cntr : bcd4digit_counter port map (score_inc, digit0, digit1, digit2, digit3);
	
	-- Increase difficulty based on score
	difficulty_increase : process (clk)
	begin
		if rising_edge(clk) then
			if ((gamestate = "0010") or (gamestate = "0110")) then
				case score is
					when to_unsigned(0, 8) => difficulty_int <= "000";
					when to_unsigned(10, 8) => difficulty_int <= "001";
					when to_unsigned(20, 8) => difficulty_int <= "010";
					when to_unsigned(30, 8) => difficulty_int <= "011";
					when others => difficulty_int <= difficulty_int;
				end case;
			elsif ((gamestate = "0011") or (gamestate = "0111")) then
				difficulty_int <= difficulty_int;
			else
				difficulty_int <= "000";
			end if;
		end if;
		difficulty <= difficulty_int;
	end process difficulty_increase;
	
	-- Increases score in corresponding gamestate
	scoring : process (clk)
	begin
		if rising_edge(clk) then
			if ((gamestate = "0010") or (gamestate = "0110")) then
				if ((score_inc = '1') and (prev_score = '0')) then
					score <= (score + to_unsigned(1, 8));
				end if;
				prev_score <= score_inc;
			elsif ((gamestate = "0011") or (gamestate = "0111")) then
				score <= score;
			else
				score <= to_unsigned(0, 8);
			end if;
		end if;
	end process scoring;
	
end architecture behaviour;