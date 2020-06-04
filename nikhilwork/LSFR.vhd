library ieee; 
use ieee.std_logic_1164.all;
entity lfsr_7_plain is 
port (
  clk               : in  std_logic;
  o_lsfr            : out std_logic_vector (9 downto 0));
end lfsr_7_plain;

architecture rtl of lfsr_7_plain is  
signal r_lfsr           : std_logic_vector (8 downto 0) := "110101010";
begin  
o_lsfr  <= '0' & r_lfsr(8 downto 0);

p_lfsr : process (clk) begin 
  if rising_edge(clk) then 
		r_lfsr(8) <= r_lfsr(0);
      r_lfsr(7) <= r_lfsr(8) xor r_lfsr(0);
      r_lfsr(6) <= r_lfsr(7);
      r_lfsr(5) <= r_lfsr(6);
      r_lfsr(4) <= r_lfsr(5);
      r_lfsr(3) <= r_lfsr(4);
      r_lfsr(2) <= r_lfsr(3) xor r_lfsr(0);
      r_lfsr(1) <= r_lfsr(2);
		r_lfsr(0) <= r_lfsr(1);
  end if;  
end process p_lfsr; 

end architecture rtl;