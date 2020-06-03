library IEEE;
use  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY Pixelpriority IS
	PORT(	SIGNAL vert_sync					: IN	STD_LOGIC;
			SIGNAL birdRBG, groundRGB, pipeRGB, powerupRGB, textRGB : 		IN std_logic_vector(2 downto 0);
			SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
			SIGNAL pipe_on, bird_on, ground_on, powerup_on , text_on	: IN	STD_LOGIC;
			SIGNAL outputRGB	: OUT	std_logic_vector(2 downto 0)
			);
END Pixelpriority;

architecture behaviour of Pixelpriority is
begin

process
begin
	if (bird_on = '1') then
		outputRGB <= birdRBG;
	elsif (pipe_on = '1') then
		outputRGB <= pipeRGB;
	elsif (text_on = '1') then
		outputRGB <= textRGB;
	elsif (ground_on = '1') then
		outputRGB <= groundRGB;
	elsif (powerup_on = '1') then
		outputRGB <= powerupRGB;
	else 
		outputRGB <= birdRBG;
	end if;
end process;
end behaviour;