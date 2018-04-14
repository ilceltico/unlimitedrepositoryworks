library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.HI_package.all;
use work.vga_package.all;

entity HI_Datapath is 
	port 
	(
		CLOCK								: in	std_logic;
		RESET_N							: in 	std_logic;
		CHANGE_ALIEN_SPRITES 		: in  std_logic;
		REQ_NEXT_SPRITE				: in 	std_logic;
		REQUEST_ENTITY_SPRITE		: in 	datapath_entity_index_type;
		COLUMN_INDEX					: in 	alien_grid_index_type;
		ROW_INDEX						: in 	alien_column_index_type;
		
		NEW_LEVEL						: in 	std_logic;
		PLAYER_MOVEMENT				: in 	direction_type;
		PLAYER_SHOOT					: in 	std_logic;
		ALIEN_GRID_MOVEMENT			: in 	direction_type;
		ALIEN_SHOOT						: in 	std_logic;
		RAND_ALIEN_MOVEMENT			: in 	direction_type;
		SHOW_RAND_ALIEN				: in 	direction_type;
		DESTROY_ALIEN					: in 	std_logic;
		HIDE_ALIEN						: in 	std_logic;
		DESTROY_PLAYER					: in 	std_logic;
		ADVANCE_PLAYER_BULLETS		: in 	std_logic;
		ADVANCE_ALIEN_BULLETS		: in 	std_logic;
		
		SPRITE 							: out sprite_type;
		HITBOX							: out hitbox_type;
		SCORE								: out integer;
		LIVES								: out integer;
		LIVING_ALIEN_COUNT			: out integer;
		ENTITY_EXPLOSION_INDEX		: out entity_explosion_index_type;
		BORDER_REACHED					: out direction_type;
		RAND_ALIEN_BORDER_REACHED	: out direction_type;
		COLUMN_CANNOT_SHOOT			: out std_logic
	);
end entity;

architecture RTL of HI_Datapath is 

	signal alien_grid : alien_grid_type;

begin
	
	process(CLOCK, RESET_N) is 
	
	begin
		
		if (RESET_N = '0') then 
			
			SPRITE <= sprites(0);
			HITBOX.up_left_x <= 0;
			HITBOX.up_left_y <= 0;
			HITBOX.size_x <= 32;
			HITBOX.size_y <= 32;
			
		elsif (rising_edge(CLOCK)) then	
			
			if (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = ALIEN) then
				
				SPRITE <= sprites(alien_grid(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).sprite_indexes(alien_grid(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).current_index));
				HITBOX <= alien_grid(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).hitbox;
						
			end if;
			
		end if;
		
	end process;
	
	process(CLOCK, RESET_N) is 
	begin
		
		if (RESET_N = '0') then 
		
			for I in 0 to COLUMNS_PER_GRID - 1 loop
				for J in 0 to ALIENS_PER_COLUMN - 1 loop
				
					alien_grid(I)(J).sprite_indexes <= (0,1,2);
					alien_grid(I)(J).hitbox.up_left_x <= I * (SPRITE_SIZE + 10);
					alien_grid(I)(J).hitbox.up_left_y <= J * (SPRITE_SIZE + 10);
					alien_grid(I)(J).hitbox.size_x <= SPRITE_SIZE;
					alien_grid(I)(J).hitbox.size_y <= SPRITE_SIZE;
					alien_grid(I)(J).current_index <= 0;
		
				end loop;	
			end loop;
			
		elsif (rising_edge(CLOCK)) then 
		
			if (CHANGE_ALIEN_SPRITES = '1') then 
			
				for I in 0 to COLUMNS_PER_GRID - 1 loop
					for J in 0 to ALIENS_PER_COLUMN - 1 loop
			
						alien_grid(I)(J).hitbox.up_left_x <= alien_grid(I)(J).hitbox.up_left_x + 10;
						if (alien_grid(I)(J).current_index < ALIEN_SPRITE_COUNT - 2) then
							alien_grid(I)(J).current_index <= alien_grid(I)(J).current_index + 1;
						else 
							alien_grid(I)(J).current_index <= 0;
						end if;
					
					end loop;	
				end loop;
				
			end if;
			
		end if;
		
	end process;

end architecture;