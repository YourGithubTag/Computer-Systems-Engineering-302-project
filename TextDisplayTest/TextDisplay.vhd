library IEEE;
use ieee.std_logic_1164.all;
use IEEE.std_logic_textio.all;
use ieee.numeric_std.all;

use ieee.std_logic_arith.all;
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
signal characters : STD_LOGIC_VECTOR (5 downto 0) := "100000";
signal vsync : std_LOGIC := vert_sync;

type sentence is array (0 to 31) of std_logic_vector(5 downto 0);
signal welcome_to_flappy_bird : sentence := ("010111","000101","001100","000011","001111","001101","000101","100000","010100","001111","100000","000110","001100","000001","010000","010000","011001","100000","000010","001001","010010","000100","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000"); 
signal training_text : sentence := ("010100","010010","000001","001001","001110","001001","001110","000111","100000","001101","001111","000100","000101","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000");
signal single_player_text : sentence := ("010011","001001","001110","000111","001100","000101","100000","010000","001100","000001","011001","000101","010010","100000","001101","001111","000100","000101","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000");
signal score_text : sentence := ("010011","000011","001111","010010","000101","100000","101101","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000");
signal pause_text : sentence := ("010000","000001","010101","010011","000101","000100","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000");
signal game_over_text : sentence := ("000111","000001","001101","000101","100000","001111","010101","000101","010010","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000","100000");

	
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
-- Displaying 'Welcome to Flappy Bird' Main Menu
	if (game_state = "0000") then
		if ((pixel_row (9 downto 4) = "001111") and (pixel_col(9 downto 4) = "000100")) then
		characters <= welcome_to_flappy_bird(0);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "000101")) then
		characters <= welcome_to_flappy_bird(1);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "000110")) then
		characters <= welcome_to_flappy_bird(2);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "000111")) then
		characters <= welcome_to_flappy_bird(3);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "001000")) then
		characters <= welcome_to_flappy_bird(4);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "001001")) then
		characters <= welcome_to_flappy_bird(5);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "001010")) then
		characters <= welcome_to_flappy_bird(6);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "001011")) then
		characters <= welcome_to_flappy_bird(7);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "001100")) then
		characters <= welcome_to_flappy_bird(8);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "001101")) then
		characters <= welcome_to_flappy_bird(9);
	
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "001110")) then
		characters <= welcome_to_flappy_bird(10);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "001111")) then
		characters <= welcome_to_flappy_bird(11);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "010000")) then
		characters <= welcome_to_flappy_bird(12);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "010001")) then
		characters <= welcome_to_flappy_bird(13);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "010010")) then
		characters <= welcome_to_flappy_bird(14);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "010011")) then
		characters <= welcome_to_flappy_bird(15);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "010100")) then
		characters <= welcome_to_flappy_bird(16);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "010101")) then
		characters <= welcome_to_flappy_bird(17);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "010111")) then
		characters <= welcome_to_flappy_bird(18);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "011000")) then
		characters <= welcome_to_flappy_bird(19);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "011001")) then
		characters <= welcome_to_flappy_bird(20);
		
		elsif ((pixel_row (9 downto 4) = "001111") and (pixel_col (9 downto 4) = "011010")) then
		characters <= welcome_to_flappy_bird(21);
		
		else
		characters <= ("100000");
		end if;
	end if;
end process main_menu;
	
-- Displaying text 'Single Player Mode"
single_player : process (clk)
begin 
	if (game_state = "0100" or game_state = "0101" or game_state = "0110" or game_state = "0111") then
		if ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000000")) then
		characters <= single_player_text(0);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000001")) then
		characters <= single_player_text(1);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000010")) then
		characters <= single_player_text(2);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000011")) then
		characters <= single_player_text(3);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000100")) then
		characters <= single_player_text(4);

		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000101")) then
		characters <= single_player_text(5);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000110")) then
		characters <= single_player_text(6);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000111")) then
		characters <= single_player_text(7);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001000")) then
		characters <= single_player_text(8);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001001")) then
		characters <= single_player_text(9);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001010")) then
		characters <= single_player_text(10);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001011")) then
		characters <= single_player_text(11);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001100")) then
		characters <= single_player_text(12);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001101")) then
		characters <= single_player_text(13);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001110")) then
		characters <= single_player_text(14);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001111")) then
		characters <= single_player_text(15);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "010000")) then
		characters <= single_player_text(16);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "010001")) then
		characters <= single_player_text(17);
		
		end if;
		end if;
	end process single_player;

