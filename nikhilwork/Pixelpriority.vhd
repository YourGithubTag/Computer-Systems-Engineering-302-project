library IEEE;
use  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY Pixelpriority IS
	PORT(	SIGNAL clock, vert_sync					: IN	STD_LOGIC;
			SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
			SIGNAL pipe_on, bird_on, ground_on, powerup_on , text_on	: IN	STD_LOGIC;
			SIGNAL red_out, green_out, blue_out	: OUT	STD_LOGIC 
			);
END Pixelpriority;

architecture behaviour of Pixelpriority is
SIGNAL stream: std_logic_vector(4 DOWNTO 0) := "00000"

begin

stream <= (pipe_on & bird_on & ground_on & powerup_on & text_on);


 X <= A(0) when (stream = "00001") else
         A(1) when (stream = "01") else
         A(2) when (stream = "10") else
         A(3) when (stream = "11") else A(0);




end behaviour;