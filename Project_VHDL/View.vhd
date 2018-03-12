library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity View is 
	port 
	(
		CLOCK				: in	std_logic;
		RESET_N			: in 	std_logic;
		DRAW_IMG			: in 	std_logic;
		FB_READY			: in 	std_logic;
		SPRITE			: in 	sprite_type;
		X					: in 	xy_coord_type;
		Y					: in 	xy_coord_type;
		
		FB_DRAW_RECT   : out std_logic;
		FB_COLOR       : out color_type;
		FB_X0          : out xy_coord_type;
		FB_Y0          : out xy_coord_type;
		FB_X1          : out xy_coord_type;
		FB_Y1          : out xy_coord_type
	);
end entity;

architecture RTL of View is

type state_type is (IDLE, WAITING, DRAWING);
signal state			: state_type;
signal row				: integer;
signal column			: integer;
signal s					: sprite_type;

begin
	DrawImage: process(CLOCK, RESET_N)
	begin
	
		if(RESET_N = '0') then
	
		elsif(rising_edge(CLOCK)) then
		
			case (state) is 
				when IDLE => 
					if (DRAW_IMG = '1') then
						state <= WAITING;
						s <= SPRITE;
					end if;
					
				when WAITING =>
					if (FB_READY = '1') then
						state <= DRAWING;
					end if;
				
				when DRAWING =>
					state <= WAITING;
					if (column = 31) then
						column <= 0;
						row <= row + 1;
					else
						column <= column + 1;
					end if;
					
					if (s.img_pixels(row, column) = '1') then
						FB_X0 <= X + column;
						FB_X1 <= X + column;
						FB_Y0 <= Y + row;
						FB_Y1 <= Y + row;
						FB_COLOR <= s.color;
						FB_DRAW_RECT <= '1';
					end if;
					
					
			end case;
		end if;
	
	end process;
	
end architecture;


