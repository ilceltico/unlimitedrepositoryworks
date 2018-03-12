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
begin
	process()
	
end architecture;


