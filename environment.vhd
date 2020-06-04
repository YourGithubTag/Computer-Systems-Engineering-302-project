library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity environment is
	port(
		clk : in std_logic;
		pixel_row, pixel_column : in std_logic_vector(9 downto 0);
		sky_on_out, ground_on_out, grass_on_out : out std_logic
	);
end entity environment;

architecture behaviour of environment is
begin
	
	render_environment : process (clk)
	begin
		if rising_edge(clk) then
			-- Check if the dirt must be drawn first
			if (unsigned(pixel_row) > to_unsigned(465 , 10)) then
				sky_on_out <= '0';
				ground_on_out <= '1';
				grass_on_out <= '0';
			
			-- Otherwise check if the grass needs to be drawn
			elsif (unsigned(pixel_row) > to_unsigned(459 , 10)) then
				sky_on_out <= '0';
				ground_on_out <= '0';
				grass_on_out <= '1';
		
			-- Otherwise just draw the sky
			else
				sky_on_out <= '1';
				ground_on_out <= '0';
				grass_on_out <= '0';
			end if;
		end if;
	end process render_environment;
end architecture behaviour;