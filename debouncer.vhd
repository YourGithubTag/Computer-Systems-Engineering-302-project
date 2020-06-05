-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Modified by Cecil Symes, csym531

-- Debounces push buttons
-- Switches are converted to active high

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
	port(	
		clk : in std_logic;
		push0_in, push1_in, push2_in : in std_logic;
		push0_out, push1_out, push2_out : out std_logic
	);
end entity debouncer;

architecture behaviour of debouncer is
	signal push0_reg, push1_reg, push2_reg : std_logic := '0';
begin
	
	process (clk)
		variable push0_cntr, push1_cntr, push2_cntr : integer := 0;
		variable pull0_cntr, pull1_cntr, pull2_cntr : integer := 0;
	begin
		if rising_edge(clk) then
			-- Each switch must be held until counter hits 500,000 cycles which equates to 20 ms
			if (push0_in = '0') then
				if (push0_cntr < 500000) then
					push0_cntr := push0_cntr + 1;
				else
					push0_reg <= '1';
				end if;
				pull0_cntr := 0;
			else
				if (pull0_cntr < 1000000) then
					pull0_cntr := pull0_cntr + 1;
				else
					push0_reg <= '0';
				end if;
				push0_cntr := 0;
			end if;
			
			if (push1_in = '0') then
				if (push1_cntr < 500000) then
					push1_cntr := push1_cntr + 1;
				else
					push1_reg <= '1';
				end if;
				pull1_cntr := 0;
			else
				if (pull1_cntr < 1000000) then
					pull1_cntr := pull1_cntr + 1;
				else
					push1_reg <= '0';
				end if;
				push1_cntr := 0;
			end if;
			
			if (push2_in = '0') then
				if (push2_cntr < 500000) then
					push2_cntr := push2_cntr + 1;
				else
					push2_reg <= '1';
				end if;
				pull2_cntr := 0;
			else
				if (pull2_cntr < 1000000) then
					pull2_cntr := pull2_cntr + 1;
				else
					push2_reg <= '0';
				end if;
				push2_cntr := 0;
			end if;
			
		end if;
		
		push0_out <= push0_reg;
		push1_out <= push1_reg;
		push2_out <= push2_reg;
				
	end process;	
	
end architecture behaviour;