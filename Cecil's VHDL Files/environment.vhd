-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Written by Cecil Symes, csym531

-- Outputs the Sky and Ground

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity environment is
	port(
		clk : in std_logic;
		pixel_row, pixel_column : in std_logic_vector(9 downto 0);
		sky_on_out, ground_on_out : out std_logic;
		red_out, green_out, blue_out : out std_logic_vector(3 downto 0)
	);
end entity environment;

architecture behaviour of environment is
begin
	
	render_environment : process (clk)
	begin
		if rising_edge(clk) then
			-- Check if the dirt must be drawn first
			if (unsigned(pixel_row) > to_unsigned(460 , 10)) then
				sky_on_out <= '0';
				ground_on_out <= '1';
				red_out <= std_logic_vector(to_unsigned(3 , 4));
				green_out <= std_logic_vector(to_unsigned(3 , 4));
				blue_out <= std_logic_vector(to_unsigned(1 , 4));
			
			-- Otherwise check if the grass needs to be drawn
			elsif (unsigned(pixel_row) > to_unsigned(450 , 10)) then
				sky_on_out <= '0';
				ground_on_out <= '1';
				red_out <= std_logic_vector(to_unsigned(1 , 4));
				green_out <= std_logic_vector(to_unsigned(4 , 4));
				blue_out <= std_logic_vector(to_unsigned(0 , 4));
				
			-- Otherwise just draw the sky
			else
				sky_on_out <= '1';
				red_out <= std_logic_vector(to_unsigned(4 , 4));
				green_out <= std_logic_vector(to_unsigned(7 , 4));
				blue_out <= std_logic_vector(to_unsigned(7 , 4));
			end if;
		end if;
	end process render_environment;
end architecture behaviour;