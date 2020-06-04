-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Written by Cecil Symes, csym531

-- Implements four BCD counters to count up to 9999

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd4digit_counter is
	port(
		clk : in std_logic;
		reset : in std_logic;
		digit0, digit1, digit2, digit3 : out std_logic_vector(3 downto 0)
	);
end entity bcd4digit_counter;

architecture behaviour of bcd4digit_counter is
	component bcd_counter is
		port(Clk : in std_logic;
			reset : in std_logic;
			Output : out std_logic_vector(3 downto 0));
	end component bcd_counter;
	
	signal out0, out1, out2, out3 : std_logic_vector(3 downto 0);
	signal clk1, clk2, clk3 : std_logic;
begin
	cntr0 : bcd_counter port map(clk, reset, out0);
	cntr1 : bcd_counter port map(clk1, reset, out1);
	cntr2 : bcd_counter port map(clk2, reset, out2);
	cntr3 : bcd_counter port map(clk3, reset, out3);
	
	clocker : process(clk, clk1, clk2)
	begin
		if rising_edge(clk) then
			if (out0 = "1001") then
				clk1 <= '1';
			else
				clk1 <= '0';
			end if;
		end if;
		
		if rising_edge(clk1) then
			if (out1 = "1001") then
				clk2 <= '1';
			else
				clk2 <= '0';
			end if;
		end if;
		
		if rising_edge(clk2) then
			if (out2 = "1001") then
				clk3 <= '1';
			else
				clk3 <= '0';
			end if;
		end if;
	end process clocker;
	
	digit0 <= out0;
	digit1 <= out1;
	digit2 <= out2;
	digit3 <= out3;
end architecture behaviour;