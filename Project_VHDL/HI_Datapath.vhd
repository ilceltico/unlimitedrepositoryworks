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
		REQ_NEXT_SPRITE			: in 	std_logic;
		REQUEST_ENTITY_SPRITE		: in 	datapath_entity_index_type;
		DESTROY							: in 	datapath_entity_index_type;
		HIDE								: in 	datapath_entity_index_type;
		COLUMN_INDEX					: in  alien_grid_index_type;
--		NEW_LEVEL						: in 	std_logic;
		PLAYER_MOVEMENT				: in 	direction_type;
		PLAYER_SHOOT					: in 	std_logic;
		ALIEN_GRID_MOVEMENT			: in 	direction_type;
		ALIEN_SHOOT						: in 	std_logic;
		RAND_ALIEN_MOVEMENT			: in 	direction_type;
		SHOW_RAND_ALIEN				: in 	std_logic;
		ADVANCE_PLAYER_BULLET		: in 	std_logic;
		ADVANCE_ALIEN_BULLETS		: in 	std_logic;
		
		SPRITE 							: out sprite_type := sprite_empty;
		HITBOX							: out hitbox_type := (0,0,1,1);
--		SCORE								: out integer;
--		LIVES								: out integer;
--		LIVING_ALIEN_COUNT			: out integer;
--		ENTITY_EXPLOSION_INDEX		: out entity_explosion_index_type;
		ALIEN_BORDER_REACHED			: out direction_type;
		RAND_ALIEN_BORDER_REACHED	: out direction_type;
		PLAYER_BORDER_REACHED		: out direction_type;
		COLUMN_CANNOT_SHOOT			: out std_logic;
		COLLISION						: out collision_type
	);
end entity;

architecture RTL of HI_Datapath is 

type collision_state_type is (PLAYER_BULLET_COLLISIONS, ALIEN_COLLISIONS, ALIEN_BULLET_COLLISIONS);

	signal alien_grid 	: alien_grid_type;
	
	signal first_column 	: alien_grid_index_type := 0;
	signal first_row 		: alien_column_index_type := 0;
	signal last_column 	: alien_grid_index_type := COLUMNS_PER_GRID - 1;
	signal last_row 		: alien_column_index_type := ALIENS_PER_COLUMN - 1;
	signal active_rows 	: std_logic_vector(ALIENS_PER_COLUMN - 1 downto 0);
	signal active_columns: std_logic_vector(COLUMNS_PER_GRID  - 1 downto 0);
	
	signal player			: player_type;
	signal alien_bullets	: bullet_array_type;
	signal player_bullet : bullet_type;
	
	signal rand_alien		: alien_type;
	
	signal collision_state : collision_state_type;
	
