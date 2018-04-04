library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity HI_Datapath is 
	port 
	(
		CLOCK							: in	std_logic;
		RESET_N						: in 	std_logic;
		CHANGE_ALIEN_SPRITES 	: in  std_logic;
		
		SPRITE 						: out sprite_type;
		HITBOX						: out hitbox_type
	);
end entity;

architecture RTL of HI_Datapath is 

signal alien			: alien_type;

begin
	
	HITBOX <= alien.hitbox;
	SPRITE <= sprites(alien.sprite_indexes(alien.current_index));
	
	process(CLOCK, RESET_N) is 
	begin
		
		if (RESET_N = '0') then 
		
			alien.sprite_indexes <= (0,1,0);
			alien.hitbox.up_left_x <= 200;
			alien.hitbox.up_left_y <= 200;
			alien.hitbox.size_x <= 32;
			alien.hitbox.size_y <= 32;
			alien.current_index <= 0;
			
		elsif (rising_edge(CLOCK)) then 
		
			
			
		end if;
		
	end process;

end architecture;