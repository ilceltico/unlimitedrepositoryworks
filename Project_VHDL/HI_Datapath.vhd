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
		ADVANCE_ALIENS 				: in  std_logic;
		REQ_NEXT_SPRITE				: in 	std_logic;
		REQUEST_ENTITY_SPRITE		: in 	datapath_entity_index_type;
		COLUMN_INDEX					: in 	alien_grid_index_type;
		ROW_INDEX						: in 	alien_column_index_type;
--		NEW_LEVEL						: in 	std_logic;
		PLAYER_MOVEMENT				: in 	direction_type;
--		PLAYER_SHOOT					: in 	std_logic;
		ALIEN_GRID_MOVEMENT			: in 	direction_type;
		ALIEN_SHOOT						: in 	std_logic;
		RAND_ALIEN_MOVEMENT			: in 	direction_type;
--		SHOW_RAND_ALIEN				: in 	direction_type;
--		DESTROY_ALIEN					: in 	std_logic;
		HIDE_ALIEN						: in 	std_logic;
--		DESTROY_PLAYER					: in 	std_logic;
--		ADVANCE_PLAYER_BULLETS		: in 	std_logic;
--		ADVANCE_ALIEN_BULLETS		: in 	std_logic;
		
		SPRITE 							: out sprite_type;
		HITBOX							: out hitbox_type;
--		SCORE								: out integer;
--		LIVES								: out integer;
--		LIVING_ALIEN_COUNT			: out integer;
--		ENTITY_EXPLOSION_INDEX		: out entity_explosion_index_type;
		BORDER_REACHED					: out direction_type;
--		RAND_ALIEN_BORDER_REACHED	: out direction_type;
		COLUMN_CANNOT_SHOOT			: out std_logic
	);
end entity;

architecture RTL of HI_Datapath is 

	signal alien_grid 	: alien_grid_type;
	
	signal first_column 	: alien_grid_index_type;
	signal first_row 		: alien_column_index_type;
	signal last_column 	: alien_grid_index_type;
	signal last_row 		: alien_column_index_type;
	
	signal player			: player_type;
	signal bullets			: bullet_array_type;
	
	signal rand_alien		: alien_type;