begin
	
	render_entity_query : process(CLOCK, RESET_N) is 
	begin
		
		if (RESET_N = '0') then 
			
			SPRITE <= sprite_empty;
			HITBOX <= (0,0,1,1);
			
		elsif (rising_edge(CLOCK)) then	

			SPRITE <= sprite_empty;
			HITBOX <= (0,0,1,1);
			
			if (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = ENTITY_ALIEN and alien_grid(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).visible = '1') then
				
				SPRITE <= sprites(alien_grid(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).sprite_indexes(alien_grid(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).current_index));
				HITBOX <= alien_grid(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).hitbox;
			
			elsif (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = ENTITY_ALIEN_BULLET and alien_bullets(REQUEST_ENTITY_SPRITE.index_1).visible = '1') then

				SPRITE <= sprites(alien_bullets(REQUEST_ENTITY_SPRITE.index_1).sprite_indexes(alien_bullets(REQUEST_ENTITY_SPRITE.index_1).current_index));
				HITBOX <= alien_bullets(REQUEST_ENTITY_SPRITE.index_1).hitbox;
				
			elsif (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = ENTITY_PLAYER_BULLET and player_bullet.visible = '1') then

				SPRITE <= sprites(player_bullet.sprite_indexes(player_bullet.current_index));
				HITBOX <= player_bullet.hitbox;

			elsif (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = ENTITY_RANDOM_ALIEN and rand_alien.visible = '1') then
			
				SPRITE <= sprites(rand_alien.sprite_indexes(rand_alien.current_index));
				HITBOX <= rand_alien.hitbox;
			
			elsif (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = ENTITY_PLAYER) then
			
				SPRITE <= sprites(player.sprite_indexes(player.current_index));
				HITBOX <= player.hitbox;
				
			end if;
			
		end if;
		
	end process;
	
	alien_grid_handling : process(CLOCK, RESET_N) is 
	
	variable var_first_column 	: alien_grid_index_type := 0;
	variable var_first_row 		: alien_column_index_type := 0;
	variable var_last_column 	: alien_grid_index_type := COLUMNS_PER_GRID - 1;
	variable var_last_row 		: alien_column_index_type := ALIENS_PER_COLUMN - 1;
	
	variable found 				: std_logic := '0';
	
	begin
		
		if (RESET_N = '0') then 
			
			var_first_column 	:= 0;
			var_first_row 		:= 0;
			var_last_column	:= COLUMNS_PER_GRID - 1;
			var_last_row		:= ALIENS_PER_COLUMN - 1;
			
			first_column 	<= var_first_column;
			first_row 		<= var_first_row;
			last_column 	<= var_last_column;
			last_row 		<= var_last_row;
			
			found 				:= '0';
			
			active_columns <= (others => '1');
			active_rows 	<= (others => '1');
		
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
					alien_grid(I)(J).visible 				<= '1';
					alien_grid(I)(J).exploding 			<= '0';
		
				end loop;	
				
			end loop;
			
		elsif (rising_edge(CLOCK)) then 
		
			alien_grid <= alien_grid;
			
			if (HIDE.entity_type = ENTITY_ALIEN) then 
				
				alien_grid(HIDE.index_1)(HIDE.index_2).visible <= '0';
				
				var_last_column 	:= last_column;
				var_last_row 		:= last_row;
				var_first_column 	:= first_column;
				var_first_row		:= first_row;
				
				-- Checking if a row went completely destroyed
				found 				:= '0'; 
				
				for I in 0 to COLUMNS_PER_GRID - 1 loop 
				
					if (alien_grid(I)(HIDE.index_2).visible = '1' and I /= HIDE.index_1) then
						found := '1';
					end if;
				
				end loop;
				
				if (found = '0') then
				
					active_rows(HIDE.index_2) <= '0';
					
					var_first_row := ALIENS_PER_COLUMN - 1;
					var_last_row  := 0;
					
					-- Computing new first and last rows
					for I in 0 to ALIENS_PER_COLUMN - 1 loop 
								
						if (active_rows(I) = '1' and I /= HIDE.index_2) then 
							
							if (I > var_last_row) then 
								var_last_row := I;
							end if;
						
							if (I < var_first_row) then 
								var_first_row := I;
							end if;
				
						end if;
						
					end loop;
					
				end if;
				
				-- Checking if a column went completely destroyed
				found := '0';
				
				for I in 0 to ALIENS_PER_COLUMN - 1 loop 
				
					if (alien_grid(HIDE.index_1)(I).visible = '1' and I /= HIDE.index_2) then
						found := '1';
					end if;
				
				end loop;
				
				if (found = '0') then
					active_columns(HIDE.index_1) <= '0';
					
					var_first_column := COLUMNS_PER_GRID - 1;
					var_last_column  := 0;
					
					-- Computing new first and last columns
					for I in 0 to COLUMNS_PER_GRID - 1 loop 
								
						if (active_columns(I) = '1' and I /= HIDE.index_1) then 
							
							if (I > var_last_column) then 
								var_last_column := I;
							end if;
						
							if (I < var_first_column) then 
								var_first_column := I;
							end if;
				
						end if;
						
					end loop;
					
				end if;
				
