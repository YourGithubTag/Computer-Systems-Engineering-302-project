library IEEE;
use  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY GPU IS
	PORT(	SIGNAL vert_sync					: IN	STD_LOGIC;
			SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
			SIGNAL pipe_on, bird_on, ground_on, sky_on, powerup_on , cloud_on, text_on, birdflasher, heartflasher, heartsym	: IN	STD_LOGIC;
			signal game_state : in std_logic_vector(3 downto 0);
			SIGNAL red_out, blue_out, green_out	: OUT	std_logic_vector(3 downto 0)
			);
END GPU;

architecture behaviour of GPU is

SIGNAL BirdRBG: 		std_logic_vector(11 downto 0) :=  "111101110000";
SIGNAL whiteRBG: 		std_logic_vector(11 downto 0) :=  "111111111111";
SIGNAL pipeRGB: 		std_logic_vector(11 downto 0) :=  "000001110110";
SIGNAL skyRGB:			std_logic_vector(11 downto 0) :=  "000011111111";
SIGNAL textRGB: 		std_logic_vector(11 downto 0) :=  "111111111111";
SIGNAL groundRGB: 	std_logic_vector(11 downto 0) :=  "000000100000";
SIGNAL heartRGB: 		std_logic_vector(11 downto 0) :=  "111100000000";
SIGNAL powerupRGB: 	std_logic_vector(11 downto 0) :=  "111100000000";


begin

process (vert_sync)
begin

if (rising_edge(vert_sync)) then
	if ((game_state = "0010") or (game_state = "0110") or (game_state = "0011") or (game_state = "0111")) then 
		if (bird_on = '1') then
			red_out <= BirdRBG(11 downto 8);
			blue_out <= BirdRBG(7 downto 4);
			green_out <= BirdRBG(3 downto 0);
			
				if (birdflasher = '1') then 
					red_out <= whiteRBG(11 downto 8);
					blue_out <= whiteRBG(7 downto 4);
					green_out <= whiteRBG(3 downto 0);
				end if;
				
		elsif (text_on = '1') then
			red_out <= textRGB(11 downto 8);
			blue_out <= textRGB(7 downto 4);
			green_out <= textRGB(3 downto 0);
		elsif (heartsym  = '1')then
			red_out <= heartRGB(11 downto 8);
			blue_out <= heartRGB(7 downto 4);
			green_out <= heartRGB(3 downto 0);
			
				if (heartflasher = '1') then 
					red_out <= whiteRBG(11 downto 8);
					blue_out <= whiteRBG(7 downto 4);
					green_out <= whiteRBG(3 downto 0);
				end if;
				
		elsif (pipe_on = '1') then
			red_out <= pipeRGB(11 downto 8);
			blue_out <= pipeRGB(7 downto 4);
			green_out <= pipeRGB(3 downto 0);
		elsif (ground_on = '1') then
			red_out <= groundRGB(11 downto 8);
			blue_out <= groundRGB(7 downto 4);
			green_out <= groundRGB(3 downto 0);
		elsif (powerup_on = '1') then
			red_out <= powerupRGB(11 downto 8);
			blue_out <= powerupRGB(7 downto 4);
			green_out <= powerupRGB(3 downto 0);
		elsif (cloud_on = '1') then
			red_out <= whiteRBG(11 downto 8);
			blue_out <= whiteRBG(7 downto 4);
			green_out <= whiteRBG(3 downto 0);
		elsif (sky_on = '1') then
			red_out <= skyRGB(11 downto 8);
			blue_out <= skyRGB(7 downto 4);
			green_out <= skyRGB(3 downto 0);
		else 
			red_out <= "0000";
			blue_out <= "0000";
			green_out <= "0000";
		end if;
	elsif (game_state = "0000") then 
		if (text_on = '1') then
			red_out <= textRGB(11 downto 8);
			blue_out <= textRGB(7 downto 4);
			green_out <= textRGB(3 downto 0);
		elsif (cloud_on = '1') then
			red_out <= whiteRBG(11 downto 8);
			blue_out <= whiteRBG(7 downto 4);
			green_out <= whiteRBG(3 downto 0);
		elsif (ground_on = '1') then
			red_out <= groundRGB(11 downto 8);
			blue_out <= groundRGB(7 downto 4);
			green_out <= groundRGB(3 downto 0);
		elsif (sky_on = '1') then
			red_out <= skyRGB(11 downto 8);
			blue_out <= skyRGB(7 downto 4);
			green_out <= skyRGB(3 downto 0);
		else 
			red_out <= "0000";
			blue_out <= "0000";
			green_out <= "0000";
		end if;
	
	end if;
end if;
end process;
end behaviour;