begin
	
	render_entity_query : process(CLOCK, RESET_N) is 
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
			
			elsif (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = ALIEN_BULLET) then

				SPRITE <= sprites(bullets(REQUEST_ENTITY_SPRITE.index_1).sprite_indexes(bullets(REQUEST_ENTITY_SPRITE.index_1).current_index));
				HITBOX <= bullets(REQUEST_ENTITY_SPRITE.index_1).hitbox;
			
			elsif (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = PLAYER_ENTITY) then
			
				SPRITE <= sprites(player.current_index);
				HITBOX <= player.hitbox;
			
			end if;
			
		end if;
		
	end process;
	
	alien_grid_handling : process(CLOCK, RESET_N) is 
	
	variable var_first_column 	: alien_grid_index_type;
	variable var_first_row 		: alien_column_index_type;
	variable var_last_column 	: alien_grid_index_type;
	variable var_last_row 		: alien_column_index_type;
	
	begin
		
		if (RESET_N = '0') then 
			
			var_first_column 	:= 0;
			var_first_row 		:= 0;
			var_last_column 	:= COLUMNS_PER_GRID - 1;
			var_last_row 		:= ALIENS_PER_COLUMN - 1;
			
			first_column 	<= var_first_column;
			first_row 		<= var_first_row;
			last_column 	<= var_last_column;
			last_row 		<= var_last_row;
		
			for I in 0 to COLUMNS_PER_GRID - 1 loop
				
				for J in 0 to ALIENS_PER_COLUMN - 1 loop
				
					if (J < ALIEN_3_ROWS) then 
						alien_grid(I)(J).sprite_indexes <= (ALIEN_3_1_SPRITE, ALIEN_3_2_SPRITE, ALIEN_EXPLOSION_SPRITE);
					elsif (J >= ALIEN_3_ROWS and J < ALIEN_3_ROWS + ALIEN_2_ROWS) then
						alien_grid(I)(J).sprite_indexes <= (ALIEN_2_1_SPRITE, ALIEN_2_2_SPRITE, ALIEN_EXPLOSION_SPRITE);
					elsif (J >= ALIEN_3_ROWS + ALIEN_2_ROWS and J < ALIEN_3_ROWS + ALIEN_2_ROWS + ALIEN_1_ROWS) then
						alien_grid(I)(J).sprite_indexes <= (ALIEN_1_1_SPRITE, ALIEN_1_2_SPRITE, ALIEN_EXPLOSION_SPRITE);
					end if;
					
					alien_grid(I)(J).hitbox.up_left_x 	<= FIRST_ALIEN_CELL_X + I * (ALIEN_SIZE_X + ALIEN_SPACING_X);
					alien_grid(I)(J).hitbox.up_left_y 	<= FIRST_ALIEN_CELL_Y + J * (ALIEN_SIZE_Y + ALIEN_SPACING_Y);
					alien_grid(I)(J).hitbox.size_x 		<= ALIEN_SIZE_X;
					alien_grid(I)(J).hitbox.size_y 		<= ALIEN_SIZE_Y;
					alien_grid(I)(J).current_index 		<= 0;
					alien_grid(I)(J).visible 				<= '0';
					alien_grid(I)(J).exploding 			<= '0';
		
				end loop;	
				
			end loop;
			
		elsif (rising_edge(CLOCK)) then 
		
			if (HIDE_ALIEN = '1') then 
				
				alien_grid(COLUMN_INDEX)(ROW_INDEX).visible <= '0';
				
				var_last_column 	:= 0;
				var_last_row 		:= 0;
				var_first_column 	:= COLUMNS_PER_GRID - 1;
				var_first_row		:= ALIENS_PER_COLUMN - 1;
				
				for I in 0 to COLUMNS_PER_GRID - 1 loop 
					for J in 0 to ALIENS_PER_COLUMN - 1 loop
					
					--Credo che debba essere:
						if ((I /= COLUMN_INDEX or J /= ROW_INDEX) and alien_grid(I)(J).visible = '1') then 
						
							if (I > var_last_column) then 
								var_last_column := I;
							end if;
						
							if (I < var_first_column) then 
								var_first_column := I;
							end if;
							
							if (J > var_last_row) then
								var_last_row := J;
							end if;
							
							if (J < var_first_row) then 
								var_first_row := J;
							end if;
								
						end if;
					
					end loop;
				end loop;
				
				first_column 	<= var_first_column;
				first_row 		<= var_first_row;
				last_column 	<= var_last_column;
				last_row 		<= var_last_row;
				
			end if;
	
			if (ADVANCE_ALIENS = '1') then 
			
				for I in 0 to COLUMNS_PER_GRID - 1 loop
					for J in 0 to ALIENS_PER_COLUMN - 1 loop
			
						case (ALIEN_GRID_MOVEMENT) is
						
							when DIR_RIGHT => 
								alien_grid(I)(J).hitbox.up_left_x <= alien_grid(I)(J).hitbox.up_left_x + ALIEN_SPEED;
							when DIR_LEFT =>
								alien_grid(I)(J).hitbox.up_left_x <= alien_grid(I)(J).hitbox.up_left_x - ALIEN_SPEED;
							when DIR_UP =>
								alien_grid(I)(J).hitbox.up_left_y <= alien_grid(I)(J).hitbox.up_left_y - ALIEN_DOWN_SPEED;	
							when DIR_DOWN =>
								alien_grid(I)(J).hitbox.up_left_y <= alien_grid(I)(J).hitbox.up_left_y + ALIEN_DOWN_SPEED;
							when DIR_NONE => -- Unreachable
						
						end case;	
						
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
	
	border_collision_detection : process(CLOCK, RESET_N) is
	begin
	
		if (RESET_N = '0') then 
		
			BORDER_REACHED <= DIR_NONE;
			
		elsif (rising_edge(CLOCK)) then 
		
			if (alien_grid(last_column)(0).hitbox.up_left_x + alien_grid(last_column)(0).hitbox.size_x > H_DISP - SIDE_MARGIN) then
				BORDER_REACHED <= DIR_RIGHT;
			elsif (alien_grid(first_column)(0).hitbox.up_left_x < SIDE_MARGIN) then
				BORDER_REACHED <= DIR_LEFT;
			elsif (alien_grid(0)(last_row).hitbox.up_left_y + alien_grid(0)(last_row).hitbox.size_y > V_DISP - BOTTOM_MARGIN) then
				BORDER_REACHED <= DIR_DOWN;
			elsif (alien_grid(0)(first_row).hitbox.up_left_y < TOP_MARGIN) then
				BORDER_REACHED <= DIR_UP;
			else
				BORDER_REACHED <= DIR_NONE;
			end if;

