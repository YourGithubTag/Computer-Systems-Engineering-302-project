-- Lab 3
-- Written by Cecil Symes

library ieee;
use ieee.std_logic_1164.all;

entity bcd_sevenseg is
	port(digit : in std_logic_vector(3 downto 0);
		all_off : in std_logic;
		LED_out : out std_logic_vector(7 downto 0));
end entity bcd_sevenseg;

architecture behaviour of bcd_sevenseg is
	signal tmp : std_logic_vector(7 downto 0);
begin
	tmp <= "10011111" when digit = "0001" else -- 1
		"00100101" when digit = "0010" else -- 2
		"00001101" when digit = "0011" else -- 3
		"10011001" when digit = "0100" else -- 4
		"01001001" when digit = "0101" else -- 5
		"01000001" when digit = "0110" else -- 6
		"00011111" when digit = "0111" else -- 7
		"00000001" when digit = "1000" else -- 8
		"00001001" when digit = "1001" else -- 9
		"00010001" when digit = "1010" else -- A
		"11000001" when digit = "1011" else -- b
		"01100011" when digit = "1100" else -- C
		"10000101" when digit = "1101" else -- d
		"01100001" when digit = "1110" else -- E
		"01110001" when digit = "1111" else -- F
		"00000011" when digit = "0000" else -- 0
		"11111111";
	LED_out <= tmp when (all_off = '0') else "11111111";
end architecture behaviour;