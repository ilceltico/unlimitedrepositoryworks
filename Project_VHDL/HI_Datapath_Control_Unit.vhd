library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity Hi_Datapath_Control_Unit is 
	port 
	(
		CLOCK								: in	std_logic;
		RESET_N							: in 	std_logic;
		BORDER_REACHED					: in 	direction_type;
		GAME_TICK						: in 	std_logic;
		
		ALIEN_GRID_MOVEMENT			: out direction_type
	);
end entity;

architecture RTL of Hi_Datapath_Control_Unit is 

begin
	
	alien_grid_movement_handling : process(CLOCK, RESET_N) is
		
		variable grid_movement : direction_type := DIR_RIGHT;
		variable last_wall_reached : direction_type := DIR_NONE;
		
	begin
		
		if (RESET_N = '0') then 
		
			grid_movement := DIR_RIGHT;
			ALIEN_GRID_MOVEMENT <= DIR_RIGHT;
		
		elsif (rising_edge(CLOCK)) then 
		
		
			if (GAME_TICK = '1') then 
				ALIEN_GRID_MOVEMENT <= grid_movement;
			end if;
			
			if (BORDER_REACHED = DIR_LEFT and BORDER_REACHED /= last_wall_reached) then
			
				grid_movement := DIR_RIGHT;
				ALIEN_GRID_MOVEMENT <= DIR_DOWN;
			
			elsif (BORDER_REACHED = DIR_RIGHT and BORDER_REACHED /= last_wall_reached) then 
				
				grid_movement := DIR_LEFT;
				ALIEN_GRID_MOVEMENT <= DIR_DOWN;
			
			end if;
			
			last_wall_reached := BORDER_REACHED;
			
		end if;
	
	end process;

end architecture;