-- COMPSYS 305 Miniproject
-- 2020 FPGPals
-- Written by Cecil Symes, csym531

-- Counts lifepoints and outputs game over

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lifepoint_tracker is
	port(
		clk : in std_logic;
		gamestate : in std_logic_vector(3 downto 0);
		collided : in std_logic;
		pixel_row, pixel_column : in std_logic_vector(9 downto 0);
		game_over : out std_logic;
		lifepoint_on : out std_logic;
		bird_hit_flash, low_hp_flash : out std_logic;
		LIFEPOINTS_OUT_TEST : out std_logic_vector(1 downto 0)
	);
end entity lifepoint_tracker;

architecture behaviour of lifepoint_tracker is
	component char_rom is
	PORT
	(
		character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock				: 	IN STD_LOGIC ;
		rom_mux_output		:	OUT STD_LOGIC
	);
	end component char_rom;
	
	-- Keeps count of lifepoints
	signal lifepoints : unsigned(1 downto 0) := to_unsigned(3, 2);
	
	-- Flag to ensure that 1 collision is not re-registered on every new frame
	signal prev_collided : std_logic := '0';
	
	-- Addresses for empty and full hearts
	signal empty_address : std_logic_vector(5 downto 0) := std_logic_vector(to_unsigned(27, 6));
	signal full_address : std_logic_vector(5 downto 0) := std_logic_vector(to_unsigned(28, 6));
	
	-- Assign signals used as boundaries to draw the hearts
	signal start_col1, start_row, end_col1, end_row : unsigned(9 downto 0);
	signal start_col2, end_col2 : unsigned(9 downto 0);
	signal start_col3, end_col3 : unsigned(9 downto 0);
	
	-- Gap to place between hearts
	constant gap : integer := 8;
	
	-- Scale to render the hearts
	constant scale : integer := 2; -- Hearts are 16x16
	
	-- Adjusting factor is added to pixel_row/pixel_column(3 downto 1) to ensure the correct ROM address is accessed
	signal adjust_row : unsigned(2 downto 0) := (to_unsigned(8, 3) - start_row(3 downto 1));
	signal adjust_col1 : unsigned(2 downto 0) := (to_unsigned(7, 3) - start_col1(3 downto 1));
	signal adjust_col2, adjust_col3 : unsigned(2 downto 0);
	
	-- Port Map Signals
	signal character_address : std_logic_vector(5 downto 0);
	signal font_row, font_col : std_logic_vector(2 downto 0);
	signal rom_mux_output : std_logic;
	
	-- Signal marks when damage is taken
	signal damaged : std_logic := '0';
	
