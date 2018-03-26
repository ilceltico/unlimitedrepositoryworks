library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity view is 
	port 
	(
		CLOCK				: in	std_logic;
		RESET_N			: in 	std_logic;
		READY 			: in  std_logic;
		
		DRAW_SPRITE		: out std_logic;
		SPRITE			: out sprite_type;
		SPRITE_X			: out xy_coord_type;
		SPRITE_Y			: out	xy_coord_type;
		SHOW				: out std_logic
	);
end entity;

architecture RTL of view is 

type state_type is (RENDER_0, SHOW_SPRITES);

signal frame_time		: std_logic;
signal render_asap	: std_logic;
signal state 			: state_type;

signal x					: xy_coord_type;
signal y					: xy_coord_type;

begin

	draw_gen : process(CLOCK, RESET_N)
		variable counter : integer range 0 to (1666667 - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			frame_time <= '0';
		elsif (rising_edge(CLOCK)) then
			if(counter = counter'high) then
				counter := 0;
				frame_time <= '1';
			else
				counter := counter+1;
				frame_time <= '0';			
			end if;
		end if;
	end process;
	
	location : process (frame_time) 
	begin
		if (RESET_N = '0') then
			x <= 0;
			y <= 0;
		elsif rising_edge (frame_time) then
			x <= x + 1;
		   y <= y + 1;
		end if;
	end process;
	
	main : process(CLOCK, RESET_N)
	begin
		
		if (RESET_N = '0') then
			state <= RENDER_0;
			DRAW_SPRITE <= '0';
			SHOW <= '0';
			SPRITE <= dummy_sprite_1;
			SPRITE_X <= 0;
			SPRITE_Y <= 0;
			render_asap <= '0';
		
		elsif rising_edge(CLOCK) then
			
			DRAW_SPRITE <= '0';
			SHOW <= '0';
			SPRITE <= dummy_sprite_1;
			SPRITE_X <= 0;
			SPRITE_Y <= 0;
			
			if (frame_time = '1' and render_asap = '0') then
				render_asap <= '1';
			end if;
			
			if (READY = '1') then
			
				case (state) is 
					when RENDER_0 =>  
						SPRITE <= dummy_sprite_1;
						SPRITE_X <= x;
						SPRITE_Y <= y;
						DRAW_SPRITE <= '1';
						state <= SHOW_SPRITES;
--					when RENDER_1 => 
--						SPRITE <= dummy_sprite_2;
--						SPRITE_X <= 300;
--						SPRITE_Y <= 400;
--						DRAW_SPRITE <= '1';
--						state <= RENDER_2;
--					when RENDER_2 => 
--						SPRITE <= dummy_sprite_1;
--						SPRITE_X <= 50 - x;
--						SPRITE_Y <= 100 - y;
--						DRAW_SPRITE <= '1';
--						state <= RENDER_3;
--					when RENDER_3 => 
--						SPRITE <= dummy_sprite_2;
--						SPRITE_X <= x + 50;
--						SPRITE_Y <= y + 500;
--						DRAW_SPRITE <= '1';
--						state <= RENDER_4;
--					when RENDER_4 => 
--						SPRITE <= dummy_sprite_1;
--						SPRITE_X <= 500;
--						SPRITE_Y <= 200;
--						DRAW_SPRITE <= '1';
--						state <= SHOW_SPRITES;
					when SHOW_SPRITES =>
						if (render_asap = '1') then
							SHOW <= '1';
							state <= RENDER_0;
							render_asap <= '0';
						end if;
				end case;
--			else
--				SHOW <= '0';
--				DRAW_SPRITE <= '0';
--				SPRITE <= dummy_sprite_1;
--				SPRITE_X <= 0;
--				SPRITE_Y <= 0;
			end if;		
		end if;
	end process;

end architecture;