--			if (alien_grid(COLUMNS_PER_GRID - 1)(0).hitbox.up_left_x + alien_grid(COLUMNS_PER_GRID - 1)(0).hitbox.size_x > H_DISP - SIDE_MARGIN) then
--				BORDER_REACHED <= DIR_RIGHT;
--			elsif (alien_grid(0)(0).hitbox.up_left_x < SIDE_MARGIN) then
--				BORDER_REACHED <= DIR_LEFT;
--			elsif (alien_grid(0)(ALIENS_PER_COLUMN - 1).hitbox.up_left_y + alien_grid(0)(ALIENS_PER_COLUMN - 1).hitbox.size_y > V_DISP - BOTTOM_MARGIN) then
--				BORDER_REACHED <= DIR_DOWN;
--			elsif (alien_grid(0)(0).hitbox.up_left_y < TOP_MARGIN) then
--				BORDER_REACHED <= DIR_UP;
--			else
--				BORDER_REACHED <= DIR_NONE;
--			end if;
		
		end if;
		
	end process;
	
	player_movement_handler : process(RESET_N, PLAYER_MOVEMENT) is
	begin
	
		if (RESET_N = '0') then
		
			player.sprite_indexes <= (PLAYER_SPRITE, PLAYER_EXPLOSION_1_SPRITE, PLAYER_EXPLOSION_2_SPRITE);
			player.hitbox.up_left_x <= PLAYER_START_X;
			player.hitbox.up_left_y <= PLAYER_START_Y;
			player.hitbox.size_x <= PLAYER_SIZE_X;
			player.hitbox.size_y <= PLAYER_SIZE_Y;
			player.current_index <= 0;
			player.lives <= PLAYER_LIVES;
			player.exploding <= '0';
			
		elsif (rising_edge(CLOCK)) then
		
			case (PLAYER_MOVEMENT) is
						
				when DIR_RIGHT => 
					player.hitbox.up_left_x <= player.hitbox.up_left_x + PLAYER_SPEED;
				when DIR_LEFT =>
					player.hitbox.up_left_x <= player.hitbox.up_left_x - PLAYER_SPEED;
				when DIR_UP => -- Unreachable
				when DIR_DOWN => -- Unreachable
				when DIR_NONE => -- Unreachable
						
			end case;	
		
		end if;
		
	end process;
	
	rand_alien_movement_handler : process(RESET_N, RAND_ALIEN_MOVEMENT) is
	begin
	
		if (RESET_N = '0') then
			rand_alien.sprite_indexes <= (ALIEN_4_SPRITE, ALIEN_4_SPRITE, ALIEN_EXPLOSION_SPRITE); -- Utilizzando il tipo "alien_type", inserisco due volte lo stesso sprite. Creare un tipo separato?
			rand_alien.hitbox.up_left_x 	<= FIRST_RAND_ALIEN_CELL_X;
			rand_alien.hitbox.up_left_y 	<= FIRST_RAND_ALIEN_CELL_Y;
			rand_alien.hitbox.size_x 		<= RAND_ALIEN_SIZE_X;
			rand_alien.hitbox.size_y 		<= RAND_ALIEN_SIZE_Y;
			rand_alien.current_index 		<= 0;
			rand_alien.visible 				<= '0';
			rand_alien.exploding 			<= '0';
			
		elsif (rising_edge(CLOCK)) then
		
			case (RAND_ALIEN_MOVEMENT) is
						
				when DIR_RIGHT => 
					rand_alien.hitbox.up_left_x <= rand_alien.hitbox.up_left_x + RAND_ALIEN_SPEED;
				when DIR_LEFT => -- Unreachable
				when DIR_UP => -- Unreachable
				when DIR_DOWN => -- Unreachable
				when DIR_NONE => -- Unreachable
						
			end case;	
		end if;
	end process;
		
	can_column_shoot : process (CLOCK, RESET_N) is
			
			variable referenced_column : alien_grid_index_type;
			
	begin
		if (RESET_N = '0') then
			referenced_column := 0;
			COLUMN_CANNOT_SHOOT <= '1';
		
		elsif (rising_edge(CLOCK)) then
			referenced_column := COLUMN_INDEX;
			COLUMN_CANNOT_SHOOT <= '1';
		
			for I in 0 to ALIENS_PER_COLUMN - 1 loop
				
				if( alien_grid(referenced_column)(I).visible = '1' ) then
					COLUMN_CANNOT_SHOOT <= '0';
				end if;
			
			end loop;
		end if;
		
	end process;
	
end architecture;