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
		X					: out xy_coord_type;
		Y					: out	xy_coord_type;
		SHOW				: out std_logic
	);
end entity;

architecture RTL of view is 

type state_type is (RENDER_0, RENDER_1, SHOW_SPRITES);

signal do_stuff 	: std_logic;
signal state 		: state_type;

begin

	draw_gen : process(CLOCK, RESET_N)
		variable counter : integer range 0 to (500000 - 1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			do_stuff <= '0';
		elsif (rising_edge(CLOCK)) then
			if(counter = counter'high) then
				counter := 0;
				do_stuff <= '1';
			else
				counter := counter+1;
				do_stuff <= '0';			
			end if;
		end if;
	end process;
	
	stuff : process(do_stuff, RESET_N)
	begin
		if (RESET_N = '0') then
			state <= RENDER_0;
			DRAW_SPRITE <= '0';
			SHOW <= '0';
			SPRITE <= dummy_sprite_1;
			X <= 50;
			Y <= 50;
		elsif rising_edge(do_stuff) then
			DRAW_SPRITE <= '0';
			SHOW <= '0';
			if (READY = '1') then
				case (state) is 
					when RENDER_0 =>  
						SPRITE <= dummy_sprite_1;
						X <= 50;
						Y <= 50;
						DRAW_SPRITE <= '1';
						SHOW <= '0';
						state <= RENDER_1;
					when RENDER_1 => 
						SPRITE <= dummy_sprite_2;
						X <= 150;
						Y <= 150;
						DRAW_SPRITE <= '1';
						SHOW <= '0';
						state <= SHOW_SPRITES;
					when SHOW_SPRITES =>
						SHOW <= '1';
						DRAW_SPRITE <= '0';
						state <= RENDER_0;
				end case;	
			end if;		
		end if;
	end process;

end architecture;