--				for I in 0 to COLUMNS_PER_GRID - 1 loop 
--					for J in 0 to ALIENS_PER_COLUMN - 1 loop
--				
--						if ((I /= HIDE.index_1 or J /= HIDE.index_2) and alien_grid(I)(J).visible = '1') then 
--						
--							if (I > var_last_column) then 
--								var_last_column := I;
--							end if;
--						
--							if (I < var_first_column) then 
--								var_first_column := I;
--							end if;
--							
--							if (J > var_last_row) then
--								var_last_row := J;
--							end if;
--							
--							if (J < var_first_row) then 
--								var_first_row := J;
--							end if;
--								
--						end if;
--					
--					end loop;
--				end loop;
				
				first_column 	<= var_first_column;
				first_row 		<= var_first_row;
				last_column 	<= var_last_column;
				last_row 		<= var_last_row;
				
			end if;
			
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
						when DIR_NONE => -- Do nothing
					
					end case;	
					
					if (ALIEN_GRID_MOVEMENT /= DIR_NONE) then
						if (alien_grid(I)(J).current_index < ALIEN_SPRITE_COUNT - 2) then
							alien_grid(I)(J).current_index <= alien_grid(I)(J).current_index + 1;
						else 
							alien_grid(I)(J).current_index <= 0;
						end if;
					end if;
				
				end loop;
			end loop;
				
			
		end if;
		
	end process;
	
	player_bullet_handling : process (CLOCK, RESET_N) is 
	begin 
		
		if (RESET_N = '0') then 
		
			player_bullet <= ((PLAYER_BULLET_SPRITE, PLAYER_BULLET_SPRITE, PLAYER_BULLET_SPRITE, PLAYER_BULLET_EXPLOSION_SPRITE), (0,0, PLAYER_BULLET_SIZE_X, PLAYER_BULLET_SIZE_Y), 0, '0', '0');
		
		elsif (rising_edge(CLOCK)) then 
		
			if (PLAYER_SHOOT = '1' and player_bullet.visible = '0') then 
			
				player_bullet.hitbox.up_left_x <= player.hitbox.up_left_x + player.hitbox.size_x / 2 - player_bullet.hitbox.size_x / 2;
				player_bullet.hitbox.up_left_y <= player.hitbox.up_left_y;
				player_bullet.visible <= '1';
				
			end if;
				
			if (ADVANCE_PLAYER_BULLET = '1' and player_bullet.visible = '1' and player_bullet.exploding = '0') then
			
				player_bullet.hitbox.up_left_y <= player_bullet.hitbox.up_left_y - PLAYER_BULLET_SPEED;
			
			end if;
			
			if (HIDE.entity_type = ENTITY_PLAYER_BULLET) then
				player_bullet.visible <= '0';
			end if;
		end if;
		
	end process;
	
	border_collision_detection : process(CLOCK, RESET_N) is
	begin
	
		if (RESET_N = '0') then 
		
			ALIEN_BORDER_REACHED <= DIR_NONE;
			RAND_ALIEN_BORDER_REACHED <= DIR_NONE;
			
		elsif (rising_edge(CLOCK)) then 
			
			-- Alien grid
			if (alien_grid(last_column)(0).hitbox.up_left_x + alien_grid(last_column)(0).hitbox.size_x > H_DISP - SIDE_MARGIN) then
				ALIEN_BORDER_REACHED <= DIR_RIGHT;
			elsif (alien_grid(first_column)(0).hitbox.up_left_x < SIDE_MARGIN) then
				ALIEN_BORDER_REACHED <= DIR_LEFT;
			elsif (alien_grid(0)(last_row).hitbox.up_left_y + alien_grid(0)(last_row).hitbox.size_y > V_DISP - BOTTOM_MARGIN) then
				ALIEN_BORDER_REACHED <= DIR_DOWN;
			elsif (alien_grid(0)(first_row).hitbox.up_left_y < TOP_MARGIN) then
				ALIEN_BORDER_REACHED <= DIR_UP;
			else
				ALIEN_BORDER_REACHED <= DIR_NONE;
			end if;
			
			-- Random Alien
			if (rand_alien.hitbox.up_left_x > H_DISP - SIDE_MARGIN) then
				RAND_ALIEN_BORDER_REACHED <= DIR_RIGHT;
			elsif (rand_alien.hitbox.up_left_x + rand_alien.hitbox.size_x < SIDE_MARGIN) then
				RAND_ALIEN_BORDER_REACHED <= DIR_LEFT;
			else
				RAND_ALIEN_BORDER_REACHED <= DIR_NONE;
			end if;
			
			-- Player
			if (player.hitbox.up_left_x + player.hitbox.size_x > H_DISP - SIDE_MARGIN) then
				PLAYER_BORDER_REACHED <= DIR_RIGHT;
			elsif (player.hitbox.up_left_x < SIDE_MARGIN) then
				PLAYER_BORDER_REACHED <= DIR_LEFT;
			else
				PLAYER_BORDER_REACHED <= DIR_NONE;
			end if;
							
		end if;
		
	end process;
	
	bullet_collion_detection : process(CLOCK, RESET_N) is 	
		
	variable target_xMin : xy_coord_type := 0;
	variable target_xMax : xy_coord_type := 0;
	variable target_yMin : xy_coord_type := 0;
	variable target_yMax : xy_coord_type := 0;
	
	variable impacter_xMin : xy_coord_type := 0;
	variable impacter_xMax : xy_coord_type := 0;
	variable impacter_yMin : xy_coord_type := 0;
	variable impacter_yMax : xy_coord_type := 0;
	
	variable temp_column : alien_grid_index_type := 0;
		
	begin
		
		if (RESET_N = '0') then 
		
			COLLISION <= ((0,0,ENTITY_NONE), (0,0,ENTITY_NONE));
			collision_state <= PLAYER_BULLET_COLLISIONS;
		
		elsif (rising_edge(CLOCK)) then 
		
			COLLISION <= ((0,0,ENTITY_NONE), (0,0,ENTITY_NONE));
			
			case (collision_state) is 
				when PLAYER_BULLET_COLLISIONS =>
					-- Player bullet as impacter
					target_xMax := rand_alien.hitbox.up_left_x + rand_alien.hitbox.size_x;
					target_xMin := rand_alien.hitbox.up_left_x;
					target_yMax := rand_alien.hitbox.up_left_y + rand_alien.hitbox.size_y;
					target_yMin := rand_alien.hitbox.up_left_y;
					
					impacter_xMax := player_bullet.hitbox.up_left_x + player_bullet.hitbox.size_x;
					impacter_xMin := player_bullet.hitbox.up_left_x;
					impacter_yMax := player_bullet.hitbox.up_left_y + player_bullet.hitbox.size_y;
					impacter_yMin := player_bullet.hitbox.up_left_y;
					
					-- (x1min < x2max and x1max > x2min and y1min < y2max and y1max > y2min)
					if (player_bullet.hitbox.up_left_y < TOP_MARGIN and player_bullet.visible = '1') then
						COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (0,0,ENTITY_BORDER));
					end if;
					
					if (player_bullet.visible = '1' and rand_alien.visible = '1' and target_xMin <= impacter_xMax and target_xMax >= impacter_xMin and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
						COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (0,0,ENTITY_RANDOM_ALIEN));
					end if;
			
					for I in 0 to COLUMNS_PER_GRID - 1 loop
						
						target_xMax := alien_grid(I)(0).hitbox.up_left_x + alien_grid(I)(0).hitbox.size_x;
						target_xMin := alien_grid(I)(0).hitbox.up_left_x;
						
						if (target_xMin <= impacter_xMax and target_xMax >= impacter_xMin) then
							temp_column := I;
						end if;
						
					end loop;
					
					for J in 0 to ALIENS_PER_COLUMN - 1 loop
						
						target_yMax := alien_grid(temp_column)(J).hitbox.up_left_y + alien_grid(temp_column)(J).hitbox.size_y;
						target_yMin := alien_grid(temp_column)(J).hitbox.up_left_y;
							
						if (player_bullet.visible = '1' and alien_grid(temp_column)(J).visible = '1' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
							COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (temp_column,J,ENTITY_ALIEN));
						end if;
							
					end loop;
					
					for I in 0 to BULLET_COUNT - 1 loop
					
						target_xMax := alien_bullets(I).hitbox.up_left_x + alien_bullets(I).hitbox.size_x;
						target_xMin := alien_bullets(I).hitbox.up_left_x;
						target_yMax := alien_bullets(I).hitbox.up_left_y + alien_bullets(I).hitbox.size_y;
						target_yMin := alien_bullets(I).hitbox.up_left_y;
					
						if (player_bullet.visible = '1' and alien_bullets(I).visible = '1' and target_xMin <= impacter_xMax and target_xMax >= impacter_xMin and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
							COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (I,0,ENTITY_ALIEN_BULLET));
						end if;
						
					end loop;
					
					collision_state <= ALIEN_COLLISIONS;
				
				when ALIEN_COLLISIONS =>
				
					-- Aliens as impacters
					target_xMax := player.hitbox.up_left_x + player.hitbox.size_x;
					target_xMin := player.hitbox.up_left_x;
					target_yMax := player.hitbox.up_left_y + player.hitbox.size_y;
					target_yMin := player.hitbox.up_left_y;
					
					for I in 0 to COLUMNS_PER_GRID - 1 loop
					
						impacter_xMax := alien_grid(I)(0).hitbox.up_left_x + alien_grid(I)(0).hitbox.size_x;
						impacter_xMin := alien_grid(I)(0).hitbox.up_left_x;
						
						if (target_xMin <= impacter_xMax and target_xMax >= impacter_xMin) then 
							temp_column := I;
						end if;
						
						if (alien_grid(I)(last_row).visible = '1' and impacter_yMax > V_DISP - BOTTOM_MARGIN) then
							COLLISION <= ((I,last_row,ENTITY_ALIEN),(0,0,ENTITY_BORDER));
						end if;
					
					end loop;
					
					for J in 0 to ALIENS_PER_COLUMN - 1 loop
							
						impacter_yMax := alien_grid(temp_column)(J).hitbox.up_left_y + alien_grid(temp_column)(J).hitbox.size_y;
						impacter_yMin := alien_grid(temp_column)(J).hitbox.up_left_y;
								
						if (alien_grid(temp_column)(J).visible = '1' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
							COLLISION <= ((temp_column,J,ENTITY_ALIEN), (0,0,ENTITY_PLAYER));
						end if;
								
					end loop;
					
					collision_state <= ALIEN_BULLET_COLLISIONS;
					
				when ALIEN_BULLET_COLLISIONS =>
				
					-- TODO alien_bullets
					for I in 0 to BULLET_COUNT - 1 loop
					
						impacter_xMax := alien_bullets(I).hitbox.up_left_x + alien_bullets(I).hitbox.size_x;
						impacter_xMin := alien_bullets(I).hitbox.up_left_x;
						impacter_yMax := alien_bullets(I).hitbox.up_left_y + alien_bullets(I).hitbox.size_y;
						impacter_yMin := alien_bullets(I).hitbox.up_left_y;
					
						if (alien_bullets(I).visible = '1' and impacter_yMax > V_DISP - BOTTOM_MARGIN) then 
							COLLISION <= ((I,0,ENTITY_ALIEN_BULLET), (0,0,ENTITY_BORDER));
						end if;
						
					end loop;
					
					collision_state <= PLAYER_BULLET_COLLISIONS;
				
			end case;
			
		end if;
	
	end process;
	
	player_movement_handler : process(CLOCK, RESET_N) is
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
				when others => 
					player <= player;
						
			end case;	
		
		end if;
		
	end process;
	
	rand_alien_movement_handler : process(CLOCK, RESET_N) is
	begin
	
		if (RESET_N = '0') then
			rand_alien.sprite_indexes <= (ALIEN_4_SPRITE, ALIEN_4_SPRITE, ALIEN_EXPLOSION_SPRITE);
			rand_alien.hitbox.up_left_x 	<= FIRST_RAND_ALIEN_CELL_X;
			rand_alien.hitbox.up_left_y 	<= FIRST_RAND_ALIEN_CELL_Y;
			rand_alien.hitbox.size_x 		<= RAND_ALIEN_SIZE_X;
			rand_alien.hitbox.size_y 		<= RAND_ALIEN_SIZE_Y;
			rand_alien.current_index 		<= 0;
			rand_alien.visible 				<= '0';
			rand_alien.exploding 			<= '0';
			
		elsif (rising_edge(CLOCK)) then
		
			if (SHOW_RAND_ALIEN = '1') then
				rand_alien.visible <= '1';
				rand_alien.hitbox.up_left_x <= FIRST_RAND_ALIEN_CELL_X;
			end if;
			
			if (rand_alien.visible = '1') then
				case (RAND_ALIEN_MOVEMENT) is
				
				when DIR_RIGHT => 
					rand_alien.hitbox.up_left_x <= rand_alien.hitbox.up_left_x + RAND_ALIEN_SPEED;
				when DIR_LEFT => 
					rand_alien.hitbox.up_left_x <= rand_alien.hitbox.up_left_x - RAND_ALIEN_SPEED;
				when DIR_UP => -- Unreachable
				when DIR_DOWN => -- Unreachable
				when DIR_NONE => -- Unreachable
						
				end case;	
			end if;
			
			if (HIDE.entity_type = ENTITY_RANDOM_ALIEN) then
				rand_alien.visible <= '0';
			end if;
		end if;
	end process;
		
	alien_bullet_handling : process (CLOCK, RESET_N) is
			
	variable referenced_column : alien_grid_index_type;
	variable referenced_row	: alien_column_index_type;
	variable bullet_index : bullet_array_index_type;
	variable last_bullet_shape : bullet_shape_type;
	variable available_bullet : std_logic;
	variable available_column : std_logic;
			
	begin
	
		if (RESET_N = '0') then
			
			for I in 0 to BULLET_COUNT - 1 loop
				alien_bullets(I) <= ((ALIEN_BULLET_1_1_SPRITE, ALIEN_BULLET_1_2_SPRITE, ALIEN_BULLET_1_3_SPRITE, ALIEN_BULLET_1_4_SPRITE), (0,0,ALIEN_BULLET_SIZE_X, ALIEN_BULLET_SIZE_Y), 0, '0', '0');
			end loop;
			referenced_column := 0;
			referenced_row := 0;
			bullet_index := 0;
			last_bullet_shape := 0;
			available_bullet := '0';
			available_column := '0';
			COLUMN_CANNOT_SHOOT <= '1';
		
		elsif (rising_edge(CLOCK)) then
			
			COLUMN_CANNOT_SHOOT <= '1';
			
			if (ALIEN_SHOOT = '1') then
			
				referenced_column := COLUMN_INDEX;
		
				available_column := '0';
				available_bullet := '0';
		
				for I in 0 to ALIENS_PER_COLUMN - 1 loop
				
					if( alien_grid(referenced_column)(I).visible = '1' ) then
						
						available_column := '1';
						referenced_row := I;
						
					end if;
					
				end loop;
					
				if (available_column = '1') then	
					
					for J in 0 to BULLET_COUNT - 1 loop 
								
						if (alien_bullets(J).visible = '0') then
							COLUMN_CANNOT_SHOOT <= '0';
							bullet_index := J;
							available_bullet := '1';
						end if;
							
					end loop;
				
				end if;
						
				if (available_column = '1' and available_bullet = '1') then 
					
					alien_bullets(bullet_index).hitbox.up_left_x <= alien_grid(referenced_column)(referenced_row).hitbox.up_left_x + alien_grid(referenced_column)(referenced_row).hitbox.size_x / 2 - alien_bullets(bullet_index).hitbox.size_x / 2;
					alien_bullets(bullet_index).hitbox.up_left_y <= alien_grid(referenced_column)(referenced_row).hitbox.up_left_y;
					
					alien_bullets(bullet_index).hitbox.size_x <= ALIEN_BULLET_SIZE_X;
					alien_bullets(bullet_index).hitbox.size_y <= ALIEN_BULLET_SIZE_Y;
					
					case (last_bullet_shape) is
						when 0 => 
							alien_bullets(bullet_index).sprite_indexes <= (ALIEN_BULLET_1_1_SPRITE, ALIEN_BULLET_1_2_SPRITE, ALIEN_BULLET_1_3_SPRITE, ALIEN_BULLET_1_4_SPRITE);	
							last_bullet_shape := last_bullet_shape + 1;
						when 1 =>
							alien_bullets(bullet_index).sprite_indexes <= (ALIEN_BULLET_2_1_SPRITE, ALIEN_BULLET_2_2_SPRITE, ALIEN_BULLET_2_3_SPRITE, ALIEN_BULLET_2_4_SPRITE);
							last_bullet_shape := last_bullet_shape + 1;
						when 2 =>
							alien_bullets(bullet_index).sprite_indexes <= (ALIEN_BULLET_3_1_SPRITE, ALIEN_BULLET_3_2_SPRITE, ALIEN_BULLET_3_3_SPRITE, ALIEN_BULLET_3_4_SPRITE);
							last_bullet_shape := 0;
					end case;	
								
					alien_bullets(bullet_index).visible <= '1';
					alien_bullets(bullet_index).exploding <= '0';
								
				end if;	
					
			end if;
			
			if (ADVANCE_ALIEN_BULLETS = '1') then
			
				for I in 0 to BULLET_COUNT - 1 loop
				
					if (alien_bullets(I).visible = '1' and alien_bullets(I).exploding = '0') then
						if (alien_bullets(I).current_index = 3) then
							alien_bullets(I).current_index <= 0;
						else	
							alien_bullets(I).current_index <= alien_bullets(I).current_index + 1;
						end if;
						
						alien_bullets(I).hitbox.up_left_y <= alien_bullets(I).hitbox.up_left_y + ALIEN_BULLET_SPEED;
					end if;
				
				end loop;
			
			end if;
			
			if (HIDE.entity_type = ENTITY_ALIEN_BULLET) then 
				
				alien_bullets(HIDE.index_1).visible <= '0';
			
			end if;
			
		end if;
		
	end process;
	
end architecture;