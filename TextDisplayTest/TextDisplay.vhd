library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity TextDisplay is
port (signal clk, vert_sync : in std_logic;
		signal hit_points, score : in integer;
		signal game_state : in std_logic_vector(3 downto 0);
		signal pixel_row, pixel_col : in std_logic_vector (9 downto 0);
		signal pixel_on : out std_logic
		);
end entity TextDisplay;

architecture behaviour of TextDisplay is
signal ispixelon : std_logic := '0';
signal characters : STD_LOGIC_VECTOR (5 downto 0) := "000000";
signal vsync : std_LOGIC := vert_sync;

component char_rom IS
	PORT
	(
		character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock				: 	IN STD_LOGIC ;
		rom_mux_output		:	OUT STD_LOGIC
	);
END component char_rom;

begin 

main_menu : process(clk)
begin 
	if (game_state = "0000") then
		characters <= ("010111");
		end if;
	end process main_menu;
welcome_text : char_rom port map(character_address => characters, font_row => pixel_row(2 downto 0), font_col => pixel_col(2 downto 0), clock => clk, rom_mux_output => ispixelon);

pixel_on <= ispixelon;

process (clk)
    file file_pointer: text is out "write.txt";
    variable line_el: line;
	 variable ihatetime : time := 0 ns;
begin

    if rising_edge(clk) then
			ihatetime := ihatetime + 40 ns;
        -- Write the time
        ieee.std_logic_textio.hwrite(line_el, ihatetime); -- write the line.
        std.textio.write(line_el, ":"); -- write the line.

        -- Write the hsync
        std.textio.write(line_el, " ");
        std.textio.write(line_el, "0"); -- write the line.

        -- Write the vsync
        std.textio.write(line_el, " ");
        ieee.std_logic_textio.write(line_el, vsync); -- write the line.

        -- Write the red
        std.textio.write(line_el, " ");
        ieee.std_logic_textio.write(line_el, ispixelon&ispixelon&ispixelon); -- write the line.

        -- Write the green
        std.textio.write(line_el, " ");
        ieee.std_logic_textio.write(line_el, ispixelon&ispixelon&ispixelon); -- write the line.

        -- Write the blue
        std.textio.write(line_el, " ");
        ieee.std_logic_textio.write(line_el, ispixelon&ispixelon&ispixelon); -- write the line.

        std.textio.writeline(file_pointer, line_el); -- write the contents into the file.

    end if;
end process;

end architecture behaviour;