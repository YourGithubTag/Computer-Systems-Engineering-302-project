-- Lab 4
-- Written by Cecil Symes

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hex_counter is
	port(Clk : in std_logic;
		Output : out std_logic_vector(3 downto 0));
end entity hex_counter;

architecture behaviour of hex_counter is
	signal q_out : unsigned(3 downto 0);
begin
	process(Clk)
	begin
		if rising_edge(Clk) then
			q_out <= q_out + 1;
		end if;
	end process;
	
	Output <= std_logic_vector(q_out);
end architecture behaviour;