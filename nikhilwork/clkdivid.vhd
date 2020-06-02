library IEEE; 

use  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

entity clkdivid is 
port (
  clk               : in  std_logic;
  clkout            : out std_logic
  );
end clkdivid;

architecture rtl of clkdivid is  
signal clkdividINT           : std_logic := '0';
signal clkcounter				  : std_logic_vector(21 downto 0) := (others => '0');

begin  
clkout  <= clkdividINT;

clkcount : process (clk) begin 
  if rising_edge(clk) then 
	clkcounter <= clkcounter + 1;
	
	if (clkcounter = 125000 ) then
		clkdividINT <= not clkdividINT;
		clkcounter <= conv_std_logic_vector(0, 22); 
	end if;
	
  end if;  
end process clkcount; 

end architecture rtl;