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
		REQ_NEXT_SPRITE				: in 	std_logic;
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
--		ALIVE_ALIEN_COUNT				: out integer range 0 to ALIENS_PER_COLUMN * COLUMNS_PER_GRID;
--		ENTITY_EXPLOSION_INDEX		: out entity_explosion_index_type;
		ALIEN_BORDER_REACHED			: out direction_type;
		RAND_ALIEN_BORDER_REACHED	: out direction_type;
		RAND_ALIEN_VISIBLE			: out std_logic;
		PLAYER_BORDER_REACHED		: out direction_type;
		COLUMN_CANNOT_SHOOT			: out std_logic;
		COLLISION						: out collision_type
	);
end entity;

architecture RTL of HI_Datapath is 

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
	
	signal shield			: shield_grid_type;
	
	type collision_state_type is (PLAYER_BULLET_COLLISIONS, ALIEN_COLLISIONS, ALIEN_BULLET_COLLISIONS);
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
			
			elsif (REQ_NEXT_SPRITE = '1' and REQUEST_ENTITY_SPRITE.entity_type = ENTITY_SHIELD and shield(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).visible = '1' ) then
				
				SPRITE <= sprites(shield(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).sprite_indexes(shield(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).current_index));
				HITBOX <= shield(REQUEST_ENTITY_SPRITE.index_1)(REQUEST_ENTITY_SPRITE.index_2).hitbox;
				
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
	
	variable pause					: std_logic := '0';
	
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
			pause 				:= '0';
			
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
			
			if (DESTROY.entity_type = ENTITY_ALIEN) then 
				
				pause := '1';
				alien_grid(DESTROY.index_1)(DESTROY.index_2).exploding <= '1';
				alien_grid(DESTROY.index_1)(DESTROY.index_2).current_index <= ALIEN_SPRITE_COUNT - 1;
				
			end if;
			
			if (HIDE.entity_type = ENTITY_ALIEN) then 
				
				pause := '0';
				
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
				
				first_column 	<= var_first_column;
				first_row 		<= var_first_row;
				last_column 	<= var_last_column;
				last_row 		<= var_last_row;
				
			end if;
			
			if (pause = '0') then
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
						
						if (ALIEN_GRID_MOVEMENT /= DIR_NONE and alien_grid(I)(J).exploding = '0') then
							if (alien_grid(I)(J).current_index < ALIEN_SPRITE_COUNT - 2) then
								alien_grid(I)(J).current_index <= alien_grid(I)(J).current_index + 1;
							else 
								alien_grid(I)(J).current_index <= 0;
							end if;
						end if;
					
					end loop;
				end loop;
			end if;
			
		end if;
		
	end process;
	
	player_bullet_handling : process (CLOCK, RESET_N) is 
	begin 
		
		if (RESET_N = '0') then 
		
			player_bullet <= ((PLAYER_BULLET_SPRITE, PLAYER_BULLET_SPRITE, PLAYER_BULLET_SPRITE, PLAYER_BULLET_SPRITE, PLAYER_BULLET_EXPLOSION_SPRITE), (0,0, PLAYER_BULLET_SIZE_X, PLAYER_BULLET_SIZE_Y), 0, '0', '0');
		
		elsif (rising_edge(CLOCK)) then 
		
			if (PLAYER_SHOOT = '1' and player_bullet.visible = '0') then 
			
				player_bullet.hitbox.up_left_x <= player.hitbox.up_left_x + player.hitbox.size_x / 2 - PLAYER_BULLET_SIZE_X / 2;
				player_bullet.hitbox.up_left_y <= player.hitbox.up_left_y;
				player_bullet.current_index <= 0;
				player_bullet.hitbox.size_x <= PLAYER_BULLET_SIZE_X;
				player_bullet.hitbox.size_y <= PLAYER_BULLET_SIZE_Y;
				player_bullet.visible <= '1';
				
			end if;
				
			if (ADVANCE_PLAYER_BULLET = '1' and player_bullet.visible = '1' and player_bullet.exploding = '0') then
				player_bullet.hitbox.up_left_y <= player_bullet.hitbox.up_left_y - PLAYER_BULLET_SPEED;
			end if;
			
			if (HIDE.entity_type = ENTITY_PLAYER_BULLET) then
				player_bullet.visible <= '0';
				player_bullet.exploding <= '0';
			end if;
			
			if (DESTROY.entity_type = ENTITY_PLAYER_BULLET) then 
				player_bullet.exploding <= '1';
				player_bullet.current_index <= BULLET_SPRITE_COUNT - 1;
				player_bullet.hitbox.size_x <= BULLET_EXPLOSION_SIZE_X;
				player_bullet.hitbox.size_y <= BULLET_EXPLOSION_SIZE_Y;
				player_bullet.hitbox.up_left_x <= player_bullet.hitbox.up_left_x + player_bullet.hitbox.size_x / 2 - BULLET_EXPLOSION_SIZE_X / 2;
				--player_bullet.hitbox.up_left_y <= player_bullet.hitbox.up_left_y - player_bullet.hitbox.size_y / 2 + BULLET_EXPLOSION_SIZE_Y / 2;
				player_bullet.hitbox.up_left_y <= player_bullet.hitbox.up_left_y;
			end if;
			
		end if;
		
	end process;
	
	shields_handler : process(CLOCK, RESET_N) is
	begin
	
		if(RESET_N = '0') then
			
			for I in 0 to SHIELD_COUNT - 1 loop 
				
				shield(I) <= (others => default_shield_part);
				
				shield(I)(0).sprite_indexes <= (SHIELD_1_1_SPRITE, SHIELD_1_2_SPRITE, SHIELD_1_3_SPRITE, SHIELD_1_4_SPRITE);
				shield(I)(1).sprite_indexes <= (SHIELD_2_1_SPRITE, SHIELD_2_2_SPRITE, SHIELD_2_3_SPRITE, SHIELD_2_4_SPRITE);
				shield(I)(2).sprite_indexes <= (SHIELD_3_1_SPRITE, SHIELD_3_2_SPRITE, SHIELD_3_3_SPRITE, SHIELD_3_4_SPRITE);
				shield(I)(3).sprite_indexes <= (SHIELD_4_1_SPRITE, SHIELD_4_2_SPRITE, SHIELD_4_3_SPRITE, SHIELD_4_4_SPRITE);
				
				shield(I)(0).hitbox <= (FIRST_SHIELD_X + I * SHIELD_SPACING, 					  						   FIRST_SHIELD_Y, 					 							SHIELD_SIZE_X, SHIELD_SIZE_Y);
				shield(I)(1).hitbox <= (FIRST_SHIELD_X + I * SHIELD_SPACING + SHIELD_SIZE_X - SHIELD_H_OVERLAP, FIRST_SHIELD_Y, 					 						   SHIELD_SIZE_X, SHIELD_SIZE_Y);
				shield(I)(2).hitbox <= (FIRST_SHIELD_X + I * SHIELD_SPACING, 					  							FIRST_SHIELD_Y + SHIELD_SIZE_Y - SHIELD_V_OVERLAP, SHIELD_SIZE_X, SHIELD_SIZE_Y);
				shield(I)(3).hitbox <= (FIRST_SHIELD_X + I * SHIELD_SPACING + SHIELD_SIZE_X - SHIELD_H_OVERLAP, FIRST_SHIELD_Y + SHIELD_SIZE_Y - SHIELD_V_OVERLAP, SHIELD_SIZE_X, SHIELD_SIZE_Y);
				
			end loop;
					
		elsif (rising_edge(CLOCK)) then
		
			-- no movement. If hit by player/aliens bullets they just hide.
			if (DESTROY.entity_type = ENTITY_SHIELD) then 
				if (shield(DESTROY.index_1)(DESTROY.index_2).current_index = SHIELD_SPRITE_COUNT - 1) then 
					shield(DESTROY.index_1)(DESTROY.index_2).visible <= '0';
				else
					shield(DESTROY.index_1)(DESTROY.index_2).current_index <= shield(DESTROY.index_1)(DESTROY.index_2).current_index + 1;
				end if;
			end if;
		
			if (HIDE.entity_type = ENTITY_SHIELD) then 
				shield(HIDE.index_1)(HIDE.index_2).visible <= '0';
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
			if (alien_grid(last_column)(0).hitbox.up_left_x + alien_grid(last_column)(0).hitbox.size_x >= FRAME_RIGHT_X - SIDE_MARGIN) then
				ALIEN_BORDER_REACHED <= DIR_RIGHT;
			elsif (alien_grid(first_column)(0).hitbox.up_left_x <= FRAME_LEFT_X + SIDE_MARGIN) then
				ALIEN_BORDER_REACHED <= DIR_LEFT;
			elsif (alien_grid(0)(last_row).hitbox.up_left_y + alien_grid(0)(last_row).hitbox.size_y >= FRAME_DOWN_Y - BOTTOM_MARGIN) then
				ALIEN_BORDER_REACHED <= DIR_DOWN;
			elsif (alien_grid(0)(first_row).hitbox.up_left_y <= FRAME_UP_Y + TOP_MARGIN) then
				ALIEN_BORDER_REACHED <= DIR_UP;
			else
				ALIEN_BORDER_REACHED <= DIR_NONE;
			end if;
			
			-- Random Alien
			if (rand_alien.hitbox.up_left_x >= FRAME_RIGHT_X) then
				RAND_ALIEN_BORDER_REACHED <= DIR_RIGHT;
			elsif (rand_alien.hitbox.up_left_x + rand_alien.hitbox.size_x <= FRAME_LEFT_X) then
				RAND_ALIEN_BORDER_REACHED <= DIR_LEFT;
			else
				RAND_ALIEN_BORDER_REACHED <= DIR_NONE;
			end if;
			
			-- Player
			if (player.hitbox.up_left_x + player.hitbox.size_x > FRAME_RIGHT_X - SIDE_MARGIN) then
				PLAYER_BORDER_REACHED <= DIR_RIGHT;
			elsif (player.hitbox.up_left_x < FRAME_LEFT_X + SIDE_MARGIN) then
				PLAYER_BORDER_REACHED <= DIR_LEFT;
			else
				PLAYER_BORDER_REACHED <= DIR_NONE;
			end if;
							
		end if;
		
	end process;
	
	collision_detection : process(CLOCK, RESET_N) is 	
		
	variable target_xMin : xy_coord_type := 0;
	variable target_xMax : xy_coord_type := 0;
	variable target_yMin : xy_coord_type := 0;
	variable target_yMax : xy_coord_type := 0;
	
	variable impacter_xMin : xy_coord_type := 0;
	variable impacter_xMax : xy_coord_type := 0;
	variable impacter_yMin : xy_coord_type := 0;
	variable impacter_yMax : xy_coord_type := 0;
	
	variable temp_column : alien_grid_index_type := 0;
	
	variable temp_shield : shield_grid_index_type := 0;
	variable temp_shield_column : std_logic := '0';
	
	variable x_match		: std_logic := '0';
	
	variable collision_detected : std_logic := '0';
	
	variable collision_substate_shield_index : shield_grid_index_type			:= 0;
	variable collision_substate_shield_part_index : shield_part_index_type 	:= 0;
	variable collision_substate_alien_bullet : bullet_array_index_type 		:= 0;
	
	variable skip : std_logic := '0';
		
	begin
		
		if (RESET_N = '0') then 
		
			COLLISION <= ((0,0,ENTITY_NONE), (0,0,ENTITY_NONE));
			collision_state <= PLAYER_BULLET_COLLISIONS;
			
			target_xMin := 0;
			target_xMax := 0;
			target_yMin := 0;
			target_yMax := 0;
	
			impacter_xMin := 0;
			impacter_xMax := 0;
			impacter_yMin := 0;
			impacter_yMax := 0;
	
			temp_column := 0;
			
			temp_shield	:= 0;
			temp_shield_column := '0';
			
			x_match		:= '0';
			
			collision_detected := '0';
			
			collision_substate_shield_index := 0;
			collision_substate_shield_part_index := 0;
			collision_substate_alien_bullet := 0;
			
			-- The Collision detection process must work at a halved clock rate, due to the fact that the control unit
			-- can only handle one collision every 2 clock cycles. This should not create any timing issues if the clock
			-- interval is sufficiently smaller than the frame time (16.x millis)
			
			skip := '0';
		
		elsif (rising_edge(CLOCK)) then 
		
			skip := not(skip);
			
			if (skip = '0') then 
			
				COLLISION <= ((0,0,ENTITY_NONE), (0,0,ENTITY_NONE));
				collision_detected := '0';
				
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
						if (collision_detected = '0' and player_bullet.hitbox.up_left_y < FRAME_UP_Y + TOP_MARGIN and player_bullet.visible = '1' and player_bullet.exploding = '0') then
							COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (0,0,ENTITY_BORDER));
							collision_detected := '1';
						end if;
						
						if (collision_detected = '0' and player_bullet.visible = '1' and rand_alien.visible = '1' and player_bullet.exploding = '0' and rand_alien.exploding = '0' and target_xMin <= impacter_xMax and target_xMax >= impacter_xMin and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
							COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (0,0,ENTITY_RANDOM_ALIEN));
							collision_detected := '1';
						end if;
				
						x_match := '0';
				
						for I in 0 to COLUMNS_PER_GRID - 1 loop
							
							target_xMax := alien_grid(I)(0).hitbox.up_left_x + alien_grid(I)(0).hitbox.size_x;
							target_xMin := alien_grid(I)(0).hitbox.up_left_x;
							
							if (target_xMin <= impacter_xMax and target_xMax >= impacter_xMin) then
								temp_column := I;
								x_match := '1';
							end if;
							
						end loop;
						
						if (x_match = '1') then
						
							for J in 0 to ALIENS_PER_COLUMN - 1 loop
							
								target_yMax := alien_grid(temp_column)(J).hitbox.up_left_y + alien_grid(temp_column)(J).hitbox.size_y;
								target_yMin := alien_grid(temp_column)(J).hitbox.up_left_y;
								
								if (collision_detected = '0' and player_bullet.visible = '1' and alien_grid(temp_column)(J).visible = '1' and player_bullet.exploding = '0' and alien_grid(temp_column)(J).exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (temp_column,J,ENTITY_ALIEN));
									collision_detected := '1';
								end if;
									
							end loop;
						
						end if;
						
						-- SHIELDS
						x_match := '0';
				
						for I in 0 to SHIELD_COUNT - 1 loop
							
							target_xMax := shield(I)(0).hitbox.up_left_x + shield(I)(0).hitbox.size_x;
							target_xMin := shield(I)(0).hitbox.up_left_x;
							
							if (target_xMin <= impacter_xMax and target_xMax >= impacter_xMin) then
								temp_shield := I;
								temp_shield_column := '0';
								x_match := '1';
							end if;
							
							target_xMax := shield(I)(1).hitbox.up_left_x + shield(I)(1).hitbox.size_x;
							target_xMin := shield(I)(1).hitbox.up_left_x;
							
							if (target_xMin <= impacter_xMax and target_xMax >= impacter_xMin) then
								temp_shield := I;
								temp_shield_column := '1';
								x_match := '1';
							end if;
							
						end loop;
						
						if (x_match = '1') then
							
							if (temp_shield_column = '0') then
							
								target_yMax := shield(temp_shield)(0).hitbox.up_left_y + shield(temp_shield)(0).hitbox.size_y;
								target_yMin := shield(temp_shield)(0).hitbox.up_left_y;
								
								if (collision_detected = '0' and player_bullet.visible = '1' and shield(temp_shield)(0).visible = '1' and player_bullet.exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (temp_shield,0,ENTITY_SHIELD));
									collision_detected := '1';
								end if;
								
								target_yMax := shield(temp_shield)(2).hitbox.up_left_y + shield(temp_shield)(2).hitbox.size_y;
								target_yMin := shield(temp_shield)(2).hitbox.up_left_y;
								
								if (collision_detected = '0' and player_bullet.visible = '1' and shield(temp_shield)(2).visible = '1' and player_bullet.exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (temp_shield,2,ENTITY_SHIELD));
									collision_detected := '1';
								end if;
							
							elsif (temp_shield_column = '1') then
							
								target_yMax := shield(temp_shield)(1).hitbox.up_left_y + shield(temp_shield)(1).hitbox.size_y;
								target_yMin := shield(temp_shield)(1).hitbox.up_left_y;
								
								if (collision_detected = '0' and player_bullet.visible = '1' and shield(temp_shield)(1).visible = '1' and player_bullet.exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (temp_shield,1,ENTITY_SHIELD));
									collision_detected := '1';
								end if;
								
								target_yMax := shield(temp_shield)(3).hitbox.up_left_y + shield(temp_shield)(3).hitbox.size_y;
								target_yMin := shield(temp_shield)(3).hitbox.up_left_y;
								
								if (collision_detected = '0' and player_bullet.visible = '1' and shield(temp_shield)(3).visible = '1' and player_bullet.exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (temp_shield,3,ENTITY_SHIELD));
									collision_detected := '1';
								end if;
							
							end if;
						
						end if;
						
						for I in 0 to BULLET_COUNT - 1 loop
						
							target_xMax := alien_bullets(I).hitbox.up_left_x + alien_bullets(I).hitbox.size_x;
							target_xMin := alien_bullets(I).hitbox.up_left_x;
							target_yMax := alien_bullets(I).hitbox.up_left_y + alien_bullets(I).hitbox.size_y;
							target_yMin := alien_bullets(I).hitbox.up_left_y;
						
							if (collision_detected = '0' and player_bullet.visible = '1' and alien_bullets(I).visible = '1' and player_bullet.exploding = '0' and alien_bullets(I).exploding = '0' and target_xMin <= impacter_xMax and target_xMax >= impacter_xMin and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
								COLLISION <= ((0,0,ENTITY_PLAYER_BULLET), (I,0,ENTITY_ALIEN_BULLET));
								collision_detected := '1';
							end if;
							
						end loop;
						
						collision_state <= ALIEN_COLLISIONS;
						collision_substate_shield_index 		 := 0;
						collision_substate_shield_part_index := 0;
					
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
							
							if (collision_detected = '0' and alien_grid(I)(last_row).visible = '1' and alien_grid(I)(last_row).exploding = '0' and alien_grid(I)(last_row).hitbox.up_left_y + alien_grid(I)(last_row).hitbox.size_y > FRAME_DOWN_Y - BOTTOM_MARGIN) then
								COLLISION <= ((I,last_row,ENTITY_ALIEN),(0,0,ENTITY_BORDER));
								collision_detected := '1';
							end if;
						
						end loop;
						
						for J in 0 to ALIENS_PER_COLUMN - 1 loop
								
							impacter_yMax := alien_grid(temp_column)(J).hitbox.up_left_y + alien_grid(temp_column)(J).hitbox.size_y;
							impacter_yMin := alien_grid(temp_column)(J).hitbox.up_left_y;
									
							if (collision_detected = '0' and alien_grid(temp_column)(J).visible = '1' and alien_grid(temp_column)(J).exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
								COLLISION <= ((temp_column,J,ENTITY_ALIEN), (0,0,ENTITY_PLAYER));
								collision_detected := '1';
							end if;
									
						end loop;
						
						-- SHIELDS
						impacter_xMax := shield(collision_substate_shield_index)(collision_substate_shield_part_index).hitbox.up_left_x + shield(collision_substate_shield_index)(collision_substate_shield_part_index).hitbox.size_x;
						impacter_xMin := shield(collision_substate_shield_index)(collision_substate_shield_part_index).hitbox.up_left_x;
						impacter_yMax := shield(collision_substate_shield_index)(collision_substate_shield_part_index).hitbox.up_left_y + shield(collision_substate_shield_index)(collision_substate_shield_part_index).hitbox.size_y;
						impacter_yMin := shield(collision_substate_shield_index)(collision_substate_shield_part_index).hitbox.up_left_y;
						
						x_match := '0';
				
						for I in 0 to COLUMNS_PER_GRID - 1 loop
							
							target_xMax := alien_grid(I)(0).hitbox.up_left_x + alien_grid(I)(0).hitbox.size_x;
							target_xMin := alien_grid(I)(0).hitbox.up_left_x;
							
							if (target_xMin <= impacter_xMax and target_xMax >= impacter_xMin) then
								temp_column := I;
								x_match := '1';
							end if;
							
						end loop;
						
						if (x_match = '1') then
						
							for J in 0 to ALIENS_PER_COLUMN - 1 loop
							
								target_yMax := alien_grid(temp_column)(J).hitbox.up_left_y + alien_grid(temp_column)(J).hitbox.size_y;
								target_yMin := alien_grid(temp_column)(J).hitbox.up_left_y;
								
								if (collision_detected = '0' and shield(collision_substate_shield_index)(collision_substate_shield_part_index).visible = '1' and alien_grid(temp_column)(J).visible = '1' and alien_grid(temp_column)(J).exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((temp_column,J,ENTITY_ALIEN), (collision_substate_shield_index, collision_substate_shield_part_index, ENTITY_SHIELD));
									collision_detected := '1';
								end if;
									
							end loop;
						
						end if;

						if (collision_substate_shield_part_index = SHIELD_PARTS - 1) then 
							collision_substate_shield_part_index := 0;
							if (collision_substate_shield_index = SHIELD_COUNT - 1) then
								collision_substate_shield_index := 0;
								collision_state <= ALIEN_BULLET_COLLISIONS;
							else
								collision_substate_shield_index := collision_substate_shield_index + 1;
							end if;
						else
							collision_substate_shield_part_index := collision_substate_shield_part_index + 1;
						end if;
						
					when ALIEN_BULLET_COLLISIONS =>

						target_xMax := player.hitbox.up_left_x + player.hitbox.size_x;
						target_xMin := player.hitbox.up_left_x;
						target_yMax := player.hitbox.up_left_y + player.hitbox.size_y;
						target_yMin := player.hitbox.up_left_y;
					
						impacter_xMax := alien_bullets(collision_substate_alien_bullet).hitbox.up_left_x + alien_bullets(collision_substate_alien_bullet).hitbox.size_x;
						impacter_xMin := alien_bullets(collision_substate_alien_bullet).hitbox.up_left_x;
						impacter_yMax := alien_bullets(collision_substate_alien_bullet).hitbox.up_left_y + alien_bullets(collision_substate_alien_bullet).hitbox.size_y;
						impacter_yMin := alien_bullets(collision_substate_alien_bullet).hitbox.up_left_y;
							
						if (collision_detected = '0' and alien_bullets(collision_substate_alien_bullet).visible = '1' and alien_bullets(collision_substate_alien_bullet).exploding = '0' and target_xMin <= impacter_xMax and target_xMax >= impacter_xMin and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then
							COLLISION <= ((collision_substate_alien_bullet,0,ENTITY_ALIEN_BULLET), (0,0,ENTITY_PLAYER));
							collision_detected := '1';
						end if;
						
						if (collision_detected = '0' and alien_bullets(collision_substate_alien_bullet).visible = '1' and alien_bullets(collision_substate_alien_bullet).exploding = '0' and impacter_yMax > FRAME_DOWN_Y - BOTTOM_MARGIN) then 
							COLLISION <= ((collision_substate_alien_bullet,0,ENTITY_ALIEN_BULLET), (0,0,ENTITY_BORDER));
							collision_detected := '1';
						end if;
						
						-- Shields 
						x_match := '0';
				
						for I in 0 to SHIELD_COUNT - 1 loop
							
							target_xMax := shield(I)(0).hitbox.up_left_x + shield(I)(0).hitbox.size_x;
							target_xMin := shield(I)(0).hitbox.up_left_x;
							
							if (target_xMin <= impacter_xMax and target_xMax >= impacter_xMin) then
								temp_shield := I;
								temp_shield_column := '0';
								x_match := '1';
							end if;
							
							target_xMax := shield(I)(1).hitbox.up_left_x + shield(I)(1).hitbox.size_x;
							target_xMin := shield(I)(1).hitbox.up_left_x;
							
							if (target_xMin <= impacter_xMax and target_xMax >= impacter_xMin) then
								temp_shield := I;
								temp_shield_column := '1';
								x_match := '1';
							end if;
							
						end loop;
						
						if (x_match = '1') then
							
							if (temp_shield_column = '0') then
							
								target_yMax := shield(temp_shield)(0).hitbox.up_left_y + shield(temp_shield)(0).hitbox.size_y;
								target_yMin := shield(temp_shield)(0).hitbox.up_left_y;
								
								if (collision_detected = '0' and alien_bullets(collision_substate_alien_bullet).visible = '1' and shield(temp_shield)(0).visible = '1' and alien_bullets(collision_substate_alien_bullet).exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((collision_substate_alien_bullet,0,ENTITY_ALIEN_BULLET), (temp_shield,0,ENTITY_SHIELD));
									collision_detected := '1';
								end if;
								
								target_yMax := shield(temp_shield)(2).hitbox.up_left_y + shield(temp_shield)(2).hitbox.size_y;
								target_yMin := shield(temp_shield)(2).hitbox.up_left_y;
								
								if (collision_detected = '0' and alien_bullets(collision_substate_alien_bullet).visible = '1' and shield(temp_shield)(2).visible = '1' and alien_bullets(collision_substate_alien_bullet).exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((collision_substate_alien_bullet,0,ENTITY_ALIEN_BULLET), (temp_shield,2,ENTITY_SHIELD));
									collision_detected := '1';
								end if;
							
							elsif (temp_shield_column = '1') then
							
								target_yMax := shield(temp_shield)(1).hitbox.up_left_y + shield(temp_shield)(1).hitbox.size_y;
								target_yMin := shield(temp_shield)(1).hitbox.up_left_y;
								
								if (collision_detected = '0' and alien_bullets(collision_substate_alien_bullet).visible = '1' and shield(temp_shield)(1).visible = '1' and alien_bullets(collision_substate_alien_bullet).exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((collision_substate_alien_bullet,0,ENTITY_ALIEN_BULLET), (temp_shield,1,ENTITY_SHIELD));
									collision_detected := '1';
								end if;
								
								target_yMax := shield(temp_shield)(3).hitbox.up_left_y + shield(temp_shield)(3).hitbox.size_y;
								target_yMin := shield(temp_shield)(3).hitbox.up_left_y;
								
								if (collision_detected = '0' and alien_bullets(collision_substate_alien_bullet).visible = '1' and shield(temp_shield)(3).visible = '1' and alien_bullets(collision_substate_alien_bullet).exploding = '0' and target_yMin <= impacter_yMax and target_yMax >= impacter_yMin) then 
									COLLISION <= ((collision_substate_alien_bullet,0,ENTITY_ALIEN_BULLET), (temp_shield,3,ENTITY_SHIELD));
									collision_detected := '1';
								end if;
							
							end if;
						
						end if;
						
						collision_substate_alien_bullet := collision_substate_alien_bullet + 1;
						
						if (collision_substate_alien_bullet > BULLET_COUNT - 1) then
							collision_state <= PLAYER_BULLET_COLLISIONS;
							collision_substate_alien_bullet := 0;
						end if;
					
				end case;
			
			end if; -- skip
			
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
	
		RAND_ALIEN_VISIBLE <= rand_alien.visible;
	
		if (RESET_N = '0') then
			rand_alien.sprite_indexes <= (ALIEN_4_SPRITE, ALIEN_4_SPRITE, ALIEN_EXPLOSION_SPRITE);
			rand_alien.hitbox.up_left_x 	<= FIRST_RAND_ALIEN_CELL_X_LEFT;
			rand_alien.hitbox.up_left_y 	<= FIRST_RAND_ALIEN_CELL_Y;
			rand_alien.hitbox.size_x 		<= RAND_ALIEN_SIZE_X;
			rand_alien.hitbox.size_y 		<= RAND_ALIEN_SIZE_Y;
			rand_alien.current_index 		<= 0;
			rand_alien.visible 				<= '0';
			rand_alien.exploding 			<= '0';
			
		elsif (rising_edge(CLOCK)) then
		
			if (SHOW_RAND_ALIEN = '1') then
				rand_alien.visible <= '1';
				if (RAND_ALIEN_MOVEMENT = DIR_LEFT) then 
					rand_alien.hitbox.up_left_x <= FIRST_RAND_ALIEN_CELL_X_RIGHT;
				else 
					rand_alien.hitbox.up_left_x <= FIRST_RAND_ALIEN_CELL_X_LEFT;
				end if;
				
			elsif (rand_alien.visible = '1') then
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
			
			if (DESTROY.entity_type = ENTITY_RANDOM_ALIEN) then
				rand_alien.exploding <= '1';
				rand_alien.current_index <= 2;
			end if;
			
			if (HIDE.entity_type = ENTITY_RANDOM_ALIEN) then
				rand_alien.visible <= '0';
				rand_alien.exploding <= '0';
				rand_alien.current_index <= 0;
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
				alien_bullets(I) <= ((ALIEN_BULLET_1_1_SPRITE, ALIEN_BULLET_1_2_SPRITE, ALIEN_BULLET_1_3_SPRITE, ALIEN_BULLET_1_4_SPRITE, ALIEN_BULLET_EXPLOSION_SPRITE), (0,0,ALIEN_BULLET_SIZE_X, ALIEN_BULLET_SIZE_Y), 0, '0', '0');
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
				
					if(alien_grid(referenced_column)(I).visible = '1') then
						
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
							alien_bullets(bullet_index).sprite_indexes <= (ALIEN_BULLET_1_1_SPRITE, ALIEN_BULLET_1_2_SPRITE, ALIEN_BULLET_1_3_SPRITE, ALIEN_BULLET_1_4_SPRITE, ALIEN_BULLET_EXPLOSION_SPRITE);	
							last_bullet_shape := last_bullet_shape + 1;
						when 1 =>
							alien_bullets(bullet_index).sprite_indexes <= (ALIEN_BULLET_2_1_SPRITE, ALIEN_BULLET_2_2_SPRITE, ALIEN_BULLET_2_3_SPRITE, ALIEN_BULLET_2_4_SPRITE, ALIEN_BULLET_EXPLOSION_SPRITE);
							last_bullet_shape := last_bullet_shape + 1;
						when 2 =>
							alien_bullets(bullet_index).sprite_indexes <= (ALIEN_BULLET_3_1_SPRITE, ALIEN_BULLET_3_2_SPRITE, ALIEN_BULLET_3_3_SPRITE, ALIEN_BULLET_3_4_SPRITE, ALIEN_BULLET_EXPLOSION_SPRITE);
							last_bullet_shape := 0;
					end case;	
								
					alien_bullets(bullet_index).visible <= '1';
					alien_bullets(bullet_index).exploding <= '0';
								
				end if;	
					
			end if;
			
			if (ADVANCE_ALIEN_BULLETS = '1') then
			
				for I in 0 to BULLET_COUNT - 1 loop
				
					if (alien_bullets(I).visible = '1' and alien_bullets(I).exploding = '0') then
						if (alien_bullets(I).current_index = BULLET_SPRITE_COUNT - 2) then
							alien_bullets(I).current_index <= 0;
						else	
							alien_bullets(I).current_index <= alien_bullets(I).current_index + 1;
						end if;
						
						alien_bullets(I).hitbox.up_left_y <= alien_bullets(I).hitbox.up_left_y + ALIEN_BULLET_SPEED;
					end if;
				
				end loop;
			
			end if;
	
			if (DESTROY.entity_type = ENTITY_ALIEN_BULLET) then
			
				alien_bullets(DESTROY.index_1).exploding <= '1';
				alien_bullets(DESTROY.index_1).current_index <= BULLET_SPRITE_COUNT - 1;
				alien_bullets(DESTROY.index_1).hitbox.size_x <= BULLET_EXPLOSION_SIZE_X;
				alien_bullets(DESTROY.index_1).hitbox.size_y <= BULLET_EXPLOSION_SIZE_Y;
				alien_bullets(DESTROY.index_1).hitbox.up_left_x <= alien_bullets(DESTROY.index_1).hitbox.up_left_x + alien_bullets(DESTROY.index_1).hitbox.size_x / 2 - BULLET_EXPLOSION_SIZE_X / 2;
				alien_bullets(DESTROY.index_1).hitbox.up_left_y <= alien_bullets(DESTROY.index_1).hitbox.up_left_y + alien_bullets(DESTROY.index_1).hitbox.size_y - BULLET_EXPLOSION_SIZE_Y;
			
			end if;
	
			if (HIDE.entity_type = ENTITY_ALIEN_BULLET) then 
				
				alien_bullets(HIDE.index_1).visible <= '0';
				alien_bullets(HIDE.index_1).exploding <= '0';
				alien_bullets(HIDE.index_1).current_index <= 0;
				alien_bullets(HIDE.index_1).hitbox.size_x <= ALIEN_BULLET_SIZE_X;
				alien_bullets(HIDE.index_1).hitbox.size_y <= ALIEN_BULLET_SIZE_Y;
			
			end if;
			
		end if;
		
	end process;
	
end architecture;