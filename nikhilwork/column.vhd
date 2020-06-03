library IEEE;
use  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY column IS
	PORT(	SIGNAL clock, vert_sync					: IN	STD_LOGIC;
			SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
			SIGNAL randomVal							: IN std_logic_vector(8 DOWNTO 0);
			SIGNAL game_state							: IN std_logic_vector(3 downto 0);
			SIGNAL pipe_onOut							: OUT	STD_LOGIC;
			SIGNAL red_out, green_out, blue_out	: OUT	STD_LOGIC 
			);
END column;

architecture behaviour of column is
signal col1_x, col1_x_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(200, 10);
signal col1_y, col1_y_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(300, 10);

signal col2_x, col2_x_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(600, 10);
signal col2_y, col2_y_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(300, 10);

signal col3_x, col3_x_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(400, 10);
signal col3_y, col3_y_next: std_logic_vector(9 downto 0) := conv_std_logic_vector(300, 10);

signal randomValInt: 		 std_logic_vector(8 DOWNTO 0);

signal col1_xbounds, col2_xbounds, col3_xbounds, screenBounds: STD_LOGIC := '0';
signal pipe_on: STD_LOGIC;

begin

columnMove: process (vert_sync)  	
begin
if rising_edge(vert_sync) then
-- Training Active & Singleplayer Active, calculate and update position as ingame
	if ((game_state = "0010") or (game_state = "0110")) then
	
			if col1_xbounds = '0' then
				col1_x_next <= col1_x - 1;
			elsif (col1_xbounds = '1') then
				col1_x_next <= conv_std_logic_vector(700, 10);
				col1_y_next <= '0' & randomValInt;
			end if;
			
			col1_x <= col1_x_next;
			col1_y <= col1_y_next;
		
			if col2_xbounds = '0' then
				col2_x_next <= col2_x - 1; 
			elsif (col2_xbounds = '1') then
				col2_x_next <= conv_std_logic_vector(700, 10);
				col2_y_next <= '0' & randomValInt;
			end if;
			
				col2_x <= col2_x_next;
				col2_y <= col2_y_next;	
				
			if col3_xbounds = '0' then
				col3_x_next <= col3_x - 1; 
			elsif (col3_xbounds = '1') then
				col3_x_next <= conv_std_logic_vector(700, 10);
				col3_y_next <= '0' & randomValInt;
			end if; 
			
			col3_x <= col3_x_next;
			col3_y <= col3_y_next;
	-- Training Paused & Singleplayer Paused hold position, do not clear		
	elsif ((game_state = "0011") or (game_state = "0111")) then
			col1_x <= col1_x_next;
			col1_y <= col1_y_next;
			col2_x <= col2_x_next;
			col2_y <= col2_y_next;	
			col3_x <= col3_x_next;
			col3_y <= col3_y_next;
	-- All other states set to default values of columns
	else 
			col1_x_next  <= conv_std_logic_vector(200, 10);
			col1_y_next  <= conv_std_logic_vector(300, 10);
			col2_x_next  <= conv_std_logic_vector(600, 10);
			col2_y_next  <= conv_std_logic_vector(300, 10);
			col3_x_next  <= conv_std_logic_vector(400, 10);
			col3_y_next  <= conv_std_logic_vector(300, 10);
			
			col1_x <= col1_x_next;
			col1_y <= col1_y_next;
			col2_x <= col2_x_next;
			col2_y <= col2_y_next;	
			col3_x <= col3_x_next;
			col3_y <= col3_y_next;
	end if;
end if;
end process columnMove;


randomassign: process (vert_sync)
begin
if rising_edge(vert_sync) then
	randomValInt <= randomVal + 25;
	if (randomValInt >= 480) then 
		randomValInt <=  conv_std_logic_vector(340, 9);
	end if;
end if;
end process randomassign;

	
col1_xbounds <= '1' when  ((col1_x >= 0) and (col1_x <= 5)) else '0';
col2_xbounds <= '1' when  ((col2_x >= 0) and (col2_x <= 5)) else '0';
col3_xbounds <= '1' when  ((col3_x >= 0) and (col3_x <= 5)) else '0';

screenBounds <= '1' when (pixel_column > 0 and pixel_column < 500) else '0';

--Logic to signal the pipe is on (80 is the width of the pipe, 100 is width of the gap)
pipe_on <= '1' when     (screenBounds='1' and col1_xbounds='0' and ((pixel_column >= col1_x - 50 and pixel_column < col1_x) or (col1_x <= 50 and pixel_column < col1_x)) and (pixel_row <= col1_y or pixel_row > col1_y+100)) or
								(screenBounds='1' and col2_xbounds='0' and ((pixel_column >= col2_x - 50 and pixel_column < col2_x) or (col2_x <= 50 and pixel_column < col2_x)) and (pixel_row <= col2_y or pixel_row > col2_y+100)) or
								(screenBounds='1' and col3_xbounds='0' and ((pixel_column >= col3_x - 50 and pixel_column < col3_x) or (col3_x <= 50 and pixel_column < col3_x)) and (pixel_row <= col3_y or pixel_row > col3_y+100))  else '0';

					
	red_out <= '1';
	blue_out <= pipe_on;
	green_out <= '1';
	pipe_onOut <= pipe_on;
	
	
end architecture behaviour;