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
--		COLUMN_INDEX					: in 	alien_grid_index_type;
--		ROW_INDEX						: in 	alien_column_index_type;
--		NEW_LEVEL						: in 	std_logic;
--		PLAYER_MOVEMENT				: in 	direction_type;
--		PLAYER_SHOOT					: in 	std_logic;
--		ALIEN_GRID_MOVEMENT			: in 	direction_type;
--		ALIEN_SHOOT						: in 	std_logic;
--		RAND_ALIEN_MOVEMENT			: in 	direction_type;
--		SHOW_RAND_ALIEN				: in 	direction_type;
--		DESTROY_ALIEN					: in 	std_logic;
--		HIDE_ALIEN						: in 	std_logic;
--		DESTROY_PLAYER					: in 	std_logic;
--		ADVANCE_PLAYER_BULLETS		: in 	std_logic;
--		ADVANCE_ALIEN_BULLETS		: in 	std_logic;
		
		SPRITE 							: out sprite_type;
		HITBOX							: out hitbox_type
--		SCORE								: out integer;
--		LIVES								: out integer;
--		LIVING_ALIEN_COUNT			: out integer;
--		ENTITY_EXPLOSION_INDEX		: out entity_explosion_index_type;
--		BORDER_REACHED					: out direction_type;
--		RAND_ALIEN_BORDER_REACHED	: out direction_type;
--		COLUMN_CANNOT_SHOOT			: out std_logic
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
			HITBOX.size_x <= SPRITE_SIZE;
			HITBOX.size_y <= SPRITE_SIZE;
			
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
				
					if (J < ALIEN_3_ROWS) then 
						alien_grid(I)(J).sprite_indexes <= (ALIEN_3_1_SPRITE, ALIEN_3_2_SPRITE, ALIEN_EXPLOSION_SPRITE);
					elsif (J >= ALIEN_3_ROWS and J < ALIEN_3_ROWS + ALIEN_2_ROWS) then
						alien_grid(I)(J).sprite_indexes <= (ALIEN_2_1_SPRITE, ALIEN_2_2_SPRITE, ALIEN_EXPLOSION_SPRITE);
					elsif (J >= ALIEN_3_ROWS + ALIEN_2_ROWS and J < ALIEN_3_ROWS + ALIEN_2_ROWS + ALIEN_1_ROWS) then
						alien_grid(I)(J).sprite_indexes <= (ALIEN_1_1_SPRITE, ALIEN_1_2_SPRITE, ALIEN_EXPLOSION_SPRITE);
					end if;
					alien_grid(I)(J).hitbox.up_left_x <= FIRST_ALIEN_CELL_X + I * (ALIEN_SIZE_X + ALIEN_SPACING_X);
					alien_grid(I)(J).hitbox.up_left_y <= FIRST_ALIEN_CELL_Y + J * (ALIEN_SIZE_Y + ALIEN_SPACING_Y);
					alien_grid(I)(J).hitbox.size_x <= ALIEN_SIZE_X;
					alien_grid(I)(J).hitbox.size_y <= ALIEN_SIZE_Y;
					alien_grid(I)(J).current_index <= 0;
		
				end loop;	
				
			end loop;
			
		elsif (rising_edge(CLOCK)) then 
		
			if (CHANGE_ALIEN_SPRITES = '1') then 
			
				for I in 0 to COLUMNS_PER_GRID - 1 loop
					for J in 0 to ALIENS_PER_COLUMN - 1 loop
			
						alien_grid(I)(J).hitbox.up_left_x <= alien_grid(I)(J).hitbox.up_left_x + ALIEN_SPEED;
						
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