-- Displaying text 'Training mode'
training_mode : process (clk)
begin
	if (game_state = "0001" or game_state = "0010" or game_state = "0011") then
		if ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000000")) then
		characters <= training_text(0);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000001")) then
		characters <= training_text(1);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000010")) then
		characters <= training_text(2);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000011")) then
		characters <= training_text(3);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000100")) then
		characters <= training_text(4);

		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000101")) then
		characters <= training_text(5);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000110")) then
		characters <= training_text(6);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "000111")) then
		characters <= training_text(7);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001000")) then
		characters <= training_text(8);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001001")) then
		characters <= training_text(9);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001010")) then
		characters <= training_text(10);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001011")) then
		characters <= training_text(11);
		
		elsif ((pixel_row(9 downto 4) = "0000000") and (pixel_col(9 downto 4) = "001100")) then
		characters <= training_text(12);
		
		end if;
		end if;
	end process training_mode;
	
-- Displaying the player score
--score_display : process (clk)
--begin
--	if (game_state = "0101" or game_state = "0110" or game_state = "0111") then
--		if ((pixel_row (9 downto 4) = "010111") and (pixel_col(9 downto 4) = "000000")) then
--		characters <= score_text(0);
--		
--		elsif ((pixel_row (9 downto 4) = "010111") and (pixel_col (9 downto 4) = "000001")) then
--		characters <= score_text(1);
--		
--		elsif ((pixel_row (9 downto 4) = "010111") and (pixel_col (9 downto 4) = "000010")) then
--		characters <= score_text(2);
--		
--		elsif ((pixel_row (9 downto 4) = "010111") and (pixel_col (9 downto 4) = "000011")) then
--		characters <= score_text(3);
--		
--		elsif ((pixel_row (9 downto 4) = "010111") and (pixel_col (9 downto 4) = "000100")) then
--		characters <= score_text(4);
--		
--		elsif ((pixel_row (9 downto 4) = "010111") and (pixel_col (9 downto 4) = "000101")) then
--		characters <= score_text(5);
--		
--		elsif ((pixel_row (9 downto 4) = "010111") and (pixel_col (9 downto 4) = "000110")) then
--		characters <= score_text(6);
--		
--		elsif ((pixel_row (9 downto 4) = "010111") and (pixel_col (9 downto 4) = "000111")) then
--		characters <= score_text(7);
--	end if;
--	end if;
--end process score_display;	
--
-- Displaying text for 'Game Over'	
game_over : process (clk)
begin 
	if (game_state = "1000" or game_state = "0100") then
		if ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "001111")) then
		characters <= game_over_text(0);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010001")) then
		characters <= game_over_text(1);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010010")) then
		characters <= game_over_text(2);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010011")) then
		characters <= game_over_text(3);
	
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010100")) then
		characters <= game_over_text(4);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010101")) then
		characters <= game_over_text(5);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010110")) then
		characters <= game_over_text(6);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010111")) then
		characters <= game_over_text(7);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "011000")) then
		characters <= game_over_text(8);
		end if;
		end if;
	end process game_over;
--
-- Displaying text for 	
pause : process (clk)
begin
	if (game_state = "0011" or game_state = "0111") then
	
		if ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010001")) then
		characters <= pause_text(0);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010010")) then
		characters <= pause_text(1);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010011")) then
		characters <= pause_text(2);
	
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010100")) then
		characters <= pause_text(3);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010101")) then
		characters <= pause_text(4);
		
		elsif ((pixel_row(9 downto 4) = "0001111") and (pixel_col(9 downto 4) = "010110")) then
		characters <= pause_text(5);
		
	end if;	
	end if;
end process pause;
	
text_out : char_rom port map(character_address => characters, font_row => pixel_row(3 downto 1), font_col => pixel_col(3 downto 1), clock => clk, rom_mux_output => ispixelon);
pixel_on <= ispixelon;


end architecture behaviour;