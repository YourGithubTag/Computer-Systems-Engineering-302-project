library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity passPipe is
	port(
		clk : in std_logic;
		bird_x, pipe1_x, pipe2_x, pipe3_x : in std_logic_vector(9 DOWNTO 0);
		passed : out std_logic
	);
end entity passPipe;

architecture behaviour of passPipe is
begin 
process(clk)
begin
if (rising_edge(clk)) then 
	if (bird_x = pipe1_x) then 
		passed <= '1';
	elsif (bird_x = pipe2_x) then
		passed <= '1';
	elsif (bird_x = pipe3_x) then 
		passed <= '1';
	else 
		passed <= '0';
	end if;
end if;
end process ;

end architecture behaviour;