begin
	
	-- Starting pixel for three hearts
	start_col1 <= to_unsigned(550, 10); -- EDIT THIS TO ADJUST STARTING COLUMN (Subtract 1 for some reason)
	start_row <= to_unsigned(34, 10); -- EDIT THIS TO ADJUST STARTING ROW
	
	-- Calculate positions of other 2 hearts based on starting pixel & scale
	end_row <= (start_row) + to_unsigned(8 * scale, 10);
	end_col1 <= (start_col1) + to_unsigned(8 * scale, 10);
	
	start_col2 <= (end_col1 + to_unsigned(gap, 10));
	end_col2 <= (start_col2 + to_unsigned(8 * scale, 10));
	
	start_col3 <= (end_col2 + to_unsigned(gap, 10));
	end_col3 <= (start_col3 + to_unsigned(8 * scale, 10));
	
	-- Calculate adjustments
	adjust_col2 <= (to_unsigned(7, 3) - start_col2(3 downto 1));
	adjust_col3 <= (to_unsigned(7, 3) - start_col3(3 downto 1));
	
	-- Port map for char_rom
	symbol_rom : char_rom port map (character_address, font_row, font_col, clk, rom_mux_output);
	
	-- Logic for taking damage
	hitpoint_logic : process (clk)
		variable half_sec : unsigned(23 downto 0) := to_unsigned(0, 24);
		variable cycles : unsigned(2 downto 0) := to_unsigned(0, 3);
		variable flash : std_logic := '0';
	begin
		if rising_edge(clk) then
			-- Can only take damage if game is Active
			if ((gamestate = "0010") or (gamestate = "0110")) then
				-- Take damage if player collides with something on new frame
				if ((collided = '1') and (damaged = '0') and (prev_collided = '0')) then
					lifepoints <= lifepoints - to_unsigned(1, 2);
						-- Once lifepoints reach zero, game is over
					if (lifepoints = to_unsigned(0, 2)) then
						game_over <= '1';
					else
					-- If not out of life points, flash and avoid damage for a certain amount of time
						damaged <= '1';
					end if;
				end if;
				
				-- Flash for 3 seconds with half second intervals
				if (damaged = '1') then
					if (half_sec = to_unsigned(12500000, 24)) then
						half_sec := to_unsigned(0, 24);
						cycles := (cycles + to_unsigned(1, 3));
						flash := not flash;
					else
						half_sec := half_sec + to_unsigned(1, 24);
					end if;
					
					-- After 6 seconds, no longer damaged
					if (cycles = to_unsigned(6, 3)) then
						damaged <= '0';
						cycles := to_unsigned(0, 3);
						flash := '0';
					end if;
				end if;
				
				-- Set bird_hit_flash
				bird_hit_flash <= flash;
				-- Store flag to ensure one collision doesn't retrigger damage
				prev_collided <= collided;
				
			elsif ((gamestate = "0011") or (gamestate = "0111")) then
				-- Hold lifepoints for game paused
				lifepoints <= lifepoints;
			else
				-- If game is not Active or Paused, then reset lifepoints and game_over
				lifepoints <= to_unsigned(3, 2);
				game_over <= '0';
			end if;
		end if;
		
		LIFEPOINTS_OUT_TEST <= std_logic_vector(lifepoints);
	end process hitpoint_logic;
	
	low_life_flashing : process (clk)
		variable half_sec : unsigned(23 downto 0) := to_unsigned(0, 24);
		variable cycles : unsigned(1 downto 0) := to_unsigned(0, 2);
		variable flash : std_logic := '0';
	begin
		if rising_edge(clk) then
			-- Flash for 2 seconds with half second intervals
			if (lifepoints = to_unsigned(1, 2)) then
				if (half_sec = to_unsigned(12500000, 24)) then
					half_sec := to_unsigned(0, 24);
					cycles := (cycles + to_unsigned(1, 2));
					flash := not flash;
				else
					half_sec := half_sec + to_unsigned(1, 24);
				end if;
			else
				flash := '0';
			end if;
		end if;
		low_hp_flash <= flash;
	end process low_life_flashing;
	
	-- Chooses when to output lifepoint_on
	rendering : process (clk)
	begin
		if rising_edge(clk) then
			-- Draw the first heart
			if ((pixel_column > std_logic_vector(start_col1)) and (pixel_row >= std_logic_vector(start_row)) and (pixel_column <= std_logic_vector(end_col1)) and (pixel_row < std_logic_vector(end_row))) then
				if (lifepoints <= to_unsigned(0, 2)) then
					character_address <= empty_address;
				else
					character_address <= full_address;
				end if;
				font_col <= std_logic_vector(unsigned(pixel_column(3 downto 1)) + adjust_col1); -- Add offset to display hearts properly
				font_row <= std_logic_vector(unsigned(pixel_row(3 downto 1)) + adjust_row); -- Add offset to display hearts properly
			
			-- Draw the second heart
			elsif ((pixel_column > std_logic_vector(start_col2)) and (pixel_row >= std_logic_vector(start_row)) and (pixel_column <= std_logic_vector(end_col2)) and (pixel_row < std_logic_vector(end_row))) then
				if (lifepoints <= to_unsigned(1, 2)) then
					character_address <= empty_address;
				else
					character_address <= full_address;
				end if;
				font_col <= std_logic_vector(unsigned(pixel_column(3 downto 1)) + adjust_col2); -- Add offset to display hearts properly
				font_row <= std_logic_vector(unsigned(pixel_row(3 downto 1)) + adjust_row); -- Add offset to display hearts properly
			
			-- Draw the third heart
			elsif ((pixel_column > std_logic_vector(start_col3)) and (pixel_row >= std_logic_vector(start_row)) and (pixel_column <= std_logic_vector(end_col3)) and (pixel_row < std_logic_vector(end_row))) then
				if (lifepoints <= to_unsigned(2, 2)) then
					character_address <= empty_address;
				else
					character_address <= full_address;
				end if;
				font_col <= std_logic_vector(unsigned(pixel_column(3 downto 1)) + adjust_col3); -- Add offset to display hearts properly
				font_row <= std_logic_vector(unsigned(pixel_row(3 downto 1)) + adjust_row); -- Add offset to display hearts properly
			
			-- Otherwise don't draw anything
			else
				character_address <= "000000";
				font_col <= "000";
				font_row <= "000";
			end if;
		end if;
		
		lifepoint_on <= rom_mux_output;
	end process rendering;
	
end architecture behaviour;