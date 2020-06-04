library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity TestbenchTextDisplay is
end entity TestbenchTextDisplay;

architecture behaviour of TestbenchTextDisplay is
constant clkperiod : time := 40 ns;
signal clock : std_logic := '0';

component TextDisplay is
port (signal clk, vert_sync : in std_logic;
--		signal hit_points, score : in integer;
--		signal game_state : in std_logic_vector(3 downto 0);
		signal pixel_row, pixel_col : in std_logic_vector (9 downto 0);
		signal pixel_on : out std_logic
		);
end component TextDisplay;

clkgen : process
begin
clock <= '0';
wait for clkperiod/2;
clock <= '1';
wait for clkperiod/2;
end process clkgen;

pleasework : TextDisplay port map(clk => clock);
end architecture behaviour;