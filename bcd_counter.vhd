-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Written by Cecil Symes, csym531

-- Counts up to 9 in BCD

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_counter is
	port(Clk : in std_logic;
		reset : in std_logic;
		Output : out std_logic_vector(3 downto 0));
end entity bcd_counter;

architecture behaviour of bcd_counter is
	signal q_out : unsigned(3 downto 0);
begin
	process(Clk, reset)
	begin
		if (reset = '1') then
		 q_out <= "0000";
		elsif rising_edge(Clk) then
			q_out <= q_out + 1;
			if (q_out = "1001") then
				q_out <= "0000";
			end if;
		end if;
	end process;
	
	Output <= std_logic_vector(q_out);
end architecture behaviour;