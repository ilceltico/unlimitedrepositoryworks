library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity View is 
	port 
	(
		CLOCK				: in	std_logic;
		RESET_N			: in 	std_logic;
		DRAW_IMG			: in 	std_logic;
		
		FB_DRAW_RECT   : out std_logic;
		FB_COLOR       : out color_type;
		FB_X0          : out xy_coord_type;
		FB_Y0          : out xy_coord_type;
		FB_X1          : out xy_coord_type;
		FB_Y1          : out xy_coord_type;
	);
end entity;

architecture RTL of View is

type state_type is (IDLE, WAITING, DRAWING);
signal state        : state_type;

begin
	DrawImage: process(CLOCK, RESET_N)
	begin
	
		if(RESET_N = '0') then
	
		elsif(rising_edge(CLOCK)) then
		
			case (state) is 
				when IDLE => 
					-- Se riceve segnale DRAW_IMG metti in WAITING
				when WAITING =>
					-- Se il renderer è pronto, metti in DRAWING
				when DRAWING =>
					-- Metti in WAITING, effettua tutte le chiamate DRAW_RECT e metti in IDLE quando ha finito
	
		end if;
	
	end process;
	
end architecture;


