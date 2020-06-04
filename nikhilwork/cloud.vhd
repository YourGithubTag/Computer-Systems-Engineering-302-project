library IEEE;
use  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY cloud IS
	PORT(	SIGNAL clock, vert_sync					: IN	STD_LOGIC;
			SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
			SIGNAL randomVal							: IN std_logic_vector(9 DOWNTO 0);
			SIGNAL game_state							: IN std_logic_vector(3 downto 0);
			SIGNAL cloud_onOut							: OUT	STD_LOGIC
			);
END cloud;

architecture behaviour of cloud is
signal cloud1_x, cloud1_x_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(100, 10);
signal cloud1_y, cloud1_y_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(200, 10);

signal cloud2_x, cloud2_x_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(500, 10);
signal cloud2_y, cloud2_y_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(200, 10);

signal cloud3_x, cloud3_x_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(300, 10);
signal cloud3_y, cloud3_y_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(200, 10);

signal randomValInt: 		 std_logic_vector(9 DOWNTO 0);
signal slowclk:					STD_LOGIC := '0';
signal cloudValInt1, cloudValInt2 , cloudValInt3 : 		 std_logic_vector(9 DOWNTO 0);
signal cloud1_xbounds, cloud2_xbounds, cloud3_xbounds, screenBounds: STD_LOGIC := '0';
signal cloud_on: STD_LOGIC;

begin

randomprocess: process (vert_sync)
begin
if (rising_edge(vert_sync)) then 
	randomValInt <= randomVal;
	if (randomVal < 50) then 
		randomValInt <=  conv_std_logic_vector(50, 10);
	elsif (randomVal > 100) then 
		randomValInt <=  conv_std_logic_vector(100, 10);
	end if;
end if;
end process randomprocess;

cloudslow: process (vert_sync)
begin
	if (rising_edge(vert_sync)) then 
		slowclk <= not slowclk;
	end if;
end process cloudslow;


cloudMove: process (slowclk)  	
begin
if rising_edge(slowclk) then
-- Training Active & Singleplayer Active, calculate and update position as ingame
	if ((game_state = "0010") or (game_state = "0110")) then
			if cloud1_xbounds = '0' then
				cloud1_x_next <= cloud1_x - 1;
			elsif (cloud1_xbounds = '1') then
				cloud1_x_next <= conv_std_logic_vector(700, 10);
				cloud1_y_next <= randomValInt;
				
				cloudValInt1 <= randomVal;
				if (cloudValInt1 < 15) then 
					cloudValInt1 <=  conv_std_logic_vector(5, 10);
				elsif (cloudValInt1 > 50) then 
					cloudValInt1 <=  conv_std_logic_vector(10, 10);
				end if;
				
				
			end if;
			
			cloud1_x <= cloud1_x_next;
			cloud1_y <= cloud1_y_next;
		
			if cloud2_xbounds = '0' then
				cloud2_x_next <= cloud2_x - 1; 
			elsif (cloud2_xbounds = '1') then
				cloud2_x_next <= conv_std_logic_vector(700, 10);
				cloud2_y_next <= randomValInt;
				
				cloudValInt2 <= randomVal;
				if (cloudValInt2 < 15) then 
					cloudValInt2 <=  conv_std_logic_vector(5, 10);
				elsif (cloudValInt2 > 40) then 
					cloudValInt2 <=  conv_std_logic_vector(10, 10);
				end if;
				
			end if;
			
				cloud2_x <= cloud2_x_next;
				cloud2_y <= cloud2_y_next;	
				
			if cloud3_xbounds = '0' then
				cloud3_x_next <= cloud3_x - 1; 
			elsif (cloud3_xbounds = '1') then
				cloud3_x_next <= conv_std_logic_vector(700, 10);
				cloud3_y_next <= randomValInt;
				
				cloudValInt3 <= randomVal;
				if (cloudValInt3 < 15) then 
					cloudValInt3 <=  conv_std_logic_vector(5, 10);
				elsif (cloudValInt3 > 30) then 
					cloudValInt3 <=  conv_std_logic_vector(15, 10);
				end if;
				
			end if; 
			
			cloud3_x <= cloud3_x_next;
			cloud3_y <= cloud3_y_next;
	-- Training Paused & Singleplayer Paused hold position, do not clear		
	elsif ((game_state = "0011") or (game_state = "0111")) then
			cloud1_x <= cloud1_x_next;
			cloud1_y <= cloud1_y_next;
			cloud2_x <= cloud2_x_next;
			cloud2_y <= cloud2_y_next;	
			cloud3_x <= cloud3_x_next;
			cloud3_y <= cloud3_y_next;
	-- All other states set to default values of columns
	else 
			cloud1_x_next  <= conv_std_logic_vector(100, 10);
			cloud1_y_next  <= conv_std_logic_vector(200, 10);
			
			cloud2_x_next  <= conv_std_logic_vector(500, 10);
			cloud2_y_next  <= conv_std_logic_vector(200, 10);
			
			cloud3_x_next  <= conv_std_logic_vector(300, 10);
			cloud3_y_next  <= conv_std_logic_vector(200, 10);
			
			cloud1_x <= cloud1_x_next;
			cloud1_y <= cloud1_y_next;
			cloud2_x <= cloud2_x_next;
			cloud2_y <= cloud2_y_next;	
			cloud3_x <= cloud3_x_next;
			cloud3_y <= cloud3_y_next;
			
			cloudValInt1 <= conv_std_logic_vector(30, 10);
			cloudValInt2 <= conv_std_logic_vector(30, 10);
			cloudValInt3 <= conv_std_logic_vector(30, 10);
	end if;
end if;
end process cloudMove;
	
cloud1_xbounds <= '1' when  ((cloud1_x >= 0) and (cloud1_x <= 5)) else '0';
cloud2_xbounds <= '1' when  ((cloud2_x >= 0) and (cloud2_x <= 5)) else '0';
cloud3_xbounds <= '1' when  ((cloud3_x >= 0) and (cloud3_x <= 5)) else '0';

screenBounds <= '1' when (pixel_column > 0 and pixel_column < 500) else '0';


cloud_on <= '1' when    (screenBounds='1' and cloud1_xbounds='0' and ((pixel_column >= cloud1_x - 60 and pixel_column < cloud1_x) or (cloud1_x <= 30 and pixel_column < cloud1_x)) and ((cloud1_y + cloudValInt1 >= pixel_row) and (pixel_row >=  cloud1_y - cloudValInt1) )) or
								(screenBounds='1' and cloud2_xbounds='0' and ((pixel_column >= cloud2_x - 60 and pixel_column < cloud2_x) or (cloud2_x <= 30 and pixel_column < cloud2_x)) and ((cloud2_y + cloudValInt2 >= pixel_row) and (pixel_row >=  cloud1_y - cloudValInt2) )) or
								(screenBounds='1' and cloud3_xbounds='0' and ((pixel_column >= cloud3_x - 60 and pixel_column < cloud3_x) or (cloud3_x <= 30 and pixel_column < cloud3_x)) and ((cloud3_y + cloudValInt3 >= pixel_row) and (pixel_row >=  cloud1_y - cloudValInt3) ))  else '0';
cloud_onOut <= cloud_on;
	
	
end architecture